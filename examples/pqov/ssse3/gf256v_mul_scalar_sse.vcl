(* popper: cv_cec.exe -v -jobs 24 -ov r00,r01#r02,r03#r04,r05#r06,r07#r08,r09#r0a,r0b#r0c,r0d#r0e,r0f#r10,r11#r12,r13#r14,r15#r16,r17#r18,r19#r1a,r1b#r1c,r1d#r1e,r1f#r20,r21#r22,r23#r24,r25#r26,r27#r28,r29#r2a,r2b#r2c,r2d#r2e,r2f _gf256v_mul_scalar_u64.cl gf256v_mul_scalar_sse.vcl
Parsing CryptoLine file:                [OK]            0.192149 seconds
Checking well-formedness:               [OK]            0.085310 seconds
Parsing CryptoLine file:                [OK]            0.012695 seconds
Checking well-formedness:               [OK]            0.005155 seconds
Equivalence of output group #2:         [OK]            74.261471 seconds
Equivalence of output group #3:         [OK]            75.195690 seconds
Equivalence of output group #4:         [OK]            75.123365 seconds
Equivalence of output group #1:         [OK]            79.937177 seconds
Equivalence of output group #10:        [OK]            79.066648 seconds
Equivalence of output group #0:         [OK]            80.366220 seconds
Equivalence of output group #5:         [OK]            79.861206 seconds
Equivalence of output group #9:         [OK]            79.528083 seconds
Equivalence of output group #12:        [OK]            79.362934 seconds
Equivalence of output group #6:         [OK]            80.115955 seconds
Equivalence of output group #15:        [OK]            79.210896 seconds
Equivalence of output group #7:         [OK]            80.202656 seconds
Equivalence of output group #11:        [OK]            79.923776 seconds
Equivalence of output group #8:         [OK]            80.289058 seconds
Equivalence of output group #14:        [OK]            79.575277 seconds
Equivalence of output group #19:        [OK]            79.354892 seconds
Equivalence of output group #13:        [OK]            80.351108 seconds
Equivalence of output group #17:        [OK]            79.972935 seconds
Equivalence of output group #16:        [OK]            80.218341 seconds
Equivalence of output group #18:        [OK]            80.133902 seconds
Equivalence of output group #21:        [OK]            79.918490 seconds
Equivalence of output group #20:        [OK]            80.315615 seconds
Equivalence of output group #23:        [OK]            79.961519 seconds
Equivalence of output group #22:        [OK]            80.212063 seconds
Final result:                           [OK]            82.978835 seconds

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
call sel128 (src128, idx0, dst0); call sel128 (src128, idx1, dst1);
call sel128 (src128, idx2, dst2); call sel128 (src128, idx3, dst3);
call sel128 (src128, idx4, dst4); call sel128 (src128, idx5, dst5);
call sel128 (src128, idx6, dst6); call sel128 (src128, idx7, dst7);
call sel128 (src128, idx8, dst8); call sel128 (src128, idx9, dst9);
call sel128 (src128, idxa, dsta); call sel128 (src128, idxb, dstb);
call sel128 (src128, idxc, dstc); call sel128 (src128, idxd, dstd);
call sel128 (src128, idxe, dste); call sel128 (src128, idxf, dstf);
{ true && true }

proc main (uint8 a00, uint8 a01, uint8 a02, uint8 a03,
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
           uint8 b
) =
{
  true
  &&
  true
}

(**************** initialization ****************)

mov L0x7fffffffa440 a00;mov L0x7fffffffa441 a01;mov L0x7fffffffa442 a02;
mov L0x7fffffffa443 a03;mov L0x7fffffffa444 a04;mov L0x7fffffffa445 a05;
mov L0x7fffffffa446 a06;mov L0x7fffffffa447 a07;mov L0x7fffffffa448 a08;
mov L0x7fffffffa449 a09;mov L0x7fffffffa44a a0a;mov L0x7fffffffa44b a0b;
mov L0x7fffffffa44c a0c;mov L0x7fffffffa44d a0d;mov L0x7fffffffa44e a0e;
mov L0x7fffffffa44f a0f;mov L0x7fffffffa450 a10;mov L0x7fffffffa451 a11;
mov L0x7fffffffa452 a12;mov L0x7fffffffa453 a13;mov L0x7fffffffa454 a14;
mov L0x7fffffffa455 a15;mov L0x7fffffffa456 a16;mov L0x7fffffffa457 a17;
mov L0x7fffffffa458 a18;mov L0x7fffffffa459 a19;mov L0x7fffffffa45a a1a;
mov L0x7fffffffa45b a1b;mov L0x7fffffffa45c a1c;mov L0x7fffffffa45d a1d;
mov L0x7fffffffa45e a1e;mov L0x7fffffffa45f a1f;mov L0x7fffffffa460 a20;
mov L0x7fffffffa461 a21;mov L0x7fffffffa462 a22;mov L0x7fffffffa463 a23;
mov L0x7fffffffa464 a24;mov L0x7fffffffa465 a25;mov L0x7fffffffa466 a26;
mov L0x7fffffffa467 a27;mov L0x7fffffffa468 a28;mov L0x7fffffffa469 a29;
mov L0x7fffffffa46a a2a;mov L0x7fffffffa46b a2b;mov L0x7fffffffa46c a2c;
mov L0x7fffffffa46d a2d;mov L0x7fffffffa46e a2e;mov L0x7fffffffa46f a2f;
mov rsi b;

nondet rax@uint64; nondet rdi@uint64; nondet rdx@uint64;

(**************** constants ****************)

mov L0x555555566020 0x01@uint8;mov L0x555555566021 0x01@uint8;
mov L0x555555566022 0x01@uint8;mov L0x555555566023 0x01@uint8;
mov L0x555555566024 0x01@uint8;mov L0x555555566025 0x01@uint8;
mov L0x555555566026 0x01@uint8;mov L0x555555566027 0x01@uint8;
mov L0x555555566028 0x01@uint8;mov L0x555555566029 0x01@uint8;
mov L0x55555556602a 0x01@uint8;mov L0x55555556602b 0x01@uint8;
mov L0x55555556602c 0x01@uint8;mov L0x55555556602d 0x01@uint8;
mov L0x55555556602e 0x01@uint8;mov L0x55555556602f 0x01@uint8;

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

(* #! -> SP = 0x7fffffffa3c8 *)
#! 0x7fffffffa3c8 = 0x7fffffffa3c8;
(* mov    %rdi,%r8                                 #! PC = 0x555555556411 *)
mov r8 rdi;
(* movzbl %sil,%esi                                #! PC = 0x555555556414 *)
mov rsi rsi;
(* mov    %rax,-0x8(%rbp)                          #! EA = L0x7fffffffa3b8; PC = 0x555555556428 *)
mov L0x7fffffffa3b8 rax;
(* xor    %eax,%eax                                #! PC = 0x55555555642c *)
mov rax 0@uint64;
(* #call   0x555555556160 <tbl_gf256_multab>       #! PC = 0x555555556432 *)
#call   0x555555556160 <tbl_gf256_multab>       #! 0x555555556432 = 0x555555556432;
(* #! -> SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
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
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm0;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
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
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* movdqa %xmm1,%xmm2                              #! PC = 0x555555556189 *)
mov %xmm2 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x55555555618d *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm4                              #! PC = 0x555555556192 *)
and %xmm4@uint8[16] %xmm4 %xmm5;
(* movdqa %xmm1,%xmm8                              #! PC = 0x555555556196 *)
mov %xmm8 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x55555555619b *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm2                              #! PC = 0x5555555561a0 *)
and %xmm2@uint8[16] %xmm2 %xmm5;
(* movdqa %xmm1,%xmm7                              #! PC = 0x5555555561a4 *)
mov %xmm7 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x5555555561a8 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm8                              #! PC = 0x5555555561ad *)
and %xmm8@uint8[16] %xmm8 %xmm5;
(* movdqa %xmm1,%xmm9                              #! PC = 0x5555555561b2 *)
mov %xmm9 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x5555555561b7 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
mov %xmm1 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm5,%xmm7                              #! PC = 0x5555555561bc *)
and %xmm7@uint8[16] %xmm7 %xmm5;
(* movdqa %xmm1,%xmm6                              #! PC = 0x5555555561c0 *)
mov %xmm6 %xmm1;
(* psrlw  $0x1,%xmm1                               #! PC = 0x5555555561c4 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
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
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm0;
join s0 r1 r0; shr s0 s0 0x1@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x1@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x1@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x1@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x1@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x1@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x1@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x1@uint16; spl tf te s7 8;
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
(* movaps %xmm1,0x10(%rdi)                         #! EA = L0x7fffffffa3a0; PC = 0x5555555562a7 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
mov L0x7fffffffa3a0 r0; mov L0x7fffffffa3a1 r1; mov L0x7fffffffa3a2 r2;
mov L0x7fffffffa3a3 r3; mov L0x7fffffffa3a4 r4; mov L0x7fffffffa3a5 r5;
mov L0x7fffffffa3a6 r6; mov L0x7fffffffa3a7 r7; mov L0x7fffffffa3a8 r8;
mov L0x7fffffffa3a9 r9; mov L0x7fffffffa3aa ra; mov L0x7fffffffa3ab rb;
mov L0x7fffffffa3ac rc; mov L0x7fffffffa3ad rd; mov L0x7fffffffa3ae re;
mov L0x7fffffffa3af rf;
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
(* movaps %xmm0,(%rdi)                             #! EA = L0x7fffffffa390; PC = 0x55555555630e *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm0;
mov L0x7fffffffa390 r0; mov L0x7fffffffa391 r1; mov L0x7fffffffa392 r2;
mov L0x7fffffffa393 r3; mov L0x7fffffffa394 r4; mov L0x7fffffffa395 r5;
mov L0x7fffffffa396 r6; mov L0x7fffffffa397 r7; mov L0x7fffffffa398 r8;
mov L0x7fffffffa399 r9; mov L0x7fffffffa39a ra; mov L0x7fffffffa39b rb;
mov L0x7fffffffa39c rc; mov L0x7fffffffa39d rd; mov L0x7fffffffa39e re;
mov L0x7fffffffa39f rf;
(* #! <- SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* #ret                                            #! PC = 0x555555556311 *)
#ret                                            #! 0x555555556311 = 0x555555556311;
(* mov    -0x8(%rbp),%rax                          #! EA = L0x7fffffffa3b8; Value = 0xec6a3fcb467a1100; PC = 0x555555556437 *)
mov rax L0x7fffffffa3b8;
(* #jne    0x55555555645b <gf256v_mul_scalar_sse+75>#! PC = 0x555555556444 *)
#jne    0x55555555645b <gf256v_mul_scalar_sse+75>#! 0x555555556444 = 0x555555556444;
(* movdqa -0x20(%rbp),%xmm1                        #! EA = L0x7fffffffa3a0; Value = 0xb0e51a4fffaa5500; PC = 0x555555556446 *)
mov %xmm1 [L0x7fffffffa3a0, L0x7fffffffa3a1, L0x7fffffffa3a2, L0x7fffffffa3a3,
           L0x7fffffffa3a4, L0x7fffffffa3a5, L0x7fffffffa3a6, L0x7fffffffa3a7,
           L0x7fffffffa3a8, L0x7fffffffa3a9, L0x7fffffffa3aa, L0x7fffffffa3ab,
           L0x7fffffffa3ac, L0x7fffffffa3ad, L0x7fffffffa3ae, L0x7fffffffa3af];
(* movdqa -0x30(%rbp),%xmm0                        #! EA = L0x7fffffffa390; Value = 0x0bb164ded56fba00; PC = 0x55555555644b *)
mov %xmm0 [L0x7fffffffa390, L0x7fffffffa391, L0x7fffffffa392, L0x7fffffffa393,
           L0x7fffffffa394, L0x7fffffffa395, L0x7fffffffa396, L0x7fffffffa397,
           L0x7fffffffa398, L0x7fffffffa399, L0x7fffffffa39a, L0x7fffffffa39b,
           L0x7fffffffa39c, L0x7fffffffa39d, L0x7fffffffa39e, L0x7fffffffa39f];
(* mov    %edx,%esi                                #! PC = 0x555555556450 *)
mov rsi rdx;
(* mov    %r8,%rdi                                 #! PC = 0x555555556452 *)
mov rdi r8;
(* #jmp    0x555555556350 <linearmap_8x8_sse.constprop.0>#! PC = 0x555555556456 *)
#jmp    0x555555556350 <linearmap_8x8_sse.constprop.0>#! 0x555555556456 = 0x555555556456;
(* movdqa %xmm0,%xmm3                              #! PC = 0x555555556351 *)
mov %xmm3 %xmm0;
(* mov    %esi,%r13d                               #! PC = 0x55555555635a *)
mov r13 rsi;
(* and    $0xf,%r13d                               #! PC = 0x55555555635f *)
and r13@uint64 r13 0xf@uint64;
(* #je     0x555555556400 <linearmap_8x8_sse.constprop.0+176>#! PC = 0x55555555636a *)
#je     0x555555556400 <linearmap_8x8_sse.constprop.0+176>#! 0x55555555636a = 0x55555555636a;
(* mov    %esi,%esi                                #! PC = 0x555555556370 *)
mov rsi rsi;
(* movdqu (%rdi),%xmm2                             #! EA = L0x7fffffffa440; Value = 0x28d93813ba66e276; PC = 0x555555556380 *)
mov %xmm2 [L0x7fffffffa440, L0x7fffffffa441, L0x7fffffffa442, L0x7fffffffa443,
           L0x7fffffffa444, L0x7fffffffa445, L0x7fffffffa446, L0x7fffffffa447,
           L0x7fffffffa448, L0x7fffffffa449, L0x7fffffffa44a, L0x7fffffffa44b,
           L0x7fffffffa44c, L0x7fffffffa44d, L0x7fffffffa44e, L0x7fffffffa44f];
(* movdqa %xmm3,%xmm0                              #! PC = 0x555555556384 *)
mov %xmm0 %xmm3;
(* movaps %xmm1,-0x30(%rbp)                        #! EA = L0x7fffffffa390; PC = 0x555555556388 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
mov L0x7fffffffa390 r0; mov L0x7fffffffa391 r1; mov L0x7fffffffa392 r2;
mov L0x7fffffffa393 r3; mov L0x7fffffffa394 r4; mov L0x7fffffffa395 r5;
mov L0x7fffffffa396 r6; mov L0x7fffffffa397 r7; mov L0x7fffffffa398 r8;
mov L0x7fffffffa399 r9; mov L0x7fffffffa39a ra; mov L0x7fffffffa39b rb;
mov L0x7fffffffa39c rc; mov L0x7fffffffa39d rd; mov L0x7fffffffa39e re;
mov L0x7fffffffa39f rf;
(* movaps %xmm3,-0x20(%rbp)                        #! EA = L0x7fffffffa3a0; PC = 0x555555556390 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm3;
mov L0x7fffffffa3a0 r0; mov L0x7fffffffa3a1 r1; mov L0x7fffffffa3a2 r2;
mov L0x7fffffffa3a3 r3; mov L0x7fffffffa3a4 r4; mov L0x7fffffffa3a5 r5;
mov L0x7fffffffa3a6 r6; mov L0x7fffffffa3a7 r7; mov L0x7fffffffa3a8 r8;
mov L0x7fffffffa3a9 r9; mov L0x7fffffffa3aa ra; mov L0x7fffffffa3ab rb;
mov L0x7fffffffa3ac rc; mov L0x7fffffffa3ad rd; mov L0x7fffffffa3ae re;
mov L0x7fffffffa3af rf;
(* #call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! PC = 0x555555556394 *)
#call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! 0x555555556394 = 0x555555556394;
(* #! -> SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* movdqa 0xfd08(%rip),%xmm3        # 0x555555566030#! EA = L0x555555566030; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x555555556320 *)
mov %xmm3 [L0x555555566030, L0x555555566031, L0x555555566032, L0x555555566033,
           L0x555555566034, L0x555555566035, L0x555555566036, L0x555555566037,
           L0x555555566038, L0x555555566039, L0x55555556603a, L0x55555556603b,
           L0x55555556603c, L0x55555556603d, L0x55555556603e, L0x55555556603f];
(* movdqa %xmm2,%xmm4                              #! PC = 0x555555556328 *)
mov %xmm4 %xmm2;
(* psrlw  $0x4,%xmm2                               #! PC = 0x55555555632c *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm2;
join s0 r1 r0; shr s0 s0 0x4@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x4@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x4@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x4@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x4@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x4@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x4@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x4@uint16; spl tf te s7 8;
mov %xmm2 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm3,%xmm4                              #! PC = 0x555555556331 *)
and %xmm4@uint8[16] %xmm4 %xmm3;
(* pand   %xmm3,%xmm2                              #! PC = 0x555555556335 *)
and %xmm2@uint8[16] %xmm2 %xmm3;
(* pshufb %xmm4,%xmm0                              #! PC = 0x555555556339 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm4;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm0;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm0 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pshufb %xmm2,%xmm1                              #! PC = 0x55555555633e *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm2;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pxor   %xmm1,%xmm0                              #! PC = 0x555555556343 *)
xor %xmm0@uint8[16] %xmm0 %xmm1;
(* #! <- SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* #ret                                            #! PC = 0x555555556347 *)
#ret                                            #! 0x555555556347 = 0x555555556347;
(* movdqa -0x20(%rbp),%xmm3                        #! EA = L0x7fffffffa3a0; Value = 0x0bb164ded56fba00; PC = 0x555555556399 *)
mov %xmm3 [L0x7fffffffa3a0, L0x7fffffffa3a1, L0x7fffffffa3a2, L0x7fffffffa3a3,
           L0x7fffffffa3a4, L0x7fffffffa3a5, L0x7fffffffa3a6, L0x7fffffffa3a7,
           L0x7fffffffa3a8, L0x7fffffffa3a9, L0x7fffffffa3aa, L0x7fffffffa3ab,
           L0x7fffffffa3ac, L0x7fffffffa3ad, L0x7fffffffa3ae, L0x7fffffffa3af];
(* movdqa -0x30(%rbp),%xmm1                        #! EA = L0x7fffffffa390; Value = 0xb0e51a4fffaa5500; PC = 0x55555555639e *)
mov %xmm1 [L0x7fffffffa390, L0x7fffffffa391, L0x7fffffffa392, L0x7fffffffa393,
           L0x7fffffffa394, L0x7fffffffa395, L0x7fffffffa396, L0x7fffffffa397,
           L0x7fffffffa398, L0x7fffffffa399, L0x7fffffffa39a, L0x7fffffffa39b,
           L0x7fffffffa39c, L0x7fffffffa39d, L0x7fffffffa39e, L0x7fffffffa39f];
(* movups %xmm0,-0x10(%rdi)                        #! EA = L0x7fffffffa440; PC = 0x5555555563a3 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm0;
mov L0x7fffffffa440 r0; mov L0x7fffffffa441 r1; mov L0x7fffffffa442 r2;
mov L0x7fffffffa443 r3; mov L0x7fffffffa444 r4; mov L0x7fffffffa445 r5;
mov L0x7fffffffa446 r6; mov L0x7fffffffa447 r7; mov L0x7fffffffa448 r8;
mov L0x7fffffffa449 r9; mov L0x7fffffffa44a ra; mov L0x7fffffffa44b rb;
mov L0x7fffffffa44c rc; mov L0x7fffffffa44d rd; mov L0x7fffffffa44e re;
mov L0x7fffffffa44f rf;
(* #jne    0x555555556380 <linearmap_8x8_sse.constprop.0+48>#! PC = 0x5555555563aa *)
#jne    0x555555556380 <linearmap_8x8_sse.constprop.0+48>#! 0x5555555563aa = 0x5555555563aa;
(* movdqu (%rdi),%xmm2                             #! EA = L0x7fffffffa450; Value = 0x69cb9a859269e9c5; PC = 0x555555556380 *)
mov %xmm2 [L0x7fffffffa450, L0x7fffffffa451, L0x7fffffffa452, L0x7fffffffa453,
           L0x7fffffffa454, L0x7fffffffa455, L0x7fffffffa456, L0x7fffffffa457,
           L0x7fffffffa458, L0x7fffffffa459, L0x7fffffffa45a, L0x7fffffffa45b,
           L0x7fffffffa45c, L0x7fffffffa45d, L0x7fffffffa45e, L0x7fffffffa45f];
(* movdqa %xmm3,%xmm0                              #! PC = 0x555555556384 *)
mov %xmm0 %xmm3;
(* movaps %xmm1,-0x30(%rbp)                        #! EA = L0x7fffffffa390; PC = 0x555555556388 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
mov L0x7fffffffa390 r0; mov L0x7fffffffa391 r1; mov L0x7fffffffa392 r2;
mov L0x7fffffffa393 r3; mov L0x7fffffffa394 r4; mov L0x7fffffffa395 r5;
mov L0x7fffffffa396 r6; mov L0x7fffffffa397 r7; mov L0x7fffffffa398 r8;
mov L0x7fffffffa399 r9; mov L0x7fffffffa39a ra; mov L0x7fffffffa39b rb;
mov L0x7fffffffa39c rc; mov L0x7fffffffa39d rd; mov L0x7fffffffa39e re;
mov L0x7fffffffa39f rf;
(* movaps %xmm3,-0x20(%rbp)                        #! EA = L0x7fffffffa3a0; PC = 0x555555556390 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm3;
mov L0x7fffffffa3a0 r0; mov L0x7fffffffa3a1 r1; mov L0x7fffffffa3a2 r2;
mov L0x7fffffffa3a3 r3; mov L0x7fffffffa3a4 r4; mov L0x7fffffffa3a5 r5;
mov L0x7fffffffa3a6 r6; mov L0x7fffffffa3a7 r7; mov L0x7fffffffa3a8 r8;
mov L0x7fffffffa3a9 r9; mov L0x7fffffffa3aa ra; mov L0x7fffffffa3ab rb;
mov L0x7fffffffa3ac rc; mov L0x7fffffffa3ad rd; mov L0x7fffffffa3ae re;
mov L0x7fffffffa3af rf;
(* #call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! PC = 0x555555556394 *)
#call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! 0x555555556394 = 0x555555556394;
(* #! -> SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* movdqa 0xfd08(%rip),%xmm3        # 0x555555566030#! EA = L0x555555566030; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x555555556320 *)
mov %xmm3 [L0x555555566030, L0x555555566031, L0x555555566032, L0x555555566033,
           L0x555555566034, L0x555555566035, L0x555555566036, L0x555555566037,
           L0x555555566038, L0x555555566039, L0x55555556603a, L0x55555556603b,
           L0x55555556603c, L0x55555556603d, L0x55555556603e, L0x55555556603f];
(* movdqa %xmm2,%xmm4                              #! PC = 0x555555556328 *)
mov %xmm4 %xmm2;
(* psrlw  $0x4,%xmm2                               #! PC = 0x55555555632c *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm2;
join s0 r1 r0; shr s0 s0 0x4@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x4@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x4@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x4@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x4@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x4@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x4@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x4@uint16; spl tf te s7 8;
mov %xmm2 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm3,%xmm4                              #! PC = 0x555555556331 *)
and %xmm4@uint8[16] %xmm4 %xmm3;
(* pand   %xmm3,%xmm2                              #! PC = 0x555555556335 *)
and %xmm2@uint8[16] %xmm2 %xmm3;
(* pshufb %xmm4,%xmm0                              #! PC = 0x555555556339 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm4;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm0;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm0 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pshufb %xmm2,%xmm1                              #! PC = 0x55555555633e *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm2;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pxor   %xmm1,%xmm0                              #! PC = 0x555555556343 *)
xor %xmm0@uint8[16] %xmm0 %xmm1;
(* #! <- SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* #ret                                            #! PC = 0x555555556347 *)
#ret                                            #! 0x555555556347 = 0x555555556347;
(* movdqa -0x20(%rbp),%xmm3                        #! EA = L0x7fffffffa3a0; Value = 0x0bb164ded56fba00; PC = 0x555555556399 *)
mov %xmm3 [L0x7fffffffa3a0, L0x7fffffffa3a1, L0x7fffffffa3a2, L0x7fffffffa3a3,
           L0x7fffffffa3a4, L0x7fffffffa3a5, L0x7fffffffa3a6, L0x7fffffffa3a7,
           L0x7fffffffa3a8, L0x7fffffffa3a9, L0x7fffffffa3aa, L0x7fffffffa3ab,
           L0x7fffffffa3ac, L0x7fffffffa3ad, L0x7fffffffa3ae, L0x7fffffffa3af];
(* movdqa -0x30(%rbp),%xmm1                        #! EA = L0x7fffffffa390; Value = 0xb0e51a4fffaa5500; PC = 0x55555555639e *)
mov %xmm1 [L0x7fffffffa390, L0x7fffffffa391, L0x7fffffffa392, L0x7fffffffa393,
           L0x7fffffffa394, L0x7fffffffa395, L0x7fffffffa396, L0x7fffffffa397,
           L0x7fffffffa398, L0x7fffffffa399, L0x7fffffffa39a, L0x7fffffffa39b,
           L0x7fffffffa39c, L0x7fffffffa39d, L0x7fffffffa39e, L0x7fffffffa39f];
(* movups %xmm0,-0x10(%rdi)                        #! EA = L0x7fffffffa450; PC = 0x5555555563a3 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm0;
mov L0x7fffffffa450 r0; mov L0x7fffffffa451 r1; mov L0x7fffffffa452 r2;
mov L0x7fffffffa453 r3; mov L0x7fffffffa454 r4; mov L0x7fffffffa455 r5;
mov L0x7fffffffa456 r6; mov L0x7fffffffa457 r7; mov L0x7fffffffa458 r8;
mov L0x7fffffffa459 r9; mov L0x7fffffffa45a ra; mov L0x7fffffffa45b rb;
mov L0x7fffffffa45c rc; mov L0x7fffffffa45d rd; mov L0x7fffffffa45e re;
mov L0x7fffffffa45f rf;
(* #jne    0x555555556380 <linearmap_8x8_sse.constprop.0+48>#! PC = 0x5555555563aa *)
#jne    0x555555556380 <linearmap_8x8_sse.constprop.0+48>#! 0x5555555563aa = 0x5555555563aa;
(* movdqu (%rdi),%xmm2                             #! EA = L0x7fffffffa460; Value = 0x1840d01d46f38356; PC = 0x555555556380 *)
mov %xmm2 [L0x7fffffffa460, L0x7fffffffa461, L0x7fffffffa462, L0x7fffffffa463,
           L0x7fffffffa464, L0x7fffffffa465, L0x7fffffffa466, L0x7fffffffa467,
           L0x7fffffffa468, L0x7fffffffa469, L0x7fffffffa46a, L0x7fffffffa46b,
           L0x7fffffffa46c, L0x7fffffffa46d, L0x7fffffffa46e, L0x7fffffffa46f];
(* movdqa %xmm3,%xmm0                              #! PC = 0x555555556384 *)
mov %xmm0 %xmm3;
(* movaps %xmm1,-0x30(%rbp)                        #! EA = L0x7fffffffa390; PC = 0x555555556388 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm1;
mov L0x7fffffffa390 r0; mov L0x7fffffffa391 r1; mov L0x7fffffffa392 r2;
mov L0x7fffffffa393 r3; mov L0x7fffffffa394 r4; mov L0x7fffffffa395 r5;
mov L0x7fffffffa396 r6; mov L0x7fffffffa397 r7; mov L0x7fffffffa398 r8;
mov L0x7fffffffa399 r9; mov L0x7fffffffa39a ra; mov L0x7fffffffa39b rb;
mov L0x7fffffffa39c rc; mov L0x7fffffffa39d rd; mov L0x7fffffffa39e re;
mov L0x7fffffffa39f rf;
(* movaps %xmm3,-0x20(%rbp)                        #! EA = L0x7fffffffa3a0; PC = 0x555555556390 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm3;
mov L0x7fffffffa3a0 r0; mov L0x7fffffffa3a1 r1; mov L0x7fffffffa3a2 r2;
mov L0x7fffffffa3a3 r3; mov L0x7fffffffa3a4 r4; mov L0x7fffffffa3a5 r5;
mov L0x7fffffffa3a6 r6; mov L0x7fffffffa3a7 r7; mov L0x7fffffffa3a8 r8;
mov L0x7fffffffa3a9 r9; mov L0x7fffffffa3aa ra; mov L0x7fffffffa3ab rb;
mov L0x7fffffffa3ac rc; mov L0x7fffffffa3ad rd; mov L0x7fffffffa3ae re;
mov L0x7fffffffa3af rf;
(* #call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! PC = 0x555555556394 *)
#call   0x555555556320 <linear_transform_8x8_128b.constprop.0>#! 0x555555556394 = 0x555555556394;
(* #! -> SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* movdqa 0xfd08(%rip),%xmm3        # 0x555555566030#! EA = L0x555555566030; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x555555556320 *)
mov %xmm3 [L0x555555566030, L0x555555566031, L0x555555566032, L0x555555566033,
           L0x555555566034, L0x555555566035, L0x555555566036, L0x555555566037,
           L0x555555566038, L0x555555566039, L0x55555556603a, L0x55555556603b,
           L0x55555556603c, L0x55555556603d, L0x55555556603e, L0x55555556603f];
(* movdqa %xmm2,%xmm4                              #! PC = 0x555555556328 *)
mov %xmm4 %xmm2;
(* psrlw  $0x4,%xmm2                               #! PC = 0x55555555632c *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm2;
join s0 r1 r0; shr s0 s0 0x4@uint16; spl t1 t0 s0 8;
join s1 r3 r2; shr s1 s1 0x4@uint16; spl t3 t2 s1 8;
join s2 r5 r4; shr s2 s2 0x4@uint16; spl t5 t4 s2 8;
join s3 r7 r6; shr s3 s3 0x4@uint16; spl t7 t6 s3 8;
join s4 r9 r8; shr s4 s4 0x4@uint16; spl t9 t8 s4 8;
join s5 rb ra; shr s5 s5 0x4@uint16; spl tb ta s5 8;
join s6 rd rc; shr s6 s6 0x4@uint16; spl td tc s6 8;
join s7 rf re; shr s7 s7 0x4@uint16; spl tf te s7 8;
mov %xmm2 [t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, ta, tb, tc, td, te, tf];
(* pand   %xmm3,%xmm4                              #! PC = 0x555555556331 *)
and %xmm4@uint8[16] %xmm4 %xmm3;
(* pand   %xmm3,%xmm2                              #! PC = 0x555555556335 *)
and %xmm2@uint8[16] %xmm2 %xmm3;
(* pshufb %xmm4,%xmm0                              #! PC = 0x555555556339 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm4;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm0;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm0 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pshufb %xmm2,%xmm1                              #! PC = 0x55555555633e *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm2;
mov [s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, sa, sb, sc, sd, se, sf] %xmm1;
call vpshufb128 (s0,s1,s2,s3,s4,s5,s6,s7,s8,s9,sa,sb,sc,sd,se,sf,
                 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,ra,rb,rc,rd,re,rf,
                 d0,d1,d2,d3,d4,d5,d6,d7,d8,d9,da,db,dc,dd,de,df);
mov %xmm1 [d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, da, db, dc, dd, de, df];
(* pxor   %xmm1,%xmm0                              #! PC = 0x555555556343 *)
xor %xmm0@uint8[16] %xmm0 %xmm1;
(* #! <- SP = 0x7fffffffa388 *)
#! 0x7fffffffa388 = 0x7fffffffa388;
(* #ret                                            #! PC = 0x555555556347 *)
#ret                                            #! 0x555555556347 = 0x555555556347;
(* movdqa -0x20(%rbp),%xmm3                        #! EA = L0x7fffffffa3a0; Value = 0x0bb164ded56fba00; PC = 0x555555556399 *)
mov %xmm3 [L0x7fffffffa3a0, L0x7fffffffa3a1, L0x7fffffffa3a2, L0x7fffffffa3a3,
           L0x7fffffffa3a4, L0x7fffffffa3a5, L0x7fffffffa3a6, L0x7fffffffa3a7,
           L0x7fffffffa3a8, L0x7fffffffa3a9, L0x7fffffffa3aa, L0x7fffffffa3ab,
           L0x7fffffffa3ac, L0x7fffffffa3ad, L0x7fffffffa3ae, L0x7fffffffa3af];
(* movdqa -0x30(%rbp),%xmm1                        #! EA = L0x7fffffffa390; Value = 0xb0e51a4fffaa5500; PC = 0x55555555639e *)
mov %xmm1 [L0x7fffffffa390, L0x7fffffffa391, L0x7fffffffa392, L0x7fffffffa393,
           L0x7fffffffa394, L0x7fffffffa395, L0x7fffffffa396, L0x7fffffffa397,
           L0x7fffffffa398, L0x7fffffffa399, L0x7fffffffa39a, L0x7fffffffa39b,
           L0x7fffffffa39c, L0x7fffffffa39d, L0x7fffffffa39e, L0x7fffffffa39f];
(* movups %xmm0,-0x10(%rdi)                        #! EA = L0x7fffffffa460; PC = 0x5555555563a3 *)
mov [r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, ra, rb, rc, rd, re, rf] %xmm0;
mov L0x7fffffffa460 r0; mov L0x7fffffffa461 r1; mov L0x7fffffffa462 r2;
mov L0x7fffffffa463 r3; mov L0x7fffffffa464 r4; mov L0x7fffffffa465 r5;
mov L0x7fffffffa466 r6; mov L0x7fffffffa467 r7; mov L0x7fffffffa468 r8;
mov L0x7fffffffa469 r9; mov L0x7fffffffa46a ra; mov L0x7fffffffa46b rb;
mov L0x7fffffffa46c rc; mov L0x7fffffffa46d rd; mov L0x7fffffffa46e re;
mov L0x7fffffffa46f rf;
(* #jne    0x555555556380 <linearmap_8x8_sse.constprop.0+48>#! PC = 0x5555555563aa *)
#jne    0x555555556380 <linearmap_8x8_sse.constprop.0+48>#! 0x5555555563aa = 0x5555555563aa;
(* #jne    0x5555555563c0 <linearmap_8x8_sse.constprop.0+112>#! PC = 0x5555555563af *)
#jne    0x5555555563c0 <linearmap_8x8_sse.constprop.0+112>#! 0x5555555563af = 0x5555555563af;
(* #! <- SP = 0x7fffffffa3c8 *)
#! 0x7fffffffa3c8 = 0x7fffffffa3c8;
(* #ret                                            #! PC = 0x5555555563ba *)
#ret                                            #! 0x5555555563ba = 0x5555555563ba;

mov r00 L0x7fffffffa440;mov r01 L0x7fffffffa441;mov r02 L0x7fffffffa442;
mov r03 L0x7fffffffa443;mov r04 L0x7fffffffa444;mov r05 L0x7fffffffa445;
mov r06 L0x7fffffffa446;mov r07 L0x7fffffffa447;mov r08 L0x7fffffffa448;
mov r09 L0x7fffffffa449;mov r0a L0x7fffffffa44a;mov r0b L0x7fffffffa44b;
mov r0c L0x7fffffffa44c;mov r0d L0x7fffffffa44d;mov r0e L0x7fffffffa44e;
mov r0f L0x7fffffffa44f;mov r10 L0x7fffffffa450;mov r11 L0x7fffffffa451;
mov r12 L0x7fffffffa452;mov r13 L0x7fffffffa453;mov r14 L0x7fffffffa454;
mov r15 L0x7fffffffa455;mov r16 L0x7fffffffa456;mov r17 L0x7fffffffa457;
mov r18 L0x7fffffffa458;mov r19 L0x7fffffffa459;mov r1a L0x7fffffffa45a;
mov r1b L0x7fffffffa45b;mov r1c L0x7fffffffa45c;mov r1d L0x7fffffffa45d;
mov r1e L0x7fffffffa45e;mov r1f L0x7fffffffa45f;mov r20 L0x7fffffffa460;
mov r21 L0x7fffffffa461;mov r22 L0x7fffffffa462;mov r23 L0x7fffffffa463;
mov r24 L0x7fffffffa464;mov r25 L0x7fffffffa465;mov r26 L0x7fffffffa466;
mov r27 L0x7fffffffa467;mov r28 L0x7fffffffa468;mov r29 L0x7fffffffa469;
mov r2a L0x7fffffffa46a;mov r2b L0x7fffffffa46b;mov r2c L0x7fffffffa46c;
mov r2d L0x7fffffffa46d;mov r2e L0x7fffffffa46e;mov r2f L0x7fffffffa46f;

{
  true
  &&
  true
}

