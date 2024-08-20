(* popper: cv_cec.exe -jobs 16 -v -ov ACC00,ACC01#ACC02,ACC03#ACC04,ACC05#ACC06,ACC07#ACC08,ACC09#ACC0a,ACC0b#ACC0c,ACC0d#ACC0e,ACC0f#ACC10,ACC11#ACC12,ACC13#ACC14,ACC15#ACC16,ACC17#ACC18,ACC19#ACC1a,ACC1b#ACC1c,ACC1d#ACC1e,ACC1f _gf256v_madd_u64_0x30.cl gf256_madd_0x30.vcl
Parsing CryptoLine file:                [OK]            0.3139 seconds
Checking well-formedness:               [OK]            0.1889 seconds
Parsing CryptoLine file:                [OK]            0.0142 seconds
Checking well-formedness:               [OK]            0.0065 seconds
Equivalence of output group #8:         [OK]            66.2876 seconds
Equivalence of output group #3:         [OK]            68.5050 seconds
Equivalence of output group #0:         [OK]            69.1214 seconds
Equivalence of output group #14:        [OK]            66.4407 seconds
Equivalence of output group #1:         [OK]            69.2742 seconds
Equivalence of output group #6:         [OK]            68.4185 seconds
Equivalence of output group #13:        [OK]            67.6343 seconds
Equivalence of output group #2:         [OK]            70.3095 seconds
Equivalence of output group #5:         [OK]            70.7615 seconds
Equivalence of output group #7:         [OK]            70.4939 seconds
Equivalence of output group #11:        [OK]            69.8172 seconds
Equivalence of output group #9:         [OK]            70.2262 seconds
Equivalence of output group #12:        [OK]            69.7286 seconds
Equivalence of output group #15:        [OK]            69.3438 seconds
Equivalence of output group #10:        [OK]            70.4817 seconds
Equivalence of output group #4:         [OK]            81.2826 seconds
Final result:                           [OK]            82.2485 seconds
*)
proc sel128 (uint128 src, uint8 idx; uint8 dst) =
{ true && true }
spl idx_7 dontcare idx 7;
cast idx_7@bit idx_7;
spl dontcare idx_0t4 idx 4;
cast idx_0t4@uint128 idx_0t4;
shr tmp src idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
spl dontcare dst tmp 8;
cmov dst idx_7 0@uint8 dst;
{ true && true }

proc vpshufb128 (uint8 src0, uint8 src1, uint8 src2, uint8 src3,
                 uint8 src4, uint8 src5, uint8 src6, uint8 src7,
                 uint8 src8, uint8 src9, uint8 srca, uint8 srcb,
                 uint8 srcc, uint8 srcd, uint8 srce, uint8 srcf,
                 uint8 idx0, uint8 idx1, uint8 idx2, uint8 idx3,
                 uint8 idx4, uint8 idx5, uint8 idx6, uint8 idx7,
                 uint8 idx8, uint8 idx9, uint8 idxa, uint8 idxb,
                 uint8 idxc, uint8 idxd, uint8 idxe, uint8 idxf;
                 uint8 dst0, uint8 dst1, uint8 dst2, uint8 dst3,
                 uint8 dst4, uint8 dst5, uint8 dst6, uint8 dst7,
                 uint8 dst8, uint8 dst9, uint8 dsta, uint8 dstb,
                 uint8 dstc, uint8 dstd, uint8 dste, uint8 dstf) =
{ true && true }
join src128 src1 src0;   join src128 src2 src128; join src128 src3 src128;
join src128 src4 src128; join src128 src5 src128; join src128 src6 src128;
join src128 src7 src128; join src128 src8 src128; join src128 src9 src128;
join src128 srca src128; join src128 srcb src128; join src128 srcc src128;
join src128 srcd src128; join src128 srce src128; join src128 srcf src128;
inline sel128 (src128, idx0, dst0); inline sel128 (src128, idx1, dst1);
inline sel128 (src128, idx2, dst2); inline sel128 (src128, idx3, dst3);
inline sel128 (src128, idx4, dst4); inline sel128 (src128, idx5, dst5);
inline sel128 (src128, idx6, dst6); inline sel128 (src128, idx7, dst7);
inline sel128 (src128, idx8, dst8); inline sel128 (src128, idx9, dst9);
inline sel128 (src128, idxa, dsta); inline sel128 (src128, idxb, dstb);
inline sel128 (src128, idxc, dstc); inline sel128 (src128, idxd, dstd);
inline sel128 (src128, idxe, dste); inline sel128 (src128, idxf, dstf);
{ true && true }

proc gf256_madd_0x30 (
uint8 acc00, uint8 acc01, uint8 acc02, uint8 acc03,
uint8 acc04, uint8 acc05, uint8 acc06, uint8 acc07,
uint8 acc08, uint8 acc09, uint8 acc0a, uint8 acc0b,
uint8 acc0c, uint8 acc0d, uint8 acc0e, uint8 acc0f,
uint8 acc10, uint8 acc11, uint8 acc12, uint8 acc13,
uint8 acc14, uint8 acc15, uint8 acc16, uint8 acc17,
uint8 acc18, uint8 acc19, uint8 acc1a, uint8 acc1b,
uint8 acc1c, uint8 acc1d, uint8 acc1e, uint8 acc1f,
uint8 acc20, uint8 acc21, uint8 acc22, uint8 acc23,
uint8 acc24, uint8 acc25, uint8 acc26, uint8 acc27,
uint8 acc28, uint8 acc29, uint8 acc2a, uint8 acc2b,
uint8 acc2c, uint8 acc2d, uint8 acc2e, uint8 acc2f,
uint8 a00, uint8 a01, uint8 a02, uint8 a03,
uint8 a04, uint8 a05, uint8 a06, uint8 a07,
uint8 a08, uint8 a09, uint8 a0a, uint8 a0b,
uint8 a0c, uint8 a0d, uint8 a0e, uint8 a0f,
uint8 a10, uint8 a11, uint8 a12, uint8 a13,
uint8 a14, uint8 a15, uint8 a16, uint8 a17,
uint8 a18, uint8 a19, uint8 a1a, uint8 a1b,
uint8 a1c, uint8 a1d, uint8 a1e, uint8 a1f,
uint8 a20, uint8 a21, uint8 a22, uint8 a23,
uint8 a24, uint8 a25, uint8 a26, uint8 a27,
uint8 a28, uint8 a29, uint8 a2a, uint8 a2b,
uint8 a2c, uint8 a2d, uint8 a2e, uint8 a2f,
uint8 b;
uint8 ACC00,uint8 ACC01,uint8 ACC02,uint8 ACC03,uint8 ACC04,uint8 ACC05,
uint8 ACC06,uint8 ACC07,uint8 ACC08,uint8 ACC09,uint8 ACC0a,uint8 ACC0b,
uint8 ACC0c,uint8 ACC0d,uint8 ACC0e,uint8 ACC0f,uint8 ACC10,uint8 ACC11,
uint8 ACC12,uint8 ACC13,uint8 ACC14,uint8 ACC15,uint8 ACC16,uint8 ACC17,
uint8 ACC18,uint8 ACC19,uint8 ACC1a,uint8 ACC1b,uint8 ACC1c,uint8 ACC1d,
uint8 ACC1e,uint8 ACC1f,uint8 ACC20,uint8 ACC21,uint8 ACC22,uint8 ACC23,
uint8 ACC24,uint8 ACC25,uint8 ACC26,uint8 ACC27,uint8 ACC28,uint8 ACC29,
uint8 ACC2a,uint8 ACC2b,uint8 ACC2c,uint8 ACC2d,uint8 ACC2e,uint8 ACC2f) =
{
  true
  &&
  true
}

mov L0x7fffffffa460 a00; mov L0x7fffffffa461 a01; mov L0x7fffffffa462 a02;
mov L0x7fffffffa463 a03; mov L0x7fffffffa464 a04; mov L0x7fffffffa465 a05;
mov L0x7fffffffa466 a06; mov L0x7fffffffa467 a07; mov L0x7fffffffa468 a08;
mov L0x7fffffffa469 a09; mov L0x7fffffffa46a a0a; mov L0x7fffffffa46b a0b;
mov L0x7fffffffa46c a0c; mov L0x7fffffffa46d a0d; mov L0x7fffffffa46e a0e;
mov L0x7fffffffa46f a0f;
mov L0x7fffffffa470 a10; mov L0x7fffffffa471 a11; mov L0x7fffffffa472 a12;
mov L0x7fffffffa473 a13; mov L0x7fffffffa474 a14; mov L0x7fffffffa475 a15;
mov L0x7fffffffa476 a16; mov L0x7fffffffa477 a17; mov L0x7fffffffa478 a18;
mov L0x7fffffffa479 a19; mov L0x7fffffffa47a a1a; mov L0x7fffffffa47b a1b;
mov L0x7fffffffa47c a1c; mov L0x7fffffffa47d a1d; mov L0x7fffffffa47e a1e;
mov L0x7fffffffa47f a1f;
mov L0x7fffffffa480 a20; mov L0x7fffffffa481 a21; mov L0x7fffffffa482 a22;
mov L0x7fffffffa483 a23; mov L0x7fffffffa484 a24; mov L0x7fffffffa485 a25;
mov L0x7fffffffa486 a26; mov L0x7fffffffa487 a27; mov L0x7fffffffa488 a28;
mov L0x7fffffffa489 a29; mov L0x7fffffffa48a a2a; mov L0x7fffffffa48b a2b;
mov L0x7fffffffa48c a2c; mov L0x7fffffffa48d a2d; mov L0x7fffffffa48e a2e;
mov L0x7fffffffa48f a2f;

