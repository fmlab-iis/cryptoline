(*
on popper, equivalence against XKCP Keccak[1600,24]x4 SSSE3, 4 threads:
$ ./_build/default/cv_cec.exe -v -jobs 4 \
	-ov a00,a01,a02,a03,a04,a05,a06,a07,a08,a09,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24#b00,b01,b02,b03,b04,b05,b06,b07,b08,b09,b10,b11,b12,b13,b14,b15,b16,b17,b18,b19,b20,b21,b22,b23,b24#c00,c01,c02,c03,c04,c05,c06,c07,c08,c09,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24#d00,d01,d02,d03,d04,d05,d06,d07,d08,d09,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d20,d21,d22,d23,d24 \
	KeccakP1600times4_PermuteAll_24rounds_12_rounds_unrolled.cl KeccakP1600times4_PermuteAll_24rounds_2_rounds_unrolled_fallback_times2.cl
Parsing CryptoLine file:		[OK]		2.948214 seconds
Checking well-formedness:		[OK]		3.441531 seconds
Parsing CryptoLine file:		[OK]		0.092241 seconds
Checking well-formedness:		[OK]		0.035980 seconds
Equivalence of output group #0:		[OK]		818.456198 seconds
Equivalence of output group #2:		[OK]		811.865966 seconds
Equivalence of output group #1:		[OK]		837.496156 seconds
Equivalence of output group #3:		[OK]		824.962234 seconds
Final result:				[OK]		865.193241 seconds
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
           uint64 B20, uint64 B21, uint64 B22, uint64 B23, uint64 B24,
           uint64 C00, uint64 C01, uint64 C02, uint64 C03, uint64 C04,
           uint64 C05, uint64 C06, uint64 C07, uint64 C08, uint64 C09,
           uint64 C10, uint64 C11, uint64 C12, uint64 C13, uint64 C14,
           uint64 C15, uint64 C16, uint64 C17, uint64 C18, uint64 C19,
           uint64 C20, uint64 C21, uint64 C22, uint64 C23, uint64 C24,
           uint64 D00, uint64 D01, uint64 D02, uint64 D03, uint64 D04,
           uint64 D05, uint64 D06, uint64 D07, uint64 D08, uint64 D09,
           uint64 D10, uint64 D11, uint64 D12, uint64 D13, uint64 D14,
           uint64 D15, uint64 D16, uint64 D17, uint64 D18, uint64 D19,
           uint64 D20, uint64 D21, uint64 D22, uint64 D23, uint64 D24) =
{
  true
  &&
  true
}

(* ===== Initialization ===== *)

mov L0x7fffffffda00 A00;
mov L0x7fffffffda08 B00;
mov L0x7fffffffda10 C00;
mov L0x7fffffffda18 D00;
mov L0x7fffffffda20 A01;
mov L0x7fffffffda28 B01;
mov L0x7fffffffda30 C01;
mov L0x7fffffffda38 D01;
mov L0x7fffffffda40 A02;
mov L0x7fffffffda48 B02;
mov L0x7fffffffda50 C02;
mov L0x7fffffffda58 D02;
mov L0x7fffffffda60 A03;
mov L0x7fffffffda68 B03;
mov L0x7fffffffda70 C03;
mov L0x7fffffffda78 D03;
mov L0x7fffffffda80 A04;
mov L0x7fffffffda88 B04;
mov L0x7fffffffda90 C04;
mov L0x7fffffffda98 D04;
mov L0x7fffffffdaa0 A05;
mov L0x7fffffffdaa8 B05;
mov L0x7fffffffdab0 C05;
mov L0x7fffffffdab8 D05;
mov L0x7fffffffdac0 A06;
mov L0x7fffffffdac8 B06;
mov L0x7fffffffdad0 C06;
mov L0x7fffffffdad8 D06;
mov L0x7fffffffdae0 A07;
mov L0x7fffffffdae8 B07;
mov L0x7fffffffdaf0 C07;
mov L0x7fffffffdaf8 D07;
mov L0x7fffffffdb00 A08;
mov L0x7fffffffdb08 B08;
mov L0x7fffffffdb10 C08;
mov L0x7fffffffdb18 D08;
mov L0x7fffffffdb20 A09;
mov L0x7fffffffdb28 B09;
mov L0x7fffffffdb30 C09;
mov L0x7fffffffdb38 D09;
mov L0x7fffffffdb40 A10;
mov L0x7fffffffdb48 B10;
mov L0x7fffffffdb50 C10;
mov L0x7fffffffdb58 D10;
mov L0x7fffffffdb60 A11;
mov L0x7fffffffdb68 B11;
mov L0x7fffffffdb70 C11;
mov L0x7fffffffdb78 D11;
mov L0x7fffffffdb80 A12;
mov L0x7fffffffdb88 B12;
mov L0x7fffffffdb90 C12;
mov L0x7fffffffdb98 D12;
mov L0x7fffffffdba0 A13;
mov L0x7fffffffdba8 B13;
mov L0x7fffffffdbb0 C13;
mov L0x7fffffffdbb8 D13;
mov L0x7fffffffdbc0 A14;
mov L0x7fffffffdbc8 B14;
mov L0x7fffffffdbd0 C14;
mov L0x7fffffffdbd8 D14;
mov L0x7fffffffdbe0 A15;
mov L0x7fffffffdbe8 B15;
mov L0x7fffffffdbf0 C15;
mov L0x7fffffffdbf8 D15;
mov L0x7fffffffdc00 A16;
mov L0x7fffffffdc08 B16;
mov L0x7fffffffdc10 C16;
mov L0x7fffffffdc18 D16;
mov L0x7fffffffdc20 A17;
mov L0x7fffffffdc28 B17;
mov L0x7fffffffdc30 C17;
mov L0x7fffffffdc38 D17;
mov L0x7fffffffdc40 A18;
mov L0x7fffffffdc48 B18;
mov L0x7fffffffdc50 C18;
mov L0x7fffffffdc58 D18;
mov L0x7fffffffdc60 A19;
mov L0x7fffffffdc68 B19;
mov L0x7fffffffdc70 C19;
mov L0x7fffffffdc78 D19;
mov L0x7fffffffdc80 A20;
mov L0x7fffffffdc88 B20;
mov L0x7fffffffdc90 C20;
mov L0x7fffffffdc98 D20;
mov L0x7fffffffdca0 A21;
mov L0x7fffffffdca8 B21;
mov L0x7fffffffdcb0 C21;
mov L0x7fffffffdcb8 D21;
mov L0x7fffffffdcc0 A22;
mov L0x7fffffffdcc8 B22;
mov L0x7fffffffdcd0 C22;
mov L0x7fffffffdcd8 D22;
mov L0x7fffffffdce0 A23;
mov L0x7fffffffdce8 B23;
mov L0x7fffffffdcf0 C23;
mov L0x7fffffffdcf8 D23;
mov L0x7fffffffdd00 A24;
mov L0x7fffffffdd08 B24;
mov L0x7fffffffdd10 C24;
mov L0x7fffffffdd18 D24;

nondet rdi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* mov    %rdi,%rax                                #! PC = 0x55555557fde5 *)
mov rax rdi;
(* movabs $0x8000000000008009,%r11                 #! PC = 0x55555557fde8 *)
mov r11 0x8000000000008009@uint64;
(* mov    %rsp,%rbp                                #! PC = 0x55555557fdf2 *)
mov rbp rsp;
(* movabs $0x8000000080008081,%rcx                 #! PC = 0x55555557fdf7 *)
mov rcx 0x8000000080008081@uint64;
(* mov    $0x8000000a,%r15d                        #! PC = 0x55555557fe01 *)
mov r15 0x8000000a@uint64;
(* mov    $0x80000001,%edx                         #! PC = 0x55555557fe09 *)
mov rdx 0x80000001@uint64;
(* mov    $0x2,%r14d                               #! PC = 0x55555557fe0e *)
mov r14 0x2@uint64;
(* mov    $0x808b,%r10d                            #! PC = 0x55555557fe16 *)
mov r10 0x808b@uint64;
(* mov    $0x80008009,%r13d                        #! PC = 0x55555557fe1c *)
mov r13 0x80008009@uint64;
(* movabs $0x8000000080008000,%r9                  #! PC = 0x55555557fe24 *)
mov r9 0x8000000080008000@uint64;
(* mov    $0x88,%r12d                              #! PC = 0x55555557fe2e *)
mov r12 0x88@uint64;
(* movabs $0x800000000000808a,%r8                  #! PC = 0x55555557fe35 *)
mov r8 0x800000000000808a@uint64;
(* mov    $0x8a,%ebx                               #! PC = 0x55555557fe3f *)
mov rbx 0x8a@uint64;
(* and    $0xffffffffffffffe0,%rsp                 #! PC = 0x55555557fe44 *)
and rsp@uint64 rsp 0xffffffffffffffe0@uint64;
(* sub    $0xa8,%rsp                               #! PC = 0x55555557fe48 *)
subb carry rsp rsp 0xa8@uint64;
(* mov    $0x1,%esi                                #! PC = 0x55555557fe4f *)
mov rsi 0x1@uint64;
(* vmovdqa 0x80(%rdi),%ymm7                        #! EA = L0x7fffffffda80; Value = 0xf02f70f23179d417; PC = 0x55555557fe54 *)
mov ymm7_0 L0x7fffffffda80;
mov ymm7_1 L0x7fffffffda88;
mov ymm7_2 L0x7fffffffda90;
mov ymm7_3 L0x7fffffffda98;
(* vmovdqa64 (%rdi),%ymm24                         #! EA = L0x7fffffffda00; Value = 0xe08e45fa8870968e; PC = 0x55555557fe5c *)
mov ymm24_0 L0x7fffffffda00;
mov ymm24_1 L0x7fffffffda08;
mov ymm24_2 L0x7fffffffda10;
mov ymm24_3 L0x7fffffffda18;
(* vmovdqa %ymm7,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x55555557fe62 *)
mov L0x7fffffffd960 ymm7_0;
mov L0x7fffffffd968 ymm7_1;
mov L0x7fffffffd970 ymm7_2;
mov L0x7fffffffd978 ymm7_3;
(* vmovdqa 0xe0(%rdi),%ymm7                        #! EA = L0x7fffffffdae0; Value = 0x00000000000000a8; PC = 0x55555557fe6b *)
mov ymm7_0 L0x7fffffffdae0;
mov ymm7_1 L0x7fffffffdae8;
mov ymm7_2 L0x7fffffffdaf0;
mov ymm7_3 L0x7fffffffdaf8;
(* vmovdqa 0x40(%rdi),%ymm5                        #! EA = L0x7fffffffda40; Value = 0x00005555559ec338; PC = 0x55555557fe73 *)
mov ymm5_0 L0x7fffffffda40;
mov ymm5_1 L0x7fffffffda48;
mov ymm5_2 L0x7fffffffda50;
mov ymm5_3 L0x7fffffffda58;
(* vmovdqa %ymm7,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x55555557fe78 *)
mov L0x7fffffffd940 ymm7_0;
mov L0x7fffffffd948 ymm7_1;
mov L0x7fffffffd950 ymm7_2;
mov L0x7fffffffd958 ymm7_3;
(* vmovdqa 0x100(%rdi),%ymm7                       #! EA = L0x7fffffffdb00; Value = 0xdf1aef92fb224dcf; PC = 0x55555557fe7e *)
mov ymm7_0 L0x7fffffffdb00;
mov ymm7_1 L0x7fffffffdb08;
mov ymm7_2 L0x7fffffffdb10;
mov ymm7_3 L0x7fffffffdb18;
(* vmovdqa64 0x20(%rdi),%ymm30                     #! EA = L0x7fffffffda20; Value = 0x0000000000021340; PC = 0x55555557fe86 *)
mov ymm30_0 L0x7fffffffda20;
mov ymm30_1 L0x7fffffffda28;
mov ymm30_2 L0x7fffffffda30;
mov ymm30_3 L0x7fffffffda38;
(* vmovdqa %ymm7,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x55555557fe8d *)
mov L0x7fffffffd920 ymm7_0;
mov L0x7fffffffd928 ymm7_1;
mov L0x7fffffffd930 ymm7_2;
mov L0x7fffffffd938 ymm7_3;
(* vmovdqa 0x140(%rdi),%ymm7                       #! EA = L0x7fffffffdb40; Value = 0x0000000000000000; PC = 0x55555557fe93 *)
mov ymm7_0 L0x7fffffffdb40;
mov ymm7_1 L0x7fffffffdb48;
mov ymm7_2 L0x7fffffffdb50;
mov ymm7_3 L0x7fffffffdb58;
(* vmovdqa64 0xa0(%rdi),%ymm31                     #! EA = L0x7fffffffdaa0; Value = 0x5006b501b0bf4299; PC = 0x55555557fe9b *)
mov ymm31_0 L0x7fffffffdaa0;
mov ymm31_1 L0x7fffffffdaa8;
mov ymm31_2 L0x7fffffffdab0;
mov ymm31_3 L0x7fffffffdab8;
(* vmovdqa %ymm7,-0x18(%rsp)                       #! EA = L0x7fffffffd8c0; PC = 0x55555557fea2 *)
mov L0x7fffffffd8c0 ymm7_0;
mov L0x7fffffffd8c8 ymm7_1;
mov L0x7fffffffd8d0 ymm7_2;
mov L0x7fffffffd8d8 ymm7_3;
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffdb60; Value = 0x00007fffffffdb80; PC = 0x55555557fea8 *)
mov ymm7_0 L0x7fffffffdb60;
mov ymm7_1 L0x7fffffffdb68;
mov ymm7_2 L0x7fffffffdb70;
mov ymm7_3 L0x7fffffffdb78;
(* vmovdqa64 0xc0(%rdi),%ymm16                     #! EA = L0x7fffffffdac0; Value = 0xb30283b3fa9e060a; PC = 0x55555557feb0 *)
mov ymm16_0 L0x7fffffffdac0;
mov ymm16_1 L0x7fffffffdac8;
mov ymm16_2 L0x7fffffffdad0;
mov ymm16_3 L0x7fffffffdad8;
(* vmovdqa %ymm7,0x28(%rsp)                        #! EA = L0x7fffffffd900; PC = 0x55555557feb7 *)
mov L0x7fffffffd900 ymm7_0;
mov L0x7fffffffd908 ymm7_1;
mov L0x7fffffffd910 ymm7_2;
mov L0x7fffffffd918 ymm7_3;
(* vmovdqa 0x1e0(%rdi),%ymm7                       #! EA = L0x7fffffffdbe0; Value = 0x363933333737ff43; PC = 0x55555557febd *)
mov ymm7_0 L0x7fffffffdbe0;
mov ymm7_1 L0x7fffffffdbe8;
mov ymm7_2 L0x7fffffffdbf0;
mov ymm7_3 L0x7fffffffdbf8;
(* vmovdqa 0x60(%rdi),%ymm4                        #! EA = L0x7fffffffda60; Value = 0x9d6b17575f35f1c1; PC = 0x55555557fec5 *)
mov ymm4_0 L0x7fffffffda60;
mov ymm4_1 L0x7fffffffda68;
mov ymm4_2 L0x7fffffffda70;
mov ymm4_3 L0x7fffffffda78;
(* vmovdqa64 0x120(%rdi),%ymm27                    #! EA = L0x7fffffffdb20; Value = 0x000000006026a2ac; PC = 0x55555557feca *)
mov ymm27_0 L0x7fffffffdb20;
mov ymm27_1 L0x7fffffffdb28;
mov ymm27_2 L0x7fffffffdb30;
mov ymm27_3 L0x7fffffffdb38;
(* vmovdqa64 0x180(%rdi),%ymm17                    #! EA = L0x7fffffffdb80; Value = 0xf3ac1a168140529e; PC = 0x55555557fed1 *)
mov ymm17_0 L0x7fffffffdb80;
mov ymm17_1 L0x7fffffffdb88;
mov ymm17_2 L0x7fffffffdb90;
mov ymm17_3 L0x7fffffffdb98;
(* vmovdqa 0x1a0(%rdi),%ymm14                      #! EA = L0x7fffffffdba0; Value = 0x0e7837c528da61d5; PC = 0x55555557fed8 *)
mov ymm14_0 L0x7fffffffdba0;
mov ymm14_1 L0x7fffffffdba8;
mov ymm14_2 L0x7fffffffdbb0;
mov ymm14_3 L0x7fffffffdbb8;
(* vmovdqa64 0x1c0(%rdi),%ymm23                    #! EA = L0x7fffffffdbc0; Value = 0x9d6b17575f35f1c1; PC = 0x55555557fee0 *)
mov ymm23_0 L0x7fffffffdbc0;
mov ymm23_1 L0x7fffffffdbc8;
mov ymm23_2 L0x7fffffffdbd0;
mov ymm23_3 L0x7fffffffdbd8;
(* vmovdqa 0x200(%rdi),%ymm1                       #! EA = L0x7fffffffdc00; Value = 0x00007fffffffdd30; PC = 0x55555557fee7 *)
mov ymm1_0 L0x7fffffffdc00;
mov ymm1_1 L0x7fffffffdc08;
mov ymm1_2 L0x7fffffffdc10;
mov ymm1_3 L0x7fffffffdc18;
(* vmovdqa %ymm7,0x8(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x55555557feef *)
mov L0x7fffffffd8e0 ymm7_0;
mov L0x7fffffffd8e8 ymm7_1;
mov L0x7fffffffd8f0 ymm7_2;
mov L0x7fffffffd8f8 ymm7_3;
(* vmovdqa64 0x220(%rdi),%ymm28                    #! EA = L0x7fffffffdc20; Value = 0x00007fffffffdff8; PC = 0x55555557fef5 *)
mov ymm28_0 L0x7fffffffdc20;
mov ymm28_1 L0x7fffffffdc28;
mov ymm28_2 L0x7fffffffdc30;
mov ymm28_3 L0x7fffffffdc38;
(* vmovdqa 0x280(%rdi),%ymm13                      #! EA = L0x7fffffffdc80; Value = 0x4008c27ef9db22d1; PC = 0x55555557fefc *)
mov ymm13_0 L0x7fffffffdc80;
mov ymm13_1 L0x7fffffffdc88;
mov ymm13_2 L0x7fffffffdc90;
mov ymm13_3 L0x7fffffffdc98;
(* vmovdqa64 0x2a0(%rdi),%ymm29                    #! EA = L0x7fffffffdca0; Value = 0x00005555555c0460; PC = 0x55555557ff04 *)
mov ymm29_0 L0x7fffffffdca0;
mov ymm29_1 L0x7fffffffdca8;
mov ymm29_2 L0x7fffffffdcb0;
mov ymm29_3 L0x7fffffffdcb8;
(* vmovdqa 0x240(%rdi),%ymm2                       #! EA = L0x7fffffffdc40; Value = 0x00007fffffffdc50; PC = 0x55555557ff0b *)
mov ymm2_0 L0x7fffffffdc40;
mov ymm2_1 L0x7fffffffdc48;
mov ymm2_2 L0x7fffffffdc50;
mov ymm2_3 L0x7fffffffdc58;
(* vmovdqa 0x260(%rdi),%ymm7                       #! EA = L0x7fffffffdc60; Value = 0x00005555555c0de0; PC = 0x55555557ff13 *)
mov ymm7_0 L0x7fffffffdc60;
mov ymm7_1 L0x7fffffffdc68;
mov ymm7_2 L0x7fffffffdc70;
mov ymm7_3 L0x7fffffffdc78;
(* vmovdqa64 0x2c0(%rdi),%ymm20                    #! EA = L0x7fffffffdcc0; Value = 0x00007fffffffdff8; PC = 0x55555557ff1b *)
mov ymm20_0 L0x7fffffffdcc0;
mov ymm20_1 L0x7fffffffdcc8;
mov ymm20_2 L0x7fffffffdcd0;
mov ymm20_3 L0x7fffffffdcd8;
(* vmovdqa 0x2e0(%rdi),%ymm15                      #! EA = L0x7fffffffdce0; Value = 0x00007fffffffdcf0; PC = 0x55555557ff22 *)
mov ymm15_0 L0x7fffffffdce0;
mov ymm15_1 L0x7fffffffdce8;
mov ymm15_2 L0x7fffffffdcf0;
mov ymm15_3 L0x7fffffffdcf8;
(* vmovdqa64 0x300(%rdi),%ymm18                    #! EA = L0x7fffffffdd00; Value = 0x00005555555c0460; PC = 0x55555557ff2a *)
mov ymm18_0 L0x7fffffffdd00;
mov ymm18_1 L0x7fffffffdd08;
mov ymm18_2 L0x7fffffffdd10;
mov ymm18_3 L0x7fffffffdd18;
(* vmovdqa64 %ymm24,%ymm22                         #! PC = 0x55555557ff31 *)
mov ymm22_0 ymm24_0;
mov ymm22_1 ymm24_1;
mov ymm22_2 ymm24_2;
mov ymm22_3 ymm24_3;
(* vmovdqa64 %ymm5,%ymm25                          #! PC = 0x55555557ff37 *)
mov ymm25_0 ymm5_0;
mov ymm25_1 ymm5_1;
mov ymm25_2 ymm5_2;
mov ymm25_3 ymm5_3;
(* mov    $0x8082,%edi                             #! PC = 0x55555557ff3d *)
mov rdi 0x8082@uint64;
(* vmovdqa64 %ymm30,%ymm5                          #! PC = 0x55555557ff42 *)
mov ymm5_0 ymm30_0;
mov ymm5_1 ymm30_1;
mov ymm5_2 ymm30_2;
mov ymm5_3 ymm30_3;
(* vmovdqa64 %ymm31,%ymm19                         #! PC = 0x55555557ff48 *)
mov ymm19_0 ymm31_0;
mov ymm19_1 ymm31_1;
mov ymm19_2 ymm31_2;
mov ymm19_3 ymm31_3;
(* vmovdqa64 %ymm16,%ymm6                          #! PC = 0x55555557ff4e *)
mov ymm6_0 ymm16_0;
mov ymm6_1 ymm16_1;
mov ymm6_2 ymm16_2;
mov ymm6_3 ymm16_3;
(* vmovdqa %ymm13,%ymm8                            #! PC = 0x55555557ff54 *)
mov ymm8_0 ymm13_0;
mov ymm8_1 ymm13_1;
mov ymm8_2 ymm13_2;
mov ymm8_3 ymm13_3;
(* vmovdqa64 %ymm29,%ymm24                         #! PC = 0x55555557ff59 *)
mov ymm24_0 ymm29_0;
mov ymm24_1 ymm29_1;
mov ymm24_2 ymm29_2;
mov ymm24_3 ymm29_3;
(* vmovdqa 0x68(%rsp),%ymm13                       #! EA = L0x7fffffffd940; Value = 0x00000000000000a8; PC = 0x55555557ff5f *)
mov ymm13_0 L0x7fffffffd940;
mov ymm13_1 L0x7fffffffd948;
mov ymm13_2 L0x7fffffffd950;
mov ymm13_3 L0x7fffffffd958;
(* vmovdqa64 %ymm25,%ymm9                          #! PC = 0x55555557ff65 *)
mov ymm9_0 ymm25_0;
mov ymm9_1 ymm25_1;
mov ymm9_2 ymm25_2;
mov ymm9_3 ymm25_3;
(* vmovdqa 0x48(%rsp),%ymm11                       #! EA = L0x7fffffffd920; Value = 0xdf1aef92fb224dcf; PC = 0x55555557ff6b *)
mov ymm11_0 L0x7fffffffd920;
mov ymm11_1 L0x7fffffffd928;
mov ymm11_2 L0x7fffffffd930;
mov ymm11_3 L0x7fffffffd938;
(* vmovdqa64 -0x18(%rsp),%ymm31                    #! EA = L0x7fffffffd8c0; Value = 0x0000000000000000; PC = 0x55555557ff71 *)
mov ymm31_0 L0x7fffffffd8c0;
mov ymm31_1 L0x7fffffffd8c8;
mov ymm31_2 L0x7fffffffd8d0;
mov ymm31_3 L0x7fffffffd8d8;
(* vpternlogq $0x96,%ymm17,%ymm13,%ymm9            #! PC = 0x55555557ff7c *)
mov table 0x96@uint8;
call vpternlogq64 (ymm9_0, ymm13_0, ymm17_0, table);
call vpternlogq64 (ymm9_1, ymm13_1, ymm17_1, table);
call vpternlogq64 (ymm9_2, ymm13_2, ymm17_2, table);
call vpternlogq64 (ymm9_3, ymm13_3, ymm17_3, table);
(* vmovdqa 0x88(%rsp),%ymm13                       #! EA = L0x7fffffffd960; Value = 0xf02f70f23179d417; PC = 0x55555557ff83 *)
mov ymm13_0 L0x7fffffffd960;
mov ymm13_1 L0x7fffffffd968;
mov ymm13_2 L0x7fffffffd970;
mov ymm13_3 L0x7fffffffd978;
(* vmovdqa 0x8(%rsp),%ymm0                         #! EA = L0x7fffffffd8e0; Value = 0x363933333737ff43; PC = 0x55555557ff8c *)
mov ymm0_0 L0x7fffffffd8e0;
mov ymm0_1 L0x7fffffffd8e8;
mov ymm0_2 L0x7fffffffd8f0;
mov ymm0_3 L0x7fffffffd8f8;
(* vmovdqa64 %ymm22,%ymm12                         #! PC = 0x55555557ff92 *)
mov ymm12_0 ymm22_0;
mov ymm12_1 ymm22_1;
mov ymm12_2 ymm22_2;
mov ymm12_3 ymm22_3;
(* vmovdqa %ymm4,%ymm3                             #! PC = 0x55555557ff98 *)
mov ymm3_0 ymm4_0;
mov ymm3_1 ymm4_1;
mov ymm3_2 ymm4_2;
mov ymm3_3 ymm4_3;
(* vpternlogq $0x96,%ymm20,%ymm28,%ymm9            #! PC = 0x55555557ff9c *)
mov table 0x96@uint8;
call vpternlogq64 (ymm9_0, ymm28_0, ymm20_0, table);
call vpternlogq64 (ymm9_1, ymm28_1, ymm20_1, table);
call vpternlogq64 (ymm9_2, ymm28_2, ymm20_2, table);
call vpternlogq64 (ymm9_3, ymm28_3, ymm20_3, table);
(* vpternlogq $0x96,%ymm31,%ymm19,%ymm12           #! PC = 0x55555557ffa3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm12_0, ymm19_0, ymm31_0, table);
call vpternlogq64 (ymm12_1, ymm19_1, ymm31_1, table);
call vpternlogq64 (ymm12_2, ymm19_2, ymm31_2, table);
call vpternlogq64 (ymm12_3, ymm19_3, ymm31_3, table);
(* vpternlogq $0x96,%ymm14,%ymm11,%ymm3            #! PC = 0x55555557ffaa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm11_0, ymm14_0, table);
call vpternlogq64 (ymm3_1, ymm11_1, ymm14_1, table);
call vpternlogq64 (ymm3_2, ymm11_2, ymm14_2, table);
call vpternlogq64 (ymm3_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,%ymm23,%ymm27,%ymm13           #! PC = 0x55555557ffb1 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm13_0, ymm27_0, ymm23_0, table);
call vpternlogq64 (ymm13_1, ymm27_1, ymm23_1, table);
call vpternlogq64 (ymm13_2, ymm27_2, ymm23_2, table);
call vpternlogq64 (ymm13_3, ymm27_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm8,%ymm0,%ymm12             #! PC = 0x55555557ffb8 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm12_0, ymm0_0, ymm8_0, table);
call vpternlogq64 (ymm12_1, ymm0_1, ymm8_1, table);
call vpternlogq64 (ymm12_2, ymm0_2, ymm8_2, table);
call vpternlogq64 (ymm12_3, ymm0_3, ymm8_3, table);
(* vpternlogq $0x96,%ymm15,%ymm2,%ymm3             #! PC = 0x55555557ffbf *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm2_0, ymm15_0, table);
call vpternlogq64 (ymm3_1, ymm2_1, ymm15_1, table);
call vpternlogq64 (ymm3_2, ymm2_2, ymm15_2, table);
call vpternlogq64 (ymm3_3, ymm2_3, ymm15_3, table);
(* vpternlogq $0x96,%ymm18,%ymm7,%ymm13            #! PC = 0x55555557ffc6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm13_0, ymm7_0, ymm18_0, table);
call vpternlogq64 (ymm13_1, ymm7_1, ymm18_1, table);
call vpternlogq64 (ymm13_2, ymm7_2, ymm18_2, table);
call vpternlogq64 (ymm13_3, ymm7_3, ymm18_3, table);
(* vprolq $0x1,%ymm9,%ymm11                        #! PC = 0x55555557ffcd *)
rol ymm11_0 ymm9_0 0x1;
rol ymm11_1 ymm9_1 0x1;
rol ymm11_2 ymm9_2 0x1;
rol ymm11_3 ymm9_3 0x1;
(* vprolq $0x1,%ymm3,%ymm29                        #! PC = 0x55555557ffd4 *)
rol ymm29_0 ymm3_0 0x1;
rol ymm29_1 ymm3_1 0x1;
rol ymm29_2 ymm3_2 0x1;
rol ymm29_3 ymm3_3 0x1;
(* vprolq $0x1,%ymm13,%ymm30                       #! PC = 0x55555557ffdb *)
rol ymm30_0 ymm13_0 0x1;
rol ymm30_1 ymm13_1 0x1;
rol ymm30_2 ymm13_2 0x1;
rol ymm30_3 ymm13_3 0x1;
(* vprolq $0x1,%ymm12,%ymm16                       #! PC = 0x55555557ffe2 *)
rol ymm16_0 ymm12_0 0x1;
rol ymm16_1 ymm12_1 0x1;
rol ymm16_2 ymm12_2 0x1;
rol ymm16_3 ymm12_3 0x1;
(* vmovdqa %ymm5,%ymm10                            #! PC = 0x55555557ffe9 *)
mov ymm10_0 ymm5_0;
mov ymm10_1 ymm5_1;
mov ymm10_2 ymm5_2;
mov ymm10_3 ymm5_3;
(* vpternlogq $0x96,0x28(%rsp),%ymm6,%ymm10        #! EA = L0x7fffffffd900; Value = 0x00007fffffffdb80; PC = 0x55555557ffed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm10_0, ymm6_0, L0x7fffffffd900, table);
call vpternlogq64 (ymm10_1, ymm6_1, L0x7fffffffd908, table);
call vpternlogq64 (ymm10_2, ymm6_2, L0x7fffffffd910, table);
call vpternlogq64 (ymm10_3, ymm6_3, L0x7fffffffd918, table);
(* vpternlogq $0x96,%ymm24,%ymm1,%ymm10            #! PC = 0x55555557fff9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm10_0, ymm1_0, ymm24_0, table);
call vpternlogq64 (ymm10_1, ymm1_1, ymm24_1, table);
call vpternlogq64 (ymm10_2, ymm1_2, ymm24_2, table);
call vpternlogq64 (ymm10_3, ymm1_3, ymm24_3, table);
(* vpxor  %ymm12,%ymm11,%ymm11                     #! PC = 0x555555580000 *)
xor ymm11_0@uint64 ymm11_0 ymm12_0;
xor ymm11_1@uint64 ymm11_1 ymm12_1;
xor ymm11_2@uint64 ymm11_2 ymm12_2;
xor ymm11_3@uint64 ymm11_3 ymm12_3;
(* vprolq $0x1,%ymm10,%ymm0                        #! PC = 0x555555580005 *)
rol ymm0_0 ymm10_0 0x1;
rol ymm0_1 ymm10_1 0x1;
rol ymm0_2 ymm10_2 0x1;
rol ymm0_3 ymm10_3 0x1;
(* vpxorq %ymm9,%ymm30,%ymm30                      #! PC = 0x55555558000c *)
xor ymm30_0@uint64 ymm30_0 ymm9_0;
xor ymm30_1@uint64 ymm30_1 ymm9_1;
xor ymm30_2@uint64 ymm30_2 ymm9_2;
xor ymm30_3@uint64 ymm30_3 ymm9_3;
(* vpxorq %ymm3,%ymm16,%ymm16                      #! PC = 0x555555580012 *)
xor ymm16_0@uint64 ymm16_0 ymm3_0;
xor ymm16_1@uint64 ymm16_1 ymm3_1;
xor ymm16_2@uint64 ymm16_2 ymm3_2;
xor ymm16_3@uint64 ymm16_3 ymm3_3;
(* vpxorq %ymm10,%ymm29,%ymm29                     #! PC = 0x555555580018 *)
xor ymm29_0@uint64 ymm29_0 ymm10_0;
xor ymm29_1@uint64 ymm29_1 ymm10_1;
xor ymm29_2@uint64 ymm29_2 ymm10_2;
xor ymm29_3@uint64 ymm29_3 ymm10_3;
(* vpxor  %ymm11,%ymm6,%ymm6                       #! PC = 0x55555558001e *)
xor ymm6_0@uint64 ymm6_0 ymm11_0;
xor ymm6_1@uint64 ymm6_1 ymm11_1;
xor ymm6_2@uint64 ymm6_2 ymm11_2;
xor ymm6_3@uint64 ymm6_3 ymm11_3;
(* vprorq $0x14,%ymm6,%ymm6                        #! PC = 0x555555580023 *)
ror ymm6_0 ymm6_0 0x14;
ror ymm6_1 ymm6_1 0x14;
ror ymm6_2 ymm6_2 0x14;
ror ymm6_3 ymm6_3 0x14;
(* vpxorq %ymm29,%ymm17,%ymm21                     #! PC = 0x55555558002a *)
xor ymm21_0@uint64 ymm17_0 ymm29_0;
xor ymm21_1@uint64 ymm17_1 ymm29_1;
xor ymm21_2@uint64 ymm17_2 ymm29_2;
xor ymm21_3@uint64 ymm17_3 ymm29_3;
(* vpxorq %ymm30,%ymm2,%ymm26                      #! PC = 0x555555580030 *)
xor ymm26_0@uint64 ymm2_0 ymm30_0;
xor ymm26_1@uint64 ymm2_1 ymm30_1;
xor ymm26_2@uint64 ymm2_2 ymm30_2;
xor ymm26_3@uint64 ymm2_3 ymm30_3;
(* vpxorq %ymm16,%ymm18,%ymm9                      #! PC = 0x555555580036 *)
xor ymm9_0@uint64 ymm18_0 ymm16_0;
xor ymm9_1@uint64 ymm18_1 ymm16_1;
xor ymm9_2@uint64 ymm18_2 ymm16_2;
xor ymm9_3@uint64 ymm18_3 ymm16_3;
(* vprorq $0x15,%ymm21,%ymm21                      #! PC = 0x55555558003c *)
ror ymm21_0 ymm21_0 0x15;
ror ymm21_1 ymm21_1 0x15;
ror ymm21_2 ymm21_2 0x15;
ror ymm21_3 ymm21_3 0x15;
(* vprolq $0x15,%ymm26,%ymm26                      #! PC = 0x555555580043 *)
rol ymm26_0 ymm26_0 0x15;
rol ymm26_1 ymm26_1 0x15;
rol ymm26_2 ymm26_2 0x15;
rol ymm26_3 ymm26_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x55555558004a *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxor  %ymm13,%ymm0,%ymm0                       #! PC = 0x555555580051 *)
xor ymm0_0@uint64 ymm0_0 ymm13_0;
xor ymm0_1@uint64 ymm0_1 ymm13_1;
xor ymm0_2@uint64 ymm0_2 ymm13_2;
xor ymm0_3@uint64 ymm0_3 ymm13_3;
(* vpxorq %ymm0,%ymm22,%ymm22                      #! PC = 0x555555580056 *)
xor ymm22_0@uint64 ymm22_0 ymm0_0;
xor ymm22_1@uint64 ymm22_1 ymm0_1;
xor ymm22_2@uint64 ymm22_2 ymm0_2;
xor ymm22_3@uint64 ymm22_3 ymm0_3;
(* vmovdqa64 %ymm22,%ymm17                         #! PC = 0x55555558005c *)
mov ymm17_0 ymm22_0;
mov ymm17_1 ymm22_1;
mov ymm17_2 ymm22_2;
mov ymm17_3 ymm22_3;
(* vmovdqa64 %ymm6,%ymm18                          #! PC = 0x555555580062 *)
mov ymm18_0 ymm6_0;
mov ymm18_1 ymm6_1;
mov ymm18_2 ymm6_2;
mov ymm18_3 ymm6_3;
(* vpternlogq $0xd2,%ymm26,%ymm21,%ymm18           #! PC = 0x555555580068 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm21_0, ymm26_0, table);
call vpternlogq64 (ymm18_1, ymm21_1, ymm26_1, table);
call vpternlogq64 (ymm18_2, ymm21_2, ymm26_2, table);
call vpternlogq64 (ymm18_3, ymm21_3, ymm26_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm6,%ymm17            #! PC = 0x55555558006f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm6_0, ymm21_0, table);
call vpternlogq64 (ymm17_1, ymm6_1, ymm21_1, table);
call vpternlogq64 (ymm17_2, ymm6_2, ymm21_2, table);
call vpternlogq64 (ymm17_3, ymm6_3, ymm21_3, table);
(* vpxorq %ymm30,%ymm4,%ymm4                       #! PC = 0x555555580076 *)
xor ymm4_0@uint64 ymm4_0 ymm30_0;
xor ymm4_1@uint64 ymm4_1 ymm30_1;
xor ymm4_2@uint64 ymm4_2 ymm30_2;
xor ymm4_3@uint64 ymm4_3 ymm30_3;
(* vpternlogq $0xd2,%ymm9,%ymm26,%ymm21            #! PC = 0x55555558007c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm26_0, ymm9_0, table);
call vpternlogq64 (ymm21_1, ymm26_1, ymm9_1, table);
call vpternlogq64 (ymm21_2, ymm26_2, ymm9_2, table);
call vpternlogq64 (ymm21_3, ymm26_3, ymm9_3, table);
(* vpxorq %ymm16,%ymm27,%ymm27                     #! PC = 0x555555580083 *)
xor ymm27_0@uint64 ymm27_0 ymm16_0;
xor ymm27_1@uint64 ymm27_1 ymm16_1;
xor ymm27_2@uint64 ymm27_2 ymm16_2;
xor ymm27_3@uint64 ymm27_3 ymm16_3;
(* vpternlogq $0xd2,%ymm22,%ymm9,%ymm26            #! PC = 0x555555580089 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm9_0, ymm22_0, table);
call vpternlogq64 (ymm26_1, ymm9_1, ymm22_1, table);
call vpternlogq64 (ymm26_2, ymm9_2, ymm22_2, table);
call vpternlogq64 (ymm26_3, ymm9_3, ymm22_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm22,%ymm9             #! PC = 0x555555580090 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm22_0, ymm6_0, table);
call vpternlogq64 (ymm9_1, ymm22_1, ymm6_1, table);
call vpternlogq64 (ymm9_2, ymm22_2, ymm6_2, table);
call vpternlogq64 (ymm9_3, ymm22_3, ymm6_3, table);
(* vmovdqa64 %ymm31,%ymm6                          #! PC = 0x555555580097 *)
mov ymm6_0 ymm31_0;
mov ymm6_1 ymm31_1;
mov ymm6_2 ymm31_2;
mov ymm6_3 ymm31_3;
(* vprolq $0x1c,%ymm4,%ymm4                        #! PC = 0x55555558009d *)
rol ymm4_0 ymm4_0 0x1c;
rol ymm4_1 ymm4_1 0x1c;
rol ymm4_2 ymm4_2 0x1c;
rol ymm4_3 ymm4_3 0x1c;
(* vprolq $0x14,%ymm27,%ymm27                      #! PC = 0x5555555800a4 *)
rol ymm27_0 ymm27_0 0x14;
rol ymm27_1 ymm27_1 0x14;
rol ymm27_2 ymm27_2 0x14;
rol ymm27_3 ymm27_3 0x14;
(* vpxor  %ymm6,%ymm0,%ymm3                        #! PC = 0x5555555800ab *)
xor ymm3_0@uint64 ymm0_0 ymm6_0;
xor ymm3_1@uint64 ymm0_1 ymm6_1;
xor ymm3_2@uint64 ymm0_2 ymm6_2;
xor ymm3_3@uint64 ymm0_3 ymm6_3;
(* vpxorq %ymm11,%ymm1,%ymm22                      #! PC = 0x5555555800af *)
xor ymm22_0@uint64 ymm1_0 ymm11_0;
xor ymm22_1@uint64 ymm1_1 ymm11_1;
xor ymm22_2@uint64 ymm1_2 ymm11_2;
xor ymm22_3@uint64 ymm1_3 ymm11_3;
(* vpxorq %ymm29,%ymm20,%ymm13                     #! PC = 0x5555555800b5 *)
xor ymm13_0@uint64 ymm20_0 ymm29_0;
xor ymm13_1@uint64 ymm20_1 ymm29_1;
xor ymm13_2@uint64 ymm20_2 ymm29_2;
xor ymm13_3@uint64 ymm20_3 ymm29_3;
(* vprolq $0x3,%ymm3,%ymm3                         #! PC = 0x5555555800bb *)
rol ymm3_0 ymm3_0 0x3;
rol ymm3_1 ymm3_1 0x3;
rol ymm3_2 ymm3_2 0x3;
rol ymm3_3 ymm3_3 0x3;
(* vprorq $0x13,%ymm22,%ymm22                      #! PC = 0x5555555800c2 *)
ror ymm22_0 ymm22_0 0x13;
ror ymm22_1 ymm22_1 0x13;
ror ymm22_2 ymm22_2 0x13;
ror ymm22_3 ymm22_3 0x13;
(* vprorq $0x3,%ymm13,%ymm13                       #! PC = 0x5555555800c9 *)
ror ymm13_0 ymm13_0 0x3;
ror ymm13_1 ymm13_1 0x3;
ror ymm13_2 ymm13_2 0x3;
ror ymm13_3 ymm13_3 0x3;
(* vmovdqa64 %ymm4,%ymm20                          #! PC = 0x5555555800d0 *)
mov ymm20_0 ymm4_0;
mov ymm20_1 ymm4_1;
mov ymm20_2 ymm4_2;
mov ymm20_3 ymm4_3;
(* vmovdqa64 %ymm27,%ymm31                         #! PC = 0x5555555800d6 *)
mov ymm31_0 ymm27_0;
mov ymm31_1 ymm27_1;
mov ymm31_2 ymm27_2;
mov ymm31_3 ymm27_3;
(* vpbroadcastq %rsi,%ymm2                         #! PC = 0x5555555800dc *)
mov ymm2_0 rsi;
mov ymm2_1 rsi;
mov ymm2_2 rsi;
mov ymm2_3 rsi;
(* vpternlogq $0xd2,%ymm3,%ymm27,%ymm20            #! PC = 0x5555555800e2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm27_0, ymm3_0, table);
call vpternlogq64 (ymm20_1, ymm27_1, ymm3_1, table);
call vpternlogq64 (ymm20_2, ymm27_2, ymm3_2, table);
call vpternlogq64 (ymm20_3, ymm27_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm3,%ymm31            #! PC = 0x5555555800e9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm3_0, ymm22_0, table);
call vpternlogq64 (ymm31_1, ymm3_1, ymm22_1, table);
call vpternlogq64 (ymm31_2, ymm3_2, ymm22_2, table);
call vpternlogq64 (ymm31_3, ymm3_3, ymm22_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm22,%ymm3            #! PC = 0x5555555800f0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm22_0, ymm13_0, table);
call vpternlogq64 (ymm3_1, ymm22_1, ymm13_1, table);
call vpternlogq64 (ymm3_2, ymm22_2, ymm13_2, table);
call vpternlogq64 (ymm3_3, ymm22_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm13,%ymm22            #! PC = 0x5555555800f7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm13_0, ymm4_0, table);
call vpternlogq64 (ymm22_1, ymm13_1, ymm4_1, table);
call vpternlogq64 (ymm22_2, ymm13_2, ymm4_2, table);
call vpternlogq64 (ymm22_3, ymm13_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm4,%ymm13            #! PC = 0x5555555800fe *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm4_0, ymm27_0, table);
call vpternlogq64 (ymm13_1, ymm4_1, ymm27_1, table);
call vpternlogq64 (ymm13_2, ymm4_2, ymm27_2, table);
call vpternlogq64 (ymm13_3, ymm4_3, ymm27_3, table);
(* vpxorq 0x68(%rsp),%ymm29,%ymm4                  #! EA = L0x7fffffffd940; Value = 0x00000000000000a8; PC = 0x555555580105 *)
xor ymm4_0@uint64 ymm29_0 L0x7fffffffd940;
xor ymm4_1@uint64 ymm29_1 L0x7fffffffd948;
xor ymm4_2@uint64 ymm29_2 L0x7fffffffd950;
xor ymm4_3@uint64 ymm29_3 L0x7fffffffd958;
(* vpxor  %ymm11,%ymm5,%ymm5                       #! PC = 0x555555580110 *)
xor ymm5_0@uint64 ymm5_0 ymm11_0;
xor ymm5_1@uint64 ymm5_1 ymm11_1;
xor ymm5_2@uint64 ymm5_2 ymm11_2;
xor ymm5_3@uint64 ymm5_3 ymm11_3;
(* vprolq $0x6,%ymm4,%ymm4                         #! PC = 0x555555580115 *)
rol ymm4_0 ymm4_0 0x6;
rol ymm4_1 ymm4_1 0x6;
rol ymm4_2 ymm4_2 0x6;
rol ymm4_3 ymm4_3 0x6;
(* vpxorq %ymm2,%ymm17,%ymm17                      #! PC = 0x55555558011c *)
xor ymm17_0@uint64 ymm17_0 ymm2_0;
xor ymm17_1@uint64 ymm17_1 ymm2_1;
xor ymm17_2@uint64 ymm17_2 ymm2_2;
xor ymm17_3@uint64 ymm17_3 ymm2_3;
(* vpxor  %ymm0,%ymm8,%ymm6                        #! PC = 0x555555580122 *)
xor ymm6_0@uint64 ymm8_0 ymm0_0;
xor ymm6_1@uint64 ymm8_1 ymm0_1;
xor ymm6_2@uint64 ymm8_2 ymm0_2;
xor ymm6_3@uint64 ymm8_3 ymm0_3;
(* vprolq $0x1,%ymm5,%ymm2                         #! PC = 0x555555580126 *)
rol ymm2_0 ymm5_0 0x1;
rol ymm2_1 ymm5_1 0x1;
rol ymm2_2 ymm5_2 0x1;
rol ymm2_3 ymm5_3 0x1;
(* vpxorq %ymm16,%ymm7,%ymm1                       #! PC = 0x55555558012d *)
xor ymm1_0@uint64 ymm7_0 ymm16_0;
xor ymm1_1@uint64 ymm7_1 ymm16_1;
xor ymm1_2@uint64 ymm7_2 ymm16_2;
xor ymm1_3@uint64 ymm7_3 ymm16_3;
(* vpxorq %ymm30,%ymm14,%ymm14                     #! PC = 0x555555580133 *)
xor ymm14_0@uint64 ymm14_0 ymm30_0;
xor ymm14_1@uint64 ymm14_1 ymm30_1;
xor ymm14_2@uint64 ymm14_2 ymm30_2;
xor ymm14_3@uint64 ymm14_3 ymm30_3;
(* vprolq $0x12,%ymm6,%ymm6                        #! PC = 0x555555580139 *)
rol ymm6_0 ymm6_0 0x12;
rol ymm6_1 ymm6_1 0x12;
rol ymm6_2 ymm6_2 0x12;
rol ymm6_3 ymm6_3 0x12;
(* vprolq $0x19,%ymm14,%ymm14                      #! PC = 0x555555580140 *)
rol ymm14_0 ymm14_0 0x19;
rol ymm14_1 ymm14_1 0x19;
rol ymm14_2 ymm14_2 0x19;
rol ymm14_3 ymm14_3 0x19;
(* vprolq $0x8,%ymm1,%ymm1                         #! PC = 0x555555580147 *)
rol ymm1_0 ymm1_0 0x8;
rol ymm1_1 ymm1_1 0x8;
rol ymm1_2 ymm1_2 0x8;
rol ymm1_3 ymm1_3 0x8;
(* vmovdqa %ymm2,%ymm12                            #! PC = 0x55555558014e *)
mov ymm12_0 ymm2_0;
mov ymm12_1 ymm2_1;
mov ymm12_2 ymm2_2;
mov ymm12_3 ymm2_3;
(* vmovdqa %ymm4,%ymm5                             #! PC = 0x555555580152 *)
mov ymm5_0 ymm4_0;
mov ymm5_1 ymm4_1;
mov ymm5_2 ymm4_2;
mov ymm5_3 ymm4_3;
(* vpxor  0x28(%rsp),%ymm11,%ymm8                  #! EA = L0x7fffffffd900; Value = 0x00007fffffffdb80; PC = 0x555555580156 *)
xor ymm8_0@uint64 ymm11_0 L0x7fffffffd900;
xor ymm8_1@uint64 ymm11_1 L0x7fffffffd908;
xor ymm8_2@uint64 ymm11_2 L0x7fffffffd910;
xor ymm8_3@uint64 ymm11_3 L0x7fffffffd918;
(* vpxorq %ymm0,%ymm19,%ymm19                      #! PC = 0x55555558015c *)
xor ymm19_0@uint64 ymm19_0 ymm0_0;
xor ymm19_1@uint64 ymm19_1 ymm0_1;
xor ymm19_2@uint64 ymm19_2 ymm0_2;
xor ymm19_3@uint64 ymm19_3 ymm0_3;
(* vpternlogq $0xd2,%ymm14,%ymm4,%ymm12            #! PC = 0x555555580162 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm4_0, ymm14_0, table);
call vpternlogq64 (ymm12_1, ymm4_1, ymm14_1, table);
call vpternlogq64 (ymm12_2, ymm4_2, ymm14_2, table);
call vpternlogq64 (ymm12_3, ymm4_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm14,%ymm5             #! PC = 0x555555580169 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm14_0, ymm1_0, table);
call vpternlogq64 (ymm5_1, ymm14_1, ymm1_1, table);
call vpternlogq64 (ymm5_2, ymm14_2, ymm1_2, table);
call vpternlogq64 (ymm5_3, ymm14_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm1,%ymm14             #! PC = 0x555555580170 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm1_0, ymm6_0, table);
call vpternlogq64 (ymm14_1, ymm1_1, ymm6_1, table);
call vpternlogq64 (ymm14_2, ymm1_2, ymm6_2, table);
call vpternlogq64 (ymm14_3, ymm1_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm6,%ymm1              #! PC = 0x555555580177 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm6_0, ymm2_0, table);
call vpternlogq64 (ymm1_1, ymm6_1, ymm2_1, table);
call vpternlogq64 (ymm1_2, ymm6_2, ymm2_2, table);
call vpternlogq64 (ymm1_3, ymm6_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm2,%ymm6              #! PC = 0x55555558017e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm2_0, ymm4_0, table);
call vpternlogq64 (ymm6_1, ymm2_1, ymm4_1, table);
call vpternlogq64 (ymm6_2, ymm2_2, ymm4_2, table);
call vpternlogq64 (ymm6_3, ymm2_3, ymm4_3, table);
(* vpxorq %ymm30,%ymm15,%ymm2                      #! PC = 0x555555580185 *)
xor ymm2_0@uint64 ymm15_0 ymm30_0;
xor ymm2_1@uint64 ymm15_1 ymm30_1;
xor ymm2_2@uint64 ymm15_2 ymm30_2;
xor ymm2_3@uint64 ymm15_3 ymm30_3;
(* vpxorq 0x88(%rsp),%ymm16,%ymm15                 #! EA = L0x7fffffffd960; Value = 0xf02f70f23179d417; PC = 0x55555558018b *)
xor ymm15_0@uint64 ymm16_0 L0x7fffffffd960;
xor ymm15_1@uint64 ymm16_1 L0x7fffffffd968;
xor ymm15_2@uint64 ymm16_2 L0x7fffffffd970;
xor ymm15_3@uint64 ymm16_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm30,%ymm30                 #! EA = L0x7fffffffd920; Value = 0xdf1aef92fb224dcf; PC = 0x555555580196 *)
xor ymm30_0@uint64 ymm30_0 L0x7fffffffd920;
xor ymm30_1@uint64 ymm30_1 L0x7fffffffd928;
xor ymm30_2@uint64 ymm30_2 L0x7fffffffd930;
xor ymm30_3@uint64 ymm30_3 L0x7fffffffd938;
(* vprorq $0x1c,%ymm19,%ymm4                       #! PC = 0x5555555801a1 *)
ror ymm4_0 ymm19_0 0x1c;
ror ymm4_1 ymm19_1 0x1c;
ror ymm4_2 ymm19_2 0x1c;
ror ymm4_3 ymm19_3 0x1c;
(* vprolq $0x1b,%ymm15,%ymm15                      #! PC = 0x5555555801a8 *)
rol ymm15_0 ymm15_0 0x1b;
rol ymm15_1 ymm15_1 0x1b;
rol ymm15_2 ymm15_2 0x1b;
rol ymm15_3 ymm15_3 0x1b;
(* vpxorq %ymm29,%ymm28,%ymm10                     #! PC = 0x5555555801af *)
xor ymm10_0@uint64 ymm28_0 ymm29_0;
xor ymm10_1@uint64 ymm28_1 ymm29_1;
xor ymm10_2@uint64 ymm28_2 ymm29_2;
xor ymm10_3@uint64 ymm28_3 ymm29_3;
(* vpxor  0x8(%rsp),%ymm0,%ymm0                    #! EA = L0x7fffffffd8e0; Value = 0x363933333737ff43; PC = 0x5555555801b5 *)
xor ymm0_0@uint64 ymm0_0 L0x7fffffffd8e0;
xor ymm0_1@uint64 ymm0_1 L0x7fffffffd8e8;
xor ymm0_2@uint64 ymm0_2 L0x7fffffffd8f0;
xor ymm0_3@uint64 ymm0_3 L0x7fffffffd8f8;
(* vpxorq %ymm29,%ymm25,%ymm29                     #! PC = 0x5555555801bb *)
xor ymm29_0@uint64 ymm25_0 ymm29_0;
xor ymm29_1@uint64 ymm25_1 ymm29_1;
xor ymm29_2@uint64 ymm25_2 ymm29_2;
xor ymm29_3@uint64 ymm25_3 ymm29_3;
(* vprorq $0x2,%ymm29,%ymm29                       #! PC = 0x5555555801c1 *)
ror ymm29_0 ymm29_0 0x2;
ror ymm29_1 ymm29_1 0x2;
ror ymm29_2 ymm29_2 0x2;
ror ymm29_3 ymm29_3 0x2;
(* vprorq $0x9,%ymm30,%ymm30                       #! PC = 0x5555555801c8 *)
ror ymm30_0 ymm30_0 0x9;
ror ymm30_1 ymm30_1 0x9;
ror ymm30_2 ymm30_2 0x9;
ror ymm30_3 ymm30_3 0x9;
(* vprolq $0xa,%ymm8,%ymm8                         #! PC = 0x5555555801cf *)
rol ymm8_0 ymm8_0 0xa;
rol ymm8_1 ymm8_1 0xa;
rol ymm8_2 ymm8_2 0xa;
rol ymm8_3 ymm8_3 0xa;
(* vprolq $0xf,%ymm10,%ymm10                       #! PC = 0x5555555801d6 *)
rol ymm10_0 ymm10_0 0xf;
rol ymm10_1 ymm10_1 0xf;
rol ymm10_2 ymm10_2 0xf;
rol ymm10_3 ymm10_3 0xf;
(* vprorq $0x8,%ymm2,%ymm2                         #! PC = 0x5555555801dd *)
ror ymm2_0 ymm2_0 0x8;
ror ymm2_1 ymm2_1 0x8;
ror ymm2_2 ymm2_2 0x8;
ror ymm2_3 ymm2_3 0x8;
(* vpxorq %ymm11,%ymm24,%ymm11                     #! PC = 0x5555555801e4 *)
xor ymm11_0@uint64 ymm24_0 ymm11_0;
xor ymm11_1@uint64 ymm24_1 ymm11_1;
xor ymm11_2@uint64 ymm24_2 ymm11_2;
xor ymm11_3@uint64 ymm24_3 ymm11_3;
(* vpxorq %ymm16,%ymm23,%ymm16                     #! PC = 0x5555555801ea *)
xor ymm16_0@uint64 ymm23_0 ymm16_0;
xor ymm16_1@uint64 ymm23_1 ymm16_1;
xor ymm16_2@uint64 ymm23_2 ymm16_2;
xor ymm16_3@uint64 ymm23_3 ymm16_3;
(* vprorq $0x17,%ymm0,%ymm0                        #! PC = 0x5555555801f0 *)
ror ymm0_0 ymm0_0 0x17;
ror ymm0_1 ymm0_1 0x17;
ror ymm0_2 ymm0_2 0x17;
ror ymm0_3 ymm0_3 0x17;
(* vprolq $0x2,%ymm11,%ymm11                       #! PC = 0x5555555801f7 *)
rol ymm11_0 ymm11_0 0x2;
rol ymm11_1 ymm11_1 0x2;
rol ymm11_2 ymm11_2 0x2;
rol ymm11_3 ymm11_3 0x2;
(* vprorq $0x19,%ymm16,%ymm16                      #! PC = 0x5555555801fe *)
ror ymm16_0 ymm16_0 0x19;
ror ymm16_1 ymm16_1 0x19;
ror ymm16_2 ymm16_2 0x19;
ror ymm16_3 ymm16_3 0x19;
(* vmovdqa %ymm15,%ymm7                            #! PC = 0x555555580205 *)
mov ymm7_0 ymm15_0;
mov ymm7_1 ymm15_1;
mov ymm7_2 ymm15_2;
mov ymm7_3 ymm15_3;
(* vmovdqa64 %ymm4,%ymm19                          #! PC = 0x555555580209 *)
mov ymm19_0 ymm4_0;
mov ymm19_1 ymm4_1;
mov ymm19_2 ymm4_2;
mov ymm19_3 ymm4_3;
(* vpternlogq $0xd2,%ymm8,%ymm4,%ymm7              #! PC = 0x55555558020f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm4_0, ymm8_0, table);
call vpternlogq64 (ymm7_1, ymm4_1, ymm8_1, table);
call vpternlogq64 (ymm7_2, ymm4_2, ymm8_2, table);
call vpternlogq64 (ymm7_3, ymm4_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm8,%ymm19            #! PC = 0x555555580216 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm8_0, ymm10_0, table);
call vpternlogq64 (ymm19_1, ymm8_1, ymm10_1, table);
call vpternlogq64 (ymm19_2, ymm8_2, ymm10_2, table);
call vpternlogq64 (ymm19_3, ymm8_3, ymm10_3, table);
(* vmovdqa64 %ymm29,%ymm27                         #! PC = 0x55555558021d *)
mov ymm27_0 ymm29_0;
mov ymm27_1 ymm29_1;
mov ymm27_2 ymm29_2;
mov ymm27_3 ymm29_3;
(* vpternlogq $0xd2,%ymm2,%ymm10,%ymm8             #! PC = 0x555555580223 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm10_0, ymm2_0, table);
call vpternlogq64 (ymm8_1, ymm10_1, ymm2_1, table);
call vpternlogq64 (ymm8_2, ymm10_2, ymm2_2, table);
call vpternlogq64 (ymm8_3, ymm10_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm15,%ymm2,%ymm10            #! PC = 0x55555558022a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm15_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm15_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm15_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm15,%ymm2             #! PC = 0x555555580231 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm15_0, ymm4_0, table);
call vpternlogq64 (ymm2_1, ymm15_1, ymm4_1, table);
call vpternlogq64 (ymm2_2, ymm15_2, ymm4_2, table);
call vpternlogq64 (ymm2_3, ymm15_3, ymm4_3, table);
(* vmovdqa64 %ymm30,%ymm15                         #! PC = 0x555555580238 *)
mov ymm15_0 ymm30_0;
mov ymm15_1 ymm30_1;
mov ymm15_2 ymm30_2;
mov ymm15_3 ymm30_3;
(* vpternlogq $0xd2,%ymm0,%ymm16,%ymm15            #! PC = 0x55555558023e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm16_0, ymm0_0, table);
call vpternlogq64 (ymm15_1, ymm16_1, ymm0_1, table);
call vpternlogq64 (ymm15_2, ymm16_2, ymm0_2, table);
call vpternlogq64 (ymm15_3, ymm16_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm30,%ymm27           #! PC = 0x555555580245 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm30_0, ymm16_0, table);
call vpternlogq64 (ymm27_1, ymm30_1, ymm16_1, table);
call vpternlogq64 (ymm27_2, ymm30_2, ymm16_2, table);
call vpternlogq64 (ymm27_3, ymm30_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm0,%ymm16            #! PC = 0x55555558024c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm0_0, ymm11_0, table);
call vpternlogq64 (ymm16_1, ymm0_1, ymm11_1, table);
call vpternlogq64 (ymm16_2, ymm0_2, ymm11_2, table);
call vpternlogq64 (ymm16_3, ymm0_3, ymm11_3, table);
(* vmovdqa64 %ymm16,%ymm24                         #! PC = 0x555555580253 *)
mov ymm24_0 ymm16_0;
mov ymm24_1 ymm16_1;
mov ymm24_2 ymm16_2;
mov ymm24_3 ymm16_3;
(* vpternlogq $0x96,%ymm21,%ymm14,%ymm24           #! PC = 0x555555580259 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm14_0, ymm21_0, table);
call vpternlogq64 (ymm24_1, ymm14_1, ymm21_1, table);
call vpternlogq64 (ymm24_2, ymm14_2, ymm21_2, table);
call vpternlogq64 (ymm24_3, ymm14_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm3,%ymm8,%ymm24             #! PC = 0x555555580260 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm8_0, ymm3_0, table);
call vpternlogq64 (ymm24_1, ymm8_1, ymm3_1, table);
call vpternlogq64 (ymm24_2, ymm8_2, ymm3_2, table);
call vpternlogq64 (ymm24_3, ymm8_3, ymm3_3, table);
(* vprolq $0x1,%ymm24,%ymm23                       #! PC = 0x555555580267 *)
rol ymm23_0 ymm24_0 0x1;
rol ymm23_1 ymm24_1 0x1;
rol ymm23_2 ymm24_2 0x1;
rol ymm23_3 ymm24_3 0x1;
(* vpternlogq $0xd2,%ymm29,%ymm11,%ymm0            #! PC = 0x55555558026e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm11_0, ymm29_0, table);
call vpternlogq64 (ymm0_1, ymm11_1, ymm29_1, table);
call vpternlogq64 (ymm0_2, ymm11_2, ymm29_2, table);
call vpternlogq64 (ymm0_3, ymm11_3, ymm29_3, table);
(* vmovdqa64 %ymm22,%ymm4                          #! PC = 0x555555580275 *)
mov ymm4_0 ymm22_0;
mov ymm4_1 ymm22_1;
mov ymm4_2 ymm22_2;
mov ymm4_3 ymm22_3;
(* vpternlogq $0x96,%ymm1,%ymm0,%ymm4              #! PC = 0x55555558027b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm0_0, ymm1_0, table);
call vpternlogq64 (ymm4_1, ymm0_1, ymm1_1, table);
call vpternlogq64 (ymm4_2, ymm0_2, ymm1_2, table);
call vpternlogq64 (ymm4_3, ymm0_3, ymm1_3, table);
(* vpternlogq $0x96,%ymm10,%ymm26,%ymm4            #! PC = 0x555555580282 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm26_0, ymm10_0, table);
call vpternlogq64 (ymm4_1, ymm26_1, ymm10_1, table);
call vpternlogq64 (ymm4_2, ymm26_2, ymm10_2, table);
call vpternlogq64 (ymm4_3, ymm26_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm29,%ymm11           #! PC = 0x555555580289 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm29_0, ymm30_0, table);
call vpternlogq64 (ymm11_1, ymm29_1, ymm30_1, table);
call vpternlogq64 (ymm11_2, ymm29_2, ymm30_2, table);
call vpternlogq64 (ymm11_3, ymm29_3, ymm30_3, table);
(* vmovdqa64 %ymm23,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x555555580290 *)
mov L0x7fffffffd960 ymm23_0;
mov L0x7fffffffd968 ymm23_1;
mov L0x7fffffffd970 ymm23_2;
mov L0x7fffffffd978 ymm23_3;
(* vprolq $0x1,%ymm4,%ymm23                        #! PC = 0x55555558029b *)
rol ymm23_0 ymm4_0 0x1;
rol ymm23_1 ymm4_1 0x1;
rol ymm23_2 ymm4_2 0x1;
rol ymm23_3 ymm4_3 0x1;
(* vmovdqa64 %ymm2,%ymm28                          #! PC = 0x5555555802a2 *)
mov ymm28_0 ymm2_0;
mov ymm28_1 ymm2_1;
mov ymm28_2 ymm2_2;
mov ymm28_3 ymm2_3;
(* vpternlogq $0x96,%ymm11,%ymm13,%ymm28           #! PC = 0x5555555802a8 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm28_0, ymm13_0, ymm11_0, table);
call vpternlogq64 (ymm28_1, ymm13_1, ymm11_1, table);
call vpternlogq64 (ymm28_2, ymm13_2, ymm11_2, table);
call vpternlogq64 (ymm28_3, ymm13_3, ymm11_3, table);
(* vpternlogq $0x96,%ymm9,%ymm6,%ymm28             #! PC = 0x5555555802af *)
mov table 0x96@uint8;
call vpternlogq64 (ymm28_0, ymm6_0, ymm9_0, table);
call vpternlogq64 (ymm28_1, ymm6_1, ymm9_1, table);
call vpternlogq64 (ymm28_2, ymm6_2, ymm9_2, table);
call vpternlogq64 (ymm28_3, ymm6_3, ymm9_3, table);
(* vmovdqa64 %ymm17,%ymm30                         #! PC = 0x5555555802b6 *)
mov ymm30_0 ymm17_0;
mov ymm30_1 ymm17_1;
mov ymm30_2 ymm17_2;
mov ymm30_3 ymm17_3;
(* vpternlogq $0x96,%ymm20,%ymm7,%ymm30            #! PC = 0x5555555802bc *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm7_0, ymm20_0, table);
call vpternlogq64 (ymm30_1, ymm7_1, ymm20_1, table);
call vpternlogq64 (ymm30_2, ymm7_2, ymm20_2, table);
call vpternlogq64 (ymm30_3, ymm7_3, ymm20_3, table);
(* vmovdqa64 %ymm23,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555802c3 *)
mov L0x7fffffffd940 ymm23_0;
mov L0x7fffffffd948 ymm23_1;
mov L0x7fffffffd950 ymm23_2;
mov L0x7fffffffd958 ymm23_3;
(* vprolq $0x1,%ymm28,%ymm23                       #! PC = 0x5555555802ce *)
rol ymm23_0 ymm28_0 0x1;
rol ymm23_1 ymm28_1 0x1;
rol ymm23_2 ymm28_2 0x1;
rol ymm23_3 ymm28_3 0x1;
(* vpternlogq $0x96,%ymm12,%ymm27,%ymm30           #! PC = 0x5555555802d5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm27_0, ymm12_0, table);
call vpternlogq64 (ymm30_1, ymm27_1, ymm12_1, table);
call vpternlogq64 (ymm30_2, ymm27_2, ymm12_2, table);
call vpternlogq64 (ymm30_3, ymm27_3, ymm12_3, table);
(* vmovdqa64 %ymm5,%ymm25                          #! PC = 0x5555555802dc *)
mov ymm25_0 ymm5_0;
mov ymm25_1 ymm5_1;
mov ymm25_2 ymm5_2;
mov ymm25_3 ymm5_3;
(* vpternlogq $0x96,%ymm19,%ymm18,%ymm25           #! PC = 0x5555555802e2 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm18_0, ymm19_0, table);
call vpternlogq64 (ymm25_1, ymm18_1, ymm19_1, table);
call vpternlogq64 (ymm25_2, ymm18_2, ymm19_2, table);
call vpternlogq64 (ymm25_3, ymm18_3, ymm19_3, table);
(* vpternlogq $0x96,%ymm15,%ymm31,%ymm25           #! PC = 0x5555555802e9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm31_0, ymm15_0, table);
call vpternlogq64 (ymm25_1, ymm31_1, ymm15_1, table);
call vpternlogq64 (ymm25_2, ymm31_2, ymm15_2, table);
call vpternlogq64 (ymm25_3, ymm31_3, ymm15_3, table);
(* vprolq $0x1,%ymm25,%ymm29                       #! PC = 0x5555555802f0 *)
rol ymm29_0 ymm25_0 0x1;
rol ymm29_1 ymm25_1 0x1;
rol ymm29_2 ymm25_2 0x1;
rol ymm29_3 ymm25_3 0x1;
(* vmovdqa64 %ymm23,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x5555555802f7 *)
mov L0x7fffffffd920 ymm23_0;
mov L0x7fffffffd928 ymm23_1;
mov L0x7fffffffd930 ymm23_2;
mov L0x7fffffffd938 ymm23_3;
(* vprolq $0x1,%ymm30,%ymm23                       #! PC = 0x555555580302 *)
rol ymm23_0 ymm30_0 0x1;
rol ymm23_1 ymm30_1 0x1;
rol ymm23_2 ymm30_2 0x1;
rol ymm23_3 ymm30_3 0x1;
(* vpxorq 0x88(%rsp),%ymm30,%ymm30                 #! EA = L0x7fffffffd960; Value = 0x81ce0d5727003ae3; PC = 0x555555580309 *)
xor ymm30_0@uint64 ymm30_0 L0x7fffffffd960;
xor ymm30_1@uint64 ymm30_1 L0x7fffffffd968;
xor ymm30_2@uint64 ymm30_2 L0x7fffffffd970;
xor ymm30_3@uint64 ymm30_3 L0x7fffffffd978;
(* vpxorq 0x68(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd940; Value = 0x80d8ebeb4e094824; PC = 0x555555580314 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd940;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd948;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd950;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd958;
(* vpxorq 0x48(%rsp),%ymm24,%ymm24                 #! EA = L0x7fffffffd920; Value = 0xb267255b1f0000e1; PC = 0x55555558031f *)
xor ymm24_0@uint64 ymm24_0 L0x7fffffffd920;
xor ymm24_1@uint64 ymm24_1 L0x7fffffffd928;
xor ymm24_2@uint64 ymm24_2 L0x7fffffffd930;
xor ymm24_3@uint64 ymm24_3 L0x7fffffffd938;
(* vpxorq %ymm30,%ymm31,%ymm31                     #! PC = 0x55555558032a *)
xor ymm31_0@uint64 ymm31_0 ymm30_0;
xor ymm31_1@uint64 ymm31_1 ymm30_1;
xor ymm31_2@uint64 ymm31_2 ymm30_2;
xor ymm31_3@uint64 ymm31_3 ymm30_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580330 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm4,%ymm23,%ymm23                      #! PC = 0x555555580337 *)
xor ymm23_0@uint64 ymm23_0 ymm4_0;
xor ymm23_1@uint64 ymm23_1 ymm4_1;
xor ymm23_2@uint64 ymm23_2 ymm4_2;
xor ymm23_3@uint64 ymm23_3 ymm4_3;
(* vpxorq %ymm25,%ymm14,%ymm14                     #! PC = 0x55555558033d *)
xor ymm14_0@uint64 ymm14_0 ymm25_0;
xor ymm14_1@uint64 ymm14_1 ymm25_1;
xor ymm14_2@uint64 ymm14_2 ymm25_2;
xor ymm14_3@uint64 ymm14_3 ymm25_3;
(* vpxorq %ymm24,%ymm10,%ymm10                     #! PC = 0x555555580343 *)
xor ymm10_0@uint64 ymm10_0 ymm24_0;
xor ymm10_1@uint64 ymm10_1 ymm24_1;
xor ymm10_2@uint64 ymm10_2 ymm24_2;
xor ymm10_3@uint64 ymm10_3 ymm24_3;
(* vpxorq %ymm23,%ymm11,%ymm11                     #! PC = 0x555555580349 *)
xor ymm11_0@uint64 ymm11_0 ymm23_0;
xor ymm11_1@uint64 ymm11_1 ymm23_1;
xor ymm11_2@uint64 ymm11_2 ymm23_2;
xor ymm11_3@uint64 ymm11_3 ymm23_3;
(* vprorq $0x15,%ymm14,%ymm14                      #! PC = 0x55555558034f *)
ror ymm14_0 ymm14_0 0x15;
ror ymm14_1 ymm14_1 0x15;
ror ymm14_2 ymm14_2 0x15;
ror ymm14_3 ymm14_3 0x15;
(* vprolq $0x15,%ymm10,%ymm10                      #! PC = 0x555555580356 *)
rol ymm10_0 ymm10_0 0x15;
rol ymm10_1 ymm10_1 0x15;
rol ymm10_2 ymm10_2 0x15;
rol ymm10_3 ymm10_3 0x15;
(* vprolq $0xe,%ymm11,%ymm11                       #! PC = 0x55555558035d *)
rol ymm11_0 ymm11_0 0xe;
rol ymm11_1 ymm11_1 0xe;
rol ymm11_2 ymm11_2 0xe;
rol ymm11_3 ymm11_3 0xe;
(* vpxorq %ymm28,%ymm29,%ymm29                     #! PC = 0x555555580364 *)
xor ymm29_0@uint64 ymm29_0 ymm28_0;
xor ymm29_1@uint64 ymm29_1 ymm28_1;
xor ymm29_2@uint64 ymm29_2 ymm28_2;
xor ymm29_3@uint64 ymm29_3 ymm28_3;
(* vpxorq %ymm17,%ymm29,%ymm4                      #! PC = 0x55555558036a *)
xor ymm4_0@uint64 ymm29_0 ymm17_0;
xor ymm4_1@uint64 ymm29_1 ymm17_1;
xor ymm4_2@uint64 ymm29_2 ymm17_2;
xor ymm4_3@uint64 ymm29_3 ymm17_3;
(* vmovdqa64 %ymm4,%ymm28                          #! PC = 0x555555580370 *)
mov ymm28_0 ymm4_0;
mov ymm28_1 ymm4_1;
mov ymm28_2 ymm4_2;
mov ymm28_3 ymm4_3;
(* vmovdqa64 %ymm31,%ymm17                         #! PC = 0x555555580376 *)
mov ymm17_0 ymm31_0;
mov ymm17_1 ymm31_1;
mov ymm17_2 ymm31_2;
mov ymm17_3 ymm31_3;
(* vpternlogq $0xd2,%ymm10,%ymm14,%ymm17           #! PC = 0x55555558037c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm14_0, ymm10_0, table);
call vpternlogq64 (ymm17_1, ymm14_1, ymm10_1, table);
call vpternlogq64 (ymm17_2, ymm14_2, ymm10_2, table);
call vpternlogq64 (ymm17_3, ymm14_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm31,%ymm28           #! PC = 0x555555580383 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm31_0, ymm14_0, table);
call vpternlogq64 (ymm28_1, ymm31_1, ymm14_1, table);
call vpternlogq64 (ymm28_2, ymm31_2, ymm14_2, table);
call vpternlogq64 (ymm28_3, ymm31_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm10,%ymm14           #! PC = 0x55555558038a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm14_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm14_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm14_3, ymm10_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm11,%ymm10            #! PC = 0x555555580391 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm11_0, ymm4_0, table);
call vpternlogq64 (ymm10_1, ymm11_1, ymm4_1, table);
call vpternlogq64 (ymm10_2, ymm11_2, ymm4_2, table);
call vpternlogq64 (ymm10_3, ymm11_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm4,%ymm11            #! PC = 0x555555580398 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm4_0, ymm31_0, table);
call vpternlogq64 (ymm11_1, ymm4_1, ymm31_1, table);
call vpternlogq64 (ymm11_2, ymm4_2, ymm31_2, table);
call vpternlogq64 (ymm11_3, ymm4_3, ymm31_3, table);
(* vpbroadcastq %rdi,%ymm4                         #! PC = 0x55555558039f *)
mov ymm4_0 rdi;
mov ymm4_1 rdi;
mov ymm4_2 rdi;
mov ymm4_3 rdi;
(* vpxorq %ymm4,%ymm28,%ymm28                      #! PC = 0x5555555803a5 *)
xor ymm28_0@uint64 ymm28_0 ymm4_0;
xor ymm28_1@uint64 ymm28_1 ymm4_1;
xor ymm28_2@uint64 ymm28_2 ymm4_2;
xor ymm28_3@uint64 ymm28_3 ymm4_3;
(* vpxorq %ymm23,%ymm13,%ymm13                     #! PC = 0x5555555803ab *)
xor ymm13_0@uint64 ymm13_0 ymm23_0;
xor ymm13_1@uint64 ymm13_1 ymm23_1;
xor ymm13_2@uint64 ymm13_2 ymm23_2;
xor ymm13_3@uint64 ymm13_3 ymm23_3;
(* vpxorq %ymm24,%ymm26,%ymm4                      #! PC = 0x5555555803b1 *)
xor ymm4_0@uint64 ymm26_0 ymm24_0;
xor ymm4_1@uint64 ymm26_1 ymm24_1;
xor ymm4_2@uint64 ymm26_2 ymm24_2;
xor ymm4_3@uint64 ymm26_3 ymm24_3;
(* vprolq $0x1c,%ymm4,%ymm4                        #! PC = 0x5555555803b7 *)
rol ymm4_0 ymm4_0 0x1c;
rol ymm4_1 ymm4_1 0x1c;
rol ymm4_2 ymm4_2 0x1c;
rol ymm4_3 ymm4_3 0x1c;
(* vprolq $0x14,%ymm13,%ymm13                      #! PC = 0x5555555803be *)
rol ymm13_0 ymm13_0 0x14;
rol ymm13_1 ymm13_1 0x14;
rol ymm13_2 ymm13_2 0x14;
rol ymm13_3 ymm13_3 0x14;
(* vpxorq %ymm29,%ymm12,%ymm12                     #! PC = 0x5555555803c5 *)
xor ymm12_0@uint64 ymm12_0 ymm29_0;
xor ymm12_1@uint64 ymm12_1 ymm29_1;
xor ymm12_2@uint64 ymm12_2 ymm29_2;
xor ymm12_3@uint64 ymm12_3 ymm29_3;
(* vpxorq %ymm30,%ymm19,%ymm19                     #! PC = 0x5555555803cb *)
xor ymm19_0@uint64 ymm19_0 ymm30_0;
xor ymm19_1@uint64 ymm19_1 ymm30_1;
xor ymm19_2@uint64 ymm19_2 ymm30_2;
xor ymm19_3@uint64 ymm19_3 ymm30_3;
(* vpxorq %ymm25,%ymm16,%ymm16                     #! PC = 0x5555555803d1 *)
xor ymm16_0@uint64 ymm16_0 ymm25_0;
xor ymm16_1@uint64 ymm16_1 ymm25_1;
xor ymm16_2@uint64 ymm16_2 ymm25_2;
xor ymm16_3@uint64 ymm16_3 ymm25_3;
(* vpxorq %ymm30,%ymm18,%ymm18                     #! PC = 0x5555555803d7 *)
xor ymm18_0@uint64 ymm18_0 ymm30_0;
xor ymm18_1@uint64 ymm18_1 ymm30_1;
xor ymm18_2@uint64 ymm18_2 ymm30_2;
xor ymm18_3@uint64 ymm18_3 ymm30_3;
(* vpxorq %ymm25,%ymm3,%ymm3                       #! PC = 0x5555555803dd *)
xor ymm3_0@uint64 ymm3_0 ymm25_0;
xor ymm3_1@uint64 ymm3_1 ymm25_1;
xor ymm3_2@uint64 ymm3_2 ymm25_2;
xor ymm3_3@uint64 ymm3_3 ymm25_3;
(* vprolq $0x1,%ymm18,%ymm18                       #! PC = 0x5555555803e3 *)
rol ymm18_0 ymm18_0 0x1;
rol ymm18_1 ymm18_1 0x1;
rol ymm18_2 ymm18_2 0x1;
rol ymm18_3 ymm18_3 0x1;
(* vprolq $0x6,%ymm3,%ymm3                         #! PC = 0x5555555803ea *)
rol ymm3_0 ymm3_0 0x6;
rol ymm3_1 ymm3_1 0x6;
rol ymm3_2 ymm3_2 0x6;
rol ymm3_3 ymm3_3 0x6;
(* vprolq $0x3,%ymm12,%ymm12                       #! PC = 0x5555555803f1 *)
rol ymm12_0 ymm12_0 0x3;
rol ymm12_1 ymm12_1 0x3;
rol ymm12_2 ymm12_2 0x3;
rol ymm12_3 ymm12_3 0x3;
(* vprorq $0x13,%ymm19,%ymm19                      #! PC = 0x5555555803f8 *)
ror ymm19_0 ymm19_0 0x13;
ror ymm19_1 ymm19_1 0x13;
ror ymm19_2 ymm19_2 0x13;
ror ymm19_3 ymm19_3 0x13;
(* vprorq $0x3,%ymm16,%ymm16                       #! PC = 0x5555555803ff *)
ror ymm16_0 ymm16_0 0x3;
ror ymm16_1 ymm16_1 0x3;
ror ymm16_2 ymm16_2 0x3;
ror ymm16_3 ymm16_3 0x3;
(* vpxorq %ymm29,%ymm27,%ymm27                     #! PC = 0x555555580406 *)
xor ymm27_0@uint64 ymm27_0 ymm29_0;
xor ymm27_1@uint64 ymm27_1 ymm29_1;
xor ymm27_2@uint64 ymm27_2 ymm29_2;
xor ymm27_3@uint64 ymm27_3 ymm29_3;
(* vpxorq %ymm24,%ymm1,%ymm1                       #! PC = 0x55555558040c *)
xor ymm1_0@uint64 ymm1_0 ymm24_0;
xor ymm1_1@uint64 ymm1_1 ymm24_1;
xor ymm1_2@uint64 ymm1_2 ymm24_2;
xor ymm1_3@uint64 ymm1_3 ymm24_3;
(* vpxorq %ymm23,%ymm2,%ymm2                       #! PC = 0x555555580412 *)
xor ymm2_0@uint64 ymm2_0 ymm23_0;
xor ymm2_1@uint64 ymm2_1 ymm23_1;
xor ymm2_2@uint64 ymm2_2 ymm23_2;
xor ymm2_3@uint64 ymm2_3 ymm23_3;
(* vpxorq %ymm29,%ymm20,%ymm20                     #! PC = 0x555555580418 *)
xor ymm20_0@uint64 ymm20_0 ymm29_0;
xor ymm20_1@uint64 ymm20_1 ymm29_1;
xor ymm20_2@uint64 ymm20_2 ymm29_2;
xor ymm20_3@uint64 ymm20_3 ymm29_3;
(* vpxorq %ymm23,%ymm9,%ymm9                       #! PC = 0x55555558041e *)
xor ymm9_0@uint64 ymm9_0 ymm23_0;
xor ymm9_1@uint64 ymm9_1 ymm23_1;
xor ymm9_2@uint64 ymm9_2 ymm23_2;
xor ymm9_3@uint64 ymm9_3 ymm23_3;
(* vprorq $0x1c,%ymm20,%ymm20                      #! PC = 0x555555580424 *)
ror ymm20_0 ymm20_0 0x1c;
ror ymm20_1 ymm20_1 0x1c;
ror ymm20_2 ymm20_2 0x1c;
ror ymm20_3 ymm20_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x55555558042b *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm27,%ymm27                      #! PC = 0x555555580432 *)
rol ymm27_0 ymm27_0 0x12;
rol ymm27_1 ymm27_1 0x12;
rol ymm27_2 ymm27_2 0x12;
rol ymm27_3 ymm27_3 0x12;
(* vprolq $0x19,%ymm1,%ymm1                        #! PC = 0x555555580439 *)
rol ymm1_0 ymm1_0 0x19;
rol ymm1_1 ymm1_1 0x19;
rol ymm1_2 ymm1_2 0x19;
rol ymm1_3 ymm1_3 0x19;
(* vprolq $0x8,%ymm2,%ymm2                         #! PC = 0x555555580440 *)
rol ymm2_0 ymm2_0 0x8;
rol ymm2_1 ymm2_1 0x8;
rol ymm2_2 ymm2_2 0x8;
rol ymm2_3 ymm2_3 0x8;
(* vpxorq %ymm30,%ymm5,%ymm5                       #! PC = 0x555555580447 *)
xor ymm5_0@uint64 ymm5_0 ymm30_0;
xor ymm5_1@uint64 ymm5_1 ymm30_1;
xor ymm5_2@uint64 ymm5_2 ymm30_2;
xor ymm5_3@uint64 ymm5_3 ymm30_3;
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x55555558044d *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpxorq %ymm24,%ymm0,%ymm0                       #! PC = 0x555555580453 *)
xor ymm0_0@uint64 ymm0_0 ymm24_0;
xor ymm0_1@uint64 ymm0_1 ymm24_1;
xor ymm0_2@uint64 ymm0_2 ymm24_2;
xor ymm0_3@uint64 ymm0_3 ymm24_3;
(* vprolq $0xa,%ymm5,%ymm5                         #! PC = 0x555555580459 *)
rol ymm5_0 ymm5_0 0xa;
rol ymm5_1 ymm5_1 0xa;
rol ymm5_2 ymm5_2 0xa;
rol ymm5_3 ymm5_3 0xa;
(* vprolq $0xf,%ymm8,%ymm8                         #! PC = 0x555555580460 *)
rol ymm8_0 ymm8_0 0xf;
rol ymm8_1 ymm8_1 0xf;
rol ymm8_2 ymm8_2 0xf;
rol ymm8_3 ymm8_3 0xf;
(* vprorq $0x8,%ymm0,%ymm0                         #! PC = 0x555555580467 *)
ror ymm0_0 ymm0_0 0x8;
ror ymm0_1 ymm0_1 0x8;
ror ymm0_2 ymm0_2 0x8;
ror ymm0_3 ymm0_3 0x8;
(* vmovdqa64 %ymm4,%ymm26                          #! PC = 0x55555558046e *)
mov ymm26_0 ymm4_0;
mov ymm26_1 ymm4_1;
mov ymm26_2 ymm4_2;
mov ymm26_3 ymm4_3;
(* vmovdqa64 %ymm13,%ymm31                         #! PC = 0x555555580474 *)
mov ymm31_0 ymm13_0;
mov ymm31_1 ymm13_1;
mov ymm31_2 ymm13_2;
mov ymm31_3 ymm13_3;
(* vpternlogq $0xd2,%ymm12,%ymm13,%ymm26           #! PC = 0x55555558047a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm13_0, ymm12_0, table);
call vpternlogq64 (ymm26_1, ymm13_1, ymm12_1, table);
call vpternlogq64 (ymm26_2, ymm13_2, ymm12_2, table);
call vpternlogq64 (ymm26_3, ymm13_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm12,%ymm31           #! PC = 0x555555580481 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm12_0, ymm19_0, table);
call vpternlogq64 (ymm31_1, ymm12_1, ymm19_1, table);
call vpternlogq64 (ymm31_2, ymm12_2, ymm19_2, table);
call vpternlogq64 (ymm31_3, ymm12_3, ymm19_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm19,%ymm12           #! PC = 0x555555580488 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm19_0, ymm16_0, table);
call vpternlogq64 (ymm12_1, ymm19_1, ymm16_1, table);
call vpternlogq64 (ymm12_2, ymm19_2, ymm16_2, table);
call vpternlogq64 (ymm12_3, ymm19_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm16,%ymm19            #! PC = 0x55555558048f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm16_0, ymm4_0, table);
call vpternlogq64 (ymm19_1, ymm16_1, ymm4_1, table);
call vpternlogq64 (ymm19_2, ymm16_2, ymm4_2, table);
call vpternlogq64 (ymm19_3, ymm16_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm4,%ymm16            #! PC = 0x555555580496 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm4_0, ymm13_0, table);
call vpternlogq64 (ymm16_1, ymm4_1, ymm13_1, table);
call vpternlogq64 (ymm16_2, ymm4_2, ymm13_2, table);
call vpternlogq64 (ymm16_3, ymm4_3, ymm13_3, table);
(* vmovdqa64 %ymm18,%ymm13                         #! PC = 0x55555558049d *)
mov ymm13_0 ymm18_0;
mov ymm13_1 ymm18_1;
mov ymm13_2 ymm18_2;
mov ymm13_3 ymm18_3;
(* vmovdqa %ymm3,%ymm4                             #! PC = 0x5555555804a3 *)
mov ymm4_0 ymm3_0;
mov ymm4_1 ymm3_1;
mov ymm4_2 ymm3_2;
mov ymm4_3 ymm3_3;
(* vpternlogq $0xd2,%ymm1,%ymm3,%ymm13             #! PC = 0x5555555804a7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm3_0, ymm1_0, table);
call vpternlogq64 (ymm13_1, ymm3_1, ymm1_1, table);
call vpternlogq64 (ymm13_2, ymm3_2, ymm1_2, table);
call vpternlogq64 (ymm13_3, ymm3_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm1,%ymm4              #! PC = 0x5555555804ae *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm1_0, ymm2_0, table);
call vpternlogq64 (ymm4_1, ymm1_1, ymm2_1, table);
call vpternlogq64 (ymm4_2, ymm1_2, ymm2_2, table);
call vpternlogq64 (ymm4_3, ymm1_3, ymm2_3, table);
(* vpxorq %ymm25,%ymm21,%ymm21                     #! PC = 0x5555555804b5 *)
xor ymm21_0@uint64 ymm21_0 ymm25_0;
xor ymm21_1@uint64 ymm21_1 ymm25_1;
xor ymm21_2@uint64 ymm21_2 ymm25_2;
xor ymm21_3@uint64 ymm21_3 ymm25_3;
(* vpternlogq $0xd2,%ymm27,%ymm2,%ymm1             #! PC = 0x5555555804bb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm2_0, ymm27_0, table);
call vpternlogq64 (ymm1_1, ymm2_1, ymm27_1, table);
call vpternlogq64 (ymm1_2, ymm2_2, ymm27_2, table);
call vpternlogq64 (ymm1_3, ymm2_3, ymm27_3, table);
(* vpxorq %ymm24,%ymm22,%ymm22                     #! PC = 0x5555555804c2 *)
xor ymm22_0@uint64 ymm22_0 ymm24_0;
xor ymm22_1@uint64 ymm22_1 ymm24_1;
xor ymm22_2@uint64 ymm22_2 ymm24_2;
xor ymm22_3@uint64 ymm22_3 ymm24_3;
(* vpternlogq $0xd2,%ymm18,%ymm27,%ymm2            #! PC = 0x5555555804c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm27_0, ymm18_0, table);
call vpternlogq64 (ymm2_1, ymm27_1, ymm18_1, table);
call vpternlogq64 (ymm2_2, ymm27_2, ymm18_2, table);
call vpternlogq64 (ymm2_3, ymm27_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm18,%ymm27            #! PC = 0x5555555804cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm18_0, ymm3_0, table);
call vpternlogq64 (ymm27_1, ymm18_1, ymm3_1, table);
call vpternlogq64 (ymm27_2, ymm18_2, ymm3_2, table);
call vpternlogq64 (ymm27_3, ymm18_3, ymm3_3, table);
(* vmovdqa %ymm9,%ymm3                             #! PC = 0x5555555804d6 *)
mov ymm3_0 ymm9_0;
mov ymm3_1 ymm9_1;
mov ymm3_2 ymm9_2;
mov ymm3_3 ymm9_3;
(* vmovdqa64 %ymm20,%ymm18                         #! PC = 0x5555555804da *)
mov ymm18_0 ymm20_0;
mov ymm18_1 ymm20_1;
mov ymm18_2 ymm20_2;
mov ymm18_3 ymm20_3;
(* vprorq $0x2,%ymm21,%ymm21                       #! PC = 0x5555555804e0 *)
ror ymm21_0 ymm21_0 0x2;
ror ymm21_1 ymm21_1 0x2;
ror ymm21_2 ymm21_2 0x2;
ror ymm21_3 ymm21_3 0x2;
(* vprorq $0x9,%ymm22,%ymm22                       #! PC = 0x5555555804e7 *)
ror ymm22_0 ymm22_0 0x9;
ror ymm22_1 ymm22_1 0x9;
ror ymm22_2 ymm22_2 0x9;
ror ymm22_3 ymm22_3 0x9;
(* vpternlogq $0xd2,%ymm5,%ymm20,%ymm3             #! PC = 0x5555555804ee *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm20_0, ymm5_0, table);
call vpternlogq64 (ymm3_1, ymm20_1, ymm5_1, table);
call vpternlogq64 (ymm3_2, ymm20_2, ymm5_2, table);
call vpternlogq64 (ymm3_3, ymm20_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm5,%ymm18             #! PC = 0x5555555804f5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm5_0, ymm8_0, table);
call vpternlogq64 (ymm18_1, ymm5_1, ymm8_1, table);
call vpternlogq64 (ymm18_2, ymm5_2, ymm8_2, table);
call vpternlogq64 (ymm18_3, ymm5_3, ymm8_3, table);
(* vpxorq %ymm29,%ymm7,%ymm7                       #! PC = 0x5555555804fc *)
xor ymm7_0@uint64 ymm7_0 ymm29_0;
xor ymm7_1@uint64 ymm7_1 ymm29_1;
xor ymm7_2@uint64 ymm7_2 ymm29_2;
xor ymm7_3@uint64 ymm7_3 ymm29_3;
(* vpternlogq $0xd2,%ymm0,%ymm8,%ymm5              #! PC = 0x555555580502 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm8_0, ymm0_0, table);
call vpternlogq64 (ymm5_1, ymm8_1, ymm0_1, table);
call vpternlogq64 (ymm5_2, ymm8_2, ymm0_2, table);
call vpternlogq64 (ymm5_3, ymm8_3, ymm0_3, table);
(* vpxorq %ymm23,%ymm6,%ymm6                       #! PC = 0x555555580509 *)
xor ymm6_0@uint64 ymm6_0 ymm23_0;
xor ymm6_1@uint64 ymm6_1 ymm23_1;
xor ymm6_2@uint64 ymm6_2 ymm23_2;
xor ymm6_3@uint64 ymm6_3 ymm23_3;
(* vpternlogq $0xd2,%ymm9,%ymm0,%ymm8              #! PC = 0x55555558050f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm0_0, ymm9_0, table);
call vpternlogq64 (ymm8_1, ymm0_1, ymm9_1, table);
call vpternlogq64 (ymm8_2, ymm0_2, ymm9_2, table);
call vpternlogq64 (ymm8_3, ymm0_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm9,%ymm0             #! PC = 0x555555580516 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm9_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm9_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm9_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm9_3, ymm20_3, table);
(* vpxorq %ymm30,%ymm15,%ymm9                      #! PC = 0x55555558051d *)
xor ymm9_0@uint64 ymm15_0 ymm30_0;
xor ymm9_1@uint64 ymm15_1 ymm30_1;
xor ymm9_2@uint64 ymm15_2 ymm30_2;
xor ymm9_3@uint64 ymm15_3 ymm30_3;
(* vprorq $0x17,%ymm7,%ymm7                        #! PC = 0x555555580523 *)
ror ymm7_0 ymm7_0 0x17;
ror ymm7_1 ymm7_1 0x17;
ror ymm7_2 ymm7_2 0x17;
ror ymm7_3 ymm7_3 0x17;
(* vprolq $0x2,%ymm9,%ymm9                         #! PC = 0x55555558052a *)
rol ymm9_0 ymm9_0 0x2;
rol ymm9_1 ymm9_1 0x2;
rol ymm9_2 ymm9_2 0x2;
rol ymm9_3 ymm9_3 0x2;
(* vprorq $0x19,%ymm6,%ymm6                        #! PC = 0x555555580531 *)
ror ymm6_0 ymm6_0 0x19;
ror ymm6_1 ymm6_1 0x19;
ror ymm6_2 ymm6_2 0x19;
ror ymm6_3 ymm6_3 0x19;
(* vmovdqa64 %ymm21,%ymm23                         #! PC = 0x555555580538 *)
mov ymm23_0 ymm21_0;
mov ymm23_1 ymm21_1;
mov ymm23_2 ymm21_2;
mov ymm23_3 ymm21_3;
(* vmovdqa64 %ymm22,%ymm24                         #! PC = 0x55555558053e *)
mov ymm24_0 ymm22_0;
mov ymm24_1 ymm22_1;
mov ymm24_2 ymm22_2;
mov ymm24_3 ymm22_3;
(* vmovdqa %ymm12,%ymm15                           #! PC = 0x555555580544 *)
mov ymm15_0 ymm12_0;
mov ymm15_1 ymm12_1;
mov ymm15_2 ymm12_2;
mov ymm15_3 ymm12_3;
(* vmovdqa64 %ymm27,%ymm25                         #! PC = 0x555555580549 *)
mov ymm25_0 ymm27_0;
mov ymm25_1 ymm27_1;
mov ymm25_2 ymm27_2;
mov ymm25_3 ymm27_3;
(* vpternlogq $0x96,%ymm11,%ymm16,%ymm25           #! PC = 0x55555558054f *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm16_0, ymm11_0, table);
call vpternlogq64 (ymm25_1, ymm16_1, ymm11_1, table);
call vpternlogq64 (ymm25_2, ymm16_2, ymm11_2, table);
call vpternlogq64 (ymm25_3, ymm16_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm6,%ymm24             #! PC = 0x555555580556 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm6_0, ymm7_0, table);
call vpternlogq64 (ymm24_1, ymm6_1, ymm7_1, table);
call vpternlogq64 (ymm24_2, ymm6_2, ymm7_2, table);
call vpternlogq64 (ymm24_3, ymm6_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm22,%ymm23            #! PC = 0x55555558055d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm22_0, ymm6_0, table);
call vpternlogq64 (ymm23_1, ymm22_1, ymm6_1, table);
call vpternlogq64 (ymm23_2, ymm22_2, ymm6_2, table);
call vpternlogq64 (ymm23_3, ymm22_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm7,%ymm6              #! PC = 0x555555580564 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm7_0, ymm9_0, table);
call vpternlogq64 (ymm6_1, ymm7_1, ymm9_1, table);
call vpternlogq64 (ymm6_2, ymm7_2, ymm9_2, table);
call vpternlogq64 (ymm6_3, ymm7_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm6,%ymm14,%ymm15            #! PC = 0x55555558056b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm14_0, ymm6_0, table);
call vpternlogq64 (ymm15_1, ymm14_1, ymm6_1, table);
call vpternlogq64 (ymm15_2, ymm14_2, ymm6_2, table);
call vpternlogq64 (ymm15_3, ymm14_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm1,%ymm5,%ymm15             #! PC = 0x555555580572 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm5_0, ymm1_0, table);
call vpternlogq64 (ymm15_1, ymm5_1, ymm1_1, table);
call vpternlogq64 (ymm15_2, ymm5_2, ymm1_2, table);
call vpternlogq64 (ymm15_3, ymm5_3, ymm1_3, table);
(* vprolq $0x1,%ymm15,%ymm29                       #! PC = 0x555555580579 *)
rol ymm29_0 ymm15_0 0x1;
rol ymm29_1 ymm15_1 0x1;
rol ymm29_2 ymm15_2 0x1;
rol ymm29_3 ymm15_3 0x1;
(* vpternlogq $0xd2,%ymm21,%ymm9,%ymm7             #! PC = 0x555555580580 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm9_0, ymm21_0, table);
call vpternlogq64 (ymm7_1, ymm9_1, ymm21_1, table);
call vpternlogq64 (ymm7_2, ymm9_2, ymm21_2, table);
call vpternlogq64 (ymm7_3, ymm9_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm21,%ymm9            #! PC = 0x555555580587 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm21_0, ymm22_0, table);
call vpternlogq64 (ymm9_1, ymm21_1, ymm22_1, table);
call vpternlogq64 (ymm9_2, ymm21_2, ymm22_2, table);
call vpternlogq64 (ymm9_3, ymm21_3, ymm22_3, table);
(* vmovdqa64 %ymm7,%ymm21                          #! PC = 0x55555558058e *)
mov ymm21_0 ymm7_0;
mov ymm21_1 ymm7_1;
mov ymm21_2 ymm7_2;
mov ymm21_3 ymm7_3;
(* vpternlogq $0x96,%ymm2,%ymm8,%ymm21             #! PC = 0x555555580594 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm21_0, ymm8_0, ymm2_0, table);
call vpternlogq64 (ymm21_1, ymm8_1, ymm2_1, table);
call vpternlogq64 (ymm21_2, ymm8_2, ymm2_2, table);
call vpternlogq64 (ymm21_3, ymm8_3, ymm2_3, table);
(* vpternlogq $0x96,%ymm10,%ymm19,%ymm21           #! PC = 0x55555558059b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm21_0, ymm19_0, ymm10_0, table);
call vpternlogq64 (ymm21_1, ymm19_1, ymm10_1, table);
call vpternlogq64 (ymm21_2, ymm19_2, ymm10_2, table);
call vpternlogq64 (ymm21_3, ymm19_3, ymm10_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555805a2 *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm21,%ymm29                       #! PC = 0x5555555805ad *)
rol ymm29_0 ymm21_0 0x1;
rol ymm29_1 ymm21_1 0x1;
rol ymm29_2 ymm21_2 0x1;
rol ymm29_3 ymm21_3 0x1;
(* vpternlogq $0x96,%ymm0,%ymm9,%ymm25             #! PC = 0x5555555805b4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm9_0, ymm0_0, table);
call vpternlogq64 (ymm25_1, ymm9_1, ymm0_1, table);
call vpternlogq64 (ymm25_2, ymm9_2, ymm0_2, table);
call vpternlogq64 (ymm25_3, ymm9_3, ymm0_3, table);
(* vmovdqa64 %ymm28,%ymm22                         #! PC = 0x5555555805bb *)
mov ymm22_0 ymm28_0;
mov ymm22_1 ymm28_1;
mov ymm22_2 ymm28_2;
mov ymm22_3 ymm28_3;
(* vpternlogq $0x96,%ymm3,%ymm23,%ymm22            #! PC = 0x5555555805c1 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm23_0, ymm3_0, table);
call vpternlogq64 (ymm22_1, ymm23_1, ymm3_1, table);
call vpternlogq64 (ymm22_2, ymm23_2, ymm3_2, table);
call vpternlogq64 (ymm22_3, ymm23_3, ymm3_3, table);
(* vpternlogq $0x96,%ymm26,%ymm13,%ymm22           #! PC = 0x5555555805c8 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm13_0, ymm26_0, table);
call vpternlogq64 (ymm22_1, ymm13_1, ymm26_1, table);
call vpternlogq64 (ymm22_2, ymm13_2, ymm26_2, table);
call vpternlogq64 (ymm22_3, ymm13_3, ymm26_3, table);
(* vmovdqa64 %ymm18,%ymm20                         #! PC = 0x5555555805cf *)
mov ymm20_0 ymm18_0;
mov ymm20_1 ymm18_1;
mov ymm20_2 ymm18_2;
mov ymm20_3 ymm18_3;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555805d5 *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm25,%ymm29                       #! PC = 0x5555555805e0 *)
rol ymm29_0 ymm25_0 0x1;
rol ymm29_1 ymm25_1 0x1;
rol ymm29_2 ymm25_2 0x1;
rol ymm29_3 ymm25_3 0x1;
(* vpternlogq $0x96,%ymm31,%ymm4,%ymm20            #! PC = 0x5555555805e7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm4_0, ymm31_0, table);
call vpternlogq64 (ymm20_1, ymm4_1, ymm31_1, table);
call vpternlogq64 (ymm20_2, ymm4_2, ymm31_2, table);
call vpternlogq64 (ymm20_3, ymm4_3, ymm31_3, table);
(* vpternlogq $0x96,%ymm24,%ymm17,%ymm20           #! PC = 0x5555555805ee *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm17_0, ymm24_0, table);
call vpternlogq64 (ymm20_1, ymm17_1, ymm24_1, table);
call vpternlogq64 (ymm20_2, ymm17_2, ymm24_2, table);
call vpternlogq64 (ymm20_3, ymm17_3, ymm24_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x5555555805f5 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0xf42b194647cad497; PC = 0x5555555805fc *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* mov    $0x8000808b,%esi                         #! PC = 0x555555580607 *)
mov rsi 0x8000808b@uint64;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x55555558060c *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580617 *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x88(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd960; Value = 0x4ae01b93d1917712; PC = 0x55555558061e *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd960;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd968;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd970;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd978;
(* vpxor  0x48(%rsp),%ymm15,%ymm15                 #! EA = L0x7fffffffd920; Value = 0x522aa04c4a744efd; PC = 0x555555580629 *)
xor ymm15_0@uint64 ymm15_0 L0x7fffffffd920;
xor ymm15_1@uint64 ymm15_1 L0x7fffffffd928;
xor ymm15_2@uint64 ymm15_2 L0x7fffffffd930;
xor ymm15_3@uint64 ymm15_3 L0x7fffffffd938;
(* vpxorq %ymm22,%ymm31,%ymm31                     #! PC = 0x55555558062f *)
xor ymm31_0@uint64 ymm31_0 ymm22_0;
xor ymm31_1@uint64 ymm31_1 ymm22_1;
xor ymm31_2@uint64 ymm31_2 ymm22_2;
xor ymm31_3@uint64 ymm31_3 ymm22_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580635 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm20,%ymm1,%ymm1                       #! PC = 0x55555558063c *)
xor ymm1_0@uint64 ymm1_0 ymm20_0;
xor ymm1_1@uint64 ymm1_1 ymm20_1;
xor ymm1_2@uint64 ymm1_2 ymm20_2;
xor ymm1_3@uint64 ymm1_3 ymm20_3;
(* vpxorq %ymm21,%ymm29,%ymm29                     #! PC = 0x555555580642 *)
xor ymm29_0@uint64 ymm29_0 ymm21_0;
xor ymm29_1@uint64 ymm29_1 ymm21_1;
xor ymm29_2@uint64 ymm29_2 ymm21_2;
xor ymm29_3@uint64 ymm29_3 ymm21_3;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x555555580648 *)
xor ymm8_0@uint64 ymm8_0 ymm15_0;
xor ymm8_1@uint64 ymm8_1 ymm15_1;
xor ymm8_2@uint64 ymm8_2 ymm15_2;
xor ymm8_3@uint64 ymm8_3 ymm15_3;
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x55555558064d *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vpxorq %ymm25,%ymm30,%ymm30                     #! PC = 0x555555580653 *)
xor ymm30_0@uint64 ymm30_0 ymm25_0;
xor ymm30_1@uint64 ymm30_1 ymm25_1;
xor ymm30_2@uint64 ymm30_2 ymm25_2;
xor ymm30_3@uint64 ymm30_3 ymm25_3;
(* vprorq $0x15,%ymm1,%ymm1                        #! PC = 0x555555580659 *)
ror ymm1_0 ymm1_0 0x15;
ror ymm1_1 ymm1_1 0x15;
ror ymm1_2 ymm1_2 0x15;
ror ymm1_3 ymm1_3 0x15;
(* vprolq $0x15,%ymm8,%ymm8                        #! PC = 0x555555580660 *)
rol ymm8_0 ymm8_0 0x15;
rol ymm8_1 ymm8_1 0x15;
rol ymm8_2 ymm8_2 0x15;
rol ymm8_3 ymm8_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x555555580667 *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555558066e *)
xor ymm10_0@uint64 ymm10_0 ymm15_0;
xor ymm10_1@uint64 ymm10_1 ymm15_1;
xor ymm10_2@uint64 ymm10_2 ymm15_2;
xor ymm10_3@uint64 ymm10_3 ymm15_3;
(* vpxorq %ymm29,%ymm16,%ymm16                     #! PC = 0x555555580673 *)
xor ymm16_0@uint64 ymm16_0 ymm29_0;
xor ymm16_1@uint64 ymm16_1 ymm29_1;
xor ymm16_2@uint64 ymm16_2 ymm29_2;
xor ymm16_3@uint64 ymm16_3 ymm29_3;
(* vprolq $0x1c,%ymm10,%ymm10                      #! PC = 0x555555580679 *)
rol ymm10_0 ymm10_0 0x1c;
rol ymm10_1 ymm10_1 0x1c;
rol ymm10_2 ymm10_2 0x1c;
rol ymm10_3 ymm10_3 0x1c;
(* vprolq $0x14,%ymm16,%ymm16                      #! PC = 0x555555580680 *)
rol ymm16_0 ymm16_0 0x14;
rol ymm16_1 ymm16_1 0x14;
rol ymm16_2 ymm16_2 0x14;
rol ymm16_3 ymm16_3 0x14;
(* vpxorq %ymm30,%ymm13,%ymm13                     #! PC = 0x555555580687 *)
xor ymm13_0@uint64 ymm13_0 ymm30_0;
xor ymm13_1@uint64 ymm13_1 ymm30_1;
xor ymm13_2@uint64 ymm13_2 ymm30_2;
xor ymm13_3@uint64 ymm13_3 ymm30_3;
(* vpxorq %ymm22,%ymm18,%ymm18                     #! PC = 0x55555558068d *)
xor ymm18_0@uint64 ymm18_0 ymm22_0;
xor ymm18_1@uint64 ymm18_1 ymm22_1;
xor ymm18_2@uint64 ymm18_2 ymm22_2;
xor ymm18_3@uint64 ymm18_3 ymm22_3;
(* vpxorq %ymm20,%ymm6,%ymm6                       #! PC = 0x555555580693 *)
xor ymm6_0@uint64 ymm6_0 ymm20_0;
xor ymm6_1@uint64 ymm6_1 ymm20_1;
xor ymm6_2@uint64 ymm6_2 ymm20_2;
xor ymm6_3@uint64 ymm6_3 ymm20_3;
(* vpxorq %ymm22,%ymm17,%ymm17                     #! PC = 0x555555580699 *)
xor ymm17_0@uint64 ymm17_0 ymm22_0;
xor ymm17_1@uint64 ymm17_1 ymm22_1;
xor ymm17_2@uint64 ymm17_2 ymm22_2;
xor ymm17_3@uint64 ymm17_3 ymm22_3;
(* vpxorq %ymm20,%ymm12,%ymm12                     #! PC = 0x55555558069f *)
xor ymm12_0@uint64 ymm12_0 ymm20_0;
xor ymm12_1@uint64 ymm12_1 ymm20_1;
xor ymm12_2@uint64 ymm12_2 ymm20_2;
xor ymm12_3@uint64 ymm12_3 ymm20_3;
(* vprolq $0x1,%ymm17,%ymm17                       #! PC = 0x5555555806a5 *)
rol ymm17_0 ymm17_0 0x1;
rol ymm17_1 ymm17_1 0x1;
rol ymm17_2 ymm17_2 0x1;
rol ymm17_3 ymm17_3 0x1;
(* vprolq $0x6,%ymm12,%ymm12                       #! PC = 0x5555555806ac *)
rol ymm12_0 ymm12_0 0x6;
rol ymm12_1 ymm12_1 0x6;
rol ymm12_2 ymm12_2 0x6;
rol ymm12_3 ymm12_3 0x6;
(* vprolq $0x3,%ymm13,%ymm13                       #! PC = 0x5555555806b3 *)
rol ymm13_0 ymm13_0 0x3;
rol ymm13_1 ymm13_1 0x3;
rol ymm13_2 ymm13_2 0x3;
rol ymm13_3 ymm13_3 0x3;
(* vprorq $0x13,%ymm18,%ymm18                      #! PC = 0x5555555806ba *)
ror ymm18_0 ymm18_0 0x13;
ror ymm18_1 ymm18_1 0x13;
ror ymm18_2 ymm18_2 0x13;
ror ymm18_3 ymm18_3 0x13;
(* vprorq $0x3,%ymm6,%ymm6                         #! PC = 0x5555555806c1 *)
ror ymm6_0 ymm6_0 0x3;
ror ymm6_1 ymm6_1 0x3;
ror ymm6_2 ymm6_2 0x3;
ror ymm6_3 ymm6_3 0x3;
(* vpxorq %ymm30,%ymm23,%ymm23                     #! PC = 0x5555555806c8 *)
xor ymm23_0@uint64 ymm23_0 ymm30_0;
xor ymm23_1@uint64 ymm23_1 ymm30_1;
xor ymm23_2@uint64 ymm23_2 ymm30_2;
xor ymm23_3@uint64 ymm23_3 ymm30_3;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x5555555806ce *)
xor ymm2_0@uint64 ymm2_0 ymm15_0;
xor ymm2_1@uint64 ymm2_1 ymm15_1;
xor ymm2_2@uint64 ymm2_2 ymm15_2;
xor ymm2_3@uint64 ymm2_3 ymm15_3;
(* vpxorq %ymm29,%ymm0,%ymm0                       #! PC = 0x5555555806d3 *)
xor ymm0_0@uint64 ymm0_0 ymm29_0;
xor ymm0_1@uint64 ymm0_1 ymm29_1;
xor ymm0_2@uint64 ymm0_2 ymm29_2;
xor ymm0_3@uint64 ymm0_3 ymm29_3;
(* vpxorq %ymm30,%ymm26,%ymm26                     #! PC = 0x5555555806d9 *)
xor ymm26_0@uint64 ymm26_0 ymm30_0;
xor ymm26_1@uint64 ymm26_1 ymm30_1;
xor ymm26_2@uint64 ymm26_2 ymm30_2;
xor ymm26_3@uint64 ymm26_3 ymm30_3;
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x5555555806df *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vprorq $0x1c,%ymm26,%ymm26                      #! PC = 0x5555555806e5 *)
ror ymm26_0 ymm26_0 0x1c;
ror ymm26_1 ymm26_1 0x1c;
ror ymm26_2 ymm26_2 0x1c;
ror ymm26_3 ymm26_3 0x1c;
(* vprolq $0x1b,%ymm11,%ymm11                      #! PC = 0x5555555806ec *)
rol ymm11_0 ymm11_0 0x1b;
rol ymm11_1 ymm11_1 0x1b;
rol ymm11_2 ymm11_2 0x1b;
rol ymm11_3 ymm11_3 0x1b;
(* vprolq $0x12,%ymm23,%ymm23                      #! PC = 0x5555555806f3 *)
rol ymm23_0 ymm23_0 0x12;
rol ymm23_1 ymm23_1 0x12;
rol ymm23_2 ymm23_2 0x12;
rol ymm23_3 ymm23_3 0x12;
(* vprolq $0x19,%ymm2,%ymm2                        #! PC = 0x5555555806fa *)
rol ymm2_0 ymm2_0 0x19;
rol ymm2_1 ymm2_1 0x19;
rol ymm2_2 ymm2_2 0x19;
rol ymm2_3 ymm2_3 0x19;
(* vprolq $0x8,%ymm0,%ymm0                         #! PC = 0x555555580701 *)
rol ymm0_0 ymm0_0 0x8;
rol ymm0_1 ymm0_1 0x8;
rol ymm0_2 ymm0_2 0x8;
rol ymm0_3 ymm0_3 0x8;
(* vpxorq %ymm22,%ymm4,%ymm4                       #! PC = 0x555555580708 *)
xor ymm4_0@uint64 ymm4_0 ymm22_0;
xor ymm4_1@uint64 ymm4_1 ymm22_1;
xor ymm4_2@uint64 ymm4_2 ymm22_2;
xor ymm4_3@uint64 ymm4_3 ymm22_3;
(* vpxorq %ymm20,%ymm5,%ymm5                       #! PC = 0x55555558070e *)
xor ymm5_0@uint64 ymm5_0 ymm20_0;
xor ymm5_1@uint64 ymm5_1 ymm20_1;
xor ymm5_2@uint64 ymm5_2 ymm20_2;
xor ymm5_3@uint64 ymm5_3 ymm20_3;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x555555580714 *)
xor ymm7_0@uint64 ymm7_0 ymm15_0;
xor ymm7_1@uint64 ymm7_1 ymm15_1;
xor ymm7_2@uint64 ymm7_2 ymm15_2;
xor ymm7_3@uint64 ymm7_3 ymm15_3;
(* vpxorq %ymm28,%ymm30,%ymm28                     #! PC = 0x555555580719 *)
xor ymm28_0@uint64 ymm30_0 ymm28_0;
xor ymm28_1@uint64 ymm30_1 ymm28_1;
xor ymm28_2@uint64 ymm30_2 ymm28_2;
xor ymm28_3@uint64 ymm30_3 ymm28_3;
(* vprolq $0xa,%ymm4,%ymm4                         #! PC = 0x55555558071f *)
rol ymm4_0 ymm4_0 0xa;
rol ymm4_1 ymm4_1 0xa;
rol ymm4_2 ymm4_2 0xa;
rol ymm4_3 ymm4_3 0xa;
(* vprolq $0xf,%ymm5,%ymm5                         #! PC = 0x555555580726 *)
rol ymm5_0 ymm5_0 0xf;
rol ymm5_1 ymm5_1 0xf;
rol ymm5_2 ymm5_2 0xf;
rol ymm5_3 ymm5_3 0xf;
(* vprorq $0x8,%ymm7,%ymm7                         #! PC = 0x55555558072d *)
ror ymm7_0 ymm7_0 0x8;
ror ymm7_1 ymm7_1 0x8;
ror ymm7_2 ymm7_2 0x8;
ror ymm7_3 ymm7_3 0x8;
(* vmovdqa64 %ymm28,%ymm25                         #! PC = 0x555555580734 *)
mov ymm25_0 ymm28_0;
mov ymm25_1 ymm28_1;
mov ymm25_2 ymm28_2;
mov ymm25_3 ymm28_3;
(* vmovdqa64 %ymm31,%ymm21                         #! PC = 0x55555558073a *)
mov ymm21_0 ymm31_0;
mov ymm21_1 ymm31_1;
mov ymm21_2 ymm31_2;
mov ymm21_3 ymm31_3;
(* vpternlogq $0xd2,%ymm8,%ymm1,%ymm21             #! PC = 0x555555580740 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm1_0, ymm8_0, table);
call vpternlogq64 (ymm21_1, ymm1_1, ymm8_1, table);
call vpternlogq64 (ymm21_2, ymm1_2, ymm8_2, table);
call vpternlogq64 (ymm21_3, ymm1_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm31,%ymm25            #! PC = 0x555555580747 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm31_0, ymm1_0, table);
call vpternlogq64 (ymm25_1, ymm31_1, ymm1_1, table);
call vpternlogq64 (ymm25_2, ymm31_2, ymm1_2, table);
call vpternlogq64 (ymm25_3, ymm31_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm8,%ymm1              #! PC = 0x55555558074e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm8_0, ymm9_0, table);
call vpternlogq64 (ymm1_1, ymm8_1, ymm9_1, table);
call vpternlogq64 (ymm1_2, ymm8_2, ymm9_2, table);
call vpternlogq64 (ymm1_3, ymm8_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm9,%ymm8             #! PC = 0x555555580755 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm9_0, ymm28_0, table);
call vpternlogq64 (ymm8_1, ymm9_1, ymm28_1, table);
call vpternlogq64 (ymm8_2, ymm9_2, ymm28_2, table);
call vpternlogq64 (ymm8_3, ymm9_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm28,%ymm9            #! PC = 0x55555558075c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm28_0, ymm31_0, table);
call vpternlogq64 (ymm9_1, ymm28_1, ymm31_1, table);
call vpternlogq64 (ymm9_2, ymm28_2, ymm31_2, table);
call vpternlogq64 (ymm9_3, ymm28_3, ymm31_3, table);
(* vpbroadcastq %r8,%ymm28                         #! PC = 0x555555580763 *)
mov ymm28_0 r8;
mov ymm28_1 r8;
mov ymm28_2 r8;
mov ymm28_3 r8;
(* vpxorq %ymm28,%ymm25,%ymm25                     #! PC = 0x555555580769 *)
xor ymm25_0@uint64 ymm25_0 ymm28_0;
xor ymm25_1@uint64 ymm25_1 ymm28_1;
xor ymm25_2@uint64 ymm25_2 ymm28_2;
xor ymm25_3@uint64 ymm25_3 ymm28_3;
(* vmovdqa64 %ymm16,%ymm31                         #! PC = 0x55555558076f *)
mov ymm31_0 ymm16_0;
mov ymm31_1 ymm16_1;
mov ymm31_2 ymm16_2;
mov ymm31_3 ymm16_3;
(* vmovdqa64 %ymm10,%ymm28                         #! PC = 0x555555580775 *)
mov ymm28_0 ymm10_0;
mov ymm28_1 ymm10_1;
mov ymm28_2 ymm10_2;
mov ymm28_3 ymm10_3;
(* vpternlogq $0xd2,%ymm13,%ymm16,%ymm28           #! PC = 0x55555558077b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm16_0, ymm13_0, table);
call vpternlogq64 (ymm28_1, ymm16_1, ymm13_1, table);
call vpternlogq64 (ymm28_2, ymm16_2, ymm13_2, table);
call vpternlogq64 (ymm28_3, ymm16_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm13,%ymm31           #! PC = 0x555555580782 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm13_0, ymm18_0, table);
call vpternlogq64 (ymm31_1, ymm13_1, ymm18_1, table);
call vpternlogq64 (ymm31_2, ymm13_2, ymm18_2, table);
call vpternlogq64 (ymm31_3, ymm13_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm18,%ymm13            #! PC = 0x555555580789 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm18_0, ymm6_0, table);
call vpternlogq64 (ymm13_1, ymm18_1, ymm6_1, table);
call vpternlogq64 (ymm13_2, ymm18_2, ymm6_2, table);
call vpternlogq64 (ymm13_3, ymm18_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm6,%ymm18            #! PC = 0x555555580790 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm6_0, ymm10_0, table);
call vpternlogq64 (ymm18_1, ymm6_1, ymm10_1, table);
call vpternlogq64 (ymm18_2, ymm6_2, ymm10_2, table);
call vpternlogq64 (ymm18_3, ymm6_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm10,%ymm6            #! PC = 0x555555580797 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm10_0, ymm16_0, table);
call vpternlogq64 (ymm6_1, ymm10_1, ymm16_1, table);
call vpternlogq64 (ymm6_2, ymm10_2, ymm16_2, table);
call vpternlogq64 (ymm6_3, ymm10_3, ymm16_3, table);
(* vmovdqa64 %ymm17,%ymm16                         #! PC = 0x55555558079e *)
mov ymm16_0 ymm17_0;
mov ymm16_1 ymm17_1;
mov ymm16_2 ymm17_2;
mov ymm16_3 ymm17_3;
(* vmovdqa %ymm12,%ymm10                           #! PC = 0x5555555807a4 *)
mov ymm10_0 ymm12_0;
mov ymm10_1 ymm12_1;
mov ymm10_2 ymm12_2;
mov ymm10_3 ymm12_3;
(* vpternlogq $0xd2,%ymm2,%ymm12,%ymm16            #! PC = 0x5555555807a9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm12_0, ymm2_0, table);
call vpternlogq64 (ymm16_1, ymm12_1, ymm2_1, table);
call vpternlogq64 (ymm16_2, ymm12_2, ymm2_2, table);
call vpternlogq64 (ymm16_3, ymm12_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm0,%ymm2,%ymm10             #! PC = 0x5555555807b0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm0_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm0_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm0_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm0_3, table);
(* vpxorq %ymm20,%ymm14,%ymm14                     #! PC = 0x5555555807b7 *)
xor ymm14_0@uint64 ymm14_0 ymm20_0;
xor ymm14_1@uint64 ymm14_1 ymm20_1;
xor ymm14_2@uint64 ymm14_2 ymm20_2;
xor ymm14_3@uint64 ymm14_3 ymm20_3;
(* vpternlogq $0xd2,%ymm23,%ymm0,%ymm2             #! PC = 0x5555555807bd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm0_0, ymm23_0, table);
call vpternlogq64 (ymm2_1, ymm0_1, ymm23_1, table);
call vpternlogq64 (ymm2_2, ymm0_2, ymm23_2, table);
call vpternlogq64 (ymm2_3, ymm0_3, ymm23_3, table);
(* vpxorq %ymm15,%ymm19,%ymm19                     #! PC = 0x5555555807c4 *)
xor ymm19_0@uint64 ymm19_0 ymm15_0;
xor ymm19_1@uint64 ymm19_1 ymm15_1;
xor ymm19_2@uint64 ymm19_2 ymm15_2;
xor ymm19_3@uint64 ymm19_3 ymm15_3;
(* vpternlogq $0xd2,%ymm17,%ymm23,%ymm0            #! PC = 0x5555555807ca *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm23_0, ymm17_0, table);
call vpternlogq64 (ymm0_1, ymm23_1, ymm17_1, table);
call vpternlogq64 (ymm0_2, ymm23_2, ymm17_2, table);
call vpternlogq64 (ymm0_3, ymm23_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm17,%ymm23           #! PC = 0x5555555807d1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm17_0, ymm12_0, table);
call vpternlogq64 (ymm23_1, ymm17_1, ymm12_1, table);
call vpternlogq64 (ymm23_2, ymm17_2, ymm12_2, table);
call vpternlogq64 (ymm23_3, ymm17_3, ymm12_3, table);
(* vmovdqa %ymm11,%ymm12                           #! PC = 0x5555555807d8 *)
mov ymm12_0 ymm11_0;
mov ymm12_1 ymm11_1;
mov ymm12_2 ymm11_2;
mov ymm12_3 ymm11_3;
(* vmovdqa64 %ymm26,%ymm17                         #! PC = 0x5555555807dd *)
mov ymm17_0 ymm26_0;
mov ymm17_1 ymm26_1;
mov ymm17_2 ymm26_2;
mov ymm17_3 ymm26_3;
(* vprorq $0x2,%ymm14,%ymm20                       #! PC = 0x5555555807e3 *)
ror ymm20_0 ymm14_0 0x2;
ror ymm20_1 ymm14_1 0x2;
ror ymm20_2 ymm14_2 0x2;
ror ymm20_3 ymm14_3 0x2;
(* vprorq $0x9,%ymm19,%ymm19                       #! PC = 0x5555555807ea *)
ror ymm19_0 ymm19_0 0x9;
ror ymm19_1 ymm19_1 0x9;
ror ymm19_2 ymm19_2 0x9;
ror ymm19_3 ymm19_3 0x9;
(* vpternlogq $0xd2,%ymm4,%ymm26,%ymm12            #! PC = 0x5555555807f1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm26_0, ymm4_0, table);
call vpternlogq64 (ymm12_1, ymm26_1, ymm4_1, table);
call vpternlogq64 (ymm12_2, ymm26_2, ymm4_2, table);
call vpternlogq64 (ymm12_3, ymm26_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm4,%ymm17             #! PC = 0x5555555807f8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm4_0, ymm5_0, table);
call vpternlogq64 (ymm17_1, ymm4_1, ymm5_1, table);
call vpternlogq64 (ymm17_2, ymm4_2, ymm5_2, table);
call vpternlogq64 (ymm17_3, ymm4_3, ymm5_3, table);
(* vpxorq %ymm30,%ymm3,%ymm3                       #! PC = 0x5555555807ff *)
xor ymm3_0@uint64 ymm3_0 ymm30_0;
xor ymm3_1@uint64 ymm3_1 ymm30_1;
xor ymm3_2@uint64 ymm3_2 ymm30_2;
xor ymm3_3@uint64 ymm3_3 ymm30_3;
(* vpternlogq $0xd2,%ymm7,%ymm5,%ymm4              #! PC = 0x555555580805 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm5_0, ymm7_0, table);
call vpternlogq64 (ymm4_1, ymm5_1, ymm7_1, table);
call vpternlogq64 (ymm4_2, ymm5_2, ymm7_2, table);
call vpternlogq64 (ymm4_3, ymm5_3, ymm7_3, table);
(* vpxorq %ymm29,%ymm27,%ymm27                     #! PC = 0x55555558080c *)
xor ymm27_0@uint64 ymm27_0 ymm29_0;
xor ymm27_1@uint64 ymm27_1 ymm29_1;
xor ymm27_2@uint64 ymm27_2 ymm29_2;
xor ymm27_3@uint64 ymm27_3 ymm29_3;
(* vpternlogq $0xd2,%ymm11,%ymm7,%ymm5             #! PC = 0x555555580812 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm7_0, ymm11_0, table);
call vpternlogq64 (ymm5_1, ymm7_1, ymm11_1, table);
call vpternlogq64 (ymm5_2, ymm7_2, ymm11_2, table);
call vpternlogq64 (ymm5_3, ymm7_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm26,%ymm11,%ymm7            #! PC = 0x555555580819 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm11_0, ymm26_0, table);
call vpternlogq64 (ymm7_1, ymm11_1, ymm26_1, table);
call vpternlogq64 (ymm7_2, ymm11_2, ymm26_2, table);
call vpternlogq64 (ymm7_3, ymm11_3, ymm26_3, table);
(* vpxorq %ymm22,%ymm24,%ymm11                     #! PC = 0x555555580820 *)
xor ymm11_0@uint64 ymm24_0 ymm22_0;
xor ymm11_1@uint64 ymm24_1 ymm22_1;
xor ymm11_2@uint64 ymm24_2 ymm22_2;
xor ymm11_3@uint64 ymm24_3 ymm22_3;
(* vprorq $0x17,%ymm3,%ymm3                        #! PC = 0x555555580826 *)
ror ymm3_0 ymm3_0 0x17;
ror ymm3_1 ymm3_1 0x17;
ror ymm3_2 ymm3_2 0x17;
ror ymm3_3 ymm3_3 0x17;
(* vprolq $0x2,%ymm11,%ymm11                       #! PC = 0x55555558082d *)
rol ymm11_0 ymm11_0 0x2;
rol ymm11_1 ymm11_1 0x2;
rol ymm11_2 ymm11_2 0x2;
rol ymm11_3 ymm11_3 0x2;
(* vprorq $0x19,%ymm27,%ymm27                      #! PC = 0x555555580834 *)
ror ymm27_0 ymm27_0 0x19;
ror ymm27_1 ymm27_1 0x19;
ror ymm27_2 ymm27_2 0x19;
ror ymm27_3 ymm27_3 0x19;
(* vmovdqa64 %ymm20,%ymm14                         #! PC = 0x55555558083b *)
mov ymm14_0 ymm20_0;
mov ymm14_1 ymm20_1;
mov ymm14_2 ymm20_2;
mov ymm14_3 ymm20_3;
(* vmovdqa64 %ymm19,%ymm24                         #! PC = 0x555555580841 *)
mov ymm24_0 ymm19_0;
mov ymm24_1 ymm19_1;
mov ymm24_2 ymm19_2;
mov ymm24_3 ymm19_3;
(* vmovdqa %ymm5,%ymm15                            #! PC = 0x555555580847 *)
mov ymm15_0 ymm5_0;
mov ymm15_1 ymm5_1;
mov ymm15_2 ymm5_2;
mov ymm15_3 ymm5_3;
(* vpternlogq $0x96,%ymm0,%ymm8,%ymm15             #! PC = 0x55555558084b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm8_0, ymm0_0, table);
call vpternlogq64 (ymm15_1, ymm8_1, ymm0_1, table);
call vpternlogq64 (ymm15_2, ymm8_2, ymm0_2, table);
call vpternlogq64 (ymm15_3, ymm8_3, ymm0_3, table);
(* vmovdqa64 %ymm25,%ymm22                         #! PC = 0x555555580852 *)
mov ymm22_0 ymm25_0;
mov ymm22_1 ymm25_1;
mov ymm22_2 ymm25_2;
mov ymm22_3 ymm25_3;
(* vpternlogq $0xd2,%ymm3,%ymm27,%ymm24            #! PC = 0x555555580858 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm27_0, ymm3_0, table);
call vpternlogq64 (ymm24_1, ymm27_1, ymm3_1, table);
call vpternlogq64 (ymm24_2, ymm27_2, ymm3_2, table);
call vpternlogq64 (ymm24_3, ymm27_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm19,%ymm14           #! PC = 0x55555558085f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm19_0, ymm27_0, table);
call vpternlogq64 (ymm14_1, ymm19_1, ymm27_1, table);
call vpternlogq64 (ymm14_2, ymm19_2, ymm27_2, table);
call vpternlogq64 (ymm14_3, ymm19_3, ymm27_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm3,%ymm27            #! PC = 0x555555580866 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm3_0, ymm11_0, table);
call vpternlogq64 (ymm27_1, ymm3_1, ymm11_1, table);
call vpternlogq64 (ymm27_2, ymm3_2, ymm11_2, table);
call vpternlogq64 (ymm27_3, ymm3_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm11,%ymm3            #! PC = 0x55555558086d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm11_0, ymm20_0, table);
call vpternlogq64 (ymm3_1, ymm11_1, ymm20_1, table);
call vpternlogq64 (ymm3_2, ymm11_2, ymm20_2, table);
call vpternlogq64 (ymm3_3, ymm11_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm20,%ymm11           #! PC = 0x555555580874 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm20_0, ymm19_0, table);
call vpternlogq64 (ymm11_1, ymm20_1, ymm19_1, table);
call vpternlogq64 (ymm11_2, ymm20_2, ymm19_2, table);
call vpternlogq64 (ymm11_3, ymm20_3, ymm19_3, table);
(* vmovdqa64 %ymm2,%ymm19                          #! PC = 0x55555558087b *)
mov ymm19_0 ymm2_0;
mov ymm19_1 ymm2_1;
mov ymm19_2 ymm2_2;
mov ymm19_3 ymm2_3;
(* vpternlogq $0x96,%ymm13,%ymm27,%ymm19           #! PC = 0x555555580881 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm27_0, ymm13_0, table);
call vpternlogq64 (ymm19_1, ymm27_1, ymm13_1, table);
call vpternlogq64 (ymm19_2, ymm27_2, ymm13_2, table);
call vpternlogq64 (ymm19_3, ymm27_3, ymm13_3, table);
(* vpternlogq $0x96,%ymm1,%ymm4,%ymm19             #! PC = 0x555555580888 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm4_0, ymm1_0, table);
call vpternlogq64 (ymm19_1, ymm4_1, ymm1_1, table);
call vpternlogq64 (ymm19_2, ymm4_2, ymm1_2, table);
call vpternlogq64 (ymm19_3, ymm4_3, ymm1_3, table);
(* vprolq $0x1,%ymm19,%ymm29                       #! PC = 0x55555558088f *)
rol ymm29_0 ymm19_0 0x1;
rol ymm29_1 ymm19_1 0x1;
rol ymm29_2 ymm19_2 0x1;
rol ymm29_3 ymm19_3 0x1;
(* vpternlogq $0x96,%ymm18,%ymm3,%ymm15            #! PC = 0x555555580896 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm3_0, ymm18_0, table);
call vpternlogq64 (ymm15_1, ymm3_1, ymm18_1, table);
call vpternlogq64 (ymm15_2, ymm3_2, ymm18_2, table);
call vpternlogq64 (ymm15_3, ymm3_3, ymm18_3, table);
(* vmovdqa64 %ymm11,%ymm26                         #! PC = 0x55555558089d *)
mov ymm26_0 ymm11_0;
mov ymm26_1 ymm11_1;
mov ymm26_2 ymm11_2;
mov ymm26_3 ymm11_3;
(* vpternlogq $0x96,%ymm7,%ymm6,%ymm26             #! PC = 0x5555555808a3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm6_0, ymm7_0, table);
call vpternlogq64 (ymm26_1, ymm6_1, ymm7_1, table);
call vpternlogq64 (ymm26_2, ymm6_2, ymm7_2, table);
call vpternlogq64 (ymm26_3, ymm6_3, ymm7_3, table);
(* vpternlogq $0x96,%ymm23,%ymm9,%ymm26            #! PC = 0x5555555808aa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm9_0, ymm23_0, table);
call vpternlogq64 (ymm26_1, ymm9_1, ymm23_1, table);
call vpternlogq64 (ymm26_2, ymm9_2, ymm23_2, table);
call vpternlogq64 (ymm26_3, ymm9_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm14,%ymm16,%ymm22           #! PC = 0x5555555808b1 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm16_0, ymm14_0, table);
call vpternlogq64 (ymm22_1, ymm16_1, ymm14_1, table);
call vpternlogq64 (ymm22_2, ymm16_2, ymm14_2, table);
call vpternlogq64 (ymm22_3, ymm16_3, ymm14_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555808b8 *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm15,%ymm29                       #! PC = 0x5555555808c3 *)
rol ymm29_0 ymm15_0 0x1;
rol ymm29_1 ymm15_1 0x1;
rol ymm29_2 ymm15_2 0x1;
rol ymm29_3 ymm15_3 0x1;
(* vpternlogq $0x96,%ymm12,%ymm28,%ymm22           #! PC = 0x5555555808ca *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm28_0, ymm12_0, table);
call vpternlogq64 (ymm22_1, ymm28_1, ymm12_1, table);
call vpternlogq64 (ymm22_2, ymm28_2, ymm12_2, table);
call vpternlogq64 (ymm22_3, ymm28_3, ymm12_3, table);
(* vmovdqa64 %ymm31,%ymm20                         #! PC = 0x5555555808d1 *)
mov ymm20_0 ymm31_0;
mov ymm20_1 ymm31_1;
mov ymm20_2 ymm31_2;
mov ymm20_3 ymm31_3;
(* vpternlogq $0x96,%ymm21,%ymm17,%ymm20           #! PC = 0x5555555808d7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm17_0, ymm21_0, table);
call vpternlogq64 (ymm20_1, ymm17_1, ymm21_1, table);
call vpternlogq64 (ymm20_2, ymm17_2, ymm21_2, table);
call vpternlogq64 (ymm20_3, ymm17_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm24,%ymm10,%ymm20           #! PC = 0x5555555808de *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm10_0, ymm24_0, table);
call vpternlogq64 (ymm20_1, ymm10_1, ymm24_1, table);
call vpternlogq64 (ymm20_2, ymm10_2, ymm24_2, table);
call vpternlogq64 (ymm20_3, ymm10_3, ymm24_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x5555555808e5 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555808ec *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm26,%ymm29                       #! PC = 0x5555555808f7 *)
rol ymm29_0 ymm26_0 0x1;
rol ymm29_1 ymm26_1 0x1;
rol ymm29_2 ymm26_2 0x1;
rol ymm29_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0x16d63652bc0e0f53; PC = 0x5555555808fe *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* movabs $0x800000000000008b,%rdi                 #! PC = 0x555555580909 *)
mov rdi 0x800000000000008b@uint64;
(* vpxorq %ymm20,%ymm2,%ymm2                       #! PC = 0x555555580913 *)
xor ymm2_0@uint64 ymm2_0 ymm20_0;
xor ymm2_1@uint64 ymm2_1 ymm20_1;
xor ymm2_2@uint64 ymm2_2 ymm20_2;
xor ymm2_3@uint64 ymm2_3 ymm20_3;
(* vpxorq %ymm26,%ymm30,%ymm30                     #! PC = 0x555555580919 *)
xor ymm30_0@uint64 ymm30_0 ymm26_0;
xor ymm30_1@uint64 ymm30_1 ymm26_1;
xor ymm30_2@uint64 ymm30_2 ymm26_2;
xor ymm30_3@uint64 ymm30_3 ymm26_3;
(* vprorq $0x15,%ymm2,%ymm2                        #! PC = 0x55555558091f *)
ror ymm2_0 ymm2_0 0x15;
ror ymm2_1 ymm2_1 0x15;
ror ymm2_2 ymm2_2 0x15;
ror ymm2_3 ymm2_3 0x15;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555580926 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580931 *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x88(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd960; Value = 0x7740721a5e383d5a; PC = 0x555555580938 *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd960;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd968;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd970;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm19,%ymm19                 #! EA = L0x7fffffffd920; Value = 0x9cce08344ae661ae; PC = 0x555555580943 *)
xor ymm19_0@uint64 ymm19_0 L0x7fffffffd920;
xor ymm19_1@uint64 ymm19_1 L0x7fffffffd928;
xor ymm19_2@uint64 ymm19_2 L0x7fffffffd930;
xor ymm19_3@uint64 ymm19_3 L0x7fffffffd938;
(* vpxorq %ymm22,%ymm31,%ymm31                     #! PC = 0x55555558094e *)
xor ymm31_0@uint64 ymm31_0 ymm22_0;
xor ymm31_1@uint64 ymm31_1 ymm22_1;
xor ymm31_2@uint64 ymm31_2 ymm22_2;
xor ymm31_3@uint64 ymm31_3 ymm22_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580954 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm19,%ymm5,%ymm5                       #! PC = 0x55555558095b *)
xor ymm5_0@uint64 ymm5_0 ymm19_0;
xor ymm5_1@uint64 ymm5_1 ymm19_1;
xor ymm5_2@uint64 ymm5_2 ymm19_2;
xor ymm5_3@uint64 ymm5_3 ymm19_3;
(* vpxorq %ymm15,%ymm29,%ymm29                     #! PC = 0x555555580961 *)
xor ymm29_0@uint64 ymm29_0 ymm15_0;
xor ymm29_1@uint64 ymm29_1 ymm15_1;
xor ymm29_2@uint64 ymm29_2 ymm15_2;
xor ymm29_3@uint64 ymm29_3 ymm15_3;
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x555555580967 *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vprolq $0x15,%ymm5,%ymm5                        #! PC = 0x55555558096d *)
rol ymm5_0 ymm5_0 0x15;
rol ymm5_1 ymm5_1 0x15;
rol ymm5_2 ymm5_2 0x15;
rol ymm5_3 ymm5_3 0x15;
(* vprolq $0xe,%ymm11,%ymm11                       #! PC = 0x555555580974 *)
rol ymm11_0 ymm11_0 0xe;
rol ymm11_1 ymm11_1 0xe;
rol ymm11_2 ymm11_2 0xe;
rol ymm11_3 ymm11_3 0xe;
(* vpxorq %ymm19,%ymm8,%ymm8                       #! PC = 0x55555558097b *)
xor ymm8_0@uint64 ymm8_0 ymm19_0;
xor ymm8_1@uint64 ymm8_1 ymm19_1;
xor ymm8_2@uint64 ymm8_2 ymm19_2;
xor ymm8_3@uint64 ymm8_3 ymm19_3;
(* vpxorq %ymm29,%ymm6,%ymm6                       #! PC = 0x555555580981 *)
xor ymm6_0@uint64 ymm6_0 ymm29_0;
xor ymm6_1@uint64 ymm6_1 ymm29_1;
xor ymm6_2@uint64 ymm6_2 ymm29_2;
xor ymm6_3@uint64 ymm6_3 ymm29_3;
(* vprolq $0x1c,%ymm8,%ymm8                        #! PC = 0x555555580987 *)
rol ymm8_0 ymm8_0 0x1c;
rol ymm8_1 ymm8_1 0x1c;
rol ymm8_2 ymm8_2 0x1c;
rol ymm8_3 ymm8_3 0x1c;
(* vprolq $0x14,%ymm6,%ymm6                        #! PC = 0x55555558098e *)
rol ymm6_0 ymm6_0 0x14;
rol ymm6_1 ymm6_1 0x14;
rol ymm6_2 ymm6_2 0x14;
rol ymm6_3 ymm6_3 0x14;
(* vpxorq %ymm30,%ymm16,%ymm16                     #! PC = 0x555555580995 *)
xor ymm16_0@uint64 ymm16_0 ymm30_0;
xor ymm16_1@uint64 ymm16_1 ymm30_1;
xor ymm16_2@uint64 ymm16_2 ymm30_2;
xor ymm16_3@uint64 ymm16_3 ymm30_3;
(* vpxorq %ymm22,%ymm17,%ymm17                     #! PC = 0x55555558099b *)
xor ymm17_0@uint64 ymm17_0 ymm22_0;
xor ymm17_1@uint64 ymm17_1 ymm22_1;
xor ymm17_2@uint64 ymm17_2 ymm22_2;
xor ymm17_3@uint64 ymm17_3 ymm22_3;
(* vpxorq %ymm20,%ymm27,%ymm27                     #! PC = 0x5555555809a1 *)
xor ymm27_0@uint64 ymm27_0 ymm20_0;
xor ymm27_1@uint64 ymm27_1 ymm20_1;
xor ymm27_2@uint64 ymm27_2 ymm20_2;
xor ymm27_3@uint64 ymm27_3 ymm20_3;
(* vpxorq %ymm22,%ymm21,%ymm21                     #! PC = 0x5555555809a7 *)
xor ymm21_0@uint64 ymm21_0 ymm22_0;
xor ymm21_1@uint64 ymm21_1 ymm22_1;
xor ymm21_2@uint64 ymm21_2 ymm22_2;
xor ymm21_3@uint64 ymm21_3 ymm22_3;
(* vpxorq %ymm20,%ymm13,%ymm13                     #! PC = 0x5555555809ad *)
xor ymm13_0@uint64 ymm13_0 ymm20_0;
xor ymm13_1@uint64 ymm13_1 ymm20_1;
xor ymm13_2@uint64 ymm13_2 ymm20_2;
xor ymm13_3@uint64 ymm13_3 ymm20_3;
(* vprolq $0x1,%ymm21,%ymm21                       #! PC = 0x5555555809b3 *)
rol ymm21_0 ymm21_0 0x1;
rol ymm21_1 ymm21_1 0x1;
rol ymm21_2 ymm21_2 0x1;
rol ymm21_3 ymm21_3 0x1;
(* vprolq $0x6,%ymm13,%ymm13                       #! PC = 0x5555555809ba *)
rol ymm13_0 ymm13_0 0x6;
rol ymm13_1 ymm13_1 0x6;
rol ymm13_2 ymm13_2 0x6;
rol ymm13_3 ymm13_3 0x6;
(* vprolq $0x3,%ymm16,%ymm16                       #! PC = 0x5555555809c1 *)
rol ymm16_0 ymm16_0 0x3;
rol ymm16_1 ymm16_1 0x3;
rol ymm16_2 ymm16_2 0x3;
rol ymm16_3 ymm16_3 0x3;
(* vprorq $0x13,%ymm17,%ymm17                      #! PC = 0x5555555809c8 *)
ror ymm17_0 ymm17_0 0x13;
ror ymm17_1 ymm17_1 0x13;
ror ymm17_2 ymm17_2 0x13;
ror ymm17_3 ymm17_3 0x13;
(* vprorq $0x3,%ymm27,%ymm27                       #! PC = 0x5555555809cf *)
ror ymm27_0 ymm27_0 0x3;
ror ymm27_1 ymm27_1 0x3;
ror ymm27_2 ymm27_2 0x3;
ror ymm27_3 ymm27_3 0x3;
(* vpxorq %ymm30,%ymm14,%ymm14                     #! PC = 0x5555555809d6 *)
xor ymm14_0@uint64 ymm14_0 ymm30_0;
xor ymm14_1@uint64 ymm14_1 ymm30_1;
xor ymm14_2@uint64 ymm14_2 ymm30_2;
xor ymm14_3@uint64 ymm14_3 ymm30_3;
(* vpxorq %ymm19,%ymm0,%ymm0                       #! PC = 0x5555555809dc *)
xor ymm0_0@uint64 ymm0_0 ymm19_0;
xor ymm0_1@uint64 ymm0_1 ymm19_1;
xor ymm0_2@uint64 ymm0_2 ymm19_2;
xor ymm0_3@uint64 ymm0_3 ymm19_3;
(* vpxorq %ymm29,%ymm7,%ymm7                       #! PC = 0x5555555809e2 *)
xor ymm7_0@uint64 ymm7_0 ymm29_0;
xor ymm7_1@uint64 ymm7_1 ymm29_1;
xor ymm7_2@uint64 ymm7_2 ymm29_2;
xor ymm7_3@uint64 ymm7_3 ymm29_3;
(* vpxorq %ymm30,%ymm28,%ymm28                     #! PC = 0x5555555809e8 *)
xor ymm28_0@uint64 ymm28_0 ymm30_0;
xor ymm28_1@uint64 ymm28_1 ymm30_1;
xor ymm28_2@uint64 ymm28_2 ymm30_2;
xor ymm28_3@uint64 ymm28_3 ymm30_3;
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x5555555809ee *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vprorq $0x1c,%ymm28,%ymm28                      #! PC = 0x5555555809f4 *)
ror ymm28_0 ymm28_0 0x1c;
ror ymm28_1 ymm28_1 0x1c;
ror ymm28_2 ymm28_2 0x1c;
ror ymm28_3 ymm28_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x5555555809fb *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm14,%ymm14                      #! PC = 0x555555580a02 *)
rol ymm14_0 ymm14_0 0x12;
rol ymm14_1 ymm14_1 0x12;
rol ymm14_2 ymm14_2 0x12;
rol ymm14_3 ymm14_3 0x12;
(* vprolq $0x19,%ymm0,%ymm0                        #! PC = 0x555555580a09 *)
rol ymm0_0 ymm0_0 0x19;
rol ymm0_1 ymm0_1 0x19;
rol ymm0_2 ymm0_2 0x19;
rol ymm0_3 ymm0_3 0x19;
(* vprolq $0x8,%ymm7,%ymm7                         #! PC = 0x555555580a10 *)
rol ymm7_0 ymm7_0 0x8;
rol ymm7_1 ymm7_1 0x8;
rol ymm7_2 ymm7_2 0x8;
rol ymm7_3 ymm7_3 0x8;
(* vpxorq %ymm22,%ymm10,%ymm10                     #! PC = 0x555555580a17 *)
xor ymm10_0@uint64 ymm10_0 ymm22_0;
xor ymm10_1@uint64 ymm10_1 ymm22_1;
xor ymm10_2@uint64 ymm10_2 ymm22_2;
xor ymm10_3@uint64 ymm10_3 ymm22_3;
(* vpxorq %ymm20,%ymm4,%ymm4                       #! PC = 0x555555580a1d *)
xor ymm4_0@uint64 ymm4_0 ymm20_0;
xor ymm4_1@uint64 ymm4_1 ymm20_1;
xor ymm4_2@uint64 ymm4_2 ymm20_2;
xor ymm4_3@uint64 ymm4_3 ymm20_3;
(* vpxorq %ymm19,%ymm3,%ymm3                       #! PC = 0x555555580a23 *)
xor ymm3_0@uint64 ymm3_0 ymm19_0;
xor ymm3_1@uint64 ymm3_1 ymm19_1;
xor ymm3_2@uint64 ymm3_2 ymm19_2;
xor ymm3_3@uint64 ymm3_3 ymm19_3;
(* vpxorq %ymm25,%ymm30,%ymm25                     #! PC = 0x555555580a29 *)
xor ymm25_0@uint64 ymm30_0 ymm25_0;
xor ymm25_1@uint64 ymm30_1 ymm25_1;
xor ymm25_2@uint64 ymm30_2 ymm25_2;
xor ymm25_3@uint64 ymm30_3 ymm25_3;
(* vprolq $0xa,%ymm10,%ymm10                       #! PC = 0x555555580a2f *)
rol ymm10_0 ymm10_0 0xa;
rol ymm10_1 ymm10_1 0xa;
rol ymm10_2 ymm10_2 0xa;
rol ymm10_3 ymm10_3 0xa;
(* vprolq $0xf,%ymm4,%ymm4                         #! PC = 0x555555580a36 *)
rol ymm4_0 ymm4_0 0xf;
rol ymm4_1 ymm4_1 0xf;
rol ymm4_2 ymm4_2 0xf;
rol ymm4_3 ymm4_3 0xf;
(* vprorq $0x8,%ymm3,%ymm3                         #! PC = 0x555555580a3d *)
ror ymm3_0 ymm3_0 0x8;
ror ymm3_1 ymm3_1 0x8;
ror ymm3_2 ymm3_2 0x8;
ror ymm3_3 ymm3_3 0x8;
(* vmovdqa64 %ymm25,%ymm15                         #! PC = 0x555555580a44 *)
mov ymm15_0 ymm25_0;
mov ymm15_1 ymm25_1;
mov ymm15_2 ymm25_2;
mov ymm15_3 ymm25_3;
(* vmovdqa64 %ymm31,%ymm26                         #! PC = 0x555555580a4a *)
mov ymm26_0 ymm31_0;
mov ymm26_1 ymm31_1;
mov ymm26_2 ymm31_2;
mov ymm26_3 ymm31_3;
(* vpternlogq $0xd2,%ymm5,%ymm2,%ymm26             #! PC = 0x555555580a50 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm2_0, ymm5_0, table);
call vpternlogq64 (ymm26_1, ymm2_1, ymm5_1, table);
call vpternlogq64 (ymm26_2, ymm2_2, ymm5_2, table);
call vpternlogq64 (ymm26_3, ymm2_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm31,%ymm15            #! PC = 0x555555580a57 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm31_0, ymm2_0, table);
call vpternlogq64 (ymm15_1, ymm31_1, ymm2_1, table);
call vpternlogq64 (ymm15_2, ymm31_2, ymm2_2, table);
call vpternlogq64 (ymm15_3, ymm31_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm5,%ymm2             #! PC = 0x555555580a5e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm5_0, ymm11_0, table);
call vpternlogq64 (ymm2_1, ymm5_1, ymm11_1, table);
call vpternlogq64 (ymm2_2, ymm5_2, ymm11_2, table);
call vpternlogq64 (ymm2_3, ymm5_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm11,%ymm5            #! PC = 0x555555580a65 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm11_0, ymm25_0, table);
call vpternlogq64 (ymm5_1, ymm11_1, ymm25_1, table);
call vpternlogq64 (ymm5_2, ymm11_2, ymm25_2, table);
call vpternlogq64 (ymm5_3, ymm11_3, ymm25_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm25,%ymm11           #! PC = 0x555555580a6c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm25_0, ymm31_0, table);
call vpternlogq64 (ymm11_1, ymm25_1, ymm31_1, table);
call vpternlogq64 (ymm11_2, ymm25_2, ymm31_2, table);
call vpternlogq64 (ymm11_3, ymm25_3, ymm31_3, table);
(* vpbroadcastq %r9,%ymm25                         #! PC = 0x555555580a73 *)
mov ymm25_0 r9;
mov ymm25_1 r9;
mov ymm25_2 r9;
mov ymm25_3 r9;
(* vpxorq %ymm25,%ymm15,%ymm15                     #! PC = 0x555555580a79 *)
xor ymm15_0@uint64 ymm15_0 ymm25_0;
xor ymm15_1@uint64 ymm15_1 ymm25_1;
xor ymm15_2@uint64 ymm15_2 ymm25_2;
xor ymm15_3@uint64 ymm15_3 ymm25_3;
(* vmovdqa64 %ymm6,%ymm31                          #! PC = 0x555555580a7f *)
mov ymm31_0 ymm6_0;
mov ymm31_1 ymm6_1;
mov ymm31_2 ymm6_2;
mov ymm31_3 ymm6_3;
(* vmovdqa64 %ymm8,%ymm25                          #! PC = 0x555555580a85 *)
mov ymm25_0 ymm8_0;
mov ymm25_1 ymm8_1;
mov ymm25_2 ymm8_2;
mov ymm25_3 ymm8_3;
(* vpternlogq $0xd2,%ymm16,%ymm6,%ymm25            #! PC = 0x555555580a8b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm6_0, ymm16_0, table);
call vpternlogq64 (ymm25_1, ymm6_1, ymm16_1, table);
call vpternlogq64 (ymm25_2, ymm6_2, ymm16_2, table);
call vpternlogq64 (ymm25_3, ymm6_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm16,%ymm31           #! PC = 0x555555580a92 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm16_0, ymm17_0, table);
call vpternlogq64 (ymm31_1, ymm16_1, ymm17_1, table);
call vpternlogq64 (ymm31_2, ymm16_2, ymm17_2, table);
call vpternlogq64 (ymm31_3, ymm16_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm17,%ymm16           #! PC = 0x555555580a99 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm17_0, ymm27_0, table);
call vpternlogq64 (ymm16_1, ymm17_1, ymm27_1, table);
call vpternlogq64 (ymm16_2, ymm17_2, ymm27_2, table);
call vpternlogq64 (ymm16_3, ymm17_3, ymm27_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm27,%ymm17            #! PC = 0x555555580aa0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm27_0, ymm8_0, table);
call vpternlogq64 (ymm17_1, ymm27_1, ymm8_1, table);
call vpternlogq64 (ymm17_2, ymm27_2, ymm8_2, table);
call vpternlogq64 (ymm17_3, ymm27_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm8,%ymm27             #! PC = 0x555555580aa7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm8_0, ymm6_0, table);
call vpternlogq64 (ymm27_1, ymm8_1, ymm6_1, table);
call vpternlogq64 (ymm27_2, ymm8_2, ymm6_2, table);
call vpternlogq64 (ymm27_3, ymm8_3, ymm6_3, table);
(* vmovdqa64 %ymm21,%ymm6                          #! PC = 0x555555580aae *)
mov ymm6_0 ymm21_0;
mov ymm6_1 ymm21_1;
mov ymm6_2 ymm21_2;
mov ymm6_3 ymm21_3;
(* vmovdqa %ymm13,%ymm8                            #! PC = 0x555555580ab4 *)
mov ymm8_0 ymm13_0;
mov ymm8_1 ymm13_1;
mov ymm8_2 ymm13_2;
mov ymm8_3 ymm13_3;
(* vpternlogq $0xd2,%ymm0,%ymm13,%ymm6             #! PC = 0x555555580ab9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm13_0, ymm0_0, table);
call vpternlogq64 (ymm6_1, ymm13_1, ymm0_1, table);
call vpternlogq64 (ymm6_2, ymm13_2, ymm0_2, table);
call vpternlogq64 (ymm6_3, ymm13_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm0,%ymm8              #! PC = 0x555555580ac0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm0_0, ymm7_0, table);
call vpternlogq64 (ymm8_1, ymm0_1, ymm7_1, table);
call vpternlogq64 (ymm8_2, ymm0_2, ymm7_2, table);
call vpternlogq64 (ymm8_3, ymm0_3, ymm7_3, table);
(* vpxorq %ymm20,%ymm1,%ymm1                       #! PC = 0x555555580ac7 *)
xor ymm1_0@uint64 ymm1_0 ymm20_0;
xor ymm1_1@uint64 ymm1_1 ymm20_1;
xor ymm1_2@uint64 ymm1_2 ymm20_2;
xor ymm1_3@uint64 ymm1_3 ymm20_3;
(* vpternlogq $0xd2,%ymm14,%ymm7,%ymm0             #! PC = 0x555555580acd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm7_0, ymm14_0, table);
call vpternlogq64 (ymm0_1, ymm7_1, ymm14_1, table);
call vpternlogq64 (ymm0_2, ymm7_2, ymm14_2, table);
call vpternlogq64 (ymm0_3, ymm7_3, ymm14_3, table);
(* vpxorq %ymm19,%ymm18,%ymm18                     #! PC = 0x555555580ad4 *)
xor ymm18_0@uint64 ymm18_0 ymm19_0;
xor ymm18_1@uint64 ymm18_1 ymm19_1;
xor ymm18_2@uint64 ymm18_2 ymm19_2;
xor ymm18_3@uint64 ymm18_3 ymm19_3;
(* vpternlogq $0xd2,%ymm21,%ymm14,%ymm7            #! PC = 0x555555580ada *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm14_0, ymm21_0, table);
call vpternlogq64 (ymm7_1, ymm14_1, ymm21_1, table);
call vpternlogq64 (ymm7_2, ymm14_2, ymm21_2, table);
call vpternlogq64 (ymm7_3, ymm14_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm21,%ymm14           #! PC = 0x555555580ae1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm21_0, ymm13_0, table);
call vpternlogq64 (ymm14_1, ymm21_1, ymm13_1, table);
call vpternlogq64 (ymm14_2, ymm21_2, ymm13_2, table);
call vpternlogq64 (ymm14_3, ymm21_3, ymm13_3, table);
(* vmovdqa64 %ymm9,%ymm21                          #! PC = 0x555555580ae8 *)
mov ymm21_0 ymm9_0;
mov ymm21_1 ymm9_1;
mov ymm21_2 ymm9_2;
mov ymm21_3 ymm9_3;
(* vmovdqa64 %ymm28,%ymm13                         #! PC = 0x555555580aee *)
mov ymm13_0 ymm28_0;
mov ymm13_1 ymm28_1;
mov ymm13_2 ymm28_2;
mov ymm13_3 ymm28_3;
(* vprorq $0x2,%ymm1,%ymm1                         #! PC = 0x555555580af4 *)
ror ymm1_0 ymm1_0 0x2;
ror ymm1_1 ymm1_1 0x2;
ror ymm1_2 ymm1_2 0x2;
ror ymm1_3 ymm1_3 0x2;
(* vprorq $0x9,%ymm18,%ymm18                       #! PC = 0x555555580afb *)
ror ymm18_0 ymm18_0 0x9;
ror ymm18_1 ymm18_1 0x9;
ror ymm18_2 ymm18_2 0x9;
ror ymm18_3 ymm18_3 0x9;
(* vpternlogq $0xd2,%ymm10,%ymm28,%ymm21           #! PC = 0x555555580b02 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm28_0, ymm10_0, table);
call vpternlogq64 (ymm21_1, ymm28_1, ymm10_1, table);
call vpternlogq64 (ymm21_2, ymm28_2, ymm10_2, table);
call vpternlogq64 (ymm21_3, ymm28_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm10,%ymm13            #! PC = 0x555555580b09 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm10_0, ymm4_0, table);
call vpternlogq64 (ymm13_1, ymm10_1, ymm4_1, table);
call vpternlogq64 (ymm13_2, ymm10_2, ymm4_2, table);
call vpternlogq64 (ymm13_3, ymm10_3, ymm4_3, table);
(* vpxorq %ymm30,%ymm12,%ymm12                     #! PC = 0x555555580b10 *)
xor ymm12_0@uint64 ymm12_0 ymm30_0;
xor ymm12_1@uint64 ymm12_1 ymm30_1;
xor ymm12_2@uint64 ymm12_2 ymm30_2;
xor ymm12_3@uint64 ymm12_3 ymm30_3;
(* vpternlogq $0xd2,%ymm3,%ymm4,%ymm10             #! PC = 0x555555580b16 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm4_0, ymm3_0, table);
call vpternlogq64 (ymm10_1, ymm4_1, ymm3_1, table);
call vpternlogq64 (ymm10_2, ymm4_2, ymm3_2, table);
call vpternlogq64 (ymm10_3, ymm4_3, ymm3_3, table);
(* vpxorq %ymm29,%ymm23,%ymm23                     #! PC = 0x555555580b1d *)
xor ymm23_0@uint64 ymm23_0 ymm29_0;
xor ymm23_1@uint64 ymm23_1 ymm29_1;
xor ymm23_2@uint64 ymm23_2 ymm29_2;
xor ymm23_3@uint64 ymm23_3 ymm29_3;
(* vpternlogq $0xd2,%ymm9,%ymm3,%ymm4              #! PC = 0x555555580b23 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm3_0, ymm9_0, table);
call vpternlogq64 (ymm4_1, ymm3_1, ymm9_1, table);
call vpternlogq64 (ymm4_2, ymm3_2, ymm9_2, table);
call vpternlogq64 (ymm4_3, ymm3_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm9,%ymm3             #! PC = 0x555555580b2a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm9_0, ymm28_0, table);
call vpternlogq64 (ymm3_1, ymm9_1, ymm28_1, table);
call vpternlogq64 (ymm3_2, ymm9_2, ymm28_2, table);
call vpternlogq64 (ymm3_3, ymm9_3, ymm28_3, table);
(* vpxorq %ymm22,%ymm24,%ymm9                      #! PC = 0x555555580b31 *)
xor ymm9_0@uint64 ymm24_0 ymm22_0;
xor ymm9_1@uint64 ymm24_1 ymm22_1;
xor ymm9_2@uint64 ymm24_2 ymm22_2;
xor ymm9_3@uint64 ymm24_3 ymm22_3;
(* vprorq $0x17,%ymm12,%ymm12                      #! PC = 0x555555580b37 *)
ror ymm12_0 ymm12_0 0x17;
ror ymm12_1 ymm12_1 0x17;
ror ymm12_2 ymm12_2 0x17;
ror ymm12_3 ymm12_3 0x17;
(* vprolq $0x2,%ymm9,%ymm9                         #! PC = 0x555555580b3e *)
rol ymm9_0 ymm9_0 0x2;
rol ymm9_1 ymm9_1 0x2;
rol ymm9_2 ymm9_2 0x2;
rol ymm9_3 ymm9_3 0x2;
(* vprorq $0x19,%ymm23,%ymm23                      #! PC = 0x555555580b45 *)
ror ymm23_0 ymm23_0 0x19;
ror ymm23_1 ymm23_1 0x19;
ror ymm23_2 ymm23_2 0x19;
ror ymm23_3 ymm23_3 0x19;
(* vmovdqa64 %ymm1,%ymm28                          #! PC = 0x555555580b4c *)
mov ymm28_0 ymm1_0;
mov ymm28_1 ymm1_1;
mov ymm28_2 ymm1_2;
mov ymm28_3 ymm1_3;
(* vmovdqa64 %ymm18,%ymm24                         #! PC = 0x555555580b52 *)
mov ymm24_0 ymm18_0;
mov ymm24_1 ymm18_1;
mov ymm24_2 ymm18_2;
mov ymm24_3 ymm18_3;
(* vmovdqa64 %ymm2,%ymm19                          #! PC = 0x555555580b58 *)
mov ymm19_0 ymm2_0;
mov ymm19_1 ymm2_1;
mov ymm19_2 ymm2_2;
mov ymm19_3 ymm2_3;
(* vpternlogq $0x96,%ymm0,%ymm16,%ymm19            #! PC = 0x555555580b5e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm16_0, ymm0_0, table);
call vpternlogq64 (ymm19_1, ymm16_1, ymm0_1, table);
call vpternlogq64 (ymm19_2, ymm16_2, ymm0_2, table);
call vpternlogq64 (ymm19_3, ymm16_3, ymm0_3, table);
(* vmovdqa64 %ymm15,%ymm22                         #! PC = 0x555555580b65 *)
mov ymm22_0 ymm15_0;
mov ymm22_1 ymm15_1;
mov ymm22_2 ymm15_2;
mov ymm22_3 ymm15_3;
(* vpternlogq $0xd2,%ymm12,%ymm23,%ymm24           #! PC = 0x555555580b6b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm23_0, ymm12_0, table);
call vpternlogq64 (ymm24_1, ymm23_1, ymm12_1, table);
call vpternlogq64 (ymm24_2, ymm23_2, ymm12_2, table);
call vpternlogq64 (ymm24_3, ymm23_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm18,%ymm28           #! PC = 0x555555580b72 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm18_0, ymm23_0, table);
call vpternlogq64 (ymm28_1, ymm18_1, ymm23_1, table);
call vpternlogq64 (ymm28_2, ymm18_2, ymm23_2, table);
call vpternlogq64 (ymm28_3, ymm18_3, ymm23_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm12,%ymm23            #! PC = 0x555555580b79 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm12_0, ymm9_0, table);
call vpternlogq64 (ymm23_1, ymm12_1, ymm9_1, table);
call vpternlogq64 (ymm23_2, ymm12_2, ymm9_2, table);
call vpternlogq64 (ymm23_3, ymm12_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm23,%ymm10,%ymm19           #! PC = 0x555555580b80 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm10_0, ymm23_0, table);
call vpternlogq64 (ymm19_1, ymm10_1, ymm23_1, table);
call vpternlogq64 (ymm19_2, ymm10_2, ymm23_2, table);
call vpternlogq64 (ymm19_3, ymm10_3, ymm23_3, table);
(* vprolq $0x1,%ymm19,%ymm29                       #! PC = 0x555555580b87 *)
rol ymm29_0 ymm19_0 0x1;
rol ymm29_1 ymm19_1 0x1;
rol ymm29_2 ymm19_2 0x1;
rol ymm29_3 ymm19_3 0x1;
(* vpternlogq $0xd2,%ymm1,%ymm9,%ymm12             #! PC = 0x555555580b8e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
call vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
call vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
call vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm1,%ymm9             #! PC = 0x555555580b95 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm1_0, ymm18_0, table);
call vpternlogq64 (ymm9_1, ymm1_1, ymm18_1, table);
call vpternlogq64 (ymm9_2, ymm1_2, ymm18_2, table);
call vpternlogq64 (ymm9_3, ymm1_3, ymm18_3, table);
(* vmovdqa %ymm5,%ymm1                             #! PC = 0x555555580b9c *)
mov ymm1_0 ymm5_0;
mov ymm1_1 ymm5_1;
mov ymm1_2 ymm5_2;
mov ymm1_3 ymm5_3;
(* vpternlogq $0x96,%ymm7,%ymm17,%ymm1             #! PC = 0x555555580ba0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm1_0, ymm17_0, ymm7_0, table);
call vpternlogq64 (ymm1_1, ymm17_1, ymm7_1, table);
call vpternlogq64 (ymm1_2, ymm17_2, ymm7_2, table);
call vpternlogq64 (ymm1_3, ymm17_3, ymm7_3, table);
(* vpternlogq $0x96,%ymm12,%ymm4,%ymm1             #! PC = 0x555555580ba7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm1_0, ymm4_0, ymm12_0, table);
call vpternlogq64 (ymm1_1, ymm4_1, ymm12_1, table);
call vpternlogq64 (ymm1_2, ymm4_2, ymm12_2, table);
call vpternlogq64 (ymm1_3, ymm4_3, ymm12_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x555555580bae *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm1,%ymm29                        #! PC = 0x555555580bb9 *)
rol ymm29_0 ymm1_0 0x1;
rol ymm29_1 ymm1_1 0x1;
rol ymm29_2 ymm1_2 0x1;
rol ymm29_3 ymm1_3 0x1;
(* vmovdqa64 %ymm11,%ymm18                         #! PC = 0x555555580bc0 *)
mov ymm18_0 ymm11_0;
mov ymm18_1 ymm11_1;
mov ymm18_2 ymm11_2;
mov ymm18_3 ymm11_3;
(* vpternlogq $0x96,%ymm14,%ymm27,%ymm18           #! PC = 0x555555580bc6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm27_0, ymm14_0, table);
call vpternlogq64 (ymm18_1, ymm27_1, ymm14_1, table);
call vpternlogq64 (ymm18_2, ymm27_2, ymm14_2, table);
call vpternlogq64 (ymm18_3, ymm27_3, ymm14_3, table);
(* vpternlogq $0x96,%ymm9,%ymm3,%ymm18             #! PC = 0x555555580bcd *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm3_0, ymm9_0, table);
call vpternlogq64 (ymm18_1, ymm3_1, ymm9_1, table);
call vpternlogq64 (ymm18_2, ymm3_2, ymm9_2, table);
call vpternlogq64 (ymm18_3, ymm3_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm6,%ymm25,%ymm22            #! PC = 0x555555580bd4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm25_0, ymm6_0, table);
call vpternlogq64 (ymm22_1, ymm25_1, ymm6_1, table);
call vpternlogq64 (ymm22_2, ymm25_2, ymm6_2, table);
call vpternlogq64 (ymm22_3, ymm25_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm28,%ymm21,%ymm22           #! PC = 0x555555580bdb *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm21_0, ymm28_0, table);
call vpternlogq64 (ymm22_1, ymm21_1, ymm28_1, table);
call vpternlogq64 (ymm22_2, ymm21_2, ymm28_2, table);
call vpternlogq64 (ymm22_3, ymm21_3, ymm28_3, table);
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x555555580be2 *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm18,%ymm29                       #! PC = 0x555555580bed *)
rol ymm29_0 ymm18_0 0x1;
rol ymm29_1 ymm18_1 0x1;
rol ymm29_2 ymm18_2 0x1;
rol ymm29_3 ymm18_3 0x1;
(* vmovdqa64 %ymm26,%ymm20                         #! PC = 0x555555580bf4 *)
mov ymm20_0 ymm26_0;
mov ymm20_1 ymm26_1;
mov ymm20_2 ymm26_2;
mov ymm20_3 ymm26_3;
(* vpternlogq $0x96,%ymm8,%ymm31,%ymm20            #! PC = 0x555555580bfa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm31_0, ymm8_0, table);
call vpternlogq64 (ymm20_1, ymm31_1, ymm8_1, table);
call vpternlogq64 (ymm20_2, ymm31_2, ymm8_2, table);
call vpternlogq64 (ymm20_3, ymm31_3, ymm8_3, table);
(* vpternlogq $0x96,%ymm24,%ymm13,%ymm20           #! PC = 0x555555580c01 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm13_0, ymm24_0, table);
call vpternlogq64 (ymm20_1, ymm13_1, ymm24_1, table);
call vpternlogq64 (ymm20_2, ymm13_2, ymm24_2, table);
call vpternlogq64 (ymm20_3, ymm13_3, ymm24_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x555555580c08 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* movabs $0x8000000000008089,%r8                  #! PC = 0x555555580c0f *)
mov r8 0x8000000000008089@uint64;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555580c19 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580c24 *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x88(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd960; Value = 0x43077185dbc704ac; PC = 0x555555580c2b *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd960;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd968;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd970;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd978;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0x33ca9af1bd74100e; PC = 0x555555580c36 *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* vpxorq 0x48(%rsp),%ymm19,%ymm19                 #! EA = L0x7fffffffd920; Value = 0xd2309f42d8de4958; PC = 0x555555580c41 *)
xor ymm19_0@uint64 ymm19_0 L0x7fffffffd920;
xor ymm19_1@uint64 ymm19_1 L0x7fffffffd928;
xor ymm19_2@uint64 ymm19_2 L0x7fffffffd930;
xor ymm19_3@uint64 ymm19_3 L0x7fffffffd938;
(* vpxorq %ymm22,%ymm31,%ymm31                     #! PC = 0x555555580c4c *)
xor ymm31_0@uint64 ymm31_0 ymm22_0;
xor ymm31_1@uint64 ymm31_1 ymm22_1;
xor ymm31_2@uint64 ymm31_2 ymm22_2;
xor ymm31_3@uint64 ymm31_3 ymm22_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580c52 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm1,%ymm29,%ymm29                      #! PC = 0x555555580c59 *)
xor ymm29_0@uint64 ymm29_0 ymm1_0;
xor ymm29_1@uint64 ymm29_1 ymm1_1;
xor ymm29_2@uint64 ymm29_2 ymm1_2;
xor ymm29_3@uint64 ymm29_3 ymm1_3;
(* vpxorq %ymm20,%ymm0,%ymm0                       #! PC = 0x555555580c5f *)
xor ymm0_0@uint64 ymm0_0 ymm20_0;
xor ymm0_1@uint64 ymm0_1 ymm20_1;
xor ymm0_2@uint64 ymm0_2 ymm20_2;
xor ymm0_3@uint64 ymm0_3 ymm20_3;
(* vpxorq %ymm19,%ymm4,%ymm4                       #! PC = 0x555555580c65 *)
xor ymm4_0@uint64 ymm4_0 ymm19_0;
xor ymm4_1@uint64 ymm4_1 ymm19_1;
xor ymm4_2@uint64 ymm4_2 ymm19_2;
xor ymm4_3@uint64 ymm4_3 ymm19_3;
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x555555580c6b *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vprorq $0x15,%ymm0,%ymm0                        #! PC = 0x555555580c71 *)
ror ymm0_0 ymm0_0 0x15;
ror ymm0_1 ymm0_1 0x15;
ror ymm0_2 ymm0_2 0x15;
ror ymm0_3 ymm0_3 0x15;
(* vprolq $0x15,%ymm4,%ymm4                        #! PC = 0x555555580c78 *)
rol ymm4_0 ymm4_0 0x15;
rol ymm4_1 ymm4_1 0x15;
rol ymm4_2 ymm4_2 0x15;
rol ymm4_3 ymm4_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x555555580c7f *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxorq %ymm18,%ymm30,%ymm30                     #! PC = 0x555555580c86 *)
xor ymm30_0@uint64 ymm30_0 ymm18_0;
xor ymm30_1@uint64 ymm30_1 ymm18_1;
xor ymm30_2@uint64 ymm30_2 ymm18_2;
xor ymm30_3@uint64 ymm30_3 ymm18_3;
(* vpxorq %ymm15,%ymm30,%ymm1                      #! PC = 0x555555580c8c *)
xor ymm1_0@uint64 ymm30_0 ymm15_0;
xor ymm1_1@uint64 ymm30_1 ymm15_1;
xor ymm1_2@uint64 ymm30_2 ymm15_2;
xor ymm1_3@uint64 ymm30_3 ymm15_3;
(* vmovdqa64 %ymm1,%ymm18                          #! PC = 0x555555580c92 *)
mov ymm18_0 ymm1_0;
mov ymm18_1 ymm1_1;
mov ymm18_2 ymm1_2;
mov ymm18_3 ymm1_3;
(* vmovdqa64 %ymm31,%ymm15                         #! PC = 0x555555580c98 *)
mov ymm15_0 ymm31_0;
mov ymm15_1 ymm31_1;
mov ymm15_2 ymm31_2;
mov ymm15_3 ymm31_3;
(* vpternlogq $0xd2,%ymm4,%ymm0,%ymm15             #! PC = 0x555555580c9e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm0_0, ymm4_0, table);
call vpternlogq64 (ymm15_1, ymm0_1, ymm4_1, table);
call vpternlogq64 (ymm15_2, ymm0_2, ymm4_2, table);
call vpternlogq64 (ymm15_3, ymm0_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm0,%ymm31,%ymm18            #! PC = 0x555555580ca5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm31_0, ymm0_0, table);
call vpternlogq64 (ymm18_1, ymm31_1, ymm0_1, table);
call vpternlogq64 (ymm18_2, ymm31_2, ymm0_2, table);
call vpternlogq64 (ymm18_3, ymm31_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm4,%ymm0              #! PC = 0x555555580cac *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm4_0, ymm9_0, table);
call vpternlogq64 (ymm0_1, ymm4_1, ymm9_1, table);
call vpternlogq64 (ymm0_2, ymm4_2, ymm9_2, table);
call vpternlogq64 (ymm0_3, ymm4_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm9,%ymm4              #! PC = 0x555555580cb3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm9_0, ymm1_0, table);
call vpternlogq64 (ymm4_1, ymm9_1, ymm1_1, table);
call vpternlogq64 (ymm4_2, ymm9_2, ymm1_2, table);
call vpternlogq64 (ymm4_3, ymm9_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm1,%ymm9             #! PC = 0x555555580cba *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm1_0, ymm31_0, table);
call vpternlogq64 (ymm9_1, ymm1_1, ymm31_1, table);
call vpternlogq64 (ymm9_2, ymm1_2, ymm31_2, table);
call vpternlogq64 (ymm9_3, ymm1_3, ymm31_3, table);
(* vpbroadcastq %r10,%ymm1                         #! PC = 0x555555580cc1 *)
mov ymm1_0 r10;
mov ymm1_1 r10;
mov ymm1_2 r10;
mov ymm1_3 r10;
(* vpxorq %ymm1,%ymm18,%ymm18                      #! PC = 0x555555580cc7 *)
xor ymm18_0@uint64 ymm18_0 ymm1_0;
xor ymm18_1@uint64 ymm18_1 ymm1_1;
xor ymm18_2@uint64 ymm18_2 ymm1_2;
xor ymm18_3@uint64 ymm18_3 ymm1_3;
(* vpxorq %ymm19,%ymm5,%ymm5                       #! PC = 0x555555580ccd *)
xor ymm5_0@uint64 ymm5_0 ymm19_0;
xor ymm5_1@uint64 ymm5_1 ymm19_1;
xor ymm5_2@uint64 ymm5_2 ymm19_2;
xor ymm5_3@uint64 ymm5_3 ymm19_3;
(* vpxorq %ymm29,%ymm27,%ymm1                      #! PC = 0x555555580cd3 *)
xor ymm1_0@uint64 ymm27_0 ymm29_0;
xor ymm1_1@uint64 ymm27_1 ymm29_1;
xor ymm1_2@uint64 ymm27_2 ymm29_2;
xor ymm1_3@uint64 ymm27_3 ymm29_3;
(* vprolq $0x1c,%ymm5,%ymm5                        #! PC = 0x555555580cd9 *)
rol ymm5_0 ymm5_0 0x1c;
rol ymm5_1 ymm5_1 0x1c;
rol ymm5_2 ymm5_2 0x1c;
rol ymm5_3 ymm5_3 0x1c;
(* vprolq $0x14,%ymm1,%ymm1                        #! PC = 0x555555580ce0 *)
rol ymm1_0 ymm1_0 0x14;
rol ymm1_1 ymm1_1 0x14;
rol ymm1_2 ymm1_2 0x14;
rol ymm1_3 ymm1_3 0x14;
(* vpxorq %ymm30,%ymm6,%ymm6                       #! PC = 0x555555580ce7 *)
xor ymm6_0@uint64 ymm6_0 ymm30_0;
xor ymm6_1@uint64 ymm6_1 ymm30_1;
xor ymm6_2@uint64 ymm6_2 ymm30_2;
xor ymm6_3@uint64 ymm6_3 ymm30_3;
(* vpxorq %ymm22,%ymm13,%ymm13                     #! PC = 0x555555580ced *)
xor ymm13_0@uint64 ymm13_0 ymm22_0;
xor ymm13_1@uint64 ymm13_1 ymm22_1;
xor ymm13_2@uint64 ymm13_2 ymm22_2;
xor ymm13_3@uint64 ymm13_3 ymm22_3;
(* vpxorq %ymm20,%ymm23,%ymm23                     #! PC = 0x555555580cf3 *)
xor ymm23_0@uint64 ymm23_0 ymm20_0;
xor ymm23_1@uint64 ymm23_1 ymm20_1;
xor ymm23_2@uint64 ymm23_2 ymm20_2;
xor ymm23_3@uint64 ymm23_3 ymm20_3;
(* vprolq $0x3,%ymm6,%ymm6                         #! PC = 0x555555580cf9 *)
rol ymm6_0 ymm6_0 0x3;
rol ymm6_1 ymm6_1 0x3;
rol ymm6_2 ymm6_2 0x3;
rol ymm6_3 ymm6_3 0x3;
(* vprorq $0x13,%ymm13,%ymm13                      #! PC = 0x555555580d00 *)
ror ymm13_0 ymm13_0 0x13;
ror ymm13_1 ymm13_1 0x13;
ror ymm13_2 ymm13_2 0x13;
ror ymm13_3 ymm13_3 0x13;
(* vprorq $0x3,%ymm23,%ymm23                       #! PC = 0x555555580d07 *)
ror ymm23_0 ymm23_0 0x3;
ror ymm23_1 ymm23_1 0x3;
ror ymm23_2 ymm23_2 0x3;
ror ymm23_3 ymm23_3 0x3;
(* vmovdqa64 %ymm5,%ymm27                          #! PC = 0x555555580d0e *)
mov ymm27_0 ymm5_0;
mov ymm27_1 ymm5_1;
mov ymm27_2 ymm5_2;
mov ymm27_3 ymm5_3;
(* vmovdqa64 %ymm1,%ymm31                          #! PC = 0x555555580d14 *)
mov ymm31_0 ymm1_0;
mov ymm31_1 ymm1_1;
mov ymm31_2 ymm1_2;
mov ymm31_3 ymm1_3;
(* vpxorq %ymm22,%ymm26,%ymm26                     #! PC = 0x555555580d1a *)
xor ymm26_0@uint64 ymm26_0 ymm22_0;
xor ymm26_1@uint64 ymm26_1 ymm22_1;
xor ymm26_2@uint64 ymm26_2 ymm22_2;
xor ymm26_3@uint64 ymm26_3 ymm22_3;
(* vpxorq %ymm20,%ymm16,%ymm16                     #! PC = 0x555555580d20 *)
xor ymm16_0@uint64 ymm16_0 ymm20_0;
xor ymm16_1@uint64 ymm16_1 ymm20_1;
xor ymm16_2@uint64 ymm16_2 ymm20_2;
xor ymm16_3@uint64 ymm16_3 ymm20_3;
(* vprolq $0x1,%ymm26,%ymm26                       #! PC = 0x555555580d26 *)
rol ymm26_0 ymm26_0 0x1;
rol ymm26_1 ymm26_1 0x1;
rol ymm26_2 ymm26_2 0x1;
rol ymm26_3 ymm26_3 0x1;
(* vprolq $0x6,%ymm16,%ymm16                       #! PC = 0x555555580d2d *)
rol ymm16_0 ymm16_0 0x6;
rol ymm16_1 ymm16_1 0x6;
rol ymm16_2 ymm16_2 0x6;
rol ymm16_3 ymm16_3 0x6;
(* vpternlogq $0xd2,%ymm6,%ymm1,%ymm27             #! PC = 0x555555580d34 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm1_0, ymm6_0, table);
call vpternlogq64 (ymm27_1, ymm1_1, ymm6_1, table);
call vpternlogq64 (ymm27_2, ymm1_2, ymm6_2, table);
call vpternlogq64 (ymm27_3, ymm1_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm6,%ymm31            #! PC = 0x555555580d3b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm6_0, ymm13_0, table);
call vpternlogq64 (ymm31_1, ymm6_1, ymm13_1, table);
call vpternlogq64 (ymm31_2, ymm6_2, ymm13_2, table);
call vpternlogq64 (ymm31_3, ymm6_3, ymm13_3, table);
(* vpxorq %ymm30,%ymm28,%ymm28                     #! PC = 0x555555580d42 *)
xor ymm28_0@uint64 ymm28_0 ymm30_0;
xor ymm28_1@uint64 ymm28_1 ymm30_1;
xor ymm28_2@uint64 ymm28_2 ymm30_2;
xor ymm28_3@uint64 ymm28_3 ymm30_3;
(* vpternlogq $0xd2,%ymm23,%ymm13,%ymm6            #! PC = 0x555555580d48 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm13_0, ymm23_0, table);
call vpternlogq64 (ymm6_1, ymm13_1, ymm23_1, table);
call vpternlogq64 (ymm6_2, ymm13_2, ymm23_2, table);
call vpternlogq64 (ymm6_3, ymm13_3, ymm23_3, table);
(* vpxorq %ymm29,%ymm3,%ymm3                       #! PC = 0x555555580d4f *)
xor ymm3_0@uint64 ymm3_0 ymm29_0;
xor ymm3_1@uint64 ymm3_1 ymm29_1;
xor ymm3_2@uint64 ymm3_2 ymm29_2;
xor ymm3_3@uint64 ymm3_3 ymm29_3;
(* vpternlogq $0xd2,%ymm5,%ymm23,%ymm13            #! PC = 0x555555580d55 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm23_0, ymm5_0, table);
call vpternlogq64 (ymm13_1, ymm23_1, ymm5_1, table);
call vpternlogq64 (ymm13_2, ymm23_2, ymm5_2, table);
call vpternlogq64 (ymm13_3, ymm23_3, ymm5_3, table);
(* vpxorq %ymm30,%ymm25,%ymm25                     #! PC = 0x555555580d5c *)
xor ymm25_0@uint64 ymm25_0 ymm30_0;
xor ymm25_1@uint64 ymm25_1 ymm30_1;
xor ymm25_2@uint64 ymm25_2 ymm30_2;
xor ymm25_3@uint64 ymm25_3 ymm30_3;
(* vpternlogq $0xd2,%ymm1,%ymm5,%ymm23             #! PC = 0x555555580d62 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm5_0, ymm1_0, table);
call vpternlogq64 (ymm23_1, ymm5_1, ymm1_1, table);
call vpternlogq64 (ymm23_2, ymm5_2, ymm1_2, table);
call vpternlogq64 (ymm23_3, ymm5_3, ymm1_3, table);
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x555555580d69 *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vpxorq %ymm19,%ymm7,%ymm1                       #! PC = 0x555555580d6f *)
xor ymm1_0@uint64 ymm7_0 ymm19_0;
xor ymm1_1@uint64 ymm7_1 ymm19_1;
xor ymm1_2@uint64 ymm7_2 ymm19_2;
xor ymm1_3@uint64 ymm7_3 ymm19_3;
(* vprorq $0x1c,%ymm25,%ymm25                      #! PC = 0x555555580d75 *)
ror ymm25_0 ymm25_0 0x1c;
ror ymm25_1 ymm25_1 0x1c;
ror ymm25_2 ymm25_2 0x1c;
ror ymm25_3 ymm25_3 0x1c;
(* vprolq $0x1b,%ymm11,%ymm11                      #! PC = 0x555555580d7c *)
rol ymm11_0 ymm11_0 0x1b;
rol ymm11_1 ymm11_1 0x1b;
rol ymm11_2 ymm11_2 0x1b;
rol ymm11_3 ymm11_3 0x1b;
(* vprolq $0x12,%ymm28,%ymm28                      #! PC = 0x555555580d83 *)
rol ymm28_0 ymm28_0 0x12;
rol ymm28_1 ymm28_1 0x12;
rol ymm28_2 ymm28_2 0x12;
rol ymm28_3 ymm28_3 0x12;
(* vprolq $0x19,%ymm1,%ymm1                        #! PC = 0x555555580d8a *)
rol ymm1_0 ymm1_0 0x19;
rol ymm1_1 ymm1_1 0x19;
rol ymm1_2 ymm1_2 0x19;
rol ymm1_3 ymm1_3 0x19;
(* vprolq $0x8,%ymm3,%ymm3                         #! PC = 0x555555580d91 *)
rol ymm3_0 ymm3_0 0x8;
rol ymm3_1 ymm3_1 0x8;
rol ymm3_2 ymm3_2 0x8;
rol ymm3_3 ymm3_3 0x8;
(* vpxorq %ymm22,%ymm8,%ymm8                       #! PC = 0x555555580d98 *)
xor ymm8_0@uint64 ymm8_0 ymm22_0;
xor ymm8_1@uint64 ymm8_1 ymm22_1;
xor ymm8_2@uint64 ymm8_2 ymm22_2;
xor ymm8_3@uint64 ymm8_3 ymm22_3;
(* vpxorq %ymm20,%ymm10,%ymm10                     #! PC = 0x555555580d9e *)
xor ymm10_0@uint64 ymm10_0 ymm20_0;
xor ymm10_1@uint64 ymm10_1 ymm20_1;
xor ymm10_2@uint64 ymm10_2 ymm20_2;
xor ymm10_3@uint64 ymm10_3 ymm20_3;
(* vpxorq %ymm19,%ymm12,%ymm12                     #! PC = 0x555555580da4 *)
xor ymm12_0@uint64 ymm12_0 ymm19_0;
xor ymm12_1@uint64 ymm12_1 ymm19_1;
xor ymm12_2@uint64 ymm12_2 ymm19_2;
xor ymm12_3@uint64 ymm12_3 ymm19_3;
(* vprolq $0xa,%ymm8,%ymm8                         #! PC = 0x555555580daa *)
rol ymm8_0 ymm8_0 0xa;
rol ymm8_1 ymm8_1 0xa;
rol ymm8_2 ymm8_2 0xa;
rol ymm8_3 ymm8_3 0xa;
(* vprolq $0xf,%ymm10,%ymm10                       #! PC = 0x555555580db1 *)
rol ymm10_0 ymm10_0 0xf;
rol ymm10_1 ymm10_1 0xf;
rol ymm10_2 ymm10_2 0xf;
rol ymm10_3 ymm10_3 0xf;
(* vprorq $0x8,%ymm12,%ymm12                       #! PC = 0x555555580db8 *)
ror ymm12_0 ymm12_0 0x8;
ror ymm12_1 ymm12_1 0x8;
ror ymm12_2 ymm12_2 0x8;
ror ymm12_3 ymm12_3 0x8;
(* vmovdqa64 %ymm26,%ymm5                          #! PC = 0x555555580dbf *)
mov ymm5_0 ymm26_0;
mov ymm5_1 ymm26_1;
mov ymm5_2 ymm26_2;
mov ymm5_3 ymm26_3;
(* vmovdqa64 %ymm16,%ymm7                          #! PC = 0x555555580dc5 *)
mov ymm7_0 ymm16_0;
mov ymm7_1 ymm16_1;
mov ymm7_2 ymm16_2;
mov ymm7_3 ymm16_3;
(* vpternlogq $0xd2,%ymm1,%ymm16,%ymm5             #! PC = 0x555555580dcb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm16_0, ymm1_0, table);
call vpternlogq64 (ymm5_1, ymm16_1, ymm1_1, table);
call vpternlogq64 (ymm5_2, ymm16_2, ymm1_2, table);
call vpternlogq64 (ymm5_3, ymm16_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm1,%ymm7              #! PC = 0x555555580dd2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm1_0, ymm3_0, table);
call vpternlogq64 (ymm7_1, ymm1_1, ymm3_1, table);
call vpternlogq64 (ymm7_2, ymm1_2, ymm3_2, table);
call vpternlogq64 (ymm7_3, ymm1_3, ymm3_3, table);
(* vpxorq %ymm20,%ymm2,%ymm2                       #! PC = 0x555555580dd9 *)
xor ymm2_0@uint64 ymm2_0 ymm20_0;
xor ymm2_1@uint64 ymm2_1 ymm20_1;
xor ymm2_2@uint64 ymm2_2 ymm20_2;
xor ymm2_3@uint64 ymm2_3 ymm20_3;
(* vpternlogq $0xd2,%ymm28,%ymm3,%ymm1             #! PC = 0x555555580ddf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm3_0, ymm28_0, table);
call vpternlogq64 (ymm1_1, ymm3_1, ymm28_1, table);
call vpternlogq64 (ymm1_2, ymm3_2, ymm28_2, table);
call vpternlogq64 (ymm1_3, ymm3_3, ymm28_3, table);
(* vpxorq %ymm19,%ymm17,%ymm17                     #! PC = 0x555555580de6 *)
xor ymm17_0@uint64 ymm17_0 ymm19_0;
xor ymm17_1@uint64 ymm17_1 ymm19_1;
xor ymm17_2@uint64 ymm17_2 ymm19_2;
xor ymm17_3@uint64 ymm17_3 ymm19_3;
(* vpternlogq $0xd2,%ymm26,%ymm28,%ymm3            #! PC = 0x555555580dec *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm28_0, ymm26_0, table);
call vpternlogq64 (ymm3_1, ymm28_1, ymm26_1, table);
call vpternlogq64 (ymm3_2, ymm28_2, ymm26_2, table);
call vpternlogq64 (ymm3_3, ymm28_3, ymm26_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm26,%ymm28           #! PC = 0x555555580df3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm26_0, ymm16_0, table);
call vpternlogq64 (ymm28_1, ymm26_1, ymm16_1, table);
call vpternlogq64 (ymm28_2, ymm26_2, ymm16_2, table);
call vpternlogq64 (ymm28_3, ymm26_3, ymm16_3, table);
(* vmovdqa64 %ymm11,%ymm26                         #! PC = 0x555555580dfa *)
mov ymm26_0 ymm11_0;
mov ymm26_1 ymm11_1;
mov ymm26_2 ymm11_2;
mov ymm26_3 ymm11_3;
(* vmovdqa64 %ymm25,%ymm16                         #! PC = 0x555555580e00 *)
mov ymm16_0 ymm25_0;
mov ymm16_1 ymm25_1;
mov ymm16_2 ymm25_2;
mov ymm16_3 ymm25_3;
(* vprorq $0x2,%ymm2,%ymm2                         #! PC = 0x555555580e06 *)
ror ymm2_0 ymm2_0 0x2;
ror ymm2_1 ymm2_1 0x2;
ror ymm2_2 ymm2_2 0x2;
ror ymm2_3 ymm2_3 0x2;
(* vprorq $0x9,%ymm17,%ymm17                       #! PC = 0x555555580e0d *)
ror ymm17_0 ymm17_0 0x9;
ror ymm17_1 ymm17_1 0x9;
ror ymm17_2 ymm17_2 0x9;
ror ymm17_3 ymm17_3 0x9;
(* vpternlogq $0xd2,%ymm8,%ymm25,%ymm26            #! PC = 0x555555580e14 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm25_0, ymm8_0, table);
call vpternlogq64 (ymm26_1, ymm25_1, ymm8_1, table);
call vpternlogq64 (ymm26_2, ymm25_2, ymm8_2, table);
call vpternlogq64 (ymm26_3, ymm25_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm8,%ymm16            #! PC = 0x555555580e1b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm8_0, ymm10_0, table);
call vpternlogq64 (ymm16_1, ymm8_1, ymm10_1, table);
call vpternlogq64 (ymm16_2, ymm8_2, ymm10_2, table);
call vpternlogq64 (ymm16_3, ymm8_3, ymm10_3, table);
(* vpxorq %ymm30,%ymm21,%ymm21                     #! PC = 0x555555580e22 *)
xor ymm21_0@uint64 ymm21_0 ymm30_0;
xor ymm21_1@uint64 ymm21_1 ymm30_1;
xor ymm21_2@uint64 ymm21_2 ymm30_2;
xor ymm21_3@uint64 ymm21_3 ymm30_3;
(* vpternlogq $0xd2,%ymm12,%ymm10,%ymm8            #! PC = 0x555555580e28 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm10_0, ymm12_0, table);
call vpternlogq64 (ymm8_1, ymm10_1, ymm12_1, table);
call vpternlogq64 (ymm8_2, ymm10_2, ymm12_2, table);
call vpternlogq64 (ymm8_3, ymm10_3, ymm12_3, table);
(* vpxorq %ymm29,%ymm14,%ymm14                     #! PC = 0x555555580e2f *)
xor ymm14_0@uint64 ymm14_0 ymm29_0;
xor ymm14_1@uint64 ymm14_1 ymm29_1;
xor ymm14_2@uint64 ymm14_2 ymm29_2;
xor ymm14_3@uint64 ymm14_3 ymm29_3;
(* vpternlogq $0xd2,%ymm11,%ymm12,%ymm10           #! PC = 0x555555580e35 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm12_0, ymm11_0, table);
call vpternlogq64 (ymm10_1, ymm12_1, ymm11_1, table);
call vpternlogq64 (ymm10_2, ymm12_2, ymm11_2, table);
call vpternlogq64 (ymm10_3, ymm12_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm11,%ymm12           #! PC = 0x555555580e3c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm11_0, ymm25_0, table);
call vpternlogq64 (ymm12_1, ymm11_1, ymm25_1, table);
call vpternlogq64 (ymm12_2, ymm11_2, ymm25_2, table);
call vpternlogq64 (ymm12_3, ymm11_3, ymm25_3, table);
(* vpxorq %ymm22,%ymm24,%ymm11                     #! PC = 0x555555580e43 *)
xor ymm11_0@uint64 ymm24_0 ymm22_0;
xor ymm11_1@uint64 ymm24_1 ymm22_1;
xor ymm11_2@uint64 ymm24_2 ymm22_2;
xor ymm11_3@uint64 ymm24_3 ymm22_3;
(* vprorq $0x17,%ymm21,%ymm21                      #! PC = 0x555555580e49 *)
ror ymm21_0 ymm21_0 0x17;
ror ymm21_1 ymm21_1 0x17;
ror ymm21_2 ymm21_2 0x17;
ror ymm21_3 ymm21_3 0x17;
(* vprolq $0x2,%ymm11,%ymm11                       #! PC = 0x555555580e50 *)
rol ymm11_0 ymm11_0 0x2;
rol ymm11_1 ymm11_1 0x2;
rol ymm11_2 ymm11_2 0x2;
rol ymm11_3 ymm11_3 0x2;
(* vprorq $0x19,%ymm14,%ymm14                      #! PC = 0x555555580e57 *)
ror ymm14_0 ymm14_0 0x19;
ror ymm14_1 ymm14_1 0x19;
ror ymm14_2 ymm14_2 0x19;
ror ymm14_3 ymm14_3 0x19;
(* vmovdqa64 %ymm2,%ymm19                          #! PC = 0x555555580e5e *)
mov ymm19_0 ymm2_0;
mov ymm19_1 ymm2_1;
mov ymm19_2 ymm2_2;
mov ymm19_3 ymm2_3;
(* vmovdqa64 %ymm17,%ymm25                         #! PC = 0x555555580e64 *)
mov ymm25_0 ymm17_0;
mov ymm25_1 ymm17_1;
mov ymm25_2 ymm17_2;
mov ymm25_3 ymm17_3;
(* vmovdqa64 %ymm12,%ymm22                         #! PC = 0x555555580e6a *)
mov ymm22_0 ymm12_0;
mov ymm22_1 ymm12_1;
mov ymm22_2 ymm12_2;
mov ymm22_3 ymm12_3;
(* vmovdqa64 %ymm18,%ymm24                         #! PC = 0x555555580e70 *)
mov ymm24_0 ymm18_0;
mov ymm24_1 ymm18_1;
mov ymm24_2 ymm18_2;
mov ymm24_3 ymm18_3;
(* vpternlogq $0x96,%ymm27,%ymm26,%ymm24           #! PC = 0x555555580e76 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm26_0, ymm27_0, table);
call vpternlogq64 (ymm24_1, ymm26_1, ymm27_1, table);
call vpternlogq64 (ymm24_2, ymm26_2, ymm27_2, table);
call vpternlogq64 (ymm24_3, ymm26_3, ymm27_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm14,%ymm25           #! PC = 0x555555580e7d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm14_0, ymm21_0, table);
call vpternlogq64 (ymm25_1, ymm14_1, ymm21_1, table);
call vpternlogq64 (ymm25_2, ymm14_2, ymm21_2, table);
call vpternlogq64 (ymm25_3, ymm14_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm17,%ymm19           #! PC = 0x555555580e84 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm17_0, ymm14_0, table);
call vpternlogq64 (ymm19_1, ymm17_1, ymm14_1, table);
call vpternlogq64 (ymm19_2, ymm17_2, ymm14_2, table);
call vpternlogq64 (ymm19_3, ymm17_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm21,%ymm14           #! PC = 0x555555580e8b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm21_0, ymm11_0, table);
call vpternlogq64 (ymm14_1, ymm21_1, ymm11_1, table);
call vpternlogq64 (ymm14_2, ymm21_2, ymm11_2, table);
call vpternlogq64 (ymm14_3, ymm21_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm11,%ymm21            #! PC = 0x555555580e92 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm11_0, ymm2_0, table);
call vpternlogq64 (ymm21_1, ymm11_1, ymm2_1, table);
call vpternlogq64 (ymm21_2, ymm11_2, ymm2_2, table);
call vpternlogq64 (ymm21_3, ymm11_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm2,%ymm11            #! PC = 0x555555580e99 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm2_0, ymm17_0, table);
call vpternlogq64 (ymm11_1, ymm2_1, ymm17_1, table);
call vpternlogq64 (ymm11_2, ymm2_2, ymm17_2, table);
call vpternlogq64 (ymm11_3, ymm2_3, ymm17_3, table);
(* vmovdqa64 %ymm14,%ymm17                         #! PC = 0x555555580ea0 *)
mov ymm17_0 ymm14_0;
mov ymm17_1 ymm14_1;
mov ymm17_2 ymm14_2;
mov ymm17_3 ymm14_3;
(* vpternlogq $0x96,%ymm0,%ymm1,%ymm17             #! PC = 0x555555580ea6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm17_0, ymm1_0, ymm0_0, table);
call vpternlogq64 (ymm17_1, ymm1_1, ymm0_1, table);
call vpternlogq64 (ymm17_2, ymm1_2, ymm0_2, table);
call vpternlogq64 (ymm17_3, ymm1_3, ymm0_3, table);
(* vpternlogq $0x96,%ymm6,%ymm8,%ymm17             #! PC = 0x555555580ead *)
mov table 0x96@uint8;
call vpternlogq64 (ymm17_0, ymm8_0, ymm6_0, table);
call vpternlogq64 (ymm17_1, ymm8_1, ymm6_1, table);
call vpternlogq64 (ymm17_2, ymm8_2, ymm6_2, table);
call vpternlogq64 (ymm17_3, ymm8_3, ymm6_3, table);
(* vprolq $0x1,%ymm17,%ymm29                       #! PC = 0x555555580eb4 *)
rol ymm29_0 ymm17_0 0x1;
rol ymm29_1 ymm17_1 0x1;
rol ymm29_2 ymm17_2 0x1;
rol ymm29_3 ymm17_3 0x1;
(* vmovdqa %ymm13,%ymm2                            #! PC = 0x555555580ebb *)
mov ymm2_0 ymm13_0;
mov ymm2_1 ymm13_1;
mov ymm2_2 ymm13_2;
mov ymm2_3 ymm13_3;
(* vpternlogq $0x96,%ymm3,%ymm21,%ymm2             #! PC = 0x555555580ebf *)
mov table 0x96@uint8;
call vpternlogq64 (ymm2_0, ymm21_0, ymm3_0, table);
call vpternlogq64 (ymm2_1, ymm21_1, ymm3_1, table);
call vpternlogq64 (ymm2_2, ymm21_2, ymm3_2, table);
call vpternlogq64 (ymm2_3, ymm21_3, ymm3_3, table);
(* vpternlogq $0x96,%ymm10,%ymm4,%ymm2             #! PC = 0x555555580ec6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm2_0, ymm4_0, ymm10_0, table);
call vpternlogq64 (ymm2_1, ymm4_1, ymm10_1, table);
call vpternlogq64 (ymm2_2, ymm4_2, ymm10_2, table);
call vpternlogq64 (ymm2_3, ymm4_3, ymm10_3, table);
(* vpternlogq $0x96,%ymm11,%ymm23,%ymm22           #! PC = 0x555555580ecd *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm23_0, ymm11_0, table);
call vpternlogq64 (ymm22_1, ymm23_1, ymm11_1, table);
call vpternlogq64 (ymm22_2, ymm23_2, ymm11_2, table);
call vpternlogq64 (ymm22_3, ymm23_3, ymm11_3, table);
(* vpternlogq $0x96,%ymm9,%ymm28,%ymm22            #! PC = 0x555555580ed4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm28_0, ymm9_0, table);
call vpternlogq64 (ymm22_1, ymm28_1, ymm9_1, table);
call vpternlogq64 (ymm22_2, ymm28_2, ymm9_2, table);
call vpternlogq64 (ymm22_3, ymm28_3, ymm9_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x555555580edb *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm2,%ymm29                        #! PC = 0x555555580ee6 *)
rol ymm29_0 ymm2_0 0x1;
rol ymm29_1 ymm2_1 0x1;
rol ymm29_2 ymm2_2 0x1;
rol ymm29_3 ymm2_3 0x1;
(* vpternlogq $0x96,%ymm5,%ymm19,%ymm24            #! PC = 0x555555580eed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm19_0, ymm5_0, table);
call vpternlogq64 (ymm24_1, ymm19_1, ymm5_1, table);
call vpternlogq64 (ymm24_2, ymm19_2, ymm5_2, table);
call vpternlogq64 (ymm24_3, ymm19_3, ymm5_3, table);
(* vmovdqa64 %ymm7,%ymm20                          #! PC = 0x555555580ef4 *)
mov ymm20_0 ymm7_0;
mov ymm20_1 ymm7_1;
mov ymm20_2 ymm7_2;
mov ymm20_3 ymm7_3;
(* vpternlogq $0x96,%ymm16,%ymm15,%ymm20           #! PC = 0x555555580efa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm15_0, ymm16_0, table);
call vpternlogq64 (ymm20_1, ymm15_1, ymm16_1, table);
call vpternlogq64 (ymm20_2, ymm15_2, ymm16_2, table);
call vpternlogq64 (ymm20_3, ymm15_3, ymm16_3, table);
(* vpternlogq $0x96,%ymm25,%ymm31,%ymm20           #! PC = 0x555555580f01 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm31_0, ymm25_0, table);
call vpternlogq64 (ymm20_1, ymm31_1, ymm25_1, table);
call vpternlogq64 (ymm20_2, ymm31_2, ymm25_2, table);
call vpternlogq64 (ymm20_3, ymm31_3, ymm25_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x555555580f08 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x555555580f0f *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580f1a *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0xe6ad94dc6224a364; PC = 0x555555580f21 *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* movabs $0x8000000000008003,%r9                  #! PC = 0x555555580f2c *)
mov r9 0x8000000000008003@uint64;
(* vpxorq %ymm20,%ymm1,%ymm1                       #! PC = 0x555555580f36 *)
xor ymm1_0@uint64 ymm1_0 ymm20_0;
xor ymm1_1@uint64 ymm1_1 ymm20_1;
xor ymm1_2@uint64 ymm1_2 ymm20_2;
xor ymm1_3@uint64 ymm1_3 ymm20_3;
(* vprorq $0x15,%ymm1,%ymm1                        #! PC = 0x555555580f3c *)
ror ymm1_0 ymm1_0 0x15;
ror ymm1_1 ymm1_1 0x15;
ror ymm1_2 ymm1_2 0x15;
ror ymm1_3 ymm1_3 0x15;
(* vpxorq %ymm22,%ymm30,%ymm30                     #! PC = 0x555555580f43 *)
xor ymm30_0@uint64 ymm30_0 ymm22_0;
xor ymm30_1@uint64 ymm30_1 ymm22_1;
xor ymm30_2@uint64 ymm30_2 ymm22_2;
xor ymm30_3@uint64 ymm30_3 ymm22_3;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555580f49 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm24,%ymm29                       #! PC = 0x555555580f54 *)
rol ymm29_0 ymm24_0 0x1;
rol ymm29_1 ymm24_1 0x1;
rol ymm29_2 ymm24_2 0x1;
rol ymm29_3 ymm24_3 0x1;
(* vpxorq 0x88(%rsp),%ymm24,%ymm24                 #! EA = L0x7fffffffd960; Value = 0xbd591f298cc9ef3c; PC = 0x555555580f5b *)
xor ymm24_0@uint64 ymm24_0 L0x7fffffffd960;
xor ymm24_1@uint64 ymm24_1 L0x7fffffffd968;
xor ymm24_2@uint64 ymm24_2 L0x7fffffffd970;
xor ymm24_3@uint64 ymm24_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm17,%ymm17                 #! EA = L0x7fffffffd920; Value = 0xcc566dd3434ad7a2; PC = 0x555555580f66 *)
xor ymm17_0@uint64 ymm17_0 L0x7fffffffd920;
xor ymm17_1@uint64 ymm17_1 L0x7fffffffd928;
xor ymm17_2@uint64 ymm17_2 L0x7fffffffd930;
xor ymm17_3@uint64 ymm17_3 L0x7fffffffd938;
(* vpxorq %ymm24,%ymm31,%ymm31                     #! PC = 0x555555580f71 *)
xor ymm31_0@uint64 ymm31_0 ymm24_0;
xor ymm31_1@uint64 ymm31_1 ymm24_1;
xor ymm31_2@uint64 ymm31_2 ymm24_2;
xor ymm31_3@uint64 ymm31_3 ymm24_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580f77 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm17,%ymm10,%ymm10                     #! PC = 0x555555580f7e *)
xor ymm10_0@uint64 ymm10_0 ymm17_0;
xor ymm10_1@uint64 ymm10_1 ymm17_1;
xor ymm10_2@uint64 ymm10_2 ymm17_2;
xor ymm10_3@uint64 ymm10_3 ymm17_3;
(* vpxorq %ymm2,%ymm29,%ymm29                      #! PC = 0x555555580f84 *)
xor ymm29_0@uint64 ymm29_0 ymm2_0;
xor ymm29_1@uint64 ymm29_1 ymm2_1;
xor ymm29_2@uint64 ymm29_2 ymm2_2;
xor ymm29_3@uint64 ymm29_3 ymm2_3;
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x555555580f8a *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vprolq $0x15,%ymm10,%ymm10                      #! PC = 0x555555580f90 *)
rol ymm10_0 ymm10_0 0x15;
rol ymm10_1 ymm10_1 0x15;
rol ymm10_2 ymm10_2 0x15;
rol ymm10_3 ymm10_3 0x15;
(* vprolq $0xe,%ymm11,%ymm11                       #! PC = 0x555555580f97 *)
rol ymm11_0 ymm11_0 0xe;
rol ymm11_1 ymm11_1 0xe;
rol ymm11_2 ymm11_2 0xe;
rol ymm11_3 ymm11_3 0xe;
(* vpxorq %ymm18,%ymm30,%ymm2                      #! PC = 0x555555580f9e *)
xor ymm2_0@uint64 ymm30_0 ymm18_0;
xor ymm2_1@uint64 ymm30_1 ymm18_1;
xor ymm2_2@uint64 ymm30_2 ymm18_2;
xor ymm2_3@uint64 ymm30_3 ymm18_3;
(* vmovdqa64 %ymm2,%ymm18                          #! PC = 0x555555580fa4 *)
mov ymm18_0 ymm2_0;
mov ymm18_1 ymm2_1;
mov ymm18_2 ymm2_2;
mov ymm18_3 ymm2_3;
(* vmovdqa64 %ymm31,%ymm22                         #! PC = 0x555555580faa *)
mov ymm22_0 ymm31_0;
mov ymm22_1 ymm31_1;
mov ymm22_2 ymm31_2;
mov ymm22_3 ymm31_3;
(* vpternlogq $0xd2,%ymm1,%ymm31,%ymm18            #! PC = 0x555555580fb0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm31_0, ymm1_0, table);
call vpternlogq64 (ymm18_1, ymm31_1, ymm1_1, table);
call vpternlogq64 (ymm18_2, ymm31_2, ymm1_2, table);
call vpternlogq64 (ymm18_3, ymm31_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm1,%ymm22            #! PC = 0x555555580fb7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm1_0, ymm10_0, table);
call vpternlogq64 (ymm22_1, ymm1_1, ymm10_1, table);
call vpternlogq64 (ymm22_2, ymm1_2, ymm10_2, table);
call vpternlogq64 (ymm22_3, ymm1_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm10,%ymm1            #! PC = 0x555555580fbe *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm1_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm1_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm1_3, ymm10_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm11,%ymm10            #! PC = 0x555555580fc5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm11_0, ymm2_0, table);
call vpternlogq64 (ymm10_1, ymm11_1, ymm2_1, table);
call vpternlogq64 (ymm10_2, ymm11_2, ymm2_2, table);
call vpternlogq64 (ymm10_3, ymm11_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm2,%ymm11            #! PC = 0x555555580fcc *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm2_0, ymm31_0, table);
call vpternlogq64 (ymm11_1, ymm2_1, ymm31_1, table);
call vpternlogq64 (ymm11_2, ymm2_2, ymm31_2, table);
call vpternlogq64 (ymm11_3, ymm2_3, ymm31_3, table);
(* vpbroadcastq %rdx,%ymm2                         #! PC = 0x555555580fd3 *)
mov ymm2_0 rdx;
mov ymm2_1 rdx;
mov ymm2_2 rdx;
mov ymm2_3 rdx;
(* vpxorq %ymm2,%ymm18,%ymm18                      #! PC = 0x555555580fd9 *)
xor ymm18_0@uint64 ymm18_0 ymm2_0;
xor ymm18_1@uint64 ymm18_1 ymm2_1;
xor ymm18_2@uint64 ymm18_2 ymm2_2;
xor ymm18_3@uint64 ymm18_3 ymm2_3;
(* vpxorq %ymm17,%ymm4,%ymm4                       #! PC = 0x555555580fdf *)
xor ymm4_0@uint64 ymm4_0 ymm17_0;
xor ymm4_1@uint64 ymm4_1 ymm17_1;
xor ymm4_2@uint64 ymm4_2 ymm17_2;
xor ymm4_3@uint64 ymm4_3 ymm17_3;
(* vpxorq %ymm29,%ymm23,%ymm2                      #! PC = 0x555555580fe5 *)
xor ymm2_0@uint64 ymm23_0 ymm29_0;
xor ymm2_1@uint64 ymm23_1 ymm29_1;
xor ymm2_2@uint64 ymm23_2 ymm29_2;
xor ymm2_3@uint64 ymm23_3 ymm29_3;
(* vprolq $0x1c,%ymm4,%ymm4                        #! PC = 0x555555580feb *)
rol ymm4_0 ymm4_0 0x1c;
rol ymm4_1 ymm4_1 0x1c;
rol ymm4_2 ymm4_2 0x1c;
rol ymm4_3 ymm4_3 0x1c;
(* vprolq $0x14,%ymm2,%ymm2                        #! PC = 0x555555580ff2 *)
rol ymm2_0 ymm2_0 0x14;
rol ymm2_1 ymm2_1 0x14;
rol ymm2_2 ymm2_2 0x14;
rol ymm2_3 ymm2_3 0x14;
(* vpxorq %ymm30,%ymm5,%ymm5                       #! PC = 0x555555580ff9 *)
xor ymm5_0@uint64 ymm5_0 ymm30_0;
xor ymm5_1@uint64 ymm5_1 ymm30_1;
xor ymm5_2@uint64 ymm5_2 ymm30_2;
xor ymm5_3@uint64 ymm5_3 ymm30_3;
(* vpxorq %ymm24,%ymm16,%ymm16                     #! PC = 0x555555580fff *)
xor ymm16_0@uint64 ymm16_0 ymm24_0;
xor ymm16_1@uint64 ymm16_1 ymm24_1;
xor ymm16_2@uint64 ymm16_2 ymm24_2;
xor ymm16_3@uint64 ymm16_3 ymm24_3;
(* vpxorq %ymm20,%ymm14,%ymm14                     #! PC = 0x555555581005 *)
xor ymm14_0@uint64 ymm14_0 ymm20_0;
xor ymm14_1@uint64 ymm14_1 ymm20_1;
xor ymm14_2@uint64 ymm14_2 ymm20_2;
xor ymm14_3@uint64 ymm14_3 ymm20_3;
(* vprolq $0x3,%ymm5,%ymm5                         #! PC = 0x55555558100b *)
rol ymm5_0 ymm5_0 0x3;
rol ymm5_1 ymm5_1 0x3;
rol ymm5_2 ymm5_2 0x3;
rol ymm5_3 ymm5_3 0x3;
(* vprorq $0x13,%ymm16,%ymm16                      #! PC = 0x555555581012 *)
ror ymm16_0 ymm16_0 0x13;
ror ymm16_1 ymm16_1 0x13;
ror ymm16_2 ymm16_2 0x13;
ror ymm16_3 ymm16_3 0x13;
(* vprorq $0x3,%ymm14,%ymm14                       #! PC = 0x555555581019 *)
ror ymm14_0 ymm14_0 0x3;
ror ymm14_1 ymm14_1 0x3;
ror ymm14_2 ymm14_2 0x3;
ror ymm14_3 ymm14_3 0x3;
(* vmovdqa64 %ymm4,%ymm31                          #! PC = 0x555555581020 *)
mov ymm31_0 ymm4_0;
mov ymm31_1 ymm4_1;
mov ymm31_2 ymm4_2;
mov ymm31_3 ymm4_3;
(* vmovdqa64 %ymm2,%ymm23                          #! PC = 0x555555581026 *)
mov ymm23_0 ymm2_0;
mov ymm23_1 ymm2_1;
mov ymm23_2 ymm2_2;
mov ymm23_3 ymm2_3;
(* vpxorq %ymm24,%ymm15,%ymm15                     #! PC = 0x55555558102c *)
xor ymm15_0@uint64 ymm15_0 ymm24_0;
xor ymm15_1@uint64 ymm15_1 ymm24_1;
xor ymm15_2@uint64 ymm15_2 ymm24_2;
xor ymm15_3@uint64 ymm15_3 ymm24_3;
(* vpxorq %ymm20,%ymm6,%ymm6                       #! PC = 0x555555581032 *)
xor ymm6_0@uint64 ymm6_0 ymm20_0;
xor ymm6_1@uint64 ymm6_1 ymm20_1;
xor ymm6_2@uint64 ymm6_2 ymm20_2;
xor ymm6_3@uint64 ymm6_3 ymm20_3;
(* vprolq $0x1,%ymm15,%ymm15                       #! PC = 0x555555581038 *)
rol ymm15_0 ymm15_0 0x1;
rol ymm15_1 ymm15_1 0x1;
rol ymm15_2 ymm15_2 0x1;
rol ymm15_3 ymm15_3 0x1;
(* vprolq $0x6,%ymm6,%ymm6                         #! PC = 0x55555558103f *)
rol ymm6_0 ymm6_0 0x6;
rol ymm6_1 ymm6_1 0x6;
rol ymm6_2 ymm6_2 0x6;
rol ymm6_3 ymm6_3 0x6;
(* vpternlogq $0xd2,%ymm5,%ymm2,%ymm31             #! PC = 0x555555581046 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm2_0, ymm5_0, table);
call vpternlogq64 (ymm31_1, ymm2_1, ymm5_1, table);
call vpternlogq64 (ymm31_2, ymm2_2, ymm5_2, table);
call vpternlogq64 (ymm31_3, ymm2_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm5,%ymm23            #! PC = 0x55555558104d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm5_0, ymm16_0, table);
call vpternlogq64 (ymm23_1, ymm5_1, ymm16_1, table);
call vpternlogq64 (ymm23_2, ymm5_2, ymm16_2, table);
call vpternlogq64 (ymm23_3, ymm5_3, ymm16_3, table);
(* vpxorq %ymm30,%ymm19,%ymm19                     #! PC = 0x555555581054 *)
xor ymm19_0@uint64 ymm19_0 ymm30_0;
xor ymm19_1@uint64 ymm19_1 ymm30_1;
xor ymm19_2@uint64 ymm19_2 ymm30_2;
xor ymm19_3@uint64 ymm19_3 ymm30_3;
(* vpternlogq $0xd2,%ymm14,%ymm16,%ymm5            #! PC = 0x55555558105a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm16_0, ymm14_0, table);
call vpternlogq64 (ymm5_1, ymm16_1, ymm14_1, table);
call vpternlogq64 (ymm5_2, ymm16_2, ymm14_2, table);
call vpternlogq64 (ymm5_3, ymm16_3, ymm14_3, table);
(* vpxorq %ymm17,%ymm3,%ymm3                       #! PC = 0x555555581061 *)
xor ymm3_0@uint64 ymm3_0 ymm17_0;
xor ymm3_1@uint64 ymm3_1 ymm17_1;
xor ymm3_2@uint64 ymm3_2 ymm17_2;
xor ymm3_3@uint64 ymm3_3 ymm17_3;
(* vpternlogq $0xd2,%ymm4,%ymm14,%ymm16            #! PC = 0x555555581067 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm14_0, ymm4_0, table);
call vpternlogq64 (ymm16_1, ymm14_1, ymm4_1, table);
call vpternlogq64 (ymm16_2, ymm14_2, ymm4_2, table);
call vpternlogq64 (ymm16_3, ymm14_3, ymm4_3, table);
(* vpxorq %ymm30,%ymm27,%ymm27                     #! PC = 0x55555558106e *)
xor ymm27_0@uint64 ymm27_0 ymm30_0;
xor ymm27_1@uint64 ymm27_1 ymm30_1;
xor ymm27_2@uint64 ymm27_2 ymm30_2;
xor ymm27_3@uint64 ymm27_3 ymm30_3;
(* vpternlogq $0xd2,%ymm2,%ymm4,%ymm14             #! PC = 0x555555581074 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm4_0, ymm2_0, table);
call vpternlogq64 (ymm14_1, ymm4_1, ymm2_1, table);
call vpternlogq64 (ymm14_2, ymm4_2, ymm2_2, table);
call vpternlogq64 (ymm14_3, ymm4_3, ymm2_3, table);
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x55555558107b *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vpxorq %ymm29,%ymm12,%ymm2                      #! PC = 0x555555581081 *)
xor ymm2_0@uint64 ymm12_0 ymm29_0;
xor ymm2_1@uint64 ymm12_1 ymm29_1;
xor ymm2_2@uint64 ymm12_2 ymm29_2;
xor ymm2_3@uint64 ymm12_3 ymm29_3;
(* vprorq $0x1c,%ymm27,%ymm27                      #! PC = 0x555555581087 *)
ror ymm27_0 ymm27_0 0x1c;
ror ymm27_1 ymm27_1 0x1c;
ror ymm27_2 ymm27_2 0x1c;
ror ymm27_3 ymm27_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x55555558108e *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm19,%ymm19                      #! PC = 0x555555581095 *)
rol ymm19_0 ymm19_0 0x12;
rol ymm19_1 ymm19_1 0x12;
rol ymm19_2 ymm19_2 0x12;
rol ymm19_3 ymm19_3 0x12;
(* vprolq $0x19,%ymm3,%ymm3                        #! PC = 0x55555558109c *)
rol ymm3_0 ymm3_0 0x19;
rol ymm3_1 ymm3_1 0x19;
rol ymm3_2 ymm3_2 0x19;
rol ymm3_3 ymm3_3 0x19;
(* vprolq $0x8,%ymm2,%ymm2                         #! PC = 0x5555555810a3 *)
rol ymm2_0 ymm2_0 0x8;
rol ymm2_1 ymm2_1 0x8;
rol ymm2_2 ymm2_2 0x8;
rol ymm2_3 ymm2_3 0x8;
(* vpxorq %ymm24,%ymm7,%ymm7                       #! PC = 0x5555555810aa *)
xor ymm7_0@uint64 ymm7_0 ymm24_0;
xor ymm7_1@uint64 ymm7_1 ymm24_1;
xor ymm7_2@uint64 ymm7_2 ymm24_2;
xor ymm7_3@uint64 ymm7_3 ymm24_3;
(* vpxorq %ymm20,%ymm8,%ymm8                       #! PC = 0x5555555810b0 *)
xor ymm8_0@uint64 ymm8_0 ymm20_0;
xor ymm8_1@uint64 ymm8_1 ymm20_1;
xor ymm8_2@uint64 ymm8_2 ymm20_2;
xor ymm8_3@uint64 ymm8_3 ymm20_3;
(* vpxorq %ymm17,%ymm21,%ymm21                     #! PC = 0x5555555810b6 *)
xor ymm21_0@uint64 ymm21_0 ymm17_0;
xor ymm21_1@uint64 ymm21_1 ymm17_1;
xor ymm21_2@uint64 ymm21_2 ymm17_2;
xor ymm21_3@uint64 ymm21_3 ymm17_3;
(* vprolq $0xa,%ymm7,%ymm7                         #! PC = 0x5555555810bc *)
rol ymm7_0 ymm7_0 0xa;
rol ymm7_1 ymm7_1 0xa;
rol ymm7_2 ymm7_2 0xa;
rol ymm7_3 ymm7_3 0xa;
(* vprolq $0xf,%ymm8,%ymm8                         #! PC = 0x5555555810c3 *)
rol ymm8_0 ymm8_0 0xf;
rol ymm8_1 ymm8_1 0xf;
rol ymm8_2 ymm8_2 0xf;
rol ymm8_3 ymm8_3 0xf;
(* vprorq $0x8,%ymm21,%ymm21                       #! PC = 0x5555555810ca *)
ror ymm21_0 ymm21_0 0x8;
ror ymm21_1 ymm21_1 0x8;
ror ymm21_2 ymm21_2 0x8;
ror ymm21_3 ymm21_3 0x8;
(* vmovdqa %ymm15,%ymm4                            #! PC = 0x5555555810d1 *)
mov ymm4_0 ymm15_0;
mov ymm4_1 ymm15_1;
mov ymm4_2 ymm15_2;
mov ymm4_3 ymm15_3;
(* vmovdqa %ymm6,%ymm12                            #! PC = 0x5555555810d5 *)
mov ymm12_0 ymm6_0;
mov ymm12_1 ymm6_1;
mov ymm12_2 ymm6_2;
mov ymm12_3 ymm6_3;
(* vpternlogq $0xd2,%ymm3,%ymm6,%ymm4              #! PC = 0x5555555810d9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm6_0, ymm3_0, table);
call vpternlogq64 (ymm4_1, ymm6_1, ymm3_1, table);
call vpternlogq64 (ymm4_2, ymm6_2, ymm3_2, table);
call vpternlogq64 (ymm4_3, ymm6_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm3,%ymm12             #! PC = 0x5555555810e0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm3_0, ymm2_0, table);
call vpternlogq64 (ymm12_1, ymm3_1, ymm2_1, table);
call vpternlogq64 (ymm12_2, ymm3_2, ymm2_2, table);
call vpternlogq64 (ymm12_3, ymm3_3, ymm2_3, table);
(* vpxorq %ymm17,%ymm13,%ymm13                     #! PC = 0x5555555810e7 *)
xor ymm13_0@uint64 ymm13_0 ymm17_0;
xor ymm13_1@uint64 ymm13_1 ymm17_1;
xor ymm13_2@uint64 ymm13_2 ymm17_2;
xor ymm13_3@uint64 ymm13_3 ymm17_3;
(* vpternlogq $0xd2,%ymm19,%ymm2,%ymm3             #! PC = 0x5555555810ed *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm2_0, ymm19_0, table);
call vpternlogq64 (ymm3_1, ymm2_1, ymm19_1, table);
call vpternlogq64 (ymm3_2, ymm2_2, ymm19_2, table);
call vpternlogq64 (ymm3_3, ymm2_3, ymm19_3, table);
(* vpxorq %ymm20,%ymm0,%ymm0                       #! PC = 0x5555555810f4 *)
xor ymm0_0@uint64 ymm0_0 ymm20_0;
xor ymm0_1@uint64 ymm0_1 ymm20_1;
xor ymm0_2@uint64 ymm0_2 ymm20_2;
xor ymm0_3@uint64 ymm0_3 ymm20_3;
(* vpternlogq $0xd2,%ymm15,%ymm19,%ymm2            #! PC = 0x5555555810fa *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm19_0, ymm15_0, table);
call vpternlogq64 (ymm2_1, ymm19_1, ymm15_1, table);
call vpternlogq64 (ymm2_2, ymm19_2, ymm15_2, table);
call vpternlogq64 (ymm2_3, ymm19_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm15,%ymm19            #! PC = 0x555555581101 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm15_0, ymm6_0, table);
call vpternlogq64 (ymm19_1, ymm15_1, ymm6_1, table);
call vpternlogq64 (ymm19_2, ymm15_2, ymm6_2, table);
call vpternlogq64 (ymm19_3, ymm15_3, ymm6_3, table);
(* vmovdqa %ymm9,%ymm6                             #! PC = 0x555555581108 *)
mov ymm6_0 ymm9_0;
mov ymm6_1 ymm9_1;
mov ymm6_2 ymm9_2;
mov ymm6_3 ymm9_3;
(* vmovdqa64 %ymm27,%ymm15                         #! PC = 0x55555558110c *)
mov ymm15_0 ymm27_0;
mov ymm15_1 ymm27_1;
mov ymm15_2 ymm27_2;
mov ymm15_3 ymm27_3;
(* vprorq $0x2,%ymm0,%ymm20                        #! PC = 0x555555581112 *)
ror ymm20_0 ymm0_0 0x2;
ror ymm20_1 ymm0_1 0x2;
ror ymm20_2 ymm0_2 0x2;
ror ymm20_3 ymm0_3 0x2;
(* vpternlogq $0xd2,%ymm7,%ymm27,%ymm6             #! PC = 0x555555581119 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm27_0, ymm7_0, table);
call vpternlogq64 (ymm6_1, ymm27_1, ymm7_1, table);
call vpternlogq64 (ymm6_2, ymm27_2, ymm7_2, table);
call vpternlogq64 (ymm6_3, ymm27_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm7,%ymm15             #! PC = 0x555555581120 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm7_0, ymm8_0, table);
call vpternlogq64 (ymm15_1, ymm7_1, ymm8_1, table);
call vpternlogq64 (ymm15_2, ymm7_2, ymm8_2, table);
call vpternlogq64 (ymm15_3, ymm7_3, ymm8_3, table);
(* vpxorq %ymm30,%ymm26,%ymm26                     #! PC = 0x555555581127 *)
xor ymm26_0@uint64 ymm26_0 ymm30_0;
xor ymm26_1@uint64 ymm26_1 ymm30_1;
xor ymm26_2@uint64 ymm26_2 ymm30_2;
xor ymm26_3@uint64 ymm26_3 ymm30_3;
(* vpternlogq $0xd2,%ymm21,%ymm8,%ymm7             #! PC = 0x55555558112d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm8_0, ymm21_0, table);
call vpternlogq64 (ymm7_1, ymm8_1, ymm21_1, table);
call vpternlogq64 (ymm7_2, ymm8_2, ymm21_2, table);
call vpternlogq64 (ymm7_3, ymm8_3, ymm21_3, table);
(* vpxorq %ymm29,%ymm28,%ymm28                     #! PC = 0x555555581134 *)
xor ymm28_0@uint64 ymm28_0 ymm29_0;
xor ymm28_1@uint64 ymm28_1 ymm29_1;
xor ymm28_2@uint64 ymm28_2 ymm29_2;
xor ymm28_3@uint64 ymm28_3 ymm29_3;
(* vpternlogq $0xd2,%ymm9,%ymm21,%ymm8             #! PC = 0x55555558113a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm21_0, ymm9_0, table);
call vpternlogq64 (ymm8_1, ymm21_1, ymm9_1, table);
call vpternlogq64 (ymm8_2, ymm21_2, ymm9_2, table);
call vpternlogq64 (ymm8_3, ymm21_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm9,%ymm21            #! PC = 0x555555581141 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm9_0, ymm27_0, table);
call vpternlogq64 (ymm21_1, ymm9_1, ymm27_1, table);
call vpternlogq64 (ymm21_2, ymm9_2, ymm27_2, table);
call vpternlogq64 (ymm21_3, ymm9_3, ymm27_3, table);
(* vpxorq %ymm24,%ymm25,%ymm9                      #! PC = 0x555555581148 *)
xor ymm9_0@uint64 ymm25_0 ymm24_0;
xor ymm9_1@uint64 ymm25_1 ymm24_1;
xor ymm9_2@uint64 ymm25_2 ymm24_2;
xor ymm9_3@uint64 ymm25_3 ymm24_3;
(* vprorq $0x9,%ymm13,%ymm24                       #! PC = 0x55555558114e *)
ror ymm24_0 ymm13_0 0x9;
ror ymm24_1 ymm13_1 0x9;
ror ymm24_2 ymm13_2 0x9;
ror ymm24_3 ymm13_3 0x9;
(* vprorq $0x17,%ymm26,%ymm26                      #! PC = 0x555555581155 *)
ror ymm26_0 ymm26_0 0x17;
ror ymm26_1 ymm26_1 0x17;
ror ymm26_2 ymm26_2 0x17;
ror ymm26_3 ymm26_3 0x17;
(* vprolq $0x2,%ymm9,%ymm9                         #! PC = 0x55555558115c *)
rol ymm9_0 ymm9_0 0x2;
rol ymm9_1 ymm9_1 0x2;
rol ymm9_2 ymm9_2 0x2;
rol ymm9_3 ymm9_3 0x2;
(* vprorq $0x19,%ymm28,%ymm28                      #! PC = 0x555555581163 *)
ror ymm28_0 ymm28_0 0x19;
ror ymm28_1 ymm28_1 0x19;
ror ymm28_2 ymm28_2 0x19;
ror ymm28_3 ymm28_3 0x19;
(* vmovdqa64 %ymm20,%ymm13                         #! PC = 0x55555558116a *)
mov ymm13_0 ymm20_0;
mov ymm13_1 ymm20_1;
mov ymm13_2 ymm20_2;
mov ymm13_3 ymm20_3;
(* vmovdqa64 %ymm5,%ymm25                          #! PC = 0x555555581170 *)
mov ymm25_0 ymm5_0;
mov ymm25_1 ymm5_1;
mov ymm25_2 ymm5_2;
mov ymm25_3 ymm5_3;
(* vmovdqa64 %ymm24,%ymm17                         #! PC = 0x555555581176 *)
mov ymm17_0 ymm24_0;
mov ymm17_1 ymm24_1;
mov ymm17_2 ymm24_2;
mov ymm17_3 ymm24_3;
(* vmovdqa64 %ymm26,%ymm0                          #! PC = 0x55555558117c *)
mov ymm0_0 ymm26_0;
mov ymm0_1 ymm26_1;
mov ymm0_2 ymm26_2;
mov ymm0_3 ymm26_3;
(* vpternlogq $0xd2,%ymm20,%ymm9,%ymm0             #! PC = 0x555555581182 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm9_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm9_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm9_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm9_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm24,%ymm13           #! PC = 0x555555581189 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm24_0, ymm28_0, table);
call vpternlogq64 (ymm13_1, ymm24_1, ymm28_1, table);
call vpternlogq64 (ymm13_2, ymm24_2, ymm28_2, table);
call vpternlogq64 (ymm13_3, ymm24_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm26,%ymm28,%ymm17           #! PC = 0x555555581190 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm28_0, ymm26_0, table);
call vpternlogq64 (ymm17_1, ymm28_1, ymm26_1, table);
call vpternlogq64 (ymm17_2, ymm28_2, ymm26_2, table);
call vpternlogq64 (ymm17_3, ymm28_3, ymm26_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm26,%ymm28            #! PC = 0x555555581197 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm26_0, ymm9_0, table);
call vpternlogq64 (ymm28_1, ymm26_1, ymm9_1, table);
call vpternlogq64 (ymm28_2, ymm26_2, ymm9_2, table);
call vpternlogq64 (ymm28_3, ymm26_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm28,%ymm1,%ymm25            #! PC = 0x55555558119e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm1_0, ymm28_0, table);
call vpternlogq64 (ymm25_1, ymm1_1, ymm28_1, table);
call vpternlogq64 (ymm25_2, ymm1_2, ymm28_2, table);
call vpternlogq64 (ymm25_3, ymm1_3, ymm28_3, table);
(* vpternlogq $0x96,%ymm3,%ymm7,%ymm25             #! PC = 0x5555555811a5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm7_0, ymm3_0, table);
call vpternlogq64 (ymm25_1, ymm7_1, ymm3_1, table);
call vpternlogq64 (ymm25_2, ymm7_2, ymm3_2, table);
call vpternlogq64 (ymm25_3, ymm7_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm24,%ymm20,%ymm9            #! PC = 0x5555555811ac *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm20_0, ymm24_0, table);
call vpternlogq64 (ymm9_1, ymm20_1, ymm24_1, table);
call vpternlogq64 (ymm9_2, ymm20_2, ymm24_2, table);
call vpternlogq64 (ymm9_3, ymm20_3, ymm24_3, table);
(* vprolq $0x1,%ymm25,%ymm20                       #! PC = 0x5555555811b3 *)
rol ymm20_0 ymm25_0 0x1;
rol ymm20_1 ymm25_1 0x1;
rol ymm20_2 ymm25_2 0x1;
rol ymm20_3 ymm25_3 0x1;
(* vmovdqa64 %ymm0,%ymm24                          #! PC = 0x5555555811ba *)
mov ymm24_0 ymm0_0;
mov ymm24_1 ymm0_1;
mov ymm24_2 ymm0_2;
mov ymm24_3 ymm0_3;
(* vpternlogq $0x96,%ymm2,%ymm8,%ymm24             #! PC = 0x5555555811c0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm8_0, ymm2_0, table);
call vpternlogq64 (ymm24_1, ymm8_1, ymm2_1, table);
call vpternlogq64 (ymm24_2, ymm8_2, ymm2_2, table);
call vpternlogq64 (ymm24_3, ymm8_3, ymm2_3, table);
(* vpternlogq $0x96,%ymm10,%ymm16,%ymm24           #! PC = 0x5555555811c7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm16_0, ymm10_0, table);
call vpternlogq64 (ymm24_1, ymm16_1, ymm10_1, table);
call vpternlogq64 (ymm24_2, ymm16_2, ymm10_2, table);
call vpternlogq64 (ymm24_3, ymm16_3, ymm10_3, table);
(* vmovdqa64 %ymm19,%ymm29                         #! PC = 0x5555555811ce *)
mov ymm29_0 ymm19_0;
mov ymm29_1 ymm19_1;
mov ymm29_2 ymm19_2;
mov ymm29_3 ymm19_3;
(* vpternlogq $0x96,%ymm11,%ymm14,%ymm29           #! PC = 0x5555555811d4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm14_0, ymm11_0, table);
call vpternlogq64 (ymm29_1, ymm14_1, ymm11_1, table);
call vpternlogq64 (ymm29_2, ymm14_2, ymm11_2, table);
call vpternlogq64 (ymm29_3, ymm14_3, ymm11_3, table);
(* vmovdqa64 %ymm20,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555811db *)
mov L0x7fffffffd960 ymm20_0;
mov L0x7fffffffd968 ymm20_1;
mov L0x7fffffffd970 ymm20_2;
mov L0x7fffffffd978 ymm20_3;
(* vprolq $0x1,%ymm24,%ymm20                       #! PC = 0x5555555811e6 *)
rol ymm20_0 ymm24_0 0x1;
rol ymm20_1 ymm24_1 0x1;
rol ymm20_2 ymm24_2 0x1;
rol ymm20_3 ymm24_3 0x1;
(* vpternlogq $0x96,%ymm21,%ymm9,%ymm29            #! PC = 0x5555555811ed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm9_0, ymm21_0, table);
call vpternlogq64 (ymm29_1, ymm9_1, ymm21_1, table);
call vpternlogq64 (ymm29_2, ymm9_2, ymm21_2, table);
call vpternlogq64 (ymm29_3, ymm9_3, ymm21_3, table);
(* vmovdqa64 %ymm18,%ymm27                         #! PC = 0x5555555811f4 *)
mov ymm27_0 ymm18_0;
mov ymm27_1 ymm18_1;
mov ymm27_2 ymm18_2;
mov ymm27_3 ymm18_3;
(* vpternlogq $0x96,%ymm6,%ymm13,%ymm27            #! PC = 0x5555555811fa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm13_0, ymm6_0, table);
call vpternlogq64 (ymm27_1, ymm13_1, ymm6_1, table);
call vpternlogq64 (ymm27_2, ymm13_2, ymm6_2, table);
call vpternlogq64 (ymm27_3, ymm13_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm31,%ymm4,%ymm27            #! PC = 0x555555581201 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm4_0, ymm31_0, table);
call vpternlogq64 (ymm27_1, ymm4_1, ymm31_1, table);
call vpternlogq64 (ymm27_2, ymm4_2, ymm31_2, table);
call vpternlogq64 (ymm27_3, ymm4_3, ymm31_3, table);
(* vmovdqa64 %ymm15,%ymm26                         #! PC = 0x555555581208 *)
mov ymm26_0 ymm15_0;
mov ymm26_1 ymm15_1;
mov ymm26_2 ymm15_2;
mov ymm26_3 ymm15_3;
(* vmovdqa64 %ymm20,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x55555558120e *)
mov L0x7fffffffd940 ymm20_0;
mov L0x7fffffffd948 ymm20_1;
mov L0x7fffffffd950 ymm20_2;
mov L0x7fffffffd958 ymm20_3;
(* vprolq $0x1,%ymm29,%ymm20                       #! PC = 0x555555581219 *)
rol ymm20_0 ymm29_0 0x1;
rol ymm20_1 ymm29_1 0x1;
rol ymm20_2 ymm29_2 0x1;
rol ymm20_3 ymm29_3 0x1;
(* vpternlogq $0x96,%ymm23,%ymm12,%ymm26           #! PC = 0x555555581220 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm12_0, ymm23_0, table);
call vpternlogq64 (ymm26_1, ymm12_1, ymm23_1, table);
call vpternlogq64 (ymm26_2, ymm12_2, ymm23_2, table);
call vpternlogq64 (ymm26_3, ymm12_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm17,%ymm22,%ymm26           #! PC = 0x555555581227 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm22_0, ymm17_0, table);
call vpternlogq64 (ymm26_1, ymm22_1, ymm17_1, table);
call vpternlogq64 (ymm26_2, ymm22_2, ymm17_2, table);
call vpternlogq64 (ymm26_3, ymm22_3, ymm17_3, table);
(* vprolq $0x1,%ymm26,%ymm30                       #! PC = 0x55555558122e *)
rol ymm30_0 ymm26_0 0x1;
rol ymm30_1 ymm26_1 0x1;
rol ymm30_2 ymm26_2 0x1;
rol ymm30_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd940; Value = 0x6302cf57811bace9; PC = 0x555555581235 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd940;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd948;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd950;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd958;
(* movabs $0x8000000000008002,%r10                 #! PC = 0x555555581240 *)
mov r10 0x8000000000008002@uint64;
(* vmovdqa64 %ymm20,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x55555558124a *)
mov L0x7fffffffd920 ymm20_0;
mov L0x7fffffffd928 ymm20_1;
mov L0x7fffffffd930 ymm20_2;
mov L0x7fffffffd938 ymm20_3;
(* vprolq $0x1,%ymm27,%ymm20                       #! PC = 0x555555581255 *)
rol ymm20_0 ymm27_0 0x1;
rol ymm20_1 ymm27_1 0x1;
rol ymm20_2 ymm27_2 0x1;
rol ymm20_3 ymm27_3 0x1;
(* vpxorq 0x88(%rsp),%ymm27,%ymm27                 #! EA = L0x7fffffffd960; Value = 0x79953e0ea92d57b8; PC = 0x55555558125c *)
xor ymm27_0@uint64 ymm27_0 L0x7fffffffd960;
xor ymm27_1@uint64 ymm27_1 L0x7fffffffd968;
xor ymm27_2@uint64 ymm27_2 L0x7fffffffd970;
xor ymm27_3@uint64 ymm27_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd920; Value = 0xd3620a6d33159a34; PC = 0x555555581267 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd920;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd928;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd930;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd938;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581272 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprorq $0x14,%ymm23,%ymm23                      #! PC = 0x555555581278 *)
ror ymm23_0 ymm23_0 0x14;
ror ymm23_1 ymm23_1 0x14;
ror ymm23_2 ymm23_2 0x14;
ror ymm23_3 ymm23_3 0x14;
(* vpxorq %ymm26,%ymm3,%ymm3                       #! PC = 0x55555558127f *)
xor ymm3_0@uint64 ymm3_0 ymm26_0;
xor ymm3_1@uint64 ymm3_1 ymm26_1;
xor ymm3_2@uint64 ymm3_2 ymm26_2;
xor ymm3_3@uint64 ymm3_3 ymm26_3;
(* vpxorq %ymm20,%ymm24,%ymm24                     #! PC = 0x555555581285 *)
xor ymm24_0@uint64 ymm24_0 ymm20_0;
xor ymm24_1@uint64 ymm24_1 ymm20_1;
xor ymm24_2@uint64 ymm24_2 ymm20_2;
xor ymm24_3@uint64 ymm24_3 ymm20_3;
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x55555558128b *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpxorq %ymm24,%ymm9,%ymm9                       #! PC = 0x555555581291 *)
xor ymm9_0@uint64 ymm9_0 ymm24_0;
xor ymm9_1@uint64 ymm9_1 ymm24_1;
xor ymm9_2@uint64 ymm9_2 ymm24_2;
xor ymm9_3@uint64 ymm9_3 ymm24_3;
(* vpxorq %ymm30,%ymm29,%ymm29                     #! PC = 0x555555581297 *)
xor ymm29_0@uint64 ymm29_0 ymm30_0;
xor ymm29_1@uint64 ymm29_1 ymm30_1;
xor ymm29_2@uint64 ymm29_2 ymm30_2;
xor ymm29_3@uint64 ymm29_3 ymm30_3;
(* vprorq $0x15,%ymm3,%ymm3                        #! PC = 0x55555558129d *)
ror ymm3_0 ymm3_0 0x15;
ror ymm3_1 ymm3_1 0x15;
ror ymm3_2 ymm3_2 0x15;
ror ymm3_3 ymm3_3 0x15;
(* vprolq $0x15,%ymm8,%ymm8                        #! PC = 0x5555555812a4 *)
rol ymm8_0 ymm8_0 0x15;
rol ymm8_1 ymm8_1 0x15;
rol ymm8_2 ymm8_2 0x15;
rol ymm8_3 ymm8_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x5555555812ab *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxorq %ymm25,%ymm10,%ymm10                     #! PC = 0x5555555812b2 *)
xor ymm10_0@uint64 ymm10_0 ymm25_0;
xor ymm10_1@uint64 ymm10_1 ymm25_1;
xor ymm10_2@uint64 ymm10_2 ymm25_2;
xor ymm10_3@uint64 ymm10_3 ymm25_3;
(* vpxorq %ymm24,%ymm14,%ymm14                     #! PC = 0x5555555812b8 *)
xor ymm14_0@uint64 ymm14_0 ymm24_0;
xor ymm14_1@uint64 ymm14_1 ymm24_1;
xor ymm14_2@uint64 ymm14_2 ymm24_2;
xor ymm14_3@uint64 ymm14_3 ymm24_3;
(* vprolq $0x1c,%ymm10,%ymm10                      #! PC = 0x5555555812be *)
rol ymm10_0 ymm10_0 0x1c;
rol ymm10_1 ymm10_1 0x1c;
rol ymm10_2 ymm10_2 0x1c;
rol ymm10_3 ymm10_3 0x1c;
(* vprolq $0x14,%ymm14,%ymm14                      #! PC = 0x5555555812c5 *)
rol ymm14_0 ymm14_0 0x14;
rol ymm14_1 ymm14_1 0x14;
rol ymm14_2 ymm14_2 0x14;
rol ymm14_3 ymm14_3 0x14;
(* vpxorq %ymm29,%ymm4,%ymm4                       #! PC = 0x5555555812cc *)
xor ymm4_0@uint64 ymm4_0 ymm29_0;
xor ymm4_1@uint64 ymm4_1 ymm29_1;
xor ymm4_2@uint64 ymm4_2 ymm29_2;
xor ymm4_3@uint64 ymm4_3 ymm29_3;
(* vpxorq %ymm27,%ymm15,%ymm15                     #! PC = 0x5555555812d2 *)
xor ymm15_0@uint64 ymm15_0 ymm27_0;
xor ymm15_1@uint64 ymm15_1 ymm27_1;
xor ymm15_2@uint64 ymm15_2 ymm27_2;
xor ymm15_3@uint64 ymm15_3 ymm27_3;
(* vpxorq %ymm26,%ymm28,%ymm28                     #! PC = 0x5555555812d8 *)
xor ymm28_0@uint64 ymm28_0 ymm26_0;
xor ymm28_1@uint64 ymm28_1 ymm26_1;
xor ymm28_2@uint64 ymm28_2 ymm26_2;
xor ymm28_3@uint64 ymm28_3 ymm26_3;
(* vpxorq %ymm27,%ymm22,%ymm22                     #! PC = 0x5555555812de *)
xor ymm22_0@uint64 ymm22_0 ymm27_0;
xor ymm22_1@uint64 ymm22_1 ymm27_1;
xor ymm22_2@uint64 ymm22_2 ymm27_2;
xor ymm22_3@uint64 ymm22_3 ymm27_3;
(* vpxorq %ymm26,%ymm5,%ymm5                       #! PC = 0x5555555812e4 *)
xor ymm5_0@uint64 ymm5_0 ymm26_0;
xor ymm5_1@uint64 ymm5_1 ymm26_1;
xor ymm5_2@uint64 ymm5_2 ymm26_2;
xor ymm5_3@uint64 ymm5_3 ymm26_3;
(* vprolq $0x1,%ymm22,%ymm22                       #! PC = 0x5555555812ea *)
rol ymm22_0 ymm22_0 0x1;
rol ymm22_1 ymm22_1 0x1;
rol ymm22_2 ymm22_2 0x1;
rol ymm22_3 ymm22_3 0x1;
(* vprolq $0x6,%ymm5,%ymm5                         #! PC = 0x5555555812f1 *)
rol ymm5_0 ymm5_0 0x6;
rol ymm5_1 ymm5_1 0x6;
rol ymm5_2 ymm5_2 0x6;
rol ymm5_3 ymm5_3 0x6;
(* vprolq $0x3,%ymm4,%ymm4                         #! PC = 0x5555555812f8 *)
rol ymm4_0 ymm4_0 0x3;
rol ymm4_1 ymm4_1 0x3;
rol ymm4_2 ymm4_2 0x3;
rol ymm4_3 ymm4_3 0x3;
(* vprorq $0x13,%ymm15,%ymm15                      #! PC = 0x5555555812ff *)
ror ymm15_0 ymm15_0 0x13;
ror ymm15_1 ymm15_1 0x13;
ror ymm15_2 ymm15_2 0x13;
ror ymm15_3 ymm15_3 0x13;
(* vprorq $0x3,%ymm28,%ymm28                       #! PC = 0x555555581306 *)
ror ymm28_0 ymm28_0 0x3;
ror ymm28_1 ymm28_1 0x3;
ror ymm28_2 ymm28_2 0x3;
ror ymm28_3 ymm28_3 0x3;
(* vpxorq %ymm29,%ymm13,%ymm13                     #! PC = 0x55555558130d *)
xor ymm13_0@uint64 ymm13_0 ymm29_0;
xor ymm13_1@uint64 ymm13_1 ymm29_1;
xor ymm13_2@uint64 ymm13_2 ymm29_2;
xor ymm13_3@uint64 ymm13_3 ymm29_3;
(* vpxorq %ymm25,%ymm2,%ymm2                       #! PC = 0x555555581313 *)
xor ymm2_0@uint64 ymm2_0 ymm25_0;
xor ymm2_1@uint64 ymm2_1 ymm25_1;
xor ymm2_2@uint64 ymm2_2 ymm25_2;
xor ymm2_3@uint64 ymm2_3 ymm25_3;
(* vpxorq %ymm24,%ymm21,%ymm21                     #! PC = 0x555555581319 *)
xor ymm21_0@uint64 ymm21_0 ymm24_0;
xor ymm21_1@uint64 ymm21_1 ymm24_1;
xor ymm21_2@uint64 ymm21_2 ymm24_2;
xor ymm21_3@uint64 ymm21_3 ymm24_3;
(* vpxorq %ymm29,%ymm31,%ymm31                     #! PC = 0x55555558131f *)
xor ymm31_0@uint64 ymm31_0 ymm29_0;
xor ymm31_1@uint64 ymm31_1 ymm29_1;
xor ymm31_2@uint64 ymm31_2 ymm29_2;
xor ymm31_3@uint64 ymm31_3 ymm29_3;
(* vpxorq %ymm24,%ymm11,%ymm11                     #! PC = 0x555555581325 *)
xor ymm11_0@uint64 ymm11_0 ymm24_0;
xor ymm11_1@uint64 ymm11_1 ymm24_1;
xor ymm11_2@uint64 ymm11_2 ymm24_2;
xor ymm11_3@uint64 ymm11_3 ymm24_3;
(* vprorq $0x1c,%ymm31,%ymm31                      #! PC = 0x55555558132b *)
ror ymm31_0 ymm31_0 0x1c;
ror ymm31_1 ymm31_1 0x1c;
ror ymm31_2 ymm31_2 0x1c;
ror ymm31_3 ymm31_3 0x1c;
(* vprolq $0x1b,%ymm11,%ymm11                      #! PC = 0x555555581332 *)
rol ymm11_0 ymm11_0 0x1b;
rol ymm11_1 ymm11_1 0x1b;
rol ymm11_2 ymm11_2 0x1b;
rol ymm11_3 ymm11_3 0x1b;
(* vprolq $0x12,%ymm13,%ymm13                      #! PC = 0x555555581339 *)
rol ymm13_0 ymm13_0 0x12;
rol ymm13_1 ymm13_1 0x12;
rol ymm13_2 ymm13_2 0x12;
rol ymm13_3 ymm13_3 0x12;
(* vprolq $0x19,%ymm2,%ymm2                        #! PC = 0x555555581340 *)
rol ymm2_0 ymm2_0 0x19;
rol ymm2_1 ymm2_1 0x19;
rol ymm2_2 ymm2_2 0x19;
rol ymm2_3 ymm2_3 0x19;
(* vprolq $0x8,%ymm21,%ymm21                       #! PC = 0x555555581347 *)
rol ymm21_0 ymm21_0 0x8;
rol ymm21_1 ymm21_1 0x8;
rol ymm21_2 ymm21_2 0x8;
rol ymm21_3 ymm21_3 0x8;
(* vpxorq %ymm27,%ymm12,%ymm12                     #! PC = 0x55555558134e *)
xor ymm12_0@uint64 ymm12_0 ymm27_0;
xor ymm12_1@uint64 ymm12_1 ymm27_1;
xor ymm12_2@uint64 ymm12_2 ymm27_2;
xor ymm12_3@uint64 ymm12_3 ymm27_3;
(* vpxorq %ymm26,%ymm7,%ymm7                       #! PC = 0x555555581354 *)
xor ymm7_0@uint64 ymm7_0 ymm26_0;
xor ymm7_1@uint64 ymm7_1 ymm26_1;
xor ymm7_2@uint64 ymm7_2 ymm26_2;
xor ymm7_3@uint64 ymm7_3 ymm26_3;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x55555558135a *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxorq %ymm26,%ymm1,%ymm1                       #! PC = 0x555555581360 *)
xor ymm1_0@uint64 ymm1_0 ymm26_0;
xor ymm1_1@uint64 ymm1_1 ymm26_1;
xor ymm1_2@uint64 ymm1_2 ymm26_2;
xor ymm1_3@uint64 ymm1_3 ymm26_3;
(* vpxorq %ymm25,%ymm16,%ymm16                     #! PC = 0x555555581366 *)
xor ymm16_0@uint64 ymm16_0 ymm25_0;
xor ymm16_1@uint64 ymm16_1 ymm25_1;
xor ymm16_2@uint64 ymm16_2 ymm25_2;
xor ymm16_3@uint64 ymm16_3 ymm25_3;
(* vpxorq %ymm18,%ymm29,%ymm18                     #! PC = 0x55555558136c *)
xor ymm18_0@uint64 ymm29_0 ymm18_0;
xor ymm18_1@uint64 ymm29_1 ymm18_1;
xor ymm18_2@uint64 ymm29_2 ymm18_2;
xor ymm18_3@uint64 ymm29_3 ymm18_3;
(* vprorq $0x2,%ymm1,%ymm1                         #! PC = 0x555555581372 *)
ror ymm1_0 ymm1_0 0x2;
ror ymm1_1 ymm1_1 0x2;
ror ymm1_2 ymm1_2 0x2;
ror ymm1_3 ymm1_3 0x2;
(* vprorq $0x9,%ymm16,%ymm25                       #! PC = 0x555555581379 *)
ror ymm25_0 ymm16_0 0x9;
ror ymm25_1 ymm16_1 0x9;
ror ymm25_2 ymm16_2 0x9;
ror ymm25_3 ymm16_3 0x9;
(* vprolq $0xa,%ymm12,%ymm12                       #! PC = 0x555555581380 *)
rol ymm12_0 ymm12_0 0xa;
rol ymm12_1 ymm12_1 0xa;
rol ymm12_2 ymm12_2 0xa;
rol ymm12_3 ymm12_3 0xa;
(* vprolq $0xf,%ymm7,%ymm7                         #! PC = 0x555555581387 *)
rol ymm7_0 ymm7_0 0xf;
rol ymm7_1 ymm7_1 0xf;
rol ymm7_2 ymm7_2 0xf;
rol ymm7_3 ymm7_3 0xf;
(* vprorq $0x8,%ymm0,%ymm0                         #! PC = 0x55555558138e *)
ror ymm0_0 ymm0_0 0x8;
ror ymm0_1 ymm0_1 0x8;
ror ymm0_2 ymm0_2 0x8;
ror ymm0_3 ymm0_3 0x8;
(* vpxorq %ymm29,%ymm6,%ymm6                       #! PC = 0x555555581395 *)
xor ymm6_0@uint64 ymm6_0 ymm29_0;
xor ymm6_1@uint64 ymm6_1 ymm29_1;
xor ymm6_2@uint64 ymm6_2 ymm29_2;
xor ymm6_3@uint64 ymm6_3 ymm29_3;
(* vpxorq %ymm27,%ymm17,%ymm17                     #! PC = 0x55555558139b *)
xor ymm17_0@uint64 ymm17_0 ymm27_0;
xor ymm17_1@uint64 ymm17_1 ymm27_1;
xor ymm17_2@uint64 ymm17_2 ymm27_2;
xor ymm17_3@uint64 ymm17_3 ymm27_3;
(* vpxorq %ymm24,%ymm19,%ymm19                     #! PC = 0x5555555813a1 *)
xor ymm19_0@uint64 ymm19_0 ymm24_0;
xor ymm19_1@uint64 ymm19_1 ymm24_1;
xor ymm19_2@uint64 ymm19_2 ymm24_2;
xor ymm19_3@uint64 ymm19_3 ymm24_3;
(* vprorq $0x17,%ymm6,%ymm6                        #! PC = 0x5555555813a7 *)
ror ymm6_0 ymm6_0 0x17;
ror ymm6_1 ymm6_1 0x17;
ror ymm6_2 ymm6_2 0x17;
ror ymm6_3 ymm6_3 0x17;
(* vprolq $0x2,%ymm17,%ymm17                       #! PC = 0x5555555813ae *)
rol ymm17_0 ymm17_0 0x2;
rol ymm17_1 ymm17_1 0x2;
rol ymm17_2 ymm17_2 0x2;
rol ymm17_3 ymm17_3 0x2;
(* vprorq $0x19,%ymm19,%ymm19                      #! PC = 0x5555555813b5 *)
ror ymm19_0 ymm19_0 0x19;
ror ymm19_1 ymm19_1 0x19;
ror ymm19_2 ymm19_2 0x19;
ror ymm19_3 ymm19_3 0x19;
(* vmovdqa64 %ymm18,%ymm30                         #! PC = 0x5555555813bc *)
mov ymm30_0 ymm18_0;
mov ymm30_1 ymm18_1;
mov ymm30_2 ymm18_2;
mov ymm30_3 ymm18_3;
(* vmovdqa64 %ymm23,%ymm20                         #! PC = 0x5555555813c2 *)
mov ymm20_0 ymm23_0;
mov ymm20_1 ymm23_1;
mov ymm20_2 ymm23_2;
mov ymm20_3 ymm23_3;
(* vpternlogq $0xd2,%ymm3,%ymm23,%ymm30            #! PC = 0x5555555813c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm23_0, ymm3_0, table);
call vpternlogq64 (ymm30_1, ymm23_1, ymm3_1, table);
call vpternlogq64 (ymm30_2, ymm23_2, ymm3_2, table);
call vpternlogq64 (ymm30_3, ymm23_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm3,%ymm20             #! PC = 0x5555555813cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm3_0, ymm8_0, table);
call vpternlogq64 (ymm20_1, ymm3_1, ymm8_1, table);
call vpternlogq64 (ymm20_2, ymm3_2, ymm8_2, table);
call vpternlogq64 (ymm20_3, ymm3_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm8,%ymm3              #! PC = 0x5555555813d6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm8_0, ymm9_0, table);
call vpternlogq64 (ymm3_1, ymm8_1, ymm9_1, table);
call vpternlogq64 (ymm3_2, ymm8_2, ymm9_2, table);
call vpternlogq64 (ymm3_3, ymm8_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm9,%ymm8             #! PC = 0x5555555813dd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm9_0, ymm18_0, table);
call vpternlogq64 (ymm8_1, ymm9_1, ymm18_1, table);
call vpternlogq64 (ymm8_2, ymm9_2, ymm18_2, table);
call vpternlogq64 (ymm8_3, ymm9_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm18,%ymm9            #! PC = 0x5555555813e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm18_0, ymm23_0, table);
call vpternlogq64 (ymm9_1, ymm18_1, ymm23_1, table);
call vpternlogq64 (ymm9_2, ymm18_2, ymm23_2, table);
call vpternlogq64 (ymm9_3, ymm18_3, ymm23_3, table);
(* vpbroadcastq %rcx,%ymm18                        #! PC = 0x5555555813eb *)
mov ymm18_0 rcx;
mov ymm18_1 rcx;
mov ymm18_2 rcx;
mov ymm18_3 rcx;
(* vpxorq %ymm30,%ymm18,%ymm18                     #! PC = 0x5555555813f1 *)
xor ymm18_0@uint64 ymm18_0 ymm30_0;
xor ymm18_1@uint64 ymm18_1 ymm30_1;
xor ymm18_2@uint64 ymm18_2 ymm30_2;
xor ymm18_3@uint64 ymm18_3 ymm30_3;
(* vmovdqa64 %ymm14,%ymm23                         #! PC = 0x5555555813f7 *)
mov ymm23_0 ymm14_0;
mov ymm23_1 ymm14_1;
mov ymm23_2 ymm14_2;
mov ymm23_3 ymm14_3;
(* vmovdqa64 %ymm10,%ymm30                         #! PC = 0x5555555813fd *)
mov ymm30_0 ymm10_0;
mov ymm30_1 ymm10_1;
mov ymm30_2 ymm10_2;
mov ymm30_3 ymm10_3;
(* vpternlogq $0xd2,%ymm4,%ymm14,%ymm30            #! PC = 0x555555581403 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm14_0, ymm4_0, table);
call vpternlogq64 (ymm30_1, ymm14_1, ymm4_1, table);
call vpternlogq64 (ymm30_2, ymm14_2, ymm4_2, table);
call vpternlogq64 (ymm30_3, ymm14_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm15,%ymm4,%ymm23            #! PC = 0x55555558140a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm4_0, ymm15_0, table);
call vpternlogq64 (ymm23_1, ymm4_1, ymm15_1, table);
call vpternlogq64 (ymm23_2, ymm4_2, ymm15_2, table);
call vpternlogq64 (ymm23_3, ymm4_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm15,%ymm4            #! PC = 0x555555581411 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm15_0, ymm28_0, table);
call vpternlogq64 (ymm4_1, ymm15_1, ymm28_1, table);
call vpternlogq64 (ymm4_2, ymm15_2, ymm28_2, table);
call vpternlogq64 (ymm4_3, ymm15_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm28,%ymm15           #! PC = 0x555555581418 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm28_0, ymm10_0, table);
call vpternlogq64 (ymm15_1, ymm28_1, ymm10_1, table);
call vpternlogq64 (ymm15_2, ymm28_2, ymm10_2, table);
call vpternlogq64 (ymm15_3, ymm28_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm10,%ymm28           #! PC = 0x55555558141f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm10_0, ymm14_0, table);
call vpternlogq64 (ymm28_1, ymm10_1, ymm14_1, table);
call vpternlogq64 (ymm28_2, ymm10_2, ymm14_2, table);
call vpternlogq64 (ymm28_3, ymm10_3, ymm14_3, table);
(* vmovdqa64 %ymm22,%ymm14                         #! PC = 0x555555581426 *)
mov ymm14_0 ymm22_0;
mov ymm14_1 ymm22_1;
mov ymm14_2 ymm22_2;
mov ymm14_3 ymm22_3;
(* vmovdqa %ymm5,%ymm10                            #! PC = 0x55555558142c *)
mov ymm10_0 ymm5_0;
mov ymm10_1 ymm5_1;
mov ymm10_2 ymm5_2;
mov ymm10_3 ymm5_3;
(* vpternlogq $0xd2,%ymm2,%ymm5,%ymm14             #! PC = 0x555555581430 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm5_0, ymm2_0, table);
call vpternlogq64 (ymm14_1, ymm5_1, ymm2_1, table);
call vpternlogq64 (ymm14_2, ymm5_2, ymm2_2, table);
call vpternlogq64 (ymm14_3, ymm5_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm2,%ymm10            #! PC = 0x555555581437 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm21_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm21_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm21_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm21,%ymm2            #! PC = 0x55555558143e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm21_0, ymm13_0, table);
call vpternlogq64 (ymm2_1, ymm21_1, ymm13_1, table);
call vpternlogq64 (ymm2_2, ymm21_2, ymm13_2, table);
call vpternlogq64 (ymm2_3, ymm21_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm13,%ymm21           #! PC = 0x555555581445 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm13_0, ymm22_0, table);
call vpternlogq64 (ymm21_1, ymm13_1, ymm22_1, table);
call vpternlogq64 (ymm21_2, ymm13_2, ymm22_2, table);
call vpternlogq64 (ymm21_3, ymm13_3, ymm22_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm22,%ymm13            #! PC = 0x55555558144c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm22_0, ymm5_0, table);
call vpternlogq64 (ymm13_1, ymm22_1, ymm5_1, table);
call vpternlogq64 (ymm13_2, ymm22_2, ymm5_2, table);
call vpternlogq64 (ymm13_3, ymm22_3, ymm5_3, table);
(* vmovdqa %ymm11,%ymm5                            #! PC = 0x555555581453 *)
mov ymm5_0 ymm11_0;
mov ymm5_1 ymm11_1;
mov ymm5_2 ymm11_2;
mov ymm5_3 ymm11_3;
(* vmovdqa64 %ymm31,%ymm22                         #! PC = 0x555555581457 *)
mov ymm22_0 ymm31_0;
mov ymm22_1 ymm31_1;
mov ymm22_2 ymm31_2;
mov ymm22_3 ymm31_3;
(* vpternlogq $0xd2,%ymm12,%ymm31,%ymm5            #! PC = 0x55555558145d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm31_0, ymm12_0, table);
call vpternlogq64 (ymm5_1, ymm31_1, ymm12_1, table);
call vpternlogq64 (ymm5_2, ymm31_2, ymm12_2, table);
call vpternlogq64 (ymm5_3, ymm31_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm12,%ymm22            #! PC = 0x555555581464 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm12_0, ymm7_0, table);
call vpternlogq64 (ymm22_1, ymm12_1, ymm7_1, table);
call vpternlogq64 (ymm22_2, ymm12_2, ymm7_2, table);
call vpternlogq64 (ymm22_3, ymm12_3, ymm7_3, table);
(* vmovdqa64 %ymm25,%ymm16                         #! PC = 0x55555558146b *)
mov ymm16_0 ymm25_0;
mov ymm16_1 ymm25_1;
mov ymm16_2 ymm25_2;
mov ymm16_3 ymm25_3;
(* vpternlogq $0xd2,%ymm0,%ymm7,%ymm12             #! PC = 0x555555581471 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm7_0, ymm0_0, table);
call vpternlogq64 (ymm12_1, ymm7_1, ymm0_1, table);
call vpternlogq64 (ymm12_2, ymm7_2, ymm0_2, table);
call vpternlogq64 (ymm12_3, ymm7_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm0,%ymm7             #! PC = 0x555555581478 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm0_0, ymm11_0, table);
call vpternlogq64 (ymm7_1, ymm0_1, ymm11_1, table);
call vpternlogq64 (ymm7_2, ymm0_2, ymm11_2, table);
call vpternlogq64 (ymm7_3, ymm0_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm11,%ymm0            #! PC = 0x55555558147f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm11_0, ymm31_0, table);
call vpternlogq64 (ymm0_1, ymm11_1, ymm31_1, table);
call vpternlogq64 (ymm0_2, ymm11_2, ymm31_2, table);
call vpternlogq64 (ymm0_3, ymm11_3, ymm31_3, table);
(* vmovdqa %ymm1,%ymm11                            #! PC = 0x555555581486 *)
mov ymm11_0 ymm1_0;
mov ymm11_1 ymm1_1;
mov ymm11_2 ymm1_2;
mov ymm11_3 ymm1_3;
(* vpternlogq $0xd2,%ymm19,%ymm25,%ymm11           #! PC = 0x55555558148a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm25_0, ymm19_0, table);
call vpternlogq64 (ymm11_1, ymm25_1, ymm19_1, table);
call vpternlogq64 (ymm11_2, ymm25_2, ymm19_2, table);
call vpternlogq64 (ymm11_3, ymm25_3, ymm19_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm19,%ymm16            #! PC = 0x555555581491 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm19_0, ymm6_0, table);
call vpternlogq64 (ymm16_1, ymm19_1, ymm6_1, table);
call vpternlogq64 (ymm16_2, ymm19_2, ymm6_2, table);
call vpternlogq64 (ymm16_3, ymm19_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm6,%ymm19            #! PC = 0x555555581498 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm6_0, ymm17_0, table);
call vpternlogq64 (ymm19_1, ymm6_1, ymm17_1, table);
call vpternlogq64 (ymm19_2, ymm6_2, ymm17_2, table);
call vpternlogq64 (ymm19_3, ymm6_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm17,%ymm6             #! PC = 0x55555558149f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm17_0, ymm1_0, table);
call vpternlogq64 (ymm6_1, ymm17_1, ymm1_1, table);
call vpternlogq64 (ymm6_2, ymm17_2, ymm1_2, table);
call vpternlogq64 (ymm6_3, ymm17_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm1,%ymm17            #! PC = 0x5555555814a6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm1_0, ymm25_0, table);
call vpternlogq64 (ymm17_1, ymm1_1, ymm25_1, table);
call vpternlogq64 (ymm17_2, ymm1_2, ymm25_2, table);
call vpternlogq64 (ymm17_3, ymm1_3, ymm25_3, table);
(* vmovdqa64 %ymm2,%ymm25                          #! PC = 0x5555555814ad *)
mov ymm25_0 ymm2_0;
mov ymm25_1 ymm2_1;
mov ymm25_2 ymm2_2;
mov ymm25_3 ymm2_3;
(* vpternlogq $0x96,%ymm4,%ymm19,%ymm25            #! PC = 0x5555555814b3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm19_0, ymm4_0, table);
call vpternlogq64 (ymm25_1, ymm19_1, ymm4_1, table);
call vpternlogq64 (ymm25_2, ymm19_2, ymm4_2, table);
call vpternlogq64 (ymm25_3, ymm19_3, ymm4_3, table);
(* vpternlogq $0x96,%ymm3,%ymm12,%ymm25            #! PC = 0x5555555814ba *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm12_0, ymm3_0, table);
call vpternlogq64 (ymm25_1, ymm12_1, ymm3_1, table);
call vpternlogq64 (ymm25_2, ymm12_2, ymm3_2, table);
call vpternlogq64 (ymm25_3, ymm12_3, ymm3_3, table);
(* vprolq $0x1,%ymm25,%ymm1                        #! PC = 0x5555555814c1 *)
rol ymm1_0 ymm25_0 0x1;
rol ymm1_1 ymm25_1 0x1;
rol ymm1_2 ymm25_2 0x1;
rol ymm1_3 ymm25_3 0x1;
(* vmovdqa64 %ymm7,%ymm24                          #! PC = 0x5555555814c8 *)
mov ymm24_0 ymm7_0;
mov ymm24_1 ymm7_1;
mov ymm24_2 ymm7_2;
mov ymm24_3 ymm7_3;
(* vpternlogq $0x96,%ymm21,%ymm8,%ymm24            #! PC = 0x5555555814ce *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm8_0, ymm21_0, table);
call vpternlogq64 (ymm24_1, ymm8_1, ymm21_1, table);
call vpternlogq64 (ymm24_2, ymm8_2, ymm21_2, table);
call vpternlogq64 (ymm24_3, ymm8_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm15,%ymm6,%ymm24            #! PC = 0x5555555814d5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm6_0, ymm15_0, table);
call vpternlogq64 (ymm24_1, ymm6_1, ymm15_1, table);
call vpternlogq64 (ymm24_2, ymm6_2, ymm15_2, table);
call vpternlogq64 (ymm24_3, ymm6_3, ymm15_3, table);
(* vmovdqa64 %ymm17,%ymm29                         #! PC = 0x5555555814dc *)
mov ymm29_0 ymm17_0;
mov ymm29_1 ymm17_1;
mov ymm29_2 ymm17_2;
mov ymm29_3 ymm17_3;
(* vpternlogq $0x96,%ymm0,%ymm28,%ymm29            #! PC = 0x5555555814e2 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm28_0, ymm0_0, table);
call vpternlogq64 (ymm29_1, ymm28_1, ymm0_1, table);
call vpternlogq64 (ymm29_2, ymm28_2, ymm0_2, table);
call vpternlogq64 (ymm29_3, ymm28_3, ymm0_3, table);
(* vmovdqa %ymm1,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x5555555814e9 *)
mov L0x7fffffffd960 ymm1_0;
mov L0x7fffffffd968 ymm1_1;
mov L0x7fffffffd970 ymm1_2;
mov L0x7fffffffd978 ymm1_3;
(* vprolq $0x1,%ymm24,%ymm1                        #! PC = 0x5555555814f2 *)
rol ymm1_0 ymm24_0 0x1;
rol ymm1_1 ymm24_1 0x1;
rol ymm1_2 ymm24_2 0x1;
rol ymm1_3 ymm24_3 0x1;
(* vpternlogq $0x96,%ymm13,%ymm9,%ymm29            #! PC = 0x5555555814f9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm9_0, ymm13_0, table);
call vpternlogq64 (ymm29_1, ymm9_1, ymm13_1, table);
call vpternlogq64 (ymm29_2, ymm9_2, ymm13_2, table);
call vpternlogq64 (ymm29_3, ymm9_3, ymm13_3, table);
(* vmovdqa64 %ymm18,%ymm27                         #! PC = 0x555555581500 *)
mov ymm27_0 ymm18_0;
mov ymm27_1 ymm18_1;
mov ymm27_2 ymm18_2;
mov ymm27_3 ymm18_3;
(* vpternlogq $0x96,%ymm11,%ymm14,%ymm27           #! PC = 0x555555581506 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm14_0, ymm11_0, table);
call vpternlogq64 (ymm27_1, ymm14_1, ymm11_1, table);
call vpternlogq64 (ymm27_2, ymm14_2, ymm11_2, table);
call vpternlogq64 (ymm27_3, ymm14_3, ymm11_3, table);
(* vpternlogq $0x96,%ymm5,%ymm30,%ymm27            #! PC = 0x55555558150d *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm30_0, ymm5_0, table);
call vpternlogq64 (ymm27_1, ymm30_1, ymm5_1, table);
call vpternlogq64 (ymm27_2, ymm30_2, ymm5_2, table);
call vpternlogq64 (ymm27_3, ymm30_3, ymm5_3, table);
(* vmovdqa64 %ymm23,%ymm26                         #! PC = 0x555555581514 *)
mov ymm26_0 ymm23_0;
mov ymm26_1 ymm23_1;
mov ymm26_2 ymm23_2;
mov ymm26_3 ymm23_3;
(* vmovdqa %ymm1,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x55555558151a *)
mov L0x7fffffffd940 ymm1_0;
mov L0x7fffffffd948 ymm1_1;
mov L0x7fffffffd950 ymm1_2;
mov L0x7fffffffd958 ymm1_3;
(* vprolq $0x1,%ymm29,%ymm1                        #! PC = 0x555555581520 *)
rol ymm1_0 ymm29_0 0x1;
rol ymm1_1 ymm29_1 0x1;
rol ymm1_2 ymm29_2 0x1;
rol ymm1_3 ymm29_3 0x1;
(* vpternlogq $0x96,%ymm20,%ymm22,%ymm26           #! PC = 0x555555581527 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm22_0, ymm20_0, table);
call vpternlogq64 (ymm26_1, ymm22_1, ymm20_1, table);
call vpternlogq64 (ymm26_2, ymm22_2, ymm20_2, table);
call vpternlogq64 (ymm26_3, ymm22_3, ymm20_3, table);
(* vpternlogq $0x96,%ymm16,%ymm10,%ymm26           #! PC = 0x55555558152e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm10_0, ymm16_0, table);
call vpternlogq64 (ymm26_1, ymm10_1, ymm16_1, table);
call vpternlogq64 (ymm26_2, ymm10_2, ymm16_2, table);
call vpternlogq64 (ymm26_3, ymm10_3, ymm16_3, table);
(* vprolq $0x1,%ymm26,%ymm31                       #! PC = 0x555555581535 *)
rol ymm31_0 ymm26_0 0x1;
rol ymm31_1 ymm26_1 0x1;
rol ymm31_2 ymm26_2 0x1;
rol ymm31_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd940; Value = 0x927aff10adca854c; PC = 0x55555558153c *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd940;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd948;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd950;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd958;
(* movabs $0x8000000000000080,%rdx                 #! PC = 0x555555581547 *)
mov rdx 0x8000000000000080@uint64;
(* vmovdqa %ymm1,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x555555581551 *)
mov L0x7fffffffd920 ymm1_0;
mov L0x7fffffffd928 ymm1_1;
mov L0x7fffffffd930 ymm1_2;
mov L0x7fffffffd938 ymm1_3;
(* vprolq $0x1,%ymm27,%ymm1                        #! PC = 0x555555581557 *)
rol ymm1_0 ymm27_0 0x1;
rol ymm1_1 ymm27_1 0x1;
rol ymm1_2 ymm27_2 0x1;
rol ymm1_3 ymm27_3 0x1;
(* vpxorq 0x88(%rsp),%ymm27,%ymm27                 #! EA = L0x7fffffffd960; Value = 0xe666f5bdb89bc9b6; PC = 0x55555558155e *)
xor ymm27_0@uint64 ymm27_0 L0x7fffffffd960;
xor ymm27_1@uint64 ymm27_1 L0x7fffffffd968;
xor ymm27_2@uint64 ymm27_2 L0x7fffffffd970;
xor ymm27_3@uint64 ymm27_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd920; Value = 0x6899c7a004fe470e; PC = 0x555555581569 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd920;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd928;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd930;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd938;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581574 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprorq $0x14,%ymm23,%ymm23                      #! PC = 0x55555558157a *)
ror ymm23_0 ymm23_0 0x14;
ror ymm23_1 ymm23_1 0x14;
ror ymm23_2 ymm23_2 0x14;
ror ymm23_3 ymm23_3 0x14;
(* vpxorq %ymm26,%ymm2,%ymm2                       #! PC = 0x555555581581 *)
xor ymm2_0@uint64 ymm2_0 ymm26_0;
xor ymm2_1@uint64 ymm2_1 ymm26_1;
xor ymm2_2@uint64 ymm2_2 ymm26_2;
xor ymm2_3@uint64 ymm2_3 ymm26_3;
(* vpxorq %ymm1,%ymm24,%ymm24                      #! PC = 0x555555581587 *)
xor ymm24_0@uint64 ymm24_0 ymm1_0;
xor ymm24_1@uint64 ymm24_1 ymm1_1;
xor ymm24_2@uint64 ymm24_2 ymm1_2;
xor ymm24_3@uint64 ymm24_3 ymm1_3;
(* vpxorq %ymm25,%ymm7,%ymm7                       #! PC = 0x55555558158d *)
xor ymm7_0@uint64 ymm7_0 ymm25_0;
xor ymm7_1@uint64 ymm7_1 ymm25_1;
xor ymm7_2@uint64 ymm7_2 ymm25_2;
xor ymm7_3@uint64 ymm7_3 ymm25_3;
(* vpxorq %ymm24,%ymm17,%ymm17                     #! PC = 0x555555581593 *)
xor ymm17_0@uint64 ymm17_0 ymm24_0;
xor ymm17_1@uint64 ymm17_1 ymm24_1;
xor ymm17_2@uint64 ymm17_2 ymm24_2;
xor ymm17_3@uint64 ymm17_3 ymm24_3;
(* vprorq $0x15,%ymm2,%ymm2                        #! PC = 0x555555581599 *)
ror ymm2_0 ymm2_0 0x15;
ror ymm2_1 ymm2_1 0x15;
ror ymm2_2 ymm2_2 0x15;
ror ymm2_3 ymm2_3 0x15;
(* vprolq $0x15,%ymm7,%ymm7                        #! PC = 0x5555555815a0 *)
rol ymm7_0 ymm7_0 0x15;
rol ymm7_1 ymm7_1 0x15;
rol ymm7_2 ymm7_2 0x15;
rol ymm7_3 ymm7_3 0x15;
(* vprolq $0xe,%ymm17,%ymm17                       #! PC = 0x5555555815a7 *)
rol ymm17_0 ymm17_0 0xe;
rol ymm17_1 ymm17_1 0xe;
rol ymm17_2 ymm17_2 0xe;
rol ymm17_3 ymm17_3 0xe;
(* vpxorq %ymm31,%ymm29,%ymm29                     #! PC = 0x5555555815ae *)
xor ymm29_0@uint64 ymm29_0 ymm31_0;
xor ymm29_1@uint64 ymm29_1 ymm31_1;
xor ymm29_2@uint64 ymm29_2 ymm31_2;
xor ymm29_3@uint64 ymm29_3 ymm31_3;
(* vpxorq %ymm29,%ymm18,%ymm1                      #! PC = 0x5555555815b4 *)
xor ymm1_0@uint64 ymm18_0 ymm29_0;
xor ymm1_1@uint64 ymm18_1 ymm29_1;
xor ymm1_2@uint64 ymm18_2 ymm29_2;
xor ymm1_3@uint64 ymm18_3 ymm29_3;
(* vmovdqa64 %ymm1,%ymm31                          #! PC = 0x5555555815ba *)
mov ymm31_0 ymm1_0;
mov ymm31_1 ymm1_1;
mov ymm31_2 ymm1_2;
mov ymm31_3 ymm1_3;
(* vmovdqa64 %ymm23,%ymm18                         #! PC = 0x5555555815c0 *)
mov ymm18_0 ymm23_0;
mov ymm18_1 ymm23_1;
mov ymm18_2 ymm23_2;
mov ymm18_3 ymm23_3;
(* vpternlogq $0xd2,%ymm2,%ymm23,%ymm31            #! PC = 0x5555555815c6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm23_0, ymm2_0, table);
call vpternlogq64 (ymm31_1, ymm23_1, ymm2_1, table);
call vpternlogq64 (ymm31_2, ymm23_2, ymm2_2, table);
call vpternlogq64 (ymm31_3, ymm23_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm2,%ymm18             #! PC = 0x5555555815cd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm2_0, ymm7_0, table);
call vpternlogq64 (ymm18_1, ymm2_1, ymm7_1, table);
call vpternlogq64 (ymm18_2, ymm2_2, ymm7_2, table);
call vpternlogq64 (ymm18_3, ymm2_3, ymm7_3, table);
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x5555555815d4 *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpternlogq $0xd2,%ymm17,%ymm7,%ymm2             #! PC = 0x5555555815da *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm7_0, ymm17_0, table);
call vpternlogq64 (ymm2_1, ymm7_1, ymm17_1, table);
call vpternlogq64 (ymm2_2, ymm7_2, ymm17_2, table);
call vpternlogq64 (ymm2_3, ymm7_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm17,%ymm7             #! PC = 0x5555555815e1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm17_0, ymm1_0, table);
call vpternlogq64 (ymm7_1, ymm17_1, ymm1_1, table);
call vpternlogq64 (ymm7_2, ymm17_2, ymm1_2, table);
call vpternlogq64 (ymm7_3, ymm17_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm1,%ymm17            #! PC = 0x5555555815e8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm1_0, ymm23_0, table);
call vpternlogq64 (ymm17_1, ymm1_1, ymm23_1, table);
call vpternlogq64 (ymm17_2, ymm1_2, ymm23_2, table);
call vpternlogq64 (ymm17_3, ymm1_3, ymm23_3, table);
(* vpxorq %ymm24,%ymm28,%ymm1                      #! PC = 0x5555555815ef *)
xor ymm1_0@uint64 ymm28_0 ymm24_0;
xor ymm1_1@uint64 ymm28_1 ymm24_1;
xor ymm1_2@uint64 ymm28_2 ymm24_2;
xor ymm1_3@uint64 ymm28_3 ymm24_3;
(* vprolq $0x1c,%ymm8,%ymm8                        #! PC = 0x5555555815f5 *)
rol ymm8_0 ymm8_0 0x1c;
rol ymm8_1 ymm8_1 0x1c;
rol ymm8_2 ymm8_2 0x1c;
rol ymm8_3 ymm8_3 0x1c;
(* vprolq $0x14,%ymm1,%ymm1                        #! PC = 0x5555555815fc *)
rol ymm1_0 ymm1_0 0x14;
rol ymm1_1 ymm1_1 0x14;
rol ymm1_2 ymm1_2 0x14;
rol ymm1_3 ymm1_3 0x14;
(* vpxorq %ymm29,%ymm14,%ymm14                     #! PC = 0x555555581603 *)
xor ymm14_0@uint64 ymm14_0 ymm29_0;
xor ymm14_1@uint64 ymm14_1 ymm29_1;
xor ymm14_2@uint64 ymm14_2 ymm29_2;
xor ymm14_3@uint64 ymm14_3 ymm29_3;
(* vpxorq %ymm27,%ymm22,%ymm22                     #! PC = 0x555555581609 *)
xor ymm22_0@uint64 ymm22_0 ymm27_0;
xor ymm22_1@uint64 ymm22_1 ymm27_1;
xor ymm22_2@uint64 ymm22_2 ymm27_2;
xor ymm22_3@uint64 ymm22_3 ymm27_3;
(* vpxorq %ymm26,%ymm19,%ymm19                     #! PC = 0x55555558160f *)
xor ymm19_0@uint64 ymm19_0 ymm26_0;
xor ymm19_1@uint64 ymm19_1 ymm26_1;
xor ymm19_2@uint64 ymm19_2 ymm26_2;
xor ymm19_3@uint64 ymm19_3 ymm26_3;
(* vprolq $0x3,%ymm14,%ymm14                       #! PC = 0x555555581615 *)
rol ymm14_0 ymm14_0 0x3;
rol ymm14_1 ymm14_1 0x3;
rol ymm14_2 ymm14_2 0x3;
rol ymm14_3 ymm14_3 0x3;
(* vprorq $0x13,%ymm22,%ymm22                      #! PC = 0x55555558161c *)
ror ymm22_0 ymm22_0 0x13;
ror ymm22_1 ymm22_1 0x13;
ror ymm22_2 ymm22_2 0x13;
ror ymm22_3 ymm22_3 0x13;
(* vprorq $0x3,%ymm19,%ymm19                       #! PC = 0x555555581623 *)
ror ymm19_0 ymm19_0 0x3;
ror ymm19_1 ymm19_1 0x3;
ror ymm19_2 ymm19_2 0x3;
ror ymm19_3 ymm19_3 0x3;
(* vpbroadcastq %r11,%ymm23                        #! PC = 0x55555558162a *)
mov ymm23_0 r11;
mov ymm23_1 r11;
mov ymm23_2 r11;
mov ymm23_3 r11;
(* vpxorq %ymm31,%ymm23,%ymm23                     #! PC = 0x555555581630 *)
xor ymm23_0@uint64 ymm23_0 ymm31_0;
xor ymm23_1@uint64 ymm23_1 ymm31_1;
xor ymm23_2@uint64 ymm23_2 ymm31_2;
xor ymm23_3@uint64 ymm23_3 ymm31_3;
(* vmovdqa64 %ymm1,%ymm28                          #! PC = 0x555555581636 *)
mov ymm28_0 ymm1_0;
mov ymm28_1 ymm1_1;
mov ymm28_2 ymm1_2;
mov ymm28_3 ymm1_3;
(* vmovdqa64 %ymm8,%ymm31                          #! PC = 0x55555558163c *)
mov ymm31_0 ymm8_0;
mov ymm31_1 ymm8_1;
mov ymm31_2 ymm8_2;
mov ymm31_3 ymm8_3;
(* vpxorq %ymm27,%ymm20,%ymm20                     #! PC = 0x555555581642 *)
xor ymm20_0@uint64 ymm20_0 ymm27_0;
xor ymm20_1@uint64 ymm20_1 ymm27_1;
xor ymm20_2@uint64 ymm20_2 ymm27_2;
xor ymm20_3@uint64 ymm20_3 ymm27_3;
(* vpxorq %ymm26,%ymm4,%ymm4                       #! PC = 0x555555581648 *)
xor ymm4_0@uint64 ymm4_0 ymm26_0;
xor ymm4_1@uint64 ymm4_1 ymm26_1;
xor ymm4_2@uint64 ymm4_2 ymm26_2;
xor ymm4_3@uint64 ymm4_3 ymm26_3;
(* vprolq $0x1,%ymm20,%ymm20                       #! PC = 0x55555558164e *)
rol ymm20_0 ymm20_0 0x1;
rol ymm20_1 ymm20_1 0x1;
rol ymm20_2 ymm20_2 0x1;
rol ymm20_3 ymm20_3 0x1;
(* vprolq $0x6,%ymm4,%ymm4                         #! PC = 0x555555581655 *)
rol ymm4_0 ymm4_0 0x6;
rol ymm4_1 ymm4_1 0x6;
rol ymm4_2 ymm4_2 0x6;
rol ymm4_3 ymm4_3 0x6;
(* vpternlogq $0xd2,%ymm14,%ymm1,%ymm31            #! PC = 0x55555558165c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm1_0, ymm14_0, table);
call vpternlogq64 (ymm31_1, ymm1_1, ymm14_1, table);
call vpternlogq64 (ymm31_2, ymm1_2, ymm14_2, table);
call vpternlogq64 (ymm31_3, ymm1_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm14,%ymm28           #! PC = 0x555555581663 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm14_0, ymm22_0, table);
call vpternlogq64 (ymm28_1, ymm14_1, ymm22_1, table);
call vpternlogq64 (ymm28_2, ymm14_2, ymm22_2, table);
call vpternlogq64 (ymm28_3, ymm14_3, ymm22_3, table);
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x55555558166a *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vpternlogq $0xd2,%ymm19,%ymm22,%ymm14           #! PC = 0x555555581670 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm22_0, ymm19_0, table);
call vpternlogq64 (ymm14_1, ymm22_1, ymm19_1, table);
call vpternlogq64 (ymm14_2, ymm22_2, ymm19_2, table);
call vpternlogq64 (ymm14_3, ymm22_3, ymm19_3, table);
(* vpxorq %ymm24,%ymm0,%ymm0                       #! PC = 0x555555581677 *)
xor ymm0_0@uint64 ymm0_0 ymm24_0;
xor ymm0_1@uint64 ymm0_1 ymm24_1;
xor ymm0_2@uint64 ymm0_2 ymm24_2;
xor ymm0_3@uint64 ymm0_3 ymm24_3;
(* vpternlogq $0xd2,%ymm8,%ymm19,%ymm22            #! PC = 0x55555558167d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm19_0, ymm8_0, table);
call vpternlogq64 (ymm22_1, ymm19_1, ymm8_1, table);
call vpternlogq64 (ymm22_2, ymm19_2, ymm8_2, table);
call vpternlogq64 (ymm22_3, ymm19_3, ymm8_3, table);
(* vpxorq %ymm29,%ymm30,%ymm30                     #! PC = 0x555555581684 *)
xor ymm30_0@uint64 ymm30_0 ymm29_0;
xor ymm30_1@uint64 ymm30_1 ymm29_1;
xor ymm30_2@uint64 ymm30_2 ymm29_2;
xor ymm30_3@uint64 ymm30_3 ymm29_3;
(* vpternlogq $0xd2,%ymm1,%ymm8,%ymm19             #! PC = 0x55555558168a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm8_0, ymm1_0, table);
call vpternlogq64 (ymm19_1, ymm8_1, ymm1_1, table);
call vpternlogq64 (ymm19_2, ymm8_2, ymm1_2, table);
call vpternlogq64 (ymm19_3, ymm8_3, ymm1_3, table);
(* vpxorq %ymm24,%ymm9,%ymm9                       #! PC = 0x555555581691 *)
xor ymm9_0@uint64 ymm9_0 ymm24_0;
xor ymm9_1@uint64 ymm9_1 ymm24_1;
xor ymm9_2@uint64 ymm9_2 ymm24_2;
xor ymm9_3@uint64 ymm9_3 ymm24_3;
(* vpxorq %ymm25,%ymm21,%ymm1                      #! PC = 0x555555581697 *)
xor ymm1_0@uint64 ymm21_0 ymm25_0;
xor ymm1_1@uint64 ymm21_1 ymm25_1;
xor ymm1_2@uint64 ymm21_2 ymm25_2;
xor ymm1_3@uint64 ymm21_3 ymm25_3;
(* vprorq $0x1c,%ymm30,%ymm30                      #! PC = 0x55555558169d *)
ror ymm30_0 ymm30_0 0x1c;
ror ymm30_1 ymm30_1 0x1c;
ror ymm30_2 ymm30_2 0x1c;
ror ymm30_3 ymm30_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x5555555816a4 *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm11,%ymm11                      #! PC = 0x5555555816ab *)
rol ymm11_0 ymm11_0 0x12;
rol ymm11_1 ymm11_1 0x12;
rol ymm11_2 ymm11_2 0x12;
rol ymm11_3 ymm11_3 0x12;
(* vprolq $0x19,%ymm1,%ymm1                        #! PC = 0x5555555816b2 *)
rol ymm1_0 ymm1_0 0x19;
rol ymm1_1 ymm1_1 0x19;
rol ymm1_2 ymm1_2 0x19;
rol ymm1_3 ymm1_3 0x19;
(* vprolq $0x8,%ymm0,%ymm0                         #! PC = 0x5555555816b9 *)
rol ymm0_0 ymm0_0 0x8;
rol ymm0_1 ymm0_1 0x8;
rol ymm0_2 ymm0_2 0x8;
rol ymm0_3 ymm0_3 0x8;
(* vpxorq %ymm27,%ymm10,%ymm10                     #! PC = 0x5555555816c0 *)
xor ymm10_0@uint64 ymm10_0 ymm27_0;
xor ymm10_1@uint64 ymm10_1 ymm27_1;
xor ymm10_2@uint64 ymm10_2 ymm27_2;
xor ymm10_3@uint64 ymm10_3 ymm27_3;
(* vpxorq %ymm26,%ymm12,%ymm12                     #! PC = 0x5555555816c6 *)
xor ymm12_0@uint64 ymm12_0 ymm26_0;
xor ymm12_1@uint64 ymm12_1 ymm26_1;
xor ymm12_2@uint64 ymm12_2 ymm26_2;
xor ymm12_3@uint64 ymm12_3 ymm26_3;
(* vpxorq %ymm25,%ymm6,%ymm6                       #! PC = 0x5555555816cc *)
xor ymm6_0@uint64 ymm6_0 ymm25_0;
xor ymm6_1@uint64 ymm6_1 ymm25_1;
xor ymm6_2@uint64 ymm6_2 ymm25_2;
xor ymm6_3@uint64 ymm6_3 ymm25_3;
(* vpxorq %ymm26,%ymm3,%ymm3                       #! PC = 0x5555555816d2 *)
xor ymm3_0@uint64 ymm3_0 ymm26_0;
xor ymm3_1@uint64 ymm3_1 ymm26_1;
xor ymm3_2@uint64 ymm3_2 ymm26_2;
xor ymm3_3@uint64 ymm3_3 ymm26_3;
(* vpxorq %ymm25,%ymm15,%ymm15                     #! PC = 0x5555555816d8 *)
xor ymm15_0@uint64 ymm15_0 ymm25_0;
xor ymm15_1@uint64 ymm15_1 ymm25_1;
xor ymm15_2@uint64 ymm15_2 ymm25_2;
xor ymm15_3@uint64 ymm15_3 ymm25_3;
(* vprorq $0x2,%ymm3,%ymm3                         #! PC = 0x5555555816de *)
ror ymm3_0 ymm3_0 0x2;
ror ymm3_1 ymm3_1 0x2;
ror ymm3_2 ymm3_2 0x2;
ror ymm3_3 ymm3_3 0x2;
(* vprorq $0x9,%ymm15,%ymm25                       #! PC = 0x5555555816e5 *)
ror ymm25_0 ymm15_0 0x9;
ror ymm25_1 ymm15_1 0x9;
ror ymm25_2 ymm15_2 0x9;
ror ymm25_3 ymm15_3 0x9;
(* vprolq $0xa,%ymm10,%ymm10                       #! PC = 0x5555555816ec *)
rol ymm10_0 ymm10_0 0xa;
rol ymm10_1 ymm10_1 0xa;
rol ymm10_2 ymm10_2 0xa;
rol ymm10_3 ymm10_3 0xa;
(* vprolq $0xf,%ymm12,%ymm12                       #! PC = 0x5555555816f3 *)
rol ymm12_0 ymm12_0 0xf;
rol ymm12_1 ymm12_1 0xf;
rol ymm12_2 ymm12_2 0xf;
rol ymm12_3 ymm12_3 0xf;
(* vprorq $0x8,%ymm6,%ymm6                         #! PC = 0x5555555816fa *)
ror ymm6_0 ymm6_0 0x8;
ror ymm6_1 ymm6_1 0x8;
ror ymm6_2 ymm6_2 0x8;
ror ymm6_3 ymm6_3 0x8;
(* vpxorq %ymm29,%ymm5,%ymm5                       #! PC = 0x555555581701 *)
xor ymm5_0@uint64 ymm5_0 ymm29_0;
xor ymm5_1@uint64 ymm5_1 ymm29_1;
xor ymm5_2@uint64 ymm5_2 ymm29_2;
xor ymm5_3@uint64 ymm5_3 ymm29_3;
(* vpxorq %ymm27,%ymm16,%ymm16                     #! PC = 0x555555581707 *)
xor ymm16_0@uint64 ymm16_0 ymm27_0;
xor ymm16_1@uint64 ymm16_1 ymm27_1;
xor ymm16_2@uint64 ymm16_2 ymm27_2;
xor ymm16_3@uint64 ymm16_3 ymm27_3;
(* vpxorq %ymm24,%ymm13,%ymm13                     #! PC = 0x55555558170d *)
xor ymm13_0@uint64 ymm13_0 ymm24_0;
xor ymm13_1@uint64 ymm13_1 ymm24_1;
xor ymm13_2@uint64 ymm13_2 ymm24_2;
xor ymm13_3@uint64 ymm13_3 ymm24_3;
(* vprorq $0x17,%ymm5,%ymm5                        #! PC = 0x555555581713 *)
ror ymm5_0 ymm5_0 0x17;
ror ymm5_1 ymm5_1 0x17;
ror ymm5_2 ymm5_2 0x17;
ror ymm5_3 ymm5_3 0x17;
(* vprolq $0x2,%ymm16,%ymm16                       #! PC = 0x55555558171a *)
rol ymm16_0 ymm16_0 0x2;
rol ymm16_1 ymm16_1 0x2;
rol ymm16_2 ymm16_2 0x2;
rol ymm16_3 ymm16_3 0x2;
(* vprorq $0x19,%ymm13,%ymm13                      #! PC = 0x555555581721 *)
ror ymm13_0 ymm13_0 0x19;
ror ymm13_1 ymm13_1 0x19;
ror ymm13_2 ymm13_2 0x19;
ror ymm13_3 ymm13_3 0x19;
(* vmovdqa64 %ymm20,%ymm21                         #! PC = 0x555555581728 *)
mov ymm21_0 ymm20_0;
mov ymm21_1 ymm20_1;
mov ymm21_2 ymm20_2;
mov ymm21_3 ymm20_3;
(* vmovdqa %ymm4,%ymm8                             #! PC = 0x55555558172e *)
mov ymm8_0 ymm4_0;
mov ymm8_1 ymm4_1;
mov ymm8_2 ymm4_2;
mov ymm8_3 ymm4_3;
(* vpternlogq $0xd2,%ymm1,%ymm4,%ymm21             #! PC = 0x555555581732 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm4_0, ymm1_0, table);
call vpternlogq64 (ymm21_1, ymm4_1, ymm1_1, table);
call vpternlogq64 (ymm21_2, ymm4_2, ymm1_2, table);
call vpternlogq64 (ymm21_3, ymm4_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm0,%ymm1,%ymm8              #! PC = 0x555555581739 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm1_0, ymm0_0, table);
call vpternlogq64 (ymm8_1, ymm1_1, ymm0_1, table);
call vpternlogq64 (ymm8_2, ymm1_2, ymm0_2, table);
call vpternlogq64 (ymm8_3, ymm1_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm0,%ymm1             #! PC = 0x555555581740 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm0_0, ymm11_0, table);
call vpternlogq64 (ymm1_1, ymm0_1, ymm11_1, table);
call vpternlogq64 (ymm1_2, ymm0_2, ymm11_2, table);
call vpternlogq64 (ymm1_3, ymm0_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm11,%ymm0            #! PC = 0x555555581747 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm11_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm11_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm11_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm11_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm20,%ymm11            #! PC = 0x55555558174e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm20_0, ymm4_0, table);
call vpternlogq64 (ymm11_1, ymm20_1, ymm4_1, table);
call vpternlogq64 (ymm11_2, ymm20_2, ymm4_2, table);
call vpternlogq64 (ymm11_3, ymm20_3, ymm4_3, table);
(* vmovdqa %ymm9,%ymm4                             #! PC = 0x555555581755 *)
mov ymm4_0 ymm9_0;
mov ymm4_1 ymm9_1;
mov ymm4_2 ymm9_2;
mov ymm4_3 ymm9_3;
(* vmovdqa64 %ymm30,%ymm20                         #! PC = 0x555555581759 *)
mov ymm20_0 ymm30_0;
mov ymm20_1 ymm30_1;
mov ymm20_2 ymm30_2;
mov ymm20_3 ymm30_3;
(* vpternlogq $0xd2,%ymm10,%ymm30,%ymm4            #! PC = 0x55555558175f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm30_0, ymm10_0, table);
call vpternlogq64 (ymm4_1, ymm30_1, ymm10_1, table);
call vpternlogq64 (ymm4_2, ymm30_2, ymm10_2, table);
call vpternlogq64 (ymm4_3, ymm30_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm10,%ymm20           #! PC = 0x555555581766 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm10_0, ymm12_0, table);
call vpternlogq64 (ymm20_1, ymm10_1, ymm12_1, table);
call vpternlogq64 (ymm20_2, ymm10_2, ymm12_2, table);
call vpternlogq64 (ymm20_3, ymm10_3, ymm12_3, table);
(* vmovdqa64 %ymm25,%ymm15                         #! PC = 0x55555558176d *)
mov ymm15_0 ymm25_0;
mov ymm15_1 ymm25_1;
mov ymm15_2 ymm25_2;
mov ymm15_3 ymm25_3;
(* vpternlogq $0xd2,%ymm6,%ymm12,%ymm10            #! PC = 0x555555581773 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm12_0, ymm6_0, table);
call vpternlogq64 (ymm10_1, ymm12_1, ymm6_1, table);
call vpternlogq64 (ymm10_2, ymm12_2, ymm6_2, table);
call vpternlogq64 (ymm10_3, ymm12_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm6,%ymm12             #! PC = 0x55555558177a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm6_0, ymm9_0, table);
call vpternlogq64 (ymm12_1, ymm6_1, ymm9_1, table);
call vpternlogq64 (ymm12_2, ymm6_2, ymm9_2, table);
call vpternlogq64 (ymm12_3, ymm6_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm9,%ymm6             #! PC = 0x555555581781 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm9_0, ymm30_0, table);
call vpternlogq64 (ymm6_1, ymm9_1, ymm30_1, table);
call vpternlogq64 (ymm6_2, ymm9_2, ymm30_2, table);
call vpternlogq64 (ymm6_3, ymm9_3, ymm30_3, table);
(* vmovdqa %ymm3,%ymm9                             #! PC = 0x555555581788 *)
mov ymm9_0 ymm3_0;
mov ymm9_1 ymm3_1;
mov ymm9_2 ymm3_2;
mov ymm9_3 ymm3_3;
(* vpternlogq $0xd2,%ymm13,%ymm25,%ymm9            #! PC = 0x55555558178c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm25_0, ymm13_0, table);
call vpternlogq64 (ymm9_1, ymm25_1, ymm13_1, table);
call vpternlogq64 (ymm9_2, ymm25_2, ymm13_2, table);
call vpternlogq64 (ymm9_3, ymm25_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm13,%ymm15            #! PC = 0x555555581793 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm13_0, ymm5_0, table);
call vpternlogq64 (ymm15_1, ymm13_1, ymm5_1, table);
call vpternlogq64 (ymm15_2, ymm13_2, ymm5_2, table);
call vpternlogq64 (ymm15_3, ymm13_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm5,%ymm13            #! PC = 0x55555558179a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm5_0, ymm16_0, table);
call vpternlogq64 (ymm13_1, ymm5_1, ymm16_1, table);
call vpternlogq64 (ymm13_2, ymm5_2, ymm16_2, table);
call vpternlogq64 (ymm13_3, ymm5_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm16,%ymm5             #! PC = 0x5555555817a1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm16_0, ymm3_0, table);
call vpternlogq64 (ymm5_1, ymm16_1, ymm3_1, table);
call vpternlogq64 (ymm5_2, ymm16_2, ymm3_2, table);
call vpternlogq64 (ymm5_3, ymm16_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm3,%ymm16            #! PC = 0x5555555817a8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm3_0, ymm25_0, table);
call vpternlogq64 (ymm16_1, ymm3_1, ymm25_1, table);
call vpternlogq64 (ymm16_2, ymm3_2, ymm25_2, table);
call vpternlogq64 (ymm16_3, ymm3_3, ymm25_3, table);
(* vmovdqa64 %ymm2,%ymm25                          #! PC = 0x5555555817af *)
mov ymm25_0 ymm2_0;
mov ymm25_1 ymm2_1;
mov ymm25_2 ymm2_2;
mov ymm25_3 ymm2_3;
(* vpternlogq $0x96,%ymm1,%ymm14,%ymm25            #! PC = 0x5555555817b5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm14_0, ymm1_0, table);
call vpternlogq64 (ymm25_1, ymm14_1, ymm1_1, table);
call vpternlogq64 (ymm25_2, ymm14_2, ymm1_2, table);
call vpternlogq64 (ymm25_3, ymm14_3, ymm1_3, table);
(* vpternlogq $0x96,%ymm13,%ymm10,%ymm25           #! PC = 0x5555555817bc *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm10_0, ymm13_0, table);
call vpternlogq64 (ymm25_1, ymm10_1, ymm13_1, table);
call vpternlogq64 (ymm25_2, ymm10_2, ymm13_2, table);
call vpternlogq64 (ymm25_3, ymm10_3, ymm13_3, table);
(* vprolq $0x1,%ymm25,%ymm29                       #! PC = 0x5555555817c3 *)
rol ymm29_0 ymm25_0 0x1;
rol ymm29_1 ymm25_1 0x1;
rol ymm29_2 ymm25_2 0x1;
rol ymm29_3 ymm25_3 0x1;
(* vmovdqa64 %ymm7,%ymm24                          #! PC = 0x5555555817ca *)
mov ymm24_0 ymm7_0;
mov ymm24_1 ymm7_1;
mov ymm24_2 ymm7_2;
mov ymm24_3 ymm7_3;
(* vpternlogq $0x96,%ymm0,%ymm22,%ymm24            #! PC = 0x5555555817d0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm22_0, ymm0_0, table);
call vpternlogq64 (ymm24_1, ymm22_1, ymm0_1, table);
call vpternlogq64 (ymm24_2, ymm22_2, ymm0_2, table);
call vpternlogq64 (ymm24_3, ymm22_3, ymm0_3, table);
(* vpternlogq $0x96,%ymm5,%ymm12,%ymm24            #! PC = 0x5555555817d7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm12_0, ymm5_0, table);
call vpternlogq64 (ymm24_1, ymm12_1, ymm5_1, table);
call vpternlogq64 (ymm24_2, ymm12_2, ymm5_2, table);
call vpternlogq64 (ymm24_3, ymm12_3, ymm5_3, table);
(* vmovdqa64 %ymm17,%ymm3                          #! PC = 0x5555555817de *)
mov ymm3_0 ymm17_0;
mov ymm3_1 ymm17_1;
mov ymm3_2 ymm17_2;
mov ymm3_3 ymm17_3;
(* vpternlogq $0x96,%ymm11,%ymm19,%ymm3            #! PC = 0x5555555817e4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm19_0, ymm11_0, table);
call vpternlogq64 (ymm3_1, ymm19_1, ymm11_1, table);
call vpternlogq64 (ymm3_2, ymm19_2, ymm11_2, table);
call vpternlogq64 (ymm3_3, ymm19_3, ymm11_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555817eb *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm24,%ymm29                       #! PC = 0x5555555817f6 *)
rol ymm29_0 ymm24_0 0x1;
rol ymm29_1 ymm24_1 0x1;
rol ymm29_2 ymm24_2 0x1;
rol ymm29_3 ymm24_3 0x1;
(* vpternlogq $0x96,%ymm16,%ymm6,%ymm3             #! PC = 0x5555555817fd *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm6_0, ymm16_0, table);
call vpternlogq64 (ymm3_1, ymm6_1, ymm16_1, table);
call vpternlogq64 (ymm3_2, ymm6_2, ymm16_2, table);
call vpternlogq64 (ymm3_3, ymm6_3, ymm16_3, table);
(* vmovdqa64 %ymm23,%ymm27                         #! PC = 0x555555581804 *)
mov ymm27_0 ymm23_0;
mov ymm27_1 ymm23_1;
mov ymm27_2 ymm23_2;
mov ymm27_3 ymm23_3;
(* vpternlogq $0x96,%ymm21,%ymm31,%ymm27           #! PC = 0x55555558180a *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm31_0, ymm21_0, table);
call vpternlogq64 (ymm27_1, ymm31_1, ymm21_1, table);
call vpternlogq64 (ymm27_2, ymm31_2, ymm21_2, table);
call vpternlogq64 (ymm27_3, ymm31_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm9,%ymm4,%ymm27             #! PC = 0x555555581811 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm4_0, ymm9_0, table);
call vpternlogq64 (ymm27_1, ymm4_1, ymm9_1, table);
call vpternlogq64 (ymm27_2, ymm4_2, ymm9_2, table);
call vpternlogq64 (ymm27_3, ymm4_3, ymm9_3, table);
(* vmovdqa64 %ymm18,%ymm26                         #! PC = 0x555555581818 *)
mov ymm26_0 ymm18_0;
mov ymm26_1 ymm18_1;
mov ymm26_2 ymm18_2;
mov ymm26_3 ymm18_3;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x55555558181e *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm3,%ymm29                        #! PC = 0x555555581829 *)
rol ymm29_0 ymm3_0 0x1;
rol ymm29_1 ymm3_1 0x1;
rol ymm29_2 ymm3_2 0x1;
rol ymm29_3 ymm3_3 0x1;
(* vpternlogq $0x96,%ymm8,%ymm28,%ymm26            #! PC = 0x555555581830 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm28_0, ymm8_0, table);
call vpternlogq64 (ymm26_1, ymm28_1, ymm8_1, table);
call vpternlogq64 (ymm26_2, ymm28_2, ymm8_2, table);
call vpternlogq64 (ymm26_3, ymm28_3, ymm8_3, table);
(* vpternlogq $0x96,%ymm15,%ymm20,%ymm26           #! PC = 0x555555581837 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm20_0, ymm15_0, table);
call vpternlogq64 (ymm26_1, ymm20_1, ymm15_1, table);
call vpternlogq64 (ymm26_2, ymm20_2, ymm15_2, table);
call vpternlogq64 (ymm26_3, ymm20_3, ymm15_3, table);
(* vprolq $0x1,%ymm26,%ymm30                       #! PC = 0x55555558183e *)
rol ymm30_0 ymm26_0 0x1;
rol ymm30_1 ymm26_1 0x1;
rol ymm30_2 ymm26_2 0x1;
rol ymm30_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd940; Value = 0x5db76cc3d3ec85c8; PC = 0x555555581845 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd940;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd948;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd950;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd958;
(* mov    $0x800a,%ecx                             #! PC = 0x555555581850 *)
mov rcx 0x800a@uint64;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555581855 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm27,%ymm29                       #! PC = 0x555555581860 *)
rol ymm29_0 ymm27_0 0x1;
rol ymm29_1 ymm27_1 0x1;
rol ymm29_2 ymm27_2 0x1;
rol ymm29_3 ymm27_3 0x1;
(* vpxorq 0x88(%rsp),%ymm27,%ymm27                 #! EA = L0x7fffffffd960; Value = 0xc01726baa3d3558b; PC = 0x555555581867 *)
xor ymm27_0@uint64 ymm27_0 L0x7fffffffd960;
xor ymm27_1@uint64 ymm27_1 L0x7fffffffd968;
xor ymm27_2@uint64 ymm27_2 L0x7fffffffd970;
xor ymm27_3@uint64 ymm27_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd920; Value = 0xc3189483d16cb956; PC = 0x555555581872 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd920;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd928;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd930;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd938;
(* vpxorq %ymm27,%ymm28,%ymm28                     #! PC = 0x55555558187d *)
xor ymm28_0@uint64 ymm28_0 ymm27_0;
xor ymm28_1@uint64 ymm28_1 ymm27_1;
xor ymm28_2@uint64 ymm28_2 ymm27_2;
xor ymm28_3@uint64 ymm28_3 ymm27_3;
(* vprorq $0x14,%ymm28,%ymm28                      #! PC = 0x555555581883 *)
ror ymm28_0 ymm28_0 0x14;
ror ymm28_1 ymm28_1 0x14;
ror ymm28_2 ymm28_2 0x14;
ror ymm28_3 ymm28_3 0x14;
(* vpxorq %ymm26,%ymm1,%ymm1                       #! PC = 0x55555558188a *)
xor ymm1_0@uint64 ymm1_0 ymm26_0;
xor ymm1_1@uint64 ymm1_1 ymm26_1;
xor ymm1_2@uint64 ymm1_2 ymm26_2;
xor ymm1_3@uint64 ymm1_3 ymm26_3;
(* vpxorq %ymm29,%ymm24,%ymm24                     #! PC = 0x555555581890 *)
xor ymm24_0@uint64 ymm24_0 ymm29_0;
xor ymm24_1@uint64 ymm24_1 ymm29_1;
xor ymm24_2@uint64 ymm24_2 ymm29_2;
xor ymm24_3@uint64 ymm24_3 ymm29_3;
(* vpxorq %ymm25,%ymm12,%ymm12                     #! PC = 0x555555581896 *)
xor ymm12_0@uint64 ymm12_0 ymm25_0;
xor ymm12_1@uint64 ymm12_1 ymm25_1;
xor ymm12_2@uint64 ymm12_2 ymm25_2;
xor ymm12_3@uint64 ymm12_3 ymm25_3;
(* vpxorq %ymm24,%ymm16,%ymm16                     #! PC = 0x55555558189c *)
xor ymm16_0@uint64 ymm16_0 ymm24_0;
xor ymm16_1@uint64 ymm16_1 ymm24_1;
xor ymm16_2@uint64 ymm16_2 ymm24_2;
xor ymm16_3@uint64 ymm16_3 ymm24_3;
(* vpxorq %ymm30,%ymm3,%ymm3                       #! PC = 0x5555555818a2 *)
xor ymm3_0@uint64 ymm3_0 ymm30_0;
xor ymm3_1@uint64 ymm3_1 ymm30_1;
xor ymm3_2@uint64 ymm3_2 ymm30_2;
xor ymm3_3@uint64 ymm3_3 ymm30_3;
(* vprorq $0x15,%ymm1,%ymm1                        #! PC = 0x5555555818a8 *)
ror ymm1_0 ymm1_0 0x15;
ror ymm1_1 ymm1_1 0x15;
ror ymm1_2 ymm1_2 0x15;
ror ymm1_3 ymm1_3 0x15;
(* vprolq $0x15,%ymm12,%ymm12                      #! PC = 0x5555555818af *)
rol ymm12_0 ymm12_0 0x15;
rol ymm12_1 ymm12_1 0x15;
rol ymm12_2 ymm12_2 0x15;
rol ymm12_3 ymm12_3 0x15;
(* vprolq $0xe,%ymm16,%ymm16                       #! PC = 0x5555555818b6 *)
rol ymm16_0 ymm16_0 0xe;
rol ymm16_1 ymm16_1 0xe;
rol ymm16_2 ymm16_2 0xe;
rol ymm16_3 ymm16_3 0xe;
(* vpxorq %ymm25,%ymm7,%ymm7                       #! PC = 0x5555555818bd *)
xor ymm7_0@uint64 ymm7_0 ymm25_0;
xor ymm7_1@uint64 ymm7_1 ymm25_1;
xor ymm7_2@uint64 ymm7_2 ymm25_2;
xor ymm7_3@uint64 ymm7_3 ymm25_3;
(* vpxorq %ymm24,%ymm19,%ymm19                     #! PC = 0x5555555818c3 *)
xor ymm19_0@uint64 ymm19_0 ymm24_0;
xor ymm19_1@uint64 ymm19_1 ymm24_1;
xor ymm19_2@uint64 ymm19_2 ymm24_2;
xor ymm19_3@uint64 ymm19_3 ymm24_3;
(* vprolq $0x1c,%ymm7,%ymm7                        #! PC = 0x5555555818c9 *)
rol ymm7_0 ymm7_0 0x1c;
rol ymm7_1 ymm7_1 0x1c;
rol ymm7_2 ymm7_2 0x1c;
rol ymm7_3 ymm7_3 0x1c;
(* vprolq $0x14,%ymm19,%ymm19                      #! PC = 0x5555555818d0 *)
rol ymm19_0 ymm19_0 0x14;
rol ymm19_1 ymm19_1 0x14;
rol ymm19_2 ymm19_2 0x14;
rol ymm19_3 ymm19_3 0x14;
(* vpxorq %ymm3,%ymm21,%ymm21                      #! PC = 0x5555555818d7 *)
xor ymm21_0@uint64 ymm21_0 ymm3_0;
xor ymm21_1@uint64 ymm21_1 ymm3_1;
xor ymm21_2@uint64 ymm21_2 ymm3_2;
xor ymm21_3@uint64 ymm21_3 ymm3_3;
(* vpxorq %ymm27,%ymm20,%ymm20                     #! PC = 0x5555555818dd *)
xor ymm20_0@uint64 ymm20_0 ymm27_0;
xor ymm20_1@uint64 ymm20_1 ymm27_1;
xor ymm20_2@uint64 ymm20_2 ymm27_2;
xor ymm20_3@uint64 ymm20_3 ymm27_3;
(* vpxorq %ymm26,%ymm13,%ymm13                     #! PC = 0x5555555818e3 *)
xor ymm13_0@uint64 ymm13_0 ymm26_0;
xor ymm13_1@uint64 ymm13_1 ymm26_1;
xor ymm13_2@uint64 ymm13_2 ymm26_2;
xor ymm13_3@uint64 ymm13_3 ymm26_3;
(* vpxorq %ymm27,%ymm18,%ymm18                     #! PC = 0x5555555818e9 *)
xor ymm18_0@uint64 ymm18_0 ymm27_0;
xor ymm18_1@uint64 ymm18_1 ymm27_1;
xor ymm18_2@uint64 ymm18_2 ymm27_2;
xor ymm18_3@uint64 ymm18_3 ymm27_3;
(* vpxorq %ymm26,%ymm14,%ymm14                     #! PC = 0x5555555818ef *)
xor ymm14_0@uint64 ymm14_0 ymm26_0;
xor ymm14_1@uint64 ymm14_1 ymm26_1;
xor ymm14_2@uint64 ymm14_2 ymm26_2;
xor ymm14_3@uint64 ymm14_3 ymm26_3;
(* vprolq $0x1,%ymm18,%ymm18                       #! PC = 0x5555555818f5 *)
rol ymm18_0 ymm18_0 0x1;
rol ymm18_1 ymm18_1 0x1;
rol ymm18_2 ymm18_2 0x1;
rol ymm18_3 ymm18_3 0x1;
(* vprolq $0x6,%ymm14,%ymm14                       #! PC = 0x5555555818fc *)
rol ymm14_0 ymm14_0 0x6;
rol ymm14_1 ymm14_1 0x6;
rol ymm14_2 ymm14_2 0x6;
rol ymm14_3 ymm14_3 0x6;
(* vprolq $0x3,%ymm21,%ymm21                       #! PC = 0x555555581903 *)
rol ymm21_0 ymm21_0 0x3;
rol ymm21_1 ymm21_1 0x3;
rol ymm21_2 ymm21_2 0x3;
rol ymm21_3 ymm21_3 0x3;
(* vprorq $0x13,%ymm20,%ymm20                      #! PC = 0x55555558190a *)
ror ymm20_0 ymm20_0 0x13;
ror ymm20_1 ymm20_1 0x13;
ror ymm20_2 ymm20_2 0x13;
ror ymm20_3 ymm20_3 0x13;
(* vprorq $0x3,%ymm13,%ymm13                       #! PC = 0x555555581911 *)
ror ymm13_0 ymm13_0 0x3;
ror ymm13_1 ymm13_1 0x3;
ror ymm13_2 ymm13_2 0x3;
ror ymm13_3 ymm13_3 0x3;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x555555581918 *)
xor ymm9_0@uint64 ymm9_0 ymm3_0;
xor ymm9_1@uint64 ymm9_1 ymm3_1;
xor ymm9_2@uint64 ymm9_2 ymm3_2;
xor ymm9_3@uint64 ymm9_3 ymm3_3;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x55555558191c *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxorq %ymm24,%ymm6,%ymm6                       #! PC = 0x555555581922 *)
xor ymm6_0@uint64 ymm6_0 ymm24_0;
xor ymm6_1@uint64 ymm6_1 ymm24_1;
xor ymm6_2@uint64 ymm6_2 ymm24_2;
xor ymm6_3@uint64 ymm6_3 ymm24_3;
(* vpxorq %ymm3,%ymm31,%ymm31                      #! PC = 0x555555581928 *)
xor ymm31_0@uint64 ymm31_0 ymm3_0;
xor ymm31_1@uint64 ymm31_1 ymm3_1;
xor ymm31_2@uint64 ymm31_2 ymm3_2;
xor ymm31_3@uint64 ymm31_3 ymm3_3;
(* vpxorq %ymm24,%ymm17,%ymm17                     #! PC = 0x55555558192e *)
xor ymm17_0@uint64 ymm17_0 ymm24_0;
xor ymm17_1@uint64 ymm17_1 ymm24_1;
xor ymm17_2@uint64 ymm17_2 ymm24_2;
xor ymm17_3@uint64 ymm17_3 ymm24_3;
(* vprorq $0x1c,%ymm31,%ymm31                      #! PC = 0x555555581934 *)
ror ymm31_0 ymm31_0 0x1c;
ror ymm31_1 ymm31_1 0x1c;
ror ymm31_2 ymm31_2 0x1c;
ror ymm31_3 ymm31_3 0x1c;
(* vprolq $0x1b,%ymm17,%ymm17                      #! PC = 0x55555558193b *)
rol ymm17_0 ymm17_0 0x1b;
rol ymm17_1 ymm17_1 0x1b;
rol ymm17_2 ymm17_2 0x1b;
rol ymm17_3 ymm17_3 0x1b;
(* vprolq $0x12,%ymm9,%ymm9                        #! PC = 0x555555581942 *)
rol ymm9_0 ymm9_0 0x12;
rol ymm9_1 ymm9_1 0x12;
rol ymm9_2 ymm9_2 0x12;
rol ymm9_3 ymm9_3 0x12;
(* vprolq $0x19,%ymm0,%ymm0                        #! PC = 0x555555581949 *)
rol ymm0_0 ymm0_0 0x19;
rol ymm0_1 ymm0_1 0x19;
rol ymm0_2 ymm0_2 0x19;
rol ymm0_3 ymm0_3 0x19;
(* vprolq $0x8,%ymm6,%ymm6                         #! PC = 0x555555581950 *)
rol ymm6_0 ymm6_0 0x8;
rol ymm6_1 ymm6_1 0x8;
rol ymm6_2 ymm6_2 0x8;
rol ymm6_3 ymm6_3 0x8;
(* vpxorq %ymm27,%ymm8,%ymm8                       #! PC = 0x555555581957 *)
xor ymm8_0@uint64 ymm8_0 ymm27_0;
xor ymm8_1@uint64 ymm8_1 ymm27_1;
xor ymm8_2@uint64 ymm8_2 ymm27_2;
xor ymm8_3@uint64 ymm8_3 ymm27_3;
(* vpxorq %ymm26,%ymm10,%ymm10                     #! PC = 0x55555558195d *)
xor ymm10_0@uint64 ymm10_0 ymm26_0;
xor ymm10_1@uint64 ymm10_1 ymm26_1;
xor ymm10_2@uint64 ymm10_2 ymm26_2;
xor ymm10_3@uint64 ymm10_3 ymm26_3;
(* vpxorq %ymm25,%ymm5,%ymm5                       #! PC = 0x555555581963 *)
xor ymm5_0@uint64 ymm5_0 ymm25_0;
xor ymm5_1@uint64 ymm5_1 ymm25_1;
xor ymm5_2@uint64 ymm5_2 ymm25_2;
xor ymm5_3@uint64 ymm5_3 ymm25_3;
(* vpxorq %ymm26,%ymm2,%ymm2                       #! PC = 0x555555581969 *)
xor ymm2_0@uint64 ymm2_0 ymm26_0;
xor ymm2_1@uint64 ymm2_1 ymm26_1;
xor ymm2_2@uint64 ymm2_2 ymm26_2;
xor ymm2_3@uint64 ymm2_3 ymm26_3;
(* vpxorq %ymm25,%ymm22,%ymm22                     #! PC = 0x55555558196f *)
xor ymm22_0@uint64 ymm22_0 ymm25_0;
xor ymm22_1@uint64 ymm22_1 ymm25_1;
xor ymm22_2@uint64 ymm22_2 ymm25_2;
xor ymm22_3@uint64 ymm22_3 ymm25_3;
(* vpxorq %ymm3,%ymm23,%ymm23                      #! PC = 0x555555581975 *)
xor ymm23_0@uint64 ymm23_0 ymm3_0;
xor ymm23_1@uint64 ymm23_1 ymm3_1;
xor ymm23_2@uint64 ymm23_2 ymm3_2;
xor ymm23_3@uint64 ymm23_3 ymm3_3;
(* vprorq $0x2,%ymm2,%ymm2                         #! PC = 0x55555558197b *)
ror ymm2_0 ymm2_0 0x2;
ror ymm2_1 ymm2_1 0x2;
ror ymm2_2 ymm2_2 0x2;
ror ymm2_3 ymm2_3 0x2;
(* vprorq $0x9,%ymm22,%ymm22                       #! PC = 0x555555581982 *)
ror ymm22_0 ymm22_0 0x9;
ror ymm22_1 ymm22_1 0x9;
ror ymm22_2 ymm22_2 0x9;
ror ymm22_3 ymm22_3 0x9;
(* vprolq $0xa,%ymm8,%ymm8                         #! PC = 0x555555581989 *)
rol ymm8_0 ymm8_0 0xa;
rol ymm8_1 ymm8_1 0xa;
rol ymm8_2 ymm8_2 0xa;
rol ymm8_3 ymm8_3 0xa;
(* vprolq $0xf,%ymm10,%ymm10                       #! PC = 0x555555581990 *)
rol ymm10_0 ymm10_0 0xf;
rol ymm10_1 ymm10_1 0xf;
rol ymm10_2 ymm10_2 0xf;
rol ymm10_3 ymm10_3 0xf;
(* vprorq $0x8,%ymm5,%ymm5                         #! PC = 0x555555581997 *)
ror ymm5_0 ymm5_0 0x8;
ror ymm5_1 ymm5_1 0x8;
ror ymm5_2 ymm5_2 0x8;
ror ymm5_3 ymm5_3 0x8;
(* vpxor  %ymm3,%ymm4,%ymm3                        #! PC = 0x55555558199e *)
xor ymm3_0@uint64 ymm4_0 ymm3_0;
xor ymm3_1@uint64 ymm4_1 ymm3_1;
xor ymm3_2@uint64 ymm4_2 ymm3_2;
xor ymm3_3@uint64 ymm4_3 ymm3_3;
(* vpxorq %ymm27,%ymm15,%ymm15                     #! PC = 0x5555555819a2 *)
xor ymm15_0@uint64 ymm15_0 ymm27_0;
xor ymm15_1@uint64 ymm15_1 ymm27_1;
xor ymm15_2@uint64 ymm15_2 ymm27_2;
xor ymm15_3@uint64 ymm15_3 ymm27_3;
(* vpxorq %ymm24,%ymm11,%ymm11                     #! PC = 0x5555555819a8 *)
xor ymm11_0@uint64 ymm11_0 ymm24_0;
xor ymm11_1@uint64 ymm11_1 ymm24_1;
xor ymm11_2@uint64 ymm11_2 ymm24_2;
xor ymm11_3@uint64 ymm11_3 ymm24_3;
(* vprorq $0x17,%ymm3,%ymm3                        #! PC = 0x5555555819ae *)
ror ymm3_0 ymm3_0 0x17;
ror ymm3_1 ymm3_1 0x17;
ror ymm3_2 ymm3_2 0x17;
ror ymm3_3 ymm3_3 0x17;
(* vprolq $0x2,%ymm15,%ymm15                       #! PC = 0x5555555819b5 *)
rol ymm15_0 ymm15_0 0x2;
rol ymm15_1 ymm15_1 0x2;
rol ymm15_2 ymm15_2 0x2;
rol ymm15_3 ymm15_3 0x2;
(* vprorq $0x19,%ymm11,%ymm11                      #! PC = 0x5555555819bc *)
ror ymm11_0 ymm11_0 0x19;
ror ymm11_1 ymm11_1 0x19;
ror ymm11_2 ymm11_2 0x19;
ror ymm11_3 ymm11_3 0x19;
(* vmovdqa64 %ymm23,%ymm30                         #! PC = 0x5555555819c3 *)
mov ymm30_0 ymm23_0;
mov ymm30_1 ymm23_1;
mov ymm30_2 ymm23_2;
mov ymm30_3 ymm23_3;
(* vmovdqa64 %ymm28,%ymm29                         #! PC = 0x5555555819c9 *)
mov ymm29_0 ymm28_0;
mov ymm29_1 ymm28_1;
mov ymm29_2 ymm28_2;
mov ymm29_3 ymm28_3;
(* vpternlogq $0xd2,%ymm1,%ymm28,%ymm30            #! PC = 0x5555555819cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm28_0, ymm1_0, table);
call vpternlogq64 (ymm30_1, ymm28_1, ymm1_1, table);
call vpternlogq64 (ymm30_2, ymm28_2, ymm1_2, table);
call vpternlogq64 (ymm30_3, ymm28_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm1,%ymm29            #! PC = 0x5555555819d6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm29_0, ymm1_0, ymm12_0, table);
call vpternlogq64 (ymm29_1, ymm1_1, ymm12_1, table);
call vpternlogq64 (ymm29_2, ymm1_2, ymm12_2, table);
call vpternlogq64 (ymm29_3, ymm1_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm12,%ymm1            #! PC = 0x5555555819dd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm12_0, ymm16_0, table);
call vpternlogq64 (ymm1_1, ymm12_1, ymm16_1, table);
call vpternlogq64 (ymm1_2, ymm12_2, ymm16_2, table);
call vpternlogq64 (ymm1_3, ymm12_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm16,%ymm12           #! PC = 0x5555555819e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm16_0, ymm23_0, table);
call vpternlogq64 (ymm12_1, ymm16_1, ymm23_1, table);
call vpternlogq64 (ymm12_2, ymm16_2, ymm23_2, table);
call vpternlogq64 (ymm12_3, ymm16_3, ymm23_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm23,%ymm16           #! PC = 0x5555555819eb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm23_0, ymm28_0, table);
call vpternlogq64 (ymm16_1, ymm23_1, ymm28_1, table);
call vpternlogq64 (ymm16_2, ymm23_2, ymm28_2, table);
call vpternlogq64 (ymm16_3, ymm23_3, ymm28_3, table);
(* vpbroadcastq %rbx,%ymm23                        #! PC = 0x5555555819f2 *)
mov ymm23_0 rbx;
mov ymm23_1 rbx;
mov ymm23_2 rbx;
mov ymm23_3 rbx;
(* vpxorq %ymm30,%ymm23,%ymm23                     #! PC = 0x5555555819f8 *)
xor ymm23_0@uint64 ymm23_0 ymm30_0;
xor ymm23_1@uint64 ymm23_1 ymm30_1;
xor ymm23_2@uint64 ymm23_2 ymm30_2;
xor ymm23_3@uint64 ymm23_3 ymm30_3;
(* vmovdqa64 %ymm7,%ymm28                          #! PC = 0x5555555819fe *)
mov ymm28_0 ymm7_0;
mov ymm28_1 ymm7_1;
mov ymm28_2 ymm7_2;
mov ymm28_3 ymm7_3;
(* vmovdqa64 %ymm19,%ymm30                         #! PC = 0x555555581a04 *)
mov ymm30_0 ymm19_0;
mov ymm30_1 ymm19_1;
mov ymm30_2 ymm19_2;
mov ymm30_3 ymm19_3;
(* vpternlogq $0xd2,%ymm21,%ymm19,%ymm28           #! PC = 0x555555581a0a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm19_0, ymm21_0, table);
call vpternlogq64 (ymm28_1, ymm19_1, ymm21_1, table);
call vpternlogq64 (ymm28_2, ymm19_2, ymm21_2, table);
call vpternlogq64 (ymm28_3, ymm19_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm21,%ymm30           #! PC = 0x555555581a11 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm21_0, ymm20_0, table);
call vpternlogq64 (ymm30_1, ymm21_1, ymm20_1, table);
call vpternlogq64 (ymm30_2, ymm21_2, ymm20_2, table);
call vpternlogq64 (ymm30_3, ymm21_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm20,%ymm21           #! PC = 0x555555581a18 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm20_0, ymm13_0, table);
call vpternlogq64 (ymm21_1, ymm20_1, ymm13_1, table);
call vpternlogq64 (ymm21_2, ymm20_2, ymm13_2, table);
call vpternlogq64 (ymm21_3, ymm20_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm13,%ymm20            #! PC = 0x555555581a1f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm13_0, ymm7_0, table);
call vpternlogq64 (ymm20_1, ymm13_1, ymm7_1, table);
call vpternlogq64 (ymm20_2, ymm13_2, ymm7_2, table);
call vpternlogq64 (ymm20_3, ymm13_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm7,%ymm13            #! PC = 0x555555581a26 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm7_0, ymm19_0, table);
call vpternlogq64 (ymm13_1, ymm7_1, ymm19_1, table);
call vpternlogq64 (ymm13_2, ymm7_2, ymm19_2, table);
call vpternlogq64 (ymm13_3, ymm7_3, ymm19_3, table);
(* vmovdqa64 %ymm18,%ymm19                         #! PC = 0x555555581a2d *)
mov ymm19_0 ymm18_0;
mov ymm19_1 ymm18_1;
mov ymm19_2 ymm18_2;
mov ymm19_3 ymm18_3;
(* vmovdqa %ymm14,%ymm7                            #! PC = 0x555555581a33 *)
mov ymm7_0 ymm14_0;
mov ymm7_1 ymm14_1;
mov ymm7_2 ymm14_2;
mov ymm7_3 ymm14_3;
(* vpternlogq $0xd2,%ymm0,%ymm14,%ymm19            #! PC = 0x555555581a37 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm14_0, ymm0_0, table);
call vpternlogq64 (ymm19_1, ymm14_1, ymm0_1, table);
call vpternlogq64 (ymm19_2, ymm14_2, ymm0_2, table);
call vpternlogq64 (ymm19_3, ymm14_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm0,%ymm7              #! PC = 0x555555581a3e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm0_0, ymm6_0, table);
call vpternlogq64 (ymm7_1, ymm0_1, ymm6_1, table);
call vpternlogq64 (ymm7_2, ymm0_2, ymm6_2, table);
call vpternlogq64 (ymm7_3, ymm0_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm6,%ymm0              #! PC = 0x555555581a45 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm6_0, ymm9_0, table);
call vpternlogq64 (ymm0_1, ymm6_1, ymm9_1, table);
call vpternlogq64 (ymm0_2, ymm6_2, ymm9_2, table);
call vpternlogq64 (ymm0_3, ymm6_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm9,%ymm6             #! PC = 0x555555581a4c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm9_0, ymm18_0, table);
call vpternlogq64 (ymm6_1, ymm9_1, ymm18_1, table);
call vpternlogq64 (ymm6_2, ymm9_2, ymm18_2, table);
call vpternlogq64 (ymm6_3, ymm9_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm18,%ymm9            #! PC = 0x555555581a53 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm18_0, ymm14_0, table);
call vpternlogq64 (ymm9_1, ymm18_1, ymm14_1, table);
call vpternlogq64 (ymm9_2, ymm18_2, ymm14_2, table);
call vpternlogq64 (ymm9_3, ymm18_3, ymm14_3, table);
(* vmovdqa64 %ymm17,%ymm14                         #! PC = 0x555555581a5a *)
mov ymm14_0 ymm17_0;
mov ymm14_1 ymm17_1;
mov ymm14_2 ymm17_2;
mov ymm14_3 ymm17_3;
(* vmovdqa64 %ymm31,%ymm18                         #! PC = 0x555555581a60 *)
mov ymm18_0 ymm31_0;
mov ymm18_1 ymm31_1;
mov ymm18_2 ymm31_2;
mov ymm18_3 ymm31_3;
(* vpternlogq $0xd2,%ymm8,%ymm31,%ymm14            #! PC = 0x555555581a66 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm31_0, ymm8_0, table);
call vpternlogq64 (ymm14_1, ymm31_1, ymm8_1, table);
call vpternlogq64 (ymm14_2, ymm31_2, ymm8_2, table);
call vpternlogq64 (ymm14_3, ymm31_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm8,%ymm18            #! PC = 0x555555581a6d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm8_0, ymm10_0, table);
call vpternlogq64 (ymm18_1, ymm8_1, ymm10_1, table);
call vpternlogq64 (ymm18_2, ymm8_2, ymm10_2, table);
call vpternlogq64 (ymm18_3, ymm8_3, ymm10_3, table);
(* vmovdqa64 %ymm22,%ymm24                         #! PC = 0x555555581a74 *)
mov ymm24_0 ymm22_0;
mov ymm24_1 ymm22_1;
mov ymm24_2 ymm22_2;
mov ymm24_3 ymm22_3;
(* vpternlogq $0xd2,%ymm5,%ymm10,%ymm8             #! PC = 0x555555581a7a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm10_0, ymm5_0, table);
call vpternlogq64 (ymm8_1, ymm10_1, ymm5_1, table);
call vpternlogq64 (ymm8_2, ymm10_2, ymm5_2, table);
call vpternlogq64 (ymm8_3, ymm10_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm5,%ymm10            #! PC = 0x555555581a81 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm5_0, ymm17_0, table);
call vpternlogq64 (ymm10_1, ymm5_1, ymm17_1, table);
call vpternlogq64 (ymm10_2, ymm5_2, ymm17_2, table);
call vpternlogq64 (ymm10_3, ymm5_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm17,%ymm5            #! PC = 0x555555581a88 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm17_0, ymm31_0, table);
call vpternlogq64 (ymm5_1, ymm17_1, ymm31_1, table);
call vpternlogq64 (ymm5_2, ymm17_2, ymm31_2, table);
call vpternlogq64 (ymm5_3, ymm17_3, ymm31_3, table);
(* vmovdqa64 %ymm2,%ymm17                          #! PC = 0x555555581a8f *)
mov ymm17_0 ymm2_0;
mov ymm17_1 ymm2_1;
mov ymm17_2 ymm2_2;
mov ymm17_3 ymm2_3;
(* vpternlogq $0xd2,%ymm11,%ymm22,%ymm17           #! PC = 0x555555581a95 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm22_0, ymm11_0, table);
call vpternlogq64 (ymm17_1, ymm22_1, ymm11_1, table);
call vpternlogq64 (ymm17_2, ymm22_2, ymm11_2, table);
call vpternlogq64 (ymm17_3, ymm22_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm11,%ymm24            #! PC = 0x555555581a9c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm11_0, ymm3_0, table);
call vpternlogq64 (ymm24_1, ymm11_1, ymm3_1, table);
call vpternlogq64 (ymm24_2, ymm11_2, ymm3_2, table);
call vpternlogq64 (ymm24_3, ymm11_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm15,%ymm3,%ymm11            #! PC = 0x555555581aa3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm3_0, ymm15_0, table);
call vpternlogq64 (ymm11_1, ymm3_1, ymm15_1, table);
call vpternlogq64 (ymm11_2, ymm3_2, ymm15_2, table);
call vpternlogq64 (ymm11_3, ymm3_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm15,%ymm3             #! PC = 0x555555581aaa *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm15_0, ymm2_0, table);
call vpternlogq64 (ymm3_1, ymm15_1, ymm2_1, table);
call vpternlogq64 (ymm3_2, ymm15_2, ymm2_2, table);
call vpternlogq64 (ymm3_3, ymm15_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm2,%ymm15            #! PC = 0x555555581ab1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm2_0, ymm22_0, table);
call vpternlogq64 (ymm15_1, ymm2_1, ymm22_1, table);
call vpternlogq64 (ymm15_2, ymm2_2, ymm22_2, table);
call vpternlogq64 (ymm15_3, ymm2_3, ymm22_3, table);
(* vmovdqa64 %ymm11,%ymm22                         #! PC = 0x555555581ab8 *)
mov ymm22_0 ymm11_0;
mov ymm22_1 ymm11_1;
mov ymm22_2 ymm11_2;
mov ymm22_3 ymm11_3;
(* vpternlogq $0x96,%ymm1,%ymm0,%ymm22             #! PC = 0x555555581abe *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm0_0, ymm1_0, table);
call vpternlogq64 (ymm22_1, ymm0_1, ymm1_1, table);
call vpternlogq64 (ymm22_2, ymm0_2, ymm1_2, table);
call vpternlogq64 (ymm22_3, ymm0_3, ymm1_3, table);
(* vpternlogq $0x96,%ymm21,%ymm8,%ymm22            #! PC = 0x555555581ac5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm8_0, ymm21_0, table);
call vpternlogq64 (ymm22_1, ymm8_1, ymm21_1, table);
call vpternlogq64 (ymm22_2, ymm8_2, ymm21_2, table);
call vpternlogq64 (ymm22_3, ymm8_3, ymm21_3, table);
(* vprolq $0x1,%ymm22,%ymm2                        #! PC = 0x555555581acc *)
rol ymm2_0 ymm22_0 0x1;
rol ymm2_1 ymm22_1 0x1;
rol ymm2_2 ymm22_2 0x1;
rol ymm2_3 ymm22_3 0x1;
(* vmovdqa64 %ymm20,%ymm4                          #! PC = 0x555555581ad3 *)
mov ymm4_0 ymm20_0;
mov ymm4_1 ymm20_1;
mov ymm4_2 ymm20_2;
mov ymm4_3 ymm20_3;
(* vpternlogq $0x96,%ymm6,%ymm3,%ymm4              #! PC = 0x555555581ad9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm3_0, ymm6_0, table);
call vpternlogq64 (ymm4_1, ymm3_1, ymm6_1, table);
call vpternlogq64 (ymm4_2, ymm3_2, ymm6_2, table);
call vpternlogq64 (ymm4_3, ymm3_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm10,%ymm12,%ymm4            #! PC = 0x555555581ae0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm12_0, ymm10_0, table);
call vpternlogq64 (ymm4_1, ymm12_1, ymm10_1, table);
call vpternlogq64 (ymm4_2, ymm12_2, ymm10_2, table);
call vpternlogq64 (ymm4_3, ymm12_3, ymm10_3, table);
(* vmovdqa64 %ymm5,%ymm27                          #! PC = 0x555555581ae7 *)
mov ymm27_0 ymm5_0;
mov ymm27_1 ymm5_1;
mov ymm27_2 ymm5_2;
mov ymm27_3 ymm5_3;
(* vpternlogq $0x96,%ymm15,%ymm13,%ymm27           #! PC = 0x555555581aed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm13_0, ymm15_0, table);
call vpternlogq64 (ymm27_1, ymm13_1, ymm15_1, table);
call vpternlogq64 (ymm27_2, ymm13_2, ymm15_2, table);
call vpternlogq64 (ymm27_3, ymm13_3, ymm15_3, table);
(* vmovdqa %ymm2,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x555555581af4 *)
mov L0x7fffffffd960 ymm2_0;
mov L0x7fffffffd968 ymm2_1;
mov L0x7fffffffd970 ymm2_2;
mov L0x7fffffffd978 ymm2_3;
(* vprolq $0x1,%ymm4,%ymm2                         #! PC = 0x555555581afd *)
rol ymm2_0 ymm4_0 0x1;
rol ymm2_1 ymm4_1 0x1;
rol ymm2_2 ymm4_2 0x1;
rol ymm2_3 ymm4_3 0x1;
(* vpternlogq $0x96,%ymm16,%ymm9,%ymm27            #! PC = 0x555555581b04 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm9_0, ymm16_0, table);
call vpternlogq64 (ymm27_1, ymm9_1, ymm16_1, table);
call vpternlogq64 (ymm27_2, ymm9_2, ymm16_2, table);
call vpternlogq64 (ymm27_3, ymm9_3, ymm16_3, table);
(* vmovdqa64 %ymm23,%ymm26                         #! PC = 0x555555581b0b *)
mov ymm26_0 ymm23_0;
mov ymm26_1 ymm23_1;
mov ymm26_2 ymm23_2;
mov ymm26_3 ymm23_3;
(* vpternlogq $0x96,%ymm28,%ymm14,%ymm26           #! PC = 0x555555581b11 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm14_0, ymm28_0, table);
call vpternlogq64 (ymm26_1, ymm14_1, ymm28_1, table);
call vpternlogq64 (ymm26_2, ymm14_2, ymm28_2, table);
call vpternlogq64 (ymm26_3, ymm14_3, ymm28_3, table);
(* vpternlogq $0x96,%ymm19,%ymm17,%ymm26           #! PC = 0x555555581b18 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm17_0, ymm19_0, table);
call vpternlogq64 (ymm26_1, ymm17_1, ymm19_1, table);
call vpternlogq64 (ymm26_2, ymm17_2, ymm19_2, table);
call vpternlogq64 (ymm26_3, ymm17_3, ymm19_3, table);
(* vmovdqa64 %ymm7,%ymm25                          #! PC = 0x555555581b1f *)
mov ymm25_0 ymm7_0;
mov ymm25_1 ymm7_1;
mov ymm25_2 ymm7_2;
mov ymm25_3 ymm7_3;
(* vmovdqa %ymm2,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x555555581b25 *)
mov L0x7fffffffd940 ymm2_0;
mov L0x7fffffffd948 ymm2_1;
mov L0x7fffffffd950 ymm2_2;
mov L0x7fffffffd958 ymm2_3;
(* vprolq $0x1,%ymm27,%ymm2                        #! PC = 0x555555581b2b *)
rol ymm2_0 ymm27_0 0x1;
rol ymm2_1 ymm27_1 0x1;
rol ymm2_2 ymm27_2 0x1;
rol ymm2_3 ymm27_3 0x1;
(* vpternlogq $0x96,%ymm18,%ymm29,%ymm25           #! PC = 0x555555581b32 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm29_0, ymm18_0, table);
call vpternlogq64 (ymm25_1, ymm29_1, ymm18_1, table);
call vpternlogq64 (ymm25_2, ymm29_2, ymm18_2, table);
call vpternlogq64 (ymm25_3, ymm29_3, ymm18_3, table);
(* vpternlogq $0x96,%ymm24,%ymm30,%ymm25           #! PC = 0x555555581b39 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm30_0, ymm24_0, table);
call vpternlogq64 (ymm25_1, ymm30_1, ymm24_1, table);
call vpternlogq64 (ymm25_2, ymm30_2, ymm24_2, table);
call vpternlogq64 (ymm25_3, ymm30_3, ymm24_3, table);
(* vprolq $0x1,%ymm25,%ymm31                       #! PC = 0x555555581b40 *)
rol ymm31_0 ymm25_0 0x1;
rol ymm31_1 ymm25_1 0x1;
rol ymm31_2 ymm25_2 0x1;
rol ymm31_3 ymm25_3 0x1;
(* vpxorq 0x68(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd940; Value = 0x42b5c9c1c818954d; PC = 0x555555581b47 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd940;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd948;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd950;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd958;
(* movabs $0x800000008000000a,%r11                 #! PC = 0x555555581b52 *)
mov r11 0x800000008000000a@uint64;
(* vmovdqa %ymm2,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x555555581b5c *)
mov L0x7fffffffd920 ymm2_0;
mov L0x7fffffffd928 ymm2_1;
mov L0x7fffffffd930 ymm2_2;
mov L0x7fffffffd938 ymm2_3;
(* vprolq $0x1,%ymm26,%ymm2                        #! PC = 0x555555581b62 *)
rol ymm2_0 ymm26_0 0x1;
rol ymm2_1 ymm26_1 0x1;
rol ymm2_2 ymm26_2 0x1;
rol ymm2_3 ymm26_3 0x1;
(* vpxorq 0x88(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd960; Value = 0xaecdc5d7e527c992; PC = 0x555555581b69 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd960;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd968;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd970;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd920; Value = 0x1701a6c9b9b6abec; PC = 0x555555581b74 *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd920;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd928;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd930;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd938;
(* vpxorq %ymm26,%ymm30,%ymm30                     #! PC = 0x555555581b7f *)
xor ymm30_0@uint64 ymm30_0 ymm26_0;
xor ymm30_1@uint64 ymm30_1 ymm26_1;
xor ymm30_2@uint64 ymm30_2 ymm26_2;
xor ymm30_3@uint64 ymm30_3 ymm26_3;
(* vprorq $0x14,%ymm30,%ymm30                      #! PC = 0x555555581b85 *)
ror ymm30_0 ymm30_0 0x14;
ror ymm30_1 ymm30_1 0x14;
ror ymm30_2 ymm30_2 0x14;
ror ymm30_3 ymm30_3 0x14;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x555555581b8c *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxor  %ymm2,%ymm4,%ymm4                        #! PC = 0x555555581b92 *)
xor ymm4_0@uint64 ymm4_0 ymm2_0;
xor ymm4_1@uint64 ymm4_1 ymm2_1;
xor ymm4_2@uint64 ymm4_2 ymm2_2;
xor ymm4_3@uint64 ymm4_3 ymm2_3;
(* vpxor  %ymm4,%ymm15,%ymm2                       #! PC = 0x555555581b96 *)
xor ymm2_0@uint64 ymm15_0 ymm4_0;
xor ymm2_1@uint64 ymm15_1 ymm4_1;
xor ymm2_2@uint64 ymm15_2 ymm4_2;
xor ymm2_3@uint64 ymm15_3 ymm4_3;
(* vpxorq %ymm22,%ymm10,%ymm10                     #! PC = 0x555555581b9a *)
xor ymm10_0@uint64 ymm10_0 ymm22_0;
xor ymm10_1@uint64 ymm10_1 ymm22_1;
xor ymm10_2@uint64 ymm10_2 ymm22_2;
xor ymm10_3@uint64 ymm10_3 ymm22_3;
(* vpxorq %ymm31,%ymm27,%ymm27                     #! PC = 0x555555581ba0 *)
xor ymm27_0@uint64 ymm27_0 ymm31_0;
xor ymm27_1@uint64 ymm27_1 ymm31_1;
xor ymm27_2@uint64 ymm27_2 ymm31_2;
xor ymm27_3@uint64 ymm27_3 ymm31_3;
(* vprorq $0x15,%ymm0,%ymm0                        #! PC = 0x555555581ba6 *)
ror ymm0_0 ymm0_0 0x15;
ror ymm0_1 ymm0_1 0x15;
ror ymm0_2 ymm0_2 0x15;
ror ymm0_3 ymm0_3 0x15;
(* vprolq $0x15,%ymm10,%ymm10                      #! PC = 0x555555581bad *)
rol ymm10_0 ymm10_0 0x15;
rol ymm10_1 ymm10_1 0x15;
rol ymm10_2 ymm10_2 0x15;
rol ymm10_3 ymm10_3 0x15;
(* vprolq $0xe,%ymm2,%ymm2                         #! PC = 0x555555581bb4 *)
rol ymm2_0 ymm2_0 0xe;
rol ymm2_1 ymm2_1 0xe;
rol ymm2_2 ymm2_2 0xe;
rol ymm2_3 ymm2_3 0xe;
(* vpxorq %ymm22,%ymm12,%ymm12                     #! PC = 0x555555581bbb *)
xor ymm12_0@uint64 ymm12_0 ymm22_0;
xor ymm12_1@uint64 ymm12_1 ymm22_1;
xor ymm12_2@uint64 ymm12_2 ymm22_2;
xor ymm12_3@uint64 ymm12_3 ymm22_3;
(* vpxor  %ymm4,%ymm13,%ymm13                      #! PC = 0x555555581bc1 *)
xor ymm13_0@uint64 ymm13_0 ymm4_0;
xor ymm13_1@uint64 ymm13_1 ymm4_1;
xor ymm13_2@uint64 ymm13_2 ymm4_2;
xor ymm13_3@uint64 ymm13_3 ymm4_3;
(* vprolq $0x1c,%ymm12,%ymm12                      #! PC = 0x555555581bc5 *)
rol ymm12_0 ymm12_0 0x1c;
rol ymm12_1 ymm12_1 0x1c;
rol ymm12_2 ymm12_2 0x1c;
rol ymm12_3 ymm12_3 0x1c;
(* vprolq $0x14,%ymm13,%ymm13                      #! PC = 0x555555581bcc *)
rol ymm13_0 ymm13_0 0x14;
rol ymm13_1 ymm13_1 0x14;
rol ymm13_2 ymm13_2 0x14;
rol ymm13_3 ymm13_3 0x14;
(* vpxorq %ymm27,%ymm19,%ymm19                     #! PC = 0x555555581bd3 *)
xor ymm19_0@uint64 ymm19_0 ymm27_0;
xor ymm19_1@uint64 ymm19_1 ymm27_1;
xor ymm19_2@uint64 ymm19_2 ymm27_2;
xor ymm19_3@uint64 ymm19_3 ymm27_3;
(* vpxorq %ymm26,%ymm18,%ymm18                     #! PC = 0x555555581bd9 *)
xor ymm18_0@uint64 ymm18_0 ymm26_0;
xor ymm18_1@uint64 ymm18_1 ymm26_1;
xor ymm18_2@uint64 ymm18_2 ymm26_2;
xor ymm18_3@uint64 ymm18_3 ymm26_3;
(* vpxorq %ymm25,%ymm11,%ymm11                     #! PC = 0x555555581bdf *)
xor ymm11_0@uint64 ymm11_0 ymm25_0;
xor ymm11_1@uint64 ymm11_1 ymm25_1;
xor ymm11_2@uint64 ymm11_2 ymm25_2;
xor ymm11_3@uint64 ymm11_3 ymm25_3;
(* vpxorq %ymm26,%ymm29,%ymm29                     #! PC = 0x555555581be5 *)
xor ymm29_0@uint64 ymm29_0 ymm26_0;
xor ymm29_1@uint64 ymm29_1 ymm26_1;
xor ymm29_2@uint64 ymm29_2 ymm26_2;
xor ymm29_3@uint64 ymm29_3 ymm26_3;
(* vpxorq %ymm25,%ymm21,%ymm21                     #! PC = 0x555555581beb *)
xor ymm21_0@uint64 ymm21_0 ymm25_0;
xor ymm21_1@uint64 ymm21_1 ymm25_1;
xor ymm21_2@uint64 ymm21_2 ymm25_2;
xor ymm21_3@uint64 ymm21_3 ymm25_3;
(* vprolq $0x1,%ymm29,%ymm29                       #! PC = 0x555555581bf1 *)
rol ymm29_0 ymm29_0 0x1;
rol ymm29_1 ymm29_1 0x1;
rol ymm29_2 ymm29_2 0x1;
rol ymm29_3 ymm29_3 0x1;
(* vprolq $0x6,%ymm21,%ymm21                       #! PC = 0x555555581bf8 *)
rol ymm21_0 ymm21_0 0x6;
rol ymm21_1 ymm21_1 0x6;
rol ymm21_2 ymm21_2 0x6;
rol ymm21_3 ymm21_3 0x6;
(* vprolq $0x3,%ymm19,%ymm19                       #! PC = 0x555555581bff *)
rol ymm19_0 ymm19_0 0x3;
rol ymm19_1 ymm19_1 0x3;
rol ymm19_2 ymm19_2 0x3;
rol ymm19_3 ymm19_3 0x3;
(* vprorq $0x13,%ymm18,%ymm18                      #! PC = 0x555555581c06 *)
ror ymm18_0 ymm18_0 0x13;
ror ymm18_1 ymm18_1 0x13;
ror ymm18_2 ymm18_2 0x13;
ror ymm18_3 ymm18_3 0x13;
(* vprorq $0x3,%ymm11,%ymm11                       #! PC = 0x555555581c0d *)
ror ymm11_0 ymm11_0 0x3;
ror ymm11_1 ymm11_1 0x3;
ror ymm11_2 ymm11_2 0x3;
ror ymm11_3 ymm11_3 0x3;
(* vpxorq %ymm27,%ymm17,%ymm17                     #! PC = 0x555555581c14 *)
xor ymm17_0@uint64 ymm17_0 ymm27_0;
xor ymm17_1@uint64 ymm17_1 ymm27_1;
xor ymm17_2@uint64 ymm17_2 ymm27_2;
xor ymm17_3@uint64 ymm17_3 ymm27_3;
(* vpxorq %ymm22,%ymm6,%ymm6                       #! PC = 0x555555581c1a *)
xor ymm6_0@uint64 ymm6_0 ymm22_0;
xor ymm6_1@uint64 ymm6_1 ymm22_1;
xor ymm6_2@uint64 ymm6_2 ymm22_2;
xor ymm6_3@uint64 ymm6_3 ymm22_3;
(* vpxor  %ymm4,%ymm5,%ymm5                        #! PC = 0x555555581c20 *)
xor ymm5_0@uint64 ymm5_0 ymm4_0;
xor ymm5_1@uint64 ymm5_1 ymm4_1;
xor ymm5_2@uint64 ymm5_2 ymm4_2;
xor ymm5_3@uint64 ymm5_3 ymm4_3;
(* vpxorq %ymm27,%ymm28,%ymm28                     #! PC = 0x555555581c24 *)
xor ymm28_0@uint64 ymm28_0 ymm27_0;
xor ymm28_1@uint64 ymm28_1 ymm27_1;
xor ymm28_2@uint64 ymm28_2 ymm27_2;
xor ymm28_3@uint64 ymm28_3 ymm27_3;
(* vpxorq %ymm4,%ymm16,%ymm16                      #! PC = 0x555555581c2a *)
xor ymm16_0@uint64 ymm16_0 ymm4_0;
xor ymm16_1@uint64 ymm16_1 ymm4_1;
xor ymm16_2@uint64 ymm16_2 ymm4_2;
xor ymm16_3@uint64 ymm16_3 ymm4_3;
(* vprorq $0x1c,%ymm28,%ymm28                      #! PC = 0x555555581c30 *)
ror ymm28_0 ymm28_0 0x1c;
ror ymm28_1 ymm28_1 0x1c;
ror ymm28_2 ymm28_2 0x1c;
ror ymm28_3 ymm28_3 0x1c;
(* vprolq $0x1b,%ymm16,%ymm16                      #! PC = 0x555555581c37 *)
rol ymm16_0 ymm16_0 0x1b;
rol ymm16_1 ymm16_1 0x1b;
rol ymm16_2 ymm16_2 0x1b;
rol ymm16_3 ymm16_3 0x1b;
(* vprolq $0x12,%ymm17,%ymm17                      #! PC = 0x555555581c3e *)
rol ymm17_0 ymm17_0 0x12;
rol ymm17_1 ymm17_1 0x12;
rol ymm17_2 ymm17_2 0x12;
rol ymm17_3 ymm17_3 0x12;
(* vprolq $0x19,%ymm6,%ymm6                        #! PC = 0x555555581c45 *)
rol ymm6_0 ymm6_0 0x19;
rol ymm6_1 ymm6_1 0x19;
rol ymm6_2 ymm6_2 0x19;
rol ymm6_3 ymm6_3 0x19;
(* vprolq $0x8,%ymm5,%ymm5                         #! PC = 0x555555581c4c *)
rol ymm5_0 ymm5_0 0x8;
rol ymm5_1 ymm5_1 0x8;
rol ymm5_2 ymm5_2 0x8;
rol ymm5_3 ymm5_3 0x8;
(* vpxorq %ymm26,%ymm7,%ymm7                       #! PC = 0x555555581c53 *)
xor ymm7_0@uint64 ymm7_0 ymm26_0;
xor ymm7_1@uint64 ymm7_1 ymm26_1;
xor ymm7_2@uint64 ymm7_2 ymm26_2;
xor ymm7_3@uint64 ymm7_3 ymm26_3;
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x555555581c59 *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpxorq %ymm22,%ymm3,%ymm3                       #! PC = 0x555555581c5f *)
xor ymm3_0@uint64 ymm3_0 ymm22_0;
xor ymm3_1@uint64 ymm3_1 ymm22_1;
xor ymm3_2@uint64 ymm3_2 ymm22_2;
xor ymm3_3@uint64 ymm3_3 ymm22_3;
(* vpxorq %ymm25,%ymm1,%ymm1                       #! PC = 0x555555581c65 *)
xor ymm1_0@uint64 ymm1_0 ymm25_0;
xor ymm1_1@uint64 ymm1_1 ymm25_1;
xor ymm1_2@uint64 ymm1_2 ymm25_2;
xor ymm1_3@uint64 ymm1_3 ymm25_3;
(* vpxorq %ymm22,%ymm20,%ymm20                     #! PC = 0x555555581c6b *)
xor ymm20_0@uint64 ymm20_0 ymm22_0;
xor ymm20_1@uint64 ymm20_1 ymm22_1;
xor ymm20_2@uint64 ymm20_2 ymm22_2;
xor ymm20_3@uint64 ymm20_3 ymm22_3;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581c71 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprorq $0x2,%ymm1,%ymm1                         #! PC = 0x555555581c77 *)
ror ymm1_0 ymm1_0 0x2;
ror ymm1_1 ymm1_1 0x2;
ror ymm1_2 ymm1_2 0x2;
ror ymm1_3 ymm1_3 0x2;
(* vprorq $0x9,%ymm20,%ymm20                       #! PC = 0x555555581c7e *)
ror ymm20_0 ymm20_0 0x9;
ror ymm20_1 ymm20_1 0x9;
ror ymm20_2 ymm20_2 0x9;
ror ymm20_3 ymm20_3 0x9;
(* vprolq $0xa,%ymm7,%ymm7                         #! PC = 0x555555581c85 *)
rol ymm7_0 ymm7_0 0xa;
rol ymm7_1 ymm7_1 0xa;
rol ymm7_2 ymm7_2 0xa;
rol ymm7_3 ymm7_3 0xa;
(* vprolq $0xf,%ymm8,%ymm8                         #! PC = 0x555555581c8c *)
rol ymm8_0 ymm8_0 0xf;
rol ymm8_1 ymm8_1 0xf;
rol ymm8_2 ymm8_2 0xf;
rol ymm8_3 ymm8_3 0xf;
(* vprorq $0x8,%ymm3,%ymm3                         #! PC = 0x555555581c93 *)
ror ymm3_0 ymm3_0 0x8;
ror ymm3_1 ymm3_1 0x8;
ror ymm3_2 ymm3_2 0x8;
ror ymm3_3 ymm3_3 0x8;
(* vpxorq %ymm27,%ymm14,%ymm14                     #! PC = 0x555555581c9a *)
xor ymm14_0@uint64 ymm14_0 ymm27_0;
xor ymm14_1@uint64 ymm14_1 ymm27_1;
xor ymm14_2@uint64 ymm14_2 ymm27_2;
xor ymm14_3@uint64 ymm14_3 ymm27_3;
(* vpxorq %ymm26,%ymm24,%ymm24                     #! PC = 0x555555581ca0 *)
xor ymm24_0@uint64 ymm24_0 ymm26_0;
xor ymm24_1@uint64 ymm24_1 ymm26_1;
xor ymm24_2@uint64 ymm24_2 ymm26_2;
xor ymm24_3@uint64 ymm24_3 ymm26_3;
(* vpxor  %ymm4,%ymm9,%ymm9                        #! PC = 0x555555581ca6 *)
xor ymm9_0@uint64 ymm9_0 ymm4_0;
xor ymm9_1@uint64 ymm9_1 ymm4_1;
xor ymm9_2@uint64 ymm9_2 ymm4_2;
xor ymm9_3@uint64 ymm9_3 ymm4_3;
(* vprorq $0x17,%ymm14,%ymm14                      #! PC = 0x555555581caa *)
ror ymm14_0 ymm14_0 0x17;
ror ymm14_1 ymm14_1 0x17;
ror ymm14_2 ymm14_2 0x17;
ror ymm14_3 ymm14_3 0x17;
(* vprolq $0x2,%ymm24,%ymm24                       #! PC = 0x555555581cb1 *)
rol ymm24_0 ymm24_0 0x2;
rol ymm24_1 ymm24_1 0x2;
rol ymm24_2 ymm24_2 0x2;
rol ymm24_3 ymm24_3 0x2;
(* vprorq $0x19,%ymm9,%ymm9                        #! PC = 0x555555581cb8 *)
ror ymm9_0 ymm9_0 0x19;
ror ymm9_1 ymm9_1 0x19;
ror ymm9_2 ymm9_2 0x19;
ror ymm9_3 ymm9_3 0x19;
(* vmovdqa64 %ymm23,%ymm31                         #! PC = 0x555555581cbf *)
mov ymm31_0 ymm23_0;
mov ymm31_1 ymm23_1;
mov ymm31_2 ymm23_2;
mov ymm31_3 ymm23_3;
(* vmovdqa64 %ymm30,%ymm15                         #! PC = 0x555555581cc5 *)
mov ymm15_0 ymm30_0;
mov ymm15_1 ymm30_1;
mov ymm15_2 ymm30_2;
mov ymm15_3 ymm30_3;
(* vpternlogq $0xd2,%ymm0,%ymm30,%ymm31            #! PC = 0x555555581ccb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm30_0, ymm0_0, table);
call vpternlogq64 (ymm31_1, ymm30_1, ymm0_1, table);
call vpternlogq64 (ymm31_2, ymm30_2, ymm0_2, table);
call vpternlogq64 (ymm31_3, ymm30_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm0,%ymm15            #! PC = 0x555555581cd2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm0_0, ymm10_0, table);
call vpternlogq64 (ymm15_1, ymm0_1, ymm10_1, table);
call vpternlogq64 (ymm15_2, ymm0_2, ymm10_2, table);
call vpternlogq64 (ymm15_3, ymm0_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm10,%ymm0             #! PC = 0x555555581cd9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm10_0, ymm2_0, table);
call vpternlogq64 (ymm0_1, ymm10_1, ymm2_1, table);
call vpternlogq64 (ymm0_2, ymm10_2, ymm2_2, table);
call vpternlogq64 (ymm0_3, ymm10_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm2,%ymm10            #! PC = 0x555555581ce0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm23_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm23_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm23_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm23_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm23,%ymm2            #! PC = 0x555555581ce7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm23_0, ymm30_0, table);
call vpternlogq64 (ymm2_1, ymm23_1, ymm30_1, table);
call vpternlogq64 (ymm2_2, ymm23_2, ymm30_2, table);
call vpternlogq64 (ymm2_3, ymm23_3, ymm30_3, table);
(* vpbroadcastq %r12,%ymm23                        #! PC = 0x555555581cee *)
mov ymm23_0 r12;
mov ymm23_1 r12;
mov ymm23_2 r12;
mov ymm23_3 r12;
(* vpxorq %ymm31,%ymm23,%ymm23                     #! PC = 0x555555581cf4 *)
xor ymm23_0@uint64 ymm23_0 ymm31_0;
xor ymm23_1@uint64 ymm23_1 ymm31_1;
xor ymm23_2@uint64 ymm23_2 ymm31_2;
xor ymm23_3@uint64 ymm23_3 ymm31_3;
(* vmovdqa64 %ymm12,%ymm30                         #! PC = 0x555555581cfa *)
mov ymm30_0 ymm12_0;
mov ymm30_1 ymm12_1;
mov ymm30_2 ymm12_2;
mov ymm30_3 ymm12_3;
(* vmovdqa64 %ymm13,%ymm31                         #! PC = 0x555555581d00 *)
mov ymm31_0 ymm13_0;
mov ymm31_1 ymm13_1;
mov ymm31_2 ymm13_2;
mov ymm31_3 ymm13_3;
(* vpternlogq $0xd2,%ymm19,%ymm13,%ymm30           #! PC = 0x555555581d06 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm13_0, ymm19_0, table);
call vpternlogq64 (ymm30_1, ymm13_1, ymm19_1, table);
call vpternlogq64 (ymm30_2, ymm13_2, ymm19_2, table);
call vpternlogq64 (ymm30_3, ymm13_3, ymm19_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm19,%ymm31           #! PC = 0x555555581d0d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm19_0, ymm18_0, table);
call vpternlogq64 (ymm31_1, ymm19_1, ymm18_1, table);
call vpternlogq64 (ymm31_2, ymm19_2, ymm18_2, table);
call vpternlogq64 (ymm31_3, ymm19_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm18,%ymm19           #! PC = 0x555555581d14 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm18_0, ymm11_0, table);
call vpternlogq64 (ymm19_1, ymm18_1, ymm11_1, table);
call vpternlogq64 (ymm19_2, ymm18_2, ymm11_2, table);
call vpternlogq64 (ymm19_3, ymm18_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm11,%ymm18           #! PC = 0x555555581d1b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm11_0, ymm12_0, table);
call vpternlogq64 (ymm18_1, ymm11_1, ymm12_1, table);
call vpternlogq64 (ymm18_2, ymm11_2, ymm12_2, table);
call vpternlogq64 (ymm18_3, ymm11_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm12,%ymm11           #! PC = 0x555555581d22 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm12_0, ymm13_0, table);
call vpternlogq64 (ymm11_1, ymm12_1, ymm13_1, table);
call vpternlogq64 (ymm11_2, ymm12_2, ymm13_2, table);
call vpternlogq64 (ymm11_3, ymm12_3, ymm13_3, table);
(* vmovdqa64 %ymm29,%ymm13                         #! PC = 0x555555581d29 *)
mov ymm13_0 ymm29_0;
mov ymm13_1 ymm29_1;
mov ymm13_2 ymm29_2;
mov ymm13_3 ymm29_3;
(* vmovdqa64 %ymm21,%ymm12                         #! PC = 0x555555581d2f *)
mov ymm12_0 ymm21_0;
mov ymm12_1 ymm21_1;
mov ymm12_2 ymm21_2;
mov ymm12_3 ymm21_3;
(* vpternlogq $0xd2,%ymm6,%ymm21,%ymm13            #! PC = 0x555555581d35 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm21_0, ymm6_0, table);
call vpternlogq64 (ymm13_1, ymm21_1, ymm6_1, table);
call vpternlogq64 (ymm13_2, ymm21_2, ymm6_2, table);
call vpternlogq64 (ymm13_3, ymm21_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm6,%ymm12             #! PC = 0x555555581d3c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm6_0, ymm5_0, table);
call vpternlogq64 (ymm12_1, ymm6_1, ymm5_1, table);
call vpternlogq64 (ymm12_2, ymm6_2, ymm5_2, table);
call vpternlogq64 (ymm12_3, ymm6_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm5,%ymm6             #! PC = 0x555555581d43 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm5_0, ymm17_0, table);
call vpternlogq64 (ymm6_1, ymm5_1, ymm17_1, table);
call vpternlogq64 (ymm6_2, ymm5_2, ymm17_2, table);
call vpternlogq64 (ymm6_3, ymm5_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm29,%ymm17,%ymm5            #! PC = 0x555555581d4a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm17_0, ymm29_0, table);
call vpternlogq64 (ymm5_1, ymm17_1, ymm29_1, table);
call vpternlogq64 (ymm5_2, ymm17_2, ymm29_2, table);
call vpternlogq64 (ymm5_3, ymm17_3, ymm29_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm29,%ymm17           #! PC = 0x555555581d51 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm29_0, ymm21_0, table);
call vpternlogq64 (ymm17_1, ymm29_1, ymm21_1, table);
call vpternlogq64 (ymm17_2, ymm29_2, ymm21_2, table);
call vpternlogq64 (ymm17_3, ymm29_3, ymm21_3, table);
(* vmovdqa64 %ymm16,%ymm21                         #! PC = 0x555555581d58 *)
mov ymm21_0 ymm16_0;
mov ymm21_1 ymm16_1;
mov ymm21_2 ymm16_2;
mov ymm21_3 ymm16_3;
(* vmovdqa64 %ymm28,%ymm29                         #! PC = 0x555555581d5e *)
mov ymm29_0 ymm28_0;
mov ymm29_1 ymm28_1;
mov ymm29_2 ymm28_2;
mov ymm29_3 ymm28_3;
(* vpternlogq $0xd2,%ymm7,%ymm28,%ymm21            #! PC = 0x555555581d64 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm28_0, ymm7_0, table);
call vpternlogq64 (ymm21_1, ymm28_1, ymm7_1, table);
call vpternlogq64 (ymm21_2, ymm28_2, ymm7_2, table);
call vpternlogq64 (ymm21_3, ymm28_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm7,%ymm29             #! PC = 0x555555581d6b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm29_0, ymm7_0, ymm8_0, table);
call vpternlogq64 (ymm29_1, ymm7_1, ymm8_1, table);
call vpternlogq64 (ymm29_2, ymm7_2, ymm8_2, table);
call vpternlogq64 (ymm29_3, ymm7_3, ymm8_3, table);
(* vmovdqa %ymm1,%ymm4                             #! PC = 0x555555581d72 *)
mov ymm4_0 ymm1_0;
mov ymm4_1 ymm1_1;
mov ymm4_2 ymm1_2;
mov ymm4_3 ymm1_3;
(* vpternlogq $0xd2,%ymm3,%ymm8,%ymm7              #! PC = 0x555555581d76 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm8_0, ymm3_0, table);
call vpternlogq64 (ymm7_1, ymm8_1, ymm3_1, table);
call vpternlogq64 (ymm7_2, ymm8_2, ymm3_2, table);
call vpternlogq64 (ymm7_3, ymm8_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm3,%ymm8             #! PC = 0x555555581d7d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm3_0, ymm16_0, table);
call vpternlogq64 (ymm8_1, ymm3_1, ymm16_1, table);
call vpternlogq64 (ymm8_2, ymm3_2, ymm16_2, table);
call vpternlogq64 (ymm8_3, ymm3_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm16,%ymm3            #! PC = 0x555555581d84 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm16_0, ymm28_0, table);
call vpternlogq64 (ymm3_1, ymm16_1, ymm28_1, table);
call vpternlogq64 (ymm3_2, ymm16_2, ymm28_2, table);
call vpternlogq64 (ymm3_3, ymm16_3, ymm28_3, table);
(* vmovdqa64 %ymm20,%ymm16                         #! PC = 0x555555581d8b *)
mov ymm16_0 ymm20_0;
mov ymm16_1 ymm20_1;
mov ymm16_2 ymm20_2;
mov ymm16_3 ymm20_3;
(* vpternlogq $0xd2,%ymm9,%ymm20,%ymm4             #! PC = 0x555555581d91 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm20_0, ymm9_0, table);
call vpternlogq64 (ymm4_1, ymm20_1, ymm9_1, table);
call vpternlogq64 (ymm4_2, ymm20_2, ymm9_2, table);
call vpternlogq64 (ymm4_3, ymm20_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm9,%ymm16            #! PC = 0x555555581d98 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm9_0, ymm14_0, table);
call vpternlogq64 (ymm16_1, ymm9_1, ymm14_1, table);
call vpternlogq64 (ymm16_2, ymm9_2, ymm14_2, table);
call vpternlogq64 (ymm16_3, ymm9_3, ymm14_3, table);
(* vmovdqa64 %ymm19,%ymm22                         #! PC = 0x555555581d9f *)
mov ymm22_0 ymm19_0;
mov ymm22_1 ymm19_1;
mov ymm22_2 ymm19_2;
mov ymm22_3 ymm19_3;
(* vpternlogq $0xd2,%ymm24,%ymm14,%ymm9            #! PC = 0x555555581da5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm14_0, ymm24_0, table);
call vpternlogq64 (ymm9_1, ymm14_1, ymm24_1, table);
call vpternlogq64 (ymm9_2, ymm14_2, ymm24_2, table);
call vpternlogq64 (ymm9_3, ymm14_3, ymm24_3, table);
(* vpternlogq $0x96,%ymm9,%ymm0,%ymm22             #! PC = 0x555555581dac *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm0_0, ymm9_0, table);
call vpternlogq64 (ymm22_1, ymm0_1, ymm9_1, table);
call vpternlogq64 (ymm22_2, ymm0_2, ymm9_2, table);
call vpternlogq64 (ymm22_3, ymm0_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm6,%ymm7,%ymm22             #! PC = 0x555555581db3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm7_0, ymm6_0, table);
call vpternlogq64 (ymm22_1, ymm7_1, ymm6_1, table);
call vpternlogq64 (ymm22_2, ymm7_2, ymm6_2, table);
call vpternlogq64 (ymm22_3, ymm7_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm24,%ymm14            #! PC = 0x555555581dba *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm24_0, ymm1_0, table);
call vpternlogq64 (ymm14_1, ymm24_1, ymm1_1, table);
call vpternlogq64 (ymm14_2, ymm24_2, ymm1_2, table);
call vpternlogq64 (ymm14_3, ymm24_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm1,%ymm24            #! PC = 0x555555581dc1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm1_0, ymm20_0, table);
call vpternlogq64 (ymm24_1, ymm1_1, ymm20_1, table);
call vpternlogq64 (ymm24_2, ymm1_2, ymm20_2, table);
call vpternlogq64 (ymm24_3, ymm1_3, ymm20_3, table);
(* vprolq $0x1,%ymm22,%ymm1                        #! PC = 0x555555581dc8 *)
rol ymm1_0 ymm22_0 0x1;
rol ymm1_1 ymm22_1 0x1;
rol ymm1_2 ymm22_2 0x1;
rol ymm1_3 ymm22_3 0x1;
(* vmovdqa64 %ymm14,%ymm20                         #! PC = 0x555555581dcf *)
mov ymm20_0 ymm14_0;
mov ymm20_1 ymm14_1;
mov ymm20_2 ymm14_2;
mov ymm20_3 ymm14_3;
(* vpternlogq $0x96,%ymm5,%ymm8,%ymm20             #! PC = 0x555555581dd5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm8_0, ymm5_0, table);
call vpternlogq64 (ymm20_1, ymm8_1, ymm5_1, table);
call vpternlogq64 (ymm20_2, ymm8_2, ymm5_2, table);
call vpternlogq64 (ymm20_3, ymm8_3, ymm5_3, table);
(* vpternlogq $0x96,%ymm10,%ymm18,%ymm20           #! PC = 0x555555581ddc *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm18_0, ymm10_0, table);
call vpternlogq64 (ymm20_1, ymm18_1, ymm10_1, table);
call vpternlogq64 (ymm20_2, ymm18_2, ymm10_2, table);
call vpternlogq64 (ymm20_3, ymm18_3, ymm10_3, table);
(* vmovdqa64 %ymm17,%ymm27                         #! PC = 0x555555581de3 *)
mov ymm27_0 ymm17_0;
mov ymm27_1 ymm17_1;
mov ymm27_2 ymm17_2;
mov ymm27_3 ymm17_3;
(* vpternlogq $0x96,%ymm2,%ymm11,%ymm27            #! PC = 0x555555581de9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm11_0, ymm2_0, table);
call vpternlogq64 (ymm27_1, ymm11_1, ymm2_1, table);
call vpternlogq64 (ymm27_2, ymm11_2, ymm2_2, table);
call vpternlogq64 (ymm27_3, ymm11_3, ymm2_3, table);
(* vmovdqa %ymm1,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x555555581df0 *)
mov L0x7fffffffd960 ymm1_0;
mov L0x7fffffffd968 ymm1_1;
mov L0x7fffffffd970 ymm1_2;
mov L0x7fffffffd978 ymm1_3;
(* vprolq $0x1,%ymm20,%ymm1                        #! PC = 0x555555581df9 *)
rol ymm1_0 ymm20_0 0x1;
rol ymm1_1 ymm20_1 0x1;
rol ymm1_2 ymm20_2 0x1;
rol ymm1_3 ymm20_3 0x1;
(* vpternlogq $0x96,%ymm3,%ymm24,%ymm27            #! PC = 0x555555581e00 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm24_0, ymm3_0, table);
call vpternlogq64 (ymm27_1, ymm24_1, ymm3_1, table);
call vpternlogq64 (ymm27_2, ymm24_2, ymm3_2, table);
call vpternlogq64 (ymm27_3, ymm24_3, ymm3_3, table);
(* vmovdqa64 %ymm23,%ymm26                         #! PC = 0x555555581e07 *)
mov ymm26_0 ymm23_0;
mov ymm26_1 ymm23_1;
mov ymm26_2 ymm23_2;
mov ymm26_3 ymm23_3;
(* vpternlogq $0x96,%ymm21,%ymm4,%ymm26            #! PC = 0x555555581e0d *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm4_0, ymm21_0, table);
call vpternlogq64 (ymm26_1, ymm4_1, ymm21_1, table);
call vpternlogq64 (ymm26_2, ymm4_2, ymm21_2, table);
call vpternlogq64 (ymm26_3, ymm4_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm30,%ymm13,%ymm26           #! PC = 0x555555581e14 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm13_0, ymm30_0, table);
call vpternlogq64 (ymm26_1, ymm13_1, ymm30_1, table);
call vpternlogq64 (ymm26_2, ymm13_2, ymm30_2, table);
call vpternlogq64 (ymm26_3, ymm13_3, ymm30_3, table);
(* vmovdqa64 %ymm29,%ymm25                         #! PC = 0x555555581e1b *)
mov ymm25_0 ymm29_0;
mov ymm25_1 ymm29_1;
mov ymm25_2 ymm29_2;
mov ymm25_3 ymm29_3;
(* vmovdqa %ymm1,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x555555581e21 *)
mov L0x7fffffffd940 ymm1_0;
mov L0x7fffffffd948 ymm1_1;
mov L0x7fffffffd950 ymm1_2;
mov L0x7fffffffd958 ymm1_3;
(* vprolq $0x1,%ymm27,%ymm1                        #! PC = 0x555555581e27 *)
rol ymm1_0 ymm27_0 0x1;
rol ymm1_1 ymm27_1 0x1;
rol ymm1_2 ymm27_2 0x1;
rol ymm1_3 ymm27_3 0x1;
(* vpternlogq $0x96,%ymm31,%ymm12,%ymm25           #! PC = 0x555555581e2e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm12_0, ymm31_0, table);
call vpternlogq64 (ymm25_1, ymm12_1, ymm31_1, table);
call vpternlogq64 (ymm25_2, ymm12_2, ymm31_2, table);
call vpternlogq64 (ymm25_3, ymm12_3, ymm31_3, table);
(* vpternlogq $0x96,%ymm16,%ymm15,%ymm25           #! PC = 0x555555581e35 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm15_0, ymm16_0, table);
call vpternlogq64 (ymm25_1, ymm15_1, ymm16_1, table);
call vpternlogq64 (ymm25_2, ymm15_2, ymm16_2, table);
call vpternlogq64 (ymm25_3, ymm15_3, ymm16_3, table);
(* vprolq $0x1,%ymm25,%ymm28                       #! PC = 0x555555581e3c *)
rol ymm28_0 ymm25_0 0x1;
rol ymm28_1 ymm25_1 0x1;
rol ymm28_2 ymm25_2 0x1;
rol ymm28_3 ymm25_3 0x1;
(* vpxorq 0x68(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd940; Value = 0x96b5c6af2d2e3ebe; PC = 0x555555581e43 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd940;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd948;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd950;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd958;
(* movabs $0x8000000080008081,%rbx                 #! PC = 0x555555581e4e *)
mov rbx 0x8000000080008081@uint64;
(* vmovdqa %ymm1,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x555555581e58 *)
mov L0x7fffffffd920 ymm1_0;
mov L0x7fffffffd928 ymm1_1;
mov L0x7fffffffd930 ymm1_2;
mov L0x7fffffffd938 ymm1_3;
(* vprolq $0x1,%ymm26,%ymm1                        #! PC = 0x555555581e5e *)
rol ymm1_0 ymm26_0 0x1;
rol ymm1_1 ymm26_1 0x1;
rol ymm1_2 ymm26_2 0x1;
rol ymm1_3 ymm26_3 0x1;
(* vpxorq 0x88(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd960; Value = 0xe9a345076cab483c; PC = 0x555555581e65 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd960;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd968;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd970;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd920; Value = 0x2e2e4cd48f2ce866; PC = 0x555555581e70 *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd920;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd928;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd930;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd938;
(* vpxorq %ymm26,%ymm31,%ymm31                     #! PC = 0x555555581e7b *)
xor ymm31_0@uint64 ymm31_0 ymm26_0;
xor ymm31_1@uint64 ymm31_1 ymm26_1;
xor ymm31_2@uint64 ymm31_2 ymm26_2;
xor ymm31_3@uint64 ymm31_3 ymm26_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555581e81 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm25,%ymm6,%ymm6                       #! PC = 0x555555581e88 *)
xor ymm6_0@uint64 ymm6_0 ymm25_0;
xor ymm6_1@uint64 ymm6_1 ymm25_1;
xor ymm6_2@uint64 ymm6_2 ymm25_2;
xor ymm6_3@uint64 ymm6_3 ymm25_3;
(* vpxorq %ymm1,%ymm20,%ymm20                      #! PC = 0x555555581e8e *)
xor ymm20_0@uint64 ymm20_0 ymm1_0;
xor ymm20_1@uint64 ymm20_1 ymm1_1;
xor ymm20_2@uint64 ymm20_2 ymm1_2;
xor ymm20_3@uint64 ymm20_3 ymm1_3;
(* vpxorq %ymm20,%ymm24,%ymm1                      #! PC = 0x555555581e94 *)
xor ymm1_0@uint64 ymm24_0 ymm20_0;
xor ymm1_1@uint64 ymm24_1 ymm20_1;
xor ymm1_2@uint64 ymm24_2 ymm20_2;
xor ymm1_3@uint64 ymm24_3 ymm20_3;
(* vpxorq %ymm22,%ymm8,%ymm8                       #! PC = 0x555555581e9a *)
xor ymm8_0@uint64 ymm8_0 ymm22_0;
xor ymm8_1@uint64 ymm8_1 ymm22_1;
xor ymm8_2@uint64 ymm8_2 ymm22_2;
xor ymm8_3@uint64 ymm8_3 ymm22_3;
(* vprorq $0x15,%ymm6,%ymm6                        #! PC = 0x555555581ea0 *)
ror ymm6_0 ymm6_0 0x15;
ror ymm6_1 ymm6_1 0x15;
ror ymm6_2 ymm6_2 0x15;
ror ymm6_3 ymm6_3 0x15;
(* vprolq $0x15,%ymm8,%ymm8                        #! PC = 0x555555581ea7 *)
rol ymm8_0 ymm8_0 0x15;
rol ymm8_1 ymm8_1 0x15;
rol ymm8_2 ymm8_2 0x15;
rol ymm8_3 ymm8_3 0x15;
(* vprolq $0xe,%ymm1,%ymm1                         #! PC = 0x555555581eae *)
rol ymm1_0 ymm1_0 0xe;
rol ymm1_1 ymm1_1 0xe;
rol ymm1_2 ymm1_2 0xe;
rol ymm1_3 ymm1_3 0xe;
(* vpxorq %ymm28,%ymm27,%ymm27                     #! PC = 0x555555581eb5 *)
xor ymm27_0@uint64 ymm27_0 ymm28_0;
xor ymm27_1@uint64 ymm27_1 ymm28_1;
xor ymm27_2@uint64 ymm27_2 ymm28_2;
xor ymm27_3@uint64 ymm27_3 ymm28_3;
(* vpxorq %ymm22,%ymm10,%ymm10                     #! PC = 0x555555581ebb *)
xor ymm10_0@uint64 ymm10_0 ymm22_0;
xor ymm10_1@uint64 ymm10_1 ymm22_1;
xor ymm10_2@uint64 ymm10_2 ymm22_2;
xor ymm10_3@uint64 ymm10_3 ymm22_3;
(* vpxorq %ymm20,%ymm11,%ymm11                     #! PC = 0x555555581ec1 *)
xor ymm11_0@uint64 ymm11_0 ymm20_0;
xor ymm11_1@uint64 ymm11_1 ymm20_1;
xor ymm11_2@uint64 ymm11_2 ymm20_2;
xor ymm11_3@uint64 ymm11_3 ymm20_3;
(* vprolq $0x1c,%ymm10,%ymm10                      #! PC = 0x555555581ec7 *)
rol ymm10_0 ymm10_0 0x1c;
rol ymm10_1 ymm10_1 0x1c;
rol ymm10_2 ymm10_2 0x1c;
rol ymm10_3 ymm10_3 0x1c;
(* vprolq $0x14,%ymm11,%ymm11                      #! PC = 0x555555581ece *)
rol ymm11_0 ymm11_0 0x14;
rol ymm11_1 ymm11_1 0x14;
rol ymm11_2 ymm11_2 0x14;
rol ymm11_3 ymm11_3 0x14;
(* vpxorq %ymm27,%ymm13,%ymm13                     #! PC = 0x555555581ed5 *)
xor ymm13_0@uint64 ymm13_0 ymm27_0;
xor ymm13_1@uint64 ymm13_1 ymm27_1;
xor ymm13_2@uint64 ymm13_2 ymm27_2;
xor ymm13_3@uint64 ymm13_3 ymm27_3;
(* vpxorq %ymm26,%ymm29,%ymm29                     #! PC = 0x555555581edb *)
xor ymm29_0@uint64 ymm29_0 ymm26_0;
xor ymm29_1@uint64 ymm29_1 ymm26_1;
xor ymm29_2@uint64 ymm29_2 ymm26_2;
xor ymm29_3@uint64 ymm29_3 ymm26_3;
(* vpxorq %ymm25,%ymm9,%ymm9                       #! PC = 0x555555581ee1 *)
xor ymm9_0@uint64 ymm9_0 ymm25_0;
xor ymm9_1@uint64 ymm9_1 ymm25_1;
xor ymm9_2@uint64 ymm9_2 ymm25_2;
xor ymm9_3@uint64 ymm9_3 ymm25_3;
(* vpxorq %ymm26,%ymm15,%ymm15                     #! PC = 0x555555581ee7 *)
xor ymm15_0@uint64 ymm15_0 ymm26_0;
xor ymm15_1@uint64 ymm15_1 ymm26_1;
xor ymm15_2@uint64 ymm15_2 ymm26_2;
xor ymm15_3@uint64 ymm15_3 ymm26_3;
(* vprolq $0x1,%ymm15,%ymm15                       #! PC = 0x555555581eed *)
rol ymm15_0 ymm15_0 0x1;
rol ymm15_1 ymm15_1 0x1;
rol ymm15_2 ymm15_2 0x1;
rol ymm15_3 ymm15_3 0x1;
(* vprolq $0x3,%ymm13,%ymm13                       #! PC = 0x555555581ef4 *)
rol ymm13_0 ymm13_0 0x3;
rol ymm13_1 ymm13_1 0x3;
rol ymm13_2 ymm13_2 0x3;
rol ymm13_3 ymm13_3 0x3;
(* vprorq $0x13,%ymm29,%ymm29                      #! PC = 0x555555581efb *)
ror ymm29_0 ymm29_0 0x13;
ror ymm29_1 ymm29_1 0x13;
ror ymm29_2 ymm29_2 0x13;
ror ymm29_3 ymm29_3 0x13;
(* vprorq $0x3,%ymm9,%ymm9                         #! PC = 0x555555581f02 *)
ror ymm9_0 ymm9_0 0x3;
ror ymm9_1 ymm9_1 0x3;
ror ymm9_2 ymm9_2 0x3;
ror ymm9_3 ymm9_3 0x3;
(* vpxorq %ymm25,%ymm19,%ymm19                     #! PC = 0x555555581f09 *)
xor ymm19_0@uint64 ymm19_0 ymm25_0;
xor ymm19_1@uint64 ymm19_1 ymm25_1;
xor ymm19_2@uint64 ymm19_2 ymm25_2;
xor ymm19_3@uint64 ymm19_3 ymm25_3;
(* vpxorq %ymm22,%ymm5,%ymm5                       #! PC = 0x555555581f0f *)
xor ymm5_0@uint64 ymm5_0 ymm22_0;
xor ymm5_1@uint64 ymm5_1 ymm22_1;
xor ymm5_2@uint64 ymm5_2 ymm22_2;
xor ymm5_3@uint64 ymm5_3 ymm22_3;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581f15 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprolq $0x6,%ymm19,%ymm19                       #! PC = 0x555555581f1b *)
rol ymm19_0 ymm19_0 0x6;
rol ymm19_1 ymm19_1 0x6;
rol ymm19_2 ymm19_2 0x6;
rol ymm19_3 ymm19_3 0x6;
(* vprolq $0x19,%ymm5,%ymm5                        #! PC = 0x555555581f22 *)
rol ymm5_0 ymm5_0 0x19;
rol ymm5_1 ymm5_1 0x19;
rol ymm5_2 ymm5_2 0x19;
rol ymm5_3 ymm5_3 0x19;
(* vmovdqa64 %ymm23,%ymm24                         #! PC = 0x555555581f29 *)
mov ymm24_0 ymm23_0;
mov ymm24_1 ymm23_1;
mov ymm24_2 ymm23_2;
mov ymm24_3 ymm23_3;
(* vmovdqa64 %ymm31,%ymm28                         #! PC = 0x555555581f2f *)
mov ymm28_0 ymm31_0;
mov ymm28_1 ymm31_1;
mov ymm28_2 ymm31_2;
mov ymm28_3 ymm31_3;
(* vpxorq %ymm27,%ymm4,%ymm4                       #! PC = 0x555555581f35 *)
xor ymm4_0@uint64 ymm4_0 ymm27_0;
xor ymm4_1@uint64 ymm4_1 ymm27_1;
xor ymm4_2@uint64 ymm4_2 ymm27_2;
xor ymm4_3@uint64 ymm4_3 ymm27_3;
(* vpxorq %ymm20,%ymm3,%ymm3                       #! PC = 0x555555581f3b *)
xor ymm3_0@uint64 ymm3_0 ymm20_0;
xor ymm3_1@uint64 ymm3_1 ymm20_1;
xor ymm3_2@uint64 ymm3_2 ymm20_2;
xor ymm3_3@uint64 ymm3_3 ymm20_3;
(* vpxorq %ymm27,%ymm30,%ymm30                     #! PC = 0x555555581f41 *)
xor ymm30_0@uint64 ymm30_0 ymm27_0;
xor ymm30_1@uint64 ymm30_1 ymm27_1;
xor ymm30_2@uint64 ymm30_2 ymm27_2;
xor ymm30_3@uint64 ymm30_3 ymm27_3;
(* vpxorq %ymm20,%ymm2,%ymm2                       #! PC = 0x555555581f47 *)
xor ymm2_0@uint64 ymm2_0 ymm20_0;
xor ymm2_1@uint64 ymm2_1 ymm20_1;
xor ymm2_2@uint64 ymm2_2 ymm20_2;
xor ymm2_3@uint64 ymm2_3 ymm20_3;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x555555581f4d *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxorq %ymm22,%ymm18,%ymm18                     #! PC = 0x555555581f53 *)
xor ymm18_0@uint64 ymm18_0 ymm22_0;
xor ymm18_1@uint64 ymm18_1 ymm22_1;
xor ymm18_2@uint64 ymm18_2 ymm22_2;
xor ymm18_3@uint64 ymm18_3 ymm22_3;
(* vprorq $0x1c,%ymm30,%ymm30                      #! PC = 0x555555581f59 *)
ror ymm30_0 ymm30_0 0x1c;
ror ymm30_1 ymm30_1 0x1c;
ror ymm30_2 ymm30_2 0x1c;
ror ymm30_3 ymm30_3 0x1c;
(* vprolq $0x1b,%ymm2,%ymm2                        #! PC = 0x555555581f60 *)
rol ymm2_0 ymm2_0 0x1b;
rol ymm2_1 ymm2_1 0x1b;
rol ymm2_2 ymm2_2 0x1b;
rol ymm2_3 ymm2_3 0x1b;
(* vprorq $0x2,%ymm0,%ymm0                         #! PC = 0x555555581f67 *)
ror ymm0_0 ymm0_0 0x2;
ror ymm0_1 ymm0_1 0x2;
ror ymm0_2 ymm0_2 0x2;
ror ymm0_3 ymm0_3 0x2;
(* vprorq $0x9,%ymm18,%ymm18                       #! PC = 0x555555581f6e *)
ror ymm18_0 ymm18_0 0x9;
ror ymm18_1 ymm18_1 0x9;
ror ymm18_2 ymm18_2 0x9;
ror ymm18_3 ymm18_3 0x9;
(* vpternlogq $0xd2,%ymm6,%ymm31,%ymm24            #! PC = 0x555555581f75 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm31_0, ymm6_0, table);
call vpternlogq64 (ymm24_1, ymm31_1, ymm6_1, table);
call vpternlogq64 (ymm24_2, ymm31_2, ymm6_2, table);
call vpternlogq64 (ymm24_3, ymm31_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm6,%ymm28             #! PC = 0x555555581f7c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm6_0, ymm8_0, table);
call vpternlogq64 (ymm28_1, ymm6_1, ymm8_1, table);
call vpternlogq64 (ymm28_2, ymm6_2, ymm8_2, table);
call vpternlogq64 (ymm28_3, ymm6_3, ymm8_3, table);
(* vprolq $0x12,%ymm4,%ymm4                        #! PC = 0x555555581f83 *)
rol ymm4_0 ymm4_0 0x12;
rol ymm4_1 ymm4_1 0x12;
rol ymm4_2 ymm4_2 0x12;
rol ymm4_3 ymm4_3 0x12;
(* vpternlogq $0xd2,%ymm1,%ymm8,%ymm6              #! PC = 0x555555581f8a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm8_0, ymm1_0, table);
call vpternlogq64 (ymm6_1, ymm8_1, ymm1_1, table);
call vpternlogq64 (ymm6_2, ymm8_2, ymm1_2, table);
call vpternlogq64 (ymm6_3, ymm8_3, ymm1_3, table);
(* vprolq $0x8,%ymm3,%ymm3                         #! PC = 0x555555581f91 *)
rol ymm3_0 ymm3_0 0x8;
rol ymm3_1 ymm3_1 0x8;
rol ymm3_2 ymm3_2 0x8;
rol ymm3_3 ymm3_3 0x8;
(* vpxorq %ymm26,%ymm12,%ymm12                     #! PC = 0x555555581f98 *)
xor ymm12_0@uint64 ymm12_0 ymm26_0;
xor ymm12_1@uint64 ymm12_1 ymm26_1;
xor ymm12_2@uint64 ymm12_2 ymm26_2;
xor ymm12_3@uint64 ymm12_3 ymm26_3;
(* vpxorq %ymm25,%ymm7,%ymm7                       #! PC = 0x555555581f9e *)
xor ymm7_0@uint64 ymm7_0 ymm25_0;
xor ymm7_1@uint64 ymm7_1 ymm25_1;
xor ymm7_2@uint64 ymm7_2 ymm25_2;
xor ymm7_3@uint64 ymm7_3 ymm25_3;
(* vpxorq %ymm22,%ymm14,%ymm14                     #! PC = 0x555555581fa4 *)
xor ymm14_0@uint64 ymm14_0 ymm22_0;
xor ymm14_1@uint64 ymm14_1 ymm22_1;
xor ymm14_2@uint64 ymm14_2 ymm22_2;
xor ymm14_3@uint64 ymm14_3 ymm22_3;
(* vpxorq %ymm27,%ymm21,%ymm21                     #! PC = 0x555555581faa *)
xor ymm21_0@uint64 ymm21_0 ymm27_0;
xor ymm21_1@uint64 ymm21_1 ymm27_1;
xor ymm21_2@uint64 ymm21_2 ymm27_2;
xor ymm21_3@uint64 ymm21_3 ymm27_3;
(* vpxorq %ymm26,%ymm16,%ymm16                     #! PC = 0x555555581fb0 *)
xor ymm16_0@uint64 ymm16_0 ymm26_0;
xor ymm16_1@uint64 ymm16_1 ymm26_1;
xor ymm16_2@uint64 ymm16_2 ymm26_2;
xor ymm16_3@uint64 ymm16_3 ymm26_3;
(* vpxorq %ymm20,%ymm17,%ymm17                     #! PC = 0x555555581fb6 *)
xor ymm17_0@uint64 ymm17_0 ymm20_0;
xor ymm17_1@uint64 ymm17_1 ymm20_1;
xor ymm17_2@uint64 ymm17_2 ymm20_2;
xor ymm17_3@uint64 ymm17_3 ymm20_3;
(* vprolq $0xa,%ymm12,%ymm12                       #! PC = 0x555555581fbc *)
rol ymm12_0 ymm12_0 0xa;
rol ymm12_1 ymm12_1 0xa;
rol ymm12_2 ymm12_2 0xa;
rol ymm12_3 ymm12_3 0xa;
(* vprolq $0xf,%ymm7,%ymm7                         #! PC = 0x555555581fc3 *)
rol ymm7_0 ymm7_0 0xf;
rol ymm7_1 ymm7_1 0xf;
rol ymm7_2 ymm7_2 0xf;
rol ymm7_3 ymm7_3 0xf;
(* vprorq $0x8,%ymm14,%ymm14                       #! PC = 0x555555581fca *)
ror ymm14_0 ymm14_0 0x8;
ror ymm14_1 ymm14_1 0x8;
ror ymm14_2 ymm14_2 0x8;
ror ymm14_3 ymm14_3 0x8;
(* vprorq $0x17,%ymm21,%ymm21                      #! PC = 0x555555581fd1 *)
ror ymm21_0 ymm21_0 0x17;
ror ymm21_1 ymm21_1 0x17;
ror ymm21_2 ymm21_2 0x17;
ror ymm21_3 ymm21_3 0x17;
(* vprolq $0x2,%ymm16,%ymm16                       #! PC = 0x555555581fd8 *)
rol ymm16_0 ymm16_0 0x2;
rol ymm16_1 ymm16_1 0x2;
rol ymm16_2 ymm16_2 0x2;
rol ymm16_3 ymm16_3 0x2;
(* vprorq $0x19,%ymm17,%ymm17                      #! PC = 0x555555581fdf *)
ror ymm17_0 ymm17_0 0x19;
ror ymm17_1 ymm17_1 0x19;
ror ymm17_2 ymm17_2 0x19;
ror ymm17_3 ymm17_3 0x19;
(* vmovdqa %ymm6,-0x38(%rsp)                       #! EA = L0x7fffffffd8a0; PC = 0x555555581fe6 *)
mov L0x7fffffffd8a0 ymm6_0;
mov L0x7fffffffd8a8 ymm6_1;
mov L0x7fffffffd8b0 ymm6_2;
mov L0x7fffffffd8b8 ymm6_3;
(* vpbroadcastq %r13,%ymm6                         #! PC = 0x555555581fec *)
mov ymm6_0 r13;
mov ymm6_1 r13;
mov ymm6_2 r13;
mov ymm6_3 r13;
(* vpternlogq $0xd2,%ymm23,%ymm1,%ymm8             #! PC = 0x555555581ff2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm1_0, ymm23_0, table);
call vpternlogq64 (ymm8_1, ymm1_1, ymm23_1, table);
call vpternlogq64 (ymm8_2, ymm1_2, ymm23_2, table);
call vpternlogq64 (ymm8_3, ymm1_3, ymm23_3, table);
(* vpxorq %ymm24,%ymm6,%ymm6                       #! PC = 0x555555581ff9 *)
xor ymm6_0@uint64 ymm6_0 ymm24_0;
xor ymm6_1@uint64 ymm6_1 ymm24_1;
xor ymm6_2@uint64 ymm6_2 ymm24_2;
xor ymm6_3@uint64 ymm6_3 ymm24_3;
(* vpternlogq $0xd2,%ymm31,%ymm23,%ymm1            #! PC = 0x555555581fff *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm23_0, ymm31_0, table);
call vpternlogq64 (ymm1_1, ymm23_1, ymm31_1, table);
call vpternlogq64 (ymm1_2, ymm23_2, ymm31_2, table);
call vpternlogq64 (ymm1_3, ymm23_3, ymm31_3, table);
(* vmovdqa64 %ymm11,%ymm24                         #! PC = 0x555555582006 *)
mov ymm24_0 ymm11_0;
mov ymm24_1 ymm11_1;
mov ymm24_2 ymm11_2;
mov ymm24_3 ymm11_3;
(* vmovdqa64 %ymm10,%ymm31                         #! PC = 0x55555558200c *)
mov ymm31_0 ymm10_0;
mov ymm31_1 ymm10_1;
mov ymm31_2 ymm10_2;
mov ymm31_3 ymm10_3;
(* vpternlogq $0xd2,%ymm13,%ymm11,%ymm31           #! PC = 0x555555582012 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm11_0, ymm13_0, table);
call vpternlogq64 (ymm31_1, ymm11_1, ymm13_1, table);
call vpternlogq64 (ymm31_2, ymm11_2, ymm13_2, table);
call vpternlogq64 (ymm31_3, ymm11_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm29,%ymm13,%ymm24           #! PC = 0x555555582019 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm13_0, ymm29_0, table);
call vpternlogq64 (ymm24_1, ymm13_1, ymm29_1, table);
call vpternlogq64 (ymm24_2, ymm13_2, ymm29_2, table);
call vpternlogq64 (ymm24_3, ymm13_3, ymm29_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm29,%ymm13            #! PC = 0x555555582020 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm29_0, ymm9_0, table);
call vpternlogq64 (ymm13_1, ymm29_1, ymm9_1, table);
call vpternlogq64 (ymm13_2, ymm29_2, ymm9_2, table);
call vpternlogq64 (ymm13_3, ymm29_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm9,%ymm29            #! PC = 0x555555582027 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm29_0, ymm9_0, ymm10_0, table);
call vpternlogq64 (ymm29_1, ymm9_1, ymm10_1, table);
call vpternlogq64 (ymm29_2, ymm9_2, ymm10_2, table);
call vpternlogq64 (ymm29_3, ymm9_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm10,%ymm9            #! PC = 0x55555558202e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm9_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm9_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm9_3, ymm10_3, ymm11_3, table);
(* vmovdqa %ymm15,%ymm10                           #! PC = 0x555555582035 *)
mov ymm10_0 ymm15_0;
mov ymm10_1 ymm15_1;
mov ymm10_2 ymm15_2;
mov ymm10_3 ymm15_3;
(* vpternlogq $0xd2,%ymm5,%ymm19,%ymm10            #! PC = 0x55555558203a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm19_0, ymm5_0, table);
call vpternlogq64 (ymm10_1, ymm19_1, ymm5_1, table);
call vpternlogq64 (ymm10_2, ymm19_2, ymm5_2, table);
call vpternlogq64 (ymm10_3, ymm19_3, ymm5_3, table);
(* vmovdqa64 %ymm29,-0x58(%rsp)                    #! EA = L0x7fffffffd880; PC = 0x555555582041 *)
mov L0x7fffffffd880 ymm29_0;
mov L0x7fffffffd888 ymm29_1;
mov L0x7fffffffd890 ymm29_2;
mov L0x7fffffffd898 ymm29_3;
(* vmovdqa64 %ymm10,%ymm29                         #! PC = 0x55555558204c *)
mov ymm29_0 ymm10_0;
mov ymm29_1 ymm10_1;
mov ymm29_2 ymm10_2;
mov ymm29_3 ymm10_3;
(* vmovdqa64 %ymm19,%ymm10                         #! PC = 0x555555582052 *)
mov ymm10_0 ymm19_0;
mov ymm10_1 ymm19_1;
mov ymm10_2 ymm19_2;
mov ymm10_3 ymm19_3;
(* vpternlogq $0xd2,%ymm3,%ymm5,%ymm10             #! PC = 0x555555582058 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm5_0, ymm3_0, table);
call vpternlogq64 (ymm10_1, ymm5_1, ymm3_1, table);
call vpternlogq64 (ymm10_2, ymm5_2, ymm3_2, table);
call vpternlogq64 (ymm10_3, ymm5_3, ymm3_3, table);
(* vmovdqa64 %ymm0,%ymm23                          #! PC = 0x55555558205f *)
mov ymm23_0 ymm0_0;
mov ymm23_1 ymm0_1;
mov ymm23_2 ymm0_2;
mov ymm23_3 ymm0_3;
(* vpternlogq $0xd2,%ymm4,%ymm3,%ymm5              #! PC = 0x555555582065 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm3_0, ymm4_0, table);
call vpternlogq64 (ymm5_1, ymm3_1, ymm4_1, table);
call vpternlogq64 (ymm5_2, ymm3_2, ymm4_2, table);
call vpternlogq64 (ymm5_3, ymm3_3, ymm4_3, table);
(* vmovdqa64 %ymm18,%ymm11                         #! PC = 0x55555558206c *)
mov ymm11_0 ymm18_0;
mov ymm11_1 ymm18_1;
mov ymm11_2 ymm18_2;
mov ymm11_3 ymm18_3;
(* vpternlogq $0xd2,%ymm15,%ymm4,%ymm3             #! PC = 0x555555582072 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm4_0, ymm15_0, table);
call vpternlogq64 (ymm3_1, ymm4_1, ymm15_1, table);
call vpternlogq64 (ymm3_2, ymm4_2, ymm15_2, table);
call vpternlogq64 (ymm3_3, ymm4_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm15,%ymm4            #! PC = 0x555555582079 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm15_0, ymm19_0, table);
call vpternlogq64 (ymm4_1, ymm15_1, ymm19_1, table);
call vpternlogq64 (ymm4_2, ymm15_2, ymm19_2, table);
call vpternlogq64 (ymm4_3, ymm15_3, ymm19_3, table);
(* vmovdqa %ymm2,%ymm15                            #! PC = 0x555555582080 *)
mov ymm15_0 ymm2_0;
mov ymm15_1 ymm2_1;
mov ymm15_2 ymm2_2;
mov ymm15_3 ymm2_3;
(* vmovdqa64 %ymm30,%ymm19                         #! PC = 0x555555582084 *)
mov ymm19_0 ymm30_0;
mov ymm19_1 ymm30_1;
mov ymm19_2 ymm30_2;
mov ymm19_3 ymm30_3;
(* vpternlogq $0xd2,%ymm12,%ymm30,%ymm15           #! PC = 0x55555558208a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm30_0, ymm12_0, table);
call vpternlogq64 (ymm15_1, ymm30_1, ymm12_1, table);
call vpternlogq64 (ymm15_2, ymm30_2, ymm12_2, table);
call vpternlogq64 (ymm15_3, ymm30_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm12,%ymm19            #! PC = 0x555555582091 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm12_0, ymm7_0, table);
call vpternlogq64 (ymm19_1, ymm12_1, ymm7_1, table);
call vpternlogq64 (ymm19_2, ymm12_2, ymm7_2, table);
call vpternlogq64 (ymm19_3, ymm12_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm18,%ymm23           #! PC = 0x555555582098 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm18_0, ymm17_0, table);
call vpternlogq64 (ymm23_1, ymm18_1, ymm17_1, table);
call vpternlogq64 (ymm23_2, ymm18_2, ymm17_2, table);
call vpternlogq64 (ymm23_3, ymm18_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm7,%ymm12            #! PC = 0x55555558209f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm7_0, ymm14_0, table);
call vpternlogq64 (ymm12_1, ymm7_1, ymm14_1, table);
call vpternlogq64 (ymm12_2, ymm7_2, ymm14_2, table);
call vpternlogq64 (ymm12_3, ymm7_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm17,%ymm11           #! PC = 0x5555555820a6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm17_0, ymm21_0, table);
call vpternlogq64 (ymm11_1, ymm17_1, ymm21_1, table);
call vpternlogq64 (ymm11_2, ymm17_2, ymm21_2, table);
call vpternlogq64 (ymm11_3, ymm17_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm14,%ymm7             #! PC = 0x5555555820ad *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm14_0, ymm2_0, table);
call vpternlogq64 (ymm7_1, ymm14_1, ymm2_1, table);
call vpternlogq64 (ymm7_2, ymm14_2, ymm2_2, table);
call vpternlogq64 (ymm7_3, ymm14_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm21,%ymm17           #! PC = 0x5555555820b4 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm21_0, ymm16_0, table);
call vpternlogq64 (ymm17_1, ymm21_1, ymm16_1, table);
call vpternlogq64 (ymm17_2, ymm21_2, ymm16_2, table);
call vpternlogq64 (ymm17_3, ymm21_3, ymm16_3, table);
(* vmovdqa64 %ymm5,%ymm20                          #! PC = 0x5555555820bb *)
mov ymm20_0 ymm5_0;
mov ymm20_1 ymm5_1;
mov ymm20_2 ymm5_2;
mov ymm20_3 ymm5_3;
(* vpternlogq $0xd2,%ymm0,%ymm16,%ymm21            #! PC = 0x5555555820c1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm16_0, ymm0_0, table);
call vpternlogq64 (ymm21_1, ymm16_1, ymm0_1, table);
call vpternlogq64 (ymm21_2, ymm16_2, ymm0_2, table);
call vpternlogq64 (ymm21_3, ymm16_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm0,%ymm16            #! PC = 0x5555555820c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm0_0, ymm18_0, table);
call vpternlogq64 (ymm16_1, ymm0_1, ymm18_1, table);
call vpternlogq64 (ymm16_2, ymm0_2, ymm18_2, table);
call vpternlogq64 (ymm16_3, ymm0_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm2,%ymm14            #! PC = 0x5555555820cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm2_0, ymm30_0, table);
call vpternlogq64 (ymm14_1, ymm2_1, ymm30_1, table);
call vpternlogq64 (ymm14_2, ymm2_2, ymm30_2, table);
call vpternlogq64 (ymm14_3, ymm2_3, ymm30_3, table);
(* vpternlogq $0x96,%ymm13,%ymm17,%ymm20           #! PC = 0x5555555820d6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm17_0, ymm13_0, table);
call vpternlogq64 (ymm20_1, ymm17_1, ymm13_1, table);
call vpternlogq64 (ymm20_2, ymm17_2, ymm13_2, table);
call vpternlogq64 (ymm20_3, ymm17_3, ymm13_3, table);
(* vmovdqa64 %ymm6,%ymm18                          #! PC = 0x5555555820dd *)
mov ymm18_0 ymm6_0;
mov ymm18_1 ymm6_1;
mov ymm18_2 ymm6_2;
mov ymm18_3 ymm6_3;
(* vmovdqa %ymm7,%ymm0                             #! PC = 0x5555555820e3 *)
mov ymm0_0 ymm7_0;
mov ymm0_1 ymm7_1;
mov ymm0_2 ymm7_2;
mov ymm0_3 ymm7_3;
(* vmovdqa64 %ymm16,%ymm26                         #! PC = 0x5555555820e7 *)
mov ymm26_0 ymm16_0;
mov ymm26_1 ymm16_1;
mov ymm26_2 ymm16_2;
mov ymm26_3 ymm16_3;
(* vpternlogq $0x96,%ymm23,%ymm29,%ymm18           #! PC = 0x5555555820ed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm29_0, ymm23_0, table);
call vpternlogq64 (ymm18_1, ymm29_1, ymm23_1, table);
call vpternlogq64 (ymm18_2, ymm29_2, ymm23_2, table);
call vpternlogq64 (ymm18_3, ymm29_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm3,%ymm8,%ymm0              #! PC = 0x5555555820f4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm0_0, ymm8_0, ymm3_0, table);
call vpternlogq64 (ymm0_1, ymm8_1, ymm3_1, table);
call vpternlogq64 (ymm0_2, ymm8_2, ymm3_2, table);
call vpternlogq64 (ymm0_3, ymm8_3, ymm3_3, table);
(* vpternlogq $0x96,%ymm14,%ymm9,%ymm26            #! PC = 0x5555555820fb *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm9_0, ymm14_0, table);
call vpternlogq64 (ymm26_1, ymm9_1, ymm14_1, table);
call vpternlogq64 (ymm26_2, ymm9_2, ymm14_2, table);
call vpternlogq64 (ymm26_3, ymm9_3, ymm14_3, table);
(* vmovdqa64 %ymm24,%ymm30                         #! PC = 0x555555582102 *)
mov ymm30_0 ymm24_0;
mov ymm30_1 ymm24_1;
mov ymm30_2 ymm24_2;
mov ymm30_3 ymm24_3;
(* vpternlogq $0x96,-0x38(%rsp),%ymm12,%ymm20      #! EA = L0x7fffffffd8a0; Value = 0x15d5e7e83fd53296; PC = 0x555555582108 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm12_0, L0x7fffffffd8a0, table);
call vpternlogq64 (ymm20_1, ymm12_1, L0x7fffffffd8a8, table);
call vpternlogq64 (ymm20_2, ymm12_2, L0x7fffffffd8b0, table);
call vpternlogq64 (ymm20_3, ymm12_3, L0x7fffffffd8b8, table);
(* vpternlogq $0x96,%ymm15,%ymm31,%ymm18           #! PC = 0x555555582114 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm31_0, ymm15_0, table);
call vpternlogq64 (ymm18_1, ymm31_1, ymm15_1, table);
call vpternlogq64 (ymm18_2, ymm31_2, ymm15_2, table);
call vpternlogq64 (ymm18_3, ymm31_3, ymm15_3, table);
(* vpternlogq $0x96,%ymm4,%ymm1,%ymm26             #! PC = 0x55555558211b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm1_0, ymm4_0, table);
call vpternlogq64 (ymm26_1, ymm1_1, ymm4_1, table);
call vpternlogq64 (ymm26_2, ymm1_2, ymm4_2, table);
call vpternlogq64 (ymm26_3, ymm1_3, ymm4_3, table);
(* vprolq $0x1,%ymm20,%ymm22                       #! PC = 0x555555582122 *)
rol ymm22_0 ymm20_0 0x1;
rol ymm22_1 ymm20_1 0x1;
rol ymm22_2 ymm20_2 0x1;
rol ymm22_3 ymm20_3 0x1;
(* vpternlogq $0x96,%ymm28,%ymm19,%ymm30           #! PC = 0x555555582129 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm19_0, ymm28_0, table);
call vpternlogq64 (ymm30_1, ymm19_1, ymm28_1, table);
call vpternlogq64 (ymm30_2, ymm19_2, ymm28_2, table);
call vpternlogq64 (ymm30_3, ymm19_3, ymm28_3, table);
(* vpternlogq $0x96,-0x58(%rsp),%ymm21,%ymm0       #! EA = L0x7fffffffd880; Value = 0xcb1952ebd8bec481; PC = 0x555555582130 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm0_0, ymm21_0, L0x7fffffffd880, table);
call vpternlogq64 (ymm0_1, ymm21_1, L0x7fffffffd888, table);
call vpternlogq64 (ymm0_2, ymm21_2, L0x7fffffffd890, table);
call vpternlogq64 (ymm0_3, ymm21_3, L0x7fffffffd898, table);
(* vprolq $0x1,%ymm0,%ymm27                        #! PC = 0x55555558213c *)
rol ymm27_0 ymm0_0 0x1;
rol ymm27_1 ymm0_1 0x1;
rol ymm27_2 ymm0_2 0x1;
rol ymm27_3 ymm0_3 0x1;
(* vprolq $0x1,%ymm26,%ymm25                       #! PC = 0x555555582143 *)
rol ymm25_0 ymm26_0 0x1;
rol ymm25_1 ymm26_1 0x1;
rol ymm25_2 ymm26_2 0x1;
rol ymm25_3 ymm26_3 0x1;
(* vprolq $0x1,%ymm18,%ymm2                        #! PC = 0x55555558214a *)
rol ymm2_0 ymm18_0 0x1;
rol ymm2_1 ymm18_1 0x1;
rol ymm2_2 ymm18_2 0x1;
rol ymm2_3 ymm18_3 0x1;
(* vpternlogq $0x96,%ymm11,%ymm10,%ymm30           #! PC = 0x555555582151 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm30_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm30_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm30_3, ymm10_3, ymm11_3, table);
(* vmovdqa %ymm4,-0x78(%rsp)                       #! EA = L0x7fffffffd860; PC = 0x555555582158 *)
mov L0x7fffffffd860 ymm4_0;
mov L0x7fffffffd868 ymm4_1;
mov L0x7fffffffd870 ymm4_2;
mov L0x7fffffffd878 ymm4_3;
(* vprolq $0x1,%ymm30,%ymm4                        #! PC = 0x55555558215e *)
rol ymm4_0 ymm30_0 0x1;
rol ymm4_1 ymm30_1 0x1;
rol ymm4_2 ymm30_2 0x1;
rol ymm4_3 ymm30_3 0x1;
(* vpxorq %ymm22,%ymm18,%ymm18                     #! PC = 0x555555582165 *)
xor ymm18_0@uint64 ymm18_0 ymm22_0;
xor ymm18_1@uint64 ymm18_1 ymm22_1;
xor ymm18_2@uint64 ymm18_2 ymm22_2;
xor ymm18_3@uint64 ymm18_3 ymm22_3;
(* vpxorq %ymm25,%ymm20,%ymm20                     #! PC = 0x55555558216b *)
xor ymm20_0@uint64 ymm20_0 ymm25_0;
xor ymm20_1@uint64 ymm20_1 ymm25_1;
xor ymm20_2@uint64 ymm20_2 ymm25_2;
xor ymm20_3@uint64 ymm20_3 ymm25_3;
(* vpxor  %ymm2,%ymm0,%ymm0                        #! PC = 0x555555582171 *)
xor ymm0_0@uint64 ymm0_0 ymm2_0;
xor ymm0_1@uint64 ymm0_1 ymm2_1;
xor ymm0_2@uint64 ymm0_2 ymm2_2;
xor ymm0_3@uint64 ymm0_3 ymm2_3;
(* vpxorq %ymm27,%ymm30,%ymm30                     #! PC = 0x555555582175 *)
xor ymm30_0@uint64 ymm30_0 ymm27_0;
xor ymm30_1@uint64 ymm30_1 ymm27_1;
xor ymm30_2@uint64 ymm30_2 ymm27_2;
xor ymm30_3@uint64 ymm30_3 ymm27_3;
(* vpxorq %ymm18,%ymm24,%ymm24                     #! PC = 0x55555558217b *)
xor ymm24_0@uint64 ymm24_0 ymm18_0;
xor ymm24_1@uint64 ymm24_1 ymm18_1;
xor ymm24_2@uint64 ymm24_2 ymm18_2;
xor ymm24_3@uint64 ymm24_3 ymm18_3;
(* vpxorq %ymm4,%ymm26,%ymm26                      #! PC = 0x555555582181 *)
xor ymm26_0@uint64 ymm26_0 ymm4_0;
xor ymm26_1@uint64 ymm26_1 ymm4_1;
xor ymm26_2@uint64 ymm26_2 ymm4_2;
xor ymm26_3@uint64 ymm26_3 ymm4_3;
(* vprorq $0x14,%ymm24,%ymm24                      #! PC = 0x555555582187 *)
ror ymm24_0 ymm24_0 0x14;
ror ymm24_1 ymm24_1 0x14;
ror ymm24_2 ymm24_2 0x14;
ror ymm24_3 ymm24_3 0x14;
(* vpxorq %ymm20,%ymm7,%ymm4                       #! PC = 0x55555558218e *)
xor ymm4_0@uint64 ymm7_0 ymm20_0;
xor ymm4_1@uint64 ymm7_1 ymm20_1;
xor ymm4_2@uint64 ymm7_2 ymm20_2;
xor ymm4_3@uint64 ymm7_3 ymm20_3;
(* vpxorq %ymm30,%ymm5,%ymm25                      #! PC = 0x555555582194 *)
xor ymm25_0@uint64 ymm5_0 ymm30_0;
xor ymm25_1@uint64 ymm5_1 ymm30_1;
xor ymm25_2@uint64 ymm5_2 ymm30_2;
xor ymm25_3@uint64 ymm5_3 ymm30_3;
(* vpxorq %ymm0,%ymm16,%ymm2                       #! PC = 0x55555558219a *)
xor ymm2_0@uint64 ymm16_0 ymm0_0;
xor ymm2_1@uint64 ymm16_1 ymm0_1;
xor ymm2_2@uint64 ymm16_2 ymm0_2;
xor ymm2_3@uint64 ymm16_3 ymm0_3;
(* vprolq $0xe,%ymm2,%ymm2                         #! PC = 0x5555555821a0 *)
rol ymm2_0 ymm2_0 0xe;
rol ymm2_1 ymm2_1 0xe;
rol ymm2_2 ymm2_2 0xe;
rol ymm2_3 ymm2_3 0xe;
(* vprorq $0x15,%ymm25,%ymm25                      #! PC = 0x5555555821a7 *)
ror ymm25_0 ymm25_0 0x15;
ror ymm25_1 ymm25_1 0x15;
ror ymm25_2 ymm25_2 0x15;
ror ymm25_3 ymm25_3 0x15;
(* vprolq $0x15,%ymm4,%ymm4                        #! PC = 0x5555555821ae *)
rol ymm4_0 ymm4_0 0x15;
rol ymm4_1 ymm4_1 0x15;
rol ymm4_2 ymm4_2 0x15;
rol ymm4_3 ymm4_3 0x15;
(* vpxorq %ymm26,%ymm6,%ymm6                       #! PC = 0x5555555821b5 *)
xor ymm6_0@uint64 ymm6_0 ymm26_0;
xor ymm6_1@uint64 ymm6_1 ymm26_1;
xor ymm6_2@uint64 ymm6_2 ymm26_2;
xor ymm6_3@uint64 ymm6_3 ymm26_3;
(* vmovdqa64 %ymm6,%ymm22                          #! PC = 0x5555555821bb *)
mov ymm22_0 ymm6_0;
mov ymm22_1 ymm6_1;
mov ymm22_2 ymm6_2;
mov ymm22_3 ymm6_3;
(* vmovdqa64 %ymm24,%ymm5                          #! PC = 0x5555555821c1 *)
mov ymm5_0 ymm24_0;
mov ymm5_1 ymm24_1;
mov ymm5_2 ymm24_2;
mov ymm5_3 ymm24_3;
(* vpxorq %ymm20,%ymm8,%ymm8                       #! PC = 0x5555555821c7 *)
xor ymm8_0@uint64 ymm8_0 ymm20_0;
xor ymm8_1@uint64 ymm8_1 ymm20_1;
xor ymm8_2@uint64 ymm8_2 ymm20_2;
xor ymm8_3@uint64 ymm8_3 ymm20_3;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x5555555821cd *)
xor ymm9_0@uint64 ymm9_0 ymm0_0;
xor ymm9_1@uint64 ymm9_1 ymm0_1;
xor ymm9_2@uint64 ymm9_2 ymm0_2;
xor ymm9_3@uint64 ymm9_3 ymm0_3;
(* vpxorq %ymm26,%ymm29,%ymm29                     #! PC = 0x5555555821d1 *)
xor ymm29_0@uint64 ymm29_0 ymm26_0;
xor ymm29_1@uint64 ymm29_1 ymm26_1;
xor ymm29_2@uint64 ymm29_2 ymm26_2;
xor ymm29_3@uint64 ymm29_3 ymm26_3;
(* vprolq $0x1c,%ymm8,%ymm8                        #! PC = 0x5555555821d7 *)
rol ymm8_0 ymm8_0 0x1c;
rol ymm8_1 ymm8_1 0x1c;
rol ymm8_2 ymm8_2 0x1c;
rol ymm8_3 ymm8_3 0x1c;
(* vprolq $0x14,%ymm9,%ymm9                        #! PC = 0x5555555821de *)
rol ymm9_0 ymm9_0 0x14;
rol ymm9_1 ymm9_1 0x14;
rol ymm9_2 ymm9_2 0x14;
rol ymm9_3 ymm9_3 0x14;
(* vprolq $0x3,%ymm29,%ymm29                       #! PC = 0x5555555821e5 *)
rol ymm29_0 ymm29_0 0x3;
rol ymm29_1 ymm29_1 0x3;
rol ymm29_2 ymm29_2 0x3;
rol ymm29_3 ymm29_3 0x3;
(* vpternlogq $0xd2,%ymm25,%ymm24,%ymm22           #! PC = 0x5555555821ec *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm24_0, ymm25_0, table);
call vpternlogq64 (ymm22_1, ymm24_1, ymm25_1, table);
call vpternlogq64 (ymm22_2, ymm24_2, ymm25_2, table);
call vpternlogq64 (ymm22_3, ymm24_3, ymm25_3, table);
(* vpxorq %ymm18,%ymm19,%ymm19                     #! PC = 0x5555555821f3 *)
xor ymm19_0@uint64 ymm19_0 ymm18_0;
xor ymm19_1@uint64 ymm19_1 ymm18_1;
xor ymm19_2@uint64 ymm19_2 ymm18_2;
xor ymm19_3@uint64 ymm19_3 ymm18_3;
(* vpternlogq $0xd2,%ymm4,%ymm25,%ymm5             #! PC = 0x5555555821f9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm25_0, ymm4_0, table);
call vpternlogq64 (ymm5_1, ymm25_1, ymm4_1, table);
call vpternlogq64 (ymm5_2, ymm25_2, ymm4_2, table);
call vpternlogq64 (ymm5_3, ymm25_3, ymm4_3, table);
(* vmovdqa %ymm2,%ymm7                             #! PC = 0x555555582200 *)
mov ymm7_0 ymm2_0;
mov ymm7_1 ymm2_1;
mov ymm7_2 ymm2_2;
mov ymm7_3 ymm2_3;
(* vpternlogq $0xd2,%ymm2,%ymm4,%ymm25             #! PC = 0x555555582204 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm4_0, ymm2_0, table);
call vpternlogq64 (ymm25_1, ymm4_1, ymm2_1, table);
call vpternlogq64 (ymm25_2, ymm4_2, ymm2_2, table);
call vpternlogq64 (ymm25_3, ymm4_3, ymm2_3, table);
(* vpxorq %ymm30,%ymm17,%ymm27                     #! PC = 0x55555558220b *)
xor ymm27_0@uint64 ymm17_0 ymm30_0;
xor ymm27_1@uint64 ymm17_1 ymm30_1;
xor ymm27_2@uint64 ymm17_2 ymm30_2;
xor ymm27_3@uint64 ymm17_3 ymm30_3;
(* vpternlogq $0xd2,%ymm6,%ymm2,%ymm4              #! PC = 0x555555582211 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm2_0, ymm6_0, table);
call vpternlogq64 (ymm4_1, ymm2_1, ymm6_1, table);
call vpternlogq64 (ymm4_2, ymm2_2, ymm6_2, table);
call vpternlogq64 (ymm4_3, ymm2_3, ymm6_3, table);
(* vpxorq %ymm18,%ymm28,%ymm28                     #! PC = 0x555555582218 *)
xor ymm28_0@uint64 ymm28_0 ymm18_0;
xor ymm28_1@uint64 ymm28_1 ymm18_1;
xor ymm28_2@uint64 ymm28_2 ymm18_2;
xor ymm28_3@uint64 ymm28_3 ymm18_3;
(* vpbroadcastq %r15,%ymm2                         #! PC = 0x55555558221e *)
mov ymm2_0 r15;
mov ymm2_1 r15;
mov ymm2_2 r15;
mov ymm2_3 r15;
(* vpxorq %ymm30,%ymm13,%ymm13                     #! PC = 0x555555582224 *)
xor ymm13_0@uint64 ymm13_0 ymm30_0;
xor ymm13_1@uint64 ymm13_1 ymm30_1;
xor ymm13_2@uint64 ymm13_2 ymm30_2;
xor ymm13_3@uint64 ymm13_3 ymm30_3;
(* vprolq $0x1,%ymm28,%ymm28                       #! PC = 0x55555558222a *)
rol ymm28_0 ymm28_0 0x1;
rol ymm28_1 ymm28_1 0x1;
rol ymm28_2 ymm28_2 0x1;
rol ymm28_3 ymm28_3 0x1;
(* vprorq $0x3,%ymm27,%ymm27                       #! PC = 0x555555582231 *)
ror ymm27_0 ymm27_0 0x3;
ror ymm27_1 ymm27_1 0x3;
ror ymm27_2 ymm27_2 0x3;
ror ymm27_3 ymm27_3 0x3;
(* vprolq $0x6,%ymm13,%ymm13                       #! PC = 0x555555582238 *)
rol ymm13_0 ymm13_0 0x6;
rol ymm13_1 ymm13_1 0x6;
rol ymm13_2 ymm13_2 0x6;
rol ymm13_3 ymm13_3 0x6;
(* vpxorq %ymm20,%ymm3,%ymm17                      #! PC = 0x55555558223f *)
xor ymm17_0@uint64 ymm3_0 ymm20_0;
xor ymm17_1@uint64 ymm3_1 ymm20_1;
xor ymm17_2@uint64 ymm3_2 ymm20_2;
xor ymm17_3@uint64 ymm3_3 ymm20_3;
(* vpxor  %ymm0,%ymm14,%ymm14                      #! PC = 0x555555582245 *)
xor ymm14_0@uint64 ymm14_0 ymm0_0;
xor ymm14_1@uint64 ymm14_1 ymm0_1;
xor ymm14_2@uint64 ymm14_2 ymm0_2;
xor ymm14_3@uint64 ymm14_3 ymm0_3;
(* vpxorq %ymm22,%ymm2,%ymm22                      #! PC = 0x555555582249 *)
xor ymm22_0@uint64 ymm2_0 ymm22_0;
xor ymm22_1@uint64 ymm2_1 ymm22_1;
xor ymm22_2@uint64 ymm2_2 ymm22_2;
xor ymm22_3@uint64 ymm2_3 ymm22_3;
(* vpxorq %ymm26,%ymm23,%ymm23                     #! PC = 0x55555558224f *)
xor ymm23_0@uint64 ymm23_0 ymm26_0;
xor ymm23_1@uint64 ymm23_1 ymm26_1;
xor ymm23_2@uint64 ymm23_2 ymm26_2;
xor ymm23_3@uint64 ymm23_3 ymm26_3;
(* vprorq $0x13,%ymm19,%ymm2                       #! PC = 0x555555582255 *)
ror ymm2_0 ymm19_0 0x13;
ror ymm2_1 ymm19_1 0x13;
ror ymm2_2 ymm19_2 0x13;
ror ymm2_3 ymm19_3 0x13;
(* vprolq $0x12,%ymm23,%ymm23                      #! PC = 0x55555558225c *)
rol ymm23_0 ymm23_0 0x12;
rol ymm23_1 ymm23_1 0x12;
rol ymm23_2 ymm23_2 0x12;
rol ymm23_3 ymm23_3 0x12;
(* vprolq $0x19,%ymm17,%ymm17                      #! PC = 0x555555582263 *)
rol ymm17_0 ymm17_0 0x19;
rol ymm17_1 ymm17_1 0x19;
rol ymm17_2 ymm17_2 0x19;
rol ymm17_3 ymm17_3 0x19;
(* vprolq $0x8,%ymm14,%ymm14                       #! PC = 0x55555558226a *)
rol ymm14_0 ymm14_0 0x8;
rol ymm14_1 ymm14_1 0x8;
rol ymm14_2 ymm14_2 0x8;
rol ymm14_3 ymm14_3 0x8;
(* vpternlogq $0xd2,%ymm24,%ymm6,%ymm7             #! PC = 0x555555582271 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm6_0, ymm24_0, table);
call vpternlogq64 (ymm7_1, ymm6_1, ymm24_1, table);
call vpternlogq64 (ymm7_2, ymm6_2, ymm24_2, table);
call vpternlogq64 (ymm7_3, ymm6_3, ymm24_3, table);
(* vmovdqa64 %ymm8,%ymm19                          #! PC = 0x555555582278 *)
mov ymm19_0 ymm8_0;
mov ymm19_1 ymm8_1;
mov ymm19_2 ymm8_2;
mov ymm19_3 ymm8_3;
(* vmovdqa %ymm9,%ymm6                             #! PC = 0x55555558227e *)
mov ymm6_0 ymm9_0;
mov ymm6_1 ymm9_1;
mov ymm6_2 ymm9_2;
mov ymm6_3 ymm9_3;
(* vmovdqa64 %ymm29,%ymm24                         #! PC = 0x555555582282 *)
mov ymm24_0 ymm29_0;
mov ymm24_1 ymm29_1;
mov ymm24_2 ymm29_2;
mov ymm24_3 ymm29_3;
(* vpternlogq $0xd2,%ymm27,%ymm2,%ymm24            #! PC = 0x555555582288 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm2_0, ymm27_0, table);
call vpternlogq64 (ymm24_1, ymm2_1, ymm27_1, table);
call vpternlogq64 (ymm24_2, ymm2_2, ymm27_2, table);
call vpternlogq64 (ymm24_3, ymm2_3, ymm27_3, table);
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555558228f *)
xor ymm1_0@uint64 ymm1_0 ymm0_0;
xor ymm1_1@uint64 ymm1_1 ymm0_1;
xor ymm1_2@uint64 ymm1_2 ymm0_2;
xor ymm1_3@uint64 ymm1_3 ymm0_3;
(* vpternlogq $0xd2,%ymm29,%ymm9,%ymm19            #! PC = 0x555555582293 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm9_0, ymm29_0, table);
call vpternlogq64 (ymm19_1, ymm9_1, ymm29_1, table);
call vpternlogq64 (ymm19_2, ymm9_2, ymm29_2, table);
call vpternlogq64 (ymm19_3, ymm9_3, ymm29_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm29,%ymm6             #! PC = 0x55555558229a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm29_0, ymm2_0, table);
call vpternlogq64 (ymm6_1, ymm29_1, ymm2_1, table);
call vpternlogq64 (ymm6_2, ymm29_2, ymm2_2, table);
call vpternlogq64 (ymm6_3, ymm29_3, ymm2_3, table);
(* vpxorq %ymm26,%ymm31,%ymm31                     #! PC = 0x5555555822a1 *)
xor ymm31_0@uint64 ymm31_0 ymm26_0;
xor ymm31_1@uint64 ymm31_1 ymm26_1;
xor ymm31_2@uint64 ymm31_2 ymm26_2;
xor ymm31_3@uint64 ymm31_3 ymm26_3;
(* vpternlogq $0xd2,%ymm8,%ymm27,%ymm2             #! PC = 0x5555555822a7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm27_0, ymm8_0, table);
call vpternlogq64 (ymm2_1, ymm27_1, ymm8_1, table);
call vpternlogq64 (ymm2_2, ymm27_2, ymm8_2, table);
call vpternlogq64 (ymm2_3, ymm27_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm8,%ymm27             #! PC = 0x5555555822ae *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm8_0, ymm9_0, table);
call vpternlogq64 (ymm27_1, ymm8_1, ymm9_1, table);
call vpternlogq64 (ymm27_2, ymm8_2, ymm9_2, table);
call vpternlogq64 (ymm27_3, ymm8_3, ymm9_3, table);
(* vmovdqa64 %ymm28,%ymm8                          #! PC = 0x5555555822b5 *)
mov ymm8_0 ymm28_0;
mov ymm8_1 ymm28_1;
mov ymm8_2 ymm28_2;
mov ymm8_3 ymm28_3;
(* vmovdqa %ymm13,%ymm9                            #! PC = 0x5555555822bb *)
mov ymm9_0 ymm13_0;
mov ymm9_1 ymm13_1;
mov ymm9_2 ymm13_2;
mov ymm9_3 ymm13_3;
(* vprolq $0x1b,%ymm1,%ymm3                        #! PC = 0x5555555822c0 *)
rol ymm3_0 ymm1_0 0x1b;
rol ymm3_1 ymm1_1 0x1b;
rol ymm3_2 ymm1_2 0x1b;
rol ymm3_3 ymm1_3 0x1b;
(* vpternlogq $0xd2,%ymm14,%ymm17,%ymm9            #! PC = 0x5555555822c7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm17_0, ymm14_0, table);
call vpternlogq64 (ymm9_1, ymm17_1, ymm14_1, table);
call vpternlogq64 (ymm9_2, ymm17_2, ymm14_2, table);
call vpternlogq64 (ymm9_3, ymm17_3, ymm14_3, table);
(* vprorq $0x1c,%ymm31,%ymm31                      #! PC = 0x5555555822ce *)
ror ymm31_0 ymm31_0 0x1c;
ror ymm31_1 ymm31_1 0x1c;
ror ymm31_2 ymm31_2 0x1c;
ror ymm31_3 ymm31_3 0x1c;
(* vpternlogq $0xd2,%ymm17,%ymm13,%ymm8            #! PC = 0x5555555822d5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm13_0, ymm17_0, table);
call vpternlogq64 (ymm8_1, ymm13_1, ymm17_1, table);
call vpternlogq64 (ymm8_2, ymm13_2, ymm17_2, table);
call vpternlogq64 (ymm8_3, ymm13_3, ymm17_3, table);
(* vmovdqa %ymm7,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x5555555822dc *)
mov L0x7fffffffd960 ymm7_0;
mov L0x7fffffffd968 ymm7_1;
mov L0x7fffffffd970 ymm7_2;
mov L0x7fffffffd978 ymm7_3;
(* vpternlogq $0xd2,%ymm23,%ymm14,%ymm17           #! PC = 0x5555555822e5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm14_0, ymm23_0, table);
call vpternlogq64 (ymm17_1, ymm14_1, ymm23_1, table);
call vpternlogq64 (ymm17_2, ymm14_2, ymm23_2, table);
call vpternlogq64 (ymm17_3, ymm14_3, ymm23_3, table);
(* vpxorq %ymm20,%ymm21,%ymm7                      #! PC = 0x5555555822ec *)
xor ymm7_0@uint64 ymm21_0 ymm20_0;
xor ymm7_1@uint64 ymm21_1 ymm20_1;
xor ymm7_2@uint64 ymm21_2 ymm20_2;
xor ymm7_3@uint64 ymm21_3 ymm20_3;
(* vpternlogq $0xd2,%ymm28,%ymm23,%ymm14           #! PC = 0x5555555822f2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm23_0, ymm28_0, table);
call vpternlogq64 (ymm14_1, ymm23_1, ymm28_1, table);
call vpternlogq64 (ymm14_2, ymm23_2, ymm28_2, table);
call vpternlogq64 (ymm14_3, ymm23_3, ymm28_3, table);
(* vmovdqa %ymm2,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x5555555822f9 *)
mov L0x7fffffffd920 ymm2_0;
mov L0x7fffffffd928 ymm2_1;
mov L0x7fffffffd930 ymm2_2;
mov L0x7fffffffd938 ymm2_3;
(* vpternlogq $0xd2,%ymm13,%ymm28,%ymm23           #! PC = 0x5555555822ff *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm28_0, ymm13_0, table);
call vpternlogq64 (ymm23_1, ymm28_1, ymm13_1, table);
call vpternlogq64 (ymm23_2, ymm28_2, ymm13_2, table);
call vpternlogq64 (ymm23_3, ymm28_3, ymm13_3, table);
(* vpxorq %ymm30,%ymm12,%ymm2                      #! PC = 0x555555582306 *)
xor ymm2_0@uint64 ymm12_0 ymm30_0;
xor ymm2_1@uint64 ymm12_1 ymm30_1;
xor ymm2_2@uint64 ymm12_2 ymm30_2;
xor ymm2_3@uint64 ymm12_3 ymm30_3;
(* vpxorq %ymm18,%ymm10,%ymm28                     #! PC = 0x55555558230c *)
xor ymm28_0@uint64 ymm10_0 ymm18_0;
xor ymm28_1@uint64 ymm10_1 ymm18_1;
xor ymm28_2@uint64 ymm10_2 ymm18_2;
xor ymm28_3@uint64 ymm10_3 ymm18_3;
(* vprolq $0xa,%ymm28,%ymm28                       #! PC = 0x555555582312 *)
rol ymm28_0 ymm28_0 0xa;
rol ymm28_1 ymm28_1 0xa;
rol ymm28_2 ymm28_2 0xa;
rol ymm28_3 ymm28_3 0xa;
(* vprolq $0xf,%ymm2,%ymm2                         #! PC = 0x555555582319 *)
rol ymm2_0 ymm2_0 0xf;
rol ymm2_1 ymm2_1 0xf;
rol ymm2_2 ymm2_2 0xf;
rol ymm2_3 ymm2_3 0xf;
(* vprorq $0x8,%ymm7,%ymm7                         #! PC = 0x555555582320 *)
ror ymm7_0 ymm7_0 0x8;
ror ymm7_1 ymm7_1 0x8;
ror ymm7_2 ymm7_2 0x8;
ror ymm7_3 ymm7_3 0x8;
(* vmovdqa %ymm3,%ymm10                            #! PC = 0x555555582327 *)
mov ymm10_0 ymm3_0;
mov ymm10_1 ymm3_1;
mov ymm10_2 ymm3_2;
mov ymm10_3 ymm3_3;
(* vmovdqa64 %ymm31,%ymm1                          #! PC = 0x55555558232b *)
mov ymm1_0 ymm31_0;
mov ymm1_1 ymm31_1;
mov ymm1_2 ymm31_2;
mov ymm1_3 ymm31_3;
(* vmovdqa %ymm9,0x28(%rsp)                        #! EA = L0x7fffffffd900; PC = 0x555555582331 *)
mov L0x7fffffffd900 ymm9_0;
mov L0x7fffffffd908 ymm9_1;
mov L0x7fffffffd910 ymm9_2;
mov L0x7fffffffd918 ymm9_3;
(* vpternlogq $0xd2,%ymm28,%ymm31,%ymm10           #! PC = 0x555555582337 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm31_0, ymm28_0, table);
call vpternlogq64 (ymm10_1, ymm31_1, ymm28_1, table);
call vpternlogq64 (ymm10_2, ymm31_2, ymm28_2, table);
call vpternlogq64 (ymm10_3, ymm31_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm28,%ymm1             #! PC = 0x55555558233e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm28_0, ymm2_0, table);
call vpternlogq64 (ymm1_1, ymm28_1, ymm2_1, table);
call vpternlogq64 (ymm1_2, ymm28_2, ymm2_2, table);
call vpternlogq64 (ymm1_3, ymm28_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm2,%ymm28             #! PC = 0x555555582345 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm2_0, ymm7_0, table);
call vpternlogq64 (ymm28_1, ymm2_1, ymm7_1, table);
call vpternlogq64 (ymm28_2, ymm2_2, ymm7_2, table);
call vpternlogq64 (ymm28_3, ymm2_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm7,%ymm2              #! PC = 0x55555558234c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm7_0, ymm3_0, table);
call vpternlogq64 (ymm2_1, ymm7_1, ymm3_1, table);
call vpternlogq64 (ymm2_2, ymm7_2, ymm3_2, table);
call vpternlogq64 (ymm2_3, ymm7_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm3,%ymm7             #! PC = 0x555555582353 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm3_0, ymm31_0, table);
call vpternlogq64 (ymm7_1, ymm3_1, ymm31_1, table);
call vpternlogq64 (ymm7_2, ymm3_2, ymm31_2, table);
call vpternlogq64 (ymm7_3, ymm3_3, ymm31_3, table);
(* vpxorq -0x38(%rsp),%ymm30,%ymm3                 #! EA = L0x7fffffffd8a0; Value = 0x15d5e7e83fd53296; PC = 0x55555558235a *)
xor ymm3_0@uint64 ymm30_0 L0x7fffffffd8a0;
xor ymm3_1@uint64 ymm30_1 L0x7fffffffd8a8;
xor ymm3_2@uint64 ymm30_2 L0x7fffffffd8b0;
xor ymm3_3@uint64 ymm30_3 L0x7fffffffd8b8;
(* vpxorq -0x58(%rsp),%ymm20,%ymm9                 #! EA = L0x7fffffffd880; Value = 0xcb1952ebd8bec481; PC = 0x555555582365 *)
xor ymm9_0@uint64 ymm20_0 L0x7fffffffd880;
xor ymm9_1@uint64 ymm20_1 L0x7fffffffd888;
xor ymm9_2@uint64 ymm20_2 L0x7fffffffd890;
xor ymm9_3@uint64 ymm20_3 L0x7fffffffd898;
(* vpxorq -0x78(%rsp),%ymm0,%ymm20                 #! EA = L0x7fffffffd860; Value = 0xa340e754d9006281; PC = 0x555555582370 *)
xor ymm20_0@uint64 ymm0_0 L0x7fffffffd860;
xor ymm20_1@uint64 ymm0_1 L0x7fffffffd868;
xor ymm20_2@uint64 ymm0_2 L0x7fffffffd870;
xor ymm20_3@uint64 ymm0_3 L0x7fffffffd878;
(* vprorq $0x2,%ymm3,%ymm3                         #! PC = 0x55555558237b *)
ror ymm3_0 ymm3_0 0x2;
ror ymm3_1 ymm3_1 0x2;
ror ymm3_2 ymm3_2 0x2;
ror ymm3_3 ymm3_3 0x2;
(* vprorq $0x9,%ymm9,%ymm9                         #! PC = 0x555555582382 *)
ror ymm9_0 ymm9_0 0x9;
ror ymm9_1 ymm9_1 0x9;
ror ymm9_2 ymm9_2 0x9;
ror ymm9_3 ymm9_3 0x9;
(* vprorq $0x19,%ymm20,%ymm20                      #! PC = 0x555555582389 *)
ror ymm20_0 ymm20_0 0x19;
ror ymm20_1 ymm20_1 0x19;
ror ymm20_2 ymm20_2 0x19;
ror ymm20_3 ymm20_3 0x19;
(* vpxorq %ymm26,%ymm15,%ymm15                     #! PC = 0x555555582390 *)
xor ymm15_0@uint64 ymm15_0 ymm26_0;
xor ymm15_1@uint64 ymm15_1 ymm26_1;
xor ymm15_2@uint64 ymm15_2 ymm26_2;
xor ymm15_3@uint64 ymm15_3 ymm26_3;
(* vprorq $0x17,%ymm15,%ymm15                      #! PC = 0x555555582396 *)
ror ymm15_0 ymm15_0 0x17;
ror ymm15_1 ymm15_1 0x17;
ror ymm15_2 ymm15_2 0x17;
ror ymm15_3 ymm15_3 0x17;
(* vpxorq %ymm18,%ymm11,%ymm18                     #! PC = 0x55555558239d *)
xor ymm18_0@uint64 ymm11_0 ymm18_0;
xor ymm18_1@uint64 ymm11_1 ymm18_1;
xor ymm18_2@uint64 ymm11_2 ymm18_2;
xor ymm18_3@uint64 ymm11_3 ymm18_3;
(* vprolq $0x2,%ymm18,%ymm18                       #! PC = 0x5555555823a3 *)
rol ymm18_0 ymm18_0 0x2;
rol ymm18_1 ymm18_1 0x2;
rol ymm18_2 ymm18_2 0x2;
rol ymm18_3 ymm18_3 0x2;
(* vmovdqa %ymm3,%ymm0                             #! PC = 0x5555555823aa *)
mov ymm0_0 ymm3_0;
mov ymm0_1 ymm3_1;
mov ymm0_2 ymm3_2;
mov ymm0_3 ymm3_3;
(* vpternlogq $0xd2,%ymm20,%ymm9,%ymm0             #! PC = 0x5555555823ae *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm9_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm9_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm9_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm9_3, ymm20_3, table);
(* vmovdqa %ymm8,-0x18(%rsp)                       #! EA = L0x7fffffffd8c0; PC = 0x5555555823b5 *)
mov L0x7fffffffd8c0 ymm8_0;
mov L0x7fffffffd8c8 ymm8_1;
mov L0x7fffffffd8d0 ymm8_2;
mov L0x7fffffffd8d8 ymm8_3;
(* vmovdqa %ymm0,%ymm8                             #! PC = 0x5555555823bb *)
mov ymm8_0 ymm0_0;
mov ymm8_1 ymm0_1;
mov ymm8_2 ymm0_2;
mov ymm8_3 ymm0_3;
(* vmovdqa %ymm9,%ymm0                             #! PC = 0x5555555823bf *)
mov ymm0_0 ymm9_0;
mov ymm0_1 ymm9_1;
mov ymm0_2 ymm9_2;
mov ymm0_3 ymm9_3;
(* vpternlogq $0xd2,%ymm15,%ymm20,%ymm0            #! PC = 0x5555555823c3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm20_0, ymm15_0, table);
call vpternlogq64 (ymm0_1, ymm20_1, ymm15_1, table);
call vpternlogq64 (ymm0_2, ymm20_2, ymm15_2, table);
call vpternlogq64 (ymm0_3, ymm20_3, ymm15_3, table);
(* vmovdqa64 %ymm24,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555823ca *)
mov L0x7fffffffd940 ymm24_0;
mov L0x7fffffffd948 ymm24_1;
mov L0x7fffffffd950 ymm24_2;
mov L0x7fffffffd958 ymm24_3;
(* vpternlogq $0xd2,%ymm18,%ymm15,%ymm20           #! PC = 0x5555555823d5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm15_0, ymm18_0, table);
call vpternlogq64 (ymm20_1, ymm15_1, ymm18_1, table);
call vpternlogq64 (ymm20_2, ymm15_2, ymm18_2, table);
call vpternlogq64 (ymm20_3, ymm15_3, ymm18_3, table);
(* vmovdqa %ymm10,0x8(%rsp)                        #! EA = L0x7fffffffd8e0; PC = 0x5555555823dc *)
mov L0x7fffffffd8e0 ymm10_0;
mov L0x7fffffffd8e8 ymm10_1;
mov L0x7fffffffd8f0 ymm10_2;
mov L0x7fffffffd8f8 ymm10_3;
(* vpternlogq $0xd2,%ymm3,%ymm18,%ymm15            #! PC = 0x5555555823e2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm18_0, ymm3_0, table);
call vpternlogq64 (ymm15_1, ymm18_1, ymm3_1, table);
call vpternlogq64 (ymm15_2, ymm18_2, ymm3_2, table);
call vpternlogq64 (ymm15_3, ymm18_3, ymm3_3, table);
(* vmovdqa64 %ymm0,%ymm24                          #! PC = 0x5555555823e9 *)
mov ymm24_0 ymm0_0;
mov ymm24_1 ymm0_1;
mov ymm24_2 ymm0_2;
mov ymm24_3 ymm0_3;
(* vpternlogq $0xd2,%ymm9,%ymm3,%ymm18             #! PC = 0x5555555823ef *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm3_0, ymm9_0, table);
call vpternlogq64 (ymm18_1, ymm3_1, ymm9_1, table);
call vpternlogq64 (ymm18_2, ymm3_2, ymm9_2, table);
call vpternlogq64 (ymm18_3, ymm3_3, ymm9_3, table);
(* movabs $0x8000000000008080,%r12                 #! PC = 0x5555555823f6 *)
mov r12 0x8000000000008080@uint64;
(* mov    $0x80000001,%r13d                        #! PC = 0x555555582400 *)
mov r13 0x80000001@uint64;
(* movabs $0x8000000080008008,%r15                 #! PC = 0x555555582406 *)
mov r15 0x8000000080008008@uint64;
(* #jne    0x555555582510 <KeccakP1600times4_PermuteAll_24rounds+10032>#! PC = 0x555555582414 *)
#jne    0x555555582510 <KeccakP1600times4_PermuteAll_24rounds+10032>#! 0x555555582414 = 0x555555582414;
(* mov    $0x1,%r14d                               #! PC = 0x555555582510 *)
mov r14 0x1@uint64;
(* #jmp    0x55555557ff5f <KeccakP1600times4_PermuteAll_24rounds+383>#! PC = 0x555555582516 *)
#jmp    0x55555557ff5f <KeccakP1600times4_PermuteAll_24rounds+383>#! 0x555555582516 = 0x555555582516;
(* vmovdqa 0x68(%rsp),%ymm13                       #! EA = L0x7fffffffd940; Value = 0x78930f0908f73f87; PC = 0x55555557ff5f *)
mov ymm13_0 L0x7fffffffd940;
mov ymm13_1 L0x7fffffffd948;
mov ymm13_2 L0x7fffffffd950;
mov ymm13_3 L0x7fffffffd958;
(* vmovdqa64 %ymm25,%ymm9                          #! PC = 0x55555557ff65 *)
mov ymm9_0 ymm25_0;
mov ymm9_1 ymm25_1;
mov ymm9_2 ymm25_2;
mov ymm9_3 ymm25_3;
(* vmovdqa 0x48(%rsp),%ymm11                       #! EA = L0x7fffffffd920; Value = 0x50e2f780182618bc; PC = 0x55555557ff6b *)
mov ymm11_0 L0x7fffffffd920;
mov ymm11_1 L0x7fffffffd928;
mov ymm11_2 L0x7fffffffd930;
mov ymm11_3 L0x7fffffffd938;
(* vmovdqa64 -0x18(%rsp),%ymm31                    #! EA = L0x7fffffffd8c0; Value = 0xfb5213a97b1477f2; PC = 0x55555557ff71 *)
mov ymm31_0 L0x7fffffffd8c0;
mov ymm31_1 L0x7fffffffd8c8;
mov ymm31_2 L0x7fffffffd8d0;
mov ymm31_3 L0x7fffffffd8d8;
(* vpternlogq $0x96,%ymm17,%ymm13,%ymm9            #! PC = 0x55555557ff7c *)
mov table 0x96@uint8;
call vpternlogq64 (ymm9_0, ymm13_0, ymm17_0, table);
call vpternlogq64 (ymm9_1, ymm13_1, ymm17_1, table);
call vpternlogq64 (ymm9_2, ymm13_2, ymm17_2, table);
call vpternlogq64 (ymm9_3, ymm13_3, ymm17_3, table);
(* vmovdqa 0x88(%rsp),%ymm13                       #! EA = L0x7fffffffd960; Value = 0x27b1310886010aa3; PC = 0x55555557ff83 *)
mov ymm13_0 L0x7fffffffd960;
mov ymm13_1 L0x7fffffffd968;
mov ymm13_2 L0x7fffffffd970;
mov ymm13_3 L0x7fffffffd978;
(* vmovdqa 0x8(%rsp),%ymm0                         #! EA = L0x7fffffffd8e0; Value = 0xdfe20ab851a49b70; PC = 0x55555557ff8c *)
mov ymm0_0 L0x7fffffffd8e0;
mov ymm0_1 L0x7fffffffd8e8;
mov ymm0_2 L0x7fffffffd8f0;
mov ymm0_3 L0x7fffffffd8f8;
(* vmovdqa64 %ymm22,%ymm12                         #! PC = 0x55555557ff92 *)
mov ymm12_0 ymm22_0;
mov ymm12_1 ymm22_1;
mov ymm12_2 ymm22_2;
mov ymm12_3 ymm22_3;
(* vmovdqa %ymm4,%ymm3                             #! PC = 0x55555557ff98 *)
mov ymm3_0 ymm4_0;
mov ymm3_1 ymm4_1;
mov ymm3_2 ymm4_2;
mov ymm3_3 ymm4_3;
(* vpternlogq $0x96,%ymm20,%ymm28,%ymm9            #! PC = 0x55555557ff9c *)
mov table 0x96@uint8;
call vpternlogq64 (ymm9_0, ymm28_0, ymm20_0, table);
call vpternlogq64 (ymm9_1, ymm28_1, ymm20_1, table);
call vpternlogq64 (ymm9_2, ymm28_2, ymm20_2, table);
call vpternlogq64 (ymm9_3, ymm28_3, ymm20_3, table);
(* vpternlogq $0x96,%ymm31,%ymm19,%ymm12           #! PC = 0x55555557ffa3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm12_0, ymm19_0, ymm31_0, table);
call vpternlogq64 (ymm12_1, ymm19_1, ymm31_1, table);
call vpternlogq64 (ymm12_2, ymm19_2, ymm31_2, table);
call vpternlogq64 (ymm12_3, ymm19_3, ymm31_3, table);
(* vpternlogq $0x96,%ymm14,%ymm11,%ymm3            #! PC = 0x55555557ffaa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm11_0, ymm14_0, table);
call vpternlogq64 (ymm3_1, ymm11_1, ymm14_1, table);
call vpternlogq64 (ymm3_2, ymm11_2, ymm14_2, table);
call vpternlogq64 (ymm3_3, ymm11_3, ymm14_3, table);
(* vpternlogq $0x96,%ymm23,%ymm27,%ymm13           #! PC = 0x55555557ffb1 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm13_0, ymm27_0, ymm23_0, table);
call vpternlogq64 (ymm13_1, ymm27_1, ymm23_1, table);
call vpternlogq64 (ymm13_2, ymm27_2, ymm23_2, table);
call vpternlogq64 (ymm13_3, ymm27_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm8,%ymm0,%ymm12             #! PC = 0x55555557ffb8 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm12_0, ymm0_0, ymm8_0, table);
call vpternlogq64 (ymm12_1, ymm0_1, ymm8_1, table);
call vpternlogq64 (ymm12_2, ymm0_2, ymm8_2, table);
call vpternlogq64 (ymm12_3, ymm0_3, ymm8_3, table);
(* vpternlogq $0x96,%ymm15,%ymm2,%ymm3             #! PC = 0x55555557ffbf *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm2_0, ymm15_0, table);
call vpternlogq64 (ymm3_1, ymm2_1, ymm15_1, table);
call vpternlogq64 (ymm3_2, ymm2_2, ymm15_2, table);
call vpternlogq64 (ymm3_3, ymm2_3, ymm15_3, table);
(* vpternlogq $0x96,%ymm18,%ymm7,%ymm13            #! PC = 0x55555557ffc6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm13_0, ymm7_0, ymm18_0, table);
call vpternlogq64 (ymm13_1, ymm7_1, ymm18_1, table);
call vpternlogq64 (ymm13_2, ymm7_2, ymm18_2, table);
call vpternlogq64 (ymm13_3, ymm7_3, ymm18_3, table);
(* vprolq $0x1,%ymm9,%ymm11                        #! PC = 0x55555557ffcd *)
rol ymm11_0 ymm9_0 0x1;
rol ymm11_1 ymm9_1 0x1;
rol ymm11_2 ymm9_2 0x1;
rol ymm11_3 ymm9_3 0x1;
(* vprolq $0x1,%ymm3,%ymm29                        #! PC = 0x55555557ffd4 *)
rol ymm29_0 ymm3_0 0x1;
rol ymm29_1 ymm3_1 0x1;
rol ymm29_2 ymm3_2 0x1;
rol ymm29_3 ymm3_3 0x1;
(* vprolq $0x1,%ymm13,%ymm30                       #! PC = 0x55555557ffdb *)
rol ymm30_0 ymm13_0 0x1;
rol ymm30_1 ymm13_1 0x1;
rol ymm30_2 ymm13_2 0x1;
rol ymm30_3 ymm13_3 0x1;
(* vprolq $0x1,%ymm12,%ymm16                       #! PC = 0x55555557ffe2 *)
rol ymm16_0 ymm12_0 0x1;
rol ymm16_1 ymm12_1 0x1;
rol ymm16_2 ymm12_2 0x1;
rol ymm16_3 ymm12_3 0x1;
(* vmovdqa %ymm5,%ymm10                            #! PC = 0x55555557ffe9 *)
mov ymm10_0 ymm5_0;
mov ymm10_1 ymm5_1;
mov ymm10_2 ymm5_2;
mov ymm10_3 ymm5_3;
(* vpternlogq $0x96,0x28(%rsp),%ymm6,%ymm10        #! EA = L0x7fffffffd900; Value = 0xdb52d1863cefcab3; PC = 0x55555557ffed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm10_0, ymm6_0, L0x7fffffffd900, table);
call vpternlogq64 (ymm10_1, ymm6_1, L0x7fffffffd908, table);
call vpternlogq64 (ymm10_2, ymm6_2, L0x7fffffffd910, table);
call vpternlogq64 (ymm10_3, ymm6_3, L0x7fffffffd918, table);
(* vpternlogq $0x96,%ymm24,%ymm1,%ymm10            #! PC = 0x55555557fff9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm10_0, ymm1_0, ymm24_0, table);
call vpternlogq64 (ymm10_1, ymm1_1, ymm24_1, table);
call vpternlogq64 (ymm10_2, ymm1_2, ymm24_2, table);
call vpternlogq64 (ymm10_3, ymm1_3, ymm24_3, table);
(* vpxor  %ymm12,%ymm11,%ymm11                     #! PC = 0x555555580000 *)
xor ymm11_0@uint64 ymm11_0 ymm12_0;
xor ymm11_1@uint64 ymm11_1 ymm12_1;
xor ymm11_2@uint64 ymm11_2 ymm12_2;
xor ymm11_3@uint64 ymm11_3 ymm12_3;
(* vprolq $0x1,%ymm10,%ymm0                        #! PC = 0x555555580005 *)
rol ymm0_0 ymm10_0 0x1;
rol ymm0_1 ymm10_1 0x1;
rol ymm0_2 ymm10_2 0x1;
rol ymm0_3 ymm10_3 0x1;
(* vpxorq %ymm9,%ymm30,%ymm30                      #! PC = 0x55555558000c *)
xor ymm30_0@uint64 ymm30_0 ymm9_0;
xor ymm30_1@uint64 ymm30_1 ymm9_1;
xor ymm30_2@uint64 ymm30_2 ymm9_2;
xor ymm30_3@uint64 ymm30_3 ymm9_3;
(* vpxorq %ymm3,%ymm16,%ymm16                      #! PC = 0x555555580012 *)
xor ymm16_0@uint64 ymm16_0 ymm3_0;
xor ymm16_1@uint64 ymm16_1 ymm3_1;
xor ymm16_2@uint64 ymm16_2 ymm3_2;
xor ymm16_3@uint64 ymm16_3 ymm3_3;
(* vpxorq %ymm10,%ymm29,%ymm29                     #! PC = 0x555555580018 *)
xor ymm29_0@uint64 ymm29_0 ymm10_0;
xor ymm29_1@uint64 ymm29_1 ymm10_1;
xor ymm29_2@uint64 ymm29_2 ymm10_2;
xor ymm29_3@uint64 ymm29_3 ymm10_3;
(* vpxor  %ymm11,%ymm6,%ymm6                       #! PC = 0x55555558001e *)
xor ymm6_0@uint64 ymm6_0 ymm11_0;
xor ymm6_1@uint64 ymm6_1 ymm11_1;
xor ymm6_2@uint64 ymm6_2 ymm11_2;
xor ymm6_3@uint64 ymm6_3 ymm11_3;
(* vprorq $0x14,%ymm6,%ymm6                        #! PC = 0x555555580023 *)
ror ymm6_0 ymm6_0 0x14;
ror ymm6_1 ymm6_1 0x14;
ror ymm6_2 ymm6_2 0x14;
ror ymm6_3 ymm6_3 0x14;
(* vpxorq %ymm29,%ymm17,%ymm21                     #! PC = 0x55555558002a *)
xor ymm21_0@uint64 ymm17_0 ymm29_0;
xor ymm21_1@uint64 ymm17_1 ymm29_1;
xor ymm21_2@uint64 ymm17_2 ymm29_2;
xor ymm21_3@uint64 ymm17_3 ymm29_3;
(* vpxorq %ymm30,%ymm2,%ymm26                      #! PC = 0x555555580030 *)
xor ymm26_0@uint64 ymm2_0 ymm30_0;
xor ymm26_1@uint64 ymm2_1 ymm30_1;
xor ymm26_2@uint64 ymm2_2 ymm30_2;
xor ymm26_3@uint64 ymm2_3 ymm30_3;
(* vpxorq %ymm16,%ymm18,%ymm9                      #! PC = 0x555555580036 *)
xor ymm9_0@uint64 ymm18_0 ymm16_0;
xor ymm9_1@uint64 ymm18_1 ymm16_1;
xor ymm9_2@uint64 ymm18_2 ymm16_2;
xor ymm9_3@uint64 ymm18_3 ymm16_3;
(* vprorq $0x15,%ymm21,%ymm21                      #! PC = 0x55555558003c *)
ror ymm21_0 ymm21_0 0x15;
ror ymm21_1 ymm21_1 0x15;
ror ymm21_2 ymm21_2 0x15;
ror ymm21_3 ymm21_3 0x15;
(* vprolq $0x15,%ymm26,%ymm26                      #! PC = 0x555555580043 *)
rol ymm26_0 ymm26_0 0x15;
rol ymm26_1 ymm26_1 0x15;
rol ymm26_2 ymm26_2 0x15;
rol ymm26_3 ymm26_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x55555558004a *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxor  %ymm13,%ymm0,%ymm0                       #! PC = 0x555555580051 *)
xor ymm0_0@uint64 ymm0_0 ymm13_0;
xor ymm0_1@uint64 ymm0_1 ymm13_1;
xor ymm0_2@uint64 ymm0_2 ymm13_2;
xor ymm0_3@uint64 ymm0_3 ymm13_3;
(* vpxorq %ymm0,%ymm22,%ymm22                      #! PC = 0x555555580056 *)
xor ymm22_0@uint64 ymm22_0 ymm0_0;
xor ymm22_1@uint64 ymm22_1 ymm0_1;
xor ymm22_2@uint64 ymm22_2 ymm0_2;
xor ymm22_3@uint64 ymm22_3 ymm0_3;
(* vmovdqa64 %ymm22,%ymm17                         #! PC = 0x55555558005c *)
mov ymm17_0 ymm22_0;
mov ymm17_1 ymm22_1;
mov ymm17_2 ymm22_2;
mov ymm17_3 ymm22_3;
(* vmovdqa64 %ymm6,%ymm18                          #! PC = 0x555555580062 *)
mov ymm18_0 ymm6_0;
mov ymm18_1 ymm6_1;
mov ymm18_2 ymm6_2;
mov ymm18_3 ymm6_3;
(* vpternlogq $0xd2,%ymm26,%ymm21,%ymm18           #! PC = 0x555555580068 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm21_0, ymm26_0, table);
call vpternlogq64 (ymm18_1, ymm21_1, ymm26_1, table);
call vpternlogq64 (ymm18_2, ymm21_2, ymm26_2, table);
call vpternlogq64 (ymm18_3, ymm21_3, ymm26_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm6,%ymm17            #! PC = 0x55555558006f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm6_0, ymm21_0, table);
call vpternlogq64 (ymm17_1, ymm6_1, ymm21_1, table);
call vpternlogq64 (ymm17_2, ymm6_2, ymm21_2, table);
call vpternlogq64 (ymm17_3, ymm6_3, ymm21_3, table);
(* vpxorq %ymm30,%ymm4,%ymm4                       #! PC = 0x555555580076 *)
xor ymm4_0@uint64 ymm4_0 ymm30_0;
xor ymm4_1@uint64 ymm4_1 ymm30_1;
xor ymm4_2@uint64 ymm4_2 ymm30_2;
xor ymm4_3@uint64 ymm4_3 ymm30_3;
(* vpternlogq $0xd2,%ymm9,%ymm26,%ymm21            #! PC = 0x55555558007c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm26_0, ymm9_0, table);
call vpternlogq64 (ymm21_1, ymm26_1, ymm9_1, table);
call vpternlogq64 (ymm21_2, ymm26_2, ymm9_2, table);
call vpternlogq64 (ymm21_3, ymm26_3, ymm9_3, table);
(* vpxorq %ymm16,%ymm27,%ymm27                     #! PC = 0x555555580083 *)
xor ymm27_0@uint64 ymm27_0 ymm16_0;
xor ymm27_1@uint64 ymm27_1 ymm16_1;
xor ymm27_2@uint64 ymm27_2 ymm16_2;
xor ymm27_3@uint64 ymm27_3 ymm16_3;
(* vpternlogq $0xd2,%ymm22,%ymm9,%ymm26            #! PC = 0x555555580089 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm9_0, ymm22_0, table);
call vpternlogq64 (ymm26_1, ymm9_1, ymm22_1, table);
call vpternlogq64 (ymm26_2, ymm9_2, ymm22_2, table);
call vpternlogq64 (ymm26_3, ymm9_3, ymm22_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm22,%ymm9             #! PC = 0x555555580090 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm22_0, ymm6_0, table);
call vpternlogq64 (ymm9_1, ymm22_1, ymm6_1, table);
call vpternlogq64 (ymm9_2, ymm22_2, ymm6_2, table);
call vpternlogq64 (ymm9_3, ymm22_3, ymm6_3, table);
(* vmovdqa64 %ymm31,%ymm6                          #! PC = 0x555555580097 *)
mov ymm6_0 ymm31_0;
mov ymm6_1 ymm31_1;
mov ymm6_2 ymm31_2;
mov ymm6_3 ymm31_3;
(* vprolq $0x1c,%ymm4,%ymm4                        #! PC = 0x55555558009d *)
rol ymm4_0 ymm4_0 0x1c;
rol ymm4_1 ymm4_1 0x1c;
rol ymm4_2 ymm4_2 0x1c;
rol ymm4_3 ymm4_3 0x1c;
(* vprolq $0x14,%ymm27,%ymm27                      #! PC = 0x5555555800a4 *)
rol ymm27_0 ymm27_0 0x14;
rol ymm27_1 ymm27_1 0x14;
rol ymm27_2 ymm27_2 0x14;
rol ymm27_3 ymm27_3 0x14;
(* vpxor  %ymm6,%ymm0,%ymm3                        #! PC = 0x5555555800ab *)
xor ymm3_0@uint64 ymm0_0 ymm6_0;
xor ymm3_1@uint64 ymm0_1 ymm6_1;
xor ymm3_2@uint64 ymm0_2 ymm6_2;
xor ymm3_3@uint64 ymm0_3 ymm6_3;
(* vpxorq %ymm11,%ymm1,%ymm22                      #! PC = 0x5555555800af *)
xor ymm22_0@uint64 ymm1_0 ymm11_0;
xor ymm22_1@uint64 ymm1_1 ymm11_1;
xor ymm22_2@uint64 ymm1_2 ymm11_2;
xor ymm22_3@uint64 ymm1_3 ymm11_3;
(* vpxorq %ymm29,%ymm20,%ymm13                     #! PC = 0x5555555800b5 *)
xor ymm13_0@uint64 ymm20_0 ymm29_0;
xor ymm13_1@uint64 ymm20_1 ymm29_1;
xor ymm13_2@uint64 ymm20_2 ymm29_2;
xor ymm13_3@uint64 ymm20_3 ymm29_3;
(* vprolq $0x3,%ymm3,%ymm3                         #! PC = 0x5555555800bb *)
rol ymm3_0 ymm3_0 0x3;
rol ymm3_1 ymm3_1 0x3;
rol ymm3_2 ymm3_2 0x3;
rol ymm3_3 ymm3_3 0x3;
(* vprorq $0x13,%ymm22,%ymm22                      #! PC = 0x5555555800c2 *)
ror ymm22_0 ymm22_0 0x13;
ror ymm22_1 ymm22_1 0x13;
ror ymm22_2 ymm22_2 0x13;
ror ymm22_3 ymm22_3 0x13;
(* vprorq $0x3,%ymm13,%ymm13                       #! PC = 0x5555555800c9 *)
ror ymm13_0 ymm13_0 0x3;
ror ymm13_1 ymm13_1 0x3;
ror ymm13_2 ymm13_2 0x3;
ror ymm13_3 ymm13_3 0x3;
(* vmovdqa64 %ymm4,%ymm20                          #! PC = 0x5555555800d0 *)
mov ymm20_0 ymm4_0;
mov ymm20_1 ymm4_1;
mov ymm20_2 ymm4_2;
mov ymm20_3 ymm4_3;
(* vmovdqa64 %ymm27,%ymm31                         #! PC = 0x5555555800d6 *)
mov ymm31_0 ymm27_0;
mov ymm31_1 ymm27_1;
mov ymm31_2 ymm27_2;
mov ymm31_3 ymm27_3;
(* vpbroadcastq %rsi,%ymm2                         #! PC = 0x5555555800dc *)
mov ymm2_0 rsi;
mov ymm2_1 rsi;
mov ymm2_2 rsi;
mov ymm2_3 rsi;
(* vpternlogq $0xd2,%ymm3,%ymm27,%ymm20            #! PC = 0x5555555800e2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm27_0, ymm3_0, table);
call vpternlogq64 (ymm20_1, ymm27_1, ymm3_1, table);
call vpternlogq64 (ymm20_2, ymm27_2, ymm3_2, table);
call vpternlogq64 (ymm20_3, ymm27_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm3,%ymm31            #! PC = 0x5555555800e9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm3_0, ymm22_0, table);
call vpternlogq64 (ymm31_1, ymm3_1, ymm22_1, table);
call vpternlogq64 (ymm31_2, ymm3_2, ymm22_2, table);
call vpternlogq64 (ymm31_3, ymm3_3, ymm22_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm22,%ymm3            #! PC = 0x5555555800f0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm22_0, ymm13_0, table);
call vpternlogq64 (ymm3_1, ymm22_1, ymm13_1, table);
call vpternlogq64 (ymm3_2, ymm22_2, ymm13_2, table);
call vpternlogq64 (ymm3_3, ymm22_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm13,%ymm22            #! PC = 0x5555555800f7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm13_0, ymm4_0, table);
call vpternlogq64 (ymm22_1, ymm13_1, ymm4_1, table);
call vpternlogq64 (ymm22_2, ymm13_2, ymm4_2, table);
call vpternlogq64 (ymm22_3, ymm13_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm4,%ymm13            #! PC = 0x5555555800fe *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm4_0, ymm27_0, table);
call vpternlogq64 (ymm13_1, ymm4_1, ymm27_1, table);
call vpternlogq64 (ymm13_2, ymm4_2, ymm27_2, table);
call vpternlogq64 (ymm13_3, ymm4_3, ymm27_3, table);
(* vpxorq 0x68(%rsp),%ymm29,%ymm4                  #! EA = L0x7fffffffd940; Value = 0x78930f0908f73f87; PC = 0x555555580105 *)
xor ymm4_0@uint64 ymm29_0 L0x7fffffffd940;
xor ymm4_1@uint64 ymm29_1 L0x7fffffffd948;
xor ymm4_2@uint64 ymm29_2 L0x7fffffffd950;
xor ymm4_3@uint64 ymm29_3 L0x7fffffffd958;
(* vpxor  %ymm11,%ymm5,%ymm5                       #! PC = 0x555555580110 *)
xor ymm5_0@uint64 ymm5_0 ymm11_0;
xor ymm5_1@uint64 ymm5_1 ymm11_1;
xor ymm5_2@uint64 ymm5_2 ymm11_2;
xor ymm5_3@uint64 ymm5_3 ymm11_3;
(* vprolq $0x6,%ymm4,%ymm4                         #! PC = 0x555555580115 *)
rol ymm4_0 ymm4_0 0x6;
rol ymm4_1 ymm4_1 0x6;
rol ymm4_2 ymm4_2 0x6;
rol ymm4_3 ymm4_3 0x6;
(* vpxorq %ymm2,%ymm17,%ymm17                      #! PC = 0x55555558011c *)
xor ymm17_0@uint64 ymm17_0 ymm2_0;
xor ymm17_1@uint64 ymm17_1 ymm2_1;
xor ymm17_2@uint64 ymm17_2 ymm2_2;
xor ymm17_3@uint64 ymm17_3 ymm2_3;
(* vpxor  %ymm0,%ymm8,%ymm6                        #! PC = 0x555555580122 *)
xor ymm6_0@uint64 ymm8_0 ymm0_0;
xor ymm6_1@uint64 ymm8_1 ymm0_1;
xor ymm6_2@uint64 ymm8_2 ymm0_2;
xor ymm6_3@uint64 ymm8_3 ymm0_3;
(* vprolq $0x1,%ymm5,%ymm2                         #! PC = 0x555555580126 *)
rol ymm2_0 ymm5_0 0x1;
rol ymm2_1 ymm5_1 0x1;
rol ymm2_2 ymm5_2 0x1;
rol ymm2_3 ymm5_3 0x1;
(* vpxorq %ymm16,%ymm7,%ymm1                       #! PC = 0x55555558012d *)
xor ymm1_0@uint64 ymm7_0 ymm16_0;
xor ymm1_1@uint64 ymm7_1 ymm16_1;
xor ymm1_2@uint64 ymm7_2 ymm16_2;
xor ymm1_3@uint64 ymm7_3 ymm16_3;
(* vpxorq %ymm30,%ymm14,%ymm14                     #! PC = 0x555555580133 *)
xor ymm14_0@uint64 ymm14_0 ymm30_0;
xor ymm14_1@uint64 ymm14_1 ymm30_1;
xor ymm14_2@uint64 ymm14_2 ymm30_2;
xor ymm14_3@uint64 ymm14_3 ymm30_3;
(* vprolq $0x12,%ymm6,%ymm6                        #! PC = 0x555555580139 *)
rol ymm6_0 ymm6_0 0x12;
rol ymm6_1 ymm6_1 0x12;
rol ymm6_2 ymm6_2 0x12;
rol ymm6_3 ymm6_3 0x12;
(* vprolq $0x19,%ymm14,%ymm14                      #! PC = 0x555555580140 *)
rol ymm14_0 ymm14_0 0x19;
rol ymm14_1 ymm14_1 0x19;
rol ymm14_2 ymm14_2 0x19;
rol ymm14_3 ymm14_3 0x19;
(* vprolq $0x8,%ymm1,%ymm1                         #! PC = 0x555555580147 *)
rol ymm1_0 ymm1_0 0x8;
rol ymm1_1 ymm1_1 0x8;
rol ymm1_2 ymm1_2 0x8;
rol ymm1_3 ymm1_3 0x8;
(* vmovdqa %ymm2,%ymm12                            #! PC = 0x55555558014e *)
mov ymm12_0 ymm2_0;
mov ymm12_1 ymm2_1;
mov ymm12_2 ymm2_2;
mov ymm12_3 ymm2_3;
(* vmovdqa %ymm4,%ymm5                             #! PC = 0x555555580152 *)
mov ymm5_0 ymm4_0;
mov ymm5_1 ymm4_1;
mov ymm5_2 ymm4_2;
mov ymm5_3 ymm4_3;
(* vpxor  0x28(%rsp),%ymm11,%ymm8                  #! EA = L0x7fffffffd900; Value = 0xdb52d1863cefcab3; PC = 0x555555580156 *)
xor ymm8_0@uint64 ymm11_0 L0x7fffffffd900;
xor ymm8_1@uint64 ymm11_1 L0x7fffffffd908;
xor ymm8_2@uint64 ymm11_2 L0x7fffffffd910;
xor ymm8_3@uint64 ymm11_3 L0x7fffffffd918;
(* vpxorq %ymm0,%ymm19,%ymm19                      #! PC = 0x55555558015c *)
xor ymm19_0@uint64 ymm19_0 ymm0_0;
xor ymm19_1@uint64 ymm19_1 ymm0_1;
xor ymm19_2@uint64 ymm19_2 ymm0_2;
xor ymm19_3@uint64 ymm19_3 ymm0_3;
(* vpternlogq $0xd2,%ymm14,%ymm4,%ymm12            #! PC = 0x555555580162 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm4_0, ymm14_0, table);
call vpternlogq64 (ymm12_1, ymm4_1, ymm14_1, table);
call vpternlogq64 (ymm12_2, ymm4_2, ymm14_2, table);
call vpternlogq64 (ymm12_3, ymm4_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm14,%ymm5             #! PC = 0x555555580169 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm14_0, ymm1_0, table);
call vpternlogq64 (ymm5_1, ymm14_1, ymm1_1, table);
call vpternlogq64 (ymm5_2, ymm14_2, ymm1_2, table);
call vpternlogq64 (ymm5_3, ymm14_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm1,%ymm14             #! PC = 0x555555580170 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm1_0, ymm6_0, table);
call vpternlogq64 (ymm14_1, ymm1_1, ymm6_1, table);
call vpternlogq64 (ymm14_2, ymm1_2, ymm6_2, table);
call vpternlogq64 (ymm14_3, ymm1_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm6,%ymm1              #! PC = 0x555555580177 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm6_0, ymm2_0, table);
call vpternlogq64 (ymm1_1, ymm6_1, ymm2_1, table);
call vpternlogq64 (ymm1_2, ymm6_2, ymm2_2, table);
call vpternlogq64 (ymm1_3, ymm6_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm2,%ymm6              #! PC = 0x55555558017e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm2_0, ymm4_0, table);
call vpternlogq64 (ymm6_1, ymm2_1, ymm4_1, table);
call vpternlogq64 (ymm6_2, ymm2_2, ymm4_2, table);
call vpternlogq64 (ymm6_3, ymm2_3, ymm4_3, table);
(* vpxorq %ymm30,%ymm15,%ymm2                      #! PC = 0x555555580185 *)
xor ymm2_0@uint64 ymm15_0 ymm30_0;
xor ymm2_1@uint64 ymm15_1 ymm30_1;
xor ymm2_2@uint64 ymm15_2 ymm30_2;
xor ymm2_3@uint64 ymm15_3 ymm30_3;
(* vpxorq 0x88(%rsp),%ymm16,%ymm15                 #! EA = L0x7fffffffd960; Value = 0x27b1310886010aa3; PC = 0x55555558018b *)
xor ymm15_0@uint64 ymm16_0 L0x7fffffffd960;
xor ymm15_1@uint64 ymm16_1 L0x7fffffffd968;
xor ymm15_2@uint64 ymm16_2 L0x7fffffffd970;
xor ymm15_3@uint64 ymm16_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm30,%ymm30                 #! EA = L0x7fffffffd920; Value = 0x50e2f780182618bc; PC = 0x555555580196 *)
xor ymm30_0@uint64 ymm30_0 L0x7fffffffd920;
xor ymm30_1@uint64 ymm30_1 L0x7fffffffd928;
xor ymm30_2@uint64 ymm30_2 L0x7fffffffd930;
xor ymm30_3@uint64 ymm30_3 L0x7fffffffd938;
(* vprorq $0x1c,%ymm19,%ymm4                       #! PC = 0x5555555801a1 *)
ror ymm4_0 ymm19_0 0x1c;
ror ymm4_1 ymm19_1 0x1c;
ror ymm4_2 ymm19_2 0x1c;
ror ymm4_3 ymm19_3 0x1c;
(* vprolq $0x1b,%ymm15,%ymm15                      #! PC = 0x5555555801a8 *)
rol ymm15_0 ymm15_0 0x1b;
rol ymm15_1 ymm15_1 0x1b;
rol ymm15_2 ymm15_2 0x1b;
rol ymm15_3 ymm15_3 0x1b;
(* vpxorq %ymm29,%ymm28,%ymm10                     #! PC = 0x5555555801af *)
xor ymm10_0@uint64 ymm28_0 ymm29_0;
xor ymm10_1@uint64 ymm28_1 ymm29_1;
xor ymm10_2@uint64 ymm28_2 ymm29_2;
xor ymm10_3@uint64 ymm28_3 ymm29_3;
(* vpxor  0x8(%rsp),%ymm0,%ymm0                    #! EA = L0x7fffffffd8e0; Value = 0xdfe20ab851a49b70; PC = 0x5555555801b5 *)
xor ymm0_0@uint64 ymm0_0 L0x7fffffffd8e0;
xor ymm0_1@uint64 ymm0_1 L0x7fffffffd8e8;
xor ymm0_2@uint64 ymm0_2 L0x7fffffffd8f0;
xor ymm0_3@uint64 ymm0_3 L0x7fffffffd8f8;
(* vpxorq %ymm29,%ymm25,%ymm29                     #! PC = 0x5555555801bb *)
xor ymm29_0@uint64 ymm25_0 ymm29_0;
xor ymm29_1@uint64 ymm25_1 ymm29_1;
xor ymm29_2@uint64 ymm25_2 ymm29_2;
xor ymm29_3@uint64 ymm25_3 ymm29_3;
(* vprorq $0x2,%ymm29,%ymm29                       #! PC = 0x5555555801c1 *)
ror ymm29_0 ymm29_0 0x2;
ror ymm29_1 ymm29_1 0x2;
ror ymm29_2 ymm29_2 0x2;
ror ymm29_3 ymm29_3 0x2;
(* vprorq $0x9,%ymm30,%ymm30                       #! PC = 0x5555555801c8 *)
ror ymm30_0 ymm30_0 0x9;
ror ymm30_1 ymm30_1 0x9;
ror ymm30_2 ymm30_2 0x9;
ror ymm30_3 ymm30_3 0x9;
(* vprolq $0xa,%ymm8,%ymm8                         #! PC = 0x5555555801cf *)
rol ymm8_0 ymm8_0 0xa;
rol ymm8_1 ymm8_1 0xa;
rol ymm8_2 ymm8_2 0xa;
rol ymm8_3 ymm8_3 0xa;
(* vprolq $0xf,%ymm10,%ymm10                       #! PC = 0x5555555801d6 *)
rol ymm10_0 ymm10_0 0xf;
rol ymm10_1 ymm10_1 0xf;
rol ymm10_2 ymm10_2 0xf;
rol ymm10_3 ymm10_3 0xf;
(* vprorq $0x8,%ymm2,%ymm2                         #! PC = 0x5555555801dd *)
ror ymm2_0 ymm2_0 0x8;
ror ymm2_1 ymm2_1 0x8;
ror ymm2_2 ymm2_2 0x8;
ror ymm2_3 ymm2_3 0x8;
(* vpxorq %ymm11,%ymm24,%ymm11                     #! PC = 0x5555555801e4 *)
xor ymm11_0@uint64 ymm24_0 ymm11_0;
xor ymm11_1@uint64 ymm24_1 ymm11_1;
xor ymm11_2@uint64 ymm24_2 ymm11_2;
xor ymm11_3@uint64 ymm24_3 ymm11_3;
(* vpxorq %ymm16,%ymm23,%ymm16                     #! PC = 0x5555555801ea *)
xor ymm16_0@uint64 ymm23_0 ymm16_0;
xor ymm16_1@uint64 ymm23_1 ymm16_1;
xor ymm16_2@uint64 ymm23_2 ymm16_2;
xor ymm16_3@uint64 ymm23_3 ymm16_3;
(* vprorq $0x17,%ymm0,%ymm0                        #! PC = 0x5555555801f0 *)
ror ymm0_0 ymm0_0 0x17;
ror ymm0_1 ymm0_1 0x17;
ror ymm0_2 ymm0_2 0x17;
ror ymm0_3 ymm0_3 0x17;
(* vprolq $0x2,%ymm11,%ymm11                       #! PC = 0x5555555801f7 *)
rol ymm11_0 ymm11_0 0x2;
rol ymm11_1 ymm11_1 0x2;
rol ymm11_2 ymm11_2 0x2;
rol ymm11_3 ymm11_3 0x2;
(* vprorq $0x19,%ymm16,%ymm16                      #! PC = 0x5555555801fe *)
ror ymm16_0 ymm16_0 0x19;
ror ymm16_1 ymm16_1 0x19;
ror ymm16_2 ymm16_2 0x19;
ror ymm16_3 ymm16_3 0x19;
(* vmovdqa %ymm15,%ymm7                            #! PC = 0x555555580205 *)
mov ymm7_0 ymm15_0;
mov ymm7_1 ymm15_1;
mov ymm7_2 ymm15_2;
mov ymm7_3 ymm15_3;
(* vmovdqa64 %ymm4,%ymm19                          #! PC = 0x555555580209 *)
mov ymm19_0 ymm4_0;
mov ymm19_1 ymm4_1;
mov ymm19_2 ymm4_2;
mov ymm19_3 ymm4_3;
(* vpternlogq $0xd2,%ymm8,%ymm4,%ymm7              #! PC = 0x55555558020f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm4_0, ymm8_0, table);
call vpternlogq64 (ymm7_1, ymm4_1, ymm8_1, table);
call vpternlogq64 (ymm7_2, ymm4_2, ymm8_2, table);
call vpternlogq64 (ymm7_3, ymm4_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm8,%ymm19            #! PC = 0x555555580216 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm8_0, ymm10_0, table);
call vpternlogq64 (ymm19_1, ymm8_1, ymm10_1, table);
call vpternlogq64 (ymm19_2, ymm8_2, ymm10_2, table);
call vpternlogq64 (ymm19_3, ymm8_3, ymm10_3, table);
(* vmovdqa64 %ymm29,%ymm27                         #! PC = 0x55555558021d *)
mov ymm27_0 ymm29_0;
mov ymm27_1 ymm29_1;
mov ymm27_2 ymm29_2;
mov ymm27_3 ymm29_3;
(* vpternlogq $0xd2,%ymm2,%ymm10,%ymm8             #! PC = 0x555555580223 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm10_0, ymm2_0, table);
call vpternlogq64 (ymm8_1, ymm10_1, ymm2_1, table);
call vpternlogq64 (ymm8_2, ymm10_2, ymm2_2, table);
call vpternlogq64 (ymm8_3, ymm10_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm15,%ymm2,%ymm10            #! PC = 0x55555558022a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm15_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm15_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm15_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm15,%ymm2             #! PC = 0x555555580231 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm15_0, ymm4_0, table);
call vpternlogq64 (ymm2_1, ymm15_1, ymm4_1, table);
call vpternlogq64 (ymm2_2, ymm15_2, ymm4_2, table);
call vpternlogq64 (ymm2_3, ymm15_3, ymm4_3, table);
(* vmovdqa64 %ymm30,%ymm15                         #! PC = 0x555555580238 *)
mov ymm15_0 ymm30_0;
mov ymm15_1 ymm30_1;
mov ymm15_2 ymm30_2;
mov ymm15_3 ymm30_3;
(* vpternlogq $0xd2,%ymm0,%ymm16,%ymm15            #! PC = 0x55555558023e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm16_0, ymm0_0, table);
call vpternlogq64 (ymm15_1, ymm16_1, ymm0_1, table);
call vpternlogq64 (ymm15_2, ymm16_2, ymm0_2, table);
call vpternlogq64 (ymm15_3, ymm16_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm30,%ymm27           #! PC = 0x555555580245 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm30_0, ymm16_0, table);
call vpternlogq64 (ymm27_1, ymm30_1, ymm16_1, table);
call vpternlogq64 (ymm27_2, ymm30_2, ymm16_2, table);
call vpternlogq64 (ymm27_3, ymm30_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm0,%ymm16            #! PC = 0x55555558024c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm0_0, ymm11_0, table);
call vpternlogq64 (ymm16_1, ymm0_1, ymm11_1, table);
call vpternlogq64 (ymm16_2, ymm0_2, ymm11_2, table);
call vpternlogq64 (ymm16_3, ymm0_3, ymm11_3, table);
(* vmovdqa64 %ymm16,%ymm24                         #! PC = 0x555555580253 *)
mov ymm24_0 ymm16_0;
mov ymm24_1 ymm16_1;
mov ymm24_2 ymm16_2;
mov ymm24_3 ymm16_3;
(* vpternlogq $0x96,%ymm21,%ymm14,%ymm24           #! PC = 0x555555580259 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm14_0, ymm21_0, table);
call vpternlogq64 (ymm24_1, ymm14_1, ymm21_1, table);
call vpternlogq64 (ymm24_2, ymm14_2, ymm21_2, table);
call vpternlogq64 (ymm24_3, ymm14_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm3,%ymm8,%ymm24             #! PC = 0x555555580260 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm8_0, ymm3_0, table);
call vpternlogq64 (ymm24_1, ymm8_1, ymm3_1, table);
call vpternlogq64 (ymm24_2, ymm8_2, ymm3_2, table);
call vpternlogq64 (ymm24_3, ymm8_3, ymm3_3, table);
(* vprolq $0x1,%ymm24,%ymm23                       #! PC = 0x555555580267 *)
rol ymm23_0 ymm24_0 0x1;
rol ymm23_1 ymm24_1 0x1;
rol ymm23_2 ymm24_2 0x1;
rol ymm23_3 ymm24_3 0x1;
(* vpternlogq $0xd2,%ymm29,%ymm11,%ymm0            #! PC = 0x55555558026e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm11_0, ymm29_0, table);
call vpternlogq64 (ymm0_1, ymm11_1, ymm29_1, table);
call vpternlogq64 (ymm0_2, ymm11_2, ymm29_2, table);
call vpternlogq64 (ymm0_3, ymm11_3, ymm29_3, table);
(* vmovdqa64 %ymm22,%ymm4                          #! PC = 0x555555580275 *)
mov ymm4_0 ymm22_0;
mov ymm4_1 ymm22_1;
mov ymm4_2 ymm22_2;
mov ymm4_3 ymm22_3;
(* vpternlogq $0x96,%ymm1,%ymm0,%ymm4              #! PC = 0x55555558027b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm0_0, ymm1_0, table);
call vpternlogq64 (ymm4_1, ymm0_1, ymm1_1, table);
call vpternlogq64 (ymm4_2, ymm0_2, ymm1_2, table);
call vpternlogq64 (ymm4_3, ymm0_3, ymm1_3, table);
(* vpternlogq $0x96,%ymm10,%ymm26,%ymm4            #! PC = 0x555555580282 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm26_0, ymm10_0, table);
call vpternlogq64 (ymm4_1, ymm26_1, ymm10_1, table);
call vpternlogq64 (ymm4_2, ymm26_2, ymm10_2, table);
call vpternlogq64 (ymm4_3, ymm26_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm29,%ymm11           #! PC = 0x555555580289 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm29_0, ymm30_0, table);
call vpternlogq64 (ymm11_1, ymm29_1, ymm30_1, table);
call vpternlogq64 (ymm11_2, ymm29_2, ymm30_2, table);
call vpternlogq64 (ymm11_3, ymm29_3, ymm30_3, table);
(* vmovdqa64 %ymm23,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x555555580290 *)
mov L0x7fffffffd960 ymm23_0;
mov L0x7fffffffd968 ymm23_1;
mov L0x7fffffffd970 ymm23_2;
mov L0x7fffffffd978 ymm23_3;
(* vprolq $0x1,%ymm4,%ymm23                        #! PC = 0x55555558029b *)
rol ymm23_0 ymm4_0 0x1;
rol ymm23_1 ymm4_1 0x1;
rol ymm23_2 ymm4_2 0x1;
rol ymm23_3 ymm4_3 0x1;
(* vmovdqa64 %ymm2,%ymm28                          #! PC = 0x5555555802a2 *)
mov ymm28_0 ymm2_0;
mov ymm28_1 ymm2_1;
mov ymm28_2 ymm2_2;
mov ymm28_3 ymm2_3;
(* vpternlogq $0x96,%ymm11,%ymm13,%ymm28           #! PC = 0x5555555802a8 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm28_0, ymm13_0, ymm11_0, table);
call vpternlogq64 (ymm28_1, ymm13_1, ymm11_1, table);
call vpternlogq64 (ymm28_2, ymm13_2, ymm11_2, table);
call vpternlogq64 (ymm28_3, ymm13_3, ymm11_3, table);
(* vpternlogq $0x96,%ymm9,%ymm6,%ymm28             #! PC = 0x5555555802af *)
mov table 0x96@uint8;
call vpternlogq64 (ymm28_0, ymm6_0, ymm9_0, table);
call vpternlogq64 (ymm28_1, ymm6_1, ymm9_1, table);
call vpternlogq64 (ymm28_2, ymm6_2, ymm9_2, table);
call vpternlogq64 (ymm28_3, ymm6_3, ymm9_3, table);
(* vmovdqa64 %ymm17,%ymm30                         #! PC = 0x5555555802b6 *)
mov ymm30_0 ymm17_0;
mov ymm30_1 ymm17_1;
mov ymm30_2 ymm17_2;
mov ymm30_3 ymm17_3;
(* vpternlogq $0x96,%ymm20,%ymm7,%ymm30            #! PC = 0x5555555802bc *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm7_0, ymm20_0, table);
call vpternlogq64 (ymm30_1, ymm7_1, ymm20_1, table);
call vpternlogq64 (ymm30_2, ymm7_2, ymm20_2, table);
call vpternlogq64 (ymm30_3, ymm7_3, ymm20_3, table);
(* vmovdqa64 %ymm23,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555802c3 *)
mov L0x7fffffffd940 ymm23_0;
mov L0x7fffffffd948 ymm23_1;
mov L0x7fffffffd950 ymm23_2;
mov L0x7fffffffd958 ymm23_3;
(* vprolq $0x1,%ymm28,%ymm23                       #! PC = 0x5555555802ce *)
rol ymm23_0 ymm28_0 0x1;
rol ymm23_1 ymm28_1 0x1;
rol ymm23_2 ymm28_2 0x1;
rol ymm23_3 ymm28_3 0x1;
(* vpternlogq $0x96,%ymm12,%ymm27,%ymm30           #! PC = 0x5555555802d5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm27_0, ymm12_0, table);
call vpternlogq64 (ymm30_1, ymm27_1, ymm12_1, table);
call vpternlogq64 (ymm30_2, ymm27_2, ymm12_2, table);
call vpternlogq64 (ymm30_3, ymm27_3, ymm12_3, table);
(* vmovdqa64 %ymm5,%ymm25                          #! PC = 0x5555555802dc *)
mov ymm25_0 ymm5_0;
mov ymm25_1 ymm5_1;
mov ymm25_2 ymm5_2;
mov ymm25_3 ymm5_3;
(* vpternlogq $0x96,%ymm19,%ymm18,%ymm25           #! PC = 0x5555555802e2 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm18_0, ymm19_0, table);
call vpternlogq64 (ymm25_1, ymm18_1, ymm19_1, table);
call vpternlogq64 (ymm25_2, ymm18_2, ymm19_2, table);
call vpternlogq64 (ymm25_3, ymm18_3, ymm19_3, table);
(* vpternlogq $0x96,%ymm15,%ymm31,%ymm25           #! PC = 0x5555555802e9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm31_0, ymm15_0, table);
call vpternlogq64 (ymm25_1, ymm31_1, ymm15_1, table);
call vpternlogq64 (ymm25_2, ymm31_2, ymm15_2, table);
call vpternlogq64 (ymm25_3, ymm31_3, ymm15_3, table);
(* vprolq $0x1,%ymm25,%ymm29                       #! PC = 0x5555555802f0 *)
rol ymm29_0 ymm25_0 0x1;
rol ymm29_1 ymm25_1 0x1;
rol ymm29_2 ymm25_2 0x1;
rol ymm29_3 ymm25_3 0x1;
(* vmovdqa64 %ymm23,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x5555555802f7 *)
mov L0x7fffffffd920 ymm23_0;
mov L0x7fffffffd928 ymm23_1;
mov L0x7fffffffd930 ymm23_2;
mov L0x7fffffffd938 ymm23_3;
(* vprolq $0x1,%ymm30,%ymm23                       #! PC = 0x555555580302 *)
rol ymm23_0 ymm30_0 0x1;
rol ymm23_1 ymm30_1 0x1;
rol ymm23_2 ymm30_2 0x1;
rol ymm23_3 ymm30_3 0x1;
(* vpxorq 0x88(%rsp),%ymm30,%ymm30                 #! EA = L0x7fffffffd960; Value = 0x13538d265184d68a; PC = 0x555555580309 *)
xor ymm30_0@uint64 ymm30_0 L0x7fffffffd960;
xor ymm30_1@uint64 ymm30_1 L0x7fffffffd968;
xor ymm30_2@uint64 ymm30_2 L0x7fffffffd970;
xor ymm30_3@uint64 ymm30_3 L0x7fffffffd978;
(* vpxorq 0x68(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd940; Value = 0xfed2a03a72a2b90c; PC = 0x555555580314 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd940;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd948;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd950;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd958;
(* vpxorq 0x48(%rsp),%ymm24,%ymm24                 #! EA = L0x7fffffffd920; Value = 0xbf56e56b2d99c77b; PC = 0x55555558031f *)
xor ymm24_0@uint64 ymm24_0 L0x7fffffffd920;
xor ymm24_1@uint64 ymm24_1 L0x7fffffffd928;
xor ymm24_2@uint64 ymm24_2 L0x7fffffffd930;
xor ymm24_3@uint64 ymm24_3 L0x7fffffffd938;
(* vpxorq %ymm30,%ymm31,%ymm31                     #! PC = 0x55555558032a *)
xor ymm31_0@uint64 ymm31_0 ymm30_0;
xor ymm31_1@uint64 ymm31_1 ymm30_1;
xor ymm31_2@uint64 ymm31_2 ymm30_2;
xor ymm31_3@uint64 ymm31_3 ymm30_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580330 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm4,%ymm23,%ymm23                      #! PC = 0x555555580337 *)
xor ymm23_0@uint64 ymm23_0 ymm4_0;
xor ymm23_1@uint64 ymm23_1 ymm4_1;
xor ymm23_2@uint64 ymm23_2 ymm4_2;
xor ymm23_3@uint64 ymm23_3 ymm4_3;
(* vpxorq %ymm25,%ymm14,%ymm14                     #! PC = 0x55555558033d *)
xor ymm14_0@uint64 ymm14_0 ymm25_0;
xor ymm14_1@uint64 ymm14_1 ymm25_1;
xor ymm14_2@uint64 ymm14_2 ymm25_2;
xor ymm14_3@uint64 ymm14_3 ymm25_3;
(* vpxorq %ymm24,%ymm10,%ymm10                     #! PC = 0x555555580343 *)
xor ymm10_0@uint64 ymm10_0 ymm24_0;
xor ymm10_1@uint64 ymm10_1 ymm24_1;
xor ymm10_2@uint64 ymm10_2 ymm24_2;
xor ymm10_3@uint64 ymm10_3 ymm24_3;
(* vpxorq %ymm23,%ymm11,%ymm11                     #! PC = 0x555555580349 *)
xor ymm11_0@uint64 ymm11_0 ymm23_0;
xor ymm11_1@uint64 ymm11_1 ymm23_1;
xor ymm11_2@uint64 ymm11_2 ymm23_2;
xor ymm11_3@uint64 ymm11_3 ymm23_3;
(* vprorq $0x15,%ymm14,%ymm14                      #! PC = 0x55555558034f *)
ror ymm14_0 ymm14_0 0x15;
ror ymm14_1 ymm14_1 0x15;
ror ymm14_2 ymm14_2 0x15;
ror ymm14_3 ymm14_3 0x15;
(* vprolq $0x15,%ymm10,%ymm10                      #! PC = 0x555555580356 *)
rol ymm10_0 ymm10_0 0x15;
rol ymm10_1 ymm10_1 0x15;
rol ymm10_2 ymm10_2 0x15;
rol ymm10_3 ymm10_3 0x15;
(* vprolq $0xe,%ymm11,%ymm11                       #! PC = 0x55555558035d *)
rol ymm11_0 ymm11_0 0xe;
rol ymm11_1 ymm11_1 0xe;
rol ymm11_2 ymm11_2 0xe;
rol ymm11_3 ymm11_3 0xe;
(* vpxorq %ymm28,%ymm29,%ymm29                     #! PC = 0x555555580364 *)
xor ymm29_0@uint64 ymm29_0 ymm28_0;
xor ymm29_1@uint64 ymm29_1 ymm28_1;
xor ymm29_2@uint64 ymm29_2 ymm28_2;
xor ymm29_3@uint64 ymm29_3 ymm28_3;
(* vpxorq %ymm17,%ymm29,%ymm4                      #! PC = 0x55555558036a *)
xor ymm4_0@uint64 ymm29_0 ymm17_0;
xor ymm4_1@uint64 ymm29_1 ymm17_1;
xor ymm4_2@uint64 ymm29_2 ymm17_2;
xor ymm4_3@uint64 ymm29_3 ymm17_3;
(* vmovdqa64 %ymm4,%ymm28                          #! PC = 0x555555580370 *)
mov ymm28_0 ymm4_0;
mov ymm28_1 ymm4_1;
mov ymm28_2 ymm4_2;
mov ymm28_3 ymm4_3;
(* vmovdqa64 %ymm31,%ymm17                         #! PC = 0x555555580376 *)
mov ymm17_0 ymm31_0;
mov ymm17_1 ymm31_1;
mov ymm17_2 ymm31_2;
mov ymm17_3 ymm31_3;
(* vpternlogq $0xd2,%ymm10,%ymm14,%ymm17           #! PC = 0x55555558037c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm14_0, ymm10_0, table);
call vpternlogq64 (ymm17_1, ymm14_1, ymm10_1, table);
call vpternlogq64 (ymm17_2, ymm14_2, ymm10_2, table);
call vpternlogq64 (ymm17_3, ymm14_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm31,%ymm28           #! PC = 0x555555580383 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm31_0, ymm14_0, table);
call vpternlogq64 (ymm28_1, ymm31_1, ymm14_1, table);
call vpternlogq64 (ymm28_2, ymm31_2, ymm14_2, table);
call vpternlogq64 (ymm28_3, ymm31_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm10,%ymm14           #! PC = 0x55555558038a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm14_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm14_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm14_3, ymm10_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm11,%ymm10            #! PC = 0x555555580391 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm11_0, ymm4_0, table);
call vpternlogq64 (ymm10_1, ymm11_1, ymm4_1, table);
call vpternlogq64 (ymm10_2, ymm11_2, ymm4_2, table);
call vpternlogq64 (ymm10_3, ymm11_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm4,%ymm11            #! PC = 0x555555580398 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm4_0, ymm31_0, table);
call vpternlogq64 (ymm11_1, ymm4_1, ymm31_1, table);
call vpternlogq64 (ymm11_2, ymm4_2, ymm31_2, table);
call vpternlogq64 (ymm11_3, ymm4_3, ymm31_3, table);
(* vpbroadcastq %rdi,%ymm4                         #! PC = 0x55555558039f *)
mov ymm4_0 rdi;
mov ymm4_1 rdi;
mov ymm4_2 rdi;
mov ymm4_3 rdi;
(* vpxorq %ymm4,%ymm28,%ymm28                      #! PC = 0x5555555803a5 *)
xor ymm28_0@uint64 ymm28_0 ymm4_0;
xor ymm28_1@uint64 ymm28_1 ymm4_1;
xor ymm28_2@uint64 ymm28_2 ymm4_2;
xor ymm28_3@uint64 ymm28_3 ymm4_3;
(* vpxorq %ymm23,%ymm13,%ymm13                     #! PC = 0x5555555803ab *)
xor ymm13_0@uint64 ymm13_0 ymm23_0;
xor ymm13_1@uint64 ymm13_1 ymm23_1;
xor ymm13_2@uint64 ymm13_2 ymm23_2;
xor ymm13_3@uint64 ymm13_3 ymm23_3;
(* vpxorq %ymm24,%ymm26,%ymm4                      #! PC = 0x5555555803b1 *)
xor ymm4_0@uint64 ymm26_0 ymm24_0;
xor ymm4_1@uint64 ymm26_1 ymm24_1;
xor ymm4_2@uint64 ymm26_2 ymm24_2;
xor ymm4_3@uint64 ymm26_3 ymm24_3;
(* vprolq $0x1c,%ymm4,%ymm4                        #! PC = 0x5555555803b7 *)
rol ymm4_0 ymm4_0 0x1c;
rol ymm4_1 ymm4_1 0x1c;
rol ymm4_2 ymm4_2 0x1c;
rol ymm4_3 ymm4_3 0x1c;
(* vprolq $0x14,%ymm13,%ymm13                      #! PC = 0x5555555803be *)
rol ymm13_0 ymm13_0 0x14;
rol ymm13_1 ymm13_1 0x14;
rol ymm13_2 ymm13_2 0x14;
rol ymm13_3 ymm13_3 0x14;
(* vpxorq %ymm29,%ymm12,%ymm12                     #! PC = 0x5555555803c5 *)
xor ymm12_0@uint64 ymm12_0 ymm29_0;
xor ymm12_1@uint64 ymm12_1 ymm29_1;
xor ymm12_2@uint64 ymm12_2 ymm29_2;
xor ymm12_3@uint64 ymm12_3 ymm29_3;
(* vpxorq %ymm30,%ymm19,%ymm19                     #! PC = 0x5555555803cb *)
xor ymm19_0@uint64 ymm19_0 ymm30_0;
xor ymm19_1@uint64 ymm19_1 ymm30_1;
xor ymm19_2@uint64 ymm19_2 ymm30_2;
xor ymm19_3@uint64 ymm19_3 ymm30_3;
(* vpxorq %ymm25,%ymm16,%ymm16                     #! PC = 0x5555555803d1 *)
xor ymm16_0@uint64 ymm16_0 ymm25_0;
xor ymm16_1@uint64 ymm16_1 ymm25_1;
xor ymm16_2@uint64 ymm16_2 ymm25_2;
xor ymm16_3@uint64 ymm16_3 ymm25_3;
(* vpxorq %ymm30,%ymm18,%ymm18                     #! PC = 0x5555555803d7 *)
xor ymm18_0@uint64 ymm18_0 ymm30_0;
xor ymm18_1@uint64 ymm18_1 ymm30_1;
xor ymm18_2@uint64 ymm18_2 ymm30_2;
xor ymm18_3@uint64 ymm18_3 ymm30_3;
(* vpxorq %ymm25,%ymm3,%ymm3                       #! PC = 0x5555555803dd *)
xor ymm3_0@uint64 ymm3_0 ymm25_0;
xor ymm3_1@uint64 ymm3_1 ymm25_1;
xor ymm3_2@uint64 ymm3_2 ymm25_2;
xor ymm3_3@uint64 ymm3_3 ymm25_3;
(* vprolq $0x1,%ymm18,%ymm18                       #! PC = 0x5555555803e3 *)
rol ymm18_0 ymm18_0 0x1;
rol ymm18_1 ymm18_1 0x1;
rol ymm18_2 ymm18_2 0x1;
rol ymm18_3 ymm18_3 0x1;
(* vprolq $0x6,%ymm3,%ymm3                         #! PC = 0x5555555803ea *)
rol ymm3_0 ymm3_0 0x6;
rol ymm3_1 ymm3_1 0x6;
rol ymm3_2 ymm3_2 0x6;
rol ymm3_3 ymm3_3 0x6;
(* vprolq $0x3,%ymm12,%ymm12                       #! PC = 0x5555555803f1 *)
rol ymm12_0 ymm12_0 0x3;
rol ymm12_1 ymm12_1 0x3;
rol ymm12_2 ymm12_2 0x3;
rol ymm12_3 ymm12_3 0x3;
(* vprorq $0x13,%ymm19,%ymm19                      #! PC = 0x5555555803f8 *)
ror ymm19_0 ymm19_0 0x13;
ror ymm19_1 ymm19_1 0x13;
ror ymm19_2 ymm19_2 0x13;
ror ymm19_3 ymm19_3 0x13;
(* vprorq $0x3,%ymm16,%ymm16                       #! PC = 0x5555555803ff *)
ror ymm16_0 ymm16_0 0x3;
ror ymm16_1 ymm16_1 0x3;
ror ymm16_2 ymm16_2 0x3;
ror ymm16_3 ymm16_3 0x3;
(* vpxorq %ymm29,%ymm27,%ymm27                     #! PC = 0x555555580406 *)
xor ymm27_0@uint64 ymm27_0 ymm29_0;
xor ymm27_1@uint64 ymm27_1 ymm29_1;
xor ymm27_2@uint64 ymm27_2 ymm29_2;
xor ymm27_3@uint64 ymm27_3 ymm29_3;
(* vpxorq %ymm24,%ymm1,%ymm1                       #! PC = 0x55555558040c *)
xor ymm1_0@uint64 ymm1_0 ymm24_0;
xor ymm1_1@uint64 ymm1_1 ymm24_1;
xor ymm1_2@uint64 ymm1_2 ymm24_2;
xor ymm1_3@uint64 ymm1_3 ymm24_3;
(* vpxorq %ymm23,%ymm2,%ymm2                       #! PC = 0x555555580412 *)
xor ymm2_0@uint64 ymm2_0 ymm23_0;
xor ymm2_1@uint64 ymm2_1 ymm23_1;
xor ymm2_2@uint64 ymm2_2 ymm23_2;
xor ymm2_3@uint64 ymm2_3 ymm23_3;
(* vpxorq %ymm29,%ymm20,%ymm20                     #! PC = 0x555555580418 *)
xor ymm20_0@uint64 ymm20_0 ymm29_0;
xor ymm20_1@uint64 ymm20_1 ymm29_1;
xor ymm20_2@uint64 ymm20_2 ymm29_2;
xor ymm20_3@uint64 ymm20_3 ymm29_3;
(* vpxorq %ymm23,%ymm9,%ymm9                       #! PC = 0x55555558041e *)
xor ymm9_0@uint64 ymm9_0 ymm23_0;
xor ymm9_1@uint64 ymm9_1 ymm23_1;
xor ymm9_2@uint64 ymm9_2 ymm23_2;
xor ymm9_3@uint64 ymm9_3 ymm23_3;
(* vprorq $0x1c,%ymm20,%ymm20                      #! PC = 0x555555580424 *)
ror ymm20_0 ymm20_0 0x1c;
ror ymm20_1 ymm20_1 0x1c;
ror ymm20_2 ymm20_2 0x1c;
ror ymm20_3 ymm20_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x55555558042b *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm27,%ymm27                      #! PC = 0x555555580432 *)
rol ymm27_0 ymm27_0 0x12;
rol ymm27_1 ymm27_1 0x12;
rol ymm27_2 ymm27_2 0x12;
rol ymm27_3 ymm27_3 0x12;
(* vprolq $0x19,%ymm1,%ymm1                        #! PC = 0x555555580439 *)
rol ymm1_0 ymm1_0 0x19;
rol ymm1_1 ymm1_1 0x19;
rol ymm1_2 ymm1_2 0x19;
rol ymm1_3 ymm1_3 0x19;
(* vprolq $0x8,%ymm2,%ymm2                         #! PC = 0x555555580440 *)
rol ymm2_0 ymm2_0 0x8;
rol ymm2_1 ymm2_1 0x8;
rol ymm2_2 ymm2_2 0x8;
rol ymm2_3 ymm2_3 0x8;
(* vpxorq %ymm30,%ymm5,%ymm5                       #! PC = 0x555555580447 *)
xor ymm5_0@uint64 ymm5_0 ymm30_0;
xor ymm5_1@uint64 ymm5_1 ymm30_1;
xor ymm5_2@uint64 ymm5_2 ymm30_2;
xor ymm5_3@uint64 ymm5_3 ymm30_3;
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x55555558044d *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpxorq %ymm24,%ymm0,%ymm0                       #! PC = 0x555555580453 *)
xor ymm0_0@uint64 ymm0_0 ymm24_0;
xor ymm0_1@uint64 ymm0_1 ymm24_1;
xor ymm0_2@uint64 ymm0_2 ymm24_2;
xor ymm0_3@uint64 ymm0_3 ymm24_3;
(* vprolq $0xa,%ymm5,%ymm5                         #! PC = 0x555555580459 *)
rol ymm5_0 ymm5_0 0xa;
rol ymm5_1 ymm5_1 0xa;
rol ymm5_2 ymm5_2 0xa;
rol ymm5_3 ymm5_3 0xa;
(* vprolq $0xf,%ymm8,%ymm8                         #! PC = 0x555555580460 *)
rol ymm8_0 ymm8_0 0xf;
rol ymm8_1 ymm8_1 0xf;
rol ymm8_2 ymm8_2 0xf;
rol ymm8_3 ymm8_3 0xf;
(* vprorq $0x8,%ymm0,%ymm0                         #! PC = 0x555555580467 *)
ror ymm0_0 ymm0_0 0x8;
ror ymm0_1 ymm0_1 0x8;
ror ymm0_2 ymm0_2 0x8;
ror ymm0_3 ymm0_3 0x8;
(* vmovdqa64 %ymm4,%ymm26                          #! PC = 0x55555558046e *)
mov ymm26_0 ymm4_0;
mov ymm26_1 ymm4_1;
mov ymm26_2 ymm4_2;
mov ymm26_3 ymm4_3;
(* vmovdqa64 %ymm13,%ymm31                         #! PC = 0x555555580474 *)
mov ymm31_0 ymm13_0;
mov ymm31_1 ymm13_1;
mov ymm31_2 ymm13_2;
mov ymm31_3 ymm13_3;
(* vpternlogq $0xd2,%ymm12,%ymm13,%ymm26           #! PC = 0x55555558047a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm13_0, ymm12_0, table);
call vpternlogq64 (ymm26_1, ymm13_1, ymm12_1, table);
call vpternlogq64 (ymm26_2, ymm13_2, ymm12_2, table);
call vpternlogq64 (ymm26_3, ymm13_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm12,%ymm31           #! PC = 0x555555580481 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm12_0, ymm19_0, table);
call vpternlogq64 (ymm31_1, ymm12_1, ymm19_1, table);
call vpternlogq64 (ymm31_2, ymm12_2, ymm19_2, table);
call vpternlogq64 (ymm31_3, ymm12_3, ymm19_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm19,%ymm12           #! PC = 0x555555580488 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm19_0, ymm16_0, table);
call vpternlogq64 (ymm12_1, ymm19_1, ymm16_1, table);
call vpternlogq64 (ymm12_2, ymm19_2, ymm16_2, table);
call vpternlogq64 (ymm12_3, ymm19_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm16,%ymm19            #! PC = 0x55555558048f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm16_0, ymm4_0, table);
call vpternlogq64 (ymm19_1, ymm16_1, ymm4_1, table);
call vpternlogq64 (ymm19_2, ymm16_2, ymm4_2, table);
call vpternlogq64 (ymm19_3, ymm16_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm4,%ymm16            #! PC = 0x555555580496 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm4_0, ymm13_0, table);
call vpternlogq64 (ymm16_1, ymm4_1, ymm13_1, table);
call vpternlogq64 (ymm16_2, ymm4_2, ymm13_2, table);
call vpternlogq64 (ymm16_3, ymm4_3, ymm13_3, table);
(* vmovdqa64 %ymm18,%ymm13                         #! PC = 0x55555558049d *)
mov ymm13_0 ymm18_0;
mov ymm13_1 ymm18_1;
mov ymm13_2 ymm18_2;
mov ymm13_3 ymm18_3;
(* vmovdqa %ymm3,%ymm4                             #! PC = 0x5555555804a3 *)
mov ymm4_0 ymm3_0;
mov ymm4_1 ymm3_1;
mov ymm4_2 ymm3_2;
mov ymm4_3 ymm3_3;
(* vpternlogq $0xd2,%ymm1,%ymm3,%ymm13             #! PC = 0x5555555804a7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm3_0, ymm1_0, table);
call vpternlogq64 (ymm13_1, ymm3_1, ymm1_1, table);
call vpternlogq64 (ymm13_2, ymm3_2, ymm1_2, table);
call vpternlogq64 (ymm13_3, ymm3_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm1,%ymm4              #! PC = 0x5555555804ae *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm1_0, ymm2_0, table);
call vpternlogq64 (ymm4_1, ymm1_1, ymm2_1, table);
call vpternlogq64 (ymm4_2, ymm1_2, ymm2_2, table);
call vpternlogq64 (ymm4_3, ymm1_3, ymm2_3, table);
(* vpxorq %ymm25,%ymm21,%ymm21                     #! PC = 0x5555555804b5 *)
xor ymm21_0@uint64 ymm21_0 ymm25_0;
xor ymm21_1@uint64 ymm21_1 ymm25_1;
xor ymm21_2@uint64 ymm21_2 ymm25_2;
xor ymm21_3@uint64 ymm21_3 ymm25_3;
(* vpternlogq $0xd2,%ymm27,%ymm2,%ymm1             #! PC = 0x5555555804bb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm2_0, ymm27_0, table);
call vpternlogq64 (ymm1_1, ymm2_1, ymm27_1, table);
call vpternlogq64 (ymm1_2, ymm2_2, ymm27_2, table);
call vpternlogq64 (ymm1_3, ymm2_3, ymm27_3, table);
(* vpxorq %ymm24,%ymm22,%ymm22                     #! PC = 0x5555555804c2 *)
xor ymm22_0@uint64 ymm22_0 ymm24_0;
xor ymm22_1@uint64 ymm22_1 ymm24_1;
xor ymm22_2@uint64 ymm22_2 ymm24_2;
xor ymm22_3@uint64 ymm22_3 ymm24_3;
(* vpternlogq $0xd2,%ymm18,%ymm27,%ymm2            #! PC = 0x5555555804c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm27_0, ymm18_0, table);
call vpternlogq64 (ymm2_1, ymm27_1, ymm18_1, table);
call vpternlogq64 (ymm2_2, ymm27_2, ymm18_2, table);
call vpternlogq64 (ymm2_3, ymm27_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm18,%ymm27            #! PC = 0x5555555804cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm18_0, ymm3_0, table);
call vpternlogq64 (ymm27_1, ymm18_1, ymm3_1, table);
call vpternlogq64 (ymm27_2, ymm18_2, ymm3_2, table);
call vpternlogq64 (ymm27_3, ymm18_3, ymm3_3, table);
(* vmovdqa %ymm9,%ymm3                             #! PC = 0x5555555804d6 *)
mov ymm3_0 ymm9_0;
mov ymm3_1 ymm9_1;
mov ymm3_2 ymm9_2;
mov ymm3_3 ymm9_3;
(* vmovdqa64 %ymm20,%ymm18                         #! PC = 0x5555555804da *)
mov ymm18_0 ymm20_0;
mov ymm18_1 ymm20_1;
mov ymm18_2 ymm20_2;
mov ymm18_3 ymm20_3;
(* vprorq $0x2,%ymm21,%ymm21                       #! PC = 0x5555555804e0 *)
ror ymm21_0 ymm21_0 0x2;
ror ymm21_1 ymm21_1 0x2;
ror ymm21_2 ymm21_2 0x2;
ror ymm21_3 ymm21_3 0x2;
(* vprorq $0x9,%ymm22,%ymm22                       #! PC = 0x5555555804e7 *)
ror ymm22_0 ymm22_0 0x9;
ror ymm22_1 ymm22_1 0x9;
ror ymm22_2 ymm22_2 0x9;
ror ymm22_3 ymm22_3 0x9;
(* vpternlogq $0xd2,%ymm5,%ymm20,%ymm3             #! PC = 0x5555555804ee *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm20_0, ymm5_0, table);
call vpternlogq64 (ymm3_1, ymm20_1, ymm5_1, table);
call vpternlogq64 (ymm3_2, ymm20_2, ymm5_2, table);
call vpternlogq64 (ymm3_3, ymm20_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm5,%ymm18             #! PC = 0x5555555804f5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm5_0, ymm8_0, table);
call vpternlogq64 (ymm18_1, ymm5_1, ymm8_1, table);
call vpternlogq64 (ymm18_2, ymm5_2, ymm8_2, table);
call vpternlogq64 (ymm18_3, ymm5_3, ymm8_3, table);
(* vpxorq %ymm29,%ymm7,%ymm7                       #! PC = 0x5555555804fc *)
xor ymm7_0@uint64 ymm7_0 ymm29_0;
xor ymm7_1@uint64 ymm7_1 ymm29_1;
xor ymm7_2@uint64 ymm7_2 ymm29_2;
xor ymm7_3@uint64 ymm7_3 ymm29_3;
(* vpternlogq $0xd2,%ymm0,%ymm8,%ymm5              #! PC = 0x555555580502 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm8_0, ymm0_0, table);
call vpternlogq64 (ymm5_1, ymm8_1, ymm0_1, table);
call vpternlogq64 (ymm5_2, ymm8_2, ymm0_2, table);
call vpternlogq64 (ymm5_3, ymm8_3, ymm0_3, table);
(* vpxorq %ymm23,%ymm6,%ymm6                       #! PC = 0x555555580509 *)
xor ymm6_0@uint64 ymm6_0 ymm23_0;
xor ymm6_1@uint64 ymm6_1 ymm23_1;
xor ymm6_2@uint64 ymm6_2 ymm23_2;
xor ymm6_3@uint64 ymm6_3 ymm23_3;
(* vpternlogq $0xd2,%ymm9,%ymm0,%ymm8              #! PC = 0x55555558050f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm0_0, ymm9_0, table);
call vpternlogq64 (ymm8_1, ymm0_1, ymm9_1, table);
call vpternlogq64 (ymm8_2, ymm0_2, ymm9_2, table);
call vpternlogq64 (ymm8_3, ymm0_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm9,%ymm0             #! PC = 0x555555580516 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm9_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm9_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm9_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm9_3, ymm20_3, table);
(* vpxorq %ymm30,%ymm15,%ymm9                      #! PC = 0x55555558051d *)
xor ymm9_0@uint64 ymm15_0 ymm30_0;
xor ymm9_1@uint64 ymm15_1 ymm30_1;
xor ymm9_2@uint64 ymm15_2 ymm30_2;
xor ymm9_3@uint64 ymm15_3 ymm30_3;
(* vprorq $0x17,%ymm7,%ymm7                        #! PC = 0x555555580523 *)
ror ymm7_0 ymm7_0 0x17;
ror ymm7_1 ymm7_1 0x17;
ror ymm7_2 ymm7_2 0x17;
ror ymm7_3 ymm7_3 0x17;
(* vprolq $0x2,%ymm9,%ymm9                         #! PC = 0x55555558052a *)
rol ymm9_0 ymm9_0 0x2;
rol ymm9_1 ymm9_1 0x2;
rol ymm9_2 ymm9_2 0x2;
rol ymm9_3 ymm9_3 0x2;
(* vprorq $0x19,%ymm6,%ymm6                        #! PC = 0x555555580531 *)
ror ymm6_0 ymm6_0 0x19;
ror ymm6_1 ymm6_1 0x19;
ror ymm6_2 ymm6_2 0x19;
ror ymm6_3 ymm6_3 0x19;
(* vmovdqa64 %ymm21,%ymm23                         #! PC = 0x555555580538 *)
mov ymm23_0 ymm21_0;
mov ymm23_1 ymm21_1;
mov ymm23_2 ymm21_2;
mov ymm23_3 ymm21_3;
(* vmovdqa64 %ymm22,%ymm24                         #! PC = 0x55555558053e *)
mov ymm24_0 ymm22_0;
mov ymm24_1 ymm22_1;
mov ymm24_2 ymm22_2;
mov ymm24_3 ymm22_3;
(* vmovdqa %ymm12,%ymm15                           #! PC = 0x555555580544 *)
mov ymm15_0 ymm12_0;
mov ymm15_1 ymm12_1;
mov ymm15_2 ymm12_2;
mov ymm15_3 ymm12_3;
(* vmovdqa64 %ymm27,%ymm25                         #! PC = 0x555555580549 *)
mov ymm25_0 ymm27_0;
mov ymm25_1 ymm27_1;
mov ymm25_2 ymm27_2;
mov ymm25_3 ymm27_3;
(* vpternlogq $0x96,%ymm11,%ymm16,%ymm25           #! PC = 0x55555558054f *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm16_0, ymm11_0, table);
call vpternlogq64 (ymm25_1, ymm16_1, ymm11_1, table);
call vpternlogq64 (ymm25_2, ymm16_2, ymm11_2, table);
call vpternlogq64 (ymm25_3, ymm16_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm6,%ymm24             #! PC = 0x555555580556 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm6_0, ymm7_0, table);
call vpternlogq64 (ymm24_1, ymm6_1, ymm7_1, table);
call vpternlogq64 (ymm24_2, ymm6_2, ymm7_2, table);
call vpternlogq64 (ymm24_3, ymm6_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm22,%ymm23            #! PC = 0x55555558055d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm22_0, ymm6_0, table);
call vpternlogq64 (ymm23_1, ymm22_1, ymm6_1, table);
call vpternlogq64 (ymm23_2, ymm22_2, ymm6_2, table);
call vpternlogq64 (ymm23_3, ymm22_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm7,%ymm6              #! PC = 0x555555580564 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm7_0, ymm9_0, table);
call vpternlogq64 (ymm6_1, ymm7_1, ymm9_1, table);
call vpternlogq64 (ymm6_2, ymm7_2, ymm9_2, table);
call vpternlogq64 (ymm6_3, ymm7_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm6,%ymm14,%ymm15            #! PC = 0x55555558056b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm14_0, ymm6_0, table);
call vpternlogq64 (ymm15_1, ymm14_1, ymm6_1, table);
call vpternlogq64 (ymm15_2, ymm14_2, ymm6_2, table);
call vpternlogq64 (ymm15_3, ymm14_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm1,%ymm5,%ymm15             #! PC = 0x555555580572 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm5_0, ymm1_0, table);
call vpternlogq64 (ymm15_1, ymm5_1, ymm1_1, table);
call vpternlogq64 (ymm15_2, ymm5_2, ymm1_2, table);
call vpternlogq64 (ymm15_3, ymm5_3, ymm1_3, table);
(* vprolq $0x1,%ymm15,%ymm29                       #! PC = 0x555555580579 *)
rol ymm29_0 ymm15_0 0x1;
rol ymm29_1 ymm15_1 0x1;
rol ymm29_2 ymm15_2 0x1;
rol ymm29_3 ymm15_3 0x1;
(* vpternlogq $0xd2,%ymm21,%ymm9,%ymm7             #! PC = 0x555555580580 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm9_0, ymm21_0, table);
call vpternlogq64 (ymm7_1, ymm9_1, ymm21_1, table);
call vpternlogq64 (ymm7_2, ymm9_2, ymm21_2, table);
call vpternlogq64 (ymm7_3, ymm9_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm21,%ymm9            #! PC = 0x555555580587 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm21_0, ymm22_0, table);
call vpternlogq64 (ymm9_1, ymm21_1, ymm22_1, table);
call vpternlogq64 (ymm9_2, ymm21_2, ymm22_2, table);
call vpternlogq64 (ymm9_3, ymm21_3, ymm22_3, table);
(* vmovdqa64 %ymm7,%ymm21                          #! PC = 0x55555558058e *)
mov ymm21_0 ymm7_0;
mov ymm21_1 ymm7_1;
mov ymm21_2 ymm7_2;
mov ymm21_3 ymm7_3;
(* vpternlogq $0x96,%ymm2,%ymm8,%ymm21             #! PC = 0x555555580594 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm21_0, ymm8_0, ymm2_0, table);
call vpternlogq64 (ymm21_1, ymm8_1, ymm2_1, table);
call vpternlogq64 (ymm21_2, ymm8_2, ymm2_2, table);
call vpternlogq64 (ymm21_3, ymm8_3, ymm2_3, table);
(* vpternlogq $0x96,%ymm10,%ymm19,%ymm21           #! PC = 0x55555558059b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm21_0, ymm19_0, ymm10_0, table);
call vpternlogq64 (ymm21_1, ymm19_1, ymm10_1, table);
call vpternlogq64 (ymm21_2, ymm19_2, ymm10_2, table);
call vpternlogq64 (ymm21_3, ymm19_3, ymm10_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555805a2 *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm21,%ymm29                       #! PC = 0x5555555805ad *)
rol ymm29_0 ymm21_0 0x1;
rol ymm29_1 ymm21_1 0x1;
rol ymm29_2 ymm21_2 0x1;
rol ymm29_3 ymm21_3 0x1;
(* vpternlogq $0x96,%ymm0,%ymm9,%ymm25             #! PC = 0x5555555805b4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm9_0, ymm0_0, table);
call vpternlogq64 (ymm25_1, ymm9_1, ymm0_1, table);
call vpternlogq64 (ymm25_2, ymm9_2, ymm0_2, table);
call vpternlogq64 (ymm25_3, ymm9_3, ymm0_3, table);
(* vmovdqa64 %ymm28,%ymm22                         #! PC = 0x5555555805bb *)
mov ymm22_0 ymm28_0;
mov ymm22_1 ymm28_1;
mov ymm22_2 ymm28_2;
mov ymm22_3 ymm28_3;
(* vpternlogq $0x96,%ymm3,%ymm23,%ymm22            #! PC = 0x5555555805c1 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm23_0, ymm3_0, table);
call vpternlogq64 (ymm22_1, ymm23_1, ymm3_1, table);
call vpternlogq64 (ymm22_2, ymm23_2, ymm3_2, table);
call vpternlogq64 (ymm22_3, ymm23_3, ymm3_3, table);
(* vpternlogq $0x96,%ymm26,%ymm13,%ymm22           #! PC = 0x5555555805c8 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm13_0, ymm26_0, table);
call vpternlogq64 (ymm22_1, ymm13_1, ymm26_1, table);
call vpternlogq64 (ymm22_2, ymm13_2, ymm26_2, table);
call vpternlogq64 (ymm22_3, ymm13_3, ymm26_3, table);
(* vmovdqa64 %ymm18,%ymm20                         #! PC = 0x5555555805cf *)
mov ymm20_0 ymm18_0;
mov ymm20_1 ymm18_1;
mov ymm20_2 ymm18_2;
mov ymm20_3 ymm18_3;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555805d5 *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm25,%ymm29                       #! PC = 0x5555555805e0 *)
rol ymm29_0 ymm25_0 0x1;
rol ymm29_1 ymm25_1 0x1;
rol ymm29_2 ymm25_2 0x1;
rol ymm29_3 ymm25_3 0x1;
(* vpternlogq $0x96,%ymm31,%ymm4,%ymm20            #! PC = 0x5555555805e7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm4_0, ymm31_0, table);
call vpternlogq64 (ymm20_1, ymm4_1, ymm31_1, table);
call vpternlogq64 (ymm20_2, ymm4_2, ymm31_2, table);
call vpternlogq64 (ymm20_3, ymm4_3, ymm31_3, table);
(* vpternlogq $0x96,%ymm24,%ymm17,%ymm20           #! PC = 0x5555555805ee *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm17_0, ymm24_0, table);
call vpternlogq64 (ymm20_1, ymm17_1, ymm24_1, table);
call vpternlogq64 (ymm20_2, ymm17_2, ymm24_2, table);
call vpternlogq64 (ymm20_3, ymm17_3, ymm24_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x5555555805f5 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0x35214dd0c27e8650; PC = 0x5555555805fc *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* mov    $0x8000808b,%esi                         #! PC = 0x555555580607 *)
mov rsi 0x8000808b@uint64;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x55555558060c *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580617 *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x88(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd960; Value = 0x78da365b3cca9972; PC = 0x55555558061e *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd960;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd968;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd970;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd978;
(* vpxor  0x48(%rsp),%ymm15,%ymm15                 #! EA = L0x7fffffffd920; Value = 0x896c554c379fe285; PC = 0x555555580629 *)
xor ymm15_0@uint64 ymm15_0 L0x7fffffffd920;
xor ymm15_1@uint64 ymm15_1 L0x7fffffffd928;
xor ymm15_2@uint64 ymm15_2 L0x7fffffffd930;
xor ymm15_3@uint64 ymm15_3 L0x7fffffffd938;
(* vpxorq %ymm22,%ymm31,%ymm31                     #! PC = 0x55555558062f *)
xor ymm31_0@uint64 ymm31_0 ymm22_0;
xor ymm31_1@uint64 ymm31_1 ymm22_1;
xor ymm31_2@uint64 ymm31_2 ymm22_2;
xor ymm31_3@uint64 ymm31_3 ymm22_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580635 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm20,%ymm1,%ymm1                       #! PC = 0x55555558063c *)
xor ymm1_0@uint64 ymm1_0 ymm20_0;
xor ymm1_1@uint64 ymm1_1 ymm20_1;
xor ymm1_2@uint64 ymm1_2 ymm20_2;
xor ymm1_3@uint64 ymm1_3 ymm20_3;
(* vpxorq %ymm21,%ymm29,%ymm29                     #! PC = 0x555555580642 *)
xor ymm29_0@uint64 ymm29_0 ymm21_0;
xor ymm29_1@uint64 ymm29_1 ymm21_1;
xor ymm29_2@uint64 ymm29_2 ymm21_2;
xor ymm29_3@uint64 ymm29_3 ymm21_3;
(* vpxor  %ymm15,%ymm8,%ymm8                       #! PC = 0x555555580648 *)
xor ymm8_0@uint64 ymm8_0 ymm15_0;
xor ymm8_1@uint64 ymm8_1 ymm15_1;
xor ymm8_2@uint64 ymm8_2 ymm15_2;
xor ymm8_3@uint64 ymm8_3 ymm15_3;
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x55555558064d *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vpxorq %ymm25,%ymm30,%ymm30                     #! PC = 0x555555580653 *)
xor ymm30_0@uint64 ymm30_0 ymm25_0;
xor ymm30_1@uint64 ymm30_1 ymm25_1;
xor ymm30_2@uint64 ymm30_2 ymm25_2;
xor ymm30_3@uint64 ymm30_3 ymm25_3;
(* vprorq $0x15,%ymm1,%ymm1                        #! PC = 0x555555580659 *)
ror ymm1_0 ymm1_0 0x15;
ror ymm1_1 ymm1_1 0x15;
ror ymm1_2 ymm1_2 0x15;
ror ymm1_3 ymm1_3 0x15;
(* vprolq $0x15,%ymm8,%ymm8                        #! PC = 0x555555580660 *)
rol ymm8_0 ymm8_0 0x15;
rol ymm8_1 ymm8_1 0x15;
rol ymm8_2 ymm8_2 0x15;
rol ymm8_3 ymm8_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x555555580667 *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxor  %ymm15,%ymm10,%ymm10                     #! PC = 0x55555558066e *)
xor ymm10_0@uint64 ymm10_0 ymm15_0;
xor ymm10_1@uint64 ymm10_1 ymm15_1;
xor ymm10_2@uint64 ymm10_2 ymm15_2;
xor ymm10_3@uint64 ymm10_3 ymm15_3;
(* vpxorq %ymm29,%ymm16,%ymm16                     #! PC = 0x555555580673 *)
xor ymm16_0@uint64 ymm16_0 ymm29_0;
xor ymm16_1@uint64 ymm16_1 ymm29_1;
xor ymm16_2@uint64 ymm16_2 ymm29_2;
xor ymm16_3@uint64 ymm16_3 ymm29_3;
(* vprolq $0x1c,%ymm10,%ymm10                      #! PC = 0x555555580679 *)
rol ymm10_0 ymm10_0 0x1c;
rol ymm10_1 ymm10_1 0x1c;
rol ymm10_2 ymm10_2 0x1c;
rol ymm10_3 ymm10_3 0x1c;
(* vprolq $0x14,%ymm16,%ymm16                      #! PC = 0x555555580680 *)
rol ymm16_0 ymm16_0 0x14;
rol ymm16_1 ymm16_1 0x14;
rol ymm16_2 ymm16_2 0x14;
rol ymm16_3 ymm16_3 0x14;
(* vpxorq %ymm30,%ymm13,%ymm13                     #! PC = 0x555555580687 *)
xor ymm13_0@uint64 ymm13_0 ymm30_0;
xor ymm13_1@uint64 ymm13_1 ymm30_1;
xor ymm13_2@uint64 ymm13_2 ymm30_2;
xor ymm13_3@uint64 ymm13_3 ymm30_3;
(* vpxorq %ymm22,%ymm18,%ymm18                     #! PC = 0x55555558068d *)
xor ymm18_0@uint64 ymm18_0 ymm22_0;
xor ymm18_1@uint64 ymm18_1 ymm22_1;
xor ymm18_2@uint64 ymm18_2 ymm22_2;
xor ymm18_3@uint64 ymm18_3 ymm22_3;
(* vpxorq %ymm20,%ymm6,%ymm6                       #! PC = 0x555555580693 *)
xor ymm6_0@uint64 ymm6_0 ymm20_0;
xor ymm6_1@uint64 ymm6_1 ymm20_1;
xor ymm6_2@uint64 ymm6_2 ymm20_2;
xor ymm6_3@uint64 ymm6_3 ymm20_3;
(* vpxorq %ymm22,%ymm17,%ymm17                     #! PC = 0x555555580699 *)
xor ymm17_0@uint64 ymm17_0 ymm22_0;
xor ymm17_1@uint64 ymm17_1 ymm22_1;
xor ymm17_2@uint64 ymm17_2 ymm22_2;
xor ymm17_3@uint64 ymm17_3 ymm22_3;
(* vpxorq %ymm20,%ymm12,%ymm12                     #! PC = 0x55555558069f *)
xor ymm12_0@uint64 ymm12_0 ymm20_0;
xor ymm12_1@uint64 ymm12_1 ymm20_1;
xor ymm12_2@uint64 ymm12_2 ymm20_2;
xor ymm12_3@uint64 ymm12_3 ymm20_3;
(* vprolq $0x1,%ymm17,%ymm17                       #! PC = 0x5555555806a5 *)
rol ymm17_0 ymm17_0 0x1;
rol ymm17_1 ymm17_1 0x1;
rol ymm17_2 ymm17_2 0x1;
rol ymm17_3 ymm17_3 0x1;
(* vprolq $0x6,%ymm12,%ymm12                       #! PC = 0x5555555806ac *)
rol ymm12_0 ymm12_0 0x6;
rol ymm12_1 ymm12_1 0x6;
rol ymm12_2 ymm12_2 0x6;
rol ymm12_3 ymm12_3 0x6;
(* vprolq $0x3,%ymm13,%ymm13                       #! PC = 0x5555555806b3 *)
rol ymm13_0 ymm13_0 0x3;
rol ymm13_1 ymm13_1 0x3;
rol ymm13_2 ymm13_2 0x3;
rol ymm13_3 ymm13_3 0x3;
(* vprorq $0x13,%ymm18,%ymm18                      #! PC = 0x5555555806ba *)
ror ymm18_0 ymm18_0 0x13;
ror ymm18_1 ymm18_1 0x13;
ror ymm18_2 ymm18_2 0x13;
ror ymm18_3 ymm18_3 0x13;
(* vprorq $0x3,%ymm6,%ymm6                         #! PC = 0x5555555806c1 *)
ror ymm6_0 ymm6_0 0x3;
ror ymm6_1 ymm6_1 0x3;
ror ymm6_2 ymm6_2 0x3;
ror ymm6_3 ymm6_3 0x3;
(* vpxorq %ymm30,%ymm23,%ymm23                     #! PC = 0x5555555806c8 *)
xor ymm23_0@uint64 ymm23_0 ymm30_0;
xor ymm23_1@uint64 ymm23_1 ymm30_1;
xor ymm23_2@uint64 ymm23_2 ymm30_2;
xor ymm23_3@uint64 ymm23_3 ymm30_3;
(* vpxor  %ymm15,%ymm2,%ymm2                       #! PC = 0x5555555806ce *)
xor ymm2_0@uint64 ymm2_0 ymm15_0;
xor ymm2_1@uint64 ymm2_1 ymm15_1;
xor ymm2_2@uint64 ymm2_2 ymm15_2;
xor ymm2_3@uint64 ymm2_3 ymm15_3;
(* vpxorq %ymm29,%ymm0,%ymm0                       #! PC = 0x5555555806d3 *)
xor ymm0_0@uint64 ymm0_0 ymm29_0;
xor ymm0_1@uint64 ymm0_1 ymm29_1;
xor ymm0_2@uint64 ymm0_2 ymm29_2;
xor ymm0_3@uint64 ymm0_3 ymm29_3;
(* vpxorq %ymm30,%ymm26,%ymm26                     #! PC = 0x5555555806d9 *)
xor ymm26_0@uint64 ymm26_0 ymm30_0;
xor ymm26_1@uint64 ymm26_1 ymm30_1;
xor ymm26_2@uint64 ymm26_2 ymm30_2;
xor ymm26_3@uint64 ymm26_3 ymm30_3;
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x5555555806df *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vprorq $0x1c,%ymm26,%ymm26                      #! PC = 0x5555555806e5 *)
ror ymm26_0 ymm26_0 0x1c;
ror ymm26_1 ymm26_1 0x1c;
ror ymm26_2 ymm26_2 0x1c;
ror ymm26_3 ymm26_3 0x1c;
(* vprolq $0x1b,%ymm11,%ymm11                      #! PC = 0x5555555806ec *)
rol ymm11_0 ymm11_0 0x1b;
rol ymm11_1 ymm11_1 0x1b;
rol ymm11_2 ymm11_2 0x1b;
rol ymm11_3 ymm11_3 0x1b;
(* vprolq $0x12,%ymm23,%ymm23                      #! PC = 0x5555555806f3 *)
rol ymm23_0 ymm23_0 0x12;
rol ymm23_1 ymm23_1 0x12;
rol ymm23_2 ymm23_2 0x12;
rol ymm23_3 ymm23_3 0x12;
(* vprolq $0x19,%ymm2,%ymm2                        #! PC = 0x5555555806fa *)
rol ymm2_0 ymm2_0 0x19;
rol ymm2_1 ymm2_1 0x19;
rol ymm2_2 ymm2_2 0x19;
rol ymm2_3 ymm2_3 0x19;
(* vprolq $0x8,%ymm0,%ymm0                         #! PC = 0x555555580701 *)
rol ymm0_0 ymm0_0 0x8;
rol ymm0_1 ymm0_1 0x8;
rol ymm0_2 ymm0_2 0x8;
rol ymm0_3 ymm0_3 0x8;
(* vpxorq %ymm22,%ymm4,%ymm4                       #! PC = 0x555555580708 *)
xor ymm4_0@uint64 ymm4_0 ymm22_0;
xor ymm4_1@uint64 ymm4_1 ymm22_1;
xor ymm4_2@uint64 ymm4_2 ymm22_2;
xor ymm4_3@uint64 ymm4_3 ymm22_3;
(* vpxorq %ymm20,%ymm5,%ymm5                       #! PC = 0x55555558070e *)
xor ymm5_0@uint64 ymm5_0 ymm20_0;
xor ymm5_1@uint64 ymm5_1 ymm20_1;
xor ymm5_2@uint64 ymm5_2 ymm20_2;
xor ymm5_3@uint64 ymm5_3 ymm20_3;
(* vpxor  %ymm15,%ymm7,%ymm7                       #! PC = 0x555555580714 *)
xor ymm7_0@uint64 ymm7_0 ymm15_0;
xor ymm7_1@uint64 ymm7_1 ymm15_1;
xor ymm7_2@uint64 ymm7_2 ymm15_2;
xor ymm7_3@uint64 ymm7_3 ymm15_3;
(* vpxorq %ymm28,%ymm30,%ymm28                     #! PC = 0x555555580719 *)
xor ymm28_0@uint64 ymm30_0 ymm28_0;
xor ymm28_1@uint64 ymm30_1 ymm28_1;
xor ymm28_2@uint64 ymm30_2 ymm28_2;
xor ymm28_3@uint64 ymm30_3 ymm28_3;
(* vprolq $0xa,%ymm4,%ymm4                         #! PC = 0x55555558071f *)
rol ymm4_0 ymm4_0 0xa;
rol ymm4_1 ymm4_1 0xa;
rol ymm4_2 ymm4_2 0xa;
rol ymm4_3 ymm4_3 0xa;
(* vprolq $0xf,%ymm5,%ymm5                         #! PC = 0x555555580726 *)
rol ymm5_0 ymm5_0 0xf;
rol ymm5_1 ymm5_1 0xf;
rol ymm5_2 ymm5_2 0xf;
rol ymm5_3 ymm5_3 0xf;
(* vprorq $0x8,%ymm7,%ymm7                         #! PC = 0x55555558072d *)
ror ymm7_0 ymm7_0 0x8;
ror ymm7_1 ymm7_1 0x8;
ror ymm7_2 ymm7_2 0x8;
ror ymm7_3 ymm7_3 0x8;
(* vmovdqa64 %ymm28,%ymm25                         #! PC = 0x555555580734 *)
mov ymm25_0 ymm28_0;
mov ymm25_1 ymm28_1;
mov ymm25_2 ymm28_2;
mov ymm25_3 ymm28_3;
(* vmovdqa64 %ymm31,%ymm21                         #! PC = 0x55555558073a *)
mov ymm21_0 ymm31_0;
mov ymm21_1 ymm31_1;
mov ymm21_2 ymm31_2;
mov ymm21_3 ymm31_3;
(* vpternlogq $0xd2,%ymm8,%ymm1,%ymm21             #! PC = 0x555555580740 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm1_0, ymm8_0, table);
call vpternlogq64 (ymm21_1, ymm1_1, ymm8_1, table);
call vpternlogq64 (ymm21_2, ymm1_2, ymm8_2, table);
call vpternlogq64 (ymm21_3, ymm1_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm31,%ymm25            #! PC = 0x555555580747 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm31_0, ymm1_0, table);
call vpternlogq64 (ymm25_1, ymm31_1, ymm1_1, table);
call vpternlogq64 (ymm25_2, ymm31_2, ymm1_2, table);
call vpternlogq64 (ymm25_3, ymm31_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm8,%ymm1              #! PC = 0x55555558074e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm8_0, ymm9_0, table);
call vpternlogq64 (ymm1_1, ymm8_1, ymm9_1, table);
call vpternlogq64 (ymm1_2, ymm8_2, ymm9_2, table);
call vpternlogq64 (ymm1_3, ymm8_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm9,%ymm8             #! PC = 0x555555580755 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm9_0, ymm28_0, table);
call vpternlogq64 (ymm8_1, ymm9_1, ymm28_1, table);
call vpternlogq64 (ymm8_2, ymm9_2, ymm28_2, table);
call vpternlogq64 (ymm8_3, ymm9_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm28,%ymm9            #! PC = 0x55555558075c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm28_0, ymm31_0, table);
call vpternlogq64 (ymm9_1, ymm28_1, ymm31_1, table);
call vpternlogq64 (ymm9_2, ymm28_2, ymm31_2, table);
call vpternlogq64 (ymm9_3, ymm28_3, ymm31_3, table);
(* vpbroadcastq %r8,%ymm28                         #! PC = 0x555555580763 *)
mov ymm28_0 r8;
mov ymm28_1 r8;
mov ymm28_2 r8;
mov ymm28_3 r8;
(* vpxorq %ymm28,%ymm25,%ymm25                     #! PC = 0x555555580769 *)
xor ymm25_0@uint64 ymm25_0 ymm28_0;
xor ymm25_1@uint64 ymm25_1 ymm28_1;
xor ymm25_2@uint64 ymm25_2 ymm28_2;
xor ymm25_3@uint64 ymm25_3 ymm28_3;
(* vmovdqa64 %ymm16,%ymm31                         #! PC = 0x55555558076f *)
mov ymm31_0 ymm16_0;
mov ymm31_1 ymm16_1;
mov ymm31_2 ymm16_2;
mov ymm31_3 ymm16_3;
(* vmovdqa64 %ymm10,%ymm28                         #! PC = 0x555555580775 *)
mov ymm28_0 ymm10_0;
mov ymm28_1 ymm10_1;
mov ymm28_2 ymm10_2;
mov ymm28_3 ymm10_3;
(* vpternlogq $0xd2,%ymm13,%ymm16,%ymm28           #! PC = 0x55555558077b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm16_0, ymm13_0, table);
call vpternlogq64 (ymm28_1, ymm16_1, ymm13_1, table);
call vpternlogq64 (ymm28_2, ymm16_2, ymm13_2, table);
call vpternlogq64 (ymm28_3, ymm16_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm13,%ymm31           #! PC = 0x555555580782 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm13_0, ymm18_0, table);
call vpternlogq64 (ymm31_1, ymm13_1, ymm18_1, table);
call vpternlogq64 (ymm31_2, ymm13_2, ymm18_2, table);
call vpternlogq64 (ymm31_3, ymm13_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm18,%ymm13            #! PC = 0x555555580789 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm18_0, ymm6_0, table);
call vpternlogq64 (ymm13_1, ymm18_1, ymm6_1, table);
call vpternlogq64 (ymm13_2, ymm18_2, ymm6_2, table);
call vpternlogq64 (ymm13_3, ymm18_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm6,%ymm18            #! PC = 0x555555580790 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm6_0, ymm10_0, table);
call vpternlogq64 (ymm18_1, ymm6_1, ymm10_1, table);
call vpternlogq64 (ymm18_2, ymm6_2, ymm10_2, table);
call vpternlogq64 (ymm18_3, ymm6_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm10,%ymm6            #! PC = 0x555555580797 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm10_0, ymm16_0, table);
call vpternlogq64 (ymm6_1, ymm10_1, ymm16_1, table);
call vpternlogq64 (ymm6_2, ymm10_2, ymm16_2, table);
call vpternlogq64 (ymm6_3, ymm10_3, ymm16_3, table);
(* vmovdqa64 %ymm17,%ymm16                         #! PC = 0x55555558079e *)
mov ymm16_0 ymm17_0;
mov ymm16_1 ymm17_1;
mov ymm16_2 ymm17_2;
mov ymm16_3 ymm17_3;
(* vmovdqa %ymm12,%ymm10                           #! PC = 0x5555555807a4 *)
mov ymm10_0 ymm12_0;
mov ymm10_1 ymm12_1;
mov ymm10_2 ymm12_2;
mov ymm10_3 ymm12_3;
(* vpternlogq $0xd2,%ymm2,%ymm12,%ymm16            #! PC = 0x5555555807a9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm12_0, ymm2_0, table);
call vpternlogq64 (ymm16_1, ymm12_1, ymm2_1, table);
call vpternlogq64 (ymm16_2, ymm12_2, ymm2_2, table);
call vpternlogq64 (ymm16_3, ymm12_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm0,%ymm2,%ymm10             #! PC = 0x5555555807b0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm0_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm0_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm0_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm0_3, table);
(* vpxorq %ymm20,%ymm14,%ymm14                     #! PC = 0x5555555807b7 *)
xor ymm14_0@uint64 ymm14_0 ymm20_0;
xor ymm14_1@uint64 ymm14_1 ymm20_1;
xor ymm14_2@uint64 ymm14_2 ymm20_2;
xor ymm14_3@uint64 ymm14_3 ymm20_3;
(* vpternlogq $0xd2,%ymm23,%ymm0,%ymm2             #! PC = 0x5555555807bd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm0_0, ymm23_0, table);
call vpternlogq64 (ymm2_1, ymm0_1, ymm23_1, table);
call vpternlogq64 (ymm2_2, ymm0_2, ymm23_2, table);
call vpternlogq64 (ymm2_3, ymm0_3, ymm23_3, table);
(* vpxorq %ymm15,%ymm19,%ymm19                     #! PC = 0x5555555807c4 *)
xor ymm19_0@uint64 ymm19_0 ymm15_0;
xor ymm19_1@uint64 ymm19_1 ymm15_1;
xor ymm19_2@uint64 ymm19_2 ymm15_2;
xor ymm19_3@uint64 ymm19_3 ymm15_3;
(* vpternlogq $0xd2,%ymm17,%ymm23,%ymm0            #! PC = 0x5555555807ca *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm23_0, ymm17_0, table);
call vpternlogq64 (ymm0_1, ymm23_1, ymm17_1, table);
call vpternlogq64 (ymm0_2, ymm23_2, ymm17_2, table);
call vpternlogq64 (ymm0_3, ymm23_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm17,%ymm23           #! PC = 0x5555555807d1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm17_0, ymm12_0, table);
call vpternlogq64 (ymm23_1, ymm17_1, ymm12_1, table);
call vpternlogq64 (ymm23_2, ymm17_2, ymm12_2, table);
call vpternlogq64 (ymm23_3, ymm17_3, ymm12_3, table);
(* vmovdqa %ymm11,%ymm12                           #! PC = 0x5555555807d8 *)
mov ymm12_0 ymm11_0;
mov ymm12_1 ymm11_1;
mov ymm12_2 ymm11_2;
mov ymm12_3 ymm11_3;
(* vmovdqa64 %ymm26,%ymm17                         #! PC = 0x5555555807dd *)
mov ymm17_0 ymm26_0;
mov ymm17_1 ymm26_1;
mov ymm17_2 ymm26_2;
mov ymm17_3 ymm26_3;
(* vprorq $0x2,%ymm14,%ymm20                       #! PC = 0x5555555807e3 *)
ror ymm20_0 ymm14_0 0x2;
ror ymm20_1 ymm14_1 0x2;
ror ymm20_2 ymm14_2 0x2;
ror ymm20_3 ymm14_3 0x2;
(* vprorq $0x9,%ymm19,%ymm19                       #! PC = 0x5555555807ea *)
ror ymm19_0 ymm19_0 0x9;
ror ymm19_1 ymm19_1 0x9;
ror ymm19_2 ymm19_2 0x9;
ror ymm19_3 ymm19_3 0x9;
(* vpternlogq $0xd2,%ymm4,%ymm26,%ymm12            #! PC = 0x5555555807f1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm26_0, ymm4_0, table);
call vpternlogq64 (ymm12_1, ymm26_1, ymm4_1, table);
call vpternlogq64 (ymm12_2, ymm26_2, ymm4_2, table);
call vpternlogq64 (ymm12_3, ymm26_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm4,%ymm17             #! PC = 0x5555555807f8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm4_0, ymm5_0, table);
call vpternlogq64 (ymm17_1, ymm4_1, ymm5_1, table);
call vpternlogq64 (ymm17_2, ymm4_2, ymm5_2, table);
call vpternlogq64 (ymm17_3, ymm4_3, ymm5_3, table);
(* vpxorq %ymm30,%ymm3,%ymm3                       #! PC = 0x5555555807ff *)
xor ymm3_0@uint64 ymm3_0 ymm30_0;
xor ymm3_1@uint64 ymm3_1 ymm30_1;
xor ymm3_2@uint64 ymm3_2 ymm30_2;
xor ymm3_3@uint64 ymm3_3 ymm30_3;
(* vpternlogq $0xd2,%ymm7,%ymm5,%ymm4              #! PC = 0x555555580805 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm5_0, ymm7_0, table);
call vpternlogq64 (ymm4_1, ymm5_1, ymm7_1, table);
call vpternlogq64 (ymm4_2, ymm5_2, ymm7_2, table);
call vpternlogq64 (ymm4_3, ymm5_3, ymm7_3, table);
(* vpxorq %ymm29,%ymm27,%ymm27                     #! PC = 0x55555558080c *)
xor ymm27_0@uint64 ymm27_0 ymm29_0;
xor ymm27_1@uint64 ymm27_1 ymm29_1;
xor ymm27_2@uint64 ymm27_2 ymm29_2;
xor ymm27_3@uint64 ymm27_3 ymm29_3;
(* vpternlogq $0xd2,%ymm11,%ymm7,%ymm5             #! PC = 0x555555580812 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm7_0, ymm11_0, table);
call vpternlogq64 (ymm5_1, ymm7_1, ymm11_1, table);
call vpternlogq64 (ymm5_2, ymm7_2, ymm11_2, table);
call vpternlogq64 (ymm5_3, ymm7_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm26,%ymm11,%ymm7            #! PC = 0x555555580819 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm11_0, ymm26_0, table);
call vpternlogq64 (ymm7_1, ymm11_1, ymm26_1, table);
call vpternlogq64 (ymm7_2, ymm11_2, ymm26_2, table);
call vpternlogq64 (ymm7_3, ymm11_3, ymm26_3, table);
(* vpxorq %ymm22,%ymm24,%ymm11                     #! PC = 0x555555580820 *)
xor ymm11_0@uint64 ymm24_0 ymm22_0;
xor ymm11_1@uint64 ymm24_1 ymm22_1;
xor ymm11_2@uint64 ymm24_2 ymm22_2;
xor ymm11_3@uint64 ymm24_3 ymm22_3;
(* vprorq $0x17,%ymm3,%ymm3                        #! PC = 0x555555580826 *)
ror ymm3_0 ymm3_0 0x17;
ror ymm3_1 ymm3_1 0x17;
ror ymm3_2 ymm3_2 0x17;
ror ymm3_3 ymm3_3 0x17;
(* vprolq $0x2,%ymm11,%ymm11                       #! PC = 0x55555558082d *)
rol ymm11_0 ymm11_0 0x2;
rol ymm11_1 ymm11_1 0x2;
rol ymm11_2 ymm11_2 0x2;
rol ymm11_3 ymm11_3 0x2;
(* vprorq $0x19,%ymm27,%ymm27                      #! PC = 0x555555580834 *)
ror ymm27_0 ymm27_0 0x19;
ror ymm27_1 ymm27_1 0x19;
ror ymm27_2 ymm27_2 0x19;
ror ymm27_3 ymm27_3 0x19;
(* vmovdqa64 %ymm20,%ymm14                         #! PC = 0x55555558083b *)
mov ymm14_0 ymm20_0;
mov ymm14_1 ymm20_1;
mov ymm14_2 ymm20_2;
mov ymm14_3 ymm20_3;
(* vmovdqa64 %ymm19,%ymm24                         #! PC = 0x555555580841 *)
mov ymm24_0 ymm19_0;
mov ymm24_1 ymm19_1;
mov ymm24_2 ymm19_2;
mov ymm24_3 ymm19_3;
(* vmovdqa %ymm5,%ymm15                            #! PC = 0x555555580847 *)
mov ymm15_0 ymm5_0;
mov ymm15_1 ymm5_1;
mov ymm15_2 ymm5_2;
mov ymm15_3 ymm5_3;
(* vpternlogq $0x96,%ymm0,%ymm8,%ymm15             #! PC = 0x55555558084b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm8_0, ymm0_0, table);
call vpternlogq64 (ymm15_1, ymm8_1, ymm0_1, table);
call vpternlogq64 (ymm15_2, ymm8_2, ymm0_2, table);
call vpternlogq64 (ymm15_3, ymm8_3, ymm0_3, table);
(* vmovdqa64 %ymm25,%ymm22                         #! PC = 0x555555580852 *)
mov ymm22_0 ymm25_0;
mov ymm22_1 ymm25_1;
mov ymm22_2 ymm25_2;
mov ymm22_3 ymm25_3;
(* vpternlogq $0xd2,%ymm3,%ymm27,%ymm24            #! PC = 0x555555580858 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm27_0, ymm3_0, table);
call vpternlogq64 (ymm24_1, ymm27_1, ymm3_1, table);
call vpternlogq64 (ymm24_2, ymm27_2, ymm3_2, table);
call vpternlogq64 (ymm24_3, ymm27_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm19,%ymm14           #! PC = 0x55555558085f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm19_0, ymm27_0, table);
call vpternlogq64 (ymm14_1, ymm19_1, ymm27_1, table);
call vpternlogq64 (ymm14_2, ymm19_2, ymm27_2, table);
call vpternlogq64 (ymm14_3, ymm19_3, ymm27_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm3,%ymm27            #! PC = 0x555555580866 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm3_0, ymm11_0, table);
call vpternlogq64 (ymm27_1, ymm3_1, ymm11_1, table);
call vpternlogq64 (ymm27_2, ymm3_2, ymm11_2, table);
call vpternlogq64 (ymm27_3, ymm3_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm11,%ymm3            #! PC = 0x55555558086d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm11_0, ymm20_0, table);
call vpternlogq64 (ymm3_1, ymm11_1, ymm20_1, table);
call vpternlogq64 (ymm3_2, ymm11_2, ymm20_2, table);
call vpternlogq64 (ymm3_3, ymm11_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm20,%ymm11           #! PC = 0x555555580874 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm20_0, ymm19_0, table);
call vpternlogq64 (ymm11_1, ymm20_1, ymm19_1, table);
call vpternlogq64 (ymm11_2, ymm20_2, ymm19_2, table);
call vpternlogq64 (ymm11_3, ymm20_3, ymm19_3, table);
(* vmovdqa64 %ymm2,%ymm19                          #! PC = 0x55555558087b *)
mov ymm19_0 ymm2_0;
mov ymm19_1 ymm2_1;
mov ymm19_2 ymm2_2;
mov ymm19_3 ymm2_3;
(* vpternlogq $0x96,%ymm13,%ymm27,%ymm19           #! PC = 0x555555580881 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm27_0, ymm13_0, table);
call vpternlogq64 (ymm19_1, ymm27_1, ymm13_1, table);
call vpternlogq64 (ymm19_2, ymm27_2, ymm13_2, table);
call vpternlogq64 (ymm19_3, ymm27_3, ymm13_3, table);
(* vpternlogq $0x96,%ymm1,%ymm4,%ymm19             #! PC = 0x555555580888 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm4_0, ymm1_0, table);
call vpternlogq64 (ymm19_1, ymm4_1, ymm1_1, table);
call vpternlogq64 (ymm19_2, ymm4_2, ymm1_2, table);
call vpternlogq64 (ymm19_3, ymm4_3, ymm1_3, table);
(* vprolq $0x1,%ymm19,%ymm29                       #! PC = 0x55555558088f *)
rol ymm29_0 ymm19_0 0x1;
rol ymm29_1 ymm19_1 0x1;
rol ymm29_2 ymm19_2 0x1;
rol ymm29_3 ymm19_3 0x1;
(* vpternlogq $0x96,%ymm18,%ymm3,%ymm15            #! PC = 0x555555580896 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm15_0, ymm3_0, ymm18_0, table);
call vpternlogq64 (ymm15_1, ymm3_1, ymm18_1, table);
call vpternlogq64 (ymm15_2, ymm3_2, ymm18_2, table);
call vpternlogq64 (ymm15_3, ymm3_3, ymm18_3, table);
(* vmovdqa64 %ymm11,%ymm26                         #! PC = 0x55555558089d *)
mov ymm26_0 ymm11_0;
mov ymm26_1 ymm11_1;
mov ymm26_2 ymm11_2;
mov ymm26_3 ymm11_3;
(* vpternlogq $0x96,%ymm7,%ymm6,%ymm26             #! PC = 0x5555555808a3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm6_0, ymm7_0, table);
call vpternlogq64 (ymm26_1, ymm6_1, ymm7_1, table);
call vpternlogq64 (ymm26_2, ymm6_2, ymm7_2, table);
call vpternlogq64 (ymm26_3, ymm6_3, ymm7_3, table);
(* vpternlogq $0x96,%ymm23,%ymm9,%ymm26            #! PC = 0x5555555808aa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm9_0, ymm23_0, table);
call vpternlogq64 (ymm26_1, ymm9_1, ymm23_1, table);
call vpternlogq64 (ymm26_2, ymm9_2, ymm23_2, table);
call vpternlogq64 (ymm26_3, ymm9_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm14,%ymm16,%ymm22           #! PC = 0x5555555808b1 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm16_0, ymm14_0, table);
call vpternlogq64 (ymm22_1, ymm16_1, ymm14_1, table);
call vpternlogq64 (ymm22_2, ymm16_2, ymm14_2, table);
call vpternlogq64 (ymm22_3, ymm16_3, ymm14_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555808b8 *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm15,%ymm29                       #! PC = 0x5555555808c3 *)
rol ymm29_0 ymm15_0 0x1;
rol ymm29_1 ymm15_1 0x1;
rol ymm29_2 ymm15_2 0x1;
rol ymm29_3 ymm15_3 0x1;
(* vpternlogq $0x96,%ymm12,%ymm28,%ymm22           #! PC = 0x5555555808ca *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm28_0, ymm12_0, table);
call vpternlogq64 (ymm22_1, ymm28_1, ymm12_1, table);
call vpternlogq64 (ymm22_2, ymm28_2, ymm12_2, table);
call vpternlogq64 (ymm22_3, ymm28_3, ymm12_3, table);
(* vmovdqa64 %ymm31,%ymm20                         #! PC = 0x5555555808d1 *)
mov ymm20_0 ymm31_0;
mov ymm20_1 ymm31_1;
mov ymm20_2 ymm31_2;
mov ymm20_3 ymm31_3;
(* vpternlogq $0x96,%ymm21,%ymm17,%ymm20           #! PC = 0x5555555808d7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm17_0, ymm21_0, table);
call vpternlogq64 (ymm20_1, ymm17_1, ymm21_1, table);
call vpternlogq64 (ymm20_2, ymm17_2, ymm21_2, table);
call vpternlogq64 (ymm20_3, ymm17_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm24,%ymm10,%ymm20           #! PC = 0x5555555808de *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm10_0, ymm24_0, table);
call vpternlogq64 (ymm20_1, ymm10_1, ymm24_1, table);
call vpternlogq64 (ymm20_2, ymm10_2, ymm24_2, table);
call vpternlogq64 (ymm20_3, ymm10_3, ymm24_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x5555555808e5 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555808ec *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm26,%ymm29                       #! PC = 0x5555555808f7 *)
rol ymm29_0 ymm26_0 0x1;
rol ymm29_1 ymm26_1 0x1;
rol ymm29_2 ymm26_2 0x1;
rol ymm29_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0xaa5b763c38ba5bca; PC = 0x5555555808fe *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* movabs $0x800000000000008b,%rdi                 #! PC = 0x555555580909 *)
mov rdi 0x800000000000008b@uint64;
(* vpxorq %ymm20,%ymm2,%ymm2                       #! PC = 0x555555580913 *)
xor ymm2_0@uint64 ymm2_0 ymm20_0;
xor ymm2_1@uint64 ymm2_1 ymm20_1;
xor ymm2_2@uint64 ymm2_2 ymm20_2;
xor ymm2_3@uint64 ymm2_3 ymm20_3;
(* vpxorq %ymm26,%ymm30,%ymm30                     #! PC = 0x555555580919 *)
xor ymm30_0@uint64 ymm30_0 ymm26_0;
xor ymm30_1@uint64 ymm30_1 ymm26_1;
xor ymm30_2@uint64 ymm30_2 ymm26_2;
xor ymm30_3@uint64 ymm30_3 ymm26_3;
(* vprorq $0x15,%ymm2,%ymm2                        #! PC = 0x55555558091f *)
ror ymm2_0 ymm2_0 0x15;
ror ymm2_1 ymm2_1 0x15;
ror ymm2_2 ymm2_2 0x15;
ror ymm2_3 ymm2_3 0x15;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555580926 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580931 *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x88(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd960; Value = 0x22f63608c9dfa6a8; PC = 0x555555580938 *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd960;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd968;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd970;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm19,%ymm19                 #! EA = L0x7fffffffd920; Value = 0xcf9331b83c6245be; PC = 0x555555580943 *)
xor ymm19_0@uint64 ymm19_0 L0x7fffffffd920;
xor ymm19_1@uint64 ymm19_1 L0x7fffffffd928;
xor ymm19_2@uint64 ymm19_2 L0x7fffffffd930;
xor ymm19_3@uint64 ymm19_3 L0x7fffffffd938;
(* vpxorq %ymm22,%ymm31,%ymm31                     #! PC = 0x55555558094e *)
xor ymm31_0@uint64 ymm31_0 ymm22_0;
xor ymm31_1@uint64 ymm31_1 ymm22_1;
xor ymm31_2@uint64 ymm31_2 ymm22_2;
xor ymm31_3@uint64 ymm31_3 ymm22_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580954 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm19,%ymm5,%ymm5                       #! PC = 0x55555558095b *)
xor ymm5_0@uint64 ymm5_0 ymm19_0;
xor ymm5_1@uint64 ymm5_1 ymm19_1;
xor ymm5_2@uint64 ymm5_2 ymm19_2;
xor ymm5_3@uint64 ymm5_3 ymm19_3;
(* vpxorq %ymm15,%ymm29,%ymm29                     #! PC = 0x555555580961 *)
xor ymm29_0@uint64 ymm29_0 ymm15_0;
xor ymm29_1@uint64 ymm29_1 ymm15_1;
xor ymm29_2@uint64 ymm29_2 ymm15_2;
xor ymm29_3@uint64 ymm29_3 ymm15_3;
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x555555580967 *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vprolq $0x15,%ymm5,%ymm5                        #! PC = 0x55555558096d *)
rol ymm5_0 ymm5_0 0x15;
rol ymm5_1 ymm5_1 0x15;
rol ymm5_2 ymm5_2 0x15;
rol ymm5_3 ymm5_3 0x15;
(* vprolq $0xe,%ymm11,%ymm11                       #! PC = 0x555555580974 *)
rol ymm11_0 ymm11_0 0xe;
rol ymm11_1 ymm11_1 0xe;
rol ymm11_2 ymm11_2 0xe;
rol ymm11_3 ymm11_3 0xe;
(* vpxorq %ymm19,%ymm8,%ymm8                       #! PC = 0x55555558097b *)
xor ymm8_0@uint64 ymm8_0 ymm19_0;
xor ymm8_1@uint64 ymm8_1 ymm19_1;
xor ymm8_2@uint64 ymm8_2 ymm19_2;
xor ymm8_3@uint64 ymm8_3 ymm19_3;
(* vpxorq %ymm29,%ymm6,%ymm6                       #! PC = 0x555555580981 *)
xor ymm6_0@uint64 ymm6_0 ymm29_0;
xor ymm6_1@uint64 ymm6_1 ymm29_1;
xor ymm6_2@uint64 ymm6_2 ymm29_2;
xor ymm6_3@uint64 ymm6_3 ymm29_3;
(* vprolq $0x1c,%ymm8,%ymm8                        #! PC = 0x555555580987 *)
rol ymm8_0 ymm8_0 0x1c;
rol ymm8_1 ymm8_1 0x1c;
rol ymm8_2 ymm8_2 0x1c;
rol ymm8_3 ymm8_3 0x1c;
(* vprolq $0x14,%ymm6,%ymm6                        #! PC = 0x55555558098e *)
rol ymm6_0 ymm6_0 0x14;
rol ymm6_1 ymm6_1 0x14;
rol ymm6_2 ymm6_2 0x14;
rol ymm6_3 ymm6_3 0x14;
(* vpxorq %ymm30,%ymm16,%ymm16                     #! PC = 0x555555580995 *)
xor ymm16_0@uint64 ymm16_0 ymm30_0;
xor ymm16_1@uint64 ymm16_1 ymm30_1;
xor ymm16_2@uint64 ymm16_2 ymm30_2;
xor ymm16_3@uint64 ymm16_3 ymm30_3;
(* vpxorq %ymm22,%ymm17,%ymm17                     #! PC = 0x55555558099b *)
xor ymm17_0@uint64 ymm17_0 ymm22_0;
xor ymm17_1@uint64 ymm17_1 ymm22_1;
xor ymm17_2@uint64 ymm17_2 ymm22_2;
xor ymm17_3@uint64 ymm17_3 ymm22_3;
(* vpxorq %ymm20,%ymm27,%ymm27                     #! PC = 0x5555555809a1 *)
xor ymm27_0@uint64 ymm27_0 ymm20_0;
xor ymm27_1@uint64 ymm27_1 ymm20_1;
xor ymm27_2@uint64 ymm27_2 ymm20_2;
xor ymm27_3@uint64 ymm27_3 ymm20_3;
(* vpxorq %ymm22,%ymm21,%ymm21                     #! PC = 0x5555555809a7 *)
xor ymm21_0@uint64 ymm21_0 ymm22_0;
xor ymm21_1@uint64 ymm21_1 ymm22_1;
xor ymm21_2@uint64 ymm21_2 ymm22_2;
xor ymm21_3@uint64 ymm21_3 ymm22_3;
(* vpxorq %ymm20,%ymm13,%ymm13                     #! PC = 0x5555555809ad *)
xor ymm13_0@uint64 ymm13_0 ymm20_0;
xor ymm13_1@uint64 ymm13_1 ymm20_1;
xor ymm13_2@uint64 ymm13_2 ymm20_2;
xor ymm13_3@uint64 ymm13_3 ymm20_3;
(* vprolq $0x1,%ymm21,%ymm21                       #! PC = 0x5555555809b3 *)
rol ymm21_0 ymm21_0 0x1;
rol ymm21_1 ymm21_1 0x1;
rol ymm21_2 ymm21_2 0x1;
rol ymm21_3 ymm21_3 0x1;
(* vprolq $0x6,%ymm13,%ymm13                       #! PC = 0x5555555809ba *)
rol ymm13_0 ymm13_0 0x6;
rol ymm13_1 ymm13_1 0x6;
rol ymm13_2 ymm13_2 0x6;
rol ymm13_3 ymm13_3 0x6;
(* vprolq $0x3,%ymm16,%ymm16                       #! PC = 0x5555555809c1 *)
rol ymm16_0 ymm16_0 0x3;
rol ymm16_1 ymm16_1 0x3;
rol ymm16_2 ymm16_2 0x3;
rol ymm16_3 ymm16_3 0x3;
(* vprorq $0x13,%ymm17,%ymm17                      #! PC = 0x5555555809c8 *)
ror ymm17_0 ymm17_0 0x13;
ror ymm17_1 ymm17_1 0x13;
ror ymm17_2 ymm17_2 0x13;
ror ymm17_3 ymm17_3 0x13;
(* vprorq $0x3,%ymm27,%ymm27                       #! PC = 0x5555555809cf *)
ror ymm27_0 ymm27_0 0x3;
ror ymm27_1 ymm27_1 0x3;
ror ymm27_2 ymm27_2 0x3;
ror ymm27_3 ymm27_3 0x3;
(* vpxorq %ymm30,%ymm14,%ymm14                     #! PC = 0x5555555809d6 *)
xor ymm14_0@uint64 ymm14_0 ymm30_0;
xor ymm14_1@uint64 ymm14_1 ymm30_1;
xor ymm14_2@uint64 ymm14_2 ymm30_2;
xor ymm14_3@uint64 ymm14_3 ymm30_3;
(* vpxorq %ymm19,%ymm0,%ymm0                       #! PC = 0x5555555809dc *)
xor ymm0_0@uint64 ymm0_0 ymm19_0;
xor ymm0_1@uint64 ymm0_1 ymm19_1;
xor ymm0_2@uint64 ymm0_2 ymm19_2;
xor ymm0_3@uint64 ymm0_3 ymm19_3;
(* vpxorq %ymm29,%ymm7,%ymm7                       #! PC = 0x5555555809e2 *)
xor ymm7_0@uint64 ymm7_0 ymm29_0;
xor ymm7_1@uint64 ymm7_1 ymm29_1;
xor ymm7_2@uint64 ymm7_2 ymm29_2;
xor ymm7_3@uint64 ymm7_3 ymm29_3;
(* vpxorq %ymm30,%ymm28,%ymm28                     #! PC = 0x5555555809e8 *)
xor ymm28_0@uint64 ymm28_0 ymm30_0;
xor ymm28_1@uint64 ymm28_1 ymm30_1;
xor ymm28_2@uint64 ymm28_2 ymm30_2;
xor ymm28_3@uint64 ymm28_3 ymm30_3;
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x5555555809ee *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vprorq $0x1c,%ymm28,%ymm28                      #! PC = 0x5555555809f4 *)
ror ymm28_0 ymm28_0 0x1c;
ror ymm28_1 ymm28_1 0x1c;
ror ymm28_2 ymm28_2 0x1c;
ror ymm28_3 ymm28_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x5555555809fb *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm14,%ymm14                      #! PC = 0x555555580a02 *)
rol ymm14_0 ymm14_0 0x12;
rol ymm14_1 ymm14_1 0x12;
rol ymm14_2 ymm14_2 0x12;
rol ymm14_3 ymm14_3 0x12;
(* vprolq $0x19,%ymm0,%ymm0                        #! PC = 0x555555580a09 *)
rol ymm0_0 ymm0_0 0x19;
rol ymm0_1 ymm0_1 0x19;
rol ymm0_2 ymm0_2 0x19;
rol ymm0_3 ymm0_3 0x19;
(* vprolq $0x8,%ymm7,%ymm7                         #! PC = 0x555555580a10 *)
rol ymm7_0 ymm7_0 0x8;
rol ymm7_1 ymm7_1 0x8;
rol ymm7_2 ymm7_2 0x8;
rol ymm7_3 ymm7_3 0x8;
(* vpxorq %ymm22,%ymm10,%ymm10                     #! PC = 0x555555580a17 *)
xor ymm10_0@uint64 ymm10_0 ymm22_0;
xor ymm10_1@uint64 ymm10_1 ymm22_1;
xor ymm10_2@uint64 ymm10_2 ymm22_2;
xor ymm10_3@uint64 ymm10_3 ymm22_3;
(* vpxorq %ymm20,%ymm4,%ymm4                       #! PC = 0x555555580a1d *)
xor ymm4_0@uint64 ymm4_0 ymm20_0;
xor ymm4_1@uint64 ymm4_1 ymm20_1;
xor ymm4_2@uint64 ymm4_2 ymm20_2;
xor ymm4_3@uint64 ymm4_3 ymm20_3;
(* vpxorq %ymm19,%ymm3,%ymm3                       #! PC = 0x555555580a23 *)
xor ymm3_0@uint64 ymm3_0 ymm19_0;
xor ymm3_1@uint64 ymm3_1 ymm19_1;
xor ymm3_2@uint64 ymm3_2 ymm19_2;
xor ymm3_3@uint64 ymm3_3 ymm19_3;
(* vpxorq %ymm25,%ymm30,%ymm25                     #! PC = 0x555555580a29 *)
xor ymm25_0@uint64 ymm30_0 ymm25_0;
xor ymm25_1@uint64 ymm30_1 ymm25_1;
xor ymm25_2@uint64 ymm30_2 ymm25_2;
xor ymm25_3@uint64 ymm30_3 ymm25_3;
(* vprolq $0xa,%ymm10,%ymm10                       #! PC = 0x555555580a2f *)
rol ymm10_0 ymm10_0 0xa;
rol ymm10_1 ymm10_1 0xa;
rol ymm10_2 ymm10_2 0xa;
rol ymm10_3 ymm10_3 0xa;
(* vprolq $0xf,%ymm4,%ymm4                         #! PC = 0x555555580a36 *)
rol ymm4_0 ymm4_0 0xf;
rol ymm4_1 ymm4_1 0xf;
rol ymm4_2 ymm4_2 0xf;
rol ymm4_3 ymm4_3 0xf;
(* vprorq $0x8,%ymm3,%ymm3                         #! PC = 0x555555580a3d *)
ror ymm3_0 ymm3_0 0x8;
ror ymm3_1 ymm3_1 0x8;
ror ymm3_2 ymm3_2 0x8;
ror ymm3_3 ymm3_3 0x8;
(* vmovdqa64 %ymm25,%ymm15                         #! PC = 0x555555580a44 *)
mov ymm15_0 ymm25_0;
mov ymm15_1 ymm25_1;
mov ymm15_2 ymm25_2;
mov ymm15_3 ymm25_3;
(* vmovdqa64 %ymm31,%ymm26                         #! PC = 0x555555580a4a *)
mov ymm26_0 ymm31_0;
mov ymm26_1 ymm31_1;
mov ymm26_2 ymm31_2;
mov ymm26_3 ymm31_3;
(* vpternlogq $0xd2,%ymm5,%ymm2,%ymm26             #! PC = 0x555555580a50 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm2_0, ymm5_0, table);
call vpternlogq64 (ymm26_1, ymm2_1, ymm5_1, table);
call vpternlogq64 (ymm26_2, ymm2_2, ymm5_2, table);
call vpternlogq64 (ymm26_3, ymm2_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm31,%ymm15            #! PC = 0x555555580a57 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm31_0, ymm2_0, table);
call vpternlogq64 (ymm15_1, ymm31_1, ymm2_1, table);
call vpternlogq64 (ymm15_2, ymm31_2, ymm2_2, table);
call vpternlogq64 (ymm15_3, ymm31_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm5,%ymm2             #! PC = 0x555555580a5e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm5_0, ymm11_0, table);
call vpternlogq64 (ymm2_1, ymm5_1, ymm11_1, table);
call vpternlogq64 (ymm2_2, ymm5_2, ymm11_2, table);
call vpternlogq64 (ymm2_3, ymm5_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm11,%ymm5            #! PC = 0x555555580a65 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm11_0, ymm25_0, table);
call vpternlogq64 (ymm5_1, ymm11_1, ymm25_1, table);
call vpternlogq64 (ymm5_2, ymm11_2, ymm25_2, table);
call vpternlogq64 (ymm5_3, ymm11_3, ymm25_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm25,%ymm11           #! PC = 0x555555580a6c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm25_0, ymm31_0, table);
call vpternlogq64 (ymm11_1, ymm25_1, ymm31_1, table);
call vpternlogq64 (ymm11_2, ymm25_2, ymm31_2, table);
call vpternlogq64 (ymm11_3, ymm25_3, ymm31_3, table);
(* vpbroadcastq %r9,%ymm25                         #! PC = 0x555555580a73 *)
mov ymm25_0 r9;
mov ymm25_1 r9;
mov ymm25_2 r9;
mov ymm25_3 r9;
(* vpxorq %ymm25,%ymm15,%ymm15                     #! PC = 0x555555580a79 *)
xor ymm15_0@uint64 ymm15_0 ymm25_0;
xor ymm15_1@uint64 ymm15_1 ymm25_1;
xor ymm15_2@uint64 ymm15_2 ymm25_2;
xor ymm15_3@uint64 ymm15_3 ymm25_3;
(* vmovdqa64 %ymm6,%ymm31                          #! PC = 0x555555580a7f *)
mov ymm31_0 ymm6_0;
mov ymm31_1 ymm6_1;
mov ymm31_2 ymm6_2;
mov ymm31_3 ymm6_3;
(* vmovdqa64 %ymm8,%ymm25                          #! PC = 0x555555580a85 *)
mov ymm25_0 ymm8_0;
mov ymm25_1 ymm8_1;
mov ymm25_2 ymm8_2;
mov ymm25_3 ymm8_3;
(* vpternlogq $0xd2,%ymm16,%ymm6,%ymm25            #! PC = 0x555555580a8b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm6_0, ymm16_0, table);
call vpternlogq64 (ymm25_1, ymm6_1, ymm16_1, table);
call vpternlogq64 (ymm25_2, ymm6_2, ymm16_2, table);
call vpternlogq64 (ymm25_3, ymm6_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm16,%ymm31           #! PC = 0x555555580a92 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm16_0, ymm17_0, table);
call vpternlogq64 (ymm31_1, ymm16_1, ymm17_1, table);
call vpternlogq64 (ymm31_2, ymm16_2, ymm17_2, table);
call vpternlogq64 (ymm31_3, ymm16_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm17,%ymm16           #! PC = 0x555555580a99 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm17_0, ymm27_0, table);
call vpternlogq64 (ymm16_1, ymm17_1, ymm27_1, table);
call vpternlogq64 (ymm16_2, ymm17_2, ymm27_2, table);
call vpternlogq64 (ymm16_3, ymm17_3, ymm27_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm27,%ymm17            #! PC = 0x555555580aa0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm27_0, ymm8_0, table);
call vpternlogq64 (ymm17_1, ymm27_1, ymm8_1, table);
call vpternlogq64 (ymm17_2, ymm27_2, ymm8_2, table);
call vpternlogq64 (ymm17_3, ymm27_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm8,%ymm27             #! PC = 0x555555580aa7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm8_0, ymm6_0, table);
call vpternlogq64 (ymm27_1, ymm8_1, ymm6_1, table);
call vpternlogq64 (ymm27_2, ymm8_2, ymm6_2, table);
call vpternlogq64 (ymm27_3, ymm8_3, ymm6_3, table);
(* vmovdqa64 %ymm21,%ymm6                          #! PC = 0x555555580aae *)
mov ymm6_0 ymm21_0;
mov ymm6_1 ymm21_1;
mov ymm6_2 ymm21_2;
mov ymm6_3 ymm21_3;
(* vmovdqa %ymm13,%ymm8                            #! PC = 0x555555580ab4 *)
mov ymm8_0 ymm13_0;
mov ymm8_1 ymm13_1;
mov ymm8_2 ymm13_2;
mov ymm8_3 ymm13_3;
(* vpternlogq $0xd2,%ymm0,%ymm13,%ymm6             #! PC = 0x555555580ab9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm13_0, ymm0_0, table);
call vpternlogq64 (ymm6_1, ymm13_1, ymm0_1, table);
call vpternlogq64 (ymm6_2, ymm13_2, ymm0_2, table);
call vpternlogq64 (ymm6_3, ymm13_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm0,%ymm8              #! PC = 0x555555580ac0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm0_0, ymm7_0, table);
call vpternlogq64 (ymm8_1, ymm0_1, ymm7_1, table);
call vpternlogq64 (ymm8_2, ymm0_2, ymm7_2, table);
call vpternlogq64 (ymm8_3, ymm0_3, ymm7_3, table);
(* vpxorq %ymm20,%ymm1,%ymm1                       #! PC = 0x555555580ac7 *)
xor ymm1_0@uint64 ymm1_0 ymm20_0;
xor ymm1_1@uint64 ymm1_1 ymm20_1;
xor ymm1_2@uint64 ymm1_2 ymm20_2;
xor ymm1_3@uint64 ymm1_3 ymm20_3;
(* vpternlogq $0xd2,%ymm14,%ymm7,%ymm0             #! PC = 0x555555580acd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm7_0, ymm14_0, table);
call vpternlogq64 (ymm0_1, ymm7_1, ymm14_1, table);
call vpternlogq64 (ymm0_2, ymm7_2, ymm14_2, table);
call vpternlogq64 (ymm0_3, ymm7_3, ymm14_3, table);
(* vpxorq %ymm19,%ymm18,%ymm18                     #! PC = 0x555555580ad4 *)
xor ymm18_0@uint64 ymm18_0 ymm19_0;
xor ymm18_1@uint64 ymm18_1 ymm19_1;
xor ymm18_2@uint64 ymm18_2 ymm19_2;
xor ymm18_3@uint64 ymm18_3 ymm19_3;
(* vpternlogq $0xd2,%ymm21,%ymm14,%ymm7            #! PC = 0x555555580ada *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm14_0, ymm21_0, table);
call vpternlogq64 (ymm7_1, ymm14_1, ymm21_1, table);
call vpternlogq64 (ymm7_2, ymm14_2, ymm21_2, table);
call vpternlogq64 (ymm7_3, ymm14_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm21,%ymm14           #! PC = 0x555555580ae1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm21_0, ymm13_0, table);
call vpternlogq64 (ymm14_1, ymm21_1, ymm13_1, table);
call vpternlogq64 (ymm14_2, ymm21_2, ymm13_2, table);
call vpternlogq64 (ymm14_3, ymm21_3, ymm13_3, table);
(* vmovdqa64 %ymm9,%ymm21                          #! PC = 0x555555580ae8 *)
mov ymm21_0 ymm9_0;
mov ymm21_1 ymm9_1;
mov ymm21_2 ymm9_2;
mov ymm21_3 ymm9_3;
(* vmovdqa64 %ymm28,%ymm13                         #! PC = 0x555555580aee *)
mov ymm13_0 ymm28_0;
mov ymm13_1 ymm28_1;
mov ymm13_2 ymm28_2;
mov ymm13_3 ymm28_3;
(* vprorq $0x2,%ymm1,%ymm1                         #! PC = 0x555555580af4 *)
ror ymm1_0 ymm1_0 0x2;
ror ymm1_1 ymm1_1 0x2;
ror ymm1_2 ymm1_2 0x2;
ror ymm1_3 ymm1_3 0x2;
(* vprorq $0x9,%ymm18,%ymm18                       #! PC = 0x555555580afb *)
ror ymm18_0 ymm18_0 0x9;
ror ymm18_1 ymm18_1 0x9;
ror ymm18_2 ymm18_2 0x9;
ror ymm18_3 ymm18_3 0x9;
(* vpternlogq $0xd2,%ymm10,%ymm28,%ymm21           #! PC = 0x555555580b02 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm28_0, ymm10_0, table);
call vpternlogq64 (ymm21_1, ymm28_1, ymm10_1, table);
call vpternlogq64 (ymm21_2, ymm28_2, ymm10_2, table);
call vpternlogq64 (ymm21_3, ymm28_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm10,%ymm13            #! PC = 0x555555580b09 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm10_0, ymm4_0, table);
call vpternlogq64 (ymm13_1, ymm10_1, ymm4_1, table);
call vpternlogq64 (ymm13_2, ymm10_2, ymm4_2, table);
call vpternlogq64 (ymm13_3, ymm10_3, ymm4_3, table);
(* vpxorq %ymm30,%ymm12,%ymm12                     #! PC = 0x555555580b10 *)
xor ymm12_0@uint64 ymm12_0 ymm30_0;
xor ymm12_1@uint64 ymm12_1 ymm30_1;
xor ymm12_2@uint64 ymm12_2 ymm30_2;
xor ymm12_3@uint64 ymm12_3 ymm30_3;
(* vpternlogq $0xd2,%ymm3,%ymm4,%ymm10             #! PC = 0x555555580b16 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm4_0, ymm3_0, table);
call vpternlogq64 (ymm10_1, ymm4_1, ymm3_1, table);
call vpternlogq64 (ymm10_2, ymm4_2, ymm3_2, table);
call vpternlogq64 (ymm10_3, ymm4_3, ymm3_3, table);
(* vpxorq %ymm29,%ymm23,%ymm23                     #! PC = 0x555555580b1d *)
xor ymm23_0@uint64 ymm23_0 ymm29_0;
xor ymm23_1@uint64 ymm23_1 ymm29_1;
xor ymm23_2@uint64 ymm23_2 ymm29_2;
xor ymm23_3@uint64 ymm23_3 ymm29_3;
(* vpternlogq $0xd2,%ymm9,%ymm3,%ymm4              #! PC = 0x555555580b23 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm3_0, ymm9_0, table);
call vpternlogq64 (ymm4_1, ymm3_1, ymm9_1, table);
call vpternlogq64 (ymm4_2, ymm3_2, ymm9_2, table);
call vpternlogq64 (ymm4_3, ymm3_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm9,%ymm3             #! PC = 0x555555580b2a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm9_0, ymm28_0, table);
call vpternlogq64 (ymm3_1, ymm9_1, ymm28_1, table);
call vpternlogq64 (ymm3_2, ymm9_2, ymm28_2, table);
call vpternlogq64 (ymm3_3, ymm9_3, ymm28_3, table);
(* vpxorq %ymm22,%ymm24,%ymm9                      #! PC = 0x555555580b31 *)
xor ymm9_0@uint64 ymm24_0 ymm22_0;
xor ymm9_1@uint64 ymm24_1 ymm22_1;
xor ymm9_2@uint64 ymm24_2 ymm22_2;
xor ymm9_3@uint64 ymm24_3 ymm22_3;
(* vprorq $0x17,%ymm12,%ymm12                      #! PC = 0x555555580b37 *)
ror ymm12_0 ymm12_0 0x17;
ror ymm12_1 ymm12_1 0x17;
ror ymm12_2 ymm12_2 0x17;
ror ymm12_3 ymm12_3 0x17;
(* vprolq $0x2,%ymm9,%ymm9                         #! PC = 0x555555580b3e *)
rol ymm9_0 ymm9_0 0x2;
rol ymm9_1 ymm9_1 0x2;
rol ymm9_2 ymm9_2 0x2;
rol ymm9_3 ymm9_3 0x2;
(* vprorq $0x19,%ymm23,%ymm23                      #! PC = 0x555555580b45 *)
ror ymm23_0 ymm23_0 0x19;
ror ymm23_1 ymm23_1 0x19;
ror ymm23_2 ymm23_2 0x19;
ror ymm23_3 ymm23_3 0x19;
(* vmovdqa64 %ymm1,%ymm28                          #! PC = 0x555555580b4c *)
mov ymm28_0 ymm1_0;
mov ymm28_1 ymm1_1;
mov ymm28_2 ymm1_2;
mov ymm28_3 ymm1_3;
(* vmovdqa64 %ymm18,%ymm24                         #! PC = 0x555555580b52 *)
mov ymm24_0 ymm18_0;
mov ymm24_1 ymm18_1;
mov ymm24_2 ymm18_2;
mov ymm24_3 ymm18_3;
(* vmovdqa64 %ymm2,%ymm19                          #! PC = 0x555555580b58 *)
mov ymm19_0 ymm2_0;
mov ymm19_1 ymm2_1;
mov ymm19_2 ymm2_2;
mov ymm19_3 ymm2_3;
(* vpternlogq $0x96,%ymm0,%ymm16,%ymm19            #! PC = 0x555555580b5e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm16_0, ymm0_0, table);
call vpternlogq64 (ymm19_1, ymm16_1, ymm0_1, table);
call vpternlogq64 (ymm19_2, ymm16_2, ymm0_2, table);
call vpternlogq64 (ymm19_3, ymm16_3, ymm0_3, table);
(* vmovdqa64 %ymm15,%ymm22                         #! PC = 0x555555580b65 *)
mov ymm22_0 ymm15_0;
mov ymm22_1 ymm15_1;
mov ymm22_2 ymm15_2;
mov ymm22_3 ymm15_3;
(* vpternlogq $0xd2,%ymm12,%ymm23,%ymm24           #! PC = 0x555555580b6b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm23_0, ymm12_0, table);
call vpternlogq64 (ymm24_1, ymm23_1, ymm12_1, table);
call vpternlogq64 (ymm24_2, ymm23_2, ymm12_2, table);
call vpternlogq64 (ymm24_3, ymm23_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm18,%ymm28           #! PC = 0x555555580b72 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm18_0, ymm23_0, table);
call vpternlogq64 (ymm28_1, ymm18_1, ymm23_1, table);
call vpternlogq64 (ymm28_2, ymm18_2, ymm23_2, table);
call vpternlogq64 (ymm28_3, ymm18_3, ymm23_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm12,%ymm23            #! PC = 0x555555580b79 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm12_0, ymm9_0, table);
call vpternlogq64 (ymm23_1, ymm12_1, ymm9_1, table);
call vpternlogq64 (ymm23_2, ymm12_2, ymm9_2, table);
call vpternlogq64 (ymm23_3, ymm12_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm23,%ymm10,%ymm19           #! PC = 0x555555580b80 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm19_0, ymm10_0, ymm23_0, table);
call vpternlogq64 (ymm19_1, ymm10_1, ymm23_1, table);
call vpternlogq64 (ymm19_2, ymm10_2, ymm23_2, table);
call vpternlogq64 (ymm19_3, ymm10_3, ymm23_3, table);
(* vprolq $0x1,%ymm19,%ymm29                       #! PC = 0x555555580b87 *)
rol ymm29_0 ymm19_0 0x1;
rol ymm29_1 ymm19_1 0x1;
rol ymm29_2 ymm19_2 0x1;
rol ymm29_3 ymm19_3 0x1;
(* vpternlogq $0xd2,%ymm1,%ymm9,%ymm12             #! PC = 0x555555580b8e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm9_0, ymm1_0, table);
call vpternlogq64 (ymm12_1, ymm9_1, ymm1_1, table);
call vpternlogq64 (ymm12_2, ymm9_2, ymm1_2, table);
call vpternlogq64 (ymm12_3, ymm9_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm1,%ymm9             #! PC = 0x555555580b95 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm1_0, ymm18_0, table);
call vpternlogq64 (ymm9_1, ymm1_1, ymm18_1, table);
call vpternlogq64 (ymm9_2, ymm1_2, ymm18_2, table);
call vpternlogq64 (ymm9_3, ymm1_3, ymm18_3, table);
(* vmovdqa %ymm5,%ymm1                             #! PC = 0x555555580b9c *)
mov ymm1_0 ymm5_0;
mov ymm1_1 ymm5_1;
mov ymm1_2 ymm5_2;
mov ymm1_3 ymm5_3;
(* vpternlogq $0x96,%ymm7,%ymm17,%ymm1             #! PC = 0x555555580ba0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm1_0, ymm17_0, ymm7_0, table);
call vpternlogq64 (ymm1_1, ymm17_1, ymm7_1, table);
call vpternlogq64 (ymm1_2, ymm17_2, ymm7_2, table);
call vpternlogq64 (ymm1_3, ymm17_3, ymm7_3, table);
(* vpternlogq $0x96,%ymm12,%ymm4,%ymm1             #! PC = 0x555555580ba7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm1_0, ymm4_0, ymm12_0, table);
call vpternlogq64 (ymm1_1, ymm4_1, ymm12_1, table);
call vpternlogq64 (ymm1_2, ymm4_2, ymm12_2, table);
call vpternlogq64 (ymm1_3, ymm4_3, ymm12_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x555555580bae *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm1,%ymm29                        #! PC = 0x555555580bb9 *)
rol ymm29_0 ymm1_0 0x1;
rol ymm29_1 ymm1_1 0x1;
rol ymm29_2 ymm1_2 0x1;
rol ymm29_3 ymm1_3 0x1;
(* vmovdqa64 %ymm11,%ymm18                         #! PC = 0x555555580bc0 *)
mov ymm18_0 ymm11_0;
mov ymm18_1 ymm11_1;
mov ymm18_2 ymm11_2;
mov ymm18_3 ymm11_3;
(* vpternlogq $0x96,%ymm14,%ymm27,%ymm18           #! PC = 0x555555580bc6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm27_0, ymm14_0, table);
call vpternlogq64 (ymm18_1, ymm27_1, ymm14_1, table);
call vpternlogq64 (ymm18_2, ymm27_2, ymm14_2, table);
call vpternlogq64 (ymm18_3, ymm27_3, ymm14_3, table);
(* vpternlogq $0x96,%ymm9,%ymm3,%ymm18             #! PC = 0x555555580bcd *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm3_0, ymm9_0, table);
call vpternlogq64 (ymm18_1, ymm3_1, ymm9_1, table);
call vpternlogq64 (ymm18_2, ymm3_2, ymm9_2, table);
call vpternlogq64 (ymm18_3, ymm3_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm6,%ymm25,%ymm22            #! PC = 0x555555580bd4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm25_0, ymm6_0, table);
call vpternlogq64 (ymm22_1, ymm25_1, ymm6_1, table);
call vpternlogq64 (ymm22_2, ymm25_2, ymm6_2, table);
call vpternlogq64 (ymm22_3, ymm25_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm28,%ymm21,%ymm22           #! PC = 0x555555580bdb *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm21_0, ymm28_0, table);
call vpternlogq64 (ymm22_1, ymm21_1, ymm28_1, table);
call vpternlogq64 (ymm22_2, ymm21_2, ymm28_2, table);
call vpternlogq64 (ymm22_3, ymm21_3, ymm28_3, table);
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x555555580be2 *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm18,%ymm29                       #! PC = 0x555555580bed *)
rol ymm29_0 ymm18_0 0x1;
rol ymm29_1 ymm18_1 0x1;
rol ymm29_2 ymm18_2 0x1;
rol ymm29_3 ymm18_3 0x1;
(* vmovdqa64 %ymm26,%ymm20                         #! PC = 0x555555580bf4 *)
mov ymm20_0 ymm26_0;
mov ymm20_1 ymm26_1;
mov ymm20_2 ymm26_2;
mov ymm20_3 ymm26_3;
(* vpternlogq $0x96,%ymm8,%ymm31,%ymm20            #! PC = 0x555555580bfa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm31_0, ymm8_0, table);
call vpternlogq64 (ymm20_1, ymm31_1, ymm8_1, table);
call vpternlogq64 (ymm20_2, ymm31_2, ymm8_2, table);
call vpternlogq64 (ymm20_3, ymm31_3, ymm8_3, table);
(* vpternlogq $0x96,%ymm24,%ymm13,%ymm20           #! PC = 0x555555580c01 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm13_0, ymm24_0, table);
call vpternlogq64 (ymm20_1, ymm13_1, ymm24_1, table);
call vpternlogq64 (ymm20_2, ymm13_2, ymm24_2, table);
call vpternlogq64 (ymm20_3, ymm13_3, ymm24_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x555555580c08 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* movabs $0x8000000000008089,%r8                  #! PC = 0x555555580c0f *)
mov r8 0x8000000000008089@uint64;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555580c19 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580c24 *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x88(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd960; Value = 0x3e2aa8e4f0927fb8; PC = 0x555555580c2b *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd960;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd968;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd970;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd978;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0xa63298457ab5a2a7; PC = 0x555555580c36 *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* vpxorq 0x48(%rsp),%ymm19,%ymm19                 #! EA = L0x7fffffffd920; Value = 0x65a7f39c305dd0be; PC = 0x555555580c41 *)
xor ymm19_0@uint64 ymm19_0 L0x7fffffffd920;
xor ymm19_1@uint64 ymm19_1 L0x7fffffffd928;
xor ymm19_2@uint64 ymm19_2 L0x7fffffffd930;
xor ymm19_3@uint64 ymm19_3 L0x7fffffffd938;
(* vpxorq %ymm22,%ymm31,%ymm31                     #! PC = 0x555555580c4c *)
xor ymm31_0@uint64 ymm31_0 ymm22_0;
xor ymm31_1@uint64 ymm31_1 ymm22_1;
xor ymm31_2@uint64 ymm31_2 ymm22_2;
xor ymm31_3@uint64 ymm31_3 ymm22_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580c52 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm1,%ymm29,%ymm29                      #! PC = 0x555555580c59 *)
xor ymm29_0@uint64 ymm29_0 ymm1_0;
xor ymm29_1@uint64 ymm29_1 ymm1_1;
xor ymm29_2@uint64 ymm29_2 ymm1_2;
xor ymm29_3@uint64 ymm29_3 ymm1_3;
(* vpxorq %ymm20,%ymm0,%ymm0                       #! PC = 0x555555580c5f *)
xor ymm0_0@uint64 ymm0_0 ymm20_0;
xor ymm0_1@uint64 ymm0_1 ymm20_1;
xor ymm0_2@uint64 ymm0_2 ymm20_2;
xor ymm0_3@uint64 ymm0_3 ymm20_3;
(* vpxorq %ymm19,%ymm4,%ymm4                       #! PC = 0x555555580c65 *)
xor ymm4_0@uint64 ymm4_0 ymm19_0;
xor ymm4_1@uint64 ymm4_1 ymm19_1;
xor ymm4_2@uint64 ymm4_2 ymm19_2;
xor ymm4_3@uint64 ymm4_3 ymm19_3;
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x555555580c6b *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vprorq $0x15,%ymm0,%ymm0                        #! PC = 0x555555580c71 *)
ror ymm0_0 ymm0_0 0x15;
ror ymm0_1 ymm0_1 0x15;
ror ymm0_2 ymm0_2 0x15;
ror ymm0_3 ymm0_3 0x15;
(* vprolq $0x15,%ymm4,%ymm4                        #! PC = 0x555555580c78 *)
rol ymm4_0 ymm4_0 0x15;
rol ymm4_1 ymm4_1 0x15;
rol ymm4_2 ymm4_2 0x15;
rol ymm4_3 ymm4_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x555555580c7f *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxorq %ymm18,%ymm30,%ymm30                     #! PC = 0x555555580c86 *)
xor ymm30_0@uint64 ymm30_0 ymm18_0;
xor ymm30_1@uint64 ymm30_1 ymm18_1;
xor ymm30_2@uint64 ymm30_2 ymm18_2;
xor ymm30_3@uint64 ymm30_3 ymm18_3;
(* vpxorq %ymm15,%ymm30,%ymm1                      #! PC = 0x555555580c8c *)
xor ymm1_0@uint64 ymm30_0 ymm15_0;
xor ymm1_1@uint64 ymm30_1 ymm15_1;
xor ymm1_2@uint64 ymm30_2 ymm15_2;
xor ymm1_3@uint64 ymm30_3 ymm15_3;
(* vmovdqa64 %ymm1,%ymm18                          #! PC = 0x555555580c92 *)
mov ymm18_0 ymm1_0;
mov ymm18_1 ymm1_1;
mov ymm18_2 ymm1_2;
mov ymm18_3 ymm1_3;
(* vmovdqa64 %ymm31,%ymm15                         #! PC = 0x555555580c98 *)
mov ymm15_0 ymm31_0;
mov ymm15_1 ymm31_1;
mov ymm15_2 ymm31_2;
mov ymm15_3 ymm31_3;
(* vpternlogq $0xd2,%ymm4,%ymm0,%ymm15             #! PC = 0x555555580c9e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm0_0, ymm4_0, table);
call vpternlogq64 (ymm15_1, ymm0_1, ymm4_1, table);
call vpternlogq64 (ymm15_2, ymm0_2, ymm4_2, table);
call vpternlogq64 (ymm15_3, ymm0_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm0,%ymm31,%ymm18            #! PC = 0x555555580ca5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm31_0, ymm0_0, table);
call vpternlogq64 (ymm18_1, ymm31_1, ymm0_1, table);
call vpternlogq64 (ymm18_2, ymm31_2, ymm0_2, table);
call vpternlogq64 (ymm18_3, ymm31_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm4,%ymm0              #! PC = 0x555555580cac *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm4_0, ymm9_0, table);
call vpternlogq64 (ymm0_1, ymm4_1, ymm9_1, table);
call vpternlogq64 (ymm0_2, ymm4_2, ymm9_2, table);
call vpternlogq64 (ymm0_3, ymm4_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm9,%ymm4              #! PC = 0x555555580cb3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm9_0, ymm1_0, table);
call vpternlogq64 (ymm4_1, ymm9_1, ymm1_1, table);
call vpternlogq64 (ymm4_2, ymm9_2, ymm1_2, table);
call vpternlogq64 (ymm4_3, ymm9_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm1,%ymm9             #! PC = 0x555555580cba *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm1_0, ymm31_0, table);
call vpternlogq64 (ymm9_1, ymm1_1, ymm31_1, table);
call vpternlogq64 (ymm9_2, ymm1_2, ymm31_2, table);
call vpternlogq64 (ymm9_3, ymm1_3, ymm31_3, table);
(* vpbroadcastq %r10,%ymm1                         #! PC = 0x555555580cc1 *)
mov ymm1_0 r10;
mov ymm1_1 r10;
mov ymm1_2 r10;
mov ymm1_3 r10;
(* vpxorq %ymm1,%ymm18,%ymm18                      #! PC = 0x555555580cc7 *)
xor ymm18_0@uint64 ymm18_0 ymm1_0;
xor ymm18_1@uint64 ymm18_1 ymm1_1;
xor ymm18_2@uint64 ymm18_2 ymm1_2;
xor ymm18_3@uint64 ymm18_3 ymm1_3;
(* vpxorq %ymm19,%ymm5,%ymm5                       #! PC = 0x555555580ccd *)
xor ymm5_0@uint64 ymm5_0 ymm19_0;
xor ymm5_1@uint64 ymm5_1 ymm19_1;
xor ymm5_2@uint64 ymm5_2 ymm19_2;
xor ymm5_3@uint64 ymm5_3 ymm19_3;
(* vpxorq %ymm29,%ymm27,%ymm1                      #! PC = 0x555555580cd3 *)
xor ymm1_0@uint64 ymm27_0 ymm29_0;
xor ymm1_1@uint64 ymm27_1 ymm29_1;
xor ymm1_2@uint64 ymm27_2 ymm29_2;
xor ymm1_3@uint64 ymm27_3 ymm29_3;
(* vprolq $0x1c,%ymm5,%ymm5                        #! PC = 0x555555580cd9 *)
rol ymm5_0 ymm5_0 0x1c;
rol ymm5_1 ymm5_1 0x1c;
rol ymm5_2 ymm5_2 0x1c;
rol ymm5_3 ymm5_3 0x1c;
(* vprolq $0x14,%ymm1,%ymm1                        #! PC = 0x555555580ce0 *)
rol ymm1_0 ymm1_0 0x14;
rol ymm1_1 ymm1_1 0x14;
rol ymm1_2 ymm1_2 0x14;
rol ymm1_3 ymm1_3 0x14;
(* vpxorq %ymm30,%ymm6,%ymm6                       #! PC = 0x555555580ce7 *)
xor ymm6_0@uint64 ymm6_0 ymm30_0;
xor ymm6_1@uint64 ymm6_1 ymm30_1;
xor ymm6_2@uint64 ymm6_2 ymm30_2;
xor ymm6_3@uint64 ymm6_3 ymm30_3;
(* vpxorq %ymm22,%ymm13,%ymm13                     #! PC = 0x555555580ced *)
xor ymm13_0@uint64 ymm13_0 ymm22_0;
xor ymm13_1@uint64 ymm13_1 ymm22_1;
xor ymm13_2@uint64 ymm13_2 ymm22_2;
xor ymm13_3@uint64 ymm13_3 ymm22_3;
(* vpxorq %ymm20,%ymm23,%ymm23                     #! PC = 0x555555580cf3 *)
xor ymm23_0@uint64 ymm23_0 ymm20_0;
xor ymm23_1@uint64 ymm23_1 ymm20_1;
xor ymm23_2@uint64 ymm23_2 ymm20_2;
xor ymm23_3@uint64 ymm23_3 ymm20_3;
(* vprolq $0x3,%ymm6,%ymm6                         #! PC = 0x555555580cf9 *)
rol ymm6_0 ymm6_0 0x3;
rol ymm6_1 ymm6_1 0x3;
rol ymm6_2 ymm6_2 0x3;
rol ymm6_3 ymm6_3 0x3;
(* vprorq $0x13,%ymm13,%ymm13                      #! PC = 0x555555580d00 *)
ror ymm13_0 ymm13_0 0x13;
ror ymm13_1 ymm13_1 0x13;
ror ymm13_2 ymm13_2 0x13;
ror ymm13_3 ymm13_3 0x13;
(* vprorq $0x3,%ymm23,%ymm23                       #! PC = 0x555555580d07 *)
ror ymm23_0 ymm23_0 0x3;
ror ymm23_1 ymm23_1 0x3;
ror ymm23_2 ymm23_2 0x3;
ror ymm23_3 ymm23_3 0x3;
(* vmovdqa64 %ymm5,%ymm27                          #! PC = 0x555555580d0e *)
mov ymm27_0 ymm5_0;
mov ymm27_1 ymm5_1;
mov ymm27_2 ymm5_2;
mov ymm27_3 ymm5_3;
(* vmovdqa64 %ymm1,%ymm31                          #! PC = 0x555555580d14 *)
mov ymm31_0 ymm1_0;
mov ymm31_1 ymm1_1;
mov ymm31_2 ymm1_2;
mov ymm31_3 ymm1_3;
(* vpxorq %ymm22,%ymm26,%ymm26                     #! PC = 0x555555580d1a *)
xor ymm26_0@uint64 ymm26_0 ymm22_0;
xor ymm26_1@uint64 ymm26_1 ymm22_1;
xor ymm26_2@uint64 ymm26_2 ymm22_2;
xor ymm26_3@uint64 ymm26_3 ymm22_3;
(* vpxorq %ymm20,%ymm16,%ymm16                     #! PC = 0x555555580d20 *)
xor ymm16_0@uint64 ymm16_0 ymm20_0;
xor ymm16_1@uint64 ymm16_1 ymm20_1;
xor ymm16_2@uint64 ymm16_2 ymm20_2;
xor ymm16_3@uint64 ymm16_3 ymm20_3;
(* vprolq $0x1,%ymm26,%ymm26                       #! PC = 0x555555580d26 *)
rol ymm26_0 ymm26_0 0x1;
rol ymm26_1 ymm26_1 0x1;
rol ymm26_2 ymm26_2 0x1;
rol ymm26_3 ymm26_3 0x1;
(* vprolq $0x6,%ymm16,%ymm16                       #! PC = 0x555555580d2d *)
rol ymm16_0 ymm16_0 0x6;
rol ymm16_1 ymm16_1 0x6;
rol ymm16_2 ymm16_2 0x6;
rol ymm16_3 ymm16_3 0x6;
(* vpternlogq $0xd2,%ymm6,%ymm1,%ymm27             #! PC = 0x555555580d34 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm1_0, ymm6_0, table);
call vpternlogq64 (ymm27_1, ymm1_1, ymm6_1, table);
call vpternlogq64 (ymm27_2, ymm1_2, ymm6_2, table);
call vpternlogq64 (ymm27_3, ymm1_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm6,%ymm31            #! PC = 0x555555580d3b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm6_0, ymm13_0, table);
call vpternlogq64 (ymm31_1, ymm6_1, ymm13_1, table);
call vpternlogq64 (ymm31_2, ymm6_2, ymm13_2, table);
call vpternlogq64 (ymm31_3, ymm6_3, ymm13_3, table);
(* vpxorq %ymm30,%ymm28,%ymm28                     #! PC = 0x555555580d42 *)
xor ymm28_0@uint64 ymm28_0 ymm30_0;
xor ymm28_1@uint64 ymm28_1 ymm30_1;
xor ymm28_2@uint64 ymm28_2 ymm30_2;
xor ymm28_3@uint64 ymm28_3 ymm30_3;
(* vpternlogq $0xd2,%ymm23,%ymm13,%ymm6            #! PC = 0x555555580d48 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm13_0, ymm23_0, table);
call vpternlogq64 (ymm6_1, ymm13_1, ymm23_1, table);
call vpternlogq64 (ymm6_2, ymm13_2, ymm23_2, table);
call vpternlogq64 (ymm6_3, ymm13_3, ymm23_3, table);
(* vpxorq %ymm29,%ymm3,%ymm3                       #! PC = 0x555555580d4f *)
xor ymm3_0@uint64 ymm3_0 ymm29_0;
xor ymm3_1@uint64 ymm3_1 ymm29_1;
xor ymm3_2@uint64 ymm3_2 ymm29_2;
xor ymm3_3@uint64 ymm3_3 ymm29_3;
(* vpternlogq $0xd2,%ymm5,%ymm23,%ymm13            #! PC = 0x555555580d55 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm23_0, ymm5_0, table);
call vpternlogq64 (ymm13_1, ymm23_1, ymm5_1, table);
call vpternlogq64 (ymm13_2, ymm23_2, ymm5_2, table);
call vpternlogq64 (ymm13_3, ymm23_3, ymm5_3, table);
(* vpxorq %ymm30,%ymm25,%ymm25                     #! PC = 0x555555580d5c *)
xor ymm25_0@uint64 ymm25_0 ymm30_0;
xor ymm25_1@uint64 ymm25_1 ymm30_1;
xor ymm25_2@uint64 ymm25_2 ymm30_2;
xor ymm25_3@uint64 ymm25_3 ymm30_3;
(* vpternlogq $0xd2,%ymm1,%ymm5,%ymm23             #! PC = 0x555555580d62 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm5_0, ymm1_0, table);
call vpternlogq64 (ymm23_1, ymm5_1, ymm1_1, table);
call vpternlogq64 (ymm23_2, ymm5_2, ymm1_2, table);
call vpternlogq64 (ymm23_3, ymm5_3, ymm1_3, table);
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x555555580d69 *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vpxorq %ymm19,%ymm7,%ymm1                       #! PC = 0x555555580d6f *)
xor ymm1_0@uint64 ymm7_0 ymm19_0;
xor ymm1_1@uint64 ymm7_1 ymm19_1;
xor ymm1_2@uint64 ymm7_2 ymm19_2;
xor ymm1_3@uint64 ymm7_3 ymm19_3;
(* vprorq $0x1c,%ymm25,%ymm25                      #! PC = 0x555555580d75 *)
ror ymm25_0 ymm25_0 0x1c;
ror ymm25_1 ymm25_1 0x1c;
ror ymm25_2 ymm25_2 0x1c;
ror ymm25_3 ymm25_3 0x1c;
(* vprolq $0x1b,%ymm11,%ymm11                      #! PC = 0x555555580d7c *)
rol ymm11_0 ymm11_0 0x1b;
rol ymm11_1 ymm11_1 0x1b;
rol ymm11_2 ymm11_2 0x1b;
rol ymm11_3 ymm11_3 0x1b;
(* vprolq $0x12,%ymm28,%ymm28                      #! PC = 0x555555580d83 *)
rol ymm28_0 ymm28_0 0x12;
rol ymm28_1 ymm28_1 0x12;
rol ymm28_2 ymm28_2 0x12;
rol ymm28_3 ymm28_3 0x12;
(* vprolq $0x19,%ymm1,%ymm1                        #! PC = 0x555555580d8a *)
rol ymm1_0 ymm1_0 0x19;
rol ymm1_1 ymm1_1 0x19;
rol ymm1_2 ymm1_2 0x19;
rol ymm1_3 ymm1_3 0x19;
(* vprolq $0x8,%ymm3,%ymm3                         #! PC = 0x555555580d91 *)
rol ymm3_0 ymm3_0 0x8;
rol ymm3_1 ymm3_1 0x8;
rol ymm3_2 ymm3_2 0x8;
rol ymm3_3 ymm3_3 0x8;
(* vpxorq %ymm22,%ymm8,%ymm8                       #! PC = 0x555555580d98 *)
xor ymm8_0@uint64 ymm8_0 ymm22_0;
xor ymm8_1@uint64 ymm8_1 ymm22_1;
xor ymm8_2@uint64 ymm8_2 ymm22_2;
xor ymm8_3@uint64 ymm8_3 ymm22_3;
(* vpxorq %ymm20,%ymm10,%ymm10                     #! PC = 0x555555580d9e *)
xor ymm10_0@uint64 ymm10_0 ymm20_0;
xor ymm10_1@uint64 ymm10_1 ymm20_1;
xor ymm10_2@uint64 ymm10_2 ymm20_2;
xor ymm10_3@uint64 ymm10_3 ymm20_3;
(* vpxorq %ymm19,%ymm12,%ymm12                     #! PC = 0x555555580da4 *)
xor ymm12_0@uint64 ymm12_0 ymm19_0;
xor ymm12_1@uint64 ymm12_1 ymm19_1;
xor ymm12_2@uint64 ymm12_2 ymm19_2;
xor ymm12_3@uint64 ymm12_3 ymm19_3;
(* vprolq $0xa,%ymm8,%ymm8                         #! PC = 0x555555580daa *)
rol ymm8_0 ymm8_0 0xa;
rol ymm8_1 ymm8_1 0xa;
rol ymm8_2 ymm8_2 0xa;
rol ymm8_3 ymm8_3 0xa;
(* vprolq $0xf,%ymm10,%ymm10                       #! PC = 0x555555580db1 *)
rol ymm10_0 ymm10_0 0xf;
rol ymm10_1 ymm10_1 0xf;
rol ymm10_2 ymm10_2 0xf;
rol ymm10_3 ymm10_3 0xf;
(* vprorq $0x8,%ymm12,%ymm12                       #! PC = 0x555555580db8 *)
ror ymm12_0 ymm12_0 0x8;
ror ymm12_1 ymm12_1 0x8;
ror ymm12_2 ymm12_2 0x8;
ror ymm12_3 ymm12_3 0x8;
(* vmovdqa64 %ymm26,%ymm5                          #! PC = 0x555555580dbf *)
mov ymm5_0 ymm26_0;
mov ymm5_1 ymm26_1;
mov ymm5_2 ymm26_2;
mov ymm5_3 ymm26_3;
(* vmovdqa64 %ymm16,%ymm7                          #! PC = 0x555555580dc5 *)
mov ymm7_0 ymm16_0;
mov ymm7_1 ymm16_1;
mov ymm7_2 ymm16_2;
mov ymm7_3 ymm16_3;
(* vpternlogq $0xd2,%ymm1,%ymm16,%ymm5             #! PC = 0x555555580dcb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm16_0, ymm1_0, table);
call vpternlogq64 (ymm5_1, ymm16_1, ymm1_1, table);
call vpternlogq64 (ymm5_2, ymm16_2, ymm1_2, table);
call vpternlogq64 (ymm5_3, ymm16_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm1,%ymm7              #! PC = 0x555555580dd2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm1_0, ymm3_0, table);
call vpternlogq64 (ymm7_1, ymm1_1, ymm3_1, table);
call vpternlogq64 (ymm7_2, ymm1_2, ymm3_2, table);
call vpternlogq64 (ymm7_3, ymm1_3, ymm3_3, table);
(* vpxorq %ymm20,%ymm2,%ymm2                       #! PC = 0x555555580dd9 *)
xor ymm2_0@uint64 ymm2_0 ymm20_0;
xor ymm2_1@uint64 ymm2_1 ymm20_1;
xor ymm2_2@uint64 ymm2_2 ymm20_2;
xor ymm2_3@uint64 ymm2_3 ymm20_3;
(* vpternlogq $0xd2,%ymm28,%ymm3,%ymm1             #! PC = 0x555555580ddf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm3_0, ymm28_0, table);
call vpternlogq64 (ymm1_1, ymm3_1, ymm28_1, table);
call vpternlogq64 (ymm1_2, ymm3_2, ymm28_2, table);
call vpternlogq64 (ymm1_3, ymm3_3, ymm28_3, table);
(* vpxorq %ymm19,%ymm17,%ymm17                     #! PC = 0x555555580de6 *)
xor ymm17_0@uint64 ymm17_0 ymm19_0;
xor ymm17_1@uint64 ymm17_1 ymm19_1;
xor ymm17_2@uint64 ymm17_2 ymm19_2;
xor ymm17_3@uint64 ymm17_3 ymm19_3;
(* vpternlogq $0xd2,%ymm26,%ymm28,%ymm3            #! PC = 0x555555580dec *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm28_0, ymm26_0, table);
call vpternlogq64 (ymm3_1, ymm28_1, ymm26_1, table);
call vpternlogq64 (ymm3_2, ymm28_2, ymm26_2, table);
call vpternlogq64 (ymm3_3, ymm28_3, ymm26_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm26,%ymm28           #! PC = 0x555555580df3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm26_0, ymm16_0, table);
call vpternlogq64 (ymm28_1, ymm26_1, ymm16_1, table);
call vpternlogq64 (ymm28_2, ymm26_2, ymm16_2, table);
call vpternlogq64 (ymm28_3, ymm26_3, ymm16_3, table);
(* vmovdqa64 %ymm11,%ymm26                         #! PC = 0x555555580dfa *)
mov ymm26_0 ymm11_0;
mov ymm26_1 ymm11_1;
mov ymm26_2 ymm11_2;
mov ymm26_3 ymm11_3;
(* vmovdqa64 %ymm25,%ymm16                         #! PC = 0x555555580e00 *)
mov ymm16_0 ymm25_0;
mov ymm16_1 ymm25_1;
mov ymm16_2 ymm25_2;
mov ymm16_3 ymm25_3;
(* vprorq $0x2,%ymm2,%ymm2                         #! PC = 0x555555580e06 *)
ror ymm2_0 ymm2_0 0x2;
ror ymm2_1 ymm2_1 0x2;
ror ymm2_2 ymm2_2 0x2;
ror ymm2_3 ymm2_3 0x2;
(* vprorq $0x9,%ymm17,%ymm17                       #! PC = 0x555555580e0d *)
ror ymm17_0 ymm17_0 0x9;
ror ymm17_1 ymm17_1 0x9;
ror ymm17_2 ymm17_2 0x9;
ror ymm17_3 ymm17_3 0x9;
(* vpternlogq $0xd2,%ymm8,%ymm25,%ymm26            #! PC = 0x555555580e14 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm26_0, ymm25_0, ymm8_0, table);
call vpternlogq64 (ymm26_1, ymm25_1, ymm8_1, table);
call vpternlogq64 (ymm26_2, ymm25_2, ymm8_2, table);
call vpternlogq64 (ymm26_3, ymm25_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm8,%ymm16            #! PC = 0x555555580e1b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm8_0, ymm10_0, table);
call vpternlogq64 (ymm16_1, ymm8_1, ymm10_1, table);
call vpternlogq64 (ymm16_2, ymm8_2, ymm10_2, table);
call vpternlogq64 (ymm16_3, ymm8_3, ymm10_3, table);
(* vpxorq %ymm30,%ymm21,%ymm21                     #! PC = 0x555555580e22 *)
xor ymm21_0@uint64 ymm21_0 ymm30_0;
xor ymm21_1@uint64 ymm21_1 ymm30_1;
xor ymm21_2@uint64 ymm21_2 ymm30_2;
xor ymm21_3@uint64 ymm21_3 ymm30_3;
(* vpternlogq $0xd2,%ymm12,%ymm10,%ymm8            #! PC = 0x555555580e28 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm10_0, ymm12_0, table);
call vpternlogq64 (ymm8_1, ymm10_1, ymm12_1, table);
call vpternlogq64 (ymm8_2, ymm10_2, ymm12_2, table);
call vpternlogq64 (ymm8_3, ymm10_3, ymm12_3, table);
(* vpxorq %ymm29,%ymm14,%ymm14                     #! PC = 0x555555580e2f *)
xor ymm14_0@uint64 ymm14_0 ymm29_0;
xor ymm14_1@uint64 ymm14_1 ymm29_1;
xor ymm14_2@uint64 ymm14_2 ymm29_2;
xor ymm14_3@uint64 ymm14_3 ymm29_3;
(* vpternlogq $0xd2,%ymm11,%ymm12,%ymm10           #! PC = 0x555555580e35 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm12_0, ymm11_0, table);
call vpternlogq64 (ymm10_1, ymm12_1, ymm11_1, table);
call vpternlogq64 (ymm10_2, ymm12_2, ymm11_2, table);
call vpternlogq64 (ymm10_3, ymm12_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm11,%ymm12           #! PC = 0x555555580e3c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm11_0, ymm25_0, table);
call vpternlogq64 (ymm12_1, ymm11_1, ymm25_1, table);
call vpternlogq64 (ymm12_2, ymm11_2, ymm25_2, table);
call vpternlogq64 (ymm12_3, ymm11_3, ymm25_3, table);
(* vpxorq %ymm22,%ymm24,%ymm11                     #! PC = 0x555555580e43 *)
xor ymm11_0@uint64 ymm24_0 ymm22_0;
xor ymm11_1@uint64 ymm24_1 ymm22_1;
xor ymm11_2@uint64 ymm24_2 ymm22_2;
xor ymm11_3@uint64 ymm24_3 ymm22_3;
(* vprorq $0x17,%ymm21,%ymm21                      #! PC = 0x555555580e49 *)
ror ymm21_0 ymm21_0 0x17;
ror ymm21_1 ymm21_1 0x17;
ror ymm21_2 ymm21_2 0x17;
ror ymm21_3 ymm21_3 0x17;
(* vprolq $0x2,%ymm11,%ymm11                       #! PC = 0x555555580e50 *)
rol ymm11_0 ymm11_0 0x2;
rol ymm11_1 ymm11_1 0x2;
rol ymm11_2 ymm11_2 0x2;
rol ymm11_3 ymm11_3 0x2;
(* vprorq $0x19,%ymm14,%ymm14                      #! PC = 0x555555580e57 *)
ror ymm14_0 ymm14_0 0x19;
ror ymm14_1 ymm14_1 0x19;
ror ymm14_2 ymm14_2 0x19;
ror ymm14_3 ymm14_3 0x19;
(* vmovdqa64 %ymm2,%ymm19                          #! PC = 0x555555580e5e *)
mov ymm19_0 ymm2_0;
mov ymm19_1 ymm2_1;
mov ymm19_2 ymm2_2;
mov ymm19_3 ymm2_3;
(* vmovdqa64 %ymm17,%ymm25                         #! PC = 0x555555580e64 *)
mov ymm25_0 ymm17_0;
mov ymm25_1 ymm17_1;
mov ymm25_2 ymm17_2;
mov ymm25_3 ymm17_3;
(* vmovdqa64 %ymm12,%ymm22                         #! PC = 0x555555580e6a *)
mov ymm22_0 ymm12_0;
mov ymm22_1 ymm12_1;
mov ymm22_2 ymm12_2;
mov ymm22_3 ymm12_3;
(* vmovdqa64 %ymm18,%ymm24                         #! PC = 0x555555580e70 *)
mov ymm24_0 ymm18_0;
mov ymm24_1 ymm18_1;
mov ymm24_2 ymm18_2;
mov ymm24_3 ymm18_3;
(* vpternlogq $0x96,%ymm27,%ymm26,%ymm24           #! PC = 0x555555580e76 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm26_0, ymm27_0, table);
call vpternlogq64 (ymm24_1, ymm26_1, ymm27_1, table);
call vpternlogq64 (ymm24_2, ymm26_2, ymm27_2, table);
call vpternlogq64 (ymm24_3, ymm26_3, ymm27_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm14,%ymm25           #! PC = 0x555555580e7d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm14_0, ymm21_0, table);
call vpternlogq64 (ymm25_1, ymm14_1, ymm21_1, table);
call vpternlogq64 (ymm25_2, ymm14_2, ymm21_2, table);
call vpternlogq64 (ymm25_3, ymm14_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm17,%ymm19           #! PC = 0x555555580e84 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm17_0, ymm14_0, table);
call vpternlogq64 (ymm19_1, ymm17_1, ymm14_1, table);
call vpternlogq64 (ymm19_2, ymm17_2, ymm14_2, table);
call vpternlogq64 (ymm19_3, ymm17_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm21,%ymm14           #! PC = 0x555555580e8b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm21_0, ymm11_0, table);
call vpternlogq64 (ymm14_1, ymm21_1, ymm11_1, table);
call vpternlogq64 (ymm14_2, ymm21_2, ymm11_2, table);
call vpternlogq64 (ymm14_3, ymm21_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm11,%ymm21            #! PC = 0x555555580e92 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm11_0, ymm2_0, table);
call vpternlogq64 (ymm21_1, ymm11_1, ymm2_1, table);
call vpternlogq64 (ymm21_2, ymm11_2, ymm2_2, table);
call vpternlogq64 (ymm21_3, ymm11_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm2,%ymm11            #! PC = 0x555555580e99 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm2_0, ymm17_0, table);
call vpternlogq64 (ymm11_1, ymm2_1, ymm17_1, table);
call vpternlogq64 (ymm11_2, ymm2_2, ymm17_2, table);
call vpternlogq64 (ymm11_3, ymm2_3, ymm17_3, table);
(* vmovdqa64 %ymm14,%ymm17                         #! PC = 0x555555580ea0 *)
mov ymm17_0 ymm14_0;
mov ymm17_1 ymm14_1;
mov ymm17_2 ymm14_2;
mov ymm17_3 ymm14_3;
(* vpternlogq $0x96,%ymm0,%ymm1,%ymm17             #! PC = 0x555555580ea6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm17_0, ymm1_0, ymm0_0, table);
call vpternlogq64 (ymm17_1, ymm1_1, ymm0_1, table);
call vpternlogq64 (ymm17_2, ymm1_2, ymm0_2, table);
call vpternlogq64 (ymm17_3, ymm1_3, ymm0_3, table);
(* vpternlogq $0x96,%ymm6,%ymm8,%ymm17             #! PC = 0x555555580ead *)
mov table 0x96@uint8;
call vpternlogq64 (ymm17_0, ymm8_0, ymm6_0, table);
call vpternlogq64 (ymm17_1, ymm8_1, ymm6_1, table);
call vpternlogq64 (ymm17_2, ymm8_2, ymm6_2, table);
call vpternlogq64 (ymm17_3, ymm8_3, ymm6_3, table);
(* vprolq $0x1,%ymm17,%ymm29                       #! PC = 0x555555580eb4 *)
rol ymm29_0 ymm17_0 0x1;
rol ymm29_1 ymm17_1 0x1;
rol ymm29_2 ymm17_2 0x1;
rol ymm29_3 ymm17_3 0x1;
(* vmovdqa %ymm13,%ymm2                            #! PC = 0x555555580ebb *)
mov ymm2_0 ymm13_0;
mov ymm2_1 ymm13_1;
mov ymm2_2 ymm13_2;
mov ymm2_3 ymm13_3;
(* vpternlogq $0x96,%ymm3,%ymm21,%ymm2             #! PC = 0x555555580ebf *)
mov table 0x96@uint8;
call vpternlogq64 (ymm2_0, ymm21_0, ymm3_0, table);
call vpternlogq64 (ymm2_1, ymm21_1, ymm3_1, table);
call vpternlogq64 (ymm2_2, ymm21_2, ymm3_2, table);
call vpternlogq64 (ymm2_3, ymm21_3, ymm3_3, table);
(* vpternlogq $0x96,%ymm10,%ymm4,%ymm2             #! PC = 0x555555580ec6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm2_0, ymm4_0, ymm10_0, table);
call vpternlogq64 (ymm2_1, ymm4_1, ymm10_1, table);
call vpternlogq64 (ymm2_2, ymm4_2, ymm10_2, table);
call vpternlogq64 (ymm2_3, ymm4_3, ymm10_3, table);
(* vpternlogq $0x96,%ymm11,%ymm23,%ymm22           #! PC = 0x555555580ecd *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm23_0, ymm11_0, table);
call vpternlogq64 (ymm22_1, ymm23_1, ymm11_1, table);
call vpternlogq64 (ymm22_2, ymm23_2, ymm11_2, table);
call vpternlogq64 (ymm22_3, ymm23_3, ymm11_3, table);
(* vpternlogq $0x96,%ymm9,%ymm28,%ymm22            #! PC = 0x555555580ed4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm28_0, ymm9_0, table);
call vpternlogq64 (ymm22_1, ymm28_1, ymm9_1, table);
call vpternlogq64 (ymm22_2, ymm28_2, ymm9_2, table);
call vpternlogq64 (ymm22_3, ymm28_3, ymm9_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x555555580edb *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm2,%ymm29                        #! PC = 0x555555580ee6 *)
rol ymm29_0 ymm2_0 0x1;
rol ymm29_1 ymm2_1 0x1;
rol ymm29_2 ymm2_2 0x1;
rol ymm29_3 ymm2_3 0x1;
(* vpternlogq $0x96,%ymm5,%ymm19,%ymm24            #! PC = 0x555555580eed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm19_0, ymm5_0, table);
call vpternlogq64 (ymm24_1, ymm19_1, ymm5_1, table);
call vpternlogq64 (ymm24_2, ymm19_2, ymm5_2, table);
call vpternlogq64 (ymm24_3, ymm19_3, ymm5_3, table);
(* vmovdqa64 %ymm7,%ymm20                          #! PC = 0x555555580ef4 *)
mov ymm20_0 ymm7_0;
mov ymm20_1 ymm7_1;
mov ymm20_2 ymm7_2;
mov ymm20_3 ymm7_3;
(* vpternlogq $0x96,%ymm16,%ymm15,%ymm20           #! PC = 0x555555580efa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm15_0, ymm16_0, table);
call vpternlogq64 (ymm20_1, ymm15_1, ymm16_1, table);
call vpternlogq64 (ymm20_2, ymm15_2, ymm16_2, table);
call vpternlogq64 (ymm20_3, ymm15_3, ymm16_3, table);
(* vpternlogq $0x96,%ymm25,%ymm31,%ymm20           #! PC = 0x555555580f01 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm31_0, ymm25_0, table);
call vpternlogq64 (ymm20_1, ymm31_1, ymm25_1, table);
call vpternlogq64 (ymm20_2, ymm31_2, ymm25_2, table);
call vpternlogq64 (ymm20_3, ymm31_3, ymm25_3, table);
(* vprolq $0x1,%ymm20,%ymm30                       #! PC = 0x555555580f08 *)
rol ymm30_0 ymm20_0 0x1;
rol ymm30_1 ymm20_1 0x1;
rol ymm30_2 ymm20_2 0x1;
rol ymm30_3 ymm20_3 0x1;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x555555580f0f *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm22,%ymm29                       #! PC = 0x555555580f1a *)
rol ymm29_0 ymm22_0 0x1;
rol ymm29_1 ymm22_1 0x1;
rol ymm29_2 ymm22_2 0x1;
rol ymm29_3 ymm22_3 0x1;
(* vpxorq 0x68(%rsp),%ymm20,%ymm20                 #! EA = L0x7fffffffd940; Value = 0x507e7ea3d93c50e9; PC = 0x555555580f21 *)
xor ymm20_0@uint64 ymm20_0 L0x7fffffffd940;
xor ymm20_1@uint64 ymm20_1 L0x7fffffffd948;
xor ymm20_2@uint64 ymm20_2 L0x7fffffffd950;
xor ymm20_3@uint64 ymm20_3 L0x7fffffffd958;
(* movabs $0x8000000000008003,%r9                  #! PC = 0x555555580f2c *)
mov r9 0x8000000000008003@uint64;
(* vpxorq %ymm20,%ymm1,%ymm1                       #! PC = 0x555555580f36 *)
xor ymm1_0@uint64 ymm1_0 ymm20_0;
xor ymm1_1@uint64 ymm1_1 ymm20_1;
xor ymm1_2@uint64 ymm1_2 ymm20_2;
xor ymm1_3@uint64 ymm1_3 ymm20_3;
(* vprorq $0x15,%ymm1,%ymm1                        #! PC = 0x555555580f3c *)
ror ymm1_0 ymm1_0 0x15;
ror ymm1_1 ymm1_1 0x15;
ror ymm1_2 ymm1_2 0x15;
ror ymm1_3 ymm1_3 0x15;
(* vpxorq %ymm22,%ymm30,%ymm30                     #! PC = 0x555555580f43 *)
xor ymm30_0@uint64 ymm30_0 ymm22_0;
xor ymm30_1@uint64 ymm30_1 ymm22_1;
xor ymm30_2@uint64 ymm30_2 ymm22_2;
xor ymm30_3@uint64 ymm30_3 ymm22_3;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555580f49 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm24,%ymm29                       #! PC = 0x555555580f54 *)
rol ymm29_0 ymm24_0 0x1;
rol ymm29_1 ymm24_1 0x1;
rol ymm29_2 ymm24_2 0x1;
rol ymm29_3 ymm24_3 0x1;
(* vpxorq 0x88(%rsp),%ymm24,%ymm24                 #! EA = L0x7fffffffd960; Value = 0x7b81c10c4094bdc7; PC = 0x555555580f5b *)
xor ymm24_0@uint64 ymm24_0 L0x7fffffffd960;
xor ymm24_1@uint64 ymm24_1 L0x7fffffffd968;
xor ymm24_2@uint64 ymm24_2 L0x7fffffffd970;
xor ymm24_3@uint64 ymm24_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm17,%ymm17                 #! EA = L0x7fffffffd920; Value = 0xbb6a8e0a34b87acc; PC = 0x555555580f66 *)
xor ymm17_0@uint64 ymm17_0 L0x7fffffffd920;
xor ymm17_1@uint64 ymm17_1 L0x7fffffffd928;
xor ymm17_2@uint64 ymm17_2 L0x7fffffffd930;
xor ymm17_3@uint64 ymm17_3 L0x7fffffffd938;
(* vpxorq %ymm24,%ymm31,%ymm31                     #! PC = 0x555555580f71 *)
xor ymm31_0@uint64 ymm31_0 ymm24_0;
xor ymm31_1@uint64 ymm31_1 ymm24_1;
xor ymm31_2@uint64 ymm31_2 ymm24_2;
xor ymm31_3@uint64 ymm31_3 ymm24_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555580f77 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm17,%ymm10,%ymm10                     #! PC = 0x555555580f7e *)
xor ymm10_0@uint64 ymm10_0 ymm17_0;
xor ymm10_1@uint64 ymm10_1 ymm17_1;
xor ymm10_2@uint64 ymm10_2 ymm17_2;
xor ymm10_3@uint64 ymm10_3 ymm17_3;
(* vpxorq %ymm2,%ymm29,%ymm29                      #! PC = 0x555555580f84 *)
xor ymm29_0@uint64 ymm29_0 ymm2_0;
xor ymm29_1@uint64 ymm29_1 ymm2_1;
xor ymm29_2@uint64 ymm29_2 ymm2_2;
xor ymm29_3@uint64 ymm29_3 ymm2_3;
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x555555580f8a *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vprolq $0x15,%ymm10,%ymm10                      #! PC = 0x555555580f90 *)
rol ymm10_0 ymm10_0 0x15;
rol ymm10_1 ymm10_1 0x15;
rol ymm10_2 ymm10_2 0x15;
rol ymm10_3 ymm10_3 0x15;
(* vprolq $0xe,%ymm11,%ymm11                       #! PC = 0x555555580f97 *)
rol ymm11_0 ymm11_0 0xe;
rol ymm11_1 ymm11_1 0xe;
rol ymm11_2 ymm11_2 0xe;
rol ymm11_3 ymm11_3 0xe;
(* vpxorq %ymm18,%ymm30,%ymm2                      #! PC = 0x555555580f9e *)
xor ymm2_0@uint64 ymm30_0 ymm18_0;
xor ymm2_1@uint64 ymm30_1 ymm18_1;
xor ymm2_2@uint64 ymm30_2 ymm18_2;
xor ymm2_3@uint64 ymm30_3 ymm18_3;
(* vmovdqa64 %ymm2,%ymm18                          #! PC = 0x555555580fa4 *)
mov ymm18_0 ymm2_0;
mov ymm18_1 ymm2_1;
mov ymm18_2 ymm2_2;
mov ymm18_3 ymm2_3;
(* vmovdqa64 %ymm31,%ymm22                         #! PC = 0x555555580faa *)
mov ymm22_0 ymm31_0;
mov ymm22_1 ymm31_1;
mov ymm22_2 ymm31_2;
mov ymm22_3 ymm31_3;
(* vpternlogq $0xd2,%ymm1,%ymm31,%ymm18            #! PC = 0x555555580fb0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm31_0, ymm1_0, table);
call vpternlogq64 (ymm18_1, ymm31_1, ymm1_1, table);
call vpternlogq64 (ymm18_2, ymm31_2, ymm1_2, table);
call vpternlogq64 (ymm18_3, ymm31_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm1,%ymm22            #! PC = 0x555555580fb7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm1_0, ymm10_0, table);
call vpternlogq64 (ymm22_1, ymm1_1, ymm10_1, table);
call vpternlogq64 (ymm22_2, ymm1_2, ymm10_2, table);
call vpternlogq64 (ymm22_3, ymm1_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm10,%ymm1            #! PC = 0x555555580fbe *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm1_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm1_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm1_3, ymm10_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm11,%ymm10            #! PC = 0x555555580fc5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm11_0, ymm2_0, table);
call vpternlogq64 (ymm10_1, ymm11_1, ymm2_1, table);
call vpternlogq64 (ymm10_2, ymm11_2, ymm2_2, table);
call vpternlogq64 (ymm10_3, ymm11_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm2,%ymm11            #! PC = 0x555555580fcc *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm2_0, ymm31_0, table);
call vpternlogq64 (ymm11_1, ymm2_1, ymm31_1, table);
call vpternlogq64 (ymm11_2, ymm2_2, ymm31_2, table);
call vpternlogq64 (ymm11_3, ymm2_3, ymm31_3, table);
(* vpbroadcastq %rdx,%ymm2                         #! PC = 0x555555580fd3 *)
mov ymm2_0 rdx;
mov ymm2_1 rdx;
mov ymm2_2 rdx;
mov ymm2_3 rdx;
(* vpxorq %ymm2,%ymm18,%ymm18                      #! PC = 0x555555580fd9 *)
xor ymm18_0@uint64 ymm18_0 ymm2_0;
xor ymm18_1@uint64 ymm18_1 ymm2_1;
xor ymm18_2@uint64 ymm18_2 ymm2_2;
xor ymm18_3@uint64 ymm18_3 ymm2_3;
(* vpxorq %ymm17,%ymm4,%ymm4                       #! PC = 0x555555580fdf *)
xor ymm4_0@uint64 ymm4_0 ymm17_0;
xor ymm4_1@uint64 ymm4_1 ymm17_1;
xor ymm4_2@uint64 ymm4_2 ymm17_2;
xor ymm4_3@uint64 ymm4_3 ymm17_3;
(* vpxorq %ymm29,%ymm23,%ymm2                      #! PC = 0x555555580fe5 *)
xor ymm2_0@uint64 ymm23_0 ymm29_0;
xor ymm2_1@uint64 ymm23_1 ymm29_1;
xor ymm2_2@uint64 ymm23_2 ymm29_2;
xor ymm2_3@uint64 ymm23_3 ymm29_3;
(* vprolq $0x1c,%ymm4,%ymm4                        #! PC = 0x555555580feb *)
rol ymm4_0 ymm4_0 0x1c;
rol ymm4_1 ymm4_1 0x1c;
rol ymm4_2 ymm4_2 0x1c;
rol ymm4_3 ymm4_3 0x1c;
(* vprolq $0x14,%ymm2,%ymm2                        #! PC = 0x555555580ff2 *)
rol ymm2_0 ymm2_0 0x14;
rol ymm2_1 ymm2_1 0x14;
rol ymm2_2 ymm2_2 0x14;
rol ymm2_3 ymm2_3 0x14;
(* vpxorq %ymm30,%ymm5,%ymm5                       #! PC = 0x555555580ff9 *)
xor ymm5_0@uint64 ymm5_0 ymm30_0;
xor ymm5_1@uint64 ymm5_1 ymm30_1;
xor ymm5_2@uint64 ymm5_2 ymm30_2;
xor ymm5_3@uint64 ymm5_3 ymm30_3;
(* vpxorq %ymm24,%ymm16,%ymm16                     #! PC = 0x555555580fff *)
xor ymm16_0@uint64 ymm16_0 ymm24_0;
xor ymm16_1@uint64 ymm16_1 ymm24_1;
xor ymm16_2@uint64 ymm16_2 ymm24_2;
xor ymm16_3@uint64 ymm16_3 ymm24_3;
(* vpxorq %ymm20,%ymm14,%ymm14                     #! PC = 0x555555581005 *)
xor ymm14_0@uint64 ymm14_0 ymm20_0;
xor ymm14_1@uint64 ymm14_1 ymm20_1;
xor ymm14_2@uint64 ymm14_2 ymm20_2;
xor ymm14_3@uint64 ymm14_3 ymm20_3;
(* vprolq $0x3,%ymm5,%ymm5                         #! PC = 0x55555558100b *)
rol ymm5_0 ymm5_0 0x3;
rol ymm5_1 ymm5_1 0x3;
rol ymm5_2 ymm5_2 0x3;
rol ymm5_3 ymm5_3 0x3;
(* vprorq $0x13,%ymm16,%ymm16                      #! PC = 0x555555581012 *)
ror ymm16_0 ymm16_0 0x13;
ror ymm16_1 ymm16_1 0x13;
ror ymm16_2 ymm16_2 0x13;
ror ymm16_3 ymm16_3 0x13;
(* vprorq $0x3,%ymm14,%ymm14                       #! PC = 0x555555581019 *)
ror ymm14_0 ymm14_0 0x3;
ror ymm14_1 ymm14_1 0x3;
ror ymm14_2 ymm14_2 0x3;
ror ymm14_3 ymm14_3 0x3;
(* vmovdqa64 %ymm4,%ymm31                          #! PC = 0x555555581020 *)
mov ymm31_0 ymm4_0;
mov ymm31_1 ymm4_1;
mov ymm31_2 ymm4_2;
mov ymm31_3 ymm4_3;
(* vmovdqa64 %ymm2,%ymm23                          #! PC = 0x555555581026 *)
mov ymm23_0 ymm2_0;
mov ymm23_1 ymm2_1;
mov ymm23_2 ymm2_2;
mov ymm23_3 ymm2_3;
(* vpxorq %ymm24,%ymm15,%ymm15                     #! PC = 0x55555558102c *)
xor ymm15_0@uint64 ymm15_0 ymm24_0;
xor ymm15_1@uint64 ymm15_1 ymm24_1;
xor ymm15_2@uint64 ymm15_2 ymm24_2;
xor ymm15_3@uint64 ymm15_3 ymm24_3;
(* vpxorq %ymm20,%ymm6,%ymm6                       #! PC = 0x555555581032 *)
xor ymm6_0@uint64 ymm6_0 ymm20_0;
xor ymm6_1@uint64 ymm6_1 ymm20_1;
xor ymm6_2@uint64 ymm6_2 ymm20_2;
xor ymm6_3@uint64 ymm6_3 ymm20_3;
(* vprolq $0x1,%ymm15,%ymm15                       #! PC = 0x555555581038 *)
rol ymm15_0 ymm15_0 0x1;
rol ymm15_1 ymm15_1 0x1;
rol ymm15_2 ymm15_2 0x1;
rol ymm15_3 ymm15_3 0x1;
(* vprolq $0x6,%ymm6,%ymm6                         #! PC = 0x55555558103f *)
rol ymm6_0 ymm6_0 0x6;
rol ymm6_1 ymm6_1 0x6;
rol ymm6_2 ymm6_2 0x6;
rol ymm6_3 ymm6_3 0x6;
(* vpternlogq $0xd2,%ymm5,%ymm2,%ymm31             #! PC = 0x555555581046 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm2_0, ymm5_0, table);
call vpternlogq64 (ymm31_1, ymm2_1, ymm5_1, table);
call vpternlogq64 (ymm31_2, ymm2_2, ymm5_2, table);
call vpternlogq64 (ymm31_3, ymm2_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm5,%ymm23            #! PC = 0x55555558104d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm5_0, ymm16_0, table);
call vpternlogq64 (ymm23_1, ymm5_1, ymm16_1, table);
call vpternlogq64 (ymm23_2, ymm5_2, ymm16_2, table);
call vpternlogq64 (ymm23_3, ymm5_3, ymm16_3, table);
(* vpxorq %ymm30,%ymm19,%ymm19                     #! PC = 0x555555581054 *)
xor ymm19_0@uint64 ymm19_0 ymm30_0;
xor ymm19_1@uint64 ymm19_1 ymm30_1;
xor ymm19_2@uint64 ymm19_2 ymm30_2;
xor ymm19_3@uint64 ymm19_3 ymm30_3;
(* vpternlogq $0xd2,%ymm14,%ymm16,%ymm5            #! PC = 0x55555558105a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm16_0, ymm14_0, table);
call vpternlogq64 (ymm5_1, ymm16_1, ymm14_1, table);
call vpternlogq64 (ymm5_2, ymm16_2, ymm14_2, table);
call vpternlogq64 (ymm5_3, ymm16_3, ymm14_3, table);
(* vpxorq %ymm17,%ymm3,%ymm3                       #! PC = 0x555555581061 *)
xor ymm3_0@uint64 ymm3_0 ymm17_0;
xor ymm3_1@uint64 ymm3_1 ymm17_1;
xor ymm3_2@uint64 ymm3_2 ymm17_2;
xor ymm3_3@uint64 ymm3_3 ymm17_3;
(* vpternlogq $0xd2,%ymm4,%ymm14,%ymm16            #! PC = 0x555555581067 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm14_0, ymm4_0, table);
call vpternlogq64 (ymm16_1, ymm14_1, ymm4_1, table);
call vpternlogq64 (ymm16_2, ymm14_2, ymm4_2, table);
call vpternlogq64 (ymm16_3, ymm14_3, ymm4_3, table);
(* vpxorq %ymm30,%ymm27,%ymm27                     #! PC = 0x55555558106e *)
xor ymm27_0@uint64 ymm27_0 ymm30_0;
xor ymm27_1@uint64 ymm27_1 ymm30_1;
xor ymm27_2@uint64 ymm27_2 ymm30_2;
xor ymm27_3@uint64 ymm27_3 ymm30_3;
(* vpternlogq $0xd2,%ymm2,%ymm4,%ymm14             #! PC = 0x555555581074 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm4_0, ymm2_0, table);
call vpternlogq64 (ymm14_1, ymm4_1, ymm2_1, table);
call vpternlogq64 (ymm14_2, ymm4_2, ymm2_2, table);
call vpternlogq64 (ymm14_3, ymm4_3, ymm2_3, table);
(* vpxorq %ymm29,%ymm9,%ymm9                       #! PC = 0x55555558107b *)
xor ymm9_0@uint64 ymm9_0 ymm29_0;
xor ymm9_1@uint64 ymm9_1 ymm29_1;
xor ymm9_2@uint64 ymm9_2 ymm29_2;
xor ymm9_3@uint64 ymm9_3 ymm29_3;
(* vpxorq %ymm29,%ymm12,%ymm2                      #! PC = 0x555555581081 *)
xor ymm2_0@uint64 ymm12_0 ymm29_0;
xor ymm2_1@uint64 ymm12_1 ymm29_1;
xor ymm2_2@uint64 ymm12_2 ymm29_2;
xor ymm2_3@uint64 ymm12_3 ymm29_3;
(* vprorq $0x1c,%ymm27,%ymm27                      #! PC = 0x555555581087 *)
ror ymm27_0 ymm27_0 0x1c;
ror ymm27_1 ymm27_1 0x1c;
ror ymm27_2 ymm27_2 0x1c;
ror ymm27_3 ymm27_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x55555558108e *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm19,%ymm19                      #! PC = 0x555555581095 *)
rol ymm19_0 ymm19_0 0x12;
rol ymm19_1 ymm19_1 0x12;
rol ymm19_2 ymm19_2 0x12;
rol ymm19_3 ymm19_3 0x12;
(* vprolq $0x19,%ymm3,%ymm3                        #! PC = 0x55555558109c *)
rol ymm3_0 ymm3_0 0x19;
rol ymm3_1 ymm3_1 0x19;
rol ymm3_2 ymm3_2 0x19;
rol ymm3_3 ymm3_3 0x19;
(* vprolq $0x8,%ymm2,%ymm2                         #! PC = 0x5555555810a3 *)
rol ymm2_0 ymm2_0 0x8;
rol ymm2_1 ymm2_1 0x8;
rol ymm2_2 ymm2_2 0x8;
rol ymm2_3 ymm2_3 0x8;
(* vpxorq %ymm24,%ymm7,%ymm7                       #! PC = 0x5555555810aa *)
xor ymm7_0@uint64 ymm7_0 ymm24_0;
xor ymm7_1@uint64 ymm7_1 ymm24_1;
xor ymm7_2@uint64 ymm7_2 ymm24_2;
xor ymm7_3@uint64 ymm7_3 ymm24_3;
(* vpxorq %ymm20,%ymm8,%ymm8                       #! PC = 0x5555555810b0 *)
xor ymm8_0@uint64 ymm8_0 ymm20_0;
xor ymm8_1@uint64 ymm8_1 ymm20_1;
xor ymm8_2@uint64 ymm8_2 ymm20_2;
xor ymm8_3@uint64 ymm8_3 ymm20_3;
(* vpxorq %ymm17,%ymm21,%ymm21                     #! PC = 0x5555555810b6 *)
xor ymm21_0@uint64 ymm21_0 ymm17_0;
xor ymm21_1@uint64 ymm21_1 ymm17_1;
xor ymm21_2@uint64 ymm21_2 ymm17_2;
xor ymm21_3@uint64 ymm21_3 ymm17_3;
(* vprolq $0xa,%ymm7,%ymm7                         #! PC = 0x5555555810bc *)
rol ymm7_0 ymm7_0 0xa;
rol ymm7_1 ymm7_1 0xa;
rol ymm7_2 ymm7_2 0xa;
rol ymm7_3 ymm7_3 0xa;
(* vprolq $0xf,%ymm8,%ymm8                         #! PC = 0x5555555810c3 *)
rol ymm8_0 ymm8_0 0xf;
rol ymm8_1 ymm8_1 0xf;
rol ymm8_2 ymm8_2 0xf;
rol ymm8_3 ymm8_3 0xf;
(* vprorq $0x8,%ymm21,%ymm21                       #! PC = 0x5555555810ca *)
ror ymm21_0 ymm21_0 0x8;
ror ymm21_1 ymm21_1 0x8;
ror ymm21_2 ymm21_2 0x8;
ror ymm21_3 ymm21_3 0x8;
(* vmovdqa %ymm15,%ymm4                            #! PC = 0x5555555810d1 *)
mov ymm4_0 ymm15_0;
mov ymm4_1 ymm15_1;
mov ymm4_2 ymm15_2;
mov ymm4_3 ymm15_3;
(* vmovdqa %ymm6,%ymm12                            #! PC = 0x5555555810d5 *)
mov ymm12_0 ymm6_0;
mov ymm12_1 ymm6_1;
mov ymm12_2 ymm6_2;
mov ymm12_3 ymm6_3;
(* vpternlogq $0xd2,%ymm3,%ymm6,%ymm4              #! PC = 0x5555555810d9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm6_0, ymm3_0, table);
call vpternlogq64 (ymm4_1, ymm6_1, ymm3_1, table);
call vpternlogq64 (ymm4_2, ymm6_2, ymm3_2, table);
call vpternlogq64 (ymm4_3, ymm6_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm3,%ymm12             #! PC = 0x5555555810e0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm3_0, ymm2_0, table);
call vpternlogq64 (ymm12_1, ymm3_1, ymm2_1, table);
call vpternlogq64 (ymm12_2, ymm3_2, ymm2_2, table);
call vpternlogq64 (ymm12_3, ymm3_3, ymm2_3, table);
(* vpxorq %ymm17,%ymm13,%ymm13                     #! PC = 0x5555555810e7 *)
xor ymm13_0@uint64 ymm13_0 ymm17_0;
xor ymm13_1@uint64 ymm13_1 ymm17_1;
xor ymm13_2@uint64 ymm13_2 ymm17_2;
xor ymm13_3@uint64 ymm13_3 ymm17_3;
(* vpternlogq $0xd2,%ymm19,%ymm2,%ymm3             #! PC = 0x5555555810ed *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm2_0, ymm19_0, table);
call vpternlogq64 (ymm3_1, ymm2_1, ymm19_1, table);
call vpternlogq64 (ymm3_2, ymm2_2, ymm19_2, table);
call vpternlogq64 (ymm3_3, ymm2_3, ymm19_3, table);
(* vpxorq %ymm20,%ymm0,%ymm0                       #! PC = 0x5555555810f4 *)
xor ymm0_0@uint64 ymm0_0 ymm20_0;
xor ymm0_1@uint64 ymm0_1 ymm20_1;
xor ymm0_2@uint64 ymm0_2 ymm20_2;
xor ymm0_3@uint64 ymm0_3 ymm20_3;
(* vpternlogq $0xd2,%ymm15,%ymm19,%ymm2            #! PC = 0x5555555810fa *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm19_0, ymm15_0, table);
call vpternlogq64 (ymm2_1, ymm19_1, ymm15_1, table);
call vpternlogq64 (ymm2_2, ymm19_2, ymm15_2, table);
call vpternlogq64 (ymm2_3, ymm19_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm15,%ymm19            #! PC = 0x555555581101 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm15_0, ymm6_0, table);
call vpternlogq64 (ymm19_1, ymm15_1, ymm6_1, table);
call vpternlogq64 (ymm19_2, ymm15_2, ymm6_2, table);
call vpternlogq64 (ymm19_3, ymm15_3, ymm6_3, table);
(* vmovdqa %ymm9,%ymm6                             #! PC = 0x555555581108 *)
mov ymm6_0 ymm9_0;
mov ymm6_1 ymm9_1;
mov ymm6_2 ymm9_2;
mov ymm6_3 ymm9_3;
(* vmovdqa64 %ymm27,%ymm15                         #! PC = 0x55555558110c *)
mov ymm15_0 ymm27_0;
mov ymm15_1 ymm27_1;
mov ymm15_2 ymm27_2;
mov ymm15_3 ymm27_3;
(* vprorq $0x2,%ymm0,%ymm20                        #! PC = 0x555555581112 *)
ror ymm20_0 ymm0_0 0x2;
ror ymm20_1 ymm0_1 0x2;
ror ymm20_2 ymm0_2 0x2;
ror ymm20_3 ymm0_3 0x2;
(* vpternlogq $0xd2,%ymm7,%ymm27,%ymm6             #! PC = 0x555555581119 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm27_0, ymm7_0, table);
call vpternlogq64 (ymm6_1, ymm27_1, ymm7_1, table);
call vpternlogq64 (ymm6_2, ymm27_2, ymm7_2, table);
call vpternlogq64 (ymm6_3, ymm27_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm7,%ymm15             #! PC = 0x555555581120 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm7_0, ymm8_0, table);
call vpternlogq64 (ymm15_1, ymm7_1, ymm8_1, table);
call vpternlogq64 (ymm15_2, ymm7_2, ymm8_2, table);
call vpternlogq64 (ymm15_3, ymm7_3, ymm8_3, table);
(* vpxorq %ymm30,%ymm26,%ymm26                     #! PC = 0x555555581127 *)
xor ymm26_0@uint64 ymm26_0 ymm30_0;
xor ymm26_1@uint64 ymm26_1 ymm30_1;
xor ymm26_2@uint64 ymm26_2 ymm30_2;
xor ymm26_3@uint64 ymm26_3 ymm30_3;
(* vpternlogq $0xd2,%ymm21,%ymm8,%ymm7             #! PC = 0x55555558112d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm8_0, ymm21_0, table);
call vpternlogq64 (ymm7_1, ymm8_1, ymm21_1, table);
call vpternlogq64 (ymm7_2, ymm8_2, ymm21_2, table);
call vpternlogq64 (ymm7_3, ymm8_3, ymm21_3, table);
(* vpxorq %ymm29,%ymm28,%ymm28                     #! PC = 0x555555581134 *)
xor ymm28_0@uint64 ymm28_0 ymm29_0;
xor ymm28_1@uint64 ymm28_1 ymm29_1;
xor ymm28_2@uint64 ymm28_2 ymm29_2;
xor ymm28_3@uint64 ymm28_3 ymm29_3;
(* vpternlogq $0xd2,%ymm9,%ymm21,%ymm8             #! PC = 0x55555558113a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm21_0, ymm9_0, table);
call vpternlogq64 (ymm8_1, ymm21_1, ymm9_1, table);
call vpternlogq64 (ymm8_2, ymm21_2, ymm9_2, table);
call vpternlogq64 (ymm8_3, ymm21_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm27,%ymm9,%ymm21            #! PC = 0x555555581141 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm9_0, ymm27_0, table);
call vpternlogq64 (ymm21_1, ymm9_1, ymm27_1, table);
call vpternlogq64 (ymm21_2, ymm9_2, ymm27_2, table);
call vpternlogq64 (ymm21_3, ymm9_3, ymm27_3, table);
(* vpxorq %ymm24,%ymm25,%ymm9                      #! PC = 0x555555581148 *)
xor ymm9_0@uint64 ymm25_0 ymm24_0;
xor ymm9_1@uint64 ymm25_1 ymm24_1;
xor ymm9_2@uint64 ymm25_2 ymm24_2;
xor ymm9_3@uint64 ymm25_3 ymm24_3;
(* vprorq $0x9,%ymm13,%ymm24                       #! PC = 0x55555558114e *)
ror ymm24_0 ymm13_0 0x9;
ror ymm24_1 ymm13_1 0x9;
ror ymm24_2 ymm13_2 0x9;
ror ymm24_3 ymm13_3 0x9;
(* vprorq $0x17,%ymm26,%ymm26                      #! PC = 0x555555581155 *)
ror ymm26_0 ymm26_0 0x17;
ror ymm26_1 ymm26_1 0x17;
ror ymm26_2 ymm26_2 0x17;
ror ymm26_3 ymm26_3 0x17;
(* vprolq $0x2,%ymm9,%ymm9                         #! PC = 0x55555558115c *)
rol ymm9_0 ymm9_0 0x2;
rol ymm9_1 ymm9_1 0x2;
rol ymm9_2 ymm9_2 0x2;
rol ymm9_3 ymm9_3 0x2;
(* vprorq $0x19,%ymm28,%ymm28                      #! PC = 0x555555581163 *)
ror ymm28_0 ymm28_0 0x19;
ror ymm28_1 ymm28_1 0x19;
ror ymm28_2 ymm28_2 0x19;
ror ymm28_3 ymm28_3 0x19;
(* vmovdqa64 %ymm20,%ymm13                         #! PC = 0x55555558116a *)
mov ymm13_0 ymm20_0;
mov ymm13_1 ymm20_1;
mov ymm13_2 ymm20_2;
mov ymm13_3 ymm20_3;
(* vmovdqa64 %ymm5,%ymm25                          #! PC = 0x555555581170 *)
mov ymm25_0 ymm5_0;
mov ymm25_1 ymm5_1;
mov ymm25_2 ymm5_2;
mov ymm25_3 ymm5_3;
(* vmovdqa64 %ymm24,%ymm17                         #! PC = 0x555555581176 *)
mov ymm17_0 ymm24_0;
mov ymm17_1 ymm24_1;
mov ymm17_2 ymm24_2;
mov ymm17_3 ymm24_3;
(* vmovdqa64 %ymm26,%ymm0                          #! PC = 0x55555558117c *)
mov ymm0_0 ymm26_0;
mov ymm0_1 ymm26_1;
mov ymm0_2 ymm26_2;
mov ymm0_3 ymm26_3;
(* vpternlogq $0xd2,%ymm20,%ymm9,%ymm0             #! PC = 0x555555581182 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm9_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm9_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm9_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm9_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm24,%ymm13           #! PC = 0x555555581189 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm24_0, ymm28_0, table);
call vpternlogq64 (ymm13_1, ymm24_1, ymm28_1, table);
call vpternlogq64 (ymm13_2, ymm24_2, ymm28_2, table);
call vpternlogq64 (ymm13_3, ymm24_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm26,%ymm28,%ymm17           #! PC = 0x555555581190 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm28_0, ymm26_0, table);
call vpternlogq64 (ymm17_1, ymm28_1, ymm26_1, table);
call vpternlogq64 (ymm17_2, ymm28_2, ymm26_2, table);
call vpternlogq64 (ymm17_3, ymm28_3, ymm26_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm26,%ymm28            #! PC = 0x555555581197 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm26_0, ymm9_0, table);
call vpternlogq64 (ymm28_1, ymm26_1, ymm9_1, table);
call vpternlogq64 (ymm28_2, ymm26_2, ymm9_2, table);
call vpternlogq64 (ymm28_3, ymm26_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm28,%ymm1,%ymm25            #! PC = 0x55555558119e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm1_0, ymm28_0, table);
call vpternlogq64 (ymm25_1, ymm1_1, ymm28_1, table);
call vpternlogq64 (ymm25_2, ymm1_2, ymm28_2, table);
call vpternlogq64 (ymm25_3, ymm1_3, ymm28_3, table);
(* vpternlogq $0x96,%ymm3,%ymm7,%ymm25             #! PC = 0x5555555811a5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm7_0, ymm3_0, table);
call vpternlogq64 (ymm25_1, ymm7_1, ymm3_1, table);
call vpternlogq64 (ymm25_2, ymm7_2, ymm3_2, table);
call vpternlogq64 (ymm25_3, ymm7_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm24,%ymm20,%ymm9            #! PC = 0x5555555811ac *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm20_0, ymm24_0, table);
call vpternlogq64 (ymm9_1, ymm20_1, ymm24_1, table);
call vpternlogq64 (ymm9_2, ymm20_2, ymm24_2, table);
call vpternlogq64 (ymm9_3, ymm20_3, ymm24_3, table);
(* vprolq $0x1,%ymm25,%ymm20                       #! PC = 0x5555555811b3 *)
rol ymm20_0 ymm25_0 0x1;
rol ymm20_1 ymm25_1 0x1;
rol ymm20_2 ymm25_2 0x1;
rol ymm20_3 ymm25_3 0x1;
(* vmovdqa64 %ymm0,%ymm24                          #! PC = 0x5555555811ba *)
mov ymm24_0 ymm0_0;
mov ymm24_1 ymm0_1;
mov ymm24_2 ymm0_2;
mov ymm24_3 ymm0_3;
(* vpternlogq $0x96,%ymm2,%ymm8,%ymm24             #! PC = 0x5555555811c0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm8_0, ymm2_0, table);
call vpternlogq64 (ymm24_1, ymm8_1, ymm2_1, table);
call vpternlogq64 (ymm24_2, ymm8_2, ymm2_2, table);
call vpternlogq64 (ymm24_3, ymm8_3, ymm2_3, table);
(* vpternlogq $0x96,%ymm10,%ymm16,%ymm24           #! PC = 0x5555555811c7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm16_0, ymm10_0, table);
call vpternlogq64 (ymm24_1, ymm16_1, ymm10_1, table);
call vpternlogq64 (ymm24_2, ymm16_2, ymm10_2, table);
call vpternlogq64 (ymm24_3, ymm16_3, ymm10_3, table);
(* vmovdqa64 %ymm19,%ymm29                         #! PC = 0x5555555811ce *)
mov ymm29_0 ymm19_0;
mov ymm29_1 ymm19_1;
mov ymm29_2 ymm19_2;
mov ymm29_3 ymm19_3;
(* vpternlogq $0x96,%ymm11,%ymm14,%ymm29           #! PC = 0x5555555811d4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm14_0, ymm11_0, table);
call vpternlogq64 (ymm29_1, ymm14_1, ymm11_1, table);
call vpternlogq64 (ymm29_2, ymm14_2, ymm11_2, table);
call vpternlogq64 (ymm29_3, ymm14_3, ymm11_3, table);
(* vmovdqa64 %ymm20,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555811db *)
mov L0x7fffffffd960 ymm20_0;
mov L0x7fffffffd968 ymm20_1;
mov L0x7fffffffd970 ymm20_2;
mov L0x7fffffffd978 ymm20_3;
(* vprolq $0x1,%ymm24,%ymm20                       #! PC = 0x5555555811e6 *)
rol ymm20_0 ymm24_0 0x1;
rol ymm20_1 ymm24_1 0x1;
rol ymm20_2 ymm24_2 0x1;
rol ymm20_3 ymm24_3 0x1;
(* vpternlogq $0x96,%ymm21,%ymm9,%ymm29            #! PC = 0x5555555811ed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm9_0, ymm21_0, table);
call vpternlogq64 (ymm29_1, ymm9_1, ymm21_1, table);
call vpternlogq64 (ymm29_2, ymm9_2, ymm21_2, table);
call vpternlogq64 (ymm29_3, ymm9_3, ymm21_3, table);
(* vmovdqa64 %ymm18,%ymm27                         #! PC = 0x5555555811f4 *)
mov ymm27_0 ymm18_0;
mov ymm27_1 ymm18_1;
mov ymm27_2 ymm18_2;
mov ymm27_3 ymm18_3;
(* vpternlogq $0x96,%ymm6,%ymm13,%ymm27            #! PC = 0x5555555811fa *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm13_0, ymm6_0, table);
call vpternlogq64 (ymm27_1, ymm13_1, ymm6_1, table);
call vpternlogq64 (ymm27_2, ymm13_2, ymm6_2, table);
call vpternlogq64 (ymm27_3, ymm13_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm31,%ymm4,%ymm27            #! PC = 0x555555581201 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm4_0, ymm31_0, table);
call vpternlogq64 (ymm27_1, ymm4_1, ymm31_1, table);
call vpternlogq64 (ymm27_2, ymm4_2, ymm31_2, table);
call vpternlogq64 (ymm27_3, ymm4_3, ymm31_3, table);
(* vmovdqa64 %ymm15,%ymm26                         #! PC = 0x555555581208 *)
mov ymm26_0 ymm15_0;
mov ymm26_1 ymm15_1;
mov ymm26_2 ymm15_2;
mov ymm26_3 ymm15_3;
(* vmovdqa64 %ymm20,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x55555558120e *)
mov L0x7fffffffd940 ymm20_0;
mov L0x7fffffffd948 ymm20_1;
mov L0x7fffffffd950 ymm20_2;
mov L0x7fffffffd958 ymm20_3;
(* vprolq $0x1,%ymm29,%ymm20                       #! PC = 0x555555581219 *)
rol ymm20_0 ymm29_0 0x1;
rol ymm20_1 ymm29_1 0x1;
rol ymm20_2 ymm29_2 0x1;
rol ymm20_3 ymm29_3 0x1;
(* vpternlogq $0x96,%ymm23,%ymm12,%ymm26           #! PC = 0x555555581220 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm12_0, ymm23_0, table);
call vpternlogq64 (ymm26_1, ymm12_1, ymm23_1, table);
call vpternlogq64 (ymm26_2, ymm12_2, ymm23_2, table);
call vpternlogq64 (ymm26_3, ymm12_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm17,%ymm22,%ymm26           #! PC = 0x555555581227 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm22_0, ymm17_0, table);
call vpternlogq64 (ymm26_1, ymm22_1, ymm17_1, table);
call vpternlogq64 (ymm26_2, ymm22_2, ymm17_2, table);
call vpternlogq64 (ymm26_3, ymm22_3, ymm17_3, table);
(* vprolq $0x1,%ymm26,%ymm30                       #! PC = 0x55555558122e *)
rol ymm30_0 ymm26_0 0x1;
rol ymm30_1 ymm26_1 0x1;
rol ymm30_2 ymm26_2 0x1;
rol ymm30_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd940; Value = 0xbd16fa47bd24d48d; PC = 0x555555581235 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd940;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd948;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd950;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd958;
(* movabs $0x8000000000008002,%r10                 #! PC = 0x555555581240 *)
mov r10 0x8000000000008002@uint64;
(* vmovdqa64 %ymm20,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x55555558124a *)
mov L0x7fffffffd920 ymm20_0;
mov L0x7fffffffd928 ymm20_1;
mov L0x7fffffffd930 ymm20_2;
mov L0x7fffffffd938 ymm20_3;
(* vprolq $0x1,%ymm27,%ymm20                       #! PC = 0x555555581255 *)
rol ymm20_0 ymm27_0 0x1;
rol ymm20_1 ymm27_1 0x1;
rol ymm20_2 ymm27_2 0x1;
rol ymm20_3 ymm27_3 0x1;
(* vpxorq 0x88(%rsp),%ymm27,%ymm27                 #! EA = L0x7fffffffd960; Value = 0x484cf639324f6c98; PC = 0x55555558125c *)
xor ymm27_0@uint64 ymm27_0 L0x7fffffffd960;
xor ymm27_1@uint64 ymm27_1 L0x7fffffffd968;
xor ymm27_2@uint64 ymm27_2 L0x7fffffffd970;
xor ymm27_3@uint64 ymm27_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd920; Value = 0x801a4b9e6c68b172; PC = 0x555555581267 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd920;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd928;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd930;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd938;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581272 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprorq $0x14,%ymm23,%ymm23                      #! PC = 0x555555581278 *)
ror ymm23_0 ymm23_0 0x14;
ror ymm23_1 ymm23_1 0x14;
ror ymm23_2 ymm23_2 0x14;
ror ymm23_3 ymm23_3 0x14;
(* vpxorq %ymm26,%ymm3,%ymm3                       #! PC = 0x55555558127f *)
xor ymm3_0@uint64 ymm3_0 ymm26_0;
xor ymm3_1@uint64 ymm3_1 ymm26_1;
xor ymm3_2@uint64 ymm3_2 ymm26_2;
xor ymm3_3@uint64 ymm3_3 ymm26_3;
(* vpxorq %ymm20,%ymm24,%ymm24                     #! PC = 0x555555581285 *)
xor ymm24_0@uint64 ymm24_0 ymm20_0;
xor ymm24_1@uint64 ymm24_1 ymm20_1;
xor ymm24_2@uint64 ymm24_2 ymm20_2;
xor ymm24_3@uint64 ymm24_3 ymm20_3;
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x55555558128b *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpxorq %ymm24,%ymm9,%ymm9                       #! PC = 0x555555581291 *)
xor ymm9_0@uint64 ymm9_0 ymm24_0;
xor ymm9_1@uint64 ymm9_1 ymm24_1;
xor ymm9_2@uint64 ymm9_2 ymm24_2;
xor ymm9_3@uint64 ymm9_3 ymm24_3;
(* vpxorq %ymm30,%ymm29,%ymm29                     #! PC = 0x555555581297 *)
xor ymm29_0@uint64 ymm29_0 ymm30_0;
xor ymm29_1@uint64 ymm29_1 ymm30_1;
xor ymm29_2@uint64 ymm29_2 ymm30_2;
xor ymm29_3@uint64 ymm29_3 ymm30_3;
(* vprorq $0x15,%ymm3,%ymm3                        #! PC = 0x55555558129d *)
ror ymm3_0 ymm3_0 0x15;
ror ymm3_1 ymm3_1 0x15;
ror ymm3_2 ymm3_2 0x15;
ror ymm3_3 ymm3_3 0x15;
(* vprolq $0x15,%ymm8,%ymm8                        #! PC = 0x5555555812a4 *)
rol ymm8_0 ymm8_0 0x15;
rol ymm8_1 ymm8_1 0x15;
rol ymm8_2 ymm8_2 0x15;
rol ymm8_3 ymm8_3 0x15;
(* vprolq $0xe,%ymm9,%ymm9                         #! PC = 0x5555555812ab *)
rol ymm9_0 ymm9_0 0xe;
rol ymm9_1 ymm9_1 0xe;
rol ymm9_2 ymm9_2 0xe;
rol ymm9_3 ymm9_3 0xe;
(* vpxorq %ymm25,%ymm10,%ymm10                     #! PC = 0x5555555812b2 *)
xor ymm10_0@uint64 ymm10_0 ymm25_0;
xor ymm10_1@uint64 ymm10_1 ymm25_1;
xor ymm10_2@uint64 ymm10_2 ymm25_2;
xor ymm10_3@uint64 ymm10_3 ymm25_3;
(* vpxorq %ymm24,%ymm14,%ymm14                     #! PC = 0x5555555812b8 *)
xor ymm14_0@uint64 ymm14_0 ymm24_0;
xor ymm14_1@uint64 ymm14_1 ymm24_1;
xor ymm14_2@uint64 ymm14_2 ymm24_2;
xor ymm14_3@uint64 ymm14_3 ymm24_3;
(* vprolq $0x1c,%ymm10,%ymm10                      #! PC = 0x5555555812be *)
rol ymm10_0 ymm10_0 0x1c;
rol ymm10_1 ymm10_1 0x1c;
rol ymm10_2 ymm10_2 0x1c;
rol ymm10_3 ymm10_3 0x1c;
(* vprolq $0x14,%ymm14,%ymm14                      #! PC = 0x5555555812c5 *)
rol ymm14_0 ymm14_0 0x14;
rol ymm14_1 ymm14_1 0x14;
rol ymm14_2 ymm14_2 0x14;
rol ymm14_3 ymm14_3 0x14;
(* vpxorq %ymm29,%ymm4,%ymm4                       #! PC = 0x5555555812cc *)
xor ymm4_0@uint64 ymm4_0 ymm29_0;
xor ymm4_1@uint64 ymm4_1 ymm29_1;
xor ymm4_2@uint64 ymm4_2 ymm29_2;
xor ymm4_3@uint64 ymm4_3 ymm29_3;
(* vpxorq %ymm27,%ymm15,%ymm15                     #! PC = 0x5555555812d2 *)
xor ymm15_0@uint64 ymm15_0 ymm27_0;
xor ymm15_1@uint64 ymm15_1 ymm27_1;
xor ymm15_2@uint64 ymm15_2 ymm27_2;
xor ymm15_3@uint64 ymm15_3 ymm27_3;
(* vpxorq %ymm26,%ymm28,%ymm28                     #! PC = 0x5555555812d8 *)
xor ymm28_0@uint64 ymm28_0 ymm26_0;
xor ymm28_1@uint64 ymm28_1 ymm26_1;
xor ymm28_2@uint64 ymm28_2 ymm26_2;
xor ymm28_3@uint64 ymm28_3 ymm26_3;
(* vpxorq %ymm27,%ymm22,%ymm22                     #! PC = 0x5555555812de *)
xor ymm22_0@uint64 ymm22_0 ymm27_0;
xor ymm22_1@uint64 ymm22_1 ymm27_1;
xor ymm22_2@uint64 ymm22_2 ymm27_2;
xor ymm22_3@uint64 ymm22_3 ymm27_3;
(* vpxorq %ymm26,%ymm5,%ymm5                       #! PC = 0x5555555812e4 *)
xor ymm5_0@uint64 ymm5_0 ymm26_0;
xor ymm5_1@uint64 ymm5_1 ymm26_1;
xor ymm5_2@uint64 ymm5_2 ymm26_2;
xor ymm5_3@uint64 ymm5_3 ymm26_3;
(* vprolq $0x1,%ymm22,%ymm22                       #! PC = 0x5555555812ea *)
rol ymm22_0 ymm22_0 0x1;
rol ymm22_1 ymm22_1 0x1;
rol ymm22_2 ymm22_2 0x1;
rol ymm22_3 ymm22_3 0x1;
(* vprolq $0x6,%ymm5,%ymm5                         #! PC = 0x5555555812f1 *)
rol ymm5_0 ymm5_0 0x6;
rol ymm5_1 ymm5_1 0x6;
rol ymm5_2 ymm5_2 0x6;
rol ymm5_3 ymm5_3 0x6;
(* vprolq $0x3,%ymm4,%ymm4                         #! PC = 0x5555555812f8 *)
rol ymm4_0 ymm4_0 0x3;
rol ymm4_1 ymm4_1 0x3;
rol ymm4_2 ymm4_2 0x3;
rol ymm4_3 ymm4_3 0x3;
(* vprorq $0x13,%ymm15,%ymm15                      #! PC = 0x5555555812ff *)
ror ymm15_0 ymm15_0 0x13;
ror ymm15_1 ymm15_1 0x13;
ror ymm15_2 ymm15_2 0x13;
ror ymm15_3 ymm15_3 0x13;
(* vprorq $0x3,%ymm28,%ymm28                       #! PC = 0x555555581306 *)
ror ymm28_0 ymm28_0 0x3;
ror ymm28_1 ymm28_1 0x3;
ror ymm28_2 ymm28_2 0x3;
ror ymm28_3 ymm28_3 0x3;
(* vpxorq %ymm29,%ymm13,%ymm13                     #! PC = 0x55555558130d *)
xor ymm13_0@uint64 ymm13_0 ymm29_0;
xor ymm13_1@uint64 ymm13_1 ymm29_1;
xor ymm13_2@uint64 ymm13_2 ymm29_2;
xor ymm13_3@uint64 ymm13_3 ymm29_3;
(* vpxorq %ymm25,%ymm2,%ymm2                       #! PC = 0x555555581313 *)
xor ymm2_0@uint64 ymm2_0 ymm25_0;
xor ymm2_1@uint64 ymm2_1 ymm25_1;
xor ymm2_2@uint64 ymm2_2 ymm25_2;
xor ymm2_3@uint64 ymm2_3 ymm25_3;
(* vpxorq %ymm24,%ymm21,%ymm21                     #! PC = 0x555555581319 *)
xor ymm21_0@uint64 ymm21_0 ymm24_0;
xor ymm21_1@uint64 ymm21_1 ymm24_1;
xor ymm21_2@uint64 ymm21_2 ymm24_2;
xor ymm21_3@uint64 ymm21_3 ymm24_3;
(* vpxorq %ymm29,%ymm31,%ymm31                     #! PC = 0x55555558131f *)
xor ymm31_0@uint64 ymm31_0 ymm29_0;
xor ymm31_1@uint64 ymm31_1 ymm29_1;
xor ymm31_2@uint64 ymm31_2 ymm29_2;
xor ymm31_3@uint64 ymm31_3 ymm29_3;
(* vpxorq %ymm24,%ymm11,%ymm11                     #! PC = 0x555555581325 *)
xor ymm11_0@uint64 ymm11_0 ymm24_0;
xor ymm11_1@uint64 ymm11_1 ymm24_1;
xor ymm11_2@uint64 ymm11_2 ymm24_2;
xor ymm11_3@uint64 ymm11_3 ymm24_3;
(* vprorq $0x1c,%ymm31,%ymm31                      #! PC = 0x55555558132b *)
ror ymm31_0 ymm31_0 0x1c;
ror ymm31_1 ymm31_1 0x1c;
ror ymm31_2 ymm31_2 0x1c;
ror ymm31_3 ymm31_3 0x1c;
(* vprolq $0x1b,%ymm11,%ymm11                      #! PC = 0x555555581332 *)
rol ymm11_0 ymm11_0 0x1b;
rol ymm11_1 ymm11_1 0x1b;
rol ymm11_2 ymm11_2 0x1b;
rol ymm11_3 ymm11_3 0x1b;
(* vprolq $0x12,%ymm13,%ymm13                      #! PC = 0x555555581339 *)
rol ymm13_0 ymm13_0 0x12;
rol ymm13_1 ymm13_1 0x12;
rol ymm13_2 ymm13_2 0x12;
rol ymm13_3 ymm13_3 0x12;
(* vprolq $0x19,%ymm2,%ymm2                        #! PC = 0x555555581340 *)
rol ymm2_0 ymm2_0 0x19;
rol ymm2_1 ymm2_1 0x19;
rol ymm2_2 ymm2_2 0x19;
rol ymm2_3 ymm2_3 0x19;
(* vprolq $0x8,%ymm21,%ymm21                       #! PC = 0x555555581347 *)
rol ymm21_0 ymm21_0 0x8;
rol ymm21_1 ymm21_1 0x8;
rol ymm21_2 ymm21_2 0x8;
rol ymm21_3 ymm21_3 0x8;
(* vpxorq %ymm27,%ymm12,%ymm12                     #! PC = 0x55555558134e *)
xor ymm12_0@uint64 ymm12_0 ymm27_0;
xor ymm12_1@uint64 ymm12_1 ymm27_1;
xor ymm12_2@uint64 ymm12_2 ymm27_2;
xor ymm12_3@uint64 ymm12_3 ymm27_3;
(* vpxorq %ymm26,%ymm7,%ymm7                       #! PC = 0x555555581354 *)
xor ymm7_0@uint64 ymm7_0 ymm26_0;
xor ymm7_1@uint64 ymm7_1 ymm26_1;
xor ymm7_2@uint64 ymm7_2 ymm26_2;
xor ymm7_3@uint64 ymm7_3 ymm26_3;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x55555558135a *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxorq %ymm26,%ymm1,%ymm1                       #! PC = 0x555555581360 *)
xor ymm1_0@uint64 ymm1_0 ymm26_0;
xor ymm1_1@uint64 ymm1_1 ymm26_1;
xor ymm1_2@uint64 ymm1_2 ymm26_2;
xor ymm1_3@uint64 ymm1_3 ymm26_3;
(* vpxorq %ymm25,%ymm16,%ymm16                     #! PC = 0x555555581366 *)
xor ymm16_0@uint64 ymm16_0 ymm25_0;
xor ymm16_1@uint64 ymm16_1 ymm25_1;
xor ymm16_2@uint64 ymm16_2 ymm25_2;
xor ymm16_3@uint64 ymm16_3 ymm25_3;
(* vpxorq %ymm18,%ymm29,%ymm18                     #! PC = 0x55555558136c *)
xor ymm18_0@uint64 ymm29_0 ymm18_0;
xor ymm18_1@uint64 ymm29_1 ymm18_1;
xor ymm18_2@uint64 ymm29_2 ymm18_2;
xor ymm18_3@uint64 ymm29_3 ymm18_3;
(* vprorq $0x2,%ymm1,%ymm1                         #! PC = 0x555555581372 *)
ror ymm1_0 ymm1_0 0x2;
ror ymm1_1 ymm1_1 0x2;
ror ymm1_2 ymm1_2 0x2;
ror ymm1_3 ymm1_3 0x2;
(* vprorq $0x9,%ymm16,%ymm25                       #! PC = 0x555555581379 *)
ror ymm25_0 ymm16_0 0x9;
ror ymm25_1 ymm16_1 0x9;
ror ymm25_2 ymm16_2 0x9;
ror ymm25_3 ymm16_3 0x9;
(* vprolq $0xa,%ymm12,%ymm12                       #! PC = 0x555555581380 *)
rol ymm12_0 ymm12_0 0xa;
rol ymm12_1 ymm12_1 0xa;
rol ymm12_2 ymm12_2 0xa;
rol ymm12_3 ymm12_3 0xa;
(* vprolq $0xf,%ymm7,%ymm7                         #! PC = 0x555555581387 *)
rol ymm7_0 ymm7_0 0xf;
rol ymm7_1 ymm7_1 0xf;
rol ymm7_2 ymm7_2 0xf;
rol ymm7_3 ymm7_3 0xf;
(* vprorq $0x8,%ymm0,%ymm0                         #! PC = 0x55555558138e *)
ror ymm0_0 ymm0_0 0x8;
ror ymm0_1 ymm0_1 0x8;
ror ymm0_2 ymm0_2 0x8;
ror ymm0_3 ymm0_3 0x8;
(* vpxorq %ymm29,%ymm6,%ymm6                       #! PC = 0x555555581395 *)
xor ymm6_0@uint64 ymm6_0 ymm29_0;
xor ymm6_1@uint64 ymm6_1 ymm29_1;
xor ymm6_2@uint64 ymm6_2 ymm29_2;
xor ymm6_3@uint64 ymm6_3 ymm29_3;
(* vpxorq %ymm27,%ymm17,%ymm17                     #! PC = 0x55555558139b *)
xor ymm17_0@uint64 ymm17_0 ymm27_0;
xor ymm17_1@uint64 ymm17_1 ymm27_1;
xor ymm17_2@uint64 ymm17_2 ymm27_2;
xor ymm17_3@uint64 ymm17_3 ymm27_3;
(* vpxorq %ymm24,%ymm19,%ymm19                     #! PC = 0x5555555813a1 *)
xor ymm19_0@uint64 ymm19_0 ymm24_0;
xor ymm19_1@uint64 ymm19_1 ymm24_1;
xor ymm19_2@uint64 ymm19_2 ymm24_2;
xor ymm19_3@uint64 ymm19_3 ymm24_3;
(* vprorq $0x17,%ymm6,%ymm6                        #! PC = 0x5555555813a7 *)
ror ymm6_0 ymm6_0 0x17;
ror ymm6_1 ymm6_1 0x17;
ror ymm6_2 ymm6_2 0x17;
ror ymm6_3 ymm6_3 0x17;
(* vprolq $0x2,%ymm17,%ymm17                       #! PC = 0x5555555813ae *)
rol ymm17_0 ymm17_0 0x2;
rol ymm17_1 ymm17_1 0x2;
rol ymm17_2 ymm17_2 0x2;
rol ymm17_3 ymm17_3 0x2;
(* vprorq $0x19,%ymm19,%ymm19                      #! PC = 0x5555555813b5 *)
ror ymm19_0 ymm19_0 0x19;
ror ymm19_1 ymm19_1 0x19;
ror ymm19_2 ymm19_2 0x19;
ror ymm19_3 ymm19_3 0x19;
(* vmovdqa64 %ymm18,%ymm30                         #! PC = 0x5555555813bc *)
mov ymm30_0 ymm18_0;
mov ymm30_1 ymm18_1;
mov ymm30_2 ymm18_2;
mov ymm30_3 ymm18_3;
(* vmovdqa64 %ymm23,%ymm20                         #! PC = 0x5555555813c2 *)
mov ymm20_0 ymm23_0;
mov ymm20_1 ymm23_1;
mov ymm20_2 ymm23_2;
mov ymm20_3 ymm23_3;
(* vpternlogq $0xd2,%ymm3,%ymm23,%ymm30            #! PC = 0x5555555813c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm23_0, ymm3_0, table);
call vpternlogq64 (ymm30_1, ymm23_1, ymm3_1, table);
call vpternlogq64 (ymm30_2, ymm23_2, ymm3_2, table);
call vpternlogq64 (ymm30_3, ymm23_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm3,%ymm20             #! PC = 0x5555555813cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm3_0, ymm8_0, table);
call vpternlogq64 (ymm20_1, ymm3_1, ymm8_1, table);
call vpternlogq64 (ymm20_2, ymm3_2, ymm8_2, table);
call vpternlogq64 (ymm20_3, ymm3_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm8,%ymm3              #! PC = 0x5555555813d6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm8_0, ymm9_0, table);
call vpternlogq64 (ymm3_1, ymm8_1, ymm9_1, table);
call vpternlogq64 (ymm3_2, ymm8_2, ymm9_2, table);
call vpternlogq64 (ymm3_3, ymm8_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm9,%ymm8             #! PC = 0x5555555813dd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm9_0, ymm18_0, table);
call vpternlogq64 (ymm8_1, ymm9_1, ymm18_1, table);
call vpternlogq64 (ymm8_2, ymm9_2, ymm18_2, table);
call vpternlogq64 (ymm8_3, ymm9_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm18,%ymm9            #! PC = 0x5555555813e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm18_0, ymm23_0, table);
call vpternlogq64 (ymm9_1, ymm18_1, ymm23_1, table);
call vpternlogq64 (ymm9_2, ymm18_2, ymm23_2, table);
call vpternlogq64 (ymm9_3, ymm18_3, ymm23_3, table);
(* vpbroadcastq %rcx,%ymm18                        #! PC = 0x5555555813eb *)
mov ymm18_0 rcx;
mov ymm18_1 rcx;
mov ymm18_2 rcx;
mov ymm18_3 rcx;
(* vpxorq %ymm30,%ymm18,%ymm18                     #! PC = 0x5555555813f1 *)
xor ymm18_0@uint64 ymm18_0 ymm30_0;
xor ymm18_1@uint64 ymm18_1 ymm30_1;
xor ymm18_2@uint64 ymm18_2 ymm30_2;
xor ymm18_3@uint64 ymm18_3 ymm30_3;
(* vmovdqa64 %ymm14,%ymm23                         #! PC = 0x5555555813f7 *)
mov ymm23_0 ymm14_0;
mov ymm23_1 ymm14_1;
mov ymm23_2 ymm14_2;
mov ymm23_3 ymm14_3;
(* vmovdqa64 %ymm10,%ymm30                         #! PC = 0x5555555813fd *)
mov ymm30_0 ymm10_0;
mov ymm30_1 ymm10_1;
mov ymm30_2 ymm10_2;
mov ymm30_3 ymm10_3;
(* vpternlogq $0xd2,%ymm4,%ymm14,%ymm30            #! PC = 0x555555581403 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm14_0, ymm4_0, table);
call vpternlogq64 (ymm30_1, ymm14_1, ymm4_1, table);
call vpternlogq64 (ymm30_2, ymm14_2, ymm4_2, table);
call vpternlogq64 (ymm30_3, ymm14_3, ymm4_3, table);
(* vpternlogq $0xd2,%ymm15,%ymm4,%ymm23            #! PC = 0x55555558140a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm4_0, ymm15_0, table);
call vpternlogq64 (ymm23_1, ymm4_1, ymm15_1, table);
call vpternlogq64 (ymm23_2, ymm4_2, ymm15_2, table);
call vpternlogq64 (ymm23_3, ymm4_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm15,%ymm4            #! PC = 0x555555581411 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm15_0, ymm28_0, table);
call vpternlogq64 (ymm4_1, ymm15_1, ymm28_1, table);
call vpternlogq64 (ymm4_2, ymm15_2, ymm28_2, table);
call vpternlogq64 (ymm4_3, ymm15_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm28,%ymm15           #! PC = 0x555555581418 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm28_0, ymm10_0, table);
call vpternlogq64 (ymm15_1, ymm28_1, ymm10_1, table);
call vpternlogq64 (ymm15_2, ymm28_2, ymm10_2, table);
call vpternlogq64 (ymm15_3, ymm28_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm10,%ymm28           #! PC = 0x55555558141f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm10_0, ymm14_0, table);
call vpternlogq64 (ymm28_1, ymm10_1, ymm14_1, table);
call vpternlogq64 (ymm28_2, ymm10_2, ymm14_2, table);
call vpternlogq64 (ymm28_3, ymm10_3, ymm14_3, table);
(* vmovdqa64 %ymm22,%ymm14                         #! PC = 0x555555581426 *)
mov ymm14_0 ymm22_0;
mov ymm14_1 ymm22_1;
mov ymm14_2 ymm22_2;
mov ymm14_3 ymm22_3;
(* vmovdqa %ymm5,%ymm10                            #! PC = 0x55555558142c *)
mov ymm10_0 ymm5_0;
mov ymm10_1 ymm5_1;
mov ymm10_2 ymm5_2;
mov ymm10_3 ymm5_3;
(* vpternlogq $0xd2,%ymm2,%ymm5,%ymm14             #! PC = 0x555555581430 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm5_0, ymm2_0, table);
call vpternlogq64 (ymm14_1, ymm5_1, ymm2_1, table);
call vpternlogq64 (ymm14_2, ymm5_2, ymm2_2, table);
call vpternlogq64 (ymm14_3, ymm5_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm2,%ymm10            #! PC = 0x555555581437 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm21_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm21_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm21_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm21,%ymm2            #! PC = 0x55555558143e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm21_0, ymm13_0, table);
call vpternlogq64 (ymm2_1, ymm21_1, ymm13_1, table);
call vpternlogq64 (ymm2_2, ymm21_2, ymm13_2, table);
call vpternlogq64 (ymm2_3, ymm21_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm13,%ymm21           #! PC = 0x555555581445 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm13_0, ymm22_0, table);
call vpternlogq64 (ymm21_1, ymm13_1, ymm22_1, table);
call vpternlogq64 (ymm21_2, ymm13_2, ymm22_2, table);
call vpternlogq64 (ymm21_3, ymm13_3, ymm22_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm22,%ymm13            #! PC = 0x55555558144c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm22_0, ymm5_0, table);
call vpternlogq64 (ymm13_1, ymm22_1, ymm5_1, table);
call vpternlogq64 (ymm13_2, ymm22_2, ymm5_2, table);
call vpternlogq64 (ymm13_3, ymm22_3, ymm5_3, table);
(* vmovdqa %ymm11,%ymm5                            #! PC = 0x555555581453 *)
mov ymm5_0 ymm11_0;
mov ymm5_1 ymm11_1;
mov ymm5_2 ymm11_2;
mov ymm5_3 ymm11_3;
(* vmovdqa64 %ymm31,%ymm22                         #! PC = 0x555555581457 *)
mov ymm22_0 ymm31_0;
mov ymm22_1 ymm31_1;
mov ymm22_2 ymm31_2;
mov ymm22_3 ymm31_3;
(* vpternlogq $0xd2,%ymm12,%ymm31,%ymm5            #! PC = 0x55555558145d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm31_0, ymm12_0, table);
call vpternlogq64 (ymm5_1, ymm31_1, ymm12_1, table);
call vpternlogq64 (ymm5_2, ymm31_2, ymm12_2, table);
call vpternlogq64 (ymm5_3, ymm31_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm12,%ymm22            #! PC = 0x555555581464 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm12_0, ymm7_0, table);
call vpternlogq64 (ymm22_1, ymm12_1, ymm7_1, table);
call vpternlogq64 (ymm22_2, ymm12_2, ymm7_2, table);
call vpternlogq64 (ymm22_3, ymm12_3, ymm7_3, table);
(* vmovdqa64 %ymm25,%ymm16                         #! PC = 0x55555558146b *)
mov ymm16_0 ymm25_0;
mov ymm16_1 ymm25_1;
mov ymm16_2 ymm25_2;
mov ymm16_3 ymm25_3;
(* vpternlogq $0xd2,%ymm0,%ymm7,%ymm12             #! PC = 0x555555581471 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm7_0, ymm0_0, table);
call vpternlogq64 (ymm12_1, ymm7_1, ymm0_1, table);
call vpternlogq64 (ymm12_2, ymm7_2, ymm0_2, table);
call vpternlogq64 (ymm12_3, ymm7_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm0,%ymm7             #! PC = 0x555555581478 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm0_0, ymm11_0, table);
call vpternlogq64 (ymm7_1, ymm0_1, ymm11_1, table);
call vpternlogq64 (ymm7_2, ymm0_2, ymm11_2, table);
call vpternlogq64 (ymm7_3, ymm0_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm11,%ymm0            #! PC = 0x55555558147f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm11_0, ymm31_0, table);
call vpternlogq64 (ymm0_1, ymm11_1, ymm31_1, table);
call vpternlogq64 (ymm0_2, ymm11_2, ymm31_2, table);
call vpternlogq64 (ymm0_3, ymm11_3, ymm31_3, table);
(* vmovdqa %ymm1,%ymm11                            #! PC = 0x555555581486 *)
mov ymm11_0 ymm1_0;
mov ymm11_1 ymm1_1;
mov ymm11_2 ymm1_2;
mov ymm11_3 ymm1_3;
(* vpternlogq $0xd2,%ymm19,%ymm25,%ymm11           #! PC = 0x55555558148a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm25_0, ymm19_0, table);
call vpternlogq64 (ymm11_1, ymm25_1, ymm19_1, table);
call vpternlogq64 (ymm11_2, ymm25_2, ymm19_2, table);
call vpternlogq64 (ymm11_3, ymm25_3, ymm19_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm19,%ymm16            #! PC = 0x555555581491 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm19_0, ymm6_0, table);
call vpternlogq64 (ymm16_1, ymm19_1, ymm6_1, table);
call vpternlogq64 (ymm16_2, ymm19_2, ymm6_2, table);
call vpternlogq64 (ymm16_3, ymm19_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm6,%ymm19            #! PC = 0x555555581498 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm6_0, ymm17_0, table);
call vpternlogq64 (ymm19_1, ymm6_1, ymm17_1, table);
call vpternlogq64 (ymm19_2, ymm6_2, ymm17_2, table);
call vpternlogq64 (ymm19_3, ymm6_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm17,%ymm6             #! PC = 0x55555558149f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm17_0, ymm1_0, table);
call vpternlogq64 (ymm6_1, ymm17_1, ymm1_1, table);
call vpternlogq64 (ymm6_2, ymm17_2, ymm1_2, table);
call vpternlogq64 (ymm6_3, ymm17_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm1,%ymm17            #! PC = 0x5555555814a6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm1_0, ymm25_0, table);
call vpternlogq64 (ymm17_1, ymm1_1, ymm25_1, table);
call vpternlogq64 (ymm17_2, ymm1_2, ymm25_2, table);
call vpternlogq64 (ymm17_3, ymm1_3, ymm25_3, table);
(* vmovdqa64 %ymm2,%ymm25                          #! PC = 0x5555555814ad *)
mov ymm25_0 ymm2_0;
mov ymm25_1 ymm2_1;
mov ymm25_2 ymm2_2;
mov ymm25_3 ymm2_3;
(* vpternlogq $0x96,%ymm4,%ymm19,%ymm25            #! PC = 0x5555555814b3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm19_0, ymm4_0, table);
call vpternlogq64 (ymm25_1, ymm19_1, ymm4_1, table);
call vpternlogq64 (ymm25_2, ymm19_2, ymm4_2, table);
call vpternlogq64 (ymm25_3, ymm19_3, ymm4_3, table);
(* vpternlogq $0x96,%ymm3,%ymm12,%ymm25            #! PC = 0x5555555814ba *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm12_0, ymm3_0, table);
call vpternlogq64 (ymm25_1, ymm12_1, ymm3_1, table);
call vpternlogq64 (ymm25_2, ymm12_2, ymm3_2, table);
call vpternlogq64 (ymm25_3, ymm12_3, ymm3_3, table);
(* vprolq $0x1,%ymm25,%ymm1                        #! PC = 0x5555555814c1 *)
rol ymm1_0 ymm25_0 0x1;
rol ymm1_1 ymm25_1 0x1;
rol ymm1_2 ymm25_2 0x1;
rol ymm1_3 ymm25_3 0x1;
(* vmovdqa64 %ymm7,%ymm24                          #! PC = 0x5555555814c8 *)
mov ymm24_0 ymm7_0;
mov ymm24_1 ymm7_1;
mov ymm24_2 ymm7_2;
mov ymm24_3 ymm7_3;
(* vpternlogq $0x96,%ymm21,%ymm8,%ymm24            #! PC = 0x5555555814ce *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm8_0, ymm21_0, table);
call vpternlogq64 (ymm24_1, ymm8_1, ymm21_1, table);
call vpternlogq64 (ymm24_2, ymm8_2, ymm21_2, table);
call vpternlogq64 (ymm24_3, ymm8_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm15,%ymm6,%ymm24            #! PC = 0x5555555814d5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm6_0, ymm15_0, table);
call vpternlogq64 (ymm24_1, ymm6_1, ymm15_1, table);
call vpternlogq64 (ymm24_2, ymm6_2, ymm15_2, table);
call vpternlogq64 (ymm24_3, ymm6_3, ymm15_3, table);
(* vmovdqa64 %ymm17,%ymm29                         #! PC = 0x5555555814dc *)
mov ymm29_0 ymm17_0;
mov ymm29_1 ymm17_1;
mov ymm29_2 ymm17_2;
mov ymm29_3 ymm17_3;
(* vpternlogq $0x96,%ymm0,%ymm28,%ymm29            #! PC = 0x5555555814e2 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm28_0, ymm0_0, table);
call vpternlogq64 (ymm29_1, ymm28_1, ymm0_1, table);
call vpternlogq64 (ymm29_2, ymm28_2, ymm0_2, table);
call vpternlogq64 (ymm29_3, ymm28_3, ymm0_3, table);
(* vmovdqa %ymm1,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x5555555814e9 *)
mov L0x7fffffffd960 ymm1_0;
mov L0x7fffffffd968 ymm1_1;
mov L0x7fffffffd970 ymm1_2;
mov L0x7fffffffd978 ymm1_3;
(* vprolq $0x1,%ymm24,%ymm1                        #! PC = 0x5555555814f2 *)
rol ymm1_0 ymm24_0 0x1;
rol ymm1_1 ymm24_1 0x1;
rol ymm1_2 ymm24_2 0x1;
rol ymm1_3 ymm24_3 0x1;
(* vpternlogq $0x96,%ymm13,%ymm9,%ymm29            #! PC = 0x5555555814f9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm29_0, ymm9_0, ymm13_0, table);
call vpternlogq64 (ymm29_1, ymm9_1, ymm13_1, table);
call vpternlogq64 (ymm29_2, ymm9_2, ymm13_2, table);
call vpternlogq64 (ymm29_3, ymm9_3, ymm13_3, table);
(* vmovdqa64 %ymm18,%ymm27                         #! PC = 0x555555581500 *)
mov ymm27_0 ymm18_0;
mov ymm27_1 ymm18_1;
mov ymm27_2 ymm18_2;
mov ymm27_3 ymm18_3;
(* vpternlogq $0x96,%ymm11,%ymm14,%ymm27           #! PC = 0x555555581506 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm14_0, ymm11_0, table);
call vpternlogq64 (ymm27_1, ymm14_1, ymm11_1, table);
call vpternlogq64 (ymm27_2, ymm14_2, ymm11_2, table);
call vpternlogq64 (ymm27_3, ymm14_3, ymm11_3, table);
(* vpternlogq $0x96,%ymm5,%ymm30,%ymm27            #! PC = 0x55555558150d *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm30_0, ymm5_0, table);
call vpternlogq64 (ymm27_1, ymm30_1, ymm5_1, table);
call vpternlogq64 (ymm27_2, ymm30_2, ymm5_2, table);
call vpternlogq64 (ymm27_3, ymm30_3, ymm5_3, table);
(* vmovdqa64 %ymm23,%ymm26                         #! PC = 0x555555581514 *)
mov ymm26_0 ymm23_0;
mov ymm26_1 ymm23_1;
mov ymm26_2 ymm23_2;
mov ymm26_3 ymm23_3;
(* vmovdqa %ymm1,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x55555558151a *)
mov L0x7fffffffd940 ymm1_0;
mov L0x7fffffffd948 ymm1_1;
mov L0x7fffffffd950 ymm1_2;
mov L0x7fffffffd958 ymm1_3;
(* vprolq $0x1,%ymm29,%ymm1                        #! PC = 0x555555581520 *)
rol ymm1_0 ymm29_0 0x1;
rol ymm1_1 ymm29_1 0x1;
rol ymm1_2 ymm29_2 0x1;
rol ymm1_3 ymm29_3 0x1;
(* vpternlogq $0x96,%ymm20,%ymm22,%ymm26           #! PC = 0x555555581527 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm22_0, ymm20_0, table);
call vpternlogq64 (ymm26_1, ymm22_1, ymm20_1, table);
call vpternlogq64 (ymm26_2, ymm22_2, ymm20_2, table);
call vpternlogq64 (ymm26_3, ymm22_3, ymm20_3, table);
(* vpternlogq $0x96,%ymm16,%ymm10,%ymm26           #! PC = 0x55555558152e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm10_0, ymm16_0, table);
call vpternlogq64 (ymm26_1, ymm10_1, ymm16_1, table);
call vpternlogq64 (ymm26_2, ymm10_2, ymm16_2, table);
call vpternlogq64 (ymm26_3, ymm10_3, ymm16_3, table);
(* vprolq $0x1,%ymm26,%ymm31                       #! PC = 0x555555581535 *)
rol ymm31_0 ymm26_0 0x1;
rol ymm31_1 ymm26_1 0x1;
rol ymm31_2 ymm26_2 0x1;
rol ymm31_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd940; Value = 0x986cfb73c3b6177f; PC = 0x55555558153c *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd940;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd948;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd950;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd958;
(* movabs $0x8000000000000080,%rdx                 #! PC = 0x555555581547 *)
mov rdx 0x8000000000000080@uint64;
(* vmovdqa %ymm1,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x555555581551 *)
mov L0x7fffffffd920 ymm1_0;
mov L0x7fffffffd928 ymm1_1;
mov L0x7fffffffd930 ymm1_2;
mov L0x7fffffffd938 ymm1_3;
(* vprolq $0x1,%ymm27,%ymm1                        #! PC = 0x555555581557 *)
rol ymm1_0 ymm27_0 0x1;
rol ymm1_1 ymm27_1 0x1;
rol ymm1_2 ymm27_2 0x1;
rol ymm1_3 ymm27_3 0x1;
(* vpxorq 0x88(%rsp),%ymm27,%ymm27                 #! EA = L0x7fffffffd960; Value = 0x77aad1bd5b35cdc7; PC = 0x55555558155e *)
xor ymm27_0@uint64 ymm27_0 L0x7fffffffd960;
xor ymm27_1@uint64 ymm27_1 L0x7fffffffd968;
xor ymm27_2@uint64 ymm27_2 L0x7fffffffd970;
xor ymm27_3@uint64 ymm27_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd920; Value = 0x36fb840a16dd7abb; PC = 0x555555581569 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd920;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd928;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd930;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd938;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581574 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprorq $0x14,%ymm23,%ymm23                      #! PC = 0x55555558157a *)
ror ymm23_0 ymm23_0 0x14;
ror ymm23_1 ymm23_1 0x14;
ror ymm23_2 ymm23_2 0x14;
ror ymm23_3 ymm23_3 0x14;
(* vpxorq %ymm26,%ymm2,%ymm2                       #! PC = 0x555555581581 *)
xor ymm2_0@uint64 ymm2_0 ymm26_0;
xor ymm2_1@uint64 ymm2_1 ymm26_1;
xor ymm2_2@uint64 ymm2_2 ymm26_2;
xor ymm2_3@uint64 ymm2_3 ymm26_3;
(* vpxorq %ymm1,%ymm24,%ymm24                      #! PC = 0x555555581587 *)
xor ymm24_0@uint64 ymm24_0 ymm1_0;
xor ymm24_1@uint64 ymm24_1 ymm1_1;
xor ymm24_2@uint64 ymm24_2 ymm1_2;
xor ymm24_3@uint64 ymm24_3 ymm1_3;
(* vpxorq %ymm25,%ymm7,%ymm7                       #! PC = 0x55555558158d *)
xor ymm7_0@uint64 ymm7_0 ymm25_0;
xor ymm7_1@uint64 ymm7_1 ymm25_1;
xor ymm7_2@uint64 ymm7_2 ymm25_2;
xor ymm7_3@uint64 ymm7_3 ymm25_3;
(* vpxorq %ymm24,%ymm17,%ymm17                     #! PC = 0x555555581593 *)
xor ymm17_0@uint64 ymm17_0 ymm24_0;
xor ymm17_1@uint64 ymm17_1 ymm24_1;
xor ymm17_2@uint64 ymm17_2 ymm24_2;
xor ymm17_3@uint64 ymm17_3 ymm24_3;
(* vprorq $0x15,%ymm2,%ymm2                        #! PC = 0x555555581599 *)
ror ymm2_0 ymm2_0 0x15;
ror ymm2_1 ymm2_1 0x15;
ror ymm2_2 ymm2_2 0x15;
ror ymm2_3 ymm2_3 0x15;
(* vprolq $0x15,%ymm7,%ymm7                        #! PC = 0x5555555815a0 *)
rol ymm7_0 ymm7_0 0x15;
rol ymm7_1 ymm7_1 0x15;
rol ymm7_2 ymm7_2 0x15;
rol ymm7_3 ymm7_3 0x15;
(* vprolq $0xe,%ymm17,%ymm17                       #! PC = 0x5555555815a7 *)
rol ymm17_0 ymm17_0 0xe;
rol ymm17_1 ymm17_1 0xe;
rol ymm17_2 ymm17_2 0xe;
rol ymm17_3 ymm17_3 0xe;
(* vpxorq %ymm31,%ymm29,%ymm29                     #! PC = 0x5555555815ae *)
xor ymm29_0@uint64 ymm29_0 ymm31_0;
xor ymm29_1@uint64 ymm29_1 ymm31_1;
xor ymm29_2@uint64 ymm29_2 ymm31_2;
xor ymm29_3@uint64 ymm29_3 ymm31_3;
(* vpxorq %ymm29,%ymm18,%ymm1                      #! PC = 0x5555555815b4 *)
xor ymm1_0@uint64 ymm18_0 ymm29_0;
xor ymm1_1@uint64 ymm18_1 ymm29_1;
xor ymm1_2@uint64 ymm18_2 ymm29_2;
xor ymm1_3@uint64 ymm18_3 ymm29_3;
(* vmovdqa64 %ymm1,%ymm31                          #! PC = 0x5555555815ba *)
mov ymm31_0 ymm1_0;
mov ymm31_1 ymm1_1;
mov ymm31_2 ymm1_2;
mov ymm31_3 ymm1_3;
(* vmovdqa64 %ymm23,%ymm18                         #! PC = 0x5555555815c0 *)
mov ymm18_0 ymm23_0;
mov ymm18_1 ymm23_1;
mov ymm18_2 ymm23_2;
mov ymm18_3 ymm23_3;
(* vpternlogq $0xd2,%ymm2,%ymm23,%ymm31            #! PC = 0x5555555815c6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm23_0, ymm2_0, table);
call vpternlogq64 (ymm31_1, ymm23_1, ymm2_1, table);
call vpternlogq64 (ymm31_2, ymm23_2, ymm2_2, table);
call vpternlogq64 (ymm31_3, ymm23_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm2,%ymm18             #! PC = 0x5555555815cd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm2_0, ymm7_0, table);
call vpternlogq64 (ymm18_1, ymm2_1, ymm7_1, table);
call vpternlogq64 (ymm18_2, ymm2_2, ymm7_2, table);
call vpternlogq64 (ymm18_3, ymm2_3, ymm7_3, table);
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x5555555815d4 *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpternlogq $0xd2,%ymm17,%ymm7,%ymm2             #! PC = 0x5555555815da *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm7_0, ymm17_0, table);
call vpternlogq64 (ymm2_1, ymm7_1, ymm17_1, table);
call vpternlogq64 (ymm2_2, ymm7_2, ymm17_2, table);
call vpternlogq64 (ymm2_3, ymm7_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm17,%ymm7             #! PC = 0x5555555815e1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm17_0, ymm1_0, table);
call vpternlogq64 (ymm7_1, ymm17_1, ymm1_1, table);
call vpternlogq64 (ymm7_2, ymm17_2, ymm1_2, table);
call vpternlogq64 (ymm7_3, ymm17_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm1,%ymm17            #! PC = 0x5555555815e8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm1_0, ymm23_0, table);
call vpternlogq64 (ymm17_1, ymm1_1, ymm23_1, table);
call vpternlogq64 (ymm17_2, ymm1_2, ymm23_2, table);
call vpternlogq64 (ymm17_3, ymm1_3, ymm23_3, table);
(* vpxorq %ymm24,%ymm28,%ymm1                      #! PC = 0x5555555815ef *)
xor ymm1_0@uint64 ymm28_0 ymm24_0;
xor ymm1_1@uint64 ymm28_1 ymm24_1;
xor ymm1_2@uint64 ymm28_2 ymm24_2;
xor ymm1_3@uint64 ymm28_3 ymm24_3;
(* vprolq $0x1c,%ymm8,%ymm8                        #! PC = 0x5555555815f5 *)
rol ymm8_0 ymm8_0 0x1c;
rol ymm8_1 ymm8_1 0x1c;
rol ymm8_2 ymm8_2 0x1c;
rol ymm8_3 ymm8_3 0x1c;
(* vprolq $0x14,%ymm1,%ymm1                        #! PC = 0x5555555815fc *)
rol ymm1_0 ymm1_0 0x14;
rol ymm1_1 ymm1_1 0x14;
rol ymm1_2 ymm1_2 0x14;
rol ymm1_3 ymm1_3 0x14;
(* vpxorq %ymm29,%ymm14,%ymm14                     #! PC = 0x555555581603 *)
xor ymm14_0@uint64 ymm14_0 ymm29_0;
xor ymm14_1@uint64 ymm14_1 ymm29_1;
xor ymm14_2@uint64 ymm14_2 ymm29_2;
xor ymm14_3@uint64 ymm14_3 ymm29_3;
(* vpxorq %ymm27,%ymm22,%ymm22                     #! PC = 0x555555581609 *)
xor ymm22_0@uint64 ymm22_0 ymm27_0;
xor ymm22_1@uint64 ymm22_1 ymm27_1;
xor ymm22_2@uint64 ymm22_2 ymm27_2;
xor ymm22_3@uint64 ymm22_3 ymm27_3;
(* vpxorq %ymm26,%ymm19,%ymm19                     #! PC = 0x55555558160f *)
xor ymm19_0@uint64 ymm19_0 ymm26_0;
xor ymm19_1@uint64 ymm19_1 ymm26_1;
xor ymm19_2@uint64 ymm19_2 ymm26_2;
xor ymm19_3@uint64 ymm19_3 ymm26_3;
(* vprolq $0x3,%ymm14,%ymm14                       #! PC = 0x555555581615 *)
rol ymm14_0 ymm14_0 0x3;
rol ymm14_1 ymm14_1 0x3;
rol ymm14_2 ymm14_2 0x3;
rol ymm14_3 ymm14_3 0x3;
(* vprorq $0x13,%ymm22,%ymm22                      #! PC = 0x55555558161c *)
ror ymm22_0 ymm22_0 0x13;
ror ymm22_1 ymm22_1 0x13;
ror ymm22_2 ymm22_2 0x13;
ror ymm22_3 ymm22_3 0x13;
(* vprorq $0x3,%ymm19,%ymm19                       #! PC = 0x555555581623 *)
ror ymm19_0 ymm19_0 0x3;
ror ymm19_1 ymm19_1 0x3;
ror ymm19_2 ymm19_2 0x3;
ror ymm19_3 ymm19_3 0x3;
(* vpbroadcastq %r11,%ymm23                        #! PC = 0x55555558162a *)
mov ymm23_0 r11;
mov ymm23_1 r11;
mov ymm23_2 r11;
mov ymm23_3 r11;
(* vpxorq %ymm31,%ymm23,%ymm23                     #! PC = 0x555555581630 *)
xor ymm23_0@uint64 ymm23_0 ymm31_0;
xor ymm23_1@uint64 ymm23_1 ymm31_1;
xor ymm23_2@uint64 ymm23_2 ymm31_2;
xor ymm23_3@uint64 ymm23_3 ymm31_3;
(* vmovdqa64 %ymm1,%ymm28                          #! PC = 0x555555581636 *)
mov ymm28_0 ymm1_0;
mov ymm28_1 ymm1_1;
mov ymm28_2 ymm1_2;
mov ymm28_3 ymm1_3;
(* vmovdqa64 %ymm8,%ymm31                          #! PC = 0x55555558163c *)
mov ymm31_0 ymm8_0;
mov ymm31_1 ymm8_1;
mov ymm31_2 ymm8_2;
mov ymm31_3 ymm8_3;
(* vpxorq %ymm27,%ymm20,%ymm20                     #! PC = 0x555555581642 *)
xor ymm20_0@uint64 ymm20_0 ymm27_0;
xor ymm20_1@uint64 ymm20_1 ymm27_1;
xor ymm20_2@uint64 ymm20_2 ymm27_2;
xor ymm20_3@uint64 ymm20_3 ymm27_3;
(* vpxorq %ymm26,%ymm4,%ymm4                       #! PC = 0x555555581648 *)
xor ymm4_0@uint64 ymm4_0 ymm26_0;
xor ymm4_1@uint64 ymm4_1 ymm26_1;
xor ymm4_2@uint64 ymm4_2 ymm26_2;
xor ymm4_3@uint64 ymm4_3 ymm26_3;
(* vprolq $0x1,%ymm20,%ymm20                       #! PC = 0x55555558164e *)
rol ymm20_0 ymm20_0 0x1;
rol ymm20_1 ymm20_1 0x1;
rol ymm20_2 ymm20_2 0x1;
rol ymm20_3 ymm20_3 0x1;
(* vprolq $0x6,%ymm4,%ymm4                         #! PC = 0x555555581655 *)
rol ymm4_0 ymm4_0 0x6;
rol ymm4_1 ymm4_1 0x6;
rol ymm4_2 ymm4_2 0x6;
rol ymm4_3 ymm4_3 0x6;
(* vpternlogq $0xd2,%ymm14,%ymm1,%ymm31            #! PC = 0x55555558165c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm1_0, ymm14_0, table);
call vpternlogq64 (ymm31_1, ymm1_1, ymm14_1, table);
call vpternlogq64 (ymm31_2, ymm1_2, ymm14_2, table);
call vpternlogq64 (ymm31_3, ymm1_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm14,%ymm28           #! PC = 0x555555581663 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm14_0, ymm22_0, table);
call vpternlogq64 (ymm28_1, ymm14_1, ymm22_1, table);
call vpternlogq64 (ymm28_2, ymm14_2, ymm22_2, table);
call vpternlogq64 (ymm28_3, ymm14_3, ymm22_3, table);
(* vpxorq %ymm29,%ymm11,%ymm11                     #! PC = 0x55555558166a *)
xor ymm11_0@uint64 ymm11_0 ymm29_0;
xor ymm11_1@uint64 ymm11_1 ymm29_1;
xor ymm11_2@uint64 ymm11_2 ymm29_2;
xor ymm11_3@uint64 ymm11_3 ymm29_3;
(* vpternlogq $0xd2,%ymm19,%ymm22,%ymm14           #! PC = 0x555555581670 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm22_0, ymm19_0, table);
call vpternlogq64 (ymm14_1, ymm22_1, ymm19_1, table);
call vpternlogq64 (ymm14_2, ymm22_2, ymm19_2, table);
call vpternlogq64 (ymm14_3, ymm22_3, ymm19_3, table);
(* vpxorq %ymm24,%ymm0,%ymm0                       #! PC = 0x555555581677 *)
xor ymm0_0@uint64 ymm0_0 ymm24_0;
xor ymm0_1@uint64 ymm0_1 ymm24_1;
xor ymm0_2@uint64 ymm0_2 ymm24_2;
xor ymm0_3@uint64 ymm0_3 ymm24_3;
(* vpternlogq $0xd2,%ymm8,%ymm19,%ymm22            #! PC = 0x55555558167d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm19_0, ymm8_0, table);
call vpternlogq64 (ymm22_1, ymm19_1, ymm8_1, table);
call vpternlogq64 (ymm22_2, ymm19_2, ymm8_2, table);
call vpternlogq64 (ymm22_3, ymm19_3, ymm8_3, table);
(* vpxorq %ymm29,%ymm30,%ymm30                     #! PC = 0x555555581684 *)
xor ymm30_0@uint64 ymm30_0 ymm29_0;
xor ymm30_1@uint64 ymm30_1 ymm29_1;
xor ymm30_2@uint64 ymm30_2 ymm29_2;
xor ymm30_3@uint64 ymm30_3 ymm29_3;
(* vpternlogq $0xd2,%ymm1,%ymm8,%ymm19             #! PC = 0x55555558168a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm8_0, ymm1_0, table);
call vpternlogq64 (ymm19_1, ymm8_1, ymm1_1, table);
call vpternlogq64 (ymm19_2, ymm8_2, ymm1_2, table);
call vpternlogq64 (ymm19_3, ymm8_3, ymm1_3, table);
(* vpxorq %ymm24,%ymm9,%ymm9                       #! PC = 0x555555581691 *)
xor ymm9_0@uint64 ymm9_0 ymm24_0;
xor ymm9_1@uint64 ymm9_1 ymm24_1;
xor ymm9_2@uint64 ymm9_2 ymm24_2;
xor ymm9_3@uint64 ymm9_3 ymm24_3;
(* vpxorq %ymm25,%ymm21,%ymm1                      #! PC = 0x555555581697 *)
xor ymm1_0@uint64 ymm21_0 ymm25_0;
xor ymm1_1@uint64 ymm21_1 ymm25_1;
xor ymm1_2@uint64 ymm21_2 ymm25_2;
xor ymm1_3@uint64 ymm21_3 ymm25_3;
(* vprorq $0x1c,%ymm30,%ymm30                      #! PC = 0x55555558169d *)
ror ymm30_0 ymm30_0 0x1c;
ror ymm30_1 ymm30_1 0x1c;
ror ymm30_2 ymm30_2 0x1c;
ror ymm30_3 ymm30_3 0x1c;
(* vprolq $0x1b,%ymm9,%ymm9                        #! PC = 0x5555555816a4 *)
rol ymm9_0 ymm9_0 0x1b;
rol ymm9_1 ymm9_1 0x1b;
rol ymm9_2 ymm9_2 0x1b;
rol ymm9_3 ymm9_3 0x1b;
(* vprolq $0x12,%ymm11,%ymm11                      #! PC = 0x5555555816ab *)
rol ymm11_0 ymm11_0 0x12;
rol ymm11_1 ymm11_1 0x12;
rol ymm11_2 ymm11_2 0x12;
rol ymm11_3 ymm11_3 0x12;
(* vprolq $0x19,%ymm1,%ymm1                        #! PC = 0x5555555816b2 *)
rol ymm1_0 ymm1_0 0x19;
rol ymm1_1 ymm1_1 0x19;
rol ymm1_2 ymm1_2 0x19;
rol ymm1_3 ymm1_3 0x19;
(* vprolq $0x8,%ymm0,%ymm0                         #! PC = 0x5555555816b9 *)
rol ymm0_0 ymm0_0 0x8;
rol ymm0_1 ymm0_1 0x8;
rol ymm0_2 ymm0_2 0x8;
rol ymm0_3 ymm0_3 0x8;
(* vpxorq %ymm27,%ymm10,%ymm10                     #! PC = 0x5555555816c0 *)
xor ymm10_0@uint64 ymm10_0 ymm27_0;
xor ymm10_1@uint64 ymm10_1 ymm27_1;
xor ymm10_2@uint64 ymm10_2 ymm27_2;
xor ymm10_3@uint64 ymm10_3 ymm27_3;
(* vpxorq %ymm26,%ymm12,%ymm12                     #! PC = 0x5555555816c6 *)
xor ymm12_0@uint64 ymm12_0 ymm26_0;
xor ymm12_1@uint64 ymm12_1 ymm26_1;
xor ymm12_2@uint64 ymm12_2 ymm26_2;
xor ymm12_3@uint64 ymm12_3 ymm26_3;
(* vpxorq %ymm25,%ymm6,%ymm6                       #! PC = 0x5555555816cc *)
xor ymm6_0@uint64 ymm6_0 ymm25_0;
xor ymm6_1@uint64 ymm6_1 ymm25_1;
xor ymm6_2@uint64 ymm6_2 ymm25_2;
xor ymm6_3@uint64 ymm6_3 ymm25_3;
(* vpxorq %ymm26,%ymm3,%ymm3                       #! PC = 0x5555555816d2 *)
xor ymm3_0@uint64 ymm3_0 ymm26_0;
xor ymm3_1@uint64 ymm3_1 ymm26_1;
xor ymm3_2@uint64 ymm3_2 ymm26_2;
xor ymm3_3@uint64 ymm3_3 ymm26_3;
(* vpxorq %ymm25,%ymm15,%ymm15                     #! PC = 0x5555555816d8 *)
xor ymm15_0@uint64 ymm15_0 ymm25_0;
xor ymm15_1@uint64 ymm15_1 ymm25_1;
xor ymm15_2@uint64 ymm15_2 ymm25_2;
xor ymm15_3@uint64 ymm15_3 ymm25_3;
(* vprorq $0x2,%ymm3,%ymm3                         #! PC = 0x5555555816de *)
ror ymm3_0 ymm3_0 0x2;
ror ymm3_1 ymm3_1 0x2;
ror ymm3_2 ymm3_2 0x2;
ror ymm3_3 ymm3_3 0x2;
(* vprorq $0x9,%ymm15,%ymm25                       #! PC = 0x5555555816e5 *)
ror ymm25_0 ymm15_0 0x9;
ror ymm25_1 ymm15_1 0x9;
ror ymm25_2 ymm15_2 0x9;
ror ymm25_3 ymm15_3 0x9;
(* vprolq $0xa,%ymm10,%ymm10                       #! PC = 0x5555555816ec *)
rol ymm10_0 ymm10_0 0xa;
rol ymm10_1 ymm10_1 0xa;
rol ymm10_2 ymm10_2 0xa;
rol ymm10_3 ymm10_3 0xa;
(* vprolq $0xf,%ymm12,%ymm12                       #! PC = 0x5555555816f3 *)
rol ymm12_0 ymm12_0 0xf;
rol ymm12_1 ymm12_1 0xf;
rol ymm12_2 ymm12_2 0xf;
rol ymm12_3 ymm12_3 0xf;
(* vprorq $0x8,%ymm6,%ymm6                         #! PC = 0x5555555816fa *)
ror ymm6_0 ymm6_0 0x8;
ror ymm6_1 ymm6_1 0x8;
ror ymm6_2 ymm6_2 0x8;
ror ymm6_3 ymm6_3 0x8;
(* vpxorq %ymm29,%ymm5,%ymm5                       #! PC = 0x555555581701 *)
xor ymm5_0@uint64 ymm5_0 ymm29_0;
xor ymm5_1@uint64 ymm5_1 ymm29_1;
xor ymm5_2@uint64 ymm5_2 ymm29_2;
xor ymm5_3@uint64 ymm5_3 ymm29_3;
(* vpxorq %ymm27,%ymm16,%ymm16                     #! PC = 0x555555581707 *)
xor ymm16_0@uint64 ymm16_0 ymm27_0;
xor ymm16_1@uint64 ymm16_1 ymm27_1;
xor ymm16_2@uint64 ymm16_2 ymm27_2;
xor ymm16_3@uint64 ymm16_3 ymm27_3;
(* vpxorq %ymm24,%ymm13,%ymm13                     #! PC = 0x55555558170d *)
xor ymm13_0@uint64 ymm13_0 ymm24_0;
xor ymm13_1@uint64 ymm13_1 ymm24_1;
xor ymm13_2@uint64 ymm13_2 ymm24_2;
xor ymm13_3@uint64 ymm13_3 ymm24_3;
(* vprorq $0x17,%ymm5,%ymm5                        #! PC = 0x555555581713 *)
ror ymm5_0 ymm5_0 0x17;
ror ymm5_1 ymm5_1 0x17;
ror ymm5_2 ymm5_2 0x17;
ror ymm5_3 ymm5_3 0x17;
(* vprolq $0x2,%ymm16,%ymm16                       #! PC = 0x55555558171a *)
rol ymm16_0 ymm16_0 0x2;
rol ymm16_1 ymm16_1 0x2;
rol ymm16_2 ymm16_2 0x2;
rol ymm16_3 ymm16_3 0x2;
(* vprorq $0x19,%ymm13,%ymm13                      #! PC = 0x555555581721 *)
ror ymm13_0 ymm13_0 0x19;
ror ymm13_1 ymm13_1 0x19;
ror ymm13_2 ymm13_2 0x19;
ror ymm13_3 ymm13_3 0x19;
(* vmovdqa64 %ymm20,%ymm21                         #! PC = 0x555555581728 *)
mov ymm21_0 ymm20_0;
mov ymm21_1 ymm20_1;
mov ymm21_2 ymm20_2;
mov ymm21_3 ymm20_3;
(* vmovdqa %ymm4,%ymm8                             #! PC = 0x55555558172e *)
mov ymm8_0 ymm4_0;
mov ymm8_1 ymm4_1;
mov ymm8_2 ymm4_2;
mov ymm8_3 ymm4_3;
(* vpternlogq $0xd2,%ymm1,%ymm4,%ymm21             #! PC = 0x555555581732 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm4_0, ymm1_0, table);
call vpternlogq64 (ymm21_1, ymm4_1, ymm1_1, table);
call vpternlogq64 (ymm21_2, ymm4_2, ymm1_2, table);
call vpternlogq64 (ymm21_3, ymm4_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm0,%ymm1,%ymm8              #! PC = 0x555555581739 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm1_0, ymm0_0, table);
call vpternlogq64 (ymm8_1, ymm1_1, ymm0_1, table);
call vpternlogq64 (ymm8_2, ymm1_2, ymm0_2, table);
call vpternlogq64 (ymm8_3, ymm1_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm0,%ymm1             #! PC = 0x555555581740 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm0_0, ymm11_0, table);
call vpternlogq64 (ymm1_1, ymm0_1, ymm11_1, table);
call vpternlogq64 (ymm1_2, ymm0_2, ymm11_2, table);
call vpternlogq64 (ymm1_3, ymm0_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm11,%ymm0            #! PC = 0x555555581747 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm11_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm11_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm11_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm11_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm4,%ymm20,%ymm11            #! PC = 0x55555558174e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm20_0, ymm4_0, table);
call vpternlogq64 (ymm11_1, ymm20_1, ymm4_1, table);
call vpternlogq64 (ymm11_2, ymm20_2, ymm4_2, table);
call vpternlogq64 (ymm11_3, ymm20_3, ymm4_3, table);
(* vmovdqa %ymm9,%ymm4                             #! PC = 0x555555581755 *)
mov ymm4_0 ymm9_0;
mov ymm4_1 ymm9_1;
mov ymm4_2 ymm9_2;
mov ymm4_3 ymm9_3;
(* vmovdqa64 %ymm30,%ymm20                         #! PC = 0x555555581759 *)
mov ymm20_0 ymm30_0;
mov ymm20_1 ymm30_1;
mov ymm20_2 ymm30_2;
mov ymm20_3 ymm30_3;
(* vpternlogq $0xd2,%ymm10,%ymm30,%ymm4            #! PC = 0x55555558175f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm30_0, ymm10_0, table);
call vpternlogq64 (ymm4_1, ymm30_1, ymm10_1, table);
call vpternlogq64 (ymm4_2, ymm30_2, ymm10_2, table);
call vpternlogq64 (ymm4_3, ymm30_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm10,%ymm20           #! PC = 0x555555581766 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm10_0, ymm12_0, table);
call vpternlogq64 (ymm20_1, ymm10_1, ymm12_1, table);
call vpternlogq64 (ymm20_2, ymm10_2, ymm12_2, table);
call vpternlogq64 (ymm20_3, ymm10_3, ymm12_3, table);
(* vmovdqa64 %ymm25,%ymm15                         #! PC = 0x55555558176d *)
mov ymm15_0 ymm25_0;
mov ymm15_1 ymm25_1;
mov ymm15_2 ymm25_2;
mov ymm15_3 ymm25_3;
(* vpternlogq $0xd2,%ymm6,%ymm12,%ymm10            #! PC = 0x555555581773 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm12_0, ymm6_0, table);
call vpternlogq64 (ymm10_1, ymm12_1, ymm6_1, table);
call vpternlogq64 (ymm10_2, ymm12_2, ymm6_2, table);
call vpternlogq64 (ymm10_3, ymm12_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm6,%ymm12             #! PC = 0x55555558177a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm6_0, ymm9_0, table);
call vpternlogq64 (ymm12_1, ymm6_1, ymm9_1, table);
call vpternlogq64 (ymm12_2, ymm6_2, ymm9_2, table);
call vpternlogq64 (ymm12_3, ymm6_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm9,%ymm6             #! PC = 0x555555581781 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm9_0, ymm30_0, table);
call vpternlogq64 (ymm6_1, ymm9_1, ymm30_1, table);
call vpternlogq64 (ymm6_2, ymm9_2, ymm30_2, table);
call vpternlogq64 (ymm6_3, ymm9_3, ymm30_3, table);
(* vmovdqa %ymm3,%ymm9                             #! PC = 0x555555581788 *)
mov ymm9_0 ymm3_0;
mov ymm9_1 ymm3_1;
mov ymm9_2 ymm3_2;
mov ymm9_3 ymm3_3;
(* vpternlogq $0xd2,%ymm13,%ymm25,%ymm9            #! PC = 0x55555558178c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm25_0, ymm13_0, table);
call vpternlogq64 (ymm9_1, ymm25_1, ymm13_1, table);
call vpternlogq64 (ymm9_2, ymm25_2, ymm13_2, table);
call vpternlogq64 (ymm9_3, ymm25_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm13,%ymm15            #! PC = 0x555555581793 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm13_0, ymm5_0, table);
call vpternlogq64 (ymm15_1, ymm13_1, ymm5_1, table);
call vpternlogq64 (ymm15_2, ymm13_2, ymm5_2, table);
call vpternlogq64 (ymm15_3, ymm13_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm5,%ymm13            #! PC = 0x55555558179a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm5_0, ymm16_0, table);
call vpternlogq64 (ymm13_1, ymm5_1, ymm16_1, table);
call vpternlogq64 (ymm13_2, ymm5_2, ymm16_2, table);
call vpternlogq64 (ymm13_3, ymm5_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm16,%ymm5             #! PC = 0x5555555817a1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm16_0, ymm3_0, table);
call vpternlogq64 (ymm5_1, ymm16_1, ymm3_1, table);
call vpternlogq64 (ymm5_2, ymm16_2, ymm3_2, table);
call vpternlogq64 (ymm5_3, ymm16_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm25,%ymm3,%ymm16            #! PC = 0x5555555817a8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm3_0, ymm25_0, table);
call vpternlogq64 (ymm16_1, ymm3_1, ymm25_1, table);
call vpternlogq64 (ymm16_2, ymm3_2, ymm25_2, table);
call vpternlogq64 (ymm16_3, ymm3_3, ymm25_3, table);
(* vmovdqa64 %ymm2,%ymm25                          #! PC = 0x5555555817af *)
mov ymm25_0 ymm2_0;
mov ymm25_1 ymm2_1;
mov ymm25_2 ymm2_2;
mov ymm25_3 ymm2_3;
(* vpternlogq $0x96,%ymm1,%ymm14,%ymm25            #! PC = 0x5555555817b5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm14_0, ymm1_0, table);
call vpternlogq64 (ymm25_1, ymm14_1, ymm1_1, table);
call vpternlogq64 (ymm25_2, ymm14_2, ymm1_2, table);
call vpternlogq64 (ymm25_3, ymm14_3, ymm1_3, table);
(* vpternlogq $0x96,%ymm13,%ymm10,%ymm25           #! PC = 0x5555555817bc *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm10_0, ymm13_0, table);
call vpternlogq64 (ymm25_1, ymm10_1, ymm13_1, table);
call vpternlogq64 (ymm25_2, ymm10_2, ymm13_2, table);
call vpternlogq64 (ymm25_3, ymm10_3, ymm13_3, table);
(* vprolq $0x1,%ymm25,%ymm29                       #! PC = 0x5555555817c3 *)
rol ymm29_0 ymm25_0 0x1;
rol ymm29_1 ymm25_1 0x1;
rol ymm29_2 ymm25_2 0x1;
rol ymm29_3 ymm25_3 0x1;
(* vmovdqa64 %ymm7,%ymm24                          #! PC = 0x5555555817ca *)
mov ymm24_0 ymm7_0;
mov ymm24_1 ymm7_1;
mov ymm24_2 ymm7_2;
mov ymm24_3 ymm7_3;
(* vpternlogq $0x96,%ymm0,%ymm22,%ymm24            #! PC = 0x5555555817d0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm22_0, ymm0_0, table);
call vpternlogq64 (ymm24_1, ymm22_1, ymm0_1, table);
call vpternlogq64 (ymm24_2, ymm22_2, ymm0_2, table);
call vpternlogq64 (ymm24_3, ymm22_3, ymm0_3, table);
(* vpternlogq $0x96,%ymm5,%ymm12,%ymm24            #! PC = 0x5555555817d7 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm24_0, ymm12_0, ymm5_0, table);
call vpternlogq64 (ymm24_1, ymm12_1, ymm5_1, table);
call vpternlogq64 (ymm24_2, ymm12_2, ymm5_2, table);
call vpternlogq64 (ymm24_3, ymm12_3, ymm5_3, table);
(* vmovdqa64 %ymm17,%ymm3                          #! PC = 0x5555555817de *)
mov ymm3_0 ymm17_0;
mov ymm3_1 ymm17_1;
mov ymm3_2 ymm17_2;
mov ymm3_3 ymm17_3;
(* vpternlogq $0x96,%ymm11,%ymm19,%ymm3            #! PC = 0x5555555817e4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm19_0, ymm11_0, table);
call vpternlogq64 (ymm3_1, ymm19_1, ymm11_1, table);
call vpternlogq64 (ymm3_2, ymm19_2, ymm11_2, table);
call vpternlogq64 (ymm3_3, ymm19_3, ymm11_3, table);
(* vmovdqa64 %ymm29,0x88(%rsp)                     #! EA = L0x7fffffffd960; PC = 0x5555555817eb *)
mov L0x7fffffffd960 ymm29_0;
mov L0x7fffffffd968 ymm29_1;
mov L0x7fffffffd970 ymm29_2;
mov L0x7fffffffd978 ymm29_3;
(* vprolq $0x1,%ymm24,%ymm29                       #! PC = 0x5555555817f6 *)
rol ymm29_0 ymm24_0 0x1;
rol ymm29_1 ymm24_1 0x1;
rol ymm29_2 ymm24_2 0x1;
rol ymm29_3 ymm24_3 0x1;
(* vpternlogq $0x96,%ymm16,%ymm6,%ymm3             #! PC = 0x5555555817fd *)
mov table 0x96@uint8;
call vpternlogq64 (ymm3_0, ymm6_0, ymm16_0, table);
call vpternlogq64 (ymm3_1, ymm6_1, ymm16_1, table);
call vpternlogq64 (ymm3_2, ymm6_2, ymm16_2, table);
call vpternlogq64 (ymm3_3, ymm6_3, ymm16_3, table);
(* vmovdqa64 %ymm23,%ymm27                         #! PC = 0x555555581804 *)
mov ymm27_0 ymm23_0;
mov ymm27_1 ymm23_1;
mov ymm27_2 ymm23_2;
mov ymm27_3 ymm23_3;
(* vpternlogq $0x96,%ymm21,%ymm31,%ymm27           #! PC = 0x55555558180a *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm31_0, ymm21_0, table);
call vpternlogq64 (ymm27_1, ymm31_1, ymm21_1, table);
call vpternlogq64 (ymm27_2, ymm31_2, ymm21_2, table);
call vpternlogq64 (ymm27_3, ymm31_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm9,%ymm4,%ymm27             #! PC = 0x555555581811 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm4_0, ymm9_0, table);
call vpternlogq64 (ymm27_1, ymm4_1, ymm9_1, table);
call vpternlogq64 (ymm27_2, ymm4_2, ymm9_2, table);
call vpternlogq64 (ymm27_3, ymm4_3, ymm9_3, table);
(* vmovdqa64 %ymm18,%ymm26                         #! PC = 0x555555581818 *)
mov ymm26_0 ymm18_0;
mov ymm26_1 ymm18_1;
mov ymm26_2 ymm18_2;
mov ymm26_3 ymm18_3;
(* vmovdqa64 %ymm29,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x55555558181e *)
mov L0x7fffffffd940 ymm29_0;
mov L0x7fffffffd948 ymm29_1;
mov L0x7fffffffd950 ymm29_2;
mov L0x7fffffffd958 ymm29_3;
(* vprolq $0x1,%ymm3,%ymm29                        #! PC = 0x555555581829 *)
rol ymm29_0 ymm3_0 0x1;
rol ymm29_1 ymm3_1 0x1;
rol ymm29_2 ymm3_2 0x1;
rol ymm29_3 ymm3_3 0x1;
(* vpternlogq $0x96,%ymm8,%ymm28,%ymm26            #! PC = 0x555555581830 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm28_0, ymm8_0, table);
call vpternlogq64 (ymm26_1, ymm28_1, ymm8_1, table);
call vpternlogq64 (ymm26_2, ymm28_2, ymm8_2, table);
call vpternlogq64 (ymm26_3, ymm28_3, ymm8_3, table);
(* vpternlogq $0x96,%ymm15,%ymm20,%ymm26           #! PC = 0x555555581837 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm20_0, ymm15_0, table);
call vpternlogq64 (ymm26_1, ymm20_1, ymm15_1, table);
call vpternlogq64 (ymm26_2, ymm20_2, ymm15_2, table);
call vpternlogq64 (ymm26_3, ymm20_3, ymm15_3, table);
(* vprolq $0x1,%ymm26,%ymm30                       #! PC = 0x55555558183e *)
rol ymm30_0 ymm26_0 0x1;
rol ymm30_1 ymm26_1 0x1;
rol ymm30_2 ymm26_2 0x1;
rol ymm30_3 ymm26_3 0x1;
(* vpxorq 0x68(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd940; Value = 0xd2c779fba8da2377; PC = 0x555555581845 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd940;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd948;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd950;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd958;
(* mov    $0x800a,%ecx                             #! PC = 0x555555581850 *)
mov rcx 0x800a@uint64;
(* vmovdqa64 %ymm29,0x48(%rsp)                     #! EA = L0x7fffffffd920; PC = 0x555555581855 *)
mov L0x7fffffffd920 ymm29_0;
mov L0x7fffffffd928 ymm29_1;
mov L0x7fffffffd930 ymm29_2;
mov L0x7fffffffd938 ymm29_3;
(* vprolq $0x1,%ymm27,%ymm29                       #! PC = 0x555555581860 *)
rol ymm29_0 ymm27_0 0x1;
rol ymm29_1 ymm27_1 0x1;
rol ymm29_2 ymm27_2 0x1;
rol ymm29_3 ymm27_3 0x1;
(* vpxorq 0x88(%rsp),%ymm27,%ymm27                 #! EA = L0x7fffffffd960; Value = 0xfb20247ea99ee769; PC = 0x555555581867 *)
xor ymm27_0@uint64 ymm27_0 L0x7fffffffd960;
xor ymm27_1@uint64 ymm27_1 L0x7fffffffd968;
xor ymm27_2@uint64 ymm27_2 L0x7fffffffd970;
xor ymm27_3@uint64 ymm27_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd920; Value = 0xa1e9027bd56fc874; PC = 0x555555581872 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd920;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd928;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd930;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd938;
(* vpxorq %ymm27,%ymm28,%ymm28                     #! PC = 0x55555558187d *)
xor ymm28_0@uint64 ymm28_0 ymm27_0;
xor ymm28_1@uint64 ymm28_1 ymm27_1;
xor ymm28_2@uint64 ymm28_2 ymm27_2;
xor ymm28_3@uint64 ymm28_3 ymm27_3;
(* vprorq $0x14,%ymm28,%ymm28                      #! PC = 0x555555581883 *)
ror ymm28_0 ymm28_0 0x14;
ror ymm28_1 ymm28_1 0x14;
ror ymm28_2 ymm28_2 0x14;
ror ymm28_3 ymm28_3 0x14;
(* vpxorq %ymm26,%ymm1,%ymm1                       #! PC = 0x55555558188a *)
xor ymm1_0@uint64 ymm1_0 ymm26_0;
xor ymm1_1@uint64 ymm1_1 ymm26_1;
xor ymm1_2@uint64 ymm1_2 ymm26_2;
xor ymm1_3@uint64 ymm1_3 ymm26_3;
(* vpxorq %ymm29,%ymm24,%ymm24                     #! PC = 0x555555581890 *)
xor ymm24_0@uint64 ymm24_0 ymm29_0;
xor ymm24_1@uint64 ymm24_1 ymm29_1;
xor ymm24_2@uint64 ymm24_2 ymm29_2;
xor ymm24_3@uint64 ymm24_3 ymm29_3;
(* vpxorq %ymm25,%ymm12,%ymm12                     #! PC = 0x555555581896 *)
xor ymm12_0@uint64 ymm12_0 ymm25_0;
xor ymm12_1@uint64 ymm12_1 ymm25_1;
xor ymm12_2@uint64 ymm12_2 ymm25_2;
xor ymm12_3@uint64 ymm12_3 ymm25_3;
(* vpxorq %ymm24,%ymm16,%ymm16                     #! PC = 0x55555558189c *)
xor ymm16_0@uint64 ymm16_0 ymm24_0;
xor ymm16_1@uint64 ymm16_1 ymm24_1;
xor ymm16_2@uint64 ymm16_2 ymm24_2;
xor ymm16_3@uint64 ymm16_3 ymm24_3;
(* vpxorq %ymm30,%ymm3,%ymm3                       #! PC = 0x5555555818a2 *)
xor ymm3_0@uint64 ymm3_0 ymm30_0;
xor ymm3_1@uint64 ymm3_1 ymm30_1;
xor ymm3_2@uint64 ymm3_2 ymm30_2;
xor ymm3_3@uint64 ymm3_3 ymm30_3;
(* vprorq $0x15,%ymm1,%ymm1                        #! PC = 0x5555555818a8 *)
ror ymm1_0 ymm1_0 0x15;
ror ymm1_1 ymm1_1 0x15;
ror ymm1_2 ymm1_2 0x15;
ror ymm1_3 ymm1_3 0x15;
(* vprolq $0x15,%ymm12,%ymm12                      #! PC = 0x5555555818af *)
rol ymm12_0 ymm12_0 0x15;
rol ymm12_1 ymm12_1 0x15;
rol ymm12_2 ymm12_2 0x15;
rol ymm12_3 ymm12_3 0x15;
(* vprolq $0xe,%ymm16,%ymm16                       #! PC = 0x5555555818b6 *)
rol ymm16_0 ymm16_0 0xe;
rol ymm16_1 ymm16_1 0xe;
rol ymm16_2 ymm16_2 0xe;
rol ymm16_3 ymm16_3 0xe;
(* vpxorq %ymm25,%ymm7,%ymm7                       #! PC = 0x5555555818bd *)
xor ymm7_0@uint64 ymm7_0 ymm25_0;
xor ymm7_1@uint64 ymm7_1 ymm25_1;
xor ymm7_2@uint64 ymm7_2 ymm25_2;
xor ymm7_3@uint64 ymm7_3 ymm25_3;
(* vpxorq %ymm24,%ymm19,%ymm19                     #! PC = 0x5555555818c3 *)
xor ymm19_0@uint64 ymm19_0 ymm24_0;
xor ymm19_1@uint64 ymm19_1 ymm24_1;
xor ymm19_2@uint64 ymm19_2 ymm24_2;
xor ymm19_3@uint64 ymm19_3 ymm24_3;
(* vprolq $0x1c,%ymm7,%ymm7                        #! PC = 0x5555555818c9 *)
rol ymm7_0 ymm7_0 0x1c;
rol ymm7_1 ymm7_1 0x1c;
rol ymm7_2 ymm7_2 0x1c;
rol ymm7_3 ymm7_3 0x1c;
(* vprolq $0x14,%ymm19,%ymm19                      #! PC = 0x5555555818d0 *)
rol ymm19_0 ymm19_0 0x14;
rol ymm19_1 ymm19_1 0x14;
rol ymm19_2 ymm19_2 0x14;
rol ymm19_3 ymm19_3 0x14;
(* vpxorq %ymm3,%ymm21,%ymm21                      #! PC = 0x5555555818d7 *)
xor ymm21_0@uint64 ymm21_0 ymm3_0;
xor ymm21_1@uint64 ymm21_1 ymm3_1;
xor ymm21_2@uint64 ymm21_2 ymm3_2;
xor ymm21_3@uint64 ymm21_3 ymm3_3;
(* vpxorq %ymm27,%ymm20,%ymm20                     #! PC = 0x5555555818dd *)
xor ymm20_0@uint64 ymm20_0 ymm27_0;
xor ymm20_1@uint64 ymm20_1 ymm27_1;
xor ymm20_2@uint64 ymm20_2 ymm27_2;
xor ymm20_3@uint64 ymm20_3 ymm27_3;
(* vpxorq %ymm26,%ymm13,%ymm13                     #! PC = 0x5555555818e3 *)
xor ymm13_0@uint64 ymm13_0 ymm26_0;
xor ymm13_1@uint64 ymm13_1 ymm26_1;
xor ymm13_2@uint64 ymm13_2 ymm26_2;
xor ymm13_3@uint64 ymm13_3 ymm26_3;
(* vpxorq %ymm27,%ymm18,%ymm18                     #! PC = 0x5555555818e9 *)
xor ymm18_0@uint64 ymm18_0 ymm27_0;
xor ymm18_1@uint64 ymm18_1 ymm27_1;
xor ymm18_2@uint64 ymm18_2 ymm27_2;
xor ymm18_3@uint64 ymm18_3 ymm27_3;
(* vpxorq %ymm26,%ymm14,%ymm14                     #! PC = 0x5555555818ef *)
xor ymm14_0@uint64 ymm14_0 ymm26_0;
xor ymm14_1@uint64 ymm14_1 ymm26_1;
xor ymm14_2@uint64 ymm14_2 ymm26_2;
xor ymm14_3@uint64 ymm14_3 ymm26_3;
(* vprolq $0x1,%ymm18,%ymm18                       #! PC = 0x5555555818f5 *)
rol ymm18_0 ymm18_0 0x1;
rol ymm18_1 ymm18_1 0x1;
rol ymm18_2 ymm18_2 0x1;
rol ymm18_3 ymm18_3 0x1;
(* vprolq $0x6,%ymm14,%ymm14                       #! PC = 0x5555555818fc *)
rol ymm14_0 ymm14_0 0x6;
rol ymm14_1 ymm14_1 0x6;
rol ymm14_2 ymm14_2 0x6;
rol ymm14_3 ymm14_3 0x6;
(* vprolq $0x3,%ymm21,%ymm21                       #! PC = 0x555555581903 *)
rol ymm21_0 ymm21_0 0x3;
rol ymm21_1 ymm21_1 0x3;
rol ymm21_2 ymm21_2 0x3;
rol ymm21_3 ymm21_3 0x3;
(* vprorq $0x13,%ymm20,%ymm20                      #! PC = 0x55555558190a *)
ror ymm20_0 ymm20_0 0x13;
ror ymm20_1 ymm20_1 0x13;
ror ymm20_2 ymm20_2 0x13;
ror ymm20_3 ymm20_3 0x13;
(* vprorq $0x3,%ymm13,%ymm13                       #! PC = 0x555555581911 *)
ror ymm13_0 ymm13_0 0x3;
ror ymm13_1 ymm13_1 0x3;
ror ymm13_2 ymm13_2 0x3;
ror ymm13_3 ymm13_3 0x3;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x555555581918 *)
xor ymm9_0@uint64 ymm9_0 ymm3_0;
xor ymm9_1@uint64 ymm9_1 ymm3_1;
xor ymm9_2@uint64 ymm9_2 ymm3_2;
xor ymm9_3@uint64 ymm9_3 ymm3_3;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x55555558191c *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxorq %ymm24,%ymm6,%ymm6                       #! PC = 0x555555581922 *)
xor ymm6_0@uint64 ymm6_0 ymm24_0;
xor ymm6_1@uint64 ymm6_1 ymm24_1;
xor ymm6_2@uint64 ymm6_2 ymm24_2;
xor ymm6_3@uint64 ymm6_3 ymm24_3;
(* vpxorq %ymm3,%ymm31,%ymm31                      #! PC = 0x555555581928 *)
xor ymm31_0@uint64 ymm31_0 ymm3_0;
xor ymm31_1@uint64 ymm31_1 ymm3_1;
xor ymm31_2@uint64 ymm31_2 ymm3_2;
xor ymm31_3@uint64 ymm31_3 ymm3_3;
(* vpxorq %ymm24,%ymm17,%ymm17                     #! PC = 0x55555558192e *)
xor ymm17_0@uint64 ymm17_0 ymm24_0;
xor ymm17_1@uint64 ymm17_1 ymm24_1;
xor ymm17_2@uint64 ymm17_2 ymm24_2;
xor ymm17_3@uint64 ymm17_3 ymm24_3;
(* vprorq $0x1c,%ymm31,%ymm31                      #! PC = 0x555555581934 *)
ror ymm31_0 ymm31_0 0x1c;
ror ymm31_1 ymm31_1 0x1c;
ror ymm31_2 ymm31_2 0x1c;
ror ymm31_3 ymm31_3 0x1c;
(* vprolq $0x1b,%ymm17,%ymm17                      #! PC = 0x55555558193b *)
rol ymm17_0 ymm17_0 0x1b;
rol ymm17_1 ymm17_1 0x1b;
rol ymm17_2 ymm17_2 0x1b;
rol ymm17_3 ymm17_3 0x1b;
(* vprolq $0x12,%ymm9,%ymm9                        #! PC = 0x555555581942 *)
rol ymm9_0 ymm9_0 0x12;
rol ymm9_1 ymm9_1 0x12;
rol ymm9_2 ymm9_2 0x12;
rol ymm9_3 ymm9_3 0x12;
(* vprolq $0x19,%ymm0,%ymm0                        #! PC = 0x555555581949 *)
rol ymm0_0 ymm0_0 0x19;
rol ymm0_1 ymm0_1 0x19;
rol ymm0_2 ymm0_2 0x19;
rol ymm0_3 ymm0_3 0x19;
(* vprolq $0x8,%ymm6,%ymm6                         #! PC = 0x555555581950 *)
rol ymm6_0 ymm6_0 0x8;
rol ymm6_1 ymm6_1 0x8;
rol ymm6_2 ymm6_2 0x8;
rol ymm6_3 ymm6_3 0x8;
(* vpxorq %ymm27,%ymm8,%ymm8                       #! PC = 0x555555581957 *)
xor ymm8_0@uint64 ymm8_0 ymm27_0;
xor ymm8_1@uint64 ymm8_1 ymm27_1;
xor ymm8_2@uint64 ymm8_2 ymm27_2;
xor ymm8_3@uint64 ymm8_3 ymm27_3;
(* vpxorq %ymm26,%ymm10,%ymm10                     #! PC = 0x55555558195d *)
xor ymm10_0@uint64 ymm10_0 ymm26_0;
xor ymm10_1@uint64 ymm10_1 ymm26_1;
xor ymm10_2@uint64 ymm10_2 ymm26_2;
xor ymm10_3@uint64 ymm10_3 ymm26_3;
(* vpxorq %ymm25,%ymm5,%ymm5                       #! PC = 0x555555581963 *)
xor ymm5_0@uint64 ymm5_0 ymm25_0;
xor ymm5_1@uint64 ymm5_1 ymm25_1;
xor ymm5_2@uint64 ymm5_2 ymm25_2;
xor ymm5_3@uint64 ymm5_3 ymm25_3;
(* vpxorq %ymm26,%ymm2,%ymm2                       #! PC = 0x555555581969 *)
xor ymm2_0@uint64 ymm2_0 ymm26_0;
xor ymm2_1@uint64 ymm2_1 ymm26_1;
xor ymm2_2@uint64 ymm2_2 ymm26_2;
xor ymm2_3@uint64 ymm2_3 ymm26_3;
(* vpxorq %ymm25,%ymm22,%ymm22                     #! PC = 0x55555558196f *)
xor ymm22_0@uint64 ymm22_0 ymm25_0;
xor ymm22_1@uint64 ymm22_1 ymm25_1;
xor ymm22_2@uint64 ymm22_2 ymm25_2;
xor ymm22_3@uint64 ymm22_3 ymm25_3;
(* vpxorq %ymm3,%ymm23,%ymm23                      #! PC = 0x555555581975 *)
xor ymm23_0@uint64 ymm23_0 ymm3_0;
xor ymm23_1@uint64 ymm23_1 ymm3_1;
xor ymm23_2@uint64 ymm23_2 ymm3_2;
xor ymm23_3@uint64 ymm23_3 ymm3_3;
(* vprorq $0x2,%ymm2,%ymm2                         #! PC = 0x55555558197b *)
ror ymm2_0 ymm2_0 0x2;
ror ymm2_1 ymm2_1 0x2;
ror ymm2_2 ymm2_2 0x2;
ror ymm2_3 ymm2_3 0x2;
(* vprorq $0x9,%ymm22,%ymm22                       #! PC = 0x555555581982 *)
ror ymm22_0 ymm22_0 0x9;
ror ymm22_1 ymm22_1 0x9;
ror ymm22_2 ymm22_2 0x9;
ror ymm22_3 ymm22_3 0x9;
(* vprolq $0xa,%ymm8,%ymm8                         #! PC = 0x555555581989 *)
rol ymm8_0 ymm8_0 0xa;
rol ymm8_1 ymm8_1 0xa;
rol ymm8_2 ymm8_2 0xa;
rol ymm8_3 ymm8_3 0xa;
(* vprolq $0xf,%ymm10,%ymm10                       #! PC = 0x555555581990 *)
rol ymm10_0 ymm10_0 0xf;
rol ymm10_1 ymm10_1 0xf;
rol ymm10_2 ymm10_2 0xf;
rol ymm10_3 ymm10_3 0xf;
(* vprorq $0x8,%ymm5,%ymm5                         #! PC = 0x555555581997 *)
ror ymm5_0 ymm5_0 0x8;
ror ymm5_1 ymm5_1 0x8;
ror ymm5_2 ymm5_2 0x8;
ror ymm5_3 ymm5_3 0x8;
(* vpxor  %ymm3,%ymm4,%ymm3                        #! PC = 0x55555558199e *)
xor ymm3_0@uint64 ymm4_0 ymm3_0;
xor ymm3_1@uint64 ymm4_1 ymm3_1;
xor ymm3_2@uint64 ymm4_2 ymm3_2;
xor ymm3_3@uint64 ymm4_3 ymm3_3;
(* vpxorq %ymm27,%ymm15,%ymm15                     #! PC = 0x5555555819a2 *)
xor ymm15_0@uint64 ymm15_0 ymm27_0;
xor ymm15_1@uint64 ymm15_1 ymm27_1;
xor ymm15_2@uint64 ymm15_2 ymm27_2;
xor ymm15_3@uint64 ymm15_3 ymm27_3;
(* vpxorq %ymm24,%ymm11,%ymm11                     #! PC = 0x5555555819a8 *)
xor ymm11_0@uint64 ymm11_0 ymm24_0;
xor ymm11_1@uint64 ymm11_1 ymm24_1;
xor ymm11_2@uint64 ymm11_2 ymm24_2;
xor ymm11_3@uint64 ymm11_3 ymm24_3;
(* vprorq $0x17,%ymm3,%ymm3                        #! PC = 0x5555555819ae *)
ror ymm3_0 ymm3_0 0x17;
ror ymm3_1 ymm3_1 0x17;
ror ymm3_2 ymm3_2 0x17;
ror ymm3_3 ymm3_3 0x17;
(* vprolq $0x2,%ymm15,%ymm15                       #! PC = 0x5555555819b5 *)
rol ymm15_0 ymm15_0 0x2;
rol ymm15_1 ymm15_1 0x2;
rol ymm15_2 ymm15_2 0x2;
rol ymm15_3 ymm15_3 0x2;
(* vprorq $0x19,%ymm11,%ymm11                      #! PC = 0x5555555819bc *)
ror ymm11_0 ymm11_0 0x19;
ror ymm11_1 ymm11_1 0x19;
ror ymm11_2 ymm11_2 0x19;
ror ymm11_3 ymm11_3 0x19;
(* vmovdqa64 %ymm23,%ymm30                         #! PC = 0x5555555819c3 *)
mov ymm30_0 ymm23_0;
mov ymm30_1 ymm23_1;
mov ymm30_2 ymm23_2;
mov ymm30_3 ymm23_3;
(* vmovdqa64 %ymm28,%ymm29                         #! PC = 0x5555555819c9 *)
mov ymm29_0 ymm28_0;
mov ymm29_1 ymm28_1;
mov ymm29_2 ymm28_2;
mov ymm29_3 ymm28_3;
(* vpternlogq $0xd2,%ymm1,%ymm28,%ymm30            #! PC = 0x5555555819cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm28_0, ymm1_0, table);
call vpternlogq64 (ymm30_1, ymm28_1, ymm1_1, table);
call vpternlogq64 (ymm30_2, ymm28_2, ymm1_2, table);
call vpternlogq64 (ymm30_3, ymm28_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm1,%ymm29            #! PC = 0x5555555819d6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm29_0, ymm1_0, ymm12_0, table);
call vpternlogq64 (ymm29_1, ymm1_1, ymm12_1, table);
call vpternlogq64 (ymm29_2, ymm1_2, ymm12_2, table);
call vpternlogq64 (ymm29_3, ymm1_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm12,%ymm1            #! PC = 0x5555555819dd *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm12_0, ymm16_0, table);
call vpternlogq64 (ymm1_1, ymm12_1, ymm16_1, table);
call vpternlogq64 (ymm1_2, ymm12_2, ymm16_2, table);
call vpternlogq64 (ymm1_3, ymm12_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm16,%ymm12           #! PC = 0x5555555819e4 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm16_0, ymm23_0, table);
call vpternlogq64 (ymm12_1, ymm16_1, ymm23_1, table);
call vpternlogq64 (ymm12_2, ymm16_2, ymm23_2, table);
call vpternlogq64 (ymm12_3, ymm16_3, ymm23_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm23,%ymm16           #! PC = 0x5555555819eb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm23_0, ymm28_0, table);
call vpternlogq64 (ymm16_1, ymm23_1, ymm28_1, table);
call vpternlogq64 (ymm16_2, ymm23_2, ymm28_2, table);
call vpternlogq64 (ymm16_3, ymm23_3, ymm28_3, table);
(* vpbroadcastq %rbx,%ymm23                        #! PC = 0x5555555819f2 *)
mov ymm23_0 rbx;
mov ymm23_1 rbx;
mov ymm23_2 rbx;
mov ymm23_3 rbx;
(* vpxorq %ymm30,%ymm23,%ymm23                     #! PC = 0x5555555819f8 *)
xor ymm23_0@uint64 ymm23_0 ymm30_0;
xor ymm23_1@uint64 ymm23_1 ymm30_1;
xor ymm23_2@uint64 ymm23_2 ymm30_2;
xor ymm23_3@uint64 ymm23_3 ymm30_3;
(* vmovdqa64 %ymm7,%ymm28                          #! PC = 0x5555555819fe *)
mov ymm28_0 ymm7_0;
mov ymm28_1 ymm7_1;
mov ymm28_2 ymm7_2;
mov ymm28_3 ymm7_3;
(* vmovdqa64 %ymm19,%ymm30                         #! PC = 0x555555581a04 *)
mov ymm30_0 ymm19_0;
mov ymm30_1 ymm19_1;
mov ymm30_2 ymm19_2;
mov ymm30_3 ymm19_3;
(* vpternlogq $0xd2,%ymm21,%ymm19,%ymm28           #! PC = 0x555555581a0a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm19_0, ymm21_0, table);
call vpternlogq64 (ymm28_1, ymm19_1, ymm21_1, table);
call vpternlogq64 (ymm28_2, ymm19_2, ymm21_2, table);
call vpternlogq64 (ymm28_3, ymm19_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm21,%ymm30           #! PC = 0x555555581a11 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm21_0, ymm20_0, table);
call vpternlogq64 (ymm30_1, ymm21_1, ymm20_1, table);
call vpternlogq64 (ymm30_2, ymm21_2, ymm20_2, table);
call vpternlogq64 (ymm30_3, ymm21_3, ymm20_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm20,%ymm21           #! PC = 0x555555581a18 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm20_0, ymm13_0, table);
call vpternlogq64 (ymm21_1, ymm20_1, ymm13_1, table);
call vpternlogq64 (ymm21_2, ymm20_2, ymm13_2, table);
call vpternlogq64 (ymm21_3, ymm20_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm13,%ymm20            #! PC = 0x555555581a1f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm13_0, ymm7_0, table);
call vpternlogq64 (ymm20_1, ymm13_1, ymm7_1, table);
call vpternlogq64 (ymm20_2, ymm13_2, ymm7_2, table);
call vpternlogq64 (ymm20_3, ymm13_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm7,%ymm13            #! PC = 0x555555581a26 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm7_0, ymm19_0, table);
call vpternlogq64 (ymm13_1, ymm7_1, ymm19_1, table);
call vpternlogq64 (ymm13_2, ymm7_2, ymm19_2, table);
call vpternlogq64 (ymm13_3, ymm7_3, ymm19_3, table);
(* vmovdqa64 %ymm18,%ymm19                         #! PC = 0x555555581a2d *)
mov ymm19_0 ymm18_0;
mov ymm19_1 ymm18_1;
mov ymm19_2 ymm18_2;
mov ymm19_3 ymm18_3;
(* vmovdqa %ymm14,%ymm7                            #! PC = 0x555555581a33 *)
mov ymm7_0 ymm14_0;
mov ymm7_1 ymm14_1;
mov ymm7_2 ymm14_2;
mov ymm7_3 ymm14_3;
(* vpternlogq $0xd2,%ymm0,%ymm14,%ymm19            #! PC = 0x555555581a37 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm14_0, ymm0_0, table);
call vpternlogq64 (ymm19_1, ymm14_1, ymm0_1, table);
call vpternlogq64 (ymm19_2, ymm14_2, ymm0_2, table);
call vpternlogq64 (ymm19_3, ymm14_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm6,%ymm0,%ymm7              #! PC = 0x555555581a3e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm0_0, ymm6_0, table);
call vpternlogq64 (ymm7_1, ymm0_1, ymm6_1, table);
call vpternlogq64 (ymm7_2, ymm0_2, ymm6_2, table);
call vpternlogq64 (ymm7_3, ymm0_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm6,%ymm0              #! PC = 0x555555581a45 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm6_0, ymm9_0, table);
call vpternlogq64 (ymm0_1, ymm6_1, ymm9_1, table);
call vpternlogq64 (ymm0_2, ymm6_2, ymm9_2, table);
call vpternlogq64 (ymm0_3, ymm6_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm9,%ymm6             #! PC = 0x555555581a4c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm9_0, ymm18_0, table);
call vpternlogq64 (ymm6_1, ymm9_1, ymm18_1, table);
call vpternlogq64 (ymm6_2, ymm9_2, ymm18_2, table);
call vpternlogq64 (ymm6_3, ymm9_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm18,%ymm9            #! PC = 0x555555581a53 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm18_0, ymm14_0, table);
call vpternlogq64 (ymm9_1, ymm18_1, ymm14_1, table);
call vpternlogq64 (ymm9_2, ymm18_2, ymm14_2, table);
call vpternlogq64 (ymm9_3, ymm18_3, ymm14_3, table);
(* vmovdqa64 %ymm17,%ymm14                         #! PC = 0x555555581a5a *)
mov ymm14_0 ymm17_0;
mov ymm14_1 ymm17_1;
mov ymm14_2 ymm17_2;
mov ymm14_3 ymm17_3;
(* vmovdqa64 %ymm31,%ymm18                         #! PC = 0x555555581a60 *)
mov ymm18_0 ymm31_0;
mov ymm18_1 ymm31_1;
mov ymm18_2 ymm31_2;
mov ymm18_3 ymm31_3;
(* vpternlogq $0xd2,%ymm8,%ymm31,%ymm14            #! PC = 0x555555581a66 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm31_0, ymm8_0, table);
call vpternlogq64 (ymm14_1, ymm31_1, ymm8_1, table);
call vpternlogq64 (ymm14_2, ymm31_2, ymm8_2, table);
call vpternlogq64 (ymm14_3, ymm31_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm8,%ymm18            #! PC = 0x555555581a6d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm8_0, ymm10_0, table);
call vpternlogq64 (ymm18_1, ymm8_1, ymm10_1, table);
call vpternlogq64 (ymm18_2, ymm8_2, ymm10_2, table);
call vpternlogq64 (ymm18_3, ymm8_3, ymm10_3, table);
(* vmovdqa64 %ymm22,%ymm24                         #! PC = 0x555555581a74 *)
mov ymm24_0 ymm22_0;
mov ymm24_1 ymm22_1;
mov ymm24_2 ymm22_2;
mov ymm24_3 ymm22_3;
(* vpternlogq $0xd2,%ymm5,%ymm10,%ymm8             #! PC = 0x555555581a7a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm10_0, ymm5_0, table);
call vpternlogq64 (ymm8_1, ymm10_1, ymm5_1, table);
call vpternlogq64 (ymm8_2, ymm10_2, ymm5_2, table);
call vpternlogq64 (ymm8_3, ymm10_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm5,%ymm10            #! PC = 0x555555581a81 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm5_0, ymm17_0, table);
call vpternlogq64 (ymm10_1, ymm5_1, ymm17_1, table);
call vpternlogq64 (ymm10_2, ymm5_2, ymm17_2, table);
call vpternlogq64 (ymm10_3, ymm5_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm17,%ymm5            #! PC = 0x555555581a88 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm17_0, ymm31_0, table);
call vpternlogq64 (ymm5_1, ymm17_1, ymm31_1, table);
call vpternlogq64 (ymm5_2, ymm17_2, ymm31_2, table);
call vpternlogq64 (ymm5_3, ymm17_3, ymm31_3, table);
(* vmovdqa64 %ymm2,%ymm17                          #! PC = 0x555555581a8f *)
mov ymm17_0 ymm2_0;
mov ymm17_1 ymm2_1;
mov ymm17_2 ymm2_2;
mov ymm17_3 ymm2_3;
(* vpternlogq $0xd2,%ymm11,%ymm22,%ymm17           #! PC = 0x555555581a95 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm22_0, ymm11_0, table);
call vpternlogq64 (ymm17_1, ymm22_1, ymm11_1, table);
call vpternlogq64 (ymm17_2, ymm22_2, ymm11_2, table);
call vpternlogq64 (ymm17_3, ymm22_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm11,%ymm24            #! PC = 0x555555581a9c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm11_0, ymm3_0, table);
call vpternlogq64 (ymm24_1, ymm11_1, ymm3_1, table);
call vpternlogq64 (ymm24_2, ymm11_2, ymm3_2, table);
call vpternlogq64 (ymm24_3, ymm11_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm15,%ymm3,%ymm11            #! PC = 0x555555581aa3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm3_0, ymm15_0, table);
call vpternlogq64 (ymm11_1, ymm3_1, ymm15_1, table);
call vpternlogq64 (ymm11_2, ymm3_2, ymm15_2, table);
call vpternlogq64 (ymm11_3, ymm3_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm15,%ymm3             #! PC = 0x555555581aaa *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm15_0, ymm2_0, table);
call vpternlogq64 (ymm3_1, ymm15_1, ymm2_1, table);
call vpternlogq64 (ymm3_2, ymm15_2, ymm2_2, table);
call vpternlogq64 (ymm3_3, ymm15_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm22,%ymm2,%ymm15            #! PC = 0x555555581ab1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm2_0, ymm22_0, table);
call vpternlogq64 (ymm15_1, ymm2_1, ymm22_1, table);
call vpternlogq64 (ymm15_2, ymm2_2, ymm22_2, table);
call vpternlogq64 (ymm15_3, ymm2_3, ymm22_3, table);
(* vmovdqa64 %ymm11,%ymm22                         #! PC = 0x555555581ab8 *)
mov ymm22_0 ymm11_0;
mov ymm22_1 ymm11_1;
mov ymm22_2 ymm11_2;
mov ymm22_3 ymm11_3;
(* vpternlogq $0x96,%ymm1,%ymm0,%ymm22             #! PC = 0x555555581abe *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm0_0, ymm1_0, table);
call vpternlogq64 (ymm22_1, ymm0_1, ymm1_1, table);
call vpternlogq64 (ymm22_2, ymm0_2, ymm1_2, table);
call vpternlogq64 (ymm22_3, ymm0_3, ymm1_3, table);
(* vpternlogq $0x96,%ymm21,%ymm8,%ymm22            #! PC = 0x555555581ac5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm8_0, ymm21_0, table);
call vpternlogq64 (ymm22_1, ymm8_1, ymm21_1, table);
call vpternlogq64 (ymm22_2, ymm8_2, ymm21_2, table);
call vpternlogq64 (ymm22_3, ymm8_3, ymm21_3, table);
(* vprolq $0x1,%ymm22,%ymm2                        #! PC = 0x555555581acc *)
rol ymm2_0 ymm22_0 0x1;
rol ymm2_1 ymm22_1 0x1;
rol ymm2_2 ymm22_2 0x1;
rol ymm2_3 ymm22_3 0x1;
(* vmovdqa64 %ymm20,%ymm4                          #! PC = 0x555555581ad3 *)
mov ymm4_0 ymm20_0;
mov ymm4_1 ymm20_1;
mov ymm4_2 ymm20_2;
mov ymm4_3 ymm20_3;
(* vpternlogq $0x96,%ymm6,%ymm3,%ymm4              #! PC = 0x555555581ad9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm3_0, ymm6_0, table);
call vpternlogq64 (ymm4_1, ymm3_1, ymm6_1, table);
call vpternlogq64 (ymm4_2, ymm3_2, ymm6_2, table);
call vpternlogq64 (ymm4_3, ymm3_3, ymm6_3, table);
(* vpternlogq $0x96,%ymm10,%ymm12,%ymm4            #! PC = 0x555555581ae0 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm4_0, ymm12_0, ymm10_0, table);
call vpternlogq64 (ymm4_1, ymm12_1, ymm10_1, table);
call vpternlogq64 (ymm4_2, ymm12_2, ymm10_2, table);
call vpternlogq64 (ymm4_3, ymm12_3, ymm10_3, table);
(* vmovdqa64 %ymm5,%ymm27                          #! PC = 0x555555581ae7 *)
mov ymm27_0 ymm5_0;
mov ymm27_1 ymm5_1;
mov ymm27_2 ymm5_2;
mov ymm27_3 ymm5_3;
(* vpternlogq $0x96,%ymm15,%ymm13,%ymm27           #! PC = 0x555555581aed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm13_0, ymm15_0, table);
call vpternlogq64 (ymm27_1, ymm13_1, ymm15_1, table);
call vpternlogq64 (ymm27_2, ymm13_2, ymm15_2, table);
call vpternlogq64 (ymm27_3, ymm13_3, ymm15_3, table);
(* vmovdqa %ymm2,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x555555581af4 *)
mov L0x7fffffffd960 ymm2_0;
mov L0x7fffffffd968 ymm2_1;
mov L0x7fffffffd970 ymm2_2;
mov L0x7fffffffd978 ymm2_3;
(* vprolq $0x1,%ymm4,%ymm2                         #! PC = 0x555555581afd *)
rol ymm2_0 ymm4_0 0x1;
rol ymm2_1 ymm4_1 0x1;
rol ymm2_2 ymm4_2 0x1;
rol ymm2_3 ymm4_3 0x1;
(* vpternlogq $0x96,%ymm16,%ymm9,%ymm27            #! PC = 0x555555581b04 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm9_0, ymm16_0, table);
call vpternlogq64 (ymm27_1, ymm9_1, ymm16_1, table);
call vpternlogq64 (ymm27_2, ymm9_2, ymm16_2, table);
call vpternlogq64 (ymm27_3, ymm9_3, ymm16_3, table);
(* vmovdqa64 %ymm23,%ymm26                         #! PC = 0x555555581b0b *)
mov ymm26_0 ymm23_0;
mov ymm26_1 ymm23_1;
mov ymm26_2 ymm23_2;
mov ymm26_3 ymm23_3;
(* vpternlogq $0x96,%ymm28,%ymm14,%ymm26           #! PC = 0x555555581b11 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm14_0, ymm28_0, table);
call vpternlogq64 (ymm26_1, ymm14_1, ymm28_1, table);
call vpternlogq64 (ymm26_2, ymm14_2, ymm28_2, table);
call vpternlogq64 (ymm26_3, ymm14_3, ymm28_3, table);
(* vpternlogq $0x96,%ymm19,%ymm17,%ymm26           #! PC = 0x555555581b18 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm17_0, ymm19_0, table);
call vpternlogq64 (ymm26_1, ymm17_1, ymm19_1, table);
call vpternlogq64 (ymm26_2, ymm17_2, ymm19_2, table);
call vpternlogq64 (ymm26_3, ymm17_3, ymm19_3, table);
(* vmovdqa64 %ymm7,%ymm25                          #! PC = 0x555555581b1f *)
mov ymm25_0 ymm7_0;
mov ymm25_1 ymm7_1;
mov ymm25_2 ymm7_2;
mov ymm25_3 ymm7_3;
(* vmovdqa %ymm2,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x555555581b25 *)
mov L0x7fffffffd940 ymm2_0;
mov L0x7fffffffd948 ymm2_1;
mov L0x7fffffffd950 ymm2_2;
mov L0x7fffffffd958 ymm2_3;
(* vprolq $0x1,%ymm27,%ymm2                        #! PC = 0x555555581b2b *)
rol ymm2_0 ymm27_0 0x1;
rol ymm2_1 ymm27_1 0x1;
rol ymm2_2 ymm27_2 0x1;
rol ymm2_3 ymm27_3 0x1;
(* vpternlogq $0x96,%ymm18,%ymm29,%ymm25           #! PC = 0x555555581b32 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm29_0, ymm18_0, table);
call vpternlogq64 (ymm25_1, ymm29_1, ymm18_1, table);
call vpternlogq64 (ymm25_2, ymm29_2, ymm18_2, table);
call vpternlogq64 (ymm25_3, ymm29_3, ymm18_3, table);
(* vpternlogq $0x96,%ymm24,%ymm30,%ymm25           #! PC = 0x555555581b39 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm30_0, ymm24_0, table);
call vpternlogq64 (ymm25_1, ymm30_1, ymm24_1, table);
call vpternlogq64 (ymm25_2, ymm30_2, ymm24_2, table);
call vpternlogq64 (ymm25_3, ymm30_3, ymm24_3, table);
(* vprolq $0x1,%ymm25,%ymm31                       #! PC = 0x555555581b40 *)
rol ymm31_0 ymm25_0 0x1;
rol ymm31_1 ymm25_1 0x1;
rol ymm31_2 ymm25_2 0x1;
rol ymm31_3 ymm25_3 0x1;
(* vpxorq 0x68(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd940; Value = 0x272d59f5989f446d; PC = 0x555555581b47 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd940;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd948;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd950;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd958;
(* movabs $0x800000008000000a,%r11                 #! PC = 0x555555581b52 *)
mov r11 0x800000008000000a@uint64;
(* vmovdqa %ymm2,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x555555581b5c *)
mov L0x7fffffffd920 ymm2_0;
mov L0x7fffffffd928 ymm2_1;
mov L0x7fffffffd930 ymm2_2;
mov L0x7fffffffd938 ymm2_3;
(* vprolq $0x1,%ymm26,%ymm2                        #! PC = 0x555555581b62 *)
rol ymm2_0 ymm26_0 0x1;
rol ymm2_1 ymm26_1 0x1;
rol ymm2_2 ymm26_2 0x1;
rol ymm2_3 ymm26_3 0x1;
(* vpxorq 0x88(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd960; Value = 0xba927063826625bf; PC = 0x555555581b69 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd960;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd968;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd970;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd920; Value = 0x10db7ece1795a536; PC = 0x555555581b74 *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd920;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd928;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd930;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd938;
(* vpxorq %ymm26,%ymm30,%ymm30                     #! PC = 0x555555581b7f *)
xor ymm30_0@uint64 ymm30_0 ymm26_0;
xor ymm30_1@uint64 ymm30_1 ymm26_1;
xor ymm30_2@uint64 ymm30_2 ymm26_2;
xor ymm30_3@uint64 ymm30_3 ymm26_3;
(* vprorq $0x14,%ymm30,%ymm30                      #! PC = 0x555555581b85 *)
ror ymm30_0 ymm30_0 0x14;
ror ymm30_1 ymm30_1 0x14;
ror ymm30_2 ymm30_2 0x14;
ror ymm30_3 ymm30_3 0x14;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x555555581b8c *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxor  %ymm2,%ymm4,%ymm4                        #! PC = 0x555555581b92 *)
xor ymm4_0@uint64 ymm4_0 ymm2_0;
xor ymm4_1@uint64 ymm4_1 ymm2_1;
xor ymm4_2@uint64 ymm4_2 ymm2_2;
xor ymm4_3@uint64 ymm4_3 ymm2_3;
(* vpxor  %ymm4,%ymm15,%ymm2                       #! PC = 0x555555581b96 *)
xor ymm2_0@uint64 ymm15_0 ymm4_0;
xor ymm2_1@uint64 ymm15_1 ymm4_1;
xor ymm2_2@uint64 ymm15_2 ymm4_2;
xor ymm2_3@uint64 ymm15_3 ymm4_3;
(* vpxorq %ymm22,%ymm10,%ymm10                     #! PC = 0x555555581b9a *)
xor ymm10_0@uint64 ymm10_0 ymm22_0;
xor ymm10_1@uint64 ymm10_1 ymm22_1;
xor ymm10_2@uint64 ymm10_2 ymm22_2;
xor ymm10_3@uint64 ymm10_3 ymm22_3;
(* vpxorq %ymm31,%ymm27,%ymm27                     #! PC = 0x555555581ba0 *)
xor ymm27_0@uint64 ymm27_0 ymm31_0;
xor ymm27_1@uint64 ymm27_1 ymm31_1;
xor ymm27_2@uint64 ymm27_2 ymm31_2;
xor ymm27_3@uint64 ymm27_3 ymm31_3;
(* vprorq $0x15,%ymm0,%ymm0                        #! PC = 0x555555581ba6 *)
ror ymm0_0 ymm0_0 0x15;
ror ymm0_1 ymm0_1 0x15;
ror ymm0_2 ymm0_2 0x15;
ror ymm0_3 ymm0_3 0x15;
(* vprolq $0x15,%ymm10,%ymm10                      #! PC = 0x555555581bad *)
rol ymm10_0 ymm10_0 0x15;
rol ymm10_1 ymm10_1 0x15;
rol ymm10_2 ymm10_2 0x15;
rol ymm10_3 ymm10_3 0x15;
(* vprolq $0xe,%ymm2,%ymm2                         #! PC = 0x555555581bb4 *)
rol ymm2_0 ymm2_0 0xe;
rol ymm2_1 ymm2_1 0xe;
rol ymm2_2 ymm2_2 0xe;
rol ymm2_3 ymm2_3 0xe;
(* vpxorq %ymm22,%ymm12,%ymm12                     #! PC = 0x555555581bbb *)
xor ymm12_0@uint64 ymm12_0 ymm22_0;
xor ymm12_1@uint64 ymm12_1 ymm22_1;
xor ymm12_2@uint64 ymm12_2 ymm22_2;
xor ymm12_3@uint64 ymm12_3 ymm22_3;
(* vpxor  %ymm4,%ymm13,%ymm13                      #! PC = 0x555555581bc1 *)
xor ymm13_0@uint64 ymm13_0 ymm4_0;
xor ymm13_1@uint64 ymm13_1 ymm4_1;
xor ymm13_2@uint64 ymm13_2 ymm4_2;
xor ymm13_3@uint64 ymm13_3 ymm4_3;
(* vprolq $0x1c,%ymm12,%ymm12                      #! PC = 0x555555581bc5 *)
rol ymm12_0 ymm12_0 0x1c;
rol ymm12_1 ymm12_1 0x1c;
rol ymm12_2 ymm12_2 0x1c;
rol ymm12_3 ymm12_3 0x1c;
(* vprolq $0x14,%ymm13,%ymm13                      #! PC = 0x555555581bcc *)
rol ymm13_0 ymm13_0 0x14;
rol ymm13_1 ymm13_1 0x14;
rol ymm13_2 ymm13_2 0x14;
rol ymm13_3 ymm13_3 0x14;
(* vpxorq %ymm27,%ymm19,%ymm19                     #! PC = 0x555555581bd3 *)
xor ymm19_0@uint64 ymm19_0 ymm27_0;
xor ymm19_1@uint64 ymm19_1 ymm27_1;
xor ymm19_2@uint64 ymm19_2 ymm27_2;
xor ymm19_3@uint64 ymm19_3 ymm27_3;
(* vpxorq %ymm26,%ymm18,%ymm18                     #! PC = 0x555555581bd9 *)
xor ymm18_0@uint64 ymm18_0 ymm26_0;
xor ymm18_1@uint64 ymm18_1 ymm26_1;
xor ymm18_2@uint64 ymm18_2 ymm26_2;
xor ymm18_3@uint64 ymm18_3 ymm26_3;
(* vpxorq %ymm25,%ymm11,%ymm11                     #! PC = 0x555555581bdf *)
xor ymm11_0@uint64 ymm11_0 ymm25_0;
xor ymm11_1@uint64 ymm11_1 ymm25_1;
xor ymm11_2@uint64 ymm11_2 ymm25_2;
xor ymm11_3@uint64 ymm11_3 ymm25_3;
(* vpxorq %ymm26,%ymm29,%ymm29                     #! PC = 0x555555581be5 *)
xor ymm29_0@uint64 ymm29_0 ymm26_0;
xor ymm29_1@uint64 ymm29_1 ymm26_1;
xor ymm29_2@uint64 ymm29_2 ymm26_2;
xor ymm29_3@uint64 ymm29_3 ymm26_3;
(* vpxorq %ymm25,%ymm21,%ymm21                     #! PC = 0x555555581beb *)
xor ymm21_0@uint64 ymm21_0 ymm25_0;
xor ymm21_1@uint64 ymm21_1 ymm25_1;
xor ymm21_2@uint64 ymm21_2 ymm25_2;
xor ymm21_3@uint64 ymm21_3 ymm25_3;
(* vprolq $0x1,%ymm29,%ymm29                       #! PC = 0x555555581bf1 *)
rol ymm29_0 ymm29_0 0x1;
rol ymm29_1 ymm29_1 0x1;
rol ymm29_2 ymm29_2 0x1;
rol ymm29_3 ymm29_3 0x1;
(* vprolq $0x6,%ymm21,%ymm21                       #! PC = 0x555555581bf8 *)
rol ymm21_0 ymm21_0 0x6;
rol ymm21_1 ymm21_1 0x6;
rol ymm21_2 ymm21_2 0x6;
rol ymm21_3 ymm21_3 0x6;
(* vprolq $0x3,%ymm19,%ymm19                       #! PC = 0x555555581bff *)
rol ymm19_0 ymm19_0 0x3;
rol ymm19_1 ymm19_1 0x3;
rol ymm19_2 ymm19_2 0x3;
rol ymm19_3 ymm19_3 0x3;
(* vprorq $0x13,%ymm18,%ymm18                      #! PC = 0x555555581c06 *)
ror ymm18_0 ymm18_0 0x13;
ror ymm18_1 ymm18_1 0x13;
ror ymm18_2 ymm18_2 0x13;
ror ymm18_3 ymm18_3 0x13;
(* vprorq $0x3,%ymm11,%ymm11                       #! PC = 0x555555581c0d *)
ror ymm11_0 ymm11_0 0x3;
ror ymm11_1 ymm11_1 0x3;
ror ymm11_2 ymm11_2 0x3;
ror ymm11_3 ymm11_3 0x3;
(* vpxorq %ymm27,%ymm17,%ymm17                     #! PC = 0x555555581c14 *)
xor ymm17_0@uint64 ymm17_0 ymm27_0;
xor ymm17_1@uint64 ymm17_1 ymm27_1;
xor ymm17_2@uint64 ymm17_2 ymm27_2;
xor ymm17_3@uint64 ymm17_3 ymm27_3;
(* vpxorq %ymm22,%ymm6,%ymm6                       #! PC = 0x555555581c1a *)
xor ymm6_0@uint64 ymm6_0 ymm22_0;
xor ymm6_1@uint64 ymm6_1 ymm22_1;
xor ymm6_2@uint64 ymm6_2 ymm22_2;
xor ymm6_3@uint64 ymm6_3 ymm22_3;
(* vpxor  %ymm4,%ymm5,%ymm5                        #! PC = 0x555555581c20 *)
xor ymm5_0@uint64 ymm5_0 ymm4_0;
xor ymm5_1@uint64 ymm5_1 ymm4_1;
xor ymm5_2@uint64 ymm5_2 ymm4_2;
xor ymm5_3@uint64 ymm5_3 ymm4_3;
(* vpxorq %ymm27,%ymm28,%ymm28                     #! PC = 0x555555581c24 *)
xor ymm28_0@uint64 ymm28_0 ymm27_0;
xor ymm28_1@uint64 ymm28_1 ymm27_1;
xor ymm28_2@uint64 ymm28_2 ymm27_2;
xor ymm28_3@uint64 ymm28_3 ymm27_3;
(* vpxorq %ymm4,%ymm16,%ymm16                      #! PC = 0x555555581c2a *)
xor ymm16_0@uint64 ymm16_0 ymm4_0;
xor ymm16_1@uint64 ymm16_1 ymm4_1;
xor ymm16_2@uint64 ymm16_2 ymm4_2;
xor ymm16_3@uint64 ymm16_3 ymm4_3;
(* vprorq $0x1c,%ymm28,%ymm28                      #! PC = 0x555555581c30 *)
ror ymm28_0 ymm28_0 0x1c;
ror ymm28_1 ymm28_1 0x1c;
ror ymm28_2 ymm28_2 0x1c;
ror ymm28_3 ymm28_3 0x1c;
(* vprolq $0x1b,%ymm16,%ymm16                      #! PC = 0x555555581c37 *)
rol ymm16_0 ymm16_0 0x1b;
rol ymm16_1 ymm16_1 0x1b;
rol ymm16_2 ymm16_2 0x1b;
rol ymm16_3 ymm16_3 0x1b;
(* vprolq $0x12,%ymm17,%ymm17                      #! PC = 0x555555581c3e *)
rol ymm17_0 ymm17_0 0x12;
rol ymm17_1 ymm17_1 0x12;
rol ymm17_2 ymm17_2 0x12;
rol ymm17_3 ymm17_3 0x12;
(* vprolq $0x19,%ymm6,%ymm6                        #! PC = 0x555555581c45 *)
rol ymm6_0 ymm6_0 0x19;
rol ymm6_1 ymm6_1 0x19;
rol ymm6_2 ymm6_2 0x19;
rol ymm6_3 ymm6_3 0x19;
(* vprolq $0x8,%ymm5,%ymm5                         #! PC = 0x555555581c4c *)
rol ymm5_0 ymm5_0 0x8;
rol ymm5_1 ymm5_1 0x8;
rol ymm5_2 ymm5_2 0x8;
rol ymm5_3 ymm5_3 0x8;
(* vpxorq %ymm26,%ymm7,%ymm7                       #! PC = 0x555555581c53 *)
xor ymm7_0@uint64 ymm7_0 ymm26_0;
xor ymm7_1@uint64 ymm7_1 ymm26_1;
xor ymm7_2@uint64 ymm7_2 ymm26_2;
xor ymm7_3@uint64 ymm7_3 ymm26_3;
(* vpxorq %ymm25,%ymm8,%ymm8                       #! PC = 0x555555581c59 *)
xor ymm8_0@uint64 ymm8_0 ymm25_0;
xor ymm8_1@uint64 ymm8_1 ymm25_1;
xor ymm8_2@uint64 ymm8_2 ymm25_2;
xor ymm8_3@uint64 ymm8_3 ymm25_3;
(* vpxorq %ymm22,%ymm3,%ymm3                       #! PC = 0x555555581c5f *)
xor ymm3_0@uint64 ymm3_0 ymm22_0;
xor ymm3_1@uint64 ymm3_1 ymm22_1;
xor ymm3_2@uint64 ymm3_2 ymm22_2;
xor ymm3_3@uint64 ymm3_3 ymm22_3;
(* vpxorq %ymm25,%ymm1,%ymm1                       #! PC = 0x555555581c65 *)
xor ymm1_0@uint64 ymm1_0 ymm25_0;
xor ymm1_1@uint64 ymm1_1 ymm25_1;
xor ymm1_2@uint64 ymm1_2 ymm25_2;
xor ymm1_3@uint64 ymm1_3 ymm25_3;
(* vpxorq %ymm22,%ymm20,%ymm20                     #! PC = 0x555555581c6b *)
xor ymm20_0@uint64 ymm20_0 ymm22_0;
xor ymm20_1@uint64 ymm20_1 ymm22_1;
xor ymm20_2@uint64 ymm20_2 ymm22_2;
xor ymm20_3@uint64 ymm20_3 ymm22_3;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581c71 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprorq $0x2,%ymm1,%ymm1                         #! PC = 0x555555581c77 *)
ror ymm1_0 ymm1_0 0x2;
ror ymm1_1 ymm1_1 0x2;
ror ymm1_2 ymm1_2 0x2;
ror ymm1_3 ymm1_3 0x2;
(* vprorq $0x9,%ymm20,%ymm20                       #! PC = 0x555555581c7e *)
ror ymm20_0 ymm20_0 0x9;
ror ymm20_1 ymm20_1 0x9;
ror ymm20_2 ymm20_2 0x9;
ror ymm20_3 ymm20_3 0x9;
(* vprolq $0xa,%ymm7,%ymm7                         #! PC = 0x555555581c85 *)
rol ymm7_0 ymm7_0 0xa;
rol ymm7_1 ymm7_1 0xa;
rol ymm7_2 ymm7_2 0xa;
rol ymm7_3 ymm7_3 0xa;
(* vprolq $0xf,%ymm8,%ymm8                         #! PC = 0x555555581c8c *)
rol ymm8_0 ymm8_0 0xf;
rol ymm8_1 ymm8_1 0xf;
rol ymm8_2 ymm8_2 0xf;
rol ymm8_3 ymm8_3 0xf;
(* vprorq $0x8,%ymm3,%ymm3                         #! PC = 0x555555581c93 *)
ror ymm3_0 ymm3_0 0x8;
ror ymm3_1 ymm3_1 0x8;
ror ymm3_2 ymm3_2 0x8;
ror ymm3_3 ymm3_3 0x8;
(* vpxorq %ymm27,%ymm14,%ymm14                     #! PC = 0x555555581c9a *)
xor ymm14_0@uint64 ymm14_0 ymm27_0;
xor ymm14_1@uint64 ymm14_1 ymm27_1;
xor ymm14_2@uint64 ymm14_2 ymm27_2;
xor ymm14_3@uint64 ymm14_3 ymm27_3;
(* vpxorq %ymm26,%ymm24,%ymm24                     #! PC = 0x555555581ca0 *)
xor ymm24_0@uint64 ymm24_0 ymm26_0;
xor ymm24_1@uint64 ymm24_1 ymm26_1;
xor ymm24_2@uint64 ymm24_2 ymm26_2;
xor ymm24_3@uint64 ymm24_3 ymm26_3;
(* vpxor  %ymm4,%ymm9,%ymm9                        #! PC = 0x555555581ca6 *)
xor ymm9_0@uint64 ymm9_0 ymm4_0;
xor ymm9_1@uint64 ymm9_1 ymm4_1;
xor ymm9_2@uint64 ymm9_2 ymm4_2;
xor ymm9_3@uint64 ymm9_3 ymm4_3;
(* vprorq $0x17,%ymm14,%ymm14                      #! PC = 0x555555581caa *)
ror ymm14_0 ymm14_0 0x17;
ror ymm14_1 ymm14_1 0x17;
ror ymm14_2 ymm14_2 0x17;
ror ymm14_3 ymm14_3 0x17;
(* vprolq $0x2,%ymm24,%ymm24                       #! PC = 0x555555581cb1 *)
rol ymm24_0 ymm24_0 0x2;
rol ymm24_1 ymm24_1 0x2;
rol ymm24_2 ymm24_2 0x2;
rol ymm24_3 ymm24_3 0x2;
(* vprorq $0x19,%ymm9,%ymm9                        #! PC = 0x555555581cb8 *)
ror ymm9_0 ymm9_0 0x19;
ror ymm9_1 ymm9_1 0x19;
ror ymm9_2 ymm9_2 0x19;
ror ymm9_3 ymm9_3 0x19;
(* vmovdqa64 %ymm23,%ymm31                         #! PC = 0x555555581cbf *)
mov ymm31_0 ymm23_0;
mov ymm31_1 ymm23_1;
mov ymm31_2 ymm23_2;
mov ymm31_3 ymm23_3;
(* vmovdqa64 %ymm30,%ymm15                         #! PC = 0x555555581cc5 *)
mov ymm15_0 ymm30_0;
mov ymm15_1 ymm30_1;
mov ymm15_2 ymm30_2;
mov ymm15_3 ymm30_3;
(* vpternlogq $0xd2,%ymm0,%ymm30,%ymm31            #! PC = 0x555555581ccb *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm30_0, ymm0_0, table);
call vpternlogq64 (ymm31_1, ymm30_1, ymm0_1, table);
call vpternlogq64 (ymm31_2, ymm30_2, ymm0_2, table);
call vpternlogq64 (ymm31_3, ymm30_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm0,%ymm15            #! PC = 0x555555581cd2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm0_0, ymm10_0, table);
call vpternlogq64 (ymm15_1, ymm0_1, ymm10_1, table);
call vpternlogq64 (ymm15_2, ymm0_2, ymm10_2, table);
call vpternlogq64 (ymm15_3, ymm0_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm10,%ymm0             #! PC = 0x555555581cd9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm10_0, ymm2_0, table);
call vpternlogq64 (ymm0_1, ymm10_1, ymm2_1, table);
call vpternlogq64 (ymm0_2, ymm10_2, ymm2_2, table);
call vpternlogq64 (ymm0_3, ymm10_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm23,%ymm2,%ymm10            #! PC = 0x555555581ce0 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm2_0, ymm23_0, table);
call vpternlogq64 (ymm10_1, ymm2_1, ymm23_1, table);
call vpternlogq64 (ymm10_2, ymm2_2, ymm23_2, table);
call vpternlogq64 (ymm10_3, ymm2_3, ymm23_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm23,%ymm2            #! PC = 0x555555581ce7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm23_0, ymm30_0, table);
call vpternlogq64 (ymm2_1, ymm23_1, ymm30_1, table);
call vpternlogq64 (ymm2_2, ymm23_2, ymm30_2, table);
call vpternlogq64 (ymm2_3, ymm23_3, ymm30_3, table);
(* vpbroadcastq %r12,%ymm23                        #! PC = 0x555555581cee *)
mov ymm23_0 r12;
mov ymm23_1 r12;
mov ymm23_2 r12;
mov ymm23_3 r12;
(* vpxorq %ymm31,%ymm23,%ymm23                     #! PC = 0x555555581cf4 *)
xor ymm23_0@uint64 ymm23_0 ymm31_0;
xor ymm23_1@uint64 ymm23_1 ymm31_1;
xor ymm23_2@uint64 ymm23_2 ymm31_2;
xor ymm23_3@uint64 ymm23_3 ymm31_3;
(* vmovdqa64 %ymm12,%ymm30                         #! PC = 0x555555581cfa *)
mov ymm30_0 ymm12_0;
mov ymm30_1 ymm12_1;
mov ymm30_2 ymm12_2;
mov ymm30_3 ymm12_3;
(* vmovdqa64 %ymm13,%ymm31                         #! PC = 0x555555581d00 *)
mov ymm31_0 ymm13_0;
mov ymm31_1 ymm13_1;
mov ymm31_2 ymm13_2;
mov ymm31_3 ymm13_3;
(* vpternlogq $0xd2,%ymm19,%ymm13,%ymm30           #! PC = 0x555555581d06 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm30_0, ymm13_0, ymm19_0, table);
call vpternlogq64 (ymm30_1, ymm13_1, ymm19_1, table);
call vpternlogq64 (ymm30_2, ymm13_2, ymm19_2, table);
call vpternlogq64 (ymm30_3, ymm13_3, ymm19_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm19,%ymm31           #! PC = 0x555555581d0d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm19_0, ymm18_0, table);
call vpternlogq64 (ymm31_1, ymm19_1, ymm18_1, table);
call vpternlogq64 (ymm31_2, ymm19_2, ymm18_2, table);
call vpternlogq64 (ymm31_3, ymm19_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm18,%ymm19           #! PC = 0x555555581d14 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm18_0, ymm11_0, table);
call vpternlogq64 (ymm19_1, ymm18_1, ymm11_1, table);
call vpternlogq64 (ymm19_2, ymm18_2, ymm11_2, table);
call vpternlogq64 (ymm19_3, ymm18_3, ymm11_3, table);
(* vpternlogq $0xd2,%ymm12,%ymm11,%ymm18           #! PC = 0x555555581d1b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm11_0, ymm12_0, table);
call vpternlogq64 (ymm18_1, ymm11_1, ymm12_1, table);
call vpternlogq64 (ymm18_2, ymm11_2, ymm12_2, table);
call vpternlogq64 (ymm18_3, ymm11_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm13,%ymm12,%ymm11           #! PC = 0x555555581d22 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm12_0, ymm13_0, table);
call vpternlogq64 (ymm11_1, ymm12_1, ymm13_1, table);
call vpternlogq64 (ymm11_2, ymm12_2, ymm13_2, table);
call vpternlogq64 (ymm11_3, ymm12_3, ymm13_3, table);
(* vmovdqa64 %ymm29,%ymm13                         #! PC = 0x555555581d29 *)
mov ymm13_0 ymm29_0;
mov ymm13_1 ymm29_1;
mov ymm13_2 ymm29_2;
mov ymm13_3 ymm29_3;
(* vmovdqa64 %ymm21,%ymm12                         #! PC = 0x555555581d2f *)
mov ymm12_0 ymm21_0;
mov ymm12_1 ymm21_1;
mov ymm12_2 ymm21_2;
mov ymm12_3 ymm21_3;
(* vpternlogq $0xd2,%ymm6,%ymm21,%ymm13            #! PC = 0x555555581d35 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm21_0, ymm6_0, table);
call vpternlogq64 (ymm13_1, ymm21_1, ymm6_1, table);
call vpternlogq64 (ymm13_2, ymm21_2, ymm6_2, table);
call vpternlogq64 (ymm13_3, ymm21_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm5,%ymm6,%ymm12             #! PC = 0x555555581d3c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm6_0, ymm5_0, table);
call vpternlogq64 (ymm12_1, ymm6_1, ymm5_1, table);
call vpternlogq64 (ymm12_2, ymm6_2, ymm5_2, table);
call vpternlogq64 (ymm12_3, ymm6_3, ymm5_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm5,%ymm6             #! PC = 0x555555581d43 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm5_0, ymm17_0, table);
call vpternlogq64 (ymm6_1, ymm5_1, ymm17_1, table);
call vpternlogq64 (ymm6_2, ymm5_2, ymm17_2, table);
call vpternlogq64 (ymm6_3, ymm5_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm29,%ymm17,%ymm5            #! PC = 0x555555581d4a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm17_0, ymm29_0, table);
call vpternlogq64 (ymm5_1, ymm17_1, ymm29_1, table);
call vpternlogq64 (ymm5_2, ymm17_2, ymm29_2, table);
call vpternlogq64 (ymm5_3, ymm17_3, ymm29_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm29,%ymm17           #! PC = 0x555555581d51 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm29_0, ymm21_0, table);
call vpternlogq64 (ymm17_1, ymm29_1, ymm21_1, table);
call vpternlogq64 (ymm17_2, ymm29_2, ymm21_2, table);
call vpternlogq64 (ymm17_3, ymm29_3, ymm21_3, table);
(* vmovdqa64 %ymm16,%ymm21                         #! PC = 0x555555581d58 *)
mov ymm21_0 ymm16_0;
mov ymm21_1 ymm16_1;
mov ymm21_2 ymm16_2;
mov ymm21_3 ymm16_3;
(* vmovdqa64 %ymm28,%ymm29                         #! PC = 0x555555581d5e *)
mov ymm29_0 ymm28_0;
mov ymm29_1 ymm28_1;
mov ymm29_2 ymm28_2;
mov ymm29_3 ymm28_3;
(* vpternlogq $0xd2,%ymm7,%ymm28,%ymm21            #! PC = 0x555555581d64 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm28_0, ymm7_0, table);
call vpternlogq64 (ymm21_1, ymm28_1, ymm7_1, table);
call vpternlogq64 (ymm21_2, ymm28_2, ymm7_2, table);
call vpternlogq64 (ymm21_3, ymm28_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm7,%ymm29             #! PC = 0x555555581d6b *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm29_0, ymm7_0, ymm8_0, table);
call vpternlogq64 (ymm29_1, ymm7_1, ymm8_1, table);
call vpternlogq64 (ymm29_2, ymm7_2, ymm8_2, table);
call vpternlogq64 (ymm29_3, ymm7_3, ymm8_3, table);
(* vmovdqa %ymm1,%ymm4                             #! PC = 0x555555581d72 *)
mov ymm4_0 ymm1_0;
mov ymm4_1 ymm1_1;
mov ymm4_2 ymm1_2;
mov ymm4_3 ymm1_3;
(* vpternlogq $0xd2,%ymm3,%ymm8,%ymm7              #! PC = 0x555555581d76 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm8_0, ymm3_0, table);
call vpternlogq64 (ymm7_1, ymm8_1, ymm3_1, table);
call vpternlogq64 (ymm7_2, ymm8_2, ymm3_2, table);
call vpternlogq64 (ymm7_3, ymm8_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm3,%ymm8             #! PC = 0x555555581d7d *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm3_0, ymm16_0, table);
call vpternlogq64 (ymm8_1, ymm3_1, ymm16_1, table);
call vpternlogq64 (ymm8_2, ymm3_2, ymm16_2, table);
call vpternlogq64 (ymm8_3, ymm3_3, ymm16_3, table);
(* vpternlogq $0xd2,%ymm28,%ymm16,%ymm3            #! PC = 0x555555581d84 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm16_0, ymm28_0, table);
call vpternlogq64 (ymm3_1, ymm16_1, ymm28_1, table);
call vpternlogq64 (ymm3_2, ymm16_2, ymm28_2, table);
call vpternlogq64 (ymm3_3, ymm16_3, ymm28_3, table);
(* vmovdqa64 %ymm20,%ymm16                         #! PC = 0x555555581d8b *)
mov ymm16_0 ymm20_0;
mov ymm16_1 ymm20_1;
mov ymm16_2 ymm20_2;
mov ymm16_3 ymm20_3;
(* vpternlogq $0xd2,%ymm9,%ymm20,%ymm4             #! PC = 0x555555581d91 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm20_0, ymm9_0, table);
call vpternlogq64 (ymm4_1, ymm20_1, ymm9_1, table);
call vpternlogq64 (ymm4_2, ymm20_2, ymm9_2, table);
call vpternlogq64 (ymm4_3, ymm20_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm9,%ymm16            #! PC = 0x555555581d98 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm9_0, ymm14_0, table);
call vpternlogq64 (ymm16_1, ymm9_1, ymm14_1, table);
call vpternlogq64 (ymm16_2, ymm9_2, ymm14_2, table);
call vpternlogq64 (ymm16_3, ymm9_3, ymm14_3, table);
(* vmovdqa64 %ymm19,%ymm22                         #! PC = 0x555555581d9f *)
mov ymm22_0 ymm19_0;
mov ymm22_1 ymm19_1;
mov ymm22_2 ymm19_2;
mov ymm22_3 ymm19_3;
(* vpternlogq $0xd2,%ymm24,%ymm14,%ymm9            #! PC = 0x555555581da5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm14_0, ymm24_0, table);
call vpternlogq64 (ymm9_1, ymm14_1, ymm24_1, table);
call vpternlogq64 (ymm9_2, ymm14_2, ymm24_2, table);
call vpternlogq64 (ymm9_3, ymm14_3, ymm24_3, table);
(* vpternlogq $0x96,%ymm9,%ymm0,%ymm22             #! PC = 0x555555581dac *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm0_0, ymm9_0, table);
call vpternlogq64 (ymm22_1, ymm0_1, ymm9_1, table);
call vpternlogq64 (ymm22_2, ymm0_2, ymm9_2, table);
call vpternlogq64 (ymm22_3, ymm0_3, ymm9_3, table);
(* vpternlogq $0x96,%ymm6,%ymm7,%ymm22             #! PC = 0x555555581db3 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm22_0, ymm7_0, ymm6_0, table);
call vpternlogq64 (ymm22_1, ymm7_1, ymm6_1, table);
call vpternlogq64 (ymm22_2, ymm7_2, ymm6_2, table);
call vpternlogq64 (ymm22_3, ymm7_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm1,%ymm24,%ymm14            #! PC = 0x555555581dba *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm24_0, ymm1_0, table);
call vpternlogq64 (ymm14_1, ymm24_1, ymm1_1, table);
call vpternlogq64 (ymm14_2, ymm24_2, ymm1_2, table);
call vpternlogq64 (ymm14_3, ymm24_3, ymm1_3, table);
(* vpternlogq $0xd2,%ymm20,%ymm1,%ymm24            #! PC = 0x555555581dc1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm1_0, ymm20_0, table);
call vpternlogq64 (ymm24_1, ymm1_1, ymm20_1, table);
call vpternlogq64 (ymm24_2, ymm1_2, ymm20_2, table);
call vpternlogq64 (ymm24_3, ymm1_3, ymm20_3, table);
(* vprolq $0x1,%ymm22,%ymm1                        #! PC = 0x555555581dc8 *)
rol ymm1_0 ymm22_0 0x1;
rol ymm1_1 ymm22_1 0x1;
rol ymm1_2 ymm22_2 0x1;
rol ymm1_3 ymm22_3 0x1;
(* vmovdqa64 %ymm14,%ymm20                         #! PC = 0x555555581dcf *)
mov ymm20_0 ymm14_0;
mov ymm20_1 ymm14_1;
mov ymm20_2 ymm14_2;
mov ymm20_3 ymm14_3;
(* vpternlogq $0x96,%ymm5,%ymm8,%ymm20             #! PC = 0x555555581dd5 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm8_0, ymm5_0, table);
call vpternlogq64 (ymm20_1, ymm8_1, ymm5_1, table);
call vpternlogq64 (ymm20_2, ymm8_2, ymm5_2, table);
call vpternlogq64 (ymm20_3, ymm8_3, ymm5_3, table);
(* vpternlogq $0x96,%ymm10,%ymm18,%ymm20           #! PC = 0x555555581ddc *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm18_0, ymm10_0, table);
call vpternlogq64 (ymm20_1, ymm18_1, ymm10_1, table);
call vpternlogq64 (ymm20_2, ymm18_2, ymm10_2, table);
call vpternlogq64 (ymm20_3, ymm18_3, ymm10_3, table);
(* vmovdqa64 %ymm17,%ymm27                         #! PC = 0x555555581de3 *)
mov ymm27_0 ymm17_0;
mov ymm27_1 ymm17_1;
mov ymm27_2 ymm17_2;
mov ymm27_3 ymm17_3;
(* vpternlogq $0x96,%ymm2,%ymm11,%ymm27            #! PC = 0x555555581de9 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm11_0, ymm2_0, table);
call vpternlogq64 (ymm27_1, ymm11_1, ymm2_1, table);
call vpternlogq64 (ymm27_2, ymm11_2, ymm2_2, table);
call vpternlogq64 (ymm27_3, ymm11_3, ymm2_3, table);
(* vmovdqa %ymm1,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x555555581df0 *)
mov L0x7fffffffd960 ymm1_0;
mov L0x7fffffffd968 ymm1_1;
mov L0x7fffffffd970 ymm1_2;
mov L0x7fffffffd978 ymm1_3;
(* vprolq $0x1,%ymm20,%ymm1                        #! PC = 0x555555581df9 *)
rol ymm1_0 ymm20_0 0x1;
rol ymm1_1 ymm20_1 0x1;
rol ymm1_2 ymm20_2 0x1;
rol ymm1_3 ymm20_3 0x1;
(* vpternlogq $0x96,%ymm3,%ymm24,%ymm27            #! PC = 0x555555581e00 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm27_0, ymm24_0, ymm3_0, table);
call vpternlogq64 (ymm27_1, ymm24_1, ymm3_1, table);
call vpternlogq64 (ymm27_2, ymm24_2, ymm3_2, table);
call vpternlogq64 (ymm27_3, ymm24_3, ymm3_3, table);
(* vmovdqa64 %ymm23,%ymm26                         #! PC = 0x555555581e07 *)
mov ymm26_0 ymm23_0;
mov ymm26_1 ymm23_1;
mov ymm26_2 ymm23_2;
mov ymm26_3 ymm23_3;
(* vpternlogq $0x96,%ymm21,%ymm4,%ymm26            #! PC = 0x555555581e0d *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm4_0, ymm21_0, table);
call vpternlogq64 (ymm26_1, ymm4_1, ymm21_1, table);
call vpternlogq64 (ymm26_2, ymm4_2, ymm21_2, table);
call vpternlogq64 (ymm26_3, ymm4_3, ymm21_3, table);
(* vpternlogq $0x96,%ymm30,%ymm13,%ymm26           #! PC = 0x555555581e14 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm13_0, ymm30_0, table);
call vpternlogq64 (ymm26_1, ymm13_1, ymm30_1, table);
call vpternlogq64 (ymm26_2, ymm13_2, ymm30_2, table);
call vpternlogq64 (ymm26_3, ymm13_3, ymm30_3, table);
(* vmovdqa64 %ymm29,%ymm25                         #! PC = 0x555555581e1b *)
mov ymm25_0 ymm29_0;
mov ymm25_1 ymm29_1;
mov ymm25_2 ymm29_2;
mov ymm25_3 ymm29_3;
(* vmovdqa %ymm1,0x68(%rsp)                        #! EA = L0x7fffffffd940; PC = 0x555555581e21 *)
mov L0x7fffffffd940 ymm1_0;
mov L0x7fffffffd948 ymm1_1;
mov L0x7fffffffd950 ymm1_2;
mov L0x7fffffffd958 ymm1_3;
(* vprolq $0x1,%ymm27,%ymm1                        #! PC = 0x555555581e27 *)
rol ymm1_0 ymm27_0 0x1;
rol ymm1_1 ymm27_1 0x1;
rol ymm1_2 ymm27_2 0x1;
rol ymm1_3 ymm27_3 0x1;
(* vpternlogq $0x96,%ymm31,%ymm12,%ymm25           #! PC = 0x555555581e2e *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm12_0, ymm31_0, table);
call vpternlogq64 (ymm25_1, ymm12_1, ymm31_1, table);
call vpternlogq64 (ymm25_2, ymm12_2, ymm31_2, table);
call vpternlogq64 (ymm25_3, ymm12_3, ymm31_3, table);
(* vpternlogq $0x96,%ymm16,%ymm15,%ymm25           #! PC = 0x555555581e35 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm25_0, ymm15_0, ymm16_0, table);
call vpternlogq64 (ymm25_1, ymm15_1, ymm16_1, table);
call vpternlogq64 (ymm25_2, ymm15_2, ymm16_2, table);
call vpternlogq64 (ymm25_3, ymm15_3, ymm16_3, table);
(* vprolq $0x1,%ymm25,%ymm28                       #! PC = 0x555555581e3c *)
rol ymm28_0 ymm25_0 0x1;
rol ymm28_1 ymm25_1 0x1;
rol ymm28_2 ymm25_2 0x1;
rol ymm28_3 ymm25_3 0x1;
(* vpxorq 0x68(%rsp),%ymm25,%ymm25                 #! EA = L0x7fffffffd940; Value = 0x3888c7983ba01fd6; PC = 0x555555581e43 *)
xor ymm25_0@uint64 ymm25_0 L0x7fffffffd940;
xor ymm25_1@uint64 ymm25_1 L0x7fffffffd948;
xor ymm25_2@uint64 ymm25_2 L0x7fffffffd950;
xor ymm25_3@uint64 ymm25_3 L0x7fffffffd958;
(* movabs $0x8000000080008081,%rbx                 #! PC = 0x555555581e4e *)
mov rbx 0x8000000080008081@uint64;
(* vmovdqa %ymm1,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x555555581e58 *)
mov L0x7fffffffd920 ymm1_0;
mov L0x7fffffffd928 ymm1_1;
mov L0x7fffffffd930 ymm1_2;
mov L0x7fffffffd938 ymm1_3;
(* vprolq $0x1,%ymm26,%ymm1                        #! PC = 0x555555581e5e *)
rol ymm1_0 ymm26_0 0x1;
rol ymm1_1 ymm26_1 0x1;
rol ymm1_2 ymm26_2 0x1;
rol ymm1_3 ymm26_3 0x1;
(* vpxorq 0x88(%rsp),%ymm26,%ymm26                 #! EA = L0x7fffffffd960; Value = 0xad51805261b6cbb6; PC = 0x555555581e65 *)
xor ymm26_0@uint64 ymm26_0 L0x7fffffffd960;
xor ymm26_1@uint64 ymm26_1 L0x7fffffffd968;
xor ymm26_2@uint64 ymm26_2 L0x7fffffffd970;
xor ymm26_3@uint64 ymm26_3 L0x7fffffffd978;
(* vpxorq 0x48(%rsp),%ymm22,%ymm22                 #! EA = L0x7fffffffd920; Value = 0x67967e668851d8f7; PC = 0x555555581e70 *)
xor ymm22_0@uint64 ymm22_0 L0x7fffffffd920;
xor ymm22_1@uint64 ymm22_1 L0x7fffffffd928;
xor ymm22_2@uint64 ymm22_2 L0x7fffffffd930;
xor ymm22_3@uint64 ymm22_3 L0x7fffffffd938;
(* vpxorq %ymm26,%ymm31,%ymm31                     #! PC = 0x555555581e7b *)
xor ymm31_0@uint64 ymm31_0 ymm26_0;
xor ymm31_1@uint64 ymm31_1 ymm26_1;
xor ymm31_2@uint64 ymm31_2 ymm26_2;
xor ymm31_3@uint64 ymm31_3 ymm26_3;
(* vprorq $0x14,%ymm31,%ymm31                      #! PC = 0x555555581e81 *)
ror ymm31_0 ymm31_0 0x14;
ror ymm31_1 ymm31_1 0x14;
ror ymm31_2 ymm31_2 0x14;
ror ymm31_3 ymm31_3 0x14;
(* vpxorq %ymm25,%ymm6,%ymm6                       #! PC = 0x555555581e88 *)
xor ymm6_0@uint64 ymm6_0 ymm25_0;
xor ymm6_1@uint64 ymm6_1 ymm25_1;
xor ymm6_2@uint64 ymm6_2 ymm25_2;
xor ymm6_3@uint64 ymm6_3 ymm25_3;
(* vpxorq %ymm1,%ymm20,%ymm20                      #! PC = 0x555555581e8e *)
xor ymm20_0@uint64 ymm20_0 ymm1_0;
xor ymm20_1@uint64 ymm20_1 ymm1_1;
xor ymm20_2@uint64 ymm20_2 ymm1_2;
xor ymm20_3@uint64 ymm20_3 ymm1_3;
(* vpxorq %ymm20,%ymm24,%ymm1                      #! PC = 0x555555581e94 *)
xor ymm1_0@uint64 ymm24_0 ymm20_0;
xor ymm1_1@uint64 ymm24_1 ymm20_1;
xor ymm1_2@uint64 ymm24_2 ymm20_2;
xor ymm1_3@uint64 ymm24_3 ymm20_3;
(* vpxorq %ymm22,%ymm8,%ymm8                       #! PC = 0x555555581e9a *)
xor ymm8_0@uint64 ymm8_0 ymm22_0;
xor ymm8_1@uint64 ymm8_1 ymm22_1;
xor ymm8_2@uint64 ymm8_2 ymm22_2;
xor ymm8_3@uint64 ymm8_3 ymm22_3;
(* vprorq $0x15,%ymm6,%ymm6                        #! PC = 0x555555581ea0 *)
ror ymm6_0 ymm6_0 0x15;
ror ymm6_1 ymm6_1 0x15;
ror ymm6_2 ymm6_2 0x15;
ror ymm6_3 ymm6_3 0x15;
(* vprolq $0x15,%ymm8,%ymm8                        #! PC = 0x555555581ea7 *)
rol ymm8_0 ymm8_0 0x15;
rol ymm8_1 ymm8_1 0x15;
rol ymm8_2 ymm8_2 0x15;
rol ymm8_3 ymm8_3 0x15;
(* vprolq $0xe,%ymm1,%ymm1                         #! PC = 0x555555581eae *)
rol ymm1_0 ymm1_0 0xe;
rol ymm1_1 ymm1_1 0xe;
rol ymm1_2 ymm1_2 0xe;
rol ymm1_3 ymm1_3 0xe;
(* vpxorq %ymm28,%ymm27,%ymm27                     #! PC = 0x555555581eb5 *)
xor ymm27_0@uint64 ymm27_0 ymm28_0;
xor ymm27_1@uint64 ymm27_1 ymm28_1;
xor ymm27_2@uint64 ymm27_2 ymm28_2;
xor ymm27_3@uint64 ymm27_3 ymm28_3;
(* vpxorq %ymm22,%ymm10,%ymm10                     #! PC = 0x555555581ebb *)
xor ymm10_0@uint64 ymm10_0 ymm22_0;
xor ymm10_1@uint64 ymm10_1 ymm22_1;
xor ymm10_2@uint64 ymm10_2 ymm22_2;
xor ymm10_3@uint64 ymm10_3 ymm22_3;
(* vpxorq %ymm20,%ymm11,%ymm11                     #! PC = 0x555555581ec1 *)
xor ymm11_0@uint64 ymm11_0 ymm20_0;
xor ymm11_1@uint64 ymm11_1 ymm20_1;
xor ymm11_2@uint64 ymm11_2 ymm20_2;
xor ymm11_3@uint64 ymm11_3 ymm20_3;
(* vprolq $0x1c,%ymm10,%ymm10                      #! PC = 0x555555581ec7 *)
rol ymm10_0 ymm10_0 0x1c;
rol ymm10_1 ymm10_1 0x1c;
rol ymm10_2 ymm10_2 0x1c;
rol ymm10_3 ymm10_3 0x1c;
(* vprolq $0x14,%ymm11,%ymm11                      #! PC = 0x555555581ece *)
rol ymm11_0 ymm11_0 0x14;
rol ymm11_1 ymm11_1 0x14;
rol ymm11_2 ymm11_2 0x14;
rol ymm11_3 ymm11_3 0x14;
(* vpxorq %ymm27,%ymm13,%ymm13                     #! PC = 0x555555581ed5 *)
xor ymm13_0@uint64 ymm13_0 ymm27_0;
xor ymm13_1@uint64 ymm13_1 ymm27_1;
xor ymm13_2@uint64 ymm13_2 ymm27_2;
xor ymm13_3@uint64 ymm13_3 ymm27_3;
(* vpxorq %ymm26,%ymm29,%ymm29                     #! PC = 0x555555581edb *)
xor ymm29_0@uint64 ymm29_0 ymm26_0;
xor ymm29_1@uint64 ymm29_1 ymm26_1;
xor ymm29_2@uint64 ymm29_2 ymm26_2;
xor ymm29_3@uint64 ymm29_3 ymm26_3;
(* vpxorq %ymm25,%ymm9,%ymm9                       #! PC = 0x555555581ee1 *)
xor ymm9_0@uint64 ymm9_0 ymm25_0;
xor ymm9_1@uint64 ymm9_1 ymm25_1;
xor ymm9_2@uint64 ymm9_2 ymm25_2;
xor ymm9_3@uint64 ymm9_3 ymm25_3;
(* vpxorq %ymm26,%ymm15,%ymm15                     #! PC = 0x555555581ee7 *)
xor ymm15_0@uint64 ymm15_0 ymm26_0;
xor ymm15_1@uint64 ymm15_1 ymm26_1;
xor ymm15_2@uint64 ymm15_2 ymm26_2;
xor ymm15_3@uint64 ymm15_3 ymm26_3;
(* vprolq $0x1,%ymm15,%ymm15                       #! PC = 0x555555581eed *)
rol ymm15_0 ymm15_0 0x1;
rol ymm15_1 ymm15_1 0x1;
rol ymm15_2 ymm15_2 0x1;
rol ymm15_3 ymm15_3 0x1;
(* vprolq $0x3,%ymm13,%ymm13                       #! PC = 0x555555581ef4 *)
rol ymm13_0 ymm13_0 0x3;
rol ymm13_1 ymm13_1 0x3;
rol ymm13_2 ymm13_2 0x3;
rol ymm13_3 ymm13_3 0x3;
(* vprorq $0x13,%ymm29,%ymm29                      #! PC = 0x555555581efb *)
ror ymm29_0 ymm29_0 0x13;
ror ymm29_1 ymm29_1 0x13;
ror ymm29_2 ymm29_2 0x13;
ror ymm29_3 ymm29_3 0x13;
(* vprorq $0x3,%ymm9,%ymm9                         #! PC = 0x555555581f02 *)
ror ymm9_0 ymm9_0 0x3;
ror ymm9_1 ymm9_1 0x3;
ror ymm9_2 ymm9_2 0x3;
ror ymm9_3 ymm9_3 0x3;
(* vpxorq %ymm25,%ymm19,%ymm19                     #! PC = 0x555555581f09 *)
xor ymm19_0@uint64 ymm19_0 ymm25_0;
xor ymm19_1@uint64 ymm19_1 ymm25_1;
xor ymm19_2@uint64 ymm19_2 ymm25_2;
xor ymm19_3@uint64 ymm19_3 ymm25_3;
(* vpxorq %ymm22,%ymm5,%ymm5                       #! PC = 0x555555581f0f *)
xor ymm5_0@uint64 ymm5_0 ymm22_0;
xor ymm5_1@uint64 ymm5_1 ymm22_1;
xor ymm5_2@uint64 ymm5_2 ymm22_2;
xor ymm5_3@uint64 ymm5_3 ymm22_3;
(* vpxorq %ymm27,%ymm23,%ymm23                     #! PC = 0x555555581f15 *)
xor ymm23_0@uint64 ymm23_0 ymm27_0;
xor ymm23_1@uint64 ymm23_1 ymm27_1;
xor ymm23_2@uint64 ymm23_2 ymm27_2;
xor ymm23_3@uint64 ymm23_3 ymm27_3;
(* vprolq $0x6,%ymm19,%ymm19                       #! PC = 0x555555581f1b *)
rol ymm19_0 ymm19_0 0x6;
rol ymm19_1 ymm19_1 0x6;
rol ymm19_2 ymm19_2 0x6;
rol ymm19_3 ymm19_3 0x6;
(* vprolq $0x19,%ymm5,%ymm5                        #! PC = 0x555555581f22 *)
rol ymm5_0 ymm5_0 0x19;
rol ymm5_1 ymm5_1 0x19;
rol ymm5_2 ymm5_2 0x19;
rol ymm5_3 ymm5_3 0x19;
(* vmovdqa64 %ymm23,%ymm24                         #! PC = 0x555555581f29 *)
mov ymm24_0 ymm23_0;
mov ymm24_1 ymm23_1;
mov ymm24_2 ymm23_2;
mov ymm24_3 ymm23_3;
(* vmovdqa64 %ymm31,%ymm28                         #! PC = 0x555555581f2f *)
mov ymm28_0 ymm31_0;
mov ymm28_1 ymm31_1;
mov ymm28_2 ymm31_2;
mov ymm28_3 ymm31_3;
(* vpxorq %ymm27,%ymm4,%ymm4                       #! PC = 0x555555581f35 *)
xor ymm4_0@uint64 ymm4_0 ymm27_0;
xor ymm4_1@uint64 ymm4_1 ymm27_1;
xor ymm4_2@uint64 ymm4_2 ymm27_2;
xor ymm4_3@uint64 ymm4_3 ymm27_3;
(* vpxorq %ymm20,%ymm3,%ymm3                       #! PC = 0x555555581f3b *)
xor ymm3_0@uint64 ymm3_0 ymm20_0;
xor ymm3_1@uint64 ymm3_1 ymm20_1;
xor ymm3_2@uint64 ymm3_2 ymm20_2;
xor ymm3_3@uint64 ymm3_3 ymm20_3;
(* vpxorq %ymm27,%ymm30,%ymm30                     #! PC = 0x555555581f41 *)
xor ymm30_0@uint64 ymm30_0 ymm27_0;
xor ymm30_1@uint64 ymm30_1 ymm27_1;
xor ymm30_2@uint64 ymm30_2 ymm27_2;
xor ymm30_3@uint64 ymm30_3 ymm27_3;
(* vpxorq %ymm20,%ymm2,%ymm2                       #! PC = 0x555555581f47 *)
xor ymm2_0@uint64 ymm2_0 ymm20_0;
xor ymm2_1@uint64 ymm2_1 ymm20_1;
xor ymm2_2@uint64 ymm2_2 ymm20_2;
xor ymm2_3@uint64 ymm2_3 ymm20_3;
(* vpxorq %ymm25,%ymm0,%ymm0                       #! PC = 0x555555581f4d *)
xor ymm0_0@uint64 ymm0_0 ymm25_0;
xor ymm0_1@uint64 ymm0_1 ymm25_1;
xor ymm0_2@uint64 ymm0_2 ymm25_2;
xor ymm0_3@uint64 ymm0_3 ymm25_3;
(* vpxorq %ymm22,%ymm18,%ymm18                     #! PC = 0x555555581f53 *)
xor ymm18_0@uint64 ymm18_0 ymm22_0;
xor ymm18_1@uint64 ymm18_1 ymm22_1;
xor ymm18_2@uint64 ymm18_2 ymm22_2;
xor ymm18_3@uint64 ymm18_3 ymm22_3;
(* vprorq $0x1c,%ymm30,%ymm30                      #! PC = 0x555555581f59 *)
ror ymm30_0 ymm30_0 0x1c;
ror ymm30_1 ymm30_1 0x1c;
ror ymm30_2 ymm30_2 0x1c;
ror ymm30_3 ymm30_3 0x1c;
(* vprolq $0x1b,%ymm2,%ymm2                        #! PC = 0x555555581f60 *)
rol ymm2_0 ymm2_0 0x1b;
rol ymm2_1 ymm2_1 0x1b;
rol ymm2_2 ymm2_2 0x1b;
rol ymm2_3 ymm2_3 0x1b;
(* vprorq $0x2,%ymm0,%ymm0                         #! PC = 0x555555581f67 *)
ror ymm0_0 ymm0_0 0x2;
ror ymm0_1 ymm0_1 0x2;
ror ymm0_2 ymm0_2 0x2;
ror ymm0_3 ymm0_3 0x2;
(* vprorq $0x9,%ymm18,%ymm18                       #! PC = 0x555555581f6e *)
ror ymm18_0 ymm18_0 0x9;
ror ymm18_1 ymm18_1 0x9;
ror ymm18_2 ymm18_2 0x9;
ror ymm18_3 ymm18_3 0x9;
(* vpternlogq $0xd2,%ymm6,%ymm31,%ymm24            #! PC = 0x555555581f75 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm31_0, ymm6_0, table);
call vpternlogq64 (ymm24_1, ymm31_1, ymm6_1, table);
call vpternlogq64 (ymm24_2, ymm31_2, ymm6_2, table);
call vpternlogq64 (ymm24_3, ymm31_3, ymm6_3, table);
(* vpternlogq $0xd2,%ymm8,%ymm6,%ymm28             #! PC = 0x555555581f7c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm6_0, ymm8_0, table);
call vpternlogq64 (ymm28_1, ymm6_1, ymm8_1, table);
call vpternlogq64 (ymm28_2, ymm6_2, ymm8_2, table);
call vpternlogq64 (ymm28_3, ymm6_3, ymm8_3, table);
(* vprolq $0x12,%ymm4,%ymm4                        #! PC = 0x555555581f83 *)
rol ymm4_0 ymm4_0 0x12;
rol ymm4_1 ymm4_1 0x12;
rol ymm4_2 ymm4_2 0x12;
rol ymm4_3 ymm4_3 0x12;
(* vpternlogq $0xd2,%ymm1,%ymm8,%ymm6              #! PC = 0x555555581f8a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm8_0, ymm1_0, table);
call vpternlogq64 (ymm6_1, ymm8_1, ymm1_1, table);
call vpternlogq64 (ymm6_2, ymm8_2, ymm1_2, table);
call vpternlogq64 (ymm6_3, ymm8_3, ymm1_3, table);
(* vprolq $0x8,%ymm3,%ymm3                         #! PC = 0x555555581f91 *)
rol ymm3_0 ymm3_0 0x8;
rol ymm3_1 ymm3_1 0x8;
rol ymm3_2 ymm3_2 0x8;
rol ymm3_3 ymm3_3 0x8;
(* vpxorq %ymm26,%ymm12,%ymm12                     #! PC = 0x555555581f98 *)
xor ymm12_0@uint64 ymm12_0 ymm26_0;
xor ymm12_1@uint64 ymm12_1 ymm26_1;
xor ymm12_2@uint64 ymm12_2 ymm26_2;
xor ymm12_3@uint64 ymm12_3 ymm26_3;
(* vpxorq %ymm25,%ymm7,%ymm7                       #! PC = 0x555555581f9e *)
xor ymm7_0@uint64 ymm7_0 ymm25_0;
xor ymm7_1@uint64 ymm7_1 ymm25_1;
xor ymm7_2@uint64 ymm7_2 ymm25_2;
xor ymm7_3@uint64 ymm7_3 ymm25_3;
(* vpxorq %ymm22,%ymm14,%ymm14                     #! PC = 0x555555581fa4 *)
xor ymm14_0@uint64 ymm14_0 ymm22_0;
xor ymm14_1@uint64 ymm14_1 ymm22_1;
xor ymm14_2@uint64 ymm14_2 ymm22_2;
xor ymm14_3@uint64 ymm14_3 ymm22_3;
(* vpxorq %ymm27,%ymm21,%ymm21                     #! PC = 0x555555581faa *)
xor ymm21_0@uint64 ymm21_0 ymm27_0;
xor ymm21_1@uint64 ymm21_1 ymm27_1;
xor ymm21_2@uint64 ymm21_2 ymm27_2;
xor ymm21_3@uint64 ymm21_3 ymm27_3;
(* vpxorq %ymm26,%ymm16,%ymm16                     #! PC = 0x555555581fb0 *)
xor ymm16_0@uint64 ymm16_0 ymm26_0;
xor ymm16_1@uint64 ymm16_1 ymm26_1;
xor ymm16_2@uint64 ymm16_2 ymm26_2;
xor ymm16_3@uint64 ymm16_3 ymm26_3;
(* vpxorq %ymm20,%ymm17,%ymm17                     #! PC = 0x555555581fb6 *)
xor ymm17_0@uint64 ymm17_0 ymm20_0;
xor ymm17_1@uint64 ymm17_1 ymm20_1;
xor ymm17_2@uint64 ymm17_2 ymm20_2;
xor ymm17_3@uint64 ymm17_3 ymm20_3;
(* vprolq $0xa,%ymm12,%ymm12                       #! PC = 0x555555581fbc *)
rol ymm12_0 ymm12_0 0xa;
rol ymm12_1 ymm12_1 0xa;
rol ymm12_2 ymm12_2 0xa;
rol ymm12_3 ymm12_3 0xa;
(* vprolq $0xf,%ymm7,%ymm7                         #! PC = 0x555555581fc3 *)
rol ymm7_0 ymm7_0 0xf;
rol ymm7_1 ymm7_1 0xf;
rol ymm7_2 ymm7_2 0xf;
rol ymm7_3 ymm7_3 0xf;
(* vprorq $0x8,%ymm14,%ymm14                       #! PC = 0x555555581fca *)
ror ymm14_0 ymm14_0 0x8;
ror ymm14_1 ymm14_1 0x8;
ror ymm14_2 ymm14_2 0x8;
ror ymm14_3 ymm14_3 0x8;
(* vprorq $0x17,%ymm21,%ymm21                      #! PC = 0x555555581fd1 *)
ror ymm21_0 ymm21_0 0x17;
ror ymm21_1 ymm21_1 0x17;
ror ymm21_2 ymm21_2 0x17;
ror ymm21_3 ymm21_3 0x17;
(* vprolq $0x2,%ymm16,%ymm16                       #! PC = 0x555555581fd8 *)
rol ymm16_0 ymm16_0 0x2;
rol ymm16_1 ymm16_1 0x2;
rol ymm16_2 ymm16_2 0x2;
rol ymm16_3 ymm16_3 0x2;
(* vprorq $0x19,%ymm17,%ymm17                      #! PC = 0x555555581fdf *)
ror ymm17_0 ymm17_0 0x19;
ror ymm17_1 ymm17_1 0x19;
ror ymm17_2 ymm17_2 0x19;
ror ymm17_3 ymm17_3 0x19;
(* vmovdqa %ymm6,-0x38(%rsp)                       #! EA = L0x7fffffffd8a0; PC = 0x555555581fe6 *)
mov L0x7fffffffd8a0 ymm6_0;
mov L0x7fffffffd8a8 ymm6_1;
mov L0x7fffffffd8b0 ymm6_2;
mov L0x7fffffffd8b8 ymm6_3;
(* vpbroadcastq %r13,%ymm6                         #! PC = 0x555555581fec *)
mov ymm6_0 r13;
mov ymm6_1 r13;
mov ymm6_2 r13;
mov ymm6_3 r13;
(* vpternlogq $0xd2,%ymm23,%ymm1,%ymm8             #! PC = 0x555555581ff2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm1_0, ymm23_0, table);
call vpternlogq64 (ymm8_1, ymm1_1, ymm23_1, table);
call vpternlogq64 (ymm8_2, ymm1_2, ymm23_2, table);
call vpternlogq64 (ymm8_3, ymm1_3, ymm23_3, table);
(* vpxorq %ymm24,%ymm6,%ymm6                       #! PC = 0x555555581ff9 *)
xor ymm6_0@uint64 ymm6_0 ymm24_0;
xor ymm6_1@uint64 ymm6_1 ymm24_1;
xor ymm6_2@uint64 ymm6_2 ymm24_2;
xor ymm6_3@uint64 ymm6_3 ymm24_3;
(* vpternlogq $0xd2,%ymm31,%ymm23,%ymm1            #! PC = 0x555555581fff *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm23_0, ymm31_0, table);
call vpternlogq64 (ymm1_1, ymm23_1, ymm31_1, table);
call vpternlogq64 (ymm1_2, ymm23_2, ymm31_2, table);
call vpternlogq64 (ymm1_3, ymm23_3, ymm31_3, table);
(* vmovdqa64 %ymm11,%ymm24                         #! PC = 0x555555582006 *)
mov ymm24_0 ymm11_0;
mov ymm24_1 ymm11_1;
mov ymm24_2 ymm11_2;
mov ymm24_3 ymm11_3;
(* vmovdqa64 %ymm10,%ymm31                         #! PC = 0x55555558200c *)
mov ymm31_0 ymm10_0;
mov ymm31_1 ymm10_1;
mov ymm31_2 ymm10_2;
mov ymm31_3 ymm10_3;
(* vpternlogq $0xd2,%ymm13,%ymm11,%ymm31           #! PC = 0x555555582012 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm31_0, ymm11_0, ymm13_0, table);
call vpternlogq64 (ymm31_1, ymm11_1, ymm13_1, table);
call vpternlogq64 (ymm31_2, ymm11_2, ymm13_2, table);
call vpternlogq64 (ymm31_3, ymm11_3, ymm13_3, table);
(* vpternlogq $0xd2,%ymm29,%ymm13,%ymm24           #! PC = 0x555555582019 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm13_0, ymm29_0, table);
call vpternlogq64 (ymm24_1, ymm13_1, ymm29_1, table);
call vpternlogq64 (ymm24_2, ymm13_2, ymm29_2, table);
call vpternlogq64 (ymm24_3, ymm13_3, ymm29_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm29,%ymm13            #! PC = 0x555555582020 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm13_0, ymm29_0, ymm9_0, table);
call vpternlogq64 (ymm13_1, ymm29_1, ymm9_1, table);
call vpternlogq64 (ymm13_2, ymm29_2, ymm9_2, table);
call vpternlogq64 (ymm13_3, ymm29_3, ymm9_3, table);
(* vpternlogq $0xd2,%ymm10,%ymm9,%ymm29            #! PC = 0x555555582027 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm29_0, ymm9_0, ymm10_0, table);
call vpternlogq64 (ymm29_1, ymm9_1, ymm10_1, table);
call vpternlogq64 (ymm29_2, ymm9_2, ymm10_2, table);
call vpternlogq64 (ymm29_3, ymm9_3, ymm10_3, table);
(* vpternlogq $0xd2,%ymm11,%ymm10,%ymm9            #! PC = 0x55555558202e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm9_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm9_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm9_3, ymm10_3, ymm11_3, table);
(* vmovdqa %ymm15,%ymm10                           #! PC = 0x555555582035 *)
mov ymm10_0 ymm15_0;
mov ymm10_1 ymm15_1;
mov ymm10_2 ymm15_2;
mov ymm10_3 ymm15_3;
(* vpternlogq $0xd2,%ymm5,%ymm19,%ymm10            #! PC = 0x55555558203a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm19_0, ymm5_0, table);
call vpternlogq64 (ymm10_1, ymm19_1, ymm5_1, table);
call vpternlogq64 (ymm10_2, ymm19_2, ymm5_2, table);
call vpternlogq64 (ymm10_3, ymm19_3, ymm5_3, table);
(* vmovdqa64 %ymm29,-0x58(%rsp)                    #! EA = L0x7fffffffd880; PC = 0x555555582041 *)
mov L0x7fffffffd880 ymm29_0;
mov L0x7fffffffd888 ymm29_1;
mov L0x7fffffffd890 ymm29_2;
mov L0x7fffffffd898 ymm29_3;
(* vmovdqa64 %ymm10,%ymm29                         #! PC = 0x55555558204c *)
mov ymm29_0 ymm10_0;
mov ymm29_1 ymm10_1;
mov ymm29_2 ymm10_2;
mov ymm29_3 ymm10_3;
(* vmovdqa64 %ymm19,%ymm10                         #! PC = 0x555555582052 *)
mov ymm10_0 ymm19_0;
mov ymm10_1 ymm19_1;
mov ymm10_2 ymm19_2;
mov ymm10_3 ymm19_3;
(* vpternlogq $0xd2,%ymm3,%ymm5,%ymm10             #! PC = 0x555555582058 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm5_0, ymm3_0, table);
call vpternlogq64 (ymm10_1, ymm5_1, ymm3_1, table);
call vpternlogq64 (ymm10_2, ymm5_2, ymm3_2, table);
call vpternlogq64 (ymm10_3, ymm5_3, ymm3_3, table);
(* vmovdqa64 %ymm0,%ymm23                          #! PC = 0x55555558205f *)
mov ymm23_0 ymm0_0;
mov ymm23_1 ymm0_1;
mov ymm23_2 ymm0_2;
mov ymm23_3 ymm0_3;
(* vpternlogq $0xd2,%ymm4,%ymm3,%ymm5              #! PC = 0x555555582065 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm3_0, ymm4_0, table);
call vpternlogq64 (ymm5_1, ymm3_1, ymm4_1, table);
call vpternlogq64 (ymm5_2, ymm3_2, ymm4_2, table);
call vpternlogq64 (ymm5_3, ymm3_3, ymm4_3, table);
(* vmovdqa64 %ymm18,%ymm11                         #! PC = 0x55555558206c *)
mov ymm11_0 ymm18_0;
mov ymm11_1 ymm18_1;
mov ymm11_2 ymm18_2;
mov ymm11_3 ymm18_3;
(* vpternlogq $0xd2,%ymm15,%ymm4,%ymm3             #! PC = 0x555555582072 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm3_0, ymm4_0, ymm15_0, table);
call vpternlogq64 (ymm3_1, ymm4_1, ymm15_1, table);
call vpternlogq64 (ymm3_2, ymm4_2, ymm15_2, table);
call vpternlogq64 (ymm3_3, ymm4_3, ymm15_3, table);
(* vpternlogq $0xd2,%ymm19,%ymm15,%ymm4            #! PC = 0x555555582079 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm15_0, ymm19_0, table);
call vpternlogq64 (ymm4_1, ymm15_1, ymm19_1, table);
call vpternlogq64 (ymm4_2, ymm15_2, ymm19_2, table);
call vpternlogq64 (ymm4_3, ymm15_3, ymm19_3, table);
(* vmovdqa %ymm2,%ymm15                            #! PC = 0x555555582080 *)
mov ymm15_0 ymm2_0;
mov ymm15_1 ymm2_1;
mov ymm15_2 ymm2_2;
mov ymm15_3 ymm2_3;
(* vmovdqa64 %ymm30,%ymm19                         #! PC = 0x555555582084 *)
mov ymm19_0 ymm30_0;
mov ymm19_1 ymm30_1;
mov ymm19_2 ymm30_2;
mov ymm19_3 ymm30_3;
(* vpternlogq $0xd2,%ymm12,%ymm30,%ymm15           #! PC = 0x55555558208a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm30_0, ymm12_0, table);
call vpternlogq64 (ymm15_1, ymm30_1, ymm12_1, table);
call vpternlogq64 (ymm15_2, ymm30_2, ymm12_2, table);
call vpternlogq64 (ymm15_3, ymm30_3, ymm12_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm12,%ymm19            #! PC = 0x555555582091 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm12_0, ymm7_0, table);
call vpternlogq64 (ymm19_1, ymm12_1, ymm7_1, table);
call vpternlogq64 (ymm19_2, ymm12_2, ymm7_2, table);
call vpternlogq64 (ymm19_3, ymm12_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm17,%ymm18,%ymm23           #! PC = 0x555555582098 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm18_0, ymm17_0, table);
call vpternlogq64 (ymm23_1, ymm18_1, ymm17_1, table);
call vpternlogq64 (ymm23_2, ymm18_2, ymm17_2, table);
call vpternlogq64 (ymm23_3, ymm18_3, ymm17_3, table);
(* vpternlogq $0xd2,%ymm14,%ymm7,%ymm12            #! PC = 0x55555558209f *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm12_0, ymm7_0, ymm14_0, table);
call vpternlogq64 (ymm12_1, ymm7_1, ymm14_1, table);
call vpternlogq64 (ymm12_2, ymm7_2, ymm14_2, table);
call vpternlogq64 (ymm12_3, ymm7_3, ymm14_3, table);
(* vpternlogq $0xd2,%ymm21,%ymm17,%ymm11           #! PC = 0x5555555820a6 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm11_0, ymm17_0, ymm21_0, table);
call vpternlogq64 (ymm11_1, ymm17_1, ymm21_1, table);
call vpternlogq64 (ymm11_2, ymm17_2, ymm21_2, table);
call vpternlogq64 (ymm11_3, ymm17_3, ymm21_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm14,%ymm7             #! PC = 0x5555555820ad *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm14_0, ymm2_0, table);
call vpternlogq64 (ymm7_1, ymm14_1, ymm2_1, table);
call vpternlogq64 (ymm7_2, ymm14_2, ymm2_2, table);
call vpternlogq64 (ymm7_3, ymm14_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm16,%ymm21,%ymm17           #! PC = 0x5555555820b4 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm21_0, ymm16_0, table);
call vpternlogq64 (ymm17_1, ymm21_1, ymm16_1, table);
call vpternlogq64 (ymm17_2, ymm21_2, ymm16_2, table);
call vpternlogq64 (ymm17_3, ymm21_3, ymm16_3, table);
(* vmovdqa64 %ymm5,%ymm20                          #! PC = 0x5555555820bb *)
mov ymm20_0 ymm5_0;
mov ymm20_1 ymm5_1;
mov ymm20_2 ymm5_2;
mov ymm20_3 ymm5_3;
(* vpternlogq $0xd2,%ymm0,%ymm16,%ymm21            #! PC = 0x5555555820c1 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm21_0, ymm16_0, ymm0_0, table);
call vpternlogq64 (ymm21_1, ymm16_1, ymm0_1, table);
call vpternlogq64 (ymm21_2, ymm16_2, ymm0_2, table);
call vpternlogq64 (ymm21_3, ymm16_3, ymm0_3, table);
(* vpternlogq $0xd2,%ymm18,%ymm0,%ymm16            #! PC = 0x5555555820c8 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm16_0, ymm0_0, ymm18_0, table);
call vpternlogq64 (ymm16_1, ymm0_1, ymm18_1, table);
call vpternlogq64 (ymm16_2, ymm0_2, ymm18_2, table);
call vpternlogq64 (ymm16_3, ymm0_3, ymm18_3, table);
(* vpternlogq $0xd2,%ymm30,%ymm2,%ymm14            #! PC = 0x5555555820cf *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm2_0, ymm30_0, table);
call vpternlogq64 (ymm14_1, ymm2_1, ymm30_1, table);
call vpternlogq64 (ymm14_2, ymm2_2, ymm30_2, table);
call vpternlogq64 (ymm14_3, ymm2_3, ymm30_3, table);
(* vpternlogq $0x96,%ymm13,%ymm17,%ymm20           #! PC = 0x5555555820d6 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm17_0, ymm13_0, table);
call vpternlogq64 (ymm20_1, ymm17_1, ymm13_1, table);
call vpternlogq64 (ymm20_2, ymm17_2, ymm13_2, table);
call vpternlogq64 (ymm20_3, ymm17_3, ymm13_3, table);
(* vmovdqa64 %ymm6,%ymm18                          #! PC = 0x5555555820dd *)
mov ymm18_0 ymm6_0;
mov ymm18_1 ymm6_1;
mov ymm18_2 ymm6_2;
mov ymm18_3 ymm6_3;
(* vmovdqa %ymm7,%ymm0                             #! PC = 0x5555555820e3 *)
mov ymm0_0 ymm7_0;
mov ymm0_1 ymm7_1;
mov ymm0_2 ymm7_2;
mov ymm0_3 ymm7_3;
(* vmovdqa64 %ymm16,%ymm26                         #! PC = 0x5555555820e7 *)
mov ymm26_0 ymm16_0;
mov ymm26_1 ymm16_1;
mov ymm26_2 ymm16_2;
mov ymm26_3 ymm16_3;
(* vpternlogq $0x96,%ymm23,%ymm29,%ymm18           #! PC = 0x5555555820ed *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm29_0, ymm23_0, table);
call vpternlogq64 (ymm18_1, ymm29_1, ymm23_1, table);
call vpternlogq64 (ymm18_2, ymm29_2, ymm23_2, table);
call vpternlogq64 (ymm18_3, ymm29_3, ymm23_3, table);
(* vpternlogq $0x96,%ymm3,%ymm8,%ymm0              #! PC = 0x5555555820f4 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm0_0, ymm8_0, ymm3_0, table);
call vpternlogq64 (ymm0_1, ymm8_1, ymm3_1, table);
call vpternlogq64 (ymm0_2, ymm8_2, ymm3_2, table);
call vpternlogq64 (ymm0_3, ymm8_3, ymm3_3, table);
(* vpternlogq $0x96,%ymm14,%ymm9,%ymm26            #! PC = 0x5555555820fb *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm9_0, ymm14_0, table);
call vpternlogq64 (ymm26_1, ymm9_1, ymm14_1, table);
call vpternlogq64 (ymm26_2, ymm9_2, ymm14_2, table);
call vpternlogq64 (ymm26_3, ymm9_3, ymm14_3, table);
(* vmovdqa64 %ymm24,%ymm30                         #! PC = 0x555555582102 *)
mov ymm30_0 ymm24_0;
mov ymm30_1 ymm24_1;
mov ymm30_2 ymm24_2;
mov ymm30_3 ymm24_3;
(* vpternlogq $0x96,-0x38(%rsp),%ymm12,%ymm20      #! EA = L0x7fffffffd8a0; Value = 0x2b8c7986933de13e; PC = 0x555555582108 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm20_0, ymm12_0, L0x7fffffffd8a0, table);
call vpternlogq64 (ymm20_1, ymm12_1, L0x7fffffffd8a8, table);
call vpternlogq64 (ymm20_2, ymm12_2, L0x7fffffffd8b0, table);
call vpternlogq64 (ymm20_3, ymm12_3, L0x7fffffffd8b8, table);
(* vpternlogq $0x96,%ymm15,%ymm31,%ymm18           #! PC = 0x555555582114 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm18_0, ymm31_0, ymm15_0, table);
call vpternlogq64 (ymm18_1, ymm31_1, ymm15_1, table);
call vpternlogq64 (ymm18_2, ymm31_2, ymm15_2, table);
call vpternlogq64 (ymm18_3, ymm31_3, ymm15_3, table);
(* vpternlogq $0x96,%ymm4,%ymm1,%ymm26             #! PC = 0x55555558211b *)
mov table 0x96@uint8;
call vpternlogq64 (ymm26_0, ymm1_0, ymm4_0, table);
call vpternlogq64 (ymm26_1, ymm1_1, ymm4_1, table);
call vpternlogq64 (ymm26_2, ymm1_2, ymm4_2, table);
call vpternlogq64 (ymm26_3, ymm1_3, ymm4_3, table);
(* vprolq $0x1,%ymm20,%ymm22                       #! PC = 0x555555582122 *)
rol ymm22_0 ymm20_0 0x1;
rol ymm22_1 ymm20_1 0x1;
rol ymm22_2 ymm20_2 0x1;
rol ymm22_3 ymm20_3 0x1;
(* vpternlogq $0x96,%ymm28,%ymm19,%ymm30           #! PC = 0x555555582129 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm19_0, ymm28_0, table);
call vpternlogq64 (ymm30_1, ymm19_1, ymm28_1, table);
call vpternlogq64 (ymm30_2, ymm19_2, ymm28_2, table);
call vpternlogq64 (ymm30_3, ymm19_3, ymm28_3, table);
(* vpternlogq $0x96,-0x58(%rsp),%ymm21,%ymm0       #! EA = L0x7fffffffd880; Value = 0xd1cac0ba4e588e2d; PC = 0x555555582130 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm0_0, ymm21_0, L0x7fffffffd880, table);
call vpternlogq64 (ymm0_1, ymm21_1, L0x7fffffffd888, table);
call vpternlogq64 (ymm0_2, ymm21_2, L0x7fffffffd890, table);
call vpternlogq64 (ymm0_3, ymm21_3, L0x7fffffffd898, table);
(* vprolq $0x1,%ymm0,%ymm27                        #! PC = 0x55555558213c *)
rol ymm27_0 ymm0_0 0x1;
rol ymm27_1 ymm0_1 0x1;
rol ymm27_2 ymm0_2 0x1;
rol ymm27_3 ymm0_3 0x1;
(* vprolq $0x1,%ymm26,%ymm25                       #! PC = 0x555555582143 *)
rol ymm25_0 ymm26_0 0x1;
rol ymm25_1 ymm26_1 0x1;
rol ymm25_2 ymm26_2 0x1;
rol ymm25_3 ymm26_3 0x1;
(* vprolq $0x1,%ymm18,%ymm2                        #! PC = 0x55555558214a *)
rol ymm2_0 ymm18_0 0x1;
rol ymm2_1 ymm18_1 0x1;
rol ymm2_2 ymm18_2 0x1;
rol ymm2_3 ymm18_3 0x1;
(* vpternlogq $0x96,%ymm11,%ymm10,%ymm30           #! PC = 0x555555582151 *)
mov table 0x96@uint8;
call vpternlogq64 (ymm30_0, ymm10_0, ymm11_0, table);
call vpternlogq64 (ymm30_1, ymm10_1, ymm11_1, table);
call vpternlogq64 (ymm30_2, ymm10_2, ymm11_2, table);
call vpternlogq64 (ymm30_3, ymm10_3, ymm11_3, table);
(* vmovdqa %ymm4,-0x78(%rsp)                       #! EA = L0x7fffffffd860; PC = 0x555555582158 *)
mov L0x7fffffffd860 ymm4_0;
mov L0x7fffffffd868 ymm4_1;
mov L0x7fffffffd870 ymm4_2;
mov L0x7fffffffd878 ymm4_3;
(* vprolq $0x1,%ymm30,%ymm4                        #! PC = 0x55555558215e *)
rol ymm4_0 ymm30_0 0x1;
rol ymm4_1 ymm30_1 0x1;
rol ymm4_2 ymm30_2 0x1;
rol ymm4_3 ymm30_3 0x1;
(* vpxorq %ymm22,%ymm18,%ymm18                     #! PC = 0x555555582165 *)
xor ymm18_0@uint64 ymm18_0 ymm22_0;
xor ymm18_1@uint64 ymm18_1 ymm22_1;
xor ymm18_2@uint64 ymm18_2 ymm22_2;
xor ymm18_3@uint64 ymm18_3 ymm22_3;
(* vpxorq %ymm25,%ymm20,%ymm20                     #! PC = 0x55555558216b *)
xor ymm20_0@uint64 ymm20_0 ymm25_0;
xor ymm20_1@uint64 ymm20_1 ymm25_1;
xor ymm20_2@uint64 ymm20_2 ymm25_2;
xor ymm20_3@uint64 ymm20_3 ymm25_3;
(* vpxor  %ymm2,%ymm0,%ymm0                        #! PC = 0x555555582171 *)
xor ymm0_0@uint64 ymm0_0 ymm2_0;
xor ymm0_1@uint64 ymm0_1 ymm2_1;
xor ymm0_2@uint64 ymm0_2 ymm2_2;
xor ymm0_3@uint64 ymm0_3 ymm2_3;
(* vpxorq %ymm27,%ymm30,%ymm30                     #! PC = 0x555555582175 *)
xor ymm30_0@uint64 ymm30_0 ymm27_0;
xor ymm30_1@uint64 ymm30_1 ymm27_1;
xor ymm30_2@uint64 ymm30_2 ymm27_2;
xor ymm30_3@uint64 ymm30_3 ymm27_3;
(* vpxorq %ymm18,%ymm24,%ymm24                     #! PC = 0x55555558217b *)
xor ymm24_0@uint64 ymm24_0 ymm18_0;
xor ymm24_1@uint64 ymm24_1 ymm18_1;
xor ymm24_2@uint64 ymm24_2 ymm18_2;
xor ymm24_3@uint64 ymm24_3 ymm18_3;
(* vpxorq %ymm4,%ymm26,%ymm26                      #! PC = 0x555555582181 *)
xor ymm26_0@uint64 ymm26_0 ymm4_0;
xor ymm26_1@uint64 ymm26_1 ymm4_1;
xor ymm26_2@uint64 ymm26_2 ymm4_2;
xor ymm26_3@uint64 ymm26_3 ymm4_3;
(* vprorq $0x14,%ymm24,%ymm24                      #! PC = 0x555555582187 *)
ror ymm24_0 ymm24_0 0x14;
ror ymm24_1 ymm24_1 0x14;
ror ymm24_2 ymm24_2 0x14;
ror ymm24_3 ymm24_3 0x14;
(* vpxorq %ymm20,%ymm7,%ymm4                       #! PC = 0x55555558218e *)
xor ymm4_0@uint64 ymm7_0 ymm20_0;
xor ymm4_1@uint64 ymm7_1 ymm20_1;
xor ymm4_2@uint64 ymm7_2 ymm20_2;
xor ymm4_3@uint64 ymm7_3 ymm20_3;
(* vpxorq %ymm30,%ymm5,%ymm25                      #! PC = 0x555555582194 *)
xor ymm25_0@uint64 ymm5_0 ymm30_0;
xor ymm25_1@uint64 ymm5_1 ymm30_1;
xor ymm25_2@uint64 ymm5_2 ymm30_2;
xor ymm25_3@uint64 ymm5_3 ymm30_3;
(* vpxorq %ymm0,%ymm16,%ymm2                       #! PC = 0x55555558219a *)
xor ymm2_0@uint64 ymm16_0 ymm0_0;
xor ymm2_1@uint64 ymm16_1 ymm0_1;
xor ymm2_2@uint64 ymm16_2 ymm0_2;
xor ymm2_3@uint64 ymm16_3 ymm0_3;
(* vprolq $0xe,%ymm2,%ymm2                         #! PC = 0x5555555821a0 *)
rol ymm2_0 ymm2_0 0xe;
rol ymm2_1 ymm2_1 0xe;
rol ymm2_2 ymm2_2 0xe;
rol ymm2_3 ymm2_3 0xe;
(* vprorq $0x15,%ymm25,%ymm25                      #! PC = 0x5555555821a7 *)
ror ymm25_0 ymm25_0 0x15;
ror ymm25_1 ymm25_1 0x15;
ror ymm25_2 ymm25_2 0x15;
ror ymm25_3 ymm25_3 0x15;
(* vprolq $0x15,%ymm4,%ymm4                        #! PC = 0x5555555821ae *)
rol ymm4_0 ymm4_0 0x15;
rol ymm4_1 ymm4_1 0x15;
rol ymm4_2 ymm4_2 0x15;
rol ymm4_3 ymm4_3 0x15;
(* vpxorq %ymm26,%ymm6,%ymm6                       #! PC = 0x5555555821b5 *)
xor ymm6_0@uint64 ymm6_0 ymm26_0;
xor ymm6_1@uint64 ymm6_1 ymm26_1;
xor ymm6_2@uint64 ymm6_2 ymm26_2;
xor ymm6_3@uint64 ymm6_3 ymm26_3;
(* vmovdqa64 %ymm6,%ymm22                          #! PC = 0x5555555821bb *)
mov ymm22_0 ymm6_0;
mov ymm22_1 ymm6_1;
mov ymm22_2 ymm6_2;
mov ymm22_3 ymm6_3;
(* vmovdqa64 %ymm24,%ymm5                          #! PC = 0x5555555821c1 *)
mov ymm5_0 ymm24_0;
mov ymm5_1 ymm24_1;
mov ymm5_2 ymm24_2;
mov ymm5_3 ymm24_3;
(* vpxorq %ymm20,%ymm8,%ymm8                       #! PC = 0x5555555821c7 *)
xor ymm8_0@uint64 ymm8_0 ymm20_0;
xor ymm8_1@uint64 ymm8_1 ymm20_1;
xor ymm8_2@uint64 ymm8_2 ymm20_2;
xor ymm8_3@uint64 ymm8_3 ymm20_3;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x5555555821cd *)
xor ymm9_0@uint64 ymm9_0 ymm0_0;
xor ymm9_1@uint64 ymm9_1 ymm0_1;
xor ymm9_2@uint64 ymm9_2 ymm0_2;
xor ymm9_3@uint64 ymm9_3 ymm0_3;
(* vpxorq %ymm26,%ymm29,%ymm29                     #! PC = 0x5555555821d1 *)
xor ymm29_0@uint64 ymm29_0 ymm26_0;
xor ymm29_1@uint64 ymm29_1 ymm26_1;
xor ymm29_2@uint64 ymm29_2 ymm26_2;
xor ymm29_3@uint64 ymm29_3 ymm26_3;
(* vprolq $0x1c,%ymm8,%ymm8                        #! PC = 0x5555555821d7 *)
rol ymm8_0 ymm8_0 0x1c;
rol ymm8_1 ymm8_1 0x1c;
rol ymm8_2 ymm8_2 0x1c;
rol ymm8_3 ymm8_3 0x1c;
(* vprolq $0x14,%ymm9,%ymm9                        #! PC = 0x5555555821de *)
rol ymm9_0 ymm9_0 0x14;
rol ymm9_1 ymm9_1 0x14;
rol ymm9_2 ymm9_2 0x14;
rol ymm9_3 ymm9_3 0x14;
(* vprolq $0x3,%ymm29,%ymm29                       #! PC = 0x5555555821e5 *)
rol ymm29_0 ymm29_0 0x3;
rol ymm29_1 ymm29_1 0x3;
rol ymm29_2 ymm29_2 0x3;
rol ymm29_3 ymm29_3 0x3;
(* vpternlogq $0xd2,%ymm25,%ymm24,%ymm22           #! PC = 0x5555555821ec *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm22_0, ymm24_0, ymm25_0, table);
call vpternlogq64 (ymm22_1, ymm24_1, ymm25_1, table);
call vpternlogq64 (ymm22_2, ymm24_2, ymm25_2, table);
call vpternlogq64 (ymm22_3, ymm24_3, ymm25_3, table);
(* vpxorq %ymm18,%ymm19,%ymm19                     #! PC = 0x5555555821f3 *)
xor ymm19_0@uint64 ymm19_0 ymm18_0;
xor ymm19_1@uint64 ymm19_1 ymm18_1;
xor ymm19_2@uint64 ymm19_2 ymm18_2;
xor ymm19_3@uint64 ymm19_3 ymm18_3;
(* vpternlogq $0xd2,%ymm4,%ymm25,%ymm5             #! PC = 0x5555555821f9 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm5_0, ymm25_0, ymm4_0, table);
call vpternlogq64 (ymm5_1, ymm25_1, ymm4_1, table);
call vpternlogq64 (ymm5_2, ymm25_2, ymm4_2, table);
call vpternlogq64 (ymm5_3, ymm25_3, ymm4_3, table);
(* vmovdqa %ymm2,%ymm7                             #! PC = 0x555555582200 *)
mov ymm7_0 ymm2_0;
mov ymm7_1 ymm2_1;
mov ymm7_2 ymm2_2;
mov ymm7_3 ymm2_3;
(* vpternlogq $0xd2,%ymm2,%ymm4,%ymm25             #! PC = 0x555555582204 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm25_0, ymm4_0, ymm2_0, table);
call vpternlogq64 (ymm25_1, ymm4_1, ymm2_1, table);
call vpternlogq64 (ymm25_2, ymm4_2, ymm2_2, table);
call vpternlogq64 (ymm25_3, ymm4_3, ymm2_3, table);
(* vpxorq %ymm30,%ymm17,%ymm27                     #! PC = 0x55555558220b *)
xor ymm27_0@uint64 ymm17_0 ymm30_0;
xor ymm27_1@uint64 ymm17_1 ymm30_1;
xor ymm27_2@uint64 ymm17_2 ymm30_2;
xor ymm27_3@uint64 ymm17_3 ymm30_3;
(* vpternlogq $0xd2,%ymm6,%ymm2,%ymm4              #! PC = 0x555555582211 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm4_0, ymm2_0, ymm6_0, table);
call vpternlogq64 (ymm4_1, ymm2_1, ymm6_1, table);
call vpternlogq64 (ymm4_2, ymm2_2, ymm6_2, table);
call vpternlogq64 (ymm4_3, ymm2_3, ymm6_3, table);
(* vpxorq %ymm18,%ymm28,%ymm28                     #! PC = 0x555555582218 *)
xor ymm28_0@uint64 ymm28_0 ymm18_0;
xor ymm28_1@uint64 ymm28_1 ymm18_1;
xor ymm28_2@uint64 ymm28_2 ymm18_2;
xor ymm28_3@uint64 ymm28_3 ymm18_3;
(* vpbroadcastq %r15,%ymm2                         #! PC = 0x55555558221e *)
mov ymm2_0 r15;
mov ymm2_1 r15;
mov ymm2_2 r15;
mov ymm2_3 r15;
(* vpxorq %ymm30,%ymm13,%ymm13                     #! PC = 0x555555582224 *)
xor ymm13_0@uint64 ymm13_0 ymm30_0;
xor ymm13_1@uint64 ymm13_1 ymm30_1;
xor ymm13_2@uint64 ymm13_2 ymm30_2;
xor ymm13_3@uint64 ymm13_3 ymm30_3;
(* vprolq $0x1,%ymm28,%ymm28                       #! PC = 0x55555558222a *)
rol ymm28_0 ymm28_0 0x1;
rol ymm28_1 ymm28_1 0x1;
rol ymm28_2 ymm28_2 0x1;
rol ymm28_3 ymm28_3 0x1;
(* vprorq $0x3,%ymm27,%ymm27                       #! PC = 0x555555582231 *)
ror ymm27_0 ymm27_0 0x3;
ror ymm27_1 ymm27_1 0x3;
ror ymm27_2 ymm27_2 0x3;
ror ymm27_3 ymm27_3 0x3;
(* vprolq $0x6,%ymm13,%ymm13                       #! PC = 0x555555582238 *)
rol ymm13_0 ymm13_0 0x6;
rol ymm13_1 ymm13_1 0x6;
rol ymm13_2 ymm13_2 0x6;
rol ymm13_3 ymm13_3 0x6;
(* vpxorq %ymm20,%ymm3,%ymm17                      #! PC = 0x55555558223f *)
xor ymm17_0@uint64 ymm3_0 ymm20_0;
xor ymm17_1@uint64 ymm3_1 ymm20_1;
xor ymm17_2@uint64 ymm3_2 ymm20_2;
xor ymm17_3@uint64 ymm3_3 ymm20_3;
(* vpxor  %ymm0,%ymm14,%ymm14                      #! PC = 0x555555582245 *)
xor ymm14_0@uint64 ymm14_0 ymm0_0;
xor ymm14_1@uint64 ymm14_1 ymm0_1;
xor ymm14_2@uint64 ymm14_2 ymm0_2;
xor ymm14_3@uint64 ymm14_3 ymm0_3;
(* vpxorq %ymm22,%ymm2,%ymm22                      #! PC = 0x555555582249 *)
xor ymm22_0@uint64 ymm2_0 ymm22_0;
xor ymm22_1@uint64 ymm2_1 ymm22_1;
xor ymm22_2@uint64 ymm2_2 ymm22_2;
xor ymm22_3@uint64 ymm2_3 ymm22_3;
(* vpxorq %ymm26,%ymm23,%ymm23                     #! PC = 0x55555558224f *)
xor ymm23_0@uint64 ymm23_0 ymm26_0;
xor ymm23_1@uint64 ymm23_1 ymm26_1;
xor ymm23_2@uint64 ymm23_2 ymm26_2;
xor ymm23_3@uint64 ymm23_3 ymm26_3;
(* vprorq $0x13,%ymm19,%ymm2                       #! PC = 0x555555582255 *)
ror ymm2_0 ymm19_0 0x13;
ror ymm2_1 ymm19_1 0x13;
ror ymm2_2 ymm19_2 0x13;
ror ymm2_3 ymm19_3 0x13;
(* vprolq $0x12,%ymm23,%ymm23                      #! PC = 0x55555558225c *)
rol ymm23_0 ymm23_0 0x12;
rol ymm23_1 ymm23_1 0x12;
rol ymm23_2 ymm23_2 0x12;
rol ymm23_3 ymm23_3 0x12;
(* vprolq $0x19,%ymm17,%ymm17                      #! PC = 0x555555582263 *)
rol ymm17_0 ymm17_0 0x19;
rol ymm17_1 ymm17_1 0x19;
rol ymm17_2 ymm17_2 0x19;
rol ymm17_3 ymm17_3 0x19;
(* vprolq $0x8,%ymm14,%ymm14                       #! PC = 0x55555558226a *)
rol ymm14_0 ymm14_0 0x8;
rol ymm14_1 ymm14_1 0x8;
rol ymm14_2 ymm14_2 0x8;
rol ymm14_3 ymm14_3 0x8;
(* vpternlogq $0xd2,%ymm24,%ymm6,%ymm7             #! PC = 0x555555582271 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm6_0, ymm24_0, table);
call vpternlogq64 (ymm7_1, ymm6_1, ymm24_1, table);
call vpternlogq64 (ymm7_2, ymm6_2, ymm24_2, table);
call vpternlogq64 (ymm7_3, ymm6_3, ymm24_3, table);
(* vmovdqa64 %ymm8,%ymm19                          #! PC = 0x555555582278 *)
mov ymm19_0 ymm8_0;
mov ymm19_1 ymm8_1;
mov ymm19_2 ymm8_2;
mov ymm19_3 ymm8_3;
(* vmovdqa %ymm9,%ymm6                             #! PC = 0x55555558227e *)
mov ymm6_0 ymm9_0;
mov ymm6_1 ymm9_1;
mov ymm6_2 ymm9_2;
mov ymm6_3 ymm9_3;
(* vmovdqa64 %ymm29,%ymm24                         #! PC = 0x555555582282 *)
mov ymm24_0 ymm29_0;
mov ymm24_1 ymm29_1;
mov ymm24_2 ymm29_2;
mov ymm24_3 ymm29_3;
(* vpternlogq $0xd2,%ymm27,%ymm2,%ymm24            #! PC = 0x555555582288 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm24_0, ymm2_0, ymm27_0, table);
call vpternlogq64 (ymm24_1, ymm2_1, ymm27_1, table);
call vpternlogq64 (ymm24_2, ymm2_2, ymm27_2, table);
call vpternlogq64 (ymm24_3, ymm2_3, ymm27_3, table);
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555558228f *)
xor ymm1_0@uint64 ymm1_0 ymm0_0;
xor ymm1_1@uint64 ymm1_1 ymm0_1;
xor ymm1_2@uint64 ymm1_2 ymm0_2;
xor ymm1_3@uint64 ymm1_3 ymm0_3;
(* vpternlogq $0xd2,%ymm29,%ymm9,%ymm19            #! PC = 0x555555582293 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm19_0, ymm9_0, ymm29_0, table);
call vpternlogq64 (ymm19_1, ymm9_1, ymm29_1, table);
call vpternlogq64 (ymm19_2, ymm9_2, ymm29_2, table);
call vpternlogq64 (ymm19_3, ymm9_3, ymm29_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm29,%ymm6             #! PC = 0x55555558229a *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm6_0, ymm29_0, ymm2_0, table);
call vpternlogq64 (ymm6_1, ymm29_1, ymm2_1, table);
call vpternlogq64 (ymm6_2, ymm29_2, ymm2_2, table);
call vpternlogq64 (ymm6_3, ymm29_3, ymm2_3, table);
(* vpxorq %ymm26,%ymm31,%ymm31                     #! PC = 0x5555555822a1 *)
xor ymm31_0@uint64 ymm31_0 ymm26_0;
xor ymm31_1@uint64 ymm31_1 ymm26_1;
xor ymm31_2@uint64 ymm31_2 ymm26_2;
xor ymm31_3@uint64 ymm31_3 ymm26_3;
(* vpternlogq $0xd2,%ymm8,%ymm27,%ymm2             #! PC = 0x5555555822a7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm27_0, ymm8_0, table);
call vpternlogq64 (ymm2_1, ymm27_1, ymm8_1, table);
call vpternlogq64 (ymm2_2, ymm27_2, ymm8_2, table);
call vpternlogq64 (ymm2_3, ymm27_3, ymm8_3, table);
(* vpternlogq $0xd2,%ymm9,%ymm8,%ymm27             #! PC = 0x5555555822ae *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm27_0, ymm8_0, ymm9_0, table);
call vpternlogq64 (ymm27_1, ymm8_1, ymm9_1, table);
call vpternlogq64 (ymm27_2, ymm8_2, ymm9_2, table);
call vpternlogq64 (ymm27_3, ymm8_3, ymm9_3, table);
(* vmovdqa64 %ymm28,%ymm8                          #! PC = 0x5555555822b5 *)
mov ymm8_0 ymm28_0;
mov ymm8_1 ymm28_1;
mov ymm8_2 ymm28_2;
mov ymm8_3 ymm28_3;
(* vmovdqa %ymm13,%ymm9                            #! PC = 0x5555555822bb *)
mov ymm9_0 ymm13_0;
mov ymm9_1 ymm13_1;
mov ymm9_2 ymm13_2;
mov ymm9_3 ymm13_3;
(* vprolq $0x1b,%ymm1,%ymm3                        #! PC = 0x5555555822c0 *)
rol ymm3_0 ymm1_0 0x1b;
rol ymm3_1 ymm1_1 0x1b;
rol ymm3_2 ymm1_2 0x1b;
rol ymm3_3 ymm1_3 0x1b;
(* vpternlogq $0xd2,%ymm14,%ymm17,%ymm9            #! PC = 0x5555555822c7 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm9_0, ymm17_0, ymm14_0, table);
call vpternlogq64 (ymm9_1, ymm17_1, ymm14_1, table);
call vpternlogq64 (ymm9_2, ymm17_2, ymm14_2, table);
call vpternlogq64 (ymm9_3, ymm17_3, ymm14_3, table);
(* vprorq $0x1c,%ymm31,%ymm31                      #! PC = 0x5555555822ce *)
ror ymm31_0 ymm31_0 0x1c;
ror ymm31_1 ymm31_1 0x1c;
ror ymm31_2 ymm31_2 0x1c;
ror ymm31_3 ymm31_3 0x1c;
(* vpternlogq $0xd2,%ymm17,%ymm13,%ymm8            #! PC = 0x5555555822d5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm8_0, ymm13_0, ymm17_0, table);
call vpternlogq64 (ymm8_1, ymm13_1, ymm17_1, table);
call vpternlogq64 (ymm8_2, ymm13_2, ymm17_2, table);
call vpternlogq64 (ymm8_3, ymm13_3, ymm17_3, table);
(* vmovdqa %ymm7,0x88(%rsp)                        #! EA = L0x7fffffffd960; PC = 0x5555555822dc *)
mov L0x7fffffffd960 ymm7_0;
mov L0x7fffffffd968 ymm7_1;
mov L0x7fffffffd970 ymm7_2;
mov L0x7fffffffd978 ymm7_3;
(* vpternlogq $0xd2,%ymm23,%ymm14,%ymm17           #! PC = 0x5555555822e5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm17_0, ymm14_0, ymm23_0, table);
call vpternlogq64 (ymm17_1, ymm14_1, ymm23_1, table);
call vpternlogq64 (ymm17_2, ymm14_2, ymm23_2, table);
call vpternlogq64 (ymm17_3, ymm14_3, ymm23_3, table);
(* vpxorq %ymm20,%ymm21,%ymm7                      #! PC = 0x5555555822ec *)
xor ymm7_0@uint64 ymm21_0 ymm20_0;
xor ymm7_1@uint64 ymm21_1 ymm20_1;
xor ymm7_2@uint64 ymm21_2 ymm20_2;
xor ymm7_3@uint64 ymm21_3 ymm20_3;
(* vpternlogq $0xd2,%ymm28,%ymm23,%ymm14           #! PC = 0x5555555822f2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm14_0, ymm23_0, ymm28_0, table);
call vpternlogq64 (ymm14_1, ymm23_1, ymm28_1, table);
call vpternlogq64 (ymm14_2, ymm23_2, ymm28_2, table);
call vpternlogq64 (ymm14_3, ymm23_3, ymm28_3, table);
(* vmovdqa %ymm2,0x48(%rsp)                        #! EA = L0x7fffffffd920; PC = 0x5555555822f9 *)
mov L0x7fffffffd920 ymm2_0;
mov L0x7fffffffd928 ymm2_1;
mov L0x7fffffffd930 ymm2_2;
mov L0x7fffffffd938 ymm2_3;
(* vpternlogq $0xd2,%ymm13,%ymm28,%ymm23           #! PC = 0x5555555822ff *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm23_0, ymm28_0, ymm13_0, table);
call vpternlogq64 (ymm23_1, ymm28_1, ymm13_1, table);
call vpternlogq64 (ymm23_2, ymm28_2, ymm13_2, table);
call vpternlogq64 (ymm23_3, ymm28_3, ymm13_3, table);
(* vpxorq %ymm30,%ymm12,%ymm2                      #! PC = 0x555555582306 *)
xor ymm2_0@uint64 ymm12_0 ymm30_0;
xor ymm2_1@uint64 ymm12_1 ymm30_1;
xor ymm2_2@uint64 ymm12_2 ymm30_2;
xor ymm2_3@uint64 ymm12_3 ymm30_3;
(* vpxorq %ymm18,%ymm10,%ymm28                     #! PC = 0x55555558230c *)
xor ymm28_0@uint64 ymm10_0 ymm18_0;
xor ymm28_1@uint64 ymm10_1 ymm18_1;
xor ymm28_2@uint64 ymm10_2 ymm18_2;
xor ymm28_3@uint64 ymm10_3 ymm18_3;
(* vprolq $0xa,%ymm28,%ymm28                       #! PC = 0x555555582312 *)
rol ymm28_0 ymm28_0 0xa;
rol ymm28_1 ymm28_1 0xa;
rol ymm28_2 ymm28_2 0xa;
rol ymm28_3 ymm28_3 0xa;
(* vprolq $0xf,%ymm2,%ymm2                         #! PC = 0x555555582319 *)
rol ymm2_0 ymm2_0 0xf;
rol ymm2_1 ymm2_1 0xf;
rol ymm2_2 ymm2_2 0xf;
rol ymm2_3 ymm2_3 0xf;
(* vprorq $0x8,%ymm7,%ymm7                         #! PC = 0x555555582320 *)
ror ymm7_0 ymm7_0 0x8;
ror ymm7_1 ymm7_1 0x8;
ror ymm7_2 ymm7_2 0x8;
ror ymm7_3 ymm7_3 0x8;
(* vmovdqa %ymm3,%ymm10                            #! PC = 0x555555582327 *)
mov ymm10_0 ymm3_0;
mov ymm10_1 ymm3_1;
mov ymm10_2 ymm3_2;
mov ymm10_3 ymm3_3;
(* vmovdqa64 %ymm31,%ymm1                          #! PC = 0x55555558232b *)
mov ymm1_0 ymm31_0;
mov ymm1_1 ymm31_1;
mov ymm1_2 ymm31_2;
mov ymm1_3 ymm31_3;
(* vmovdqa %ymm9,0x28(%rsp)                        #! EA = L0x7fffffffd900; PC = 0x555555582331 *)
mov L0x7fffffffd900 ymm9_0;
mov L0x7fffffffd908 ymm9_1;
mov L0x7fffffffd910 ymm9_2;
mov L0x7fffffffd918 ymm9_3;
(* vpternlogq $0xd2,%ymm28,%ymm31,%ymm10           #! PC = 0x555555582337 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm10_0, ymm31_0, ymm28_0, table);
call vpternlogq64 (ymm10_1, ymm31_1, ymm28_1, table);
call vpternlogq64 (ymm10_2, ymm31_2, ymm28_2, table);
call vpternlogq64 (ymm10_3, ymm31_3, ymm28_3, table);
(* vpternlogq $0xd2,%ymm2,%ymm28,%ymm1             #! PC = 0x55555558233e *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm1_0, ymm28_0, ymm2_0, table);
call vpternlogq64 (ymm1_1, ymm28_1, ymm2_1, table);
call vpternlogq64 (ymm1_2, ymm28_2, ymm2_2, table);
call vpternlogq64 (ymm1_3, ymm28_3, ymm2_3, table);
(* vpternlogq $0xd2,%ymm7,%ymm2,%ymm28             #! PC = 0x555555582345 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm28_0, ymm2_0, ymm7_0, table);
call vpternlogq64 (ymm28_1, ymm2_1, ymm7_1, table);
call vpternlogq64 (ymm28_2, ymm2_2, ymm7_2, table);
call vpternlogq64 (ymm28_3, ymm2_3, ymm7_3, table);
(* vpternlogq $0xd2,%ymm3,%ymm7,%ymm2              #! PC = 0x55555558234c *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm2_0, ymm7_0, ymm3_0, table);
call vpternlogq64 (ymm2_1, ymm7_1, ymm3_1, table);
call vpternlogq64 (ymm2_2, ymm7_2, ymm3_2, table);
call vpternlogq64 (ymm2_3, ymm7_3, ymm3_3, table);
(* vpternlogq $0xd2,%ymm31,%ymm3,%ymm7             #! PC = 0x555555582353 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm7_0, ymm3_0, ymm31_0, table);
call vpternlogq64 (ymm7_1, ymm3_1, ymm31_1, table);
call vpternlogq64 (ymm7_2, ymm3_2, ymm31_2, table);
call vpternlogq64 (ymm7_3, ymm3_3, ymm31_3, table);
(* vpxorq -0x38(%rsp),%ymm30,%ymm3                 #! EA = L0x7fffffffd8a0; Value = 0x2b8c7986933de13e; PC = 0x55555558235a *)
xor ymm3_0@uint64 ymm30_0 L0x7fffffffd8a0;
xor ymm3_1@uint64 ymm30_1 L0x7fffffffd8a8;
xor ymm3_2@uint64 ymm30_2 L0x7fffffffd8b0;
xor ymm3_3@uint64 ymm30_3 L0x7fffffffd8b8;
(* vpxorq -0x58(%rsp),%ymm20,%ymm9                 #! EA = L0x7fffffffd880; Value = 0xd1cac0ba4e588e2d; PC = 0x555555582365 *)
xor ymm9_0@uint64 ymm20_0 L0x7fffffffd880;
xor ymm9_1@uint64 ymm20_1 L0x7fffffffd888;
xor ymm9_2@uint64 ymm20_2 L0x7fffffffd890;
xor ymm9_3@uint64 ymm20_3 L0x7fffffffd898;
(* vpxorq -0x78(%rsp),%ymm0,%ymm20                 #! EA = L0x7fffffffd860; Value = 0x15918c4782dc1f6c; PC = 0x555555582370 *)
xor ymm20_0@uint64 ymm0_0 L0x7fffffffd860;
xor ymm20_1@uint64 ymm0_1 L0x7fffffffd868;
xor ymm20_2@uint64 ymm0_2 L0x7fffffffd870;
xor ymm20_3@uint64 ymm0_3 L0x7fffffffd878;
(* vprorq $0x2,%ymm3,%ymm3                         #! PC = 0x55555558237b *)
ror ymm3_0 ymm3_0 0x2;
ror ymm3_1 ymm3_1 0x2;
ror ymm3_2 ymm3_2 0x2;
ror ymm3_3 ymm3_3 0x2;
(* vprorq $0x9,%ymm9,%ymm9                         #! PC = 0x555555582382 *)
ror ymm9_0 ymm9_0 0x9;
ror ymm9_1 ymm9_1 0x9;
ror ymm9_2 ymm9_2 0x9;
ror ymm9_3 ymm9_3 0x9;
(* vprorq $0x19,%ymm20,%ymm20                      #! PC = 0x555555582389 *)
ror ymm20_0 ymm20_0 0x19;
ror ymm20_1 ymm20_1 0x19;
ror ymm20_2 ymm20_2 0x19;
ror ymm20_3 ymm20_3 0x19;
(* vpxorq %ymm26,%ymm15,%ymm15                     #! PC = 0x555555582390 *)
xor ymm15_0@uint64 ymm15_0 ymm26_0;
xor ymm15_1@uint64 ymm15_1 ymm26_1;
xor ymm15_2@uint64 ymm15_2 ymm26_2;
xor ymm15_3@uint64 ymm15_3 ymm26_3;
(* vprorq $0x17,%ymm15,%ymm15                      #! PC = 0x555555582396 *)
ror ymm15_0 ymm15_0 0x17;
ror ymm15_1 ymm15_1 0x17;
ror ymm15_2 ymm15_2 0x17;
ror ymm15_3 ymm15_3 0x17;
(* vpxorq %ymm18,%ymm11,%ymm18                     #! PC = 0x55555558239d *)
xor ymm18_0@uint64 ymm11_0 ymm18_0;
xor ymm18_1@uint64 ymm11_1 ymm18_1;
xor ymm18_2@uint64 ymm11_2 ymm18_2;
xor ymm18_3@uint64 ymm11_3 ymm18_3;
(* vprolq $0x2,%ymm18,%ymm18                       #! PC = 0x5555555823a3 *)
rol ymm18_0 ymm18_0 0x2;
rol ymm18_1 ymm18_1 0x2;
rol ymm18_2 ymm18_2 0x2;
rol ymm18_3 ymm18_3 0x2;
(* vmovdqa %ymm3,%ymm0                             #! PC = 0x5555555823aa *)
mov ymm0_0 ymm3_0;
mov ymm0_1 ymm3_1;
mov ymm0_2 ymm3_2;
mov ymm0_3 ymm3_3;
(* vpternlogq $0xd2,%ymm20,%ymm9,%ymm0             #! PC = 0x5555555823ae *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm9_0, ymm20_0, table);
call vpternlogq64 (ymm0_1, ymm9_1, ymm20_1, table);
call vpternlogq64 (ymm0_2, ymm9_2, ymm20_2, table);
call vpternlogq64 (ymm0_3, ymm9_3, ymm20_3, table);
(* vmovdqa %ymm8,-0x18(%rsp)                       #! EA = L0x7fffffffd8c0; PC = 0x5555555823b5 *)
mov L0x7fffffffd8c0 ymm8_0;
mov L0x7fffffffd8c8 ymm8_1;
mov L0x7fffffffd8d0 ymm8_2;
mov L0x7fffffffd8d8 ymm8_3;
(* vmovdqa %ymm0,%ymm8                             #! PC = 0x5555555823bb *)
mov ymm8_0 ymm0_0;
mov ymm8_1 ymm0_1;
mov ymm8_2 ymm0_2;
mov ymm8_3 ymm0_3;
(* vmovdqa %ymm9,%ymm0                             #! PC = 0x5555555823bf *)
mov ymm0_0 ymm9_0;
mov ymm0_1 ymm9_1;
mov ymm0_2 ymm9_2;
mov ymm0_3 ymm9_3;
(* vpternlogq $0xd2,%ymm15,%ymm20,%ymm0            #! PC = 0x5555555823c3 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm0_0, ymm20_0, ymm15_0, table);
call vpternlogq64 (ymm0_1, ymm20_1, ymm15_1, table);
call vpternlogq64 (ymm0_2, ymm20_2, ymm15_2, table);
call vpternlogq64 (ymm0_3, ymm20_3, ymm15_3, table);
(* vmovdqa64 %ymm24,0x68(%rsp)                     #! EA = L0x7fffffffd940; PC = 0x5555555823ca *)
mov L0x7fffffffd940 ymm24_0;
mov L0x7fffffffd948 ymm24_1;
mov L0x7fffffffd950 ymm24_2;
mov L0x7fffffffd958 ymm24_3;
(* vpternlogq $0xd2,%ymm18,%ymm15,%ymm20           #! PC = 0x5555555823d5 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm20_0, ymm15_0, ymm18_0, table);
call vpternlogq64 (ymm20_1, ymm15_1, ymm18_1, table);
call vpternlogq64 (ymm20_2, ymm15_2, ymm18_2, table);
call vpternlogq64 (ymm20_3, ymm15_3, ymm18_3, table);
(* vmovdqa %ymm10,0x8(%rsp)                        #! EA = L0x7fffffffd8e0; PC = 0x5555555823dc *)
mov L0x7fffffffd8e0 ymm10_0;
mov L0x7fffffffd8e8 ymm10_1;
mov L0x7fffffffd8f0 ymm10_2;
mov L0x7fffffffd8f8 ymm10_3;
(* vpternlogq $0xd2,%ymm3,%ymm18,%ymm15            #! PC = 0x5555555823e2 *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm15_0, ymm18_0, ymm3_0, table);
call vpternlogq64 (ymm15_1, ymm18_1, ymm3_1, table);
call vpternlogq64 (ymm15_2, ymm18_2, ymm3_2, table);
call vpternlogq64 (ymm15_3, ymm18_3, ymm3_3, table);
(* vmovdqa64 %ymm0,%ymm24                          #! PC = 0x5555555823e9 *)
mov ymm24_0 ymm0_0;
mov ymm24_1 ymm0_1;
mov ymm24_2 ymm0_2;
mov ymm24_3 ymm0_3;
(* vpternlogq $0xd2,%ymm9,%ymm3,%ymm18             #! PC = 0x5555555823ef *)
mov table 0xd2@uint8;
call vpternlogq64 (ymm18_0, ymm3_0, ymm9_0, table);
call vpternlogq64 (ymm18_1, ymm3_1, ymm9_1, table);
call vpternlogq64 (ymm18_2, ymm3_2, ymm9_2, table);
call vpternlogq64 (ymm18_3, ymm3_3, ymm9_3, table);
(* movabs $0x8000000000008080,%r12                 #! PC = 0x5555555823f6 *)
mov r12 0x8000000000008080@uint64;
(* mov    $0x80000001,%r13d                        #! PC = 0x555555582400 *)
mov r13 0x80000001@uint64;
(* movabs $0x8000000080008008,%r15                 #! PC = 0x555555582406 *)
mov r15 0x8000000080008008@uint64;
(* #jne    0x555555582510 <KeccakP1600times4_PermuteAll_24rounds+10032>#! PC = 0x555555582414 *)
#jne    0x555555582510 <KeccakP1600times4_PermuteAll_24rounds+10032>#! 0x555555582414 = 0x555555582414;
(* vmovdqa %ymm5,0x20(%rax)                        #! EA = L0x7fffffffda20; PC = 0x55555558241a *)
mov L0x7fffffffda20 ymm5_0;
mov L0x7fffffffda28 ymm5_1;
mov L0x7fffffffda30 ymm5_2;
mov L0x7fffffffda38 ymm5_3;
(* vmovdqa 0x88(%rsp),%ymm5                        #! EA = L0x7fffffffd960; Value = 0xe21f1b77f6d22faf; PC = 0x55555558241f *)
mov ymm5_0 L0x7fffffffd960;
mov ymm5_1 L0x7fffffffd968;
mov ymm5_2 L0x7fffffffd970;
mov ymm5_3 L0x7fffffffd978;
(* vmovdqa %ymm8,%ymm13                            #! PC = 0x555555582428 *)
mov ymm13_0 ymm8_0;
mov ymm13_1 ymm8_1;
mov ymm13_2 ymm8_2;
mov ymm13_3 ymm8_3;
(* vmovdqa64 0x68(%rsp),%ymm24                     #! EA = L0x7fffffffd940; Value = 0x6dcafdece216b59e; PC = 0x55555558242d *)
mov ymm24_0 L0x7fffffffd940;
mov ymm24_1 L0x7fffffffd948;
mov ymm24_2 L0x7fffffffd950;
mov ymm24_3 L0x7fffffffd958;
(* vmovdqa -0x18(%rsp),%ymm8                       #! EA = L0x7fffffffd8c0; Value = 0xa9df1290ac098154; PC = 0x555555582438 *)
mov ymm8_0 L0x7fffffffd8c0;
mov ymm8_1 L0x7fffffffd8c8;
mov ymm8_2 L0x7fffffffd8d0;
mov ymm8_3 L0x7fffffffd8d8;
(* vmovdqa 0x28(%rsp),%ymm9                        #! EA = L0x7fffffffd900; Value = 0xb9bd3cdb9ab02537; PC = 0x55555558243e *)
mov ymm9_0 L0x7fffffffd900;
mov ymm9_1 L0x7fffffffd908;
mov ymm9_2 L0x7fffffffd910;
mov ymm9_3 L0x7fffffffd918;
(* vmovdqa %ymm5,0x80(%rax)                        #! EA = L0x7fffffffda80; PC = 0x555555582444 *)
mov L0x7fffffffda80 ymm5_0;
mov L0x7fffffffda88 ymm5_1;
mov L0x7fffffffda90 ymm5_2;
mov L0x7fffffffda98 ymm5_3;
(* vmovdqa 0x48(%rsp),%ymm5                        #! EA = L0x7fffffffd920; Value = 0x60bb3fc9024d605c; PC = 0x55555558244c *)
mov ymm5_0 L0x7fffffffd920;
mov ymm5_1 L0x7fffffffd928;
mov ymm5_2 L0x7fffffffd930;
mov ymm5_3 L0x7fffffffd938;
(* vmovdqa64 %ymm22,(%rax)                         #! EA = L0x7fffffffda00; PC = 0x555555582452 *)
mov L0x7fffffffda00 ymm22_0;
mov L0x7fffffffda08 ymm22_1;
mov L0x7fffffffda10 ymm22_2;
mov L0x7fffffffda18 ymm22_3;
(* vmovdqa64 %ymm25,0x40(%rax)                     #! EA = L0x7fffffffda40; PC = 0x555555582458 *)
mov L0x7fffffffda40 ymm25_0;
mov L0x7fffffffda48 ymm25_1;
mov L0x7fffffffda50 ymm25_2;
mov L0x7fffffffda58 ymm25_3;
(* vmovdqa %ymm4,0x60(%rax)                        #! EA = L0x7fffffffda60; PC = 0x55555558245f *)
mov L0x7fffffffda60 ymm4_0;
mov L0x7fffffffda68 ymm4_1;
mov L0x7fffffffda70 ymm4_2;
mov L0x7fffffffda78 ymm4_3;
(* vmovdqa64 %ymm19,0xa0(%rax)                     #! EA = L0x7fffffffdaa0; PC = 0x555555582464 *)
mov L0x7fffffffdaa0 ymm19_0;
mov L0x7fffffffdaa8 ymm19_1;
mov L0x7fffffffdab0 ymm19_2;
mov L0x7fffffffdab8 ymm19_3;
(* vmovdqa %ymm6,0xc0(%rax)                        #! EA = L0x7fffffffdac0; PC = 0x55555558246b *)
mov L0x7fffffffdac0 ymm6_0;
mov L0x7fffffffdac8 ymm6_1;
mov L0x7fffffffdad0 ymm6_2;
mov L0x7fffffffdad8 ymm6_3;
(* vmovdqa64 %ymm24,0xe0(%rax)                     #! EA = L0x7fffffffdae0; PC = 0x555555582473 *)
mov L0x7fffffffdae0 ymm24_0;
mov L0x7fffffffdae8 ymm24_1;
mov L0x7fffffffdaf0 ymm24_2;
mov L0x7fffffffdaf8 ymm24_3;
(* vmovdqa %ymm5,0x100(%rax)                       #! EA = L0x7fffffffdb00; PC = 0x55555558247a *)
mov L0x7fffffffdb00 ymm5_0;
mov L0x7fffffffdb08 ymm5_1;
mov L0x7fffffffdb10 ymm5_2;
mov L0x7fffffffdb18 ymm5_3;
(* vmovdqa64 %ymm27,0x120(%rax)                    #! EA = L0x7fffffffdb20; PC = 0x555555582482 *)
mov L0x7fffffffdb20 ymm27_0;
mov L0x7fffffffdb28 ymm27_1;
mov L0x7fffffffdb30 ymm27_2;
mov L0x7fffffffdb38 ymm27_3;
(* vmovdqa %ymm8,0x140(%rax)                       #! EA = L0x7fffffffdb40; PC = 0x555555582489 *)
mov L0x7fffffffdb40 ymm8_0;
mov L0x7fffffffdb48 ymm8_1;
mov L0x7fffffffdb50 ymm8_2;
mov L0x7fffffffdb58 ymm8_3;
(* vmovdqa %ymm9,0x160(%rax)                       #! EA = L0x7fffffffdb60; PC = 0x555555582491 *)
mov L0x7fffffffdb60 ymm9_0;
mov L0x7fffffffdb68 ymm9_1;
mov L0x7fffffffdb70 ymm9_2;
mov L0x7fffffffdb78 ymm9_3;
(* vmovdqa64 %ymm17,0x180(%rax)                    #! EA = L0x7fffffffdb80; PC = 0x555555582499 *)
mov L0x7fffffffdb80 ymm17_0;
mov L0x7fffffffdb88 ymm17_1;
mov L0x7fffffffdb90 ymm17_2;
mov L0x7fffffffdb98 ymm17_3;
(* vmovdqa %ymm14,0x1a0(%rax)                      #! EA = L0x7fffffffdba0; PC = 0x5555555824a0 *)
mov L0x7fffffffdba0 ymm14_0;
mov L0x7fffffffdba8 ymm14_1;
mov L0x7fffffffdbb0 ymm14_2;
mov L0x7fffffffdbb8 ymm14_3;
(* vmovdqa64 %ymm23,0x1c0(%rax)                    #! EA = L0x7fffffffdbc0; PC = 0x5555555824a8 *)
mov L0x7fffffffdbc0 ymm23_0;
mov L0x7fffffffdbc8 ymm23_1;
mov L0x7fffffffdbd0 ymm23_2;
mov L0x7fffffffdbd8 ymm23_3;
(* vmovdqa %ymm10,0x1e0(%rax)                      #! EA = L0x7fffffffdbe0; PC = 0x5555555824af *)
mov L0x7fffffffdbe0 ymm10_0;
mov L0x7fffffffdbe8 ymm10_1;
mov L0x7fffffffdbf0 ymm10_2;
mov L0x7fffffffdbf8 ymm10_3;
(* vmovdqa %ymm1,0x200(%rax)                       #! EA = L0x7fffffffdc00; PC = 0x5555555824b7 *)
mov L0x7fffffffdc00 ymm1_0;
mov L0x7fffffffdc08 ymm1_1;
mov L0x7fffffffdc10 ymm1_2;
mov L0x7fffffffdc18 ymm1_3;
(* vmovdqa64 %ymm28,0x220(%rax)                    #! EA = L0x7fffffffdc20; PC = 0x5555555824bf *)
mov L0x7fffffffdc20 ymm28_0;
mov L0x7fffffffdc28 ymm28_1;
mov L0x7fffffffdc30 ymm28_2;
mov L0x7fffffffdc38 ymm28_3;
(* vmovdqa %ymm2,0x240(%rax)                       #! EA = L0x7fffffffdc40; PC = 0x5555555824c6 *)
mov L0x7fffffffdc40 ymm2_0;
mov L0x7fffffffdc48 ymm2_1;
mov L0x7fffffffdc50 ymm2_2;
mov L0x7fffffffdc58 ymm2_3;
(* vmovdqa %ymm7,0x260(%rax)                       #! EA = L0x7fffffffdc60; PC = 0x5555555824ce *)
mov L0x7fffffffdc60 ymm7_0;
mov L0x7fffffffdc68 ymm7_1;
mov L0x7fffffffdc70 ymm7_2;
mov L0x7fffffffdc78 ymm7_3;
(* vmovdqa %ymm13,0x280(%rax)                      #! EA = L0x7fffffffdc80; PC = 0x5555555824d6 *)
mov L0x7fffffffdc80 ymm13_0;
mov L0x7fffffffdc88 ymm13_1;
mov L0x7fffffffdc90 ymm13_2;
mov L0x7fffffffdc98 ymm13_3;
(* vmovdqa %ymm0,0x2a0(%rax)                       #! EA = L0x7fffffffdca0; PC = 0x5555555824de *)
mov L0x7fffffffdca0 ymm0_0;
mov L0x7fffffffdca8 ymm0_1;
mov L0x7fffffffdcb0 ymm0_2;
mov L0x7fffffffdcb8 ymm0_3;
(* vmovdqa64 %ymm20,0x2c0(%rax)                    #! EA = L0x7fffffffdcc0; PC = 0x5555555824e6 *)
mov L0x7fffffffdcc0 ymm20_0;
mov L0x7fffffffdcc8 ymm20_1;
mov L0x7fffffffdcd0 ymm20_2;
mov L0x7fffffffdcd8 ymm20_3;
(* vmovdqa %ymm15,0x2e0(%rax)                      #! EA = L0x7fffffffdce0; PC = 0x5555555824ed *)
mov L0x7fffffffdce0 ymm15_0;
mov L0x7fffffffdce8 ymm15_1;
mov L0x7fffffffdcf0 ymm15_2;
mov L0x7fffffffdcf8 ymm15_3;
(* vmovdqa64 %ymm18,0x300(%rax)                    #! EA = L0x7fffffffdd00; PC = 0x5555555824f5 *)
mov L0x7fffffffdd00 ymm18_0;
mov L0x7fffffffdd08 ymm18_1;
mov L0x7fffffffdd10 ymm18_2;
mov L0x7fffffffdd18 ymm18_3;
(* vzeroupper                                      #! PC = 0x5555555824fc *)
mov ymm0_2 0@uint64;
mov ymm0_3 0@uint64;
mov ymm1_2 0@uint64;
mov ymm1_3 0@uint64;
mov ymm2_2 0@uint64;
mov ymm2_3 0@uint64;
mov ymm3_2 0@uint64;
mov ymm3_3 0@uint64;
mov ymm4_2 0@uint64;
mov ymm4_3 0@uint64;
mov ymm5_2 0@uint64;
mov ymm5_3 0@uint64;
mov ymm6_2 0@uint64;
mov ymm6_3 0@uint64;
mov ymm7_2 0@uint64;
mov ymm7_3 0@uint64;
mov ymm8_2 0@uint64;
mov ymm8_3 0@uint64;
mov ymm9_2 0@uint64;
mov ymm9_3 0@uint64;
mov ymm10_2 0@uint64;
mov ymm10_3 0@uint64;
mov ymm11_2 0@uint64;
mov ymm11_3 0@uint64;
mov ymm12_2 0@uint64;
mov ymm12_3 0@uint64;
mov ymm13_2 0@uint64;
mov ymm13_3 0@uint64;
mov ymm14_2 0@uint64;
mov ymm14_3 0@uint64;
mov ymm15_2 0@uint64;
mov ymm15_3 0@uint64;
(* #! <- SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* #ret                                            #! PC = 0x55555558250d *)
#ret                                            #! 0x55555558250d = 0x55555558250d;

(* ===== Outputs ===== *)

mov a00 L0x7fffffffda00;
mov b00 L0x7fffffffda08;
mov c00 L0x7fffffffda10;
mov d00 L0x7fffffffda18;
mov a01 L0x7fffffffda20;
mov b01 L0x7fffffffda28;
mov c01 L0x7fffffffda30;
mov d01 L0x7fffffffda38;
mov a02 L0x7fffffffda40;
mov b02 L0x7fffffffda48;
mov c02 L0x7fffffffda50;
mov d02 L0x7fffffffda58;
mov a03 L0x7fffffffda60;
mov b03 L0x7fffffffda68;
mov c03 L0x7fffffffda70;
mov d03 L0x7fffffffda78;
mov a04 L0x7fffffffda80;
mov b04 L0x7fffffffda88;
mov c04 L0x7fffffffda90;
mov d04 L0x7fffffffda98;
mov a05 L0x7fffffffdaa0;
mov b05 L0x7fffffffdaa8;
mov c05 L0x7fffffffdab0;
mov d05 L0x7fffffffdab8;
mov a06 L0x7fffffffdac0;
mov b06 L0x7fffffffdac8;
mov c06 L0x7fffffffdad0;
mov d06 L0x7fffffffdad8;
mov a07 L0x7fffffffdae0;
mov b07 L0x7fffffffdae8;
mov c07 L0x7fffffffdaf0;
mov d07 L0x7fffffffdaf8;
mov a08 L0x7fffffffdb00;
mov b08 L0x7fffffffdb08;
mov c08 L0x7fffffffdb10;
mov d08 L0x7fffffffdb18;
mov a09 L0x7fffffffdb20;
mov b09 L0x7fffffffdb28;
mov c09 L0x7fffffffdb30;
mov d09 L0x7fffffffdb38;
mov a10 L0x7fffffffdb40;
mov b10 L0x7fffffffdb48;
mov c10 L0x7fffffffdb50;
mov d10 L0x7fffffffdb58;
mov a11 L0x7fffffffdb60;
mov b11 L0x7fffffffdb68;
mov c11 L0x7fffffffdb70;
mov d11 L0x7fffffffdb78;
mov a12 L0x7fffffffdb80;
mov b12 L0x7fffffffdb88;
mov c12 L0x7fffffffdb90;
mov d12 L0x7fffffffdb98;
mov a13 L0x7fffffffdba0;
mov b13 L0x7fffffffdba8;
mov c13 L0x7fffffffdbb0;
mov d13 L0x7fffffffdbb8;
mov a14 L0x7fffffffdbc0;
mov b14 L0x7fffffffdbc8;
mov c14 L0x7fffffffdbd0;
mov d14 L0x7fffffffdbd8;
mov a15 L0x7fffffffdbe0;
mov b15 L0x7fffffffdbe8;
mov c15 L0x7fffffffdbf0;
mov d15 L0x7fffffffdbf8;
mov a16 L0x7fffffffdc00;
mov b16 L0x7fffffffdc08;
mov c16 L0x7fffffffdc10;
mov d16 L0x7fffffffdc18;
mov a17 L0x7fffffffdc20;
mov b17 L0x7fffffffdc28;
mov c17 L0x7fffffffdc30;
mov d17 L0x7fffffffdc38;
mov a18 L0x7fffffffdc40;
mov b18 L0x7fffffffdc48;
mov c18 L0x7fffffffdc50;
mov d18 L0x7fffffffdc58;
mov a19 L0x7fffffffdc60;
mov b19 L0x7fffffffdc68;
mov c19 L0x7fffffffdc70;
mov d19 L0x7fffffffdc78;
mov a20 L0x7fffffffdc80;
mov b20 L0x7fffffffdc88;
mov c20 L0x7fffffffdc90;
mov d20 L0x7fffffffdc98;
mov a21 L0x7fffffffdca0;
mov b21 L0x7fffffffdca8;
mov c21 L0x7fffffffdcb0;
mov d21 L0x7fffffffdcb8;
mov a22 L0x7fffffffdcc0;
mov b22 L0x7fffffffdcc8;
mov c22 L0x7fffffffdcd0;
mov d22 L0x7fffffffdcd8;
mov a23 L0x7fffffffdce0;
mov b23 L0x7fffffffdce8;
mov c23 L0x7fffffffdcf0;
mov d23 L0x7fffffffdcf8;
mov a24 L0x7fffffffdd00;
mov b24 L0x7fffffffdd08;
mov c24 L0x7fffffffdd10;
mov d24 L0x7fffffffdd18;

{
  true
  &&
  true
}