mov L0x7fffffffa490 acc00;mov L0x7fffffffa491 acc01;mov L0x7fffffffa492 acc02;
mov L0x7fffffffa493 acc03;mov L0x7fffffffa494 acc04;mov L0x7fffffffa495 acc05;
mov L0x7fffffffa496 acc06;mov L0x7fffffffa497 acc07;mov L0x7fffffffa498 acc08;
mov L0x7fffffffa499 acc09;mov L0x7fffffffa49a acc0a;mov L0x7fffffffa49b acc0b;
mov L0x7fffffffa49c acc0c;mov L0x7fffffffa49d acc0d;mov L0x7fffffffa49e acc0e;
mov L0x7fffffffa49f acc0f;
mov L0x7fffffffa4a0 acc10;mov L0x7fffffffa4a1 acc11;mov L0x7fffffffa4a2 acc12;
mov L0x7fffffffa4a3 acc13;mov L0x7fffffffa4a4 acc14;mov L0x7fffffffa4a5 acc15;
mov L0x7fffffffa4a6 acc16;mov L0x7fffffffa4a7 acc17;mov L0x7fffffffa4a8 acc18;
mov L0x7fffffffa4a9 acc19;mov L0x7fffffffa4aa acc1a;mov L0x7fffffffa4ab acc1b;
mov L0x7fffffffa4ac acc1c;mov L0x7fffffffa4ad acc1d;mov L0x7fffffffa4ae acc1e;
mov L0x7fffffffa4af acc1f;
mov L0x7fffffffa4b0 acc20;mov L0x7fffffffa4b1 acc21;mov L0x7fffffffa4b2 acc22;
mov L0x7fffffffa4b3 acc23;mov L0x7fffffffa4b4 acc24;mov L0x7fffffffa4b5 acc25;
mov L0x7fffffffa4b6 acc26;mov L0x7fffffffa4b7 acc27;mov L0x7fffffffa4b8 acc28;
mov L0x7fffffffa4b9 acc29;mov L0x7fffffffa4ba acc2a;mov L0x7fffffffa4bb acc2b;
mov L0x7fffffffa4bc acc2c;mov L0x7fffffffa4bd acc2d;mov L0x7fffffffa4be acc2e;
mov L0x7fffffffa4bf acc2f;

mov rdx b;

nondet rax@uint64; nondet rcx@uint64; nondet rdi@uint64; nondet rsi@uint64;

(**************** constants ****************)

mov L0x555555566020 0x1@uint8;mov L0x555555566021 0x1@uint8;
mov L0x555555566022 0x1@uint8;mov L0x555555566023 0x1@uint8;
mov L0x555555566024 0x1@uint8;mov L0x555555566025 0x1@uint8;
mov L0x555555566026 0x1@uint8;mov L0x555555566027 0x1@uint8;
mov L0x555555566028 0x1@uint8;mov L0x555555566029 0x1@uint8;
mov L0x55555556602a 0x1@uint8;mov L0x55555556602b 0x1@uint8;
mov L0x55555556602c 0x1@uint8;mov L0x55555556602d 0x1@uint8;
mov L0x55555556602e 0x1@uint8;mov L0x55555556602f 0x1@uint8;

mov L0x555555566030 0x0f@uint8;mov L0x555555566031 0x0f@uint8;
mov L0x555555566032 0x0f@uint8;mov L0x555555566033 0x0f@uint8;
mov L0x555555566034 0x0f@uint8;mov L0x555555566035 0x0f@uint8;
mov L0x555555566036 0x0f@uint8;mov L0x555555566037 0x0f@uint8;
mov L0x555555566038 0x0f@uint8;mov L0x555555566039 0x0f@uint8;
mov L0x55555556603a 0x0f@uint8;mov L0x55555556603b 0x0f@uint8;
mov L0x55555556603c 0x0f@uint8;mov L0x55555556603d 0x0f@uint8;
mov L0x55555556603e 0x0f@uint8;mov L0x55555556603f 0x0f@uint8;

mov L0x555555568080 0x00@uint8;mov L0x555555568081 0x01@uint8;
mov L0x555555568082 0x02@uint8;mov L0x555555568083 0x03@uint8;
mov L0x555555568084 0x04@uint8;mov L0x555555568085 0x05@uint8;
mov L0x555555568086 0x06@uint8;mov L0x555555568087 0x07@uint8;
mov L0x555555568088 0x08@uint8;mov L0x555555568089 0x09@uint8;
mov L0x55555556808a 0x0a@uint8;mov L0x55555556808b 0x0b@uint8;
mov L0x55555556808c 0x0c@uint8;mov L0x55555556808d 0x0d@uint8;
mov L0x55555556808e 0x0e@uint8;mov L0x55555556808f 0x0f@uint8;
mov L0x555555568090 0x00@uint8;mov L0x555555568091 0x10@uint8;
mov L0x555555568092 0x20@uint8;mov L0x555555568093 0x30@uint8;
mov L0x555555568094 0x40@uint8;mov L0x555555568095 0x50@uint8;
mov L0x555555568096 0x60@uint8;mov L0x555555568097 0x70@uint8;
mov L0x555555568098 0x80@uint8;mov L0x555555568099 0x90@uint8;
mov L0x55555556809a 0xa0@uint8;mov L0x55555556809b 0xb0@uint8;
mov L0x55555556809c 0xc0@uint8;mov L0x55555556809d 0xd0@uint8;
mov L0x55555556809e 0xe0@uint8;mov L0x55555556809f 0xf0@uint8;
mov L0x5555555680a0 0x00@uint8;mov L0x5555555680a1 0x02@uint8;
mov L0x5555555680a2 0x04@uint8;mov L0x5555555680a3 0x06@uint8;
mov L0x5555555680a4 0x08@uint8;mov L0x5555555680a5 0x0a@uint8;
mov L0x5555555680a6 0x0c@uint8;mov L0x5555555680a7 0x0e@uint8;
mov L0x5555555680a8 0x10@uint8;mov L0x5555555680a9 0x12@uint8;
mov L0x5555555680aa 0x14@uint8;mov L0x5555555680ab 0x16@uint8;
mov L0x5555555680ac 0x18@uint8;mov L0x5555555680ad 0x1a@uint8;
mov L0x5555555680ae 0x1c@uint8;mov L0x5555555680af 0x1e@uint8;
mov L0x5555555680b0 0x00@uint8;mov L0x5555555680b1 0x20@uint8;
mov L0x5555555680b2 0x40@uint8;mov L0x5555555680b3 0x60@uint8;
mov L0x5555555680b4 0x80@uint8;mov L0x5555555680b5 0xa0@uint8;
mov L0x5555555680b6 0xc0@uint8;mov L0x5555555680b7 0xe0@uint8;
mov L0x5555555680b8 0x1b@uint8;mov L0x5555555680b9 0x3b@uint8;
mov L0x5555555680ba 0x5b@uint8;mov L0x5555555680bb 0x7b@uint8;
mov L0x5555555680bc 0x9b@uint8;mov L0x5555555680bd 0xbb@uint8;
mov L0x5555555680be 0xdb@uint8;mov L0x5555555680bf 0xfb@uint8;
mov L0x5555555680c0 0x00@uint8;mov L0x5555555680c1 0x04@uint8;
mov L0x5555555680c2 0x08@uint8;mov L0x5555555680c3 0x0c@uint8;
mov L0x5555555680c4 0x10@uint8;mov L0x5555555680c5 0x14@uint8;
mov L0x5555555680c6 0x18@uint8;mov L0x5555555680c7 0x1c@uint8;
mov L0x5555555680c8 0x20@uint8;mov L0x5555555680c9 0x24@uint8;
mov L0x5555555680ca 0x28@uint8;mov L0x5555555680cb 0x2c@uint8;
mov L0x5555555680cc 0x30@uint8;mov L0x5555555680cd 0x34@uint8;
mov L0x5555555680ce 0x38@uint8;mov L0x5555555680cf 0x3c@uint8;
mov L0x5555555680d0 0x00@uint8;mov L0x5555555680d1 0x40@uint8;
mov L0x5555555680d2 0x80@uint8;mov L0x5555555680d3 0xc0@uint8;
mov L0x5555555680d4 0x1b@uint8;mov L0x5555555680d5 0x5b@uint8;
mov L0x5555555680d6 0x9b@uint8;mov L0x5555555680d7 0xdb@uint8;
mov L0x5555555680d8 0x36@uint8;mov L0x5555555680d9 0x76@uint8;
mov L0x5555555680da 0xb6@uint8;mov L0x5555555680db 0xf6@uint8;
mov L0x5555555680dc 0x2d@uint8;mov L0x5555555680dd 0x6d@uint8;
mov L0x5555555680de 0xad@uint8;mov L0x5555555680df 0xed@uint8;
mov L0x5555555680e0 0x00@uint8;mov L0x5555555680e1 0x08@uint8;
mov L0x5555555680e2 0x10@uint8;mov L0x5555555680e3 0x18@uint8;
mov L0x5555555680e4 0x20@uint8;mov L0x5555555680e5 0x28@uint8;
mov L0x5555555680e6 0x30@uint8;mov L0x5555555680e7 0x38@uint8;
mov L0x5555555680e8 0x40@uint8;mov L0x5555555680e9 0x48@uint8;
mov L0x5555555680ea 0x50@uint8;mov L0x5555555680eb 0x58@uint8;
mov L0x5555555680ec 0x60@uint8;mov L0x5555555680ed 0x68@uint8;
mov L0x5555555680ee 0x70@uint8;mov L0x5555555680ef 0x78@uint8;
mov L0x5555555680f0 0x00@uint8;mov L0x5555555680f1 0x80@uint8;
mov L0x5555555680f2 0x1b@uint8;mov L0x5555555680f3 0x9b@uint8;
mov L0x5555555680f4 0x36@uint8;mov L0x5555555680f5 0xb6@uint8;
mov L0x5555555680f6 0x2d@uint8;mov L0x5555555680f7 0xad@uint8;
mov L0x5555555680f8 0x6c@uint8;mov L0x5555555680f9 0xec@uint8;
mov L0x5555555680fa 0x77@uint8;mov L0x5555555680fb 0xf7@uint8;
mov L0x5555555680fc 0x5a@uint8;mov L0x5555555680fd 0xda@uint8;
mov L0x5555555680fe 0x41@uint8;mov L0x5555555680ff 0xc1@uint8;
mov L0x555555568100 0x00@uint8;mov L0x555555568101 0x10@uint8;
mov L0x555555568102 0x20@uint8;mov L0x555555568103 0x30@uint8;
mov L0x555555568104 0x40@uint8;mov L0x555555568105 0x50@uint8;
mov L0x555555568106 0x60@uint8;mov L0x555555568107 0x70@uint8;
mov L0x555555568108 0x80@uint8;mov L0x555555568109 0x90@uint8;
mov L0x55555556810a 0xa0@uint8;mov L0x55555556810b 0xb0@uint8;
mov L0x55555556810c 0xc0@uint8;mov L0x55555556810d 0xd0@uint8;
mov L0x55555556810e 0xe0@uint8;mov L0x55555556810f 0xf0@uint8;
mov L0x555555568110 0x00@uint8;mov L0x555555568111 0x1b@uint8;
mov L0x555555568112 0x36@uint8;mov L0x555555568113 0x2d@uint8;
mov L0x555555568114 0x6c@uint8;mov L0x555555568115 0x77@uint8;
mov L0x555555568116 0x5a@uint8;mov L0x555555568117 0x41@uint8;
mov L0x555555568118 0xd8@uint8;mov L0x555555568119 0xc3@uint8;
mov L0x55555556811a 0xee@uint8;mov L0x55555556811b 0xf5@uint8;
mov L0x55555556811c 0xb4@uint8;mov L0x55555556811d 0xaf@uint8;
mov L0x55555556811e 0x82@uint8;mov L0x55555556811f 0x99@uint8;
mov L0x555555568120 0x00@uint8;mov L0x555555568121 0x20@uint8;
mov L0x555555568122 0x40@uint8;mov L0x555555568123 0x60@uint8;
mov L0x555555568124 0x80@uint8;mov L0x555555568125 0xa0@uint8;
mov L0x555555568126 0xc0@uint8;mov L0x555555568127 0xe0@uint8;
mov L0x555555568128 0x1b@uint8;mov L0x555555568129 0x3b@uint8;
mov L0x55555556812a 0x5b@uint8;mov L0x55555556812b 0x7b@uint8;
mov L0x55555556812c 0x9b@uint8;mov L0x55555556812d 0xbb@uint8;
mov L0x55555556812e 0xdb@uint8;mov L0x55555556812f 0xfb@uint8;
mov L0x555555568130 0x00@uint8;mov L0x555555568131 0x36@uint8;
mov L0x555555568132 0x6c@uint8;mov L0x555555568133 0x5a@uint8;
mov L0x555555568134 0xd8@uint8;mov L0x555555568135 0xee@uint8;
mov L0x555555568136 0xb4@uint8;mov L0x555555568137 0x82@uint8;
mov L0x555555568138 0xab@uint8;mov L0x555555568139 0x9d@uint8;
mov L0x55555556813a 0xc7@uint8;mov L0x55555556813b 0xf1@uint8;
mov L0x55555556813c 0x73@uint8;mov L0x55555556813d 0x45@uint8;
mov L0x55555556813e 0x1f@uint8;mov L0x55555556813f 0x29@uint8;
mov L0x555555568140 0x00@uint8;mov L0x555555568141 0x40@uint8;
mov L0x555555568142 0x80@uint8;mov L0x555555568143 0xc0@uint8;
mov L0x555555568144 0x1b@uint8;mov L0x555555568145 0x5b@uint8;
mov L0x555555568146 0x9b@uint8;mov L0x555555568147 0xdb@uint8;
mov L0x555555568148 0x36@uint8;mov L0x555555568149 0x76@uint8;
mov L0x55555556814a 0xb6@uint8;mov L0x55555556814b 0xf6@uint8;
mov L0x55555556814c 0x2d@uint8;mov L0x55555556814d 0x6d@uint8;
mov L0x55555556814e 0xad@uint8;mov L0x55555556814f 0xed@uint8;
mov L0x555555568150 0x00@uint8;mov L0x555555568151 0x6c@uint8;
mov L0x555555568152 0xd8@uint8;mov L0x555555568153 0xb4@uint8;
mov L0x555555568154 0xab@uint8;mov L0x555555568155 0xc7@uint8;
mov L0x555555568156 0x73@uint8;mov L0x555555568157 0x1f@uint8;
mov L0x555555568158 0x4d@uint8;mov L0x555555568159 0x21@uint8;
mov L0x55555556815a 0x95@uint8;mov L0x55555556815b 0xf9@uint8;
mov L0x55555556815c 0xe6@uint8;mov L0x55555556815d 0x8a@uint8;
mov L0x55555556815e 0x3e@uint8;mov L0x55555556815f 0x52@uint8;
mov L0x555555568160 0x00@uint8;mov L0x555555568161 0x80@uint8;
mov L0x555555568162 0x1b@uint8;mov L0x555555568163 0x9b@uint8;
mov L0x555555568164 0x36@uint8;mov L0x555555568165 0xb6@uint8;
mov L0x555555568166 0x2d@uint8;mov L0x555555568167 0xad@uint8;
mov L0x555555568168 0x6c@uint8;mov L0x555555568169 0xec@uint8;
mov L0x55555556816a 0x77@uint8;mov L0x55555556816b 0xf7@uint8;
mov L0x55555556816c 0x5a@uint8;mov L0x55555556816d 0xda@uint8;
mov L0x55555556816e 0x41@uint8;mov L0x55555556816f 0xc1@uint8;
mov L0x555555568170 0x00@uint8;mov L0x555555568171 0xd8@uint8;
mov L0x555555568172 0xab@uint8;mov L0x555555568173 0x73@uint8;
mov L0x555555568174 0x4d@uint8;mov L0x555555568175 0x95@uint8;
mov L0x555555568176 0xe6@uint8;mov L0x555555568177 0x3e@uint8;
mov L0x555555568178 0x9a@uint8;mov L0x555555568179 0x42@uint8;
mov L0x55555556817a 0x31@uint8;mov L0x55555556817b 0xe9@uint8;
mov L0x55555556817c 0xd7@uint8;mov L0x55555556817d 0x0f@uint8;
mov L0x55555556817e 0x7c@uint8;mov L0x55555556817f 0xa4@uint8;

(* #! -> SP = 0x7fffffffa3e8 *)
#! 0x7fffffffa3e8 = 0x7fffffffa3e8;
(* mov    %rdi,%r8                                 #! PC = 0x555555556541 *)
mov r8 rdi;
(* mov    %rsi,%r9                                 #! PC = 0x555555556544 *)
mov r9 rsi;
(* movzbl %dl,%esi                                 #! PC = 0x555555556547 *)
mov rsi rdx;
(* mov    %rax,-0x8(%rbp)                          #! EA = L0x7fffffffa3d8; PC = 0x55555555655a *)
mov L0x7fffffffa3d8 rax;
(* xor    %eax,%eax                                #! PC = 0x55555555655e *)
mov rax 0@uint64;
(* #call   0x555555556160 <tbl_gf256_multab>       #! PC = 0x555555556564 *)
#call   0x555555556160 <tbl_gf256_multab>       #! 0x555555556564 = 0x555555556564;
(* #! -> SP = 0x7fffffffa3a8 *)
#! 0x7fffffffa3a8 = 0x7fffffffa3a8;
(* movd   %esi,%xmm1                               #! PC = 0x555555556160 *)
mov %xmm1 [rsi,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
           0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pxor   %xmm0,%xmm0                              #! PC = 0x555555556164 *)
mov %xmm0 [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
           0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* mov    %rdi,%rax                                #! PC = 0x555555556168 *)
mov rax rdi;
(* movdqa 0xfead(%rip),%xmm5        # 0x555555566020#! EA = L0x555555566020; Value = 0x0101010101010101; PC = 0x55555555616b *)
mov %xmm5 [L0x555555566020, L0x555555566021, L0x555555566022, L0x555555566023,
           L0x555555566024, L0x555555566025, L0x555555566026, L0x555555566027,
           L0x555555566028, L0x555555566029, L0x55555556602a, L0x55555556602b,
           L0x55555556602c, L0x55555556602d, L0x55555556602e, L0x55555556602f];
(* pshufb %xmm0,%xmm1                              #! PC = 0x555555556173 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm0;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* movdqa 0xfea0(%rip),%xmm3        # 0x555555566020#! EA = L0x555555566020; Value = 0x0101010101010101; PC = 0x555555556178 *)
mov %xmm3 [L0x555555566020, L0x555555566021, L0x555555566022, L0x555555566023,
           L0x555555566024, L0x555555566025, L0x555555566026, L0x555555566027,
           L0x555555566028, L0x555555566029, L0x55555556602a, L0x55555556602b,
           L0x55555556602c, L0x55555556602d, L0x55555556602e, L0x55555556602f];
(* movdqa %xmm1,%xmm4                              #! PC = 0x555555556180 *)
mov %xmm4 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x555555556184 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm1;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* movdqa %xmm1,%xmm2                              #! PC = 0x555555556189 *)
mov %xmm2 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x55555555618d *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm1;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm4                              #! PC = 0x555555556192 *)
and %xmm4@uint8[16] %xmm4 %xmm5;
(* movdqa %xmm1,%xmm8                              #! PC = 0x555555556196 *)
mov %xmm8 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x55555555619b *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm1;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm2                              #! PC = 0x5555555561a0 *)
and %xmm2@uint8[16] %xmm2 %xmm5;
(* movdqa %xmm1,%xmm7                              #! PC = 0x5555555561a4 *)
mov %xmm7 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x5555555561a8 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm1;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm8                              #! PC = 0x5555555561ad *)
and %xmm8@uint8[16] %xmm8 %xmm5;
(* movdqa %xmm1,%xmm9                              #! PC = 0x5555555561b2 *)
mov %xmm9 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x5555555561b7 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm1;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm7                              #! PC = 0x5555555561bc *)
and %xmm7@uint8[16] %xmm7 %xmm5;
(* movdqa %xmm1,%xmm6                              #! PC = 0x5555555561c0 *)
mov %xmm6 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x5555555561c4 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm1;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm9                              #! PC = 0x5555555561c9 *)
and %xmm9@uint8[16] %xmm9 %xmm5;
(* movdqa %xmm1,%xmm0                              #! PC = 0x5555555561ce *)
mov %xmm0 %xmm1;
(* movdqa %xmm1,%xmm10                             #! PC = 0x5555555561d2 *)
mov %xmm10 %xmm1;
(* pand   %xmm5,%xmm6                              #! PC = 0x5555555561d7 *)
and %xmm6@uint8[16] %xmm6 %xmm5;
(* movdqu 0x11f0d(%rip),%xmm1        # 0x5555555680f0 <__gf256_mulbase+112>#! EA = L0x5555555680f0; Value = 0xad2db6369b1b8000; PC = 0x5555555561db *)
mov %xmm1 [L0x5555555680f0, L0x5555555680f1, L0x5555555680f2, L0x5555555680f3,
           L0x5555555680f4, L0x5555555680f5, L0x5555555680f6, L0x5555555680f7,
           L0x5555555680f8, L0x5555555680f9, L0x5555555680fa, L0x5555555680fb,
           L0x5555555680fc, L0x5555555680fd, L0x5555555680fe, L0x5555555680ff];
(* psrlw  $0x1,%xmm0                               #! PC = 0x5555555561e3 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm0;
join s0 p1 p0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm0 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pcmpeqb %xmm3,%xmm7                             #! PC = 0x5555555561e8 *)
subb %dc %diff %xmm7 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm7 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pand   %xmm5,%xmm10                             #! PC = 0x5555555561ec *)
and %xmm10@uint8[16] %xmm10 %xmm5;
(* pcmpeqb %xmm3,%xmm9                             #! PC = 0x5555555561f1 *)
subb %dc %diff %xmm9 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm9 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pcmpeqb %xmm3,%xmm4                             #! PC = 0x5555555561f6 *)
subb %dc %diff %xmm4 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm4 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pand   %xmm5,%xmm0                              #! PC = 0x5555555561fa *)
and %xmm0@uint8[16] %xmm0 %xmm5;
(* movdqu 0x11eca(%rip),%xmm5        # 0x5555555680d0 <__gf256_mulbase+80>#! EA = L0x5555555680d0; Value = 0xdb9b5b1bc0804000; PC = 0x5555555561fe *)
mov %xmm5 [L0x5555555680d0, L0x5555555680d1, L0x5555555680d2, L0x5555555680d3,
           L0x5555555680d4, L0x5555555680d5, L0x5555555680d6, L0x5555555680d7,
           L0x5555555680d8, L0x5555555680d9, L0x5555555680da, L0x5555555680db,
           L0x5555555680dc, L0x5555555680dd, L0x5555555680de, L0x5555555680df];
(* pcmpeqb %xmm3,%xmm8                             #! PC = 0x555555556206 *)
subb %dc %diff %xmm8 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm8 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pcmpeqb %xmm3,%xmm6                             #! PC = 0x55555555620b *)
subb %dc %diff %xmm6 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm6 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pcmpeqb %xmm3,%xmm10                            #! PC = 0x55555555620f *)
subb %dc %diff %xmm10 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm10 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pcmpeqb %xmm3,%xmm2                             #! PC = 0x555555556214 *)
subb %dc %diff %xmm2 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm2 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* pand   %xmm7,%xmm1                              #! PC = 0x555555556218 *)
and %xmm1@uint8[16] %xmm1 %xmm7;
(* pcmpeqb %xmm3,%xmm0                             #! PC = 0x55555555621c *)
subb %dc %diff %xmm0 %xmm3;
subc %nz %dc [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
              0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8]
             %diff;
cmov %xmm0 %nz [0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8,
                0xff@uint8,0xff@uint8,0xff@uint8,0xff@uint8]
           [0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,
            0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8,0@uint8];
(* movdqu 0x11ee8(%rip),%xmm3        # 0x555555568110 <__gf256_mulbase+144>#! EA = L0x555555568110; Value = 0x415a776c2d361b00; PC = 0x555555556220 *)
mov %xmm3 [L0x555555568110, L0x555555568111, L0x555555568112, L0x555555568113,
           L0x555555568114, L0x555555568115, L0x555555568116, L0x555555568117,
           L0x555555568118, L0x555555568119, L0x55555556811a, L0x55555556811b,
           L0x55555556811c, L0x55555556811d, L0x55555556811e, L0x55555556811f];
(* pand   %xmm8,%xmm5                              #! PC = 0x555555556228 *)
and %xmm5@uint8[16] %xmm5 %xmm8;
(* pand   %xmm9,%xmm3                              #! PC = 0x55555555622d *)
and %xmm3@uint8[16] %xmm3 %xmm9;
(* pxor   %xmm3,%xmm1                              #! PC = 0x555555556232 *)
xor %xmm1@uint8[16] %xmm1 %xmm3;
(* movdqu 0x11e72(%rip),%xmm3        # 0x5555555680b0 <__gf256_mulbase+48>#! EA = L0x5555555680b0; Value = 0xe0c0a08060402000; PC = 0x555555556236 *)
mov %xmm3 [L0x5555555680b0, L0x5555555680b1, L0x5555555680b2, L0x5555555680b3,
           L0x5555555680b4, L0x5555555680b5, L0x5555555680b6, L0x5555555680b7,
           L0x5555555680b8, L0x5555555680b9, L0x5555555680ba, L0x5555555680bb,
           L0x5555555680bc, L0x5555555680bd, L0x5555555680be, L0x5555555680bf];
(* pand   %xmm2,%xmm3                              #! PC = 0x55555555623e *)
and %xmm3@uint8[16] %xmm3 %xmm2;
(* pxor   %xmm5,%xmm3                              #! PC = 0x555555556242 *)
xor %xmm3@uint8[16] %xmm3 %xmm5;
(* movdqu 0x11f02(%rip),%xmm5        # 0x555555568150 <__gf256_mulbase+208>#! EA = L0x555555568150; Value = 0x1f73c7abb4d86c00; PC = 0x555555556246 *)
mov %xmm5 [L0x555555568150, L0x555555568151, L0x555555568152, L0x555555568153,
           L0x555555568154, L0x555555568155, L0x555555568156, L0x555555568157,
           L0x555555568158, L0x555555568159, L0x55555556815a, L0x55555556815b,
           L0x55555556815c, L0x55555556815d, L0x55555556815e, L0x55555556815f];
(* pxor   %xmm3,%xmm1                              #! PC = 0x55555555624e *)
xor %xmm1@uint8[16] %xmm1 %xmm3;
(* movdqu 0x11ed6(%rip),%xmm3        # 0x555555568130 <__gf256_mulbase+176>#! EA = L0x555555568130; Value = 0x82b4eed85a6c3600; PC = 0x555555556252 *)
mov %xmm3 [L0x555555568130, L0x555555568131, L0x555555568132, L0x555555568133,
           L0x555555568134, L0x555555568135, L0x555555568136, L0x555555568137,
           L0x555555568138, L0x555555568139, L0x55555556813a, L0x55555556813b,
           L0x55555556813c, L0x55555556813d, L0x55555556813e, L0x55555556813f];
(* pand   %xmm10,%xmm5                             #! PC = 0x55555555625a *)
and %xmm5@uint8[16] %xmm5 %xmm10;
(* pand   %xmm6,%xmm3                              #! PC = 0x55555555625f *)
and %xmm3@uint8[16] %xmm3 %xmm6;
(* pxor   %xmm5,%xmm3                              #! PC = 0x555555556263 *)
xor %xmm3@uint8[16] %xmm3 %xmm5;
(* movdqu 0x11f01(%rip),%xmm5        # 0x555555568170 <__gf256_mulbase+240>#! EA = L0x555555568170; Value = 0x3ee6954d73abd800; PC = 0x555555556267 *)
mov %xmm5 [L0x555555568170, L0x555555568171, L0x555555568172, L0x555555568173,
           L0x555555568174, L0x555555568175, L0x555555568176, L0x555555568177,
           L0x555555568178, L0x555555568179, L0x55555556817a, L0x55555556817b,
           L0x55555556817c, L0x55555556817d, L0x55555556817e, L0x55555556817f];
(* pxor   %xmm3,%xmm1                              #! PC = 0x55555555626f *)
xor %xmm1@uint8[16] %xmm1 %xmm3;
(* movdqu 0x11e15(%rip),%xmm3        # 0x555555568090 <__gf256_mulbase+16>#! EA = L0x555555568090; Value = 0x7060504030201000; PC = 0x555555556273 *)
mov %xmm3 [L0x555555568090, L0x555555568091, L0x555555568092, L0x555555568093,
           L0x555555568094, L0x555555568095, L0x555555568096, L0x555555568097,
           L0x555555568098, L0x555555568099, L0x55555556809a, L0x55555556809b,
           L0x55555556809c, L0x55555556809d, L0x55555556809e, L0x55555556809f];
(* pand   %xmm0,%xmm5                              #! PC = 0x55555555627b *)
and %xmm5@uint8[16] %xmm5 %xmm0;
(* pand   %xmm4,%xmm3                              #! PC = 0x55555555627f *)
and %xmm3@uint8[16] %xmm3 %xmm4;
(* pxor   %xmm5,%xmm3                              #! PC = 0x555555556283 *)
xor %xmm3@uint8[16] %xmm3 %xmm5;
(* movdqu 0x11e11(%rip),%xmm5        # 0x5555555680a0 <__gf256_mulbase+32>#! EA = L0x5555555680a0; Value = 0x0e0c0a0806040200; PC = 0x555555556287 *)
mov %xmm5 [L0x5555555680a0, L0x5555555680a1, L0x5555555680a2, L0x5555555680a3,
           L0x5555555680a4, L0x5555555680a5, L0x5555555680a6, L0x5555555680a7,
           L0x5555555680a8, L0x5555555680a9, L0x5555555680aa, L0x5555555680ab,
           L0x5555555680ac, L0x5555555680ad, L0x5555555680ae, L0x5555555680af];
(* pxor   %xmm3,%xmm1                              #! PC = 0x55555555628f *)
xor %xmm1@uint8[16] %xmm1 %xmm3;
(* movdqu 0x11e25(%rip),%xmm3        # 0x5555555680c0 <__gf256_mulbase+64>#! EA = L0x5555555680c0; Value = 0x1c1814100c080400; PC = 0x555555556293 *)
mov %xmm3 [L0x5555555680c0, L0x5555555680c1, L0x5555555680c2, L0x5555555680c3,
           L0x5555555680c4, L0x5555555680c5, L0x5555555680c6, L0x5555555680c7,
           L0x5555555680c8, L0x5555555680c9, L0x5555555680ca, L0x5555555680cb,
           L0x5555555680cc, L0x5555555680cd, L0x5555555680ce, L0x5555555680cf];
(* pand   %xmm5,%xmm2                              #! PC = 0x55555555629b *)
and %xmm2@uint8[16] %xmm2 %xmm5;
(* movdqu 0x11e59(%rip),%xmm5        # 0x555555568100 <__gf256_mulbase+128>#! EA = L0x555555568100; Value = 0x7060504030201000; PC = 0x55555555629f *)
mov %xmm5 [L0x555555568100, L0x555555568101, L0x555555568102, L0x555555568103,
           L0x555555568104, L0x555555568105, L0x555555568106, L0x555555568107,
           L0x555555568108, L0x555555568109, L0x55555556810a, L0x55555556810b,
           L0x55555556810c, L0x55555556810d, L0x55555556810e, L0x55555556810f];
(* movaps %xmm1,0x10(%rdi)                         #! EA = L0x7fffffffa3c0; PC = 0x5555555562a7 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm1;
mov L0x7fffffffa3c0 m0; mov L0x7fffffffa3c1 m1; mov L0x7fffffffa3c2 m2;
mov L0x7fffffffa3c3 m3; mov L0x7fffffffa3c4 m4; mov L0x7fffffffa3c5 m5;
mov L0x7fffffffa3c6 m6; mov L0x7fffffffa3c7 m7; mov L0x7fffffffa3c8 m8;
mov L0x7fffffffa3c9 m9; mov L0x7fffffffa3ca ma; mov L0x7fffffffa3cb mb;
mov L0x7fffffffa3cc mc; mov L0x7fffffffa3cd md; mov L0x7fffffffa3ce me;
mov L0x7fffffffa3cf mf;
(* pand   %xmm8,%xmm3                              #! PC = 0x5555555562ab *)
and %xmm3@uint8[16] %xmm3 %xmm8;
(* pxor   %xmm3,%xmm2                              #! PC = 0x5555555562b0 *)
xor %xmm2@uint8[16] %xmm2 %xmm3;
(* movdqu 0x11e24(%rip),%xmm3        # 0x5555555680e0 <__gf256_mulbase+96>#! EA = L0x5555555680e0; Value = 0x3830282018100800; PC = 0x5555555562b4 *)
mov %xmm3 [L0x5555555680e0, L0x5555555680e1, L0x5555555680e2, L0x5555555680e3,
           L0x5555555680e4, L0x5555555680e5, L0x5555555680e6, L0x5555555680e7,
           L0x5555555680e8, L0x5555555680e9, L0x5555555680ea, L0x5555555680eb,
           L0x5555555680ec, L0x5555555680ed, L0x5555555680ee, L0x5555555680ef];
(* pand   %xmm9,%xmm5                              #! PC = 0x5555555562bc *)
and %xmm5@uint8[16] %xmm5 %xmm9;
(* pand   %xmm7,%xmm3                              #! PC = 0x5555555562c1 *)
and %xmm3@uint8[16] %xmm3 %xmm7;
(* pxor   %xmm5,%xmm3                              #! PC = 0x5555555562c5 *)
xor %xmm3@uint8[16] %xmm3 %xmm5;
(* movdqu 0x11e6f(%rip),%xmm5        # 0x555555568140 <__gf256_mulbase+192>#! EA = L0x555555568140; Value = 0xdb9b5b1bc0804000; PC = 0x5555555562c9 *)
mov %xmm5 [L0x555555568140, L0x555555568141, L0x555555568142, L0x555555568143,
           L0x555555568144, L0x555555568145, L0x555555568146, L0x555555568147,
           L0x555555568148, L0x555555568149, L0x55555556814a, L0x55555556814b,
           L0x55555556814c, L0x55555556814d, L0x55555556814e, L0x55555556814f];
(* pxor   %xmm3,%xmm2                              #! PC = 0x5555555562d1 *)
xor %xmm2@uint8[16] %xmm2 %xmm3;
(* movdqu 0x11e43(%rip),%xmm3        # 0x555555568120 <__gf256_mulbase+160>#! EA = L0x555555568120; Value = 0xe0c0a08060402000; PC = 0x5555555562d5 *)
mov %xmm3 [L0x555555568120, L0x555555568121, L0x555555568122, L0x555555568123,
           L0x555555568124, L0x555555568125, L0x555555568126, L0x555555568127,
           L0x555555568128, L0x555555568129, L0x55555556812a, L0x55555556812b,
           L0x55555556812c, L0x55555556812d, L0x55555556812e, L0x55555556812f];
(* pand   %xmm10,%xmm5                             #! PC = 0x5555555562dd *)
and %xmm5@uint8[16] %xmm5 %xmm10;
(* pand   %xmm6,%xmm3                              #! PC = 0x5555555562e2 *)
and %xmm3@uint8[16] %xmm3 %xmm6;
(* pxor   %xmm5,%xmm3                              #! PC = 0x5555555562e6 *)
xor %xmm3@uint8[16] %xmm3 %xmm5;
(* pxor   %xmm3,%xmm2                              #! PC = 0x5555555562ea *)
xor %xmm2@uint8[16] %xmm2 %xmm3;
(* movdqu 0x11d8a(%rip),%xmm3        # 0x555555568080 <__gf256_mulbase>#! EA = L0x555555568080; Value = 0x0706050403020100; PC = 0x5555555562ee *)
mov %xmm3 [L0x555555568080, L0x555555568081, L0x555555568082, L0x555555568083,
           L0x555555568084, L0x555555568085, L0x555555568086, L0x555555568087,
           L0x555555568088, L0x555555568089, L0x55555556808a, L0x55555556808b,
           L0x55555556808c, L0x55555556808d, L0x55555556808e, L0x55555556808f];
(* pand   %xmm4,%xmm3                              #! PC = 0x5555555562f6 *)
and %xmm3@uint8[16] %xmm3 %xmm4;
(* movdqu 0x11e5e(%rip),%xmm4        # 0x555555568160 <__gf256_mulbase+224>#! EA = L0x555555568160; Value = 0xad2db6369b1b8000; PC = 0x5555555562fa *)
mov %xmm4 [L0x555555568160, L0x555555568161, L0x555555568162, L0x555555568163,
           L0x555555568164, L0x555555568165, L0x555555568166, L0x555555568167,
           L0x555555568168, L0x555555568169, L0x55555556816a, L0x55555556816b,
           L0x55555556816c, L0x55555556816d, L0x55555556816e, L0x55555556816f];
(* pand   %xmm4,%xmm0                              #! PC = 0x555555556302 *)
and %xmm0@uint8[16] %xmm0 %xmm4;
(* pxor   %xmm3,%xmm0                              #! PC = 0x555555556306 *)
xor %xmm0@uint8[16] %xmm0 %xmm3;
(* pxor   %xmm2,%xmm0                              #! PC = 0x55555555630a *)
xor %xmm0@uint8[16] %xmm0 %xmm2;
(* movaps %xmm0,(%rdi)                             #! EA = L0x7fffffffa3b0; PC = 0x55555555630e *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm0;
mov L0x7fffffffa3b0 m0; mov L0x7fffffffa3b1 m1; mov L0x7fffffffa3b2 m2;
mov L0x7fffffffa3b3 m3; mov L0x7fffffffa3b4 m4; mov L0x7fffffffa3b5 m5;
mov L0x7fffffffa3b6 m6; mov L0x7fffffffa3b7 m7; mov L0x7fffffffa3b8 m8;
mov L0x7fffffffa3b9 m9; mov L0x7fffffffa3ba ma; mov L0x7fffffffa3bb mb;
mov L0x7fffffffa3bc mc; mov L0x7fffffffa3bd md; mov L0x7fffffffa3be me;
mov L0x7fffffffa3bf mf;
(* #! <- SP = 0x7fffffffa3a8 *)
#! 0x7fffffffa3a8 = 0x7fffffffa3a8;
(* #ret                                            #! PC = 0x555555556311 *)
#ret                                            #! 0x555555556311 = 0x555555556311;
(* mov    -0x8(%rbp),%rax                          #! EA = L0x7fffffffa3d8; Value = 0x457edaeabe71e800; PC = 0x555555556569 *)
mov rax L0x7fffffffa3d8;
(* #jne    0x555555556590 <gf256v_madd_sse+80>     #! PC = 0x555555556576 *)
#jne    0x555555556590 <gf256v_madd_sse+80>     #! 0x555555556576 = 0x555555556576;
(* movdqa -0x20(%rbp),%xmm1                        #! EA = L0x7fffffffa3c0; Value = 0xe27bcb52b0299900; PC = 0x555555556578 *)
mov %xmm1 [L0x7fffffffa3c0, L0x7fffffffa3c1, L0x7fffffffa3c2, L0x7fffffffa3c3,
           L0x7fffffffa3c4, L0x7fffffffa3c5, L0x7fffffffa3c6, L0x7fffffffa3c7,
           L0x7fffffffa3c8, L0x7fffffffa3c9, L0x7fffffffa3ca, L0x7fffffffa3cb,
           L0x7fffffffa3cc, L0x7fffffffa3cd, L0x7fffffffa3ce, L0x7fffffffa3cf];
(* movdqa -0x30(%rbp),%xmm0                        #! EA = L0x7fffffffa3b0; Value = 0xe6161ded0bfbf000; PC = 0x55555555657d *)
mov %xmm0 [L0x7fffffffa3b0, L0x7fffffffa3b1, L0x7fffffffa3b2, L0x7fffffffa3b3,
           L0x7fffffffa3b4, L0x7fffffffa3b5, L0x7fffffffa3b6, L0x7fffffffa3b7,
           L0x7fffffffa3b8, L0x7fffffffa3b9, L0x7fffffffa3ba, L0x7fffffffa3bb,
           L0x7fffffffa3bc, L0x7fffffffa3bd, L0x7fffffffa3be, L0x7fffffffa3bf];
(* mov    %ecx,%edx                                #! PC = 0x555555556582 *)
mov rdx rcx;
(* mov    %r9,%rsi                                 #! PC = 0x555555556584 *)
mov rsi r9;
(* mov    %r8,%rdi                                 #! PC = 0x555555556588 *)
mov rdi r8;
(* #jmp    0x555555556460 <linearmap_8x8_accu_sse.constprop.0>#! PC = 0x55555555658b *)
#jmp    0x555555556460 <linearmap_8x8_accu_sse.constprop.0>#! 0x55555555658b = 0x55555555658b;
(* movdqa %xmm0,%xmm3                              #! PC = 0x555555556461 *)
mov %xmm3 %xmm0;
(* mov    %edx,%r13d                               #! PC = 0x55555555646a *)
mov r13 rdx;
(* and    $0xf,%r13d                               #! PC = 0x55555555646f *)
and r13@uint64 r13 0xf@uint64;
(* mov    %rdi,%r12                                #! PC = 0x555555556473 *)
mov r12 rdi;
(* #je     0x555555556538 <linearmap_8x8_accu_sse.constprop.0+216>#! PC = 0x55555555647d *)
#je     0x555555556538 <linearmap_8x8_accu_sse.constprop.0+216>#! 0x55555555647d = 0x55555555647d;
(* mov    %edx,%edx                                #! PC = 0x555555556483 *)
mov rdx rdx;
(* mov    %r12,%rax                                #! PC = 0x555555556485 *)
mov rax r12;
(* movdqu (%rsi),%xmm2                             #! EA = L0x7fffffffa460; Value = 0xd53fd9feafd8fa01; PC = 0x555555556490 *)
mov %xmm2 [L0x7fffffffa460, L0x7fffffffa461, L0x7fffffffa462, L0x7fffffffa463,
           L0x7fffffffa464, L0x7fffffffa465, L0x7fffffffa466, L0x7fffffffa467,
           L0x7fffffffa468, L0x7fffffffa469, L0x7fffffffa46a, L0x7fffffffa46b,
           L0x7fffffffa46c, L0x7fffffffa46d, L0x7fffffffa46e, L0x7fffffffa46f];
(* movdqa %xmm3,%xmm0                              #! PC = 0x555555556494 *)
mov %xmm0 %xmm3;
(* movaps %xmm1,-0x30(%rbp)                        #! EA = L0x7fffffffa3b0; PC = 0x555555556498 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm1;
mov L0x7fffffffa3b0 m0; mov L0x7fffffffa3b1 m1; mov L0x7fffffffa3b2 m2;
mov L0x7fffffffa3b3 m3; mov L0x7fffffffa3b4 m4; mov L0x7fffffffa3b5 m5;
mov L0x7fffffffa3b6 m6; mov L0x7fffffffa3b7 m7; mov L0x7fffffffa3b8 m8;
mov L0x7fffffffa3b9 m9; mov L0x7fffffffa3ba ma; mov L0x7fffffffa3bb mb;
mov L0x7fffffffa3bc mc; mov L0x7fffffffa3bd md; mov L0x7fffffffa3be me;
mov L0x7fffffffa3bf mf;
(* movaps %xmm3,-0x20(%rbp)                        #! EA = L0x7fffffffa3c0; PC = 0x5555555564a0 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm3;
mov L0x7fffffffa3c0 m0; mov L0x7fffffffa3c1 m1; mov L0x7fffffffa3c2 m2;
mov L0x7fffffffa3c3 m3; mov L0x7fffffffa3c4 m4; mov L0x7fffffffa3c5 m5;
mov L0x7fffffffa3c6 m6; mov L0x7fffffffa3c7 m7; mov L0x7fffffffa3c8 m8;
mov L0x7fffffffa3c9 m9; mov L0x7fffffffa3ca ma; mov L0x7fffffffa3cb mb;
mov L0x7fffffffa3cc mc; mov L0x7fffffffa3cd md; mov L0x7fffffffa3ce me;
mov L0x7fffffffa3cf mf;
(* #call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! PC = 0x5555555564a8 *)
#call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! 0x5555555564a8 = 0x5555555564a8;
(* #! -> SP = 0x7fffffffa398 *)
#! 0x7fffffffa398 = 0x7fffffffa398;
(* movdqa 0xfd08(%rip),%xmm3        # 0x555555566030#! EA = L0x555555566030; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x555555556320 *)
mov %xmm3 [L0x555555566030, L0x555555566031, L0x555555566032, L0x555555566033,
           L0x555555566034, L0x555555566035, L0x555555566036, L0x555555566037,
           L0x555555566038, L0x555555566039, L0x55555556603a, L0x55555556603b,
           L0x55555556603c, L0x55555556603d, L0x55555556603e, L0x55555556603f];
(* movdqa %xmm2,%xmm4                              #! PC = 0x555555556328 *)
mov %xmm4 %xmm2;
(* psrlw  $0x4,%xmm2                               #! PC = 0x55555555632c *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm2;
join s0 p1 p0; shr s0 s0 0x4@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x4@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x4@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x4@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x4@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x4@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x4@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x4@uint16; spl tf te s7 8;
mov %xmm2 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm3,%xmm4                              #! PC = 0x555555556331 *)
and %xmm4@uint8[16] %xmm4 %xmm3;
(* pand   %xmm3,%xmm2                              #! PC = 0x555555556335 *)
and %xmm2@uint8[16] %xmm2 %xmm3;
(* pshufb %xmm4,%xmm0                              #! PC = 0x555555556339 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm4;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm0;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm0 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pshufb %xmm2,%xmm1                              #! PC = 0x55555555633e *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm2;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pxor   %xmm1,%xmm0                              #! PC = 0x555555556343 *)
xor %xmm0@uint8[16] %xmm0 %xmm1;
(* #! <- SP = 0x7fffffffa398 *)
#! 0x7fffffffa398 = 0x7fffffffa398;
(* #ret                                            #! PC = 0x555555556347 *)
#ret                                            #! 0x555555556347 = 0x555555556347;
(* movdqu -0x10(%rax),%xmm4                        #! EA = L0x7fffffffa490; Value = 0x4ba1dd02e87c7bf0; PC = 0x5555555564ad *)
mov %xmm4 [L0x7fffffffa490, L0x7fffffffa491, L0x7fffffffa492, L0x7fffffffa493,
           L0x7fffffffa494, L0x7fffffffa495, L0x7fffffffa496, L0x7fffffffa497,
           L0x7fffffffa498, L0x7fffffffa499, L0x7fffffffa49a, L0x7fffffffa49b,
           L0x7fffffffa49c, L0x7fffffffa49d, L0x7fffffffa49e, L0x7fffffffa49f];
(* movdqa -0x20(%rbp),%xmm3                        #! EA = L0x7fffffffa3c0; Value = 0xe6161ded0bfbf000; PC = 0x5555555564b2 *)
mov %xmm3 [L0x7fffffffa3c0, L0x7fffffffa3c1, L0x7fffffffa3c2, L0x7fffffffa3c3,
           L0x7fffffffa3c4, L0x7fffffffa3c5, L0x7fffffffa3c6, L0x7fffffffa3c7,
           L0x7fffffffa3c8, L0x7fffffffa3c9, L0x7fffffffa3ca, L0x7fffffffa3cb,
           L0x7fffffffa3cc, L0x7fffffffa3cd, L0x7fffffffa3ce, L0x7fffffffa3cf];
(* movdqa -0x30(%rbp),%xmm1                        #! EA = L0x7fffffffa3b0; Value = 0xe27bcb52b0299900; PC = 0x5555555564b7 *)
mov %xmm1 [L0x7fffffffa3b0, L0x7fffffffa3b1, L0x7fffffffa3b2, L0x7fffffffa3b3,
           L0x7fffffffa3b4, L0x7fffffffa3b5, L0x7fffffffa3b6, L0x7fffffffa3b7,
           L0x7fffffffa3b8, L0x7fffffffa3b9, L0x7fffffffa3ba, L0x7fffffffa3bb,
           L0x7fffffffa3bc, L0x7fffffffa3bd, L0x7fffffffa3be, L0x7fffffffa3bf];
(* pxor   %xmm4,%xmm0                              #! PC = 0x5555555564bc *)
xor %xmm0@uint8[16] %xmm0 %xmm4;
(* movups %xmm0,-0x10(%rax)                        #! EA = L0x7fffffffa490; PC = 0x5555555564c0 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm0;
mov L0x7fffffffa490 m0; mov L0x7fffffffa491 m1; mov L0x7fffffffa492 m2;
mov L0x7fffffffa493 m3; mov L0x7fffffffa494 m4; mov L0x7fffffffa495 m5;
mov L0x7fffffffa496 m6; mov L0x7fffffffa497 m7; mov L0x7fffffffa498 m8;
mov L0x7fffffffa499 m9; mov L0x7fffffffa49a ma; mov L0x7fffffffa49b mb;
mov L0x7fffffffa49c mc; mov L0x7fffffffa49d md; mov L0x7fffffffa49e me;
mov L0x7fffffffa49f mf;
(* #jne    0x555555556490 <linearmap_8x8_accu_sse.constprop.0+48>#! PC = 0x5555555564c7 *)
#jne    0x555555556490 <linearmap_8x8_accu_sse.constprop.0+48>#! 0x5555555564c7 = 0x5555555564c7;
(* movdqu (%rsi),%xmm2                             #! EA = L0x7fffffffa470; Value = 0x574be90adc0ec4c4; PC = 0x555555556490 *)
mov %xmm2 [L0x7fffffffa470, L0x7fffffffa471, L0x7fffffffa472, L0x7fffffffa473,
           L0x7fffffffa474, L0x7fffffffa475, L0x7fffffffa476, L0x7fffffffa477,
           L0x7fffffffa478, L0x7fffffffa479, L0x7fffffffa47a, L0x7fffffffa47b,
           L0x7fffffffa47c, L0x7fffffffa47d, L0x7fffffffa47e, L0x7fffffffa47f];
(* movdqa %xmm3,%xmm0                              #! PC = 0x555555556494 *)
mov %xmm0 %xmm3;
(* movaps %xmm1,-0x30(%rbp)                        #! EA = L0x7fffffffa3b0; PC = 0x555555556498 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm1;
mov L0x7fffffffa3b0 m0; mov L0x7fffffffa3b1 m1; mov L0x7fffffffa3b2 m2;
mov L0x7fffffffa3b3 m3; mov L0x7fffffffa3b4 m4; mov L0x7fffffffa3b5 m5;
mov L0x7fffffffa3b6 m6; mov L0x7fffffffa3b7 m7; mov L0x7fffffffa3b8 m8;
mov L0x7fffffffa3b9 m9; mov L0x7fffffffa3ba ma; mov L0x7fffffffa3bb mb;
mov L0x7fffffffa3bc mc; mov L0x7fffffffa3bd md; mov L0x7fffffffa3be me;
mov L0x7fffffffa3bf mf;
(* movaps %xmm3,-0x20(%rbp)                        #! EA = L0x7fffffffa3c0; PC = 0x5555555564a0 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm3;
mov L0x7fffffffa3c0 m0; mov L0x7fffffffa3c1 m1; mov L0x7fffffffa3c2 m2;
mov L0x7fffffffa3c3 m3; mov L0x7fffffffa3c4 m4; mov L0x7fffffffa3c5 m5;
mov L0x7fffffffa3c6 m6; mov L0x7fffffffa3c7 m7; mov L0x7fffffffa3c8 m8;
mov L0x7fffffffa3c9 m9; mov L0x7fffffffa3ca ma; mov L0x7fffffffa3cb mb;
mov L0x7fffffffa3cc mc; mov L0x7fffffffa3cd md; mov L0x7fffffffa3ce me;
mov L0x7fffffffa3cf mf;
(* #call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! PC = 0x5555555564a8 *)
#call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! 0x5555555564a8 = 0x5555555564a8;
(* #! -> SP = 0x7fffffffa398 *)
#! 0x7fffffffa398 = 0x7fffffffa398;
(* movdqa 0xfd08(%rip),%xmm3        # 0x555555566030#! EA = L0x555555566030; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x555555556320 *)
mov %xmm3 [L0x555555566030, L0x555555566031, L0x555555566032, L0x555555566033,
           L0x555555566034, L0x555555566035, L0x555555566036, L0x555555566037,
           L0x555555566038, L0x555555566039, L0x55555556603a, L0x55555556603b,
           L0x55555556603c, L0x55555556603d, L0x55555556603e, L0x55555556603f];
(* movdqa %xmm2,%xmm4                              #! PC = 0x555555556328 *)
mov %xmm4 %xmm2;
(* psrlw  $0x4,%xmm2                               #! PC = 0x55555555632c *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm2;
join s0 p1 p0; shr s0 s0 0x4@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x4@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x4@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x4@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x4@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x4@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x4@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x4@uint16; spl tf te s7 8;
mov %xmm2 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm3,%xmm4                              #! PC = 0x555555556331 *)
and %xmm4@uint8[16] %xmm4 %xmm3;
(* pand   %xmm3,%xmm2                              #! PC = 0x555555556335 *)
and %xmm2@uint8[16] %xmm2 %xmm3;
(* pshufb %xmm4,%xmm0                              #! PC = 0x555555556339 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm4;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm0;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm0 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pshufb %xmm2,%xmm1                              #! PC = 0x55555555633e *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm2;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pxor   %xmm1,%xmm0                              #! PC = 0x555555556343 *)
xor %xmm0@uint8[16] %xmm0 %xmm1;
(* #! <- SP = 0x7fffffffa398 *)
#! 0x7fffffffa398 = 0x7fffffffa398;
(* #ret                                            #! PC = 0x555555556347 *)
#ret                                            #! 0x555555556347 = 0x555555556347;
(* movdqu -0x10(%rax),%xmm4                        #! EA = L0x7fffffffa4a0; Value = 0xa6dee47b062a736c; PC = 0x5555555564ad *)
mov %xmm4 [L0x7fffffffa4a0, L0x7fffffffa4a1, L0x7fffffffa4a2, L0x7fffffffa4a3,
           L0x7fffffffa4a4, L0x7fffffffa4a5, L0x7fffffffa4a6, L0x7fffffffa4a7,
           L0x7fffffffa4a8, L0x7fffffffa4a9, L0x7fffffffa4aa, L0x7fffffffa4ab,
           L0x7fffffffa4ac, L0x7fffffffa4ad, L0x7fffffffa4ae, L0x7fffffffa4af];
(* movdqa -0x20(%rbp),%xmm3                        #! EA = L0x7fffffffa3c0; Value = 0xe6161ded0bfbf000; PC = 0x5555555564b2 *)
mov %xmm3 [L0x7fffffffa3c0, L0x7fffffffa3c1, L0x7fffffffa3c2, L0x7fffffffa3c3,
           L0x7fffffffa3c4, L0x7fffffffa3c5, L0x7fffffffa3c6, L0x7fffffffa3c7,
           L0x7fffffffa3c8, L0x7fffffffa3c9, L0x7fffffffa3ca, L0x7fffffffa3cb,
           L0x7fffffffa3cc, L0x7fffffffa3cd, L0x7fffffffa3ce, L0x7fffffffa3cf];
(* movdqa -0x30(%rbp),%xmm1                        #! EA = L0x7fffffffa3b0; Value = 0xe27bcb52b0299900; PC = 0x5555555564b7 *)
mov %xmm1 [L0x7fffffffa3b0, L0x7fffffffa3b1, L0x7fffffffa3b2, L0x7fffffffa3b3,
           L0x7fffffffa3b4, L0x7fffffffa3b5, L0x7fffffffa3b6, L0x7fffffffa3b7,
           L0x7fffffffa3b8, L0x7fffffffa3b9, L0x7fffffffa3ba, L0x7fffffffa3bb,
           L0x7fffffffa3bc, L0x7fffffffa3bd, L0x7fffffffa3be, L0x7fffffffa3bf];
(* pxor   %xmm4,%xmm0                              #! PC = 0x5555555564bc *)
xor %xmm0@uint8[16] %xmm0 %xmm4;
(* movups %xmm0,-0x10(%rax)                        #! EA = L0x7fffffffa4a0; PC = 0x5555555564c0 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm0;
mov L0x7fffffffa4a0 m0; mov L0x7fffffffa4a1 m1; mov L0x7fffffffa4a2 m2;
mov L0x7fffffffa4a3 m3; mov L0x7fffffffa4a4 m4; mov L0x7fffffffa4a5 m5;
mov L0x7fffffffa4a6 m6; mov L0x7fffffffa4a7 m7; mov L0x7fffffffa4a8 m8;
mov L0x7fffffffa4a9 m9; mov L0x7fffffffa4aa ma; mov L0x7fffffffa4ab mb;
mov L0x7fffffffa4ac mc; mov L0x7fffffffa4ad md; mov L0x7fffffffa4ae me;
mov L0x7fffffffa4af mf;
(* #jne    0x555555556490 <linearmap_8x8_accu_sse.constprop.0+48>#! PC = 0x5555555564c7 *)
#jne    0x555555556490 <linearmap_8x8_accu_sse.constprop.0+48>#! 0x5555555564c7 = 0x5555555564c7;
(* movdqu (%rsi),%xmm2                             #! EA = L0x7fffffffa480; Value = 0xc5b3fa115bdf4c5b; PC = 0x555555556490 *)
mov %xmm2 [L0x7fffffffa480, L0x7fffffffa481, L0x7fffffffa482, L0x7fffffffa483,
           L0x7fffffffa484, L0x7fffffffa485, L0x7fffffffa486, L0x7fffffffa487,
           L0x7fffffffa488, L0x7fffffffa489, L0x7fffffffa48a, L0x7fffffffa48b,
           L0x7fffffffa48c, L0x7fffffffa48d, L0x7fffffffa48e, L0x7fffffffa48f];
(* movdqa %xmm3,%xmm0                              #! PC = 0x555555556494 *)
mov %xmm0 %xmm3;
(* movaps %xmm1,-0x30(%rbp)                        #! EA = L0x7fffffffa3b0; PC = 0x555555556498 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm1;
mov L0x7fffffffa3b0 m0; mov L0x7fffffffa3b1 m1; mov L0x7fffffffa3b2 m2;
mov L0x7fffffffa3b3 m3; mov L0x7fffffffa3b4 m4; mov L0x7fffffffa3b5 m5;
mov L0x7fffffffa3b6 m6; mov L0x7fffffffa3b7 m7; mov L0x7fffffffa3b8 m8;
mov L0x7fffffffa3b9 m9; mov L0x7fffffffa3ba ma; mov L0x7fffffffa3bb mb;
mov L0x7fffffffa3bc mc; mov L0x7fffffffa3bd md; mov L0x7fffffffa3be me;
mov L0x7fffffffa3bf mf;
(* movaps %xmm3,-0x20(%rbp)                        #! EA = L0x7fffffffa3c0; PC = 0x5555555564a0 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm3;
mov L0x7fffffffa3c0 m0; mov L0x7fffffffa3c1 m1; mov L0x7fffffffa3c2 m2;
mov L0x7fffffffa3c3 m3; mov L0x7fffffffa3c4 m4; mov L0x7fffffffa3c5 m5;
mov L0x7fffffffa3c6 m6; mov L0x7fffffffa3c7 m7; mov L0x7fffffffa3c8 m8;
mov L0x7fffffffa3c9 m9; mov L0x7fffffffa3ca ma; mov L0x7fffffffa3cb mb;
mov L0x7fffffffa3cc mc; mov L0x7fffffffa3cd md; mov L0x7fffffffa3ce me;
mov L0x7fffffffa3cf mf;
(* #call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! PC = 0x5555555564a8 *)
#call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! 0x5555555564a8 = 0x5555555564a8;
(* #! -> SP = 0x7fffffffa398 *)
#! 0x7fffffffa398 = 0x7fffffffa398;
(* movdqa 0xfd08(%rip),%xmm3        # 0x555555566030#! EA = L0x555555566030; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x555555556320 *)
mov %xmm3 [L0x555555566030, L0x555555566031, L0x555555566032, L0x555555566033,
           L0x555555566034, L0x555555566035, L0x555555566036, L0x555555566037,
           L0x555555566038, L0x555555566039, L0x55555556603a, L0x55555556603b,
           L0x55555556603c, L0x55555556603d, L0x55555556603e, L0x55555556603f];
(* movdqa %xmm2,%xmm4                              #! PC = 0x555555556328 *)
mov %xmm4 %xmm2;
(* psrlw  $0x4,%xmm2                               #! PC = 0x55555555632c *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm2;
join s0 p1 p0; shr s0 s0 0x4@uint16; spl t1 t0 s0 8;
join s1 p3 p2; shr s1 s1 0x4@uint16; spl t3 t2 s1 8;
join s2 p5 p4; shr s2 s2 0x4@uint16; spl t5 t4 s2 8;
join s3 p7 p6; shr s3 s3 0x4@uint16; spl t7 t6 s3 8;
join s4 p9 p8; shr s4 s4 0x4@uint16; spl t9 t8 s4 8;
join s5 pb pa; shr s5 s5 0x4@uint16; spl tb ta s5 8;
join s6 pd pc; shr s6 s6 0x4@uint16; spl td tc s6 8;
join s7 pf pe; shr s7 s7 0x4@uint16; spl tf te s7 8;
mov %xmm2 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm3,%xmm4                              #! PC = 0x555555556331 *)
and %xmm4@uint8[16] %xmm4 %xmm3;
(* pand   %xmm3,%xmm2                              #! PC = 0x555555556335 *)
and %xmm2@uint8[16] %xmm2 %xmm3;
(* pshufb %xmm4,%xmm0                              #! PC = 0x555555556339 *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm4;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm0;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm0 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pshufb %xmm2,%xmm1                              #! PC = 0x55555555633e *)
mov [p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, pa, pb, pc, pd, pe, pf] %xmm2;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
inline vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,pa,pb,pc,pd,pe,pf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pxor   %xmm1,%xmm0                              #! PC = 0x555555556343 *)
xor %xmm0@uint8[16] %xmm0 %xmm1;
(* #! <- SP = 0x7fffffffa398 *)
#! 0x7fffffffa398 = 0x7fffffffa398;
(* #ret                                            #! PC = 0x555555556347 *)
#ret                                            #! 0x555555556347 = 0x555555556347;
(* movdqu -0x10(%rax),%xmm4                        #! EA = L0x7fffffffa4b0; Value = 0xdf027ce22ccb6945; PC = 0x5555555564ad *)
mov %xmm4 [L0x7fffffffa4b0, L0x7fffffffa4b1, L0x7fffffffa4b2, L0x7fffffffa4b3,
           L0x7fffffffa4b4, L0x7fffffffa4b5, L0x7fffffffa4b6, L0x7fffffffa4b7,
           L0x7fffffffa4b8, L0x7fffffffa4b9, L0x7fffffffa4ba, L0x7fffffffa4bb,
           L0x7fffffffa4bc, L0x7fffffffa4bd, L0x7fffffffa4be, L0x7fffffffa4bf];
(* movdqa -0x20(%rbp),%xmm3                        #! EA = L0x7fffffffa3c0; Value = 0xe6161ded0bfbf000; PC = 0x5555555564b2 *)
mov %xmm3 [L0x7fffffffa3c0, L0x7fffffffa3c1, L0x7fffffffa3c2, L0x7fffffffa3c3,
           L0x7fffffffa3c4, L0x7fffffffa3c5, L0x7fffffffa3c6, L0x7fffffffa3c7,
           L0x7fffffffa3c8, L0x7fffffffa3c9, L0x7fffffffa3ca, L0x7fffffffa3cb,
           L0x7fffffffa3cc, L0x7fffffffa3cd, L0x7fffffffa3ce, L0x7fffffffa3cf];
(* movdqa -0x30(%rbp),%xmm1                        #! EA = L0x7fffffffa3b0; Value = 0xe27bcb52b0299900; PC = 0x5555555564b7 *)
mov %xmm1 [L0x7fffffffa3b0, L0x7fffffffa3b1, L0x7fffffffa3b2, L0x7fffffffa3b3,
           L0x7fffffffa3b4, L0x7fffffffa3b5, L0x7fffffffa3b6, L0x7fffffffa3b7,
           L0x7fffffffa3b8, L0x7fffffffa3b9, L0x7fffffffa3ba, L0x7fffffffa3bb,
           L0x7fffffffa3bc, L0x7fffffffa3bd, L0x7fffffffa3be, L0x7fffffffa3bf];
(* pxor   %xmm4,%xmm0                              #! PC = 0x5555555564bc *)
xor %xmm0@uint8[16] %xmm0 %xmm4;
(* movups %xmm0,-0x10(%rax)                        #! EA = L0x7fffffffa4b0; PC = 0x5555555564c0 *)
mov [m0, m1, m2, m3, m4, m5, m6, m7, m8, m9, ma, mb, mc, md, me, mf] %xmm0;
mov L0x7fffffffa4b0 m0; mov L0x7fffffffa4b1 m1; mov L0x7fffffffa4b2 m2;
mov L0x7fffffffa4b3 m3; mov L0x7fffffffa4b4 m4; mov L0x7fffffffa4b5 m5;
mov L0x7fffffffa4b6 m6; mov L0x7fffffffa4b7 m7; mov L0x7fffffffa4b8 m8;
mov L0x7fffffffa4b9 m9; mov L0x7fffffffa4ba ma; mov L0x7fffffffa4bb mb;
mov L0x7fffffffa4bc mc; mov L0x7fffffffa4bd md; mov L0x7fffffffa4be me;
mov L0x7fffffffa4bf mf;
(* #jne    0x555555556490 <linearmap_8x8_accu_sse.constprop.0+48>#! PC = 0x5555555564c7 *)
#jne    0x555555556490 <linearmap_8x8_accu_sse.constprop.0+48>#! 0x5555555564c7 = 0x5555555564c7;
(* #jne    0x5555555564e0 <linearmap_8x8_accu_sse.constprop.0+128>#! PC = 0x5555555564cf *)
#jne    0x5555555564e0 <linearmap_8x8_accu_sse.constprop.0+128>#! 0x5555555564cf = 0x5555555564cf;
(* #! <- SP = 0x7fffffffa3e8 *)
#! 0x7fffffffa3e8 = 0x7fffffffa3e8;
(* #ret                                            #! PC = 0x5555555564da *)
#ret                                            #! 0x5555555564da = 0x5555555564da;

mov ACC00 L0x7fffffffa490;mov ACC01 L0x7fffffffa491;mov ACC02 L0x7fffffffa492;
mov ACC03 L0x7fffffffa493;mov ACC04 L0x7fffffffa494;mov ACC05 L0x7fffffffa495;
mov ACC06 L0x7fffffffa496;mov ACC07 L0x7fffffffa497;mov ACC08 L0x7fffffffa498;
mov ACC09 L0x7fffffffa499;mov ACC0a L0x7fffffffa49a;mov ACC0b L0x7fffffffa49b;
mov ACC0c L0x7fffffffa49c;mov ACC0d L0x7fffffffa49d;mov ACC0e L0x7fffffffa49e;
mov ACC0f L0x7fffffffa49f;mov ACC10 L0x7fffffffa4a0;mov ACC11 L0x7fffffffa4a1;
mov ACC12 L0x7fffffffa4a2;mov ACC13 L0x7fffffffa4a3;mov ACC14 L0x7fffffffa4a4;
mov ACC15 L0x7fffffffa4a5;mov ACC16 L0x7fffffffa4a6;mov ACC17 L0x7fffffffa4a7;
mov ACC18 L0x7fffffffa4a8;mov ACC19 L0x7fffffffa4a9;mov ACC1a L0x7fffffffa4aa;
mov ACC1b L0x7fffffffa4ab;mov ACC1c L0x7fffffffa4ac;mov ACC1d L0x7fffffffa4ad;
mov ACC1e L0x7fffffffa4ae;mov ACC1f L0x7fffffffa4af;mov ACC20 L0x7fffffffa4b0;
mov ACC21 L0x7fffffffa4b1;mov ACC22 L0x7fffffffa4b2;mov ACC23 L0x7fffffffa4b3;
mov ACC24 L0x7fffffffa4b4;mov ACC25 L0x7fffffffa4b5;mov ACC26 L0x7fffffffa4b6;
mov ACC27 L0x7fffffffa4b7;mov ACC28 L0x7fffffffa4b8;mov ACC29 L0x7fffffffa4b9;
mov ACC2a L0x7fffffffa4ba;mov ACC2b L0x7fffffffa4bb;mov ACC2c L0x7fffffffa4bc;
mov ACC2d L0x7fffffffa4bd;mov ACC2e L0x7fffffffa4be;mov ACC2f L0x7fffffffa4bf;

{
  true
  &&
  true
}

proc main (
uint8 acc00, uint8 acc01, uint8 acc02, uint8 acc03,
uint8 acc04, uint8 acc05, uint8 acc06, uint8 acc07,
uint8 acc08, uint8 acc09, uint8 acc0a, uint8 acc0b,
uint8 acc0c, uint8 acc0d, uint8 acc0e, uint8 acc0f,
uint8 acc10, uint8 acc11, uint8 acc12, uint8 acc13,
uint8 acc14, uint8 acc15, uint8 acc16, uint8 acc17,
uint8 acc18, uint8 acc19, uint8 acc1a, uint8 acc1b,
uint8 acc1c, uint8 acc1d, uint8 acc1e, uint8 acc1f,
uint8 acc20, uint8 acc21, uint8 acc22, uint8 acc23,
uint8 acc24, uint8 acc25, uint8 acc26, uint8 acc27,
uint8 acc28, uint8 acc29, uint8 acc2a, uint8 acc2b,
uint8 acc2c, uint8 acc2d, uint8 acc2e, uint8 acc2f,
uint8 a00, uint8 a01, uint8 a02, uint8 a03,
uint8 a04, uint8 a05, uint8 a06, uint8 a07,
uint8 a08, uint8 a09, uint8 a0a, uint8 a0b,
uint8 a0c, uint8 a0d, uint8 a0e, uint8 a0f,
uint8 a10, uint8 a11, uint8 a12, uint8 a13,
uint8 a14, uint8 a15, uint8 a16, uint8 a17,
uint8 a18, uint8 a19, uint8 a1a, uint8 a1b,
uint8 a1c, uint8 a1d, uint8 a1e, uint8 a1f,
uint8 a20, uint8 a21, uint8 a22, uint8 a23,
uint8 a24, uint8 a25, uint8 a26, uint8 a27,
uint8 a28, uint8 a29, uint8 a2a, uint8 a2b,
uint8 a2c, uint8 a2d, uint8 a2e, uint8 a2f,
uint8 b;
uint8 ACC00,uint8 ACC01,uint8 ACC02,uint8 ACC03,uint8 ACC04,uint8 ACC05,
uint8 ACC06,uint8 ACC07,uint8 ACC08,uint8 ACC09,uint8 ACC0a,uint8 ACC0b,
uint8 ACC0c,uint8 ACC0d,uint8 ACC0e,uint8 ACC0f,uint8 ACC10,uint8 ACC11,
uint8 ACC12,uint8 ACC13,uint8 ACC14,uint8 ACC15,uint8 ACC16,uint8 ACC17,
uint8 ACC18,uint8 ACC19,uint8 ACC1a,uint8 ACC1b,uint8 ACC1c,uint8 ACC1d,
uint8 ACC1e,uint8 ACC1f,uint8 ACC20,uint8 ACC21,uint8 ACC22,uint8 ACC23,
uint8 ACC24,uint8 ACC25,uint8 ACC26,uint8 ACC27,uint8 ACC28,uint8 ACC29,
uint8 ACC2a,uint8 ACC2b,uint8 ACC2c,uint8 ACC2d,uint8 ACC2e,uint8 ACC2f) =

inline gf256_madd_0x30 (
acc00,  acc01,  acc02,  acc03, acc04,  acc05,  acc06,  acc07,
acc08,  acc09,  acc0a,  acc0b, acc0c,  acc0d,  acc0e,  acc0f,
acc10,  acc11,  acc12,  acc13, acc14,  acc15,  acc16,  acc17,
acc18,  acc19,  acc1a,  acc1b, acc1c,  acc1d,  acc1e,  acc1f,
acc20,  acc21,  acc22,  acc23, acc24,  acc25,  acc26,  acc27,
acc28,  acc29,  acc2a,  acc2b, acc2c,  acc2d,  acc2e,  acc2f,
a00,  a01,  a02,  a03, a04,  a05,  a06,  a07,
a08,  a09,  a0a,  a0b, a0c,  a0d,  a0e,  a0f,
a10,  a11,  a12,  a13, a14,  a15,  a16,  a17,
a18,  a19,  a1a,  a1b, a1c,  a1d,  a1e,  a1f,
a20,  a21,  a22,  a23, a24,  a25,  a26,  a27,
a28,  a29,  a2a,  a2b, a2c,  a2d,  a2e,  a2f,
b,
ACC00, ACC01, ACC02, ACC03, ACC04, ACC05, ACC06, ACC07,
ACC08, ACC09, ACC0a, ACC0b, ACC0c, ACC0d, ACC0e, ACC0f,
ACC10, ACC11, ACC12, ACC13, ACC14, ACC15, ACC16, ACC17,
ACC18, ACC19, ACC1a, ACC1b, ACC1c, ACC1d, ACC1e, ACC1f,
ACC20, ACC21, ACC22, ACC23, ACC24, ACC25, ACC26, ACC27,
ACC28, ACC29, ACC2a, ACC2b, ACC2c, ACC2d, ACC2e, ACC2f);

{ true && true }