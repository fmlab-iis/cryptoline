proc _gf256v_madd_u64 (bit a000,bit a001,bit a002,bit a003,bit a004,bit a005,bit a006,bit a007,
           bit a008,bit a009,bit a00a,bit a00b,bit a00c,bit a00d,bit a00e,bit a00f,
           bit a010,bit a011,bit a012,bit a013,bit a014,bit a015,bit a016,bit a017,
           bit a018,bit a019,bit a01a,bit a01b,bit a01c,bit a01d,bit a01e,bit a01f,
           bit a020,bit a021,bit a022,bit a023,bit a024,bit a025,bit a026,bit a027,
           bit a028,bit a029,bit a02a,bit a02b,bit a02c,bit a02d,bit a02e,bit a02f,
           bit a030,bit a031,bit a032,bit a033,bit a034,bit a035,bit a036,bit a037,
           bit a038,bit a039,bit a03a,bit a03b,bit a03c,bit a03d,bit a03e,bit a03f,
           bit a100,bit a101,bit a102,bit a103,bit a104,bit a105,bit a106,bit a107,
           bit a108,bit a109,bit a10a,bit a10b,bit a10c,bit a10d,bit a10e,bit a10f,
           bit a110,bit a111,bit a112,bit a113,bit a114,bit a115,bit a116,bit a117,
           bit a118,bit a119,bit a11a,bit a11b,bit a11c,bit a11d,bit a11e,bit a11f,
           bit a120,bit a121,bit a122,bit a123,bit a124,bit a125,bit a126,bit a127,
           bit a128,bit a129,bit a12a,bit a12b,bit a12c,bit a12d,bit a12e,bit a12f,
           bit a130,bit a131,bit a132,bit a133,bit a134,bit a135,bit a136,bit a137,
           bit a138,bit a139,bit a13a,bit a13b,bit a13c,bit a13d,bit a13e,bit a13f,
           bit a200,bit a201,bit a202,bit a203,bit a204,bit a205,bit a206,bit a207,
           bit a208,bit a209,bit a20a,bit a20b,bit a20c,bit a20d,bit a20e,bit a20f,
           bit a210,bit a211,bit a212,bit a213,bit a214,bit a215,bit a216,bit a217,
           bit a218,bit a219,bit a21a,bit a21b,bit a21c,bit a21d,bit a21e,bit a21f,
           bit a220,bit a221,bit a222,bit a223,bit a224,bit a225,bit a226,bit a227,
           bit a228,bit a229,bit a22a,bit a22b,bit a22c,bit a22d,bit a22e,bit a22f,
           bit a230,bit a231,bit a232,bit a233,bit a234,bit a235,bit a236,bit a237,
           bit a238,bit a239,bit a23a,bit a23b,bit a23c,bit a23d,bit a23e,bit a23f,
           bit a300,bit a301,bit a302,bit a303,bit a304,bit a305,bit a306,bit a307,
           bit a308,bit a309,bit a30a,bit a30b,bit a30c,bit a30d,bit a30e,bit a30f,
           bit a310,bit a311,bit a312,bit a313,bit a314,bit a315,bit a316,bit a317,
           bit a318,bit a319,bit a31a,bit a31b,bit a31c,bit a31d,bit a31e,bit a31f,
           bit a320,bit a321,bit a322,bit a323,bit a324,bit a325,bit a326,bit a327,
           bit a328,bit a329,bit a32a,bit a32b,bit a32c,bit a32d,bit a32e,bit a32f,
           bit a330,bit a331,bit a332,bit a333,bit a334,bit a335,bit a336,bit a337,
           bit a338,bit a339,bit a33a,bit a33b,bit a33c,bit a33d,bit a33e,bit a33f,
           bit a400,bit a401,bit a402,bit a403,bit a404,bit a405,bit a406,bit a407,
           bit a408,bit a409,bit a40a,bit a40b,bit a40c,bit a40d,bit a40e,bit a40f,
           bit a410,bit a411,bit a412,bit a413,bit a414,bit a415,bit a416,bit a417,
           bit a418,bit a419,bit a41a,bit a41b,bit a41c,bit a41d,bit a41e,bit a41f,
           bit a420,bit a421,bit a422,bit a423,bit a424,bit a425,bit a426,bit a427,
           bit a428,bit a429,bit a42a,bit a42b,bit a42c,bit a42d,bit a42e,bit a42f,
           bit a430,bit a431,bit a432,bit a433,bit a434,bit a435,bit a436,bit a437,
           bit a438,bit a439,bit a43a,bit a43b,bit a43c,bit a43d,bit a43e,bit a43f,
           bit a500,bit a501,bit a502,bit a503,bit a504,bit a505,bit a506,bit a507,
           bit a508,bit a509,bit a50a,bit a50b,bit a50c,bit a50d,bit a50e,bit a50f,
           bit a510,bit a511,bit a512,bit a513,bit a514,bit a515,bit a516,bit a517,
           bit a518,bit a519,bit a51a,bit a51b,bit a51c,bit a51d,bit a51e,bit a51f,
           bit A000,bit A001,bit A002,bit A003,bit A004,bit A005,bit A006,bit A007,
           bit A008,bit A009,bit A00a,bit A00b,bit A00c,bit A00d,bit A00e,bit A00f,
           bit A010,bit A011,bit A012,bit A013,bit A014,bit A015,bit A016,bit A017,
           bit A018,bit A019,bit A01a,bit A01b,bit A01c,bit A01d,bit A01e,bit A01f,
           bit A020,bit A021,bit A022,bit A023,bit A024,bit A025,bit A026,bit A027,
           bit A028,bit A029,bit A02a,bit A02b,bit A02c,bit A02d,bit A02e,bit A02f,
           bit A030,bit A031,bit A032,bit A033,bit A034,bit A035,bit A036,bit A037,
           bit A038,bit A039,bit A03a,bit A03b,bit A03c,bit A03d,bit A03e,bit A03f,
           bit A100,bit A101,bit A102,bit A103,bit A104,bit A105,bit A106,bit A107,
           bit A108,bit A109,bit A10a,bit A10b,bit A10c,bit A10d,bit A10e,bit A10f,
           bit A110,bit A111,bit A112,bit A113,bit A114,bit A115,bit A116,bit A117,
           bit A118,bit A119,bit A11a,bit A11b,bit A11c,bit A11d,bit A11e,bit A11f,
           bit A120,bit A121,bit A122,bit A123,bit A124,bit A125,bit A126,bit A127,
           bit A128,bit A129,bit A12a,bit A12b,bit A12c,bit A12d,bit A12e,bit A12f,
           bit A130,bit A131,bit A132,bit A133,bit A134,bit A135,bit A136,bit A137,
           bit A138,bit A139,bit A13a,bit A13b,bit A13c,bit A13d,bit A13e,bit A13f,
           bit A200,bit A201,bit A202,bit A203,bit A204,bit A205,bit A206,bit A207,
           bit A208,bit A209,bit A20a,bit A20b,bit A20c,bit A20d,bit A20e,bit A20f,
           bit A210,bit A211,bit A212,bit A213,bit A214,bit A215,bit A216,bit A217,
           bit A218,bit A219,bit A21a,bit A21b,bit A21c,bit A21d,bit A21e,bit A21f,
           bit A220,bit A221,bit A222,bit A223,bit A224,bit A225,bit A226,bit A227,
           bit A228,bit A229,bit A22a,bit A22b,bit A22c,bit A22d,bit A22e,bit A22f,
           bit A230,bit A231,bit A232,bit A233,bit A234,bit A235,bit A236,bit A237,
           bit A238,bit A239,bit A23a,bit A23b,bit A23c,bit A23d,bit A23e,bit A23f,
           bit A300,bit A301,bit A302,bit A303,bit A304,bit A305,bit A306,bit A307,
           bit A308,bit A309,bit A30a,bit A30b,bit A30c,bit A30d,bit A30e,bit A30f,
           bit A310,bit A311,bit A312,bit A313,bit A314,bit A315,bit A316,bit A317,
           bit A318,bit A319,bit A31a,bit A31b,bit A31c,bit A31d,bit A31e,bit A31f,
           bit A320,bit A321,bit A322,bit A323,bit A324,bit A325,bit A326,bit A327,
           bit A328,bit A329,bit A32a,bit A32b,bit A32c,bit A32d,bit A32e,bit A32f,
           bit A330,bit A331,bit A332,bit A333,bit A334,bit A335,bit A336,bit A337,
           bit A338,bit A339,bit A33a,bit A33b,bit A33c,bit A33d,bit A33e,bit A33f,
           bit A400,bit A401,bit A402,bit A403,bit A404,bit A405,bit A406,bit A407,
           bit A408,bit A409,bit A40a,bit A40b,bit A40c,bit A40d,bit A40e,bit A40f,
           bit A410,bit A411,bit A412,bit A413,bit A414,bit A415,bit A416,bit A417,
           bit A418,bit A419,bit A41a,bit A41b,bit A41c,bit A41d,bit A41e,bit A41f,
           bit A420,bit A421,bit A422,bit A423,bit A424,bit A425,bit A426,bit A427,
           bit A428,bit A429,bit A42a,bit A42b,bit A42c,bit A42d,bit A42e,bit A42f,
           bit A430,bit A431,bit A432,bit A433,bit A434,bit A435,bit A436,bit A437,
           bit A438,bit A439,bit A43a,bit A43b,bit A43c,bit A43d,bit A43e,bit A43f,
           bit A500,bit A501,bit A502,bit A503,bit A504,bit A505,bit A506,bit A507,
           bit A508,bit A509,bit A50a,bit A50b,bit A50c,bit A50d,bit A50e,bit A50f,
           bit A510,bit A511,bit A512,bit A513,bit A514,bit A515,bit A516,bit A517,
           bit A518,bit A519,bit A51a,bit A51b,bit A51c,bit A51d,bit A51e,bit A51f,
           bit b00, bit b01, bit b02, bit b03, bit b04, bit b05, bit b06, bit b07,
           bit Z;
           bit r000,bit r001,bit r002,bit r003,bit r004,bit r005,bit r006,bit r007,
           bit r008,bit r009,bit r00a,bit r00b,bit r00c,bit r00d,bit r00e,bit r00f,
           bit r010,bit r011,bit r012,bit r013,bit r014,bit r015,bit r016,bit r017,
           bit r018,bit r019,bit r01a,bit r01b,bit r01c,bit r01d,bit r01e,bit r01f,
           bit r020,bit r021,bit r022,bit r023,bit r024,bit r025,bit r026,bit r027,
           bit r028,bit r029,bit r02a,bit r02b,bit r02c,bit r02d,bit r02e,bit r02f,
           bit r030,bit r031,bit r032,bit r033,bit r034,bit r035,bit r036,bit r037,
           bit r038,bit r039,bit r03a,bit r03b,bit r03c,bit r03d,bit r03e,bit r03f,
           bit r100,bit r101,bit r102,bit r103,bit r104,bit r105,bit r106,bit r107,
           bit r108,bit r109,bit r10a,bit r10b,bit r10c,bit r10d,bit r10e,bit r10f,
           bit r110,bit r111,bit r112,bit r113,bit r114,bit r115,bit r116,bit r117,
           bit r118,bit r119,bit r11a,bit r11b,bit r11c,bit r11d,bit r11e,bit r11f,
           bit r120,bit r121,bit r122,bit r123,bit r124,bit r125,bit r126,bit r127,
           bit r128,bit r129,bit r12a,bit r12b,bit r12c,bit r12d,bit r12e,bit r12f,
           bit r130,bit r131,bit r132,bit r133,bit r134,bit r135,bit r136,bit r137,
           bit r138,bit r139,bit r13a,bit r13b,bit r13c,bit r13d,bit r13e,bit r13f,
           bit r200,bit r201,bit r202,bit r203,bit r204,bit r205,bit r206,bit r207,
           bit r208,bit r209,bit r20a,bit r20b,bit r20c,bit r20d,bit r20e,bit r20f,
           bit r210,bit r211,bit r212,bit r213,bit r214,bit r215,bit r216,bit r217,
           bit r218,bit r219,bit r21a,bit r21b,bit r21c,bit r21d,bit r21e,bit r21f,
           bit r220,bit r221,bit r222,bit r223,bit r224,bit r225,bit r226,bit r227,
           bit r228,bit r229,bit r22a,bit r22b,bit r22c,bit r22d,bit r22e,bit r22f,
           bit r230,bit r231,bit r232,bit r233,bit r234,bit r235,bit r236,bit r237,
           bit r238,bit r239,bit r23a,bit r23b,bit r23c,bit r23d,bit r23e,bit r23f,
           bit r300,bit r301,bit r302,bit r303,bit r304,bit r305,bit r306,bit r307,
           bit r308,bit r309,bit r30a,bit r30b,bit r30c,bit r30d,bit r30e,bit r30f,
           bit r310,bit r311,bit r312,bit r313,bit r314,bit r315,bit r316,bit r317,
           bit r318,bit r319,bit r31a,bit r31b,bit r31c,bit r31d,bit r31e,bit r31f,
           bit r320,bit r321,bit r322,bit r323,bit r324,bit r325,bit r326,bit r327,
           bit r328,bit r329,bit r32a,bit r32b,bit r32c,bit r32d,bit r32e,bit r32f,
           bit r330,bit r331,bit r332,bit r333,bit r334,bit r335,bit r336,bit r337,
           bit r338,bit r339,bit r33a,bit r33b,bit r33c,bit r33d,bit r33e,bit r33f,
           bit r400,bit r401,bit r402,bit r403,bit r404,bit r405,bit r406,bit r407,
           bit r408,bit r409,bit r40a,bit r40b,bit r40c,bit r40d,bit r40e,bit r40f,
           bit r410,bit r411,bit r412,bit r413,bit r414,bit r415,bit r416,bit r417,
           bit r418,bit r419,bit r41a,bit r41b,bit r41c,bit r41d,bit r41e,bit r41f,
           bit r420,bit r421,bit r422,bit r423,bit r424,bit r425,bit r426,bit r427,
           bit r428,bit r429,bit r42a,bit r42b,bit r42c,bit r42d,bit r42e,bit r42f,
           bit r430,bit r431,bit r432,bit r433,bit r434,bit r435,bit r436,bit r437,
           bit r438,bit r439,bit r43a,bit r43b,bit r43c,bit r43d,bit r43e,bit r43f,
           bit r500,bit r501,bit r502,bit r503,bit r504,bit r505,bit r506,bit r507,
           bit r508,bit r509,bit r50a,bit r50b,bit r50c,bit r50d,bit r50e,bit r50f,
           bit r510,bit r511,bit r512,bit r513,bit r514,bit r515,bit r516,bit r517,
           bit r518,bit r519,bit r51a,bit r51b,bit r51c,bit r51d,bit r51e,bit r51f
) =
{
  true
  &&
  true
}

mov %L0x7ffff78bbbe0
  [a000,a001,a002,a003,a004,a005,a006,a007,a008,a009,a00a,a00b,a00c,a00d,a00e,a00f,
   a010,a011,a012,a013,a014,a015,a016,a017,a018,a019,a01a,a01b,a01c,a01d,a01e,a01f,
   a020,a021,a022,a023,a024,a025,a026,a027,a028,a029,a02a,a02b,a02c,a02d,a02e,a02f,
   a030,a031,a032,a033,a034,a035,a036,a037,a038,a039,a03a,a03b,a03c,a03d,a03e,a03f];
mov %L0x7ffff78bbbe8
  [a100,a101,a102,a103,a104,a105,a106,a107,a108,a109,a10a,a10b,a10c,a10d,a10e,a10f,
   a110,a111,a112,a113,a114,a115,a116,a117,a118,a119,a11a,a11b,a11c,a11d,a11e,a11f,
   a120,a121,a122,a123,a124,a125,a126,a127,a128,a129,a12a,a12b,a12c,a12d,a12e,a12f,
   a130,a131,a132,a133,a134,a135,a136,a137,a138,a139,a13a,a13b,a13c,a13d,a13e,a13f];
mov %L0x7ffff78bbbf0
  [a200,a201,a202,a203,a204,a205,a206,a207,a208,a209,a20a,a20b,a20c,a20d,a20e,a20f,
   a210,a211,a212,a213,a214,a215,a216,a217,a218,a219,a21a,a21b,a21c,a21d,a21e,a21f,
   a220,a221,a222,a223,a224,a225,a226,a227,a228,a229,a22a,a22b,a22c,a22d,a22e,a22f,
   a230,a231,a232,a233,a234,a235,a236,a237,a238,a239,a23a,a23b,a23c,a23d,a23e,a23f];
mov %L0x7ffff78bbbf8
  [a300,a301,a302,a303,a304,a305,a306,a307,a308,a309,a30a,a30b,a30c,a30d,a30e,a30f,
   a310,a311,a312,a313,a314,a315,a316,a317,a318,a319,a31a,a31b,a31c,a31d,a31e,a31f,
   a320,a321,a322,a323,a324,a325,a326,a327,a328,a329,a32a,a32b,a32c,a32d,a32e,a32f,
   a330,a331,a332,a333,a334,a335,a336,a337,a338,a339,a33a,a33b,a33c,a33d,a33e,a33f];
mov %L0x7ffff78bbc00
  [a400,a401,a402,a403,a404,a405,a406,a407,a408,a409,a40a,a40b,a40c,a40d,a40e,a40f,
   a410,a411,a412,a413,a414,a415,a416,a417,a418,a419,a41a,a41b,a41c,a41d,a41e,a41f,
   a420,a421,a422,a423,a424,a425,a426,a427,a428,a429,a42a,a42b,a42c,a42d,a42e,a42f,
   a430,a431,a432,a433,a434,a435,a436,a437,a438,a439,a43a,a43b,a43c,a43d,a43e,a43f];
mov %L0x7ffff78bbc08 [a500,a501,a502,a503,a504,a505,a506,a507];
mov %L0x7ffff78bbc09 [a508,a509,a50a,a50b,a50c,a50d,a50e,a50f];
mov %L0x7ffff78bbc0a [a510,a511,a512,a513,a514,a515,a516,a517];
mov %L0x7ffff78bbc0b [a518,a519,a51a,a51b,a51c,a51d,a51e,a51f];

mov %L0x7fffffffd940
  [A000,A001,A002,A003,A004,A005,A006,A007,A008,A009,A00a,A00b,A00c,A00d,A00e,A00f,
   A010,A011,A012,A013,A014,A015,A016,A017,A018,A019,A01a,A01b,A01c,A01d,A01e,A01f,
   A020,A021,A022,A023,A024,A025,A026,A027,A028,A029,A02a,A02b,A02c,A02d,A02e,A02f,
   A030,A031,A032,A033,A034,A035,A036,A037,A038,A039,A03a,A03b,A03c,A03d,A03e,A03f];
mov %L0x7fffffffd948
  [A100,A101,A102,A103,A104,A105,A106,A107,A108,A109,A10a,A10b,A10c,A10d,A10e,A10f,
   A110,A111,A112,A113,A114,A115,A116,A117,A118,A119,A11a,A11b,A11c,A11d,A11e,A11f,
   A120,A121,A122,A123,A124,A125,A126,A127,A128,A129,A12a,A12b,A12c,A12d,A12e,A12f,
   A130,A131,A132,A133,A134,A135,A136,A137,A138,A139,A13a,A13b,A13c,A13d,A13e,A13f];
mov %L0x7fffffffd950
  [A200,A201,A202,A203,A204,A205,A206,A207,A208,A209,A20a,A20b,A20c,A20d,A20e,A20f,
   A210,A211,A212,A213,A214,A215,A216,A217,A218,A219,A21a,A21b,A21c,A21d,A21e,A21f,
   A220,A221,A222,A223,A224,A225,A226,A227,A228,A229,A22a,A22b,A22c,A22d,A22e,A22f,
   A230,A231,A232,A233,A234,A235,A236,A237,A238,A239,A23a,A23b,A23c,A23d,A23e,A23f];
mov %L0x7fffffffd958
  [A300,A301,A302,A303,A304,A305,A306,A307,A308,A309,A30a,A30b,A30c,A30d,A30e,A30f,
   A310,A311,A312,A313,A314,A315,A316,A317,A318,A319,A31a,A31b,A31c,A31d,A31e,A31f,
   A320,A321,A322,A323,A324,A325,A326,A327,A328,A329,A32a,A32b,A32c,A32d,A32e,A32f,
   A330,A331,A332,A333,A334,A335,A336,A337,A338,A339,A33a,A33b,A33c,A33d,A33e,A33f];
mov %L0x7fffffffd960
  [A400,A401,A402,A403,A404,A405,A406,A407,A408,A409,A40a,A40b,A40c,A40d,A40e,A40f,
   A410,A411,A412,A413,A414,A415,A416,A417,A418,A419,A41a,A41b,A41c,A41d,A41e,A41f,
   A420,A421,A422,A423,A424,A425,A426,A427,A428,A429,A42a,A42b,A42c,A42d,A42e,A42f,
   A430,A431,A432,A433,A434,A435,A436,A437,A438,A439,A43a,A43b,A43c,A43d,A43e,A43f];
mov %L0x7fffffffd968 [A500,A501,A502,A503,A504,A505,A506,A507];
mov %L0x7fffffffd969 [A508,A509,A50a,A50b,A50c,A50d,A50e,A50f];
mov %L0x7fffffffd96a [A510,A511,A512,A513,A514,A515,A516,A517];
mov %L0x7fffffffd96b [A518,A519,A51a,A51b,A51c,A51d,A51e,A51f];

nondet r10@uint64; nondet r15@uint64;

mov %rdx [b00, b01, b02, b03, b04, b05, b06, b07,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
mov %rsi [0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
mov %rsp [0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
mov %rdi [0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
mov %rcx [0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
mov %rax [0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];

(* #! -> SP = 0x7fffffffd898 *)
#! 0x7fffffffd898 = 0x7fffffffd898;
(* mov    %ecx,%r10d                               #! PC = 0x5555555565d1 *)
mov %r10 %rcx;
(* mov    %rsp,%rbp                                #! PC = 0x5555555565d4 *)
mov %rbp %rsp;
(* mov    %rsi,%r15                                #! PC = 0x5555555565d9 *)
mov %r15 %rsi;
(* mov    %edx,%r14d                               #! PC = 0x5555555565de *)
mov %r14 %rdx;
(* mov    %rdi,%r12                                #! PC = 0x5555555565e5 *)
mov %r12 %rdi;
(* sub    $0x28,%rsp                               #! PC = 0x5555555565e9 *)
(* sub 0x28, rsp *)
nop;
(* mov    %fs:0x28,%rax                            #! PC = 0x5555555565ed *)
(* mov %fs:0x28, rax *)
nop;
(* mov    %rax,-0x38(%rbp)                         #! EA = L0x7fffffffd858; PC = 0x5555555565f6 *)
mov %L0x7fffffffd858 %rax;
(* mov    %rsi,%rax                                #! PC = 0x5555555565fa *)
mov %rax %rsi;
(* or     %rdi,%rax                                #! PC = 0x5555555565fd *)
(* or rdi, rax *)
nop;
(* test   $0x7,%al                                 #! PC = 0x555555556600 *)
(* test $0x7, rax *)
nop;
(* #je     0x55555555671e <_gf256v_madd_u64+334>   #! PC = 0x555555556602 *)
#je     0x55555555671e <_gf256v_madd_u64+334>   #! 0x555555556602 = 0x555555556602;
(* mov    %rsi,%r11                                #! PC = 0x55555555671e *)
mov %r11 %rsi;
(* #jbe    0x555555556670 <_gf256v_madd_u64+160>   #! PC = 0x555555556724 *)
#jbe    0x555555556670 <_gf256v_madd_u64+160>   #! 0x555555556724 = 0x555555556724;
(* mov    -0x38(%rbp),%rax                         #! EA = L0x7fffffffd858; Value = 0x7c997405dc5da200; PC = 0x55555555672a *)
mov %rax %L0x7fffffffd858;
(* sub    %fs:0x28,%rax                            #! PC = 0x55555555672e *)
(* sub %fs:0x28, rax *)
nop;
(* #jne    0x555555556757 <_gf256v_madd_u64+391>   #! PC = 0x555555556737 *)
#jne    0x555555556757 <_gf256v_madd_u64+391>   #! 0x555555556737 = 0x555555556737;
(* add    $0x28,%rsp                               #! PC = 0x555555556739 *)
(* add 0x28, rsp *)
nop;
(* movzbl %dl,%edx                                 #! PC = 0x55555555673d *)
mov %rdx %rdx;
(* #jmp    0x5555555564a0 <_gf256v_madd_u64_aligned>#! PC = 0x55555555674a *)
#jmp    0x5555555564a0 <_gf256v_madd_u64_aligned>#! 0x55555555674a = 0x55555555674a;
(* mov    %rsi,%r10                                #! PC = 0x5555555564a1 *)
mov %r10 %rsi;
(* mov    %ecx,%r11d                               #! PC = 0x5555555564a4 *)
mov %r11 %rcx;
(* mov    %rsp,%rbp                                #! PC = 0x5555555564a7 *)
mov %rbp %rsp;
(* mov    %rdi,%r12                                #! PC = 0x5555555564b2 *)
mov %r12 %rdi;
(* sub    $0x28,%rsp                               #! PC = 0x5555555564b6 *)
(* sub 0x28, rsp *)
nop;
(* mov    %edx,-0x44(%rbp)                         #! EA = L0x7fffffffd84c; PC = 0x5555555564ba *)
mov %L0x7fffffffd84c %rdx;
(* mov    %fs:0x28,%rax                            #! PC = 0x5555555564bd *)
(* mov %fs:0x28, rax *)
nop;
(* mov    %rax,-0x38(%rbp)                         #! EA = L0x7fffffffd858; PC = 0x5555555564c6 *)
mov %L0x7fffffffd858 %rax;
(* xor    %eax,%eax                                #! PC = 0x5555555564ca *)
adds %dc %rax %rax %rax;
(* #jbe    0x5555555565c0 <_gf256v_madd_u64_aligned+288>#! PC = 0x5555555564cf *)
#jbe    0x5555555565c0 <_gf256v_madd_u64_aligned+288>#! 0x5555555564cf = 0x5555555564cf;
(* lea    -0x8(%rcx),%r13d                         #! PC = 0x5555555564d5 *)
(* lea -0x8(%rcx), r13 *)
nop;
(* movzbl %dl,%r14d                                #! PC = 0x5555555564d9 *)
mov %r14 %rdx;
(* mov    %rdi,%r15                                #! PC = 0x5555555564dd *)
mov %r15 %rdi;
(* shr    $0x3,%r13d                               #! PC = 0x5555555564e0 *)
(* shr $0x3, rax *)
nop;
(* add    $0x1,%r13d                               #! PC = 0x5555555564e4 *)
(* add $0x1, r13 *)
nop;
(* shl    $0x3,%r13                                #! PC = 0x5555555564e8 *)
(* shl $0x3, rax *)
nop;
(* lea    (%rsi,%r13,1),%rbx                       #! PC = 0x5555555564ec *)
(* lea (%rsi, %r13, 1), rbx *)
nop;
(* mov    (%r10),%rdi                              #! EA = L0x7ffff78bbbe0; Value = 0x062f1744fe86539b; PC = 0x5555555564f0 *)
mov %rdi %L0x7ffff78bbbe0;
(* mov    %r14d,%esi                               #! PC = 0x5555555564f3 *)
mov %rsi %r14;
(* add    $0x8,%r10                                #! PC = 0x5555555564f6 *)
adds dc r10 r10 8@uint64;
(* #call   0x555555555b30 <gf256v_mul_u64>         #! PC = 0x5555555564fa *)
#call   0x555555555b30 <gf256v_mul_u64>         #! 0x5555555564fa = 0x5555555564fa;
(* #! -> SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* movzbl %sil,%eax                                #! PC = 0x555555555b30 *)
mov %rax %rsi;
(* and    $0x1,%esi                                #! PC = 0x555555555b34 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rdx                                #! PC = 0x555555555b37 *)
mov %rdx %rdi;
(* movabs $0x101010101010101,%r8                   #! PC = 0x555555555b3a *)
mov %r8 [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b44 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* add    %rdx,%rdx                                #! PC = 0x555555555b48 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rdx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* movabs $0xfefefefefefefefe,%r9                  #! PC = 0x555555555b4b *)
mov %r9 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b55 *)
mul %rdx %rdx %r9;
(* mov    %rsi,%rcx                                #! PC = 0x555555555b58 *)
mov %rcx %rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555555b5b *)
mov %rsi %rdi;
(* shr    $0x7,%rsi                                #! PC = 0x555555555b5e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x555555555b62 *)
mul %rsi %rsi %r8;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x555555555b65 *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rdi                       #! PC = 0x555555555b69 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %rax,%rsi                                #! PC = 0x555555555b6d *)
mov %rsi %rax;
(* shr    %rsi                                     #! PC = 0x555555555b70 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* xor    %rdx,%rdi                                #! PC = 0x555555555b73 *)
adds %dc %rdi %rdi %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555b76 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdi,%rdi,1),%rdx                       #! PC = 0x555555555b79 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdi;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b7d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdi                                #! PC = 0x555555555b81 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b85 *)
mul %rdx %rdx %r9;
(* and    %r8,%rdi                                 #! PC = 0x555555555b88 *)
mul %rdi %rdi %r8;
(* xor    %rcx,%rsi                                #! PC = 0x555555555b8b *)
adds %dc %rsi %rsi %rcx;
(* lea    (%rdi,%rdi,2),%rcx                       #! PC = 0x555555555b8e *)
(* lea (rdi, rdi, 2), rcx) *)
(* NOTE: save MSB *)
mov %rdio %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
(* NOTE: recover MSB *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdio;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%rdi                                #! PC = 0x555555555b99 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555b9d *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555ba0 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rdi                                #! PC = 0x555555555ba3 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555ba7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555bab *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555baf *)
mul %rdx %rdx %r8;
(* and    %r9,%rcx                                 #! PC = 0x555555555bb2 *)
mul %rcx %rcx %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555bb5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555bb9 *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555bbc *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555bbf *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%rsi                                #! PC = 0x555555555bc3 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555bc7 *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555bca *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555bcd *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555bd1 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555bd5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555bd9 *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555bdc *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555bdf *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* xor    %rdi,%rsi                                #! PC = 0x555555555be3 *)
adds %dc %rsi %rsi %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555be6 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555be9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x4,%rdi                                #! PC = 0x555555555bed *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555bf1 *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555bf4 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555bf7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%rdi                                #! PC = 0x555555555bfb *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x555555555bff *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rcx                                 #! PC = 0x555555555c03 *)
mul %rcx %rcx %r9;
(* and    %r8,%rdx                                 #! PC = 0x555555555c06 *)
mul %rdx %rdx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c09 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555c0d *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555c10 *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c13 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x5,%rsi                                #! PC = 0x555555555c17 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555c1b *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555c1e *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555c21 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555c25 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555c29 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555c2d *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555c30 *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555c33 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555c37 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdi,%rsi                                #! PC = 0x555555555c3b *)
adds %dc %rsi %rsi %rdi;
(* xor    %rcx,%rdx                                #! PC = 0x555555555c3e *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x555555555c41 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x555555555c44 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x555555555c48 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x555555555c4c *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x555555555c4f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x555555555c53 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x555555555c56 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555c5a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555c5e *)
mul %rdx %rdx %r8;
(* and    %r9,%rsi                                 #! PC = 0x555555555c61 *)
mul %rsi %rsi %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c64 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c68 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rsi,%rdx                                #! PC = 0x555555555c6c *)
adds %dc %rdx %rdx %rsi;
(* imul   %rdx,%rax                                #! PC = 0x555555555c6f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %rdx %imul;
(* xor    %rcx,%rax                                #! PC = 0x555555555c73 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* #ret                                            #! PC = 0x555555555c76 *)
#ret                                            #! 0x555555555c76 = 0x555555555c76;
(* xor    %rax,(%r15)                              #! EA = L0x7fffffffd940; PC = 0x5555555564ff *)
adds %dc %L0x7fffffffd940 %L0x7fffffffd940 %rax;
(* add    $0x8,%r15                                #! PC = 0x555555556502 *)
adds dc r15 r15 8@uint64;
(* #jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! PC = 0x555555556509 *)
#jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! 0x555555556509 = 0x555555556509;
(* mov    (%r10),%rdi                              #! EA = L0x7ffff78bbbe8; Value = 0x6fd8d3e7d71e86aa; PC = 0x5555555564f0 *)
mov %rdi %L0x7ffff78bbbe8;
(* mov    %r14d,%esi                               #! PC = 0x5555555564f3 *)
mov %rsi %r14;
(* add    $0x8,%r10                                #! PC = 0x5555555564f6 *)
adds dc r10 r10 8@uint64;
(* #call   0x555555555b30 <gf256v_mul_u64>         #! PC = 0x5555555564fa *)
#call   0x555555555b30 <gf256v_mul_u64>         #! 0x5555555564fa = 0x5555555564fa;
(* #! -> SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* movzbl %sil,%eax                                #! PC = 0x555555555b30 *)
mov %rax %rsi;
(* and    $0x1,%esi                                #! PC = 0x555555555b34 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rdx                                #! PC = 0x555555555b37 *)
mov %rdx %rdi;
(* movabs $0x101010101010101,%r8                   #! PC = 0x555555555b3a *)
mov %r8 [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b44 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* add    %rdx,%rdx                                #! PC = 0x555555555b48 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rdx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* movabs $0xfefefefefefefefe,%r9                  #! PC = 0x555555555b4b *)
mov %r9 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b55 *)
mul %rdx %rdx %r9;
(* mov    %rsi,%rcx                                #! PC = 0x555555555b58 *)
mov %rcx %rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555555b5b *)
mov %rsi %rdi;
(* shr    $0x7,%rsi                                #! PC = 0x555555555b5e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x555555555b62 *)
mul %rsi %rsi %r8;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x555555555b65 *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rdi                       #! PC = 0x555555555b69 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %rax,%rsi                                #! PC = 0x555555555b6d *)
mov %rsi %rax;
(* shr    %rsi                                     #! PC = 0x555555555b70 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* xor    %rdx,%rdi                                #! PC = 0x555555555b73 *)
adds %dc %rdi %rdi %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555b76 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdi,%rdi,1),%rdx                       #! PC = 0x555555555b79 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdi;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b7d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdi                                #! PC = 0x555555555b81 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b85 *)
mul %rdx %rdx %r9;
(* and    %r8,%rdi                                 #! PC = 0x555555555b88 *)
mul %rdi %rdi %r8;
(* xor    %rcx,%rsi                                #! PC = 0x555555555b8b *)
adds %dc %rsi %rsi %rcx;
(* lea    (%rdi,%rdi,2),%rcx                       #! PC = 0x555555555b8e *)
(* lea (rdi, rdi, 2), rcx) *)
(* NOTE: save MSB *)
mov %rdio %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
(* NOTE: recover MSB *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdio;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%rdi                                #! PC = 0x555555555b99 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555b9d *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555ba0 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rdi                                #! PC = 0x555555555ba3 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555ba7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555bab *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555baf *)
mul %rdx %rdx %r8;
(* and    %r9,%rcx                                 #! PC = 0x555555555bb2 *)
mul %rcx %rcx %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555bb5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555bb9 *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555bbc *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555bbf *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%rsi                                #! PC = 0x555555555bc3 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555bc7 *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555bca *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555bcd *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555bd1 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555bd5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555bd9 *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555bdc *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555bdf *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* xor    %rdi,%rsi                                #! PC = 0x555555555be3 *)
adds %dc %rsi %rsi %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555be6 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555be9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x4,%rdi                                #! PC = 0x555555555bed *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555bf1 *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555bf4 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555bf7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%rdi                                #! PC = 0x555555555bfb *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x555555555bff *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rcx                                 #! PC = 0x555555555c03 *)
mul %rcx %rcx %r9;
(* and    %r8,%rdx                                 #! PC = 0x555555555c06 *)
mul %rdx %rdx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c09 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555c0d *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555c10 *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c13 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x5,%rsi                                #! PC = 0x555555555c17 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555c1b *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555c1e *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555c21 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555c25 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555c29 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555c2d *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555c30 *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555c33 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555c37 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdi,%rsi                                #! PC = 0x555555555c3b *)
adds %dc %rsi %rsi %rdi;
(* xor    %rcx,%rdx                                #! PC = 0x555555555c3e *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x555555555c41 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x555555555c44 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x555555555c48 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x555555555c4c *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x555555555c4f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x555555555c53 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x555555555c56 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555c5a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555c5e *)
mul %rdx %rdx %r8;
(* and    %r9,%rsi                                 #! PC = 0x555555555c61 *)
mul %rsi %rsi %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c64 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c68 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rsi,%rdx                                #! PC = 0x555555555c6c *)
adds %dc %rdx %rdx %rsi;
(* imul   %rdx,%rax                                #! PC = 0x555555555c6f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %rdx %imul;
(* xor    %rcx,%rax                                #! PC = 0x555555555c73 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* #ret                                            #! PC = 0x555555555c76 *)
#ret                                            #! 0x555555555c76 = 0x555555555c76;
(* xor    %rax,(%r15)                              #! EA = L0x7fffffffd948; PC = 0x5555555564ff *)
adds %dc %L0x7fffffffd948 %L0x7fffffffd948 %rax;
(* add    $0x8,%r15                                #! PC = 0x555555556502 *)
adds dc r15 r15 8@uint64;
(* #jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! PC = 0x555555556509 *)
#jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! 0x555555556509 = 0x555555556509;
(* mov    (%r10),%rdi                              #! EA = L0x7ffff78bbbf0; Value = 0x70b6d46c82b0d172; PC = 0x5555555564f0 *)
mov %rdi %L0x7ffff78bbbf0;
(* mov    %r14d,%esi                               #! PC = 0x5555555564f3 *)
mov %rsi %r14;
(* add    $0x8,%r10                                #! PC = 0x5555555564f6 *)
adds dc r10 r10 8@uint64;
(* #call   0x555555555b30 <gf256v_mul_u64>         #! PC = 0x5555555564fa *)
#call   0x555555555b30 <gf256v_mul_u64>         #! 0x5555555564fa = 0x5555555564fa;
(* #! -> SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* movzbl %sil,%eax                                #! PC = 0x555555555b30 *)
mov %rax %rsi;
(* and    $0x1,%esi                                #! PC = 0x555555555b34 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rdx                                #! PC = 0x555555555b37 *)
mov %rdx %rdi;
(* movabs $0x101010101010101,%r8                   #! PC = 0x555555555b3a *)
mov %r8 [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b44 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* add    %rdx,%rdx                                #! PC = 0x555555555b48 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rdx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* movabs $0xfefefefefefefefe,%r9                  #! PC = 0x555555555b4b *)
mov %r9 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b55 *)
mul %rdx %rdx %r9;
(* mov    %rsi,%rcx                                #! PC = 0x555555555b58 *)
mov %rcx %rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555555b5b *)
mov %rsi %rdi;
(* shr    $0x7,%rsi                                #! PC = 0x555555555b5e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x555555555b62 *)
mul %rsi %rsi %r8;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x555555555b65 *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rdi                       #! PC = 0x555555555b69 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %rax,%rsi                                #! PC = 0x555555555b6d *)
mov %rsi %rax;
(* shr    %rsi                                     #! PC = 0x555555555b70 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* xor    %rdx,%rdi                                #! PC = 0x555555555b73 *)
adds %dc %rdi %rdi %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555b76 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdi,%rdi,1),%rdx                       #! PC = 0x555555555b79 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdi;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b7d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdi                                #! PC = 0x555555555b81 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b85 *)
mul %rdx %rdx %r9;
(* and    %r8,%rdi                                 #! PC = 0x555555555b88 *)
mul %rdi %rdi %r8;
(* xor    %rcx,%rsi                                #! PC = 0x555555555b8b *)
adds %dc %rsi %rsi %rcx;
(* lea    (%rdi,%rdi,2),%rcx                       #! PC = 0x555555555b8e *)
(* lea (rdi, rdi, 2), rcx) *)
(* NOTE: save MSB *)
mov %rdio %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
(* NOTE: recover MSB *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdio;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%rdi                                #! PC = 0x555555555b99 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555b9d *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555ba0 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rdi                                #! PC = 0x555555555ba3 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555ba7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555bab *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555baf *)
mul %rdx %rdx %r8;
(* and    %r9,%rcx                                 #! PC = 0x555555555bb2 *)
mul %rcx %rcx %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555bb5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555bb9 *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555bbc *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555bbf *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%rsi                                #! PC = 0x555555555bc3 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555bc7 *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555bca *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555bcd *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555bd1 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555bd5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555bd9 *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555bdc *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555bdf *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* xor    %rdi,%rsi                                #! PC = 0x555555555be3 *)
adds %dc %rsi %rsi %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555be6 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555be9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x4,%rdi                                #! PC = 0x555555555bed *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555bf1 *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555bf4 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555bf7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%rdi                                #! PC = 0x555555555bfb *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x555555555bff *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rcx                                 #! PC = 0x555555555c03 *)
mul %rcx %rcx %r9;
(* and    %r8,%rdx                                 #! PC = 0x555555555c06 *)
mul %rdx %rdx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c09 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555c0d *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555c10 *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c13 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x5,%rsi                                #! PC = 0x555555555c17 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555c1b *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555c1e *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555c21 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555c25 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555c29 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555c2d *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555c30 *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555c33 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555c37 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdi,%rsi                                #! PC = 0x555555555c3b *)
adds %dc %rsi %rsi %rdi;
(* xor    %rcx,%rdx                                #! PC = 0x555555555c3e *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x555555555c41 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x555555555c44 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x555555555c48 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x555555555c4c *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x555555555c4f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x555555555c53 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x555555555c56 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555c5a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555c5e *)
mul %rdx %rdx %r8;
(* and    %r9,%rsi                                 #! PC = 0x555555555c61 *)
mul %rsi %rsi %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c64 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c68 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rsi,%rdx                                #! PC = 0x555555555c6c *)
adds %dc %rdx %rdx %rsi;
(* imul   %rdx,%rax                                #! PC = 0x555555555c6f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %rdx %imul;
(* xor    %rcx,%rax                                #! PC = 0x555555555c73 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* #ret                                            #! PC = 0x555555555c76 *)
#ret                                            #! 0x555555555c76 = 0x555555555c76;
(* xor    %rax,(%r15)                              #! EA = L0x7fffffffd950; PC = 0x5555555564ff *)
adds %dc %L0x7fffffffd950 %L0x7fffffffd950 %rax;
(* add    $0x8,%r15                                #! PC = 0x555555556502 *)
adds dc r15 r15 8@uint64;
(* #jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! PC = 0x555555556509 *)
#jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! 0x555555556509 = 0x555555556509;
(* mov    (%r10),%rdi                              #! EA = L0x7ffff78bbbf8; Value = 0xbbe5c5611ae60ce5; PC = 0x5555555564f0 *)
mov %rdi %L0x7ffff78bbbf8;
(* mov    %r14d,%esi                               #! PC = 0x5555555564f3 *)
mov %rsi %r14;
(* add    $0x8,%r10                                #! PC = 0x5555555564f6 *)
adds dc r10 r10 8@uint64;
(* #call   0x555555555b30 <gf256v_mul_u64>         #! PC = 0x5555555564fa *)
#call   0x555555555b30 <gf256v_mul_u64>         #! 0x5555555564fa = 0x5555555564fa;
(* #! -> SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* movzbl %sil,%eax                                #! PC = 0x555555555b30 *)
mov %rax %rsi;
(* and    $0x1,%esi                                #! PC = 0x555555555b34 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rdx                                #! PC = 0x555555555b37 *)
mov %rdx %rdi;
(* movabs $0x101010101010101,%r8                   #! PC = 0x555555555b3a *)
mov %r8 [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b44 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* add    %rdx,%rdx                                #! PC = 0x555555555b48 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rdx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* movabs $0xfefefefefefefefe,%r9                  #! PC = 0x555555555b4b *)
mov %r9 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b55 *)
mul %rdx %rdx %r9;
(* mov    %rsi,%rcx                                #! PC = 0x555555555b58 *)
mov %rcx %rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555555b5b *)
mov %rsi %rdi;
(* shr    $0x7,%rsi                                #! PC = 0x555555555b5e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x555555555b62 *)
mul %rsi %rsi %r8;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x555555555b65 *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rdi                       #! PC = 0x555555555b69 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %rax,%rsi                                #! PC = 0x555555555b6d *)
mov %rsi %rax;
(* shr    %rsi                                     #! PC = 0x555555555b70 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* xor    %rdx,%rdi                                #! PC = 0x555555555b73 *)
adds %dc %rdi %rdi %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555b76 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdi,%rdi,1),%rdx                       #! PC = 0x555555555b79 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdi;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b7d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdi                                #! PC = 0x555555555b81 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b85 *)
mul %rdx %rdx %r9;
(* and    %r8,%rdi                                 #! PC = 0x555555555b88 *)
mul %rdi %rdi %r8;
(* xor    %rcx,%rsi                                #! PC = 0x555555555b8b *)
adds %dc %rsi %rsi %rcx;
(* lea    (%rdi,%rdi,2),%rcx                       #! PC = 0x555555555b8e *)
(* lea (rdi, rdi, 2), rcx) *)
(* NOTE: save MSB *)
mov %rdio %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
(* NOTE: recover MSB *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdio;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%rdi                                #! PC = 0x555555555b99 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555b9d *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555ba0 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rdi                                #! PC = 0x555555555ba3 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555ba7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555bab *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555baf *)
mul %rdx %rdx %r8;
(* and    %r9,%rcx                                 #! PC = 0x555555555bb2 *)
mul %rcx %rcx %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555bb5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555bb9 *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555bbc *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555bbf *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%rsi                                #! PC = 0x555555555bc3 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555bc7 *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555bca *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555bcd *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555bd1 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555bd5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555bd9 *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555bdc *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555bdf *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* xor    %rdi,%rsi                                #! PC = 0x555555555be3 *)
adds %dc %rsi %rsi %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555be6 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555be9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x4,%rdi                                #! PC = 0x555555555bed *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555bf1 *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555bf4 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555bf7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%rdi                                #! PC = 0x555555555bfb *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x555555555bff *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rcx                                 #! PC = 0x555555555c03 *)
mul %rcx %rcx %r9;
(* and    %r8,%rdx                                 #! PC = 0x555555555c06 *)
mul %rdx %rdx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c09 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555c0d *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555c10 *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c13 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x5,%rsi                                #! PC = 0x555555555c17 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555c1b *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555c1e *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555c21 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555c25 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555c29 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555c2d *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555c30 *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555c33 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555c37 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdi,%rsi                                #! PC = 0x555555555c3b *)
adds %dc %rsi %rsi %rdi;
(* xor    %rcx,%rdx                                #! PC = 0x555555555c3e *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x555555555c41 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x555555555c44 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x555555555c48 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x555555555c4c *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x555555555c4f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x555555555c53 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x555555555c56 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555c5a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555c5e *)
mul %rdx %rdx %r8;
(* and    %r9,%rsi                                 #! PC = 0x555555555c61 *)
mul %rsi %rsi %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c64 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c68 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rsi,%rdx                                #! PC = 0x555555555c6c *)
adds %dc %rdx %rdx %rsi;
(* imul   %rdx,%rax                                #! PC = 0x555555555c6f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %rdx %imul;
(* xor    %rcx,%rax                                #! PC = 0x555555555c73 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* #ret                                            #! PC = 0x555555555c76 *)
#ret                                            #! 0x555555555c76 = 0x555555555c76;
(* xor    %rax,(%r15)                              #! EA = L0x7fffffffd958; PC = 0x5555555564ff *)
adds %dc %L0x7fffffffd958 %L0x7fffffffd958 %rax;
(* add    $0x8,%r15                                #! PC = 0x555555556502 *)
adds dc r15 r15 8@uint64;
(* #jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! PC = 0x555555556509 *)
#jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! 0x555555556509 = 0x555555556509;
(* mov    (%r10),%rdi                              #! EA = L0x7ffff78bbc00; Value = 0xd6368892d1f5ad41; PC = 0x5555555564f0 *)
mov %rdi %L0x7ffff78bbc00;
(* mov    %r14d,%esi                               #! PC = 0x5555555564f3 *)
mov %rsi %r14;
(* add    $0x8,%r10                                #! PC = 0x5555555564f6 *)
adds dc r10 r10 8@uint64;
(* #call   0x555555555b30 <gf256v_mul_u64>         #! PC = 0x5555555564fa *)
#call   0x555555555b30 <gf256v_mul_u64>         #! 0x5555555564fa = 0x5555555564fa;
(* #! -> SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* movzbl %sil,%eax                                #! PC = 0x555555555b30 *)
mov %rax %rsi;
(* and    $0x1,%esi                                #! PC = 0x555555555b34 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rdx                                #! PC = 0x555555555b37 *)
mov %rdx %rdi;
(* movabs $0x101010101010101,%r8                   #! PC = 0x555555555b3a *)
mov %r8 [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b44 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* add    %rdx,%rdx                                #! PC = 0x555555555b48 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rdx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* movabs $0xfefefefefefefefe,%r9                  #! PC = 0x555555555b4b *)
mov %r9 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b55 *)
mul %rdx %rdx %r9;
(* mov    %rsi,%rcx                                #! PC = 0x555555555b58 *)
mov %rcx %rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555555b5b *)
mov %rsi %rdi;
(* shr    $0x7,%rsi                                #! PC = 0x555555555b5e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x555555555b62 *)
mul %rsi %rsi %r8;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x555555555b65 *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rdi                       #! PC = 0x555555555b69 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %rax,%rsi                                #! PC = 0x555555555b6d *)
mov %rsi %rax;
(* shr    %rsi                                     #! PC = 0x555555555b70 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* xor    %rdx,%rdi                                #! PC = 0x555555555b73 *)
adds %dc %rdi %rdi %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555b76 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdi,%rdi,1),%rdx                       #! PC = 0x555555555b79 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdi;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b7d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdi                                #! PC = 0x555555555b81 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b85 *)
mul %rdx %rdx %r9;
(* and    %r8,%rdi                                 #! PC = 0x555555555b88 *)
mul %rdi %rdi %r8;
(* xor    %rcx,%rsi                                #! PC = 0x555555555b8b *)
adds %dc %rsi %rsi %rcx;
(* lea    (%rdi,%rdi,2),%rcx                       #! PC = 0x555555555b8e *)
(* lea (rdi, rdi, 2), rcx) *)
(* NOTE: save MSB *)
mov %rdio %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
(* NOTE: recover MSB *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdio;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%rdi                                #! PC = 0x555555555b99 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555b9d *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555ba0 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rdi                                #! PC = 0x555555555ba3 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555ba7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555bab *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555baf *)
mul %rdx %rdx %r8;
(* and    %r9,%rcx                                 #! PC = 0x555555555bb2 *)
mul %rcx %rcx %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555bb5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555bb9 *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555bbc *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555bbf *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%rsi                                #! PC = 0x555555555bc3 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555bc7 *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555bca *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555bcd *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555bd1 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555bd5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555bd9 *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555bdc *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555bdf *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* xor    %rdi,%rsi                                #! PC = 0x555555555be3 *)
adds %dc %rsi %rsi %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555be6 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555be9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x4,%rdi                                #! PC = 0x555555555bed *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555bf1 *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555bf4 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555bf7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%rdi                                #! PC = 0x555555555bfb *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x555555555bff *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rcx                                 #! PC = 0x555555555c03 *)
mul %rcx %rcx %r9;
(* and    %r8,%rdx                                 #! PC = 0x555555555c06 *)
mul %rdx %rdx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c09 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555c0d *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555c10 *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c13 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x5,%rsi                                #! PC = 0x555555555c17 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555c1b *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555c1e *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555c21 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555c25 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555c29 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555c2d *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555c30 *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555c33 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555c37 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdi,%rsi                                #! PC = 0x555555555c3b *)
adds %dc %rsi %rsi %rdi;
(* xor    %rcx,%rdx                                #! PC = 0x555555555c3e *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x555555555c41 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x555555555c44 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x555555555c48 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x555555555c4c *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x555555555c4f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x555555555c53 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x555555555c56 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555c5a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555c5e *)
mul %rdx %rdx %r8;
(* and    %r9,%rsi                                 #! PC = 0x555555555c61 *)
mul %rsi %rsi %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c64 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c68 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rsi,%rdx                                #! PC = 0x555555555c6c *)
adds %dc %rdx %rdx %rsi;
(* imul   %rdx,%rax                                #! PC = 0x555555555c6f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %rdx %imul;
(* xor    %rcx,%rax                                #! PC = 0x555555555c73 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* #ret                                            #! PC = 0x555555555c76 *)
#ret                                            #! 0x555555555c76 = 0x555555555c76;
(* xor    %rax,(%r15)                              #! EA = L0x7fffffffd960; PC = 0x5555555564ff *)
adds %dc %L0x7fffffffd960 %L0x7fffffffd960 %rax;
(* add    $0x8,%r15                                #! PC = 0x555555556502 *)
adds dc r15 r15 8@uint64;
(* #jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! PC = 0x555555556509 *)
#jne    0x5555555564f0 <_gf256v_madd_u64_aligned+80>#! 0x555555556509 = 0x555555556509;
(* add    %r13,%r12                                #! PC = 0x55555555650b *)
(* add r13, r12 *)
nop;
(* and    $0x7,%r11d                               #! PC = 0x55555555650e *)
(* and $0x7, r11 *)
nop;
(* lea    -0x40(%rbp),%rsi                         #! PC = 0x555555556512 *)
(* lea -0x40(%rbp), rsi *)
nop;
(* xor    %eax,%eax                                #! PC = 0x555555556516 *)
adds %dc %rax %rax %rax;
(* test   %r11d,%r11d                              #! PC = 0x555555556518 *)
(* test r11, r11 *)
nop;
(* #je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! PC = 0x55555555651b *)
#je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! 0x55555555651b = 0x55555555651b;
(* mov    %eax,%edx                                #! PC = 0x555555556521 *)
mov %rdx %rax;
(* add    $0x1,%eax                                #! PC = 0x555555556523 *)
(* add $0x1, rax *)
nop;
(* movzbl (%rbx,%rdx,1),%ecx                       #! EA = L0x7ffff78bbc08; Value = 0x2b386d4c28dad157; PC = 0x555555556526 *)
mov %rcx %L0x7ffff78bbc08;
(* mov    %cl,(%rsi,%rdx,1)                        #! EA = L0x7fffffffd850; PC = 0x55555555652a *)
mov %L0x7fffffffd850 %rcx;
(* #jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! PC = 0x555555556530 *)
#jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! 0x555555556530 = 0x555555556530;
(* mov    %eax,%edx                                #! PC = 0x555555556521 *)
mov %rdx %rax;
(* add    $0x1,%eax                                #! PC = 0x555555556523 *)
(* add $0x1, rax *)
nop;
(* movzbl (%rbx,%rdx,1),%ecx                       #! EA = L0x7ffff78bbc09; Value = 0x012b386d4c28dad1; PC = 0x555555556526 *)
mov %rcx %L0x7ffff78bbc09;
(* mov    %cl,(%rsi,%rdx,1)                        #! EA = L0x7fffffffd851; PC = 0x55555555652a *)
mov %L0x7fffffffd851 %rcx;
(* #jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! PC = 0x555555556530 *)
#jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! 0x555555556530 = 0x555555556530;
(* mov    %eax,%edx                                #! PC = 0x555555556521 *)
mov %rdx %rax;
(* add    $0x1,%eax                                #! PC = 0x555555556523 *)
(* add $0x1, rax *)
nop;
(* movzbl (%rbx,%rdx,1),%ecx                       #! EA = L0x7ffff78bbc0a; Value = 0xc3012b386d4c28da; PC = 0x555555556526 *)
mov %rcx %L0x7ffff78bbc0a;
(* mov    %cl,(%rsi,%rdx,1)                        #! EA = L0x7fffffffd852; PC = 0x55555555652a *)
mov %L0x7fffffffd852 %rcx;
(* #jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! PC = 0x555555556530 *)
#jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! 0x555555556530 = 0x555555556530;
(* mov    %eax,%edx                                #! PC = 0x555555556521 *)
mov %rdx %rax;
(* add    $0x1,%eax                                #! PC = 0x555555556523 *)
(* add $0x1, rax *)
nop;
(* movzbl (%rbx,%rdx,1),%ecx                       #! EA = L0x7ffff78bbc0b; Value = 0xebc3012b386d4c28; PC = 0x555555556526 *)
mov %rcx %L0x7ffff78bbc0b;
(* mov    %cl,(%rsi,%rdx,1)                        #! EA = L0x7fffffffd853; PC = 0x55555555652a *)
mov %L0x7fffffffd853 %rcx;
(* #jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! PC = 0x555555556530 *)
#jb     0x555555556521 <_gf256v_madd_u64_aligned+129>#! 0x555555556530 = 0x555555556530;
(* mov    -0x40(%rbp),%rdi                         #! EA = L0x7fffffffd850; Value = 0x089ae26b28dad157; PC = 0x555555556532 *)
(* NOTE: cast to 64 bits *)
(* mov %rdi %L0x7fffffffd850; *)
mov [m00,m01,m02,m03,m04,m05,m06,m07] %L0x7fffffffd850;
mov [m08,m09,m0a,m0b,m0c,m0d,m0e,m0f] %L0x7fffffffd851;
mov [m10,m11,m12,m13,m14,m15,m16,m17] %L0x7fffffffd852;
mov [m18,m19,m1a,m1b,m1c,m1d,m1e,m1f] %L0x7fffffffd853;
mov %rdi [m00,m01,m02,m03,m04,m05,m06,m07,m08,m09,m0a,m0b,m0c,m0d,m0e,m0f,
          m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m1a,m1b,m1c,m1d,m1e,m1f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* movzbl -0x44(%rbp),%esi                         #! EA = L0x7fffffffd84c; Value = 0x28dad157000000e9; PC = 0x555555556536 *)
mov %rsi %L0x7fffffffd84c;
(* #call   0x555555555b30 <gf256v_mul_u64>         #! PC = 0x55555555653a *)
#call   0x555555555b30 <gf256v_mul_u64>         #! 0x55555555653a = 0x55555555653a;
(* #! -> SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* movzbl %sil,%eax                                #! PC = 0x555555555b30 *)
mov %rax %rsi;
(* and    $0x1,%esi                                #! PC = 0x555555555b34 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* mov    %rdi,%rdx                                #! PC = 0x555555555b37 *)
mov %rdx %rdi;
(* movabs $0x101010101010101,%r8                   #! PC = 0x555555555b3a *)
mov %r8 [1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          1@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b44 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* add    %rdx,%rdx                                #! PC = 0x555555555b48 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rdx [0@bit,l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
          l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
          l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
          l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* movabs $0xfefefefefefefefe,%r9                  #! PC = 0x555555555b4b *)
mov %r9 [0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,
          0@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit,1@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b55 *)
mul %rdx %rdx %r9;
(* mov    %rsi,%rcx                                #! PC = 0x555555555b58 *)
mov %rcx %rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555555b5b *)
mov %rsi %rdi;
(* shr    $0x7,%rsi                                #! PC = 0x555555555b5e *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rsi                                 #! PC = 0x555555555b62 *)
mul %rsi %rsi %r8;
(* lea    (%rsi,%rsi,2),%rsi                       #! PC = 0x555555555b65 *)
(* lea (rsi, rsi, 2), rsi) *)
nop;
(* lea    (%rsi,%rsi,8),%rdi                       #! PC = 0x555555555b69 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rsi;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdi [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* mov    %rax,%rsi                                #! PC = 0x555555555b6d *)
mov %rsi %rax;
(* shr    %rsi                                     #! PC = 0x555555555b70 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit];
(* xor    %rdx,%rdi                                #! PC = 0x555555555b73 *)
adds %dc %rdi %rdi %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555b76 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdi,%rdi,1),%rdx                       #! PC = 0x555555555b79 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdi;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdi,%rsi                                #! PC = 0x555555555b7d *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rdi %imul;
(* shr    $0x7,%rdi                                #! PC = 0x555555555b81 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555b85 *)
mul %rdx %rdx %r9;
(* and    %r8,%rdi                                 #! PC = 0x555555555b88 *)
mul %rdi %rdi %r8;
(* xor    %rcx,%rsi                                #! PC = 0x555555555b8b *)
adds %dc %rsi %rsi %rcx;
(* lea    (%rdi,%rdi,2),%rcx                       #! PC = 0x555555555b8e *)
(* lea (rdi, rdi, 2), rcx) *)
(* NOTE: save MSB *)
mov %rdio %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
(* NOTE: recover MSB *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdio;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x2,%rdi                                #! PC = 0x555555555b99 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555b9d *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555ba0 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rdi                                #! PC = 0x555555555ba3 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555ba7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555bab *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555baf *)
mul %rdx %rdx %r8;
(* and    %r9,%rcx                                 #! PC = 0x555555555bb2 *)
mul %rcx %rcx %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555bb5 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555bb9 *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555bbc *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555bbf *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x3,%rsi                                #! PC = 0x555555555bc3 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555bc7 *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555bca *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555bcd *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555bd1 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555bd5 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555bd9 *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555bdc *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555bdf *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* xor    %rdi,%rsi                                #! PC = 0x555555555be3 *)
adds %dc %rsi %rsi %rdi;
(* mov    %rax,%rdi                                #! PC = 0x555555555be6 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555be9 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x4,%rdi                                #! PC = 0x555555555bed *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdi;
mov %rdi [s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit];
(* xor    %rcx,%rdx                                #! PC = 0x555555555bf1 *)
adds %dc %rdx %rdx %rcx;
(* and    $0x1,%edi                                #! PC = 0x555555555bf4 *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rdi;
mov %rdi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rdx,%rdx,1),%rcx                       #! PC = 0x555555555bf7 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rcx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rdx,%rdi                                #! PC = 0x555555555bfb *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rdi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rdi %rdx %imul;
(* shr    $0x7,%rdx                                #! PC = 0x555555555bff *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rcx                                 #! PC = 0x555555555c03 *)
mul %rcx %rcx %r9;
(* and    %r8,%rdx                                 #! PC = 0x555555555c06 *)
mul %rdx %rdx %r8;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c09 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* xor    %rsi,%rdi                                #! PC = 0x555555555c0d *)
adds %dc %rdi %rdi %rsi;
(* mov    %rax,%rsi                                #! PC = 0x555555555c10 *)
mov %rsi %rax;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c13 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* shr    $0x5,%rsi                                #! PC = 0x555555555c17 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rsi;
mov %rsi [s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit];
(* xor    %rdx,%rcx                                #! PC = 0x555555555c1b *)
adds %dc %rcx %rcx %rdx;
(* and    $0x1,%esi                                #! PC = 0x555555555c1e *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rsi;
mov %rsi [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* lea    (%rcx,%rcx,1),%rdx                       #! PC = 0x555555555c21 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
mov %rdx [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* imul   %rcx,%rsi                                #! PC = 0x555555555c25 *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rsi;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rsi %rcx %imul;
(* shr    $0x7,%rcx                                #! PC = 0x555555555c29 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r9,%rdx                                 #! PC = 0x555555555c2d *)
mul %rdx %rdx %r9;
(* and    %r8,%rcx                                 #! PC = 0x555555555c30 *)
mul %rcx %rcx %r8;
(* lea    (%rcx,%rcx,2),%rcx                       #! PC = 0x555555555c33 *)
(* lea (rcx, rcx, 2), rcx) *)
nop;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555c37 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rcx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rcx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rdi,%rsi                                #! PC = 0x555555555c3b *)
adds %dc %rsi %rsi %rdi;
(* xor    %rcx,%rdx                                #! PC = 0x555555555c3e *)
adds %dc %rdx %rdx %rcx;
(* mov    %rax,%rcx                                #! PC = 0x555555555c41 *)
mov %rcx %rax;
(* shr    $0x7,%rax                                #! PC = 0x555555555c44 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rax;
mov %rax [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* shr    $0x6,%rcx                                #! PC = 0x555555555c48 *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rcx;
mov %rcx [s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    $0x1,%ecx                                #! PC = 0x555555555c4c *)
mov [t00,t01,t02,t03,t04,t05,t06,t07,t08,t09,t0a,t0b,t0c,t0d,t0e,t0f,
     t10,t11,t12,t13,t14,t15,t16,t17,t18,t19,t1a,t1b,t1c,t1d,t1e,t1f,
     t20,t21,t22,t23,t24,t25,t26,t27,t28,t29,t2a,t2b,t2c,t2d,t2e,t2f,
     t30,t31,t32,t33,t34,t35,t36,t37,t38,t39,t3a,t3b,t3c,t3d,t3e,t3f] %rcx;
mov %rcx [t00, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit,
          0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit, 0@bit];
(* imul   %rdx,%rcx                                #! PC = 0x555555555c4f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rcx;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rcx %rdx %imul;
(* xor    %rsi,%rcx                                #! PC = 0x555555555c53 *)
adds %dc %rcx %rcx %rsi;
(* lea    (%rdx,%rdx,1),%rsi                       #! PC = 0x555555555c56 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
mov %rsi [0@bit, l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e];
(* shr    $0x7,%rdx                                #! PC = 0x555555555c5a *)
mov [s00,s01,s02,s03,s04,s05,s06,s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
     s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
     s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
     s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f] %rdx;
mov %rdx [s07,s08,s09,s0a,s0b,s0c,s0d,s0e,s0f,
          s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s1a,s1b,s1c,s1d,s1e,s1f,
          s20,s21,s22,s23,s24,s25,s26,s27,s28,s29,s2a,s2b,s2c,s2d,s2e,s2f,
          s30,s31,s32,s33,s34,s35,s36,s37,s38,s39,s3a,s3b,s3c,s3d,s3e,s3f,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit];
(* and    %r8,%rdx                                 #! PC = 0x555555555c5e *)
mul %rdx %rdx %r8;
(* and    %r9,%rsi                                 #! PC = 0x555555555c61 *)
mul %rsi %rsi %r9;
(* lea    (%rdx,%rdx,2),%rdx                       #! PC = 0x555555555c64 *)
(* lea (rdx, rdx, 2), rdx) *)
nop;
(* lea    (%rdx,%rdx,8),%rdx                       #! PC = 0x555555555c68 *)
mov [l00,l01,l02,l03,l04,l05,l06,l07,l08,l09,l0a,l0b,l0c,l0d,l0e,l0f,
     l10,l11,l12,l13,l14,l15,l16,l17,l18,l19,l1a,l1b,l1c,l1d,l1e,l1f,
     l20,l21,l22,l23,l24,l25,l26,l27,l28,l29,l2a,l2b,l2c,l2d,l2e,l2f,
     l30,l31,l32,l33,l34,l35,l36,l37,l38,l39,l3a,l3b,l3c,l3d,l3e,l3f] %rdx;
assert and [l01=0,l02=0,l03=0,l04=0,l05=0,l06=0,l07=0,
            l09=0,l0a=0,l0b=0,l0c=0,l0d=0,l0e=0,l0f=0,
            l11=0,l12=0,l13=0,l14=0,l15=0,l16=0,l17=0,
            l19=0,l1a=0,l1b=0,l1c=0,l1d=0,l1e=0,l1f=0,
            l21=0,l22=0,l23=0,l24=0,l25=0,l26=0,l27=0,
            l29=0,l2a=0,l2b=0,l2c=0,l2d=0,l2e=0,l2f=0,
            l31=0,l32=0,l33=0,l34=0,l35=0,l36=0,l37=0,
            l39=0,l3a=0,l3b=0,l3c=0,l3d=0,l3e=0,l3f=0] && true;
mov %rdx [l00, l00, 0@bit, l00, l00, 0@bit, 0@bit, 0@bit,
          l08, l08, 0@bit, l08, l08, 0@bit, 0@bit, 0@bit,
          l10, l10, 0@bit, l10, l10, 0@bit, 0@bit, 0@bit,
          l18, l18, 0@bit, l18, l18, 0@bit, 0@bit, 0@bit,
          l20, l20, 0@bit, l20, l20, 0@bit, 0@bit, 0@bit,
          l28, l28, 0@bit, l28, l28, 0@bit, 0@bit, 0@bit,
          l30, l30, 0@bit, l30, l30, 0@bit, 0@bit, 0@bit,
          l38, l38, 0@bit, l38, l38, 0@bit, 0@bit, 0@bit];
(* xor    %rsi,%rdx                                #! PC = 0x555555555c6c *)
adds %dc %rdx %rdx %rsi;
(* imul   %rdx,%rax                                #! PC = 0x555555555c6f *)
mov [i00,i01,i02,i03,i04,i05,i06,i07,i08,i09,i0a,i0b,i0c,i0d,i0e,i0f,
     i10,i11,i12,i13,i14,i15,i16,i17,i18,i19,i1a,i1b,i1c,i1d,i1e,i1f,
     i20,i21,i22,i23,i24,i25,i26,i27,i28,i29,i2a,i2b,i2c,i2d,i2e,i2f,
     i30,i31,i32,i33,i34,i35,i36,i37,i38,i39,i3a,i3b,i3c,i3d,i3e,i3f] %rax;
assert and [i01=0,i02=0,i03=0,i04=0,i05=0,i06=0,i07=0,
            i08=0,i09=0,i0a=0,i0b=0,i0c=0,i0d=0,i0e=0,i0f=0,
            i10=0,i11=0,i12=0,i13=0,i14=0,i15=0,i16=0,i17=0,
            i18=0,i19=0,i1a=0,i1b=0,i1c=0,i1d=0,i1e=0,i1f=0,
            i20=0,i21=0,i22=0,i23=0,i24=0,i25=0,i26=0,i27=0,
            i28=0,i29=0,i2a=0,i2b=0,i2c=0,i2d=0,i2e=0,i2f=0,
            i30=0,i31=0,i32=0,i33=0,i34=0,i35=0,i36=0,i37=0,
            i38=0,i39=0,i3a=0,i3b=0,i3c=0,i3d=0,i3e=0,i3f=0] && true;
mov %imul [i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,
           i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00,i00];
mul %rax %rdx %imul;
(* xor    %rcx,%rax                                #! PC = 0x555555555c73 *)
adds %dc %rax %rax %rcx;
(* #! <- SP = 0x7fffffffd838 *)
#! 0x7fffffffd838 = 0x7fffffffd838;
(* #ret                                            #! PC = 0x555555555c76 *)
#ret                                            #! 0x555555555c76 = 0x555555555c76;
(* xor    %al,(%r12)                               #! EA = L0x7fffffffd968; PC = 0x55555555653f *)
(* NOTE: split into 8-bit chunks *)
mov [m00,m01,m02,m03,m04,m05,m06,m07,m08,m09,m0a,m0b,m0c,m0d,m0e,m0f,
     m10,m11,m12,m13,m14,m15,m16,m17,m18,m19,m1a,m1b,m1c,m1d,m1e,m1f,
     m20,m21,m22,m23,m24,m25,m26,m27,m28,m29,m2a,m2b,m2c,m2d,m2e,m2f,
     m30,m31,m32,m33,m34,m35,m36,m37,m38,m39,m3a,m3b,m3c,m3d,m3e,m3f] %rax;
adds %dc %L0x7fffffffd968 %L0x7fffffffd968 [m00,m01,m02,m03,m04,m05,m06,m07];
(* mov    %rax,-0x40(%rbp)                         #! EA = L0x7fffffffd850; PC = 0x555555556543 *)
mov %L0x7fffffffd850 [m00,m01,m02,m03,m04,m05,m06,m07];
mov %L0x7fffffffd851 [m08,m09,m0a,m0b,m0c,m0d,m0e,m0f];
mov %L0x7fffffffd852 [m10,m11,m12,m13,m14,m15,m16,m17];
mov %L0x7fffffffd853 [m18,m19,m1a,m1b,m1c,m1d,m1e,m1f];
(* #je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! PC = 0x55555555654b *)
#je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! 0x55555555654b = 0x55555555654b;
(* movzbl -0x3f(%rbp),%eax                         #! EA = L0x7fffffffd851; Value = 0x00094235452d0a23; PC = 0x55555555654d *)
mov %rax %L0x7fffffffd851;
(* xor    %al,0x1(%r12)                            #! EA = L0x7fffffffd969; PC = 0x555555556551 *)
adds %dc %L0x7fffffffd969 %L0x7fffffffd969 %rax;
(* #je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! PC = 0x55555555655a *)
#je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! 0x55555555655a = 0x55555555655a;
(* movzbl -0x3e(%rbp),%eax                         #! EA = L0x7fffffffd852; Value = 0xa200094235452d0a; PC = 0x55555555655c *)
mov %rax %L0x7fffffffd852;
(* xor    %al,0x2(%r12)                            #! EA = L0x7fffffffd96a; PC = 0x555555556560 *)
adds %dc %L0x7fffffffd96a %L0x7fffffffd96a %rax;
(* #je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! PC = 0x555555556569 *)
#je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! 0x555555556569 = 0x555555556569;
(* movzbl -0x3d(%rbp),%eax                         #! EA = L0x7fffffffd853; Value = 0x5da200094235452d; PC = 0x55555555656b *)
mov %rax %L0x7fffffffd853;
(* xor    %al,0x3(%r12)                            #! EA = L0x7fffffffd96b; PC = 0x55555555656f *)
adds %dc %L0x7fffffffd96b %L0x7fffffffd96b %rax;
(* #je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! PC = 0x555555556578 *)
#je     0x5555555565a1 <_gf256v_madd_u64_aligned+257>#! 0x555555556578 = 0x555555556578;
(* mov    -0x38(%rbp),%rax                         #! EA = L0x7fffffffd858; Value = 0x7c997405dc5da200; PC = 0x5555555565a1 *)
mov %rax %L0x7fffffffd858;
(* sub    %fs:0x28,%rax                            #! PC = 0x5555555565a5 *)
(* sub %fs:0x28, rax *)
nop;
(* #jne    0x5555555565c8 <_gf256v_madd_u64_aligned+296>#! PC = 0x5555555565ae *)
#jne    0x5555555565c8 <_gf256v_madd_u64_aligned+296>#! 0x5555555565ae = 0x5555555565ae;
(* add    $0x28,%rsp                               #! PC = 0x5555555565b0 *)
(* add 0x28, rsp *)
nop;
(* #! <- SP = 0x7fffffffd898 *)
#! 0x7fffffffd898 = 0x7fffffffd898;
(* #ret                                            #! PC = 0x5555555565be *)
#ret                                            #! 0x5555555565be = 0x5555555565be;

mov
  [r000,r001,r002,r003,r004,r005,r006,r007,r008,r009,r00a,r00b,r00c,r00d,r00e,r00f,
   r010,r011,r012,r013,r014,r015,r016,r017,r018,r019,r01a,r01b,r01c,r01d,r01e,r01f,
   r020,r021,r022,r023,r024,r025,r026,r027,r028,r029,r02a,r02b,r02c,r02d,r02e,r02f,
   r030,r031,r032,r033,r034,r035,r036,r037,r038,r039,r03a,r03b,r03c,r03d,r03e,r03f]
   %L0x7fffffffd940;
mov
  [r100,r101,r102,r103,r104,r105,r106,r107,r108,r109,r10a,r10b,r10c,r10d,r10e,r10f,
   r110,r111,r112,r113,r114,r115,r116,r117,r118,r119,r11a,r11b,r11c,r11d,r11e,r11f,
   r120,r121,r122,r123,r124,r125,r126,r127,r128,r129,r12a,r12b,r12c,r12d,r12e,r12f,
   r130,r131,r132,r133,r134,r135,r136,r137,r138,r139,r13a,r13b,r13c,r13d,r13e,r13f]
   %L0x7fffffffd948;
mov
  [r200,r201,r202,r203,r204,r205,r206,r207,r208,r209,r20a,r20b,r20c,r20d,r20e,r20f,
   r210,r211,r212,r213,r214,r215,r216,r217,r218,r219,r21a,r21b,r21c,r21d,r21e,r21f,
   r220,r221,r222,r223,r224,r225,r226,r227,r228,r229,r22a,r22b,r22c,r22d,r22e,r22f,
   r230,r231,r232,r233,r234,r235,r236,r237,r238,r239,r23a,r23b,r23c,r23d,r23e,r23f]
   %L0x7fffffffd950;
mov
  [r300,r301,r302,r303,r304,r305,r306,r307,r308,r309,r30a,r30b,r30c,r30d,r30e,r30f,
   r310,r311,r312,r313,r314,r315,r316,r317,r318,r319,r31a,r31b,r31c,r31d,r31e,r31f,
   r320,r321,r322,r323,r324,r325,r326,r327,r328,r329,r32a,r32b,r32c,r32d,r32e,r32f,
   r330,r331,r332,r333,r334,r335,r336,r337,r338,r339,r33a,r33b,r33c,r33d,r33e,r33f]
   %L0x7fffffffd958;
mov
  [r400,r401,r402,r403,r404,r405,r406,r407,r408,r409,r40a,r40b,r40c,r40d,r40e,r40f,
   r410,r411,r412,r413,r414,r415,r416,r417,r418,r419,r41a,r41b,r41c,r41d,r41e,r41f,
   r420,r421,r422,r423,r424,r425,r426,r427,r428,r429,r42a,r42b,r42c,r42d,r42e,r42f,
   r430,r431,r432,r433,r434,r435,r436,r437,r438,r439,r43a,r43b,r43c,r43d,r43e,r43f]
   %L0x7fffffffd960;
mov [r500,r501,r502,r503,r504,r505,r506,r507] %L0x7fffffffd968;
mov [r508,r509,r50a,r50b,r50c,r50d,r50e,r50f] %L0x7fffffffd969;
mov [r510,r511,r512,r513,r514,r515,r516,r517] %L0x7fffffffd96a;
mov [r518,r519,r51a,r51b,r51c,r51d,r51e,r51f] %L0x7fffffffd96b;
{
  and [
eqmod r000+r001*Z**1+r002*Z**2+r003*Z**3+r004*Z**4+r005*Z**5+r006*Z**6+r007*Z**7
      (A000+A001*Z**1+A002*Z**2+A003*Z**3+A004*Z**4+A005*Z**5+A006*Z**6+A007*Z**7)+
      (a000+a001*Z**1+a002*Z**2+a003*Z**3+a004*Z**4+a005*Z**5+a006*Z**6+a007*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r008+r009*Z**1+r00a*Z**2+r00b*Z**3+r00c*Z**4+r00d*Z**5+r00e*Z**6+r00f*Z**7
      (A008+A009*Z**1+A00a*Z**2+A00b*Z**3+A00c*Z**4+A00d*Z**5+A00e*Z**6+A00f*Z**7)+
      (a008+a009*Z**1+a00a*Z**2+a00b*Z**3+a00c*Z**4+a00d*Z**5+a00e*Z**6+a00f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r010+r011*Z**1+r012*Z**2+r013*Z**3+r014*Z**4+r015*Z**5+r016*Z**6+r017*Z**7
      (A010+A011*Z**1+A012*Z**2+A013*Z**3+A014*Z**4+A015*Z**5+A016*Z**6+A017*Z**7)+
      (a010+a011*Z**1+a012*Z**2+a013*Z**3+a014*Z**4+a015*Z**5+a016*Z**6+a017*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r018+r019*Z**1+r01a*Z**2+r01b*Z**3+r01c*Z**4+r01d*Z**5+r01e*Z**6+r01f*Z**7
      (A018+A019*Z**1+A01a*Z**2+A01b*Z**3+A01c*Z**4+A01d*Z**5+A01e*Z**6+A01f*Z**7)+
      (a018+a019*Z**1+a01a*Z**2+a01b*Z**3+a01c*Z**4+a01d*Z**5+a01e*Z**6+a01f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r020+r021*Z**1+r022*Z**2+r023*Z**3+r024*Z**4+r025*Z**5+r026*Z**6+r027*Z**7
      (A020+A021*Z**1+A022*Z**2+A023*Z**3+A024*Z**4+A025*Z**5+A026*Z**6+A027*Z**7)+
      (a020+a021*Z**1+a022*Z**2+a023*Z**3+a024*Z**4+a025*Z**5+a026*Z**6+a027*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r028+r029*Z**1+r02a*Z**2+r02b*Z**3+r02c*Z**4+r02d*Z**5+r02e*Z**6+r02f*Z**7
      (A028+A029*Z**1+A02a*Z**2+A02b*Z**3+A02c*Z**4+A02d*Z**5+A02e*Z**6+A02f*Z**7)+
      (a028+a029*Z**1+a02a*Z**2+a02b*Z**3+a02c*Z**4+a02d*Z**5+a02e*Z**6+a02f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r030+r031*Z**1+r032*Z**2+r033*Z**3+r034*Z**4+r035*Z**5+r036*Z**6+r037*Z**7
      (A030+A031*Z**1+A032*Z**2+A033*Z**3+A034*Z**4+A035*Z**5+A036*Z**6+A037*Z**7)+
      (a030+a031*Z**1+a032*Z**2+a033*Z**3+a034*Z**4+a035*Z**5+a036*Z**6+a037*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r038+r039*Z**1+r03a*Z**2+r03b*Z**3+r03c*Z**4+r03d*Z**5+r03e*Z**6+r03f*Z**7
      (A038+A039*Z**1+A03a*Z**2+A03b*Z**3+A03c*Z**4+A03d*Z**5+A03e*Z**6+A03f*Z**7)+
      (a038+a039*Z**1+a03a*Z**2+a03b*Z**3+a03c*Z**4+a03d*Z**5+a03e*Z**6+a03f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r100+r101*Z**1+r102*Z**2+r103*Z**3+r104*Z**4+r105*Z**5+r106*Z**6+r107*Z**7
      (A100+A101*Z**1+A102*Z**2+A103*Z**3+A104*Z**4+A105*Z**5+A106*Z**6+A107*Z**7)+
      (a100+a101*Z**1+a102*Z**2+a103*Z**3+a104*Z**4+a105*Z**5+a106*Z**6+a107*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r108+r109*Z**1+r10a*Z**2+r10b*Z**3+r10c*Z**4+r10d*Z**5+r10e*Z**6+r10f*Z**7
      (A108+A109*Z**1+A10a*Z**2+A10b*Z**3+A10c*Z**4+A10d*Z**5+A10e*Z**6+A10f*Z**7)+
      (a108+a109*Z**1+a10a*Z**2+a10b*Z**3+a10c*Z**4+a10d*Z**5+a10e*Z**6+a10f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r110+r111*Z**1+r112*Z**2+r113*Z**3+r114*Z**4+r115*Z**5+r116*Z**6+r117*Z**7
      (A110+A111*Z**1+A112*Z**2+A113*Z**3+A114*Z**4+A115*Z**5+A116*Z**6+A117*Z**7)+
      (a110+a111*Z**1+a112*Z**2+a113*Z**3+a114*Z**4+a115*Z**5+a116*Z**6+a117*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r118+r119*Z**1+r11a*Z**2+r11b*Z**3+r11c*Z**4+r11d*Z**5+r11e*Z**6+r11f*Z**7
      (A118+A119*Z**1+A11a*Z**2+A11b*Z**3+A11c*Z**4+A11d*Z**5+A11e*Z**6+A11f*Z**7)+
      (a118+a119*Z**1+a11a*Z**2+a11b*Z**3+a11c*Z**4+a11d*Z**5+a11e*Z**6+a11f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r120+r121*Z**1+r122*Z**2+r123*Z**3+r124*Z**4+r125*Z**5+r126*Z**6+r127*Z**7
      (A120+A121*Z**1+A122*Z**2+A123*Z**3+A124*Z**4+A125*Z**5+A126*Z**6+A127*Z**7)+
      (a120+a121*Z**1+a122*Z**2+a123*Z**3+a124*Z**4+a125*Z**5+a126*Z**6+a127*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r128+r129*Z**1+r12a*Z**2+r12b*Z**3+r12c*Z**4+r12d*Z**5+r12e*Z**6+r12f*Z**7
      (A128+A129*Z**1+A12a*Z**2+A12b*Z**3+A12c*Z**4+A12d*Z**5+A12e*Z**6+A12f*Z**7)+
      (a128+a129*Z**1+a12a*Z**2+a12b*Z**3+a12c*Z**4+a12d*Z**5+a12e*Z**6+a12f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r130+r131*Z**1+r132*Z**2+r133*Z**3+r134*Z**4+r135*Z**5+r136*Z**6+r137*Z**7
      (A130+A131*Z**1+A132*Z**2+A133*Z**3+A134*Z**4+A135*Z**5+A136*Z**6+A137*Z**7)+
      (a130+a131*Z**1+a132*Z**2+a133*Z**3+a134*Z**4+a135*Z**5+a136*Z**6+a137*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r138+r139*Z**1+r13a*Z**2+r13b*Z**3+r13c*Z**4+r13d*Z**5+r13e*Z**6+r13f*Z**7
      (A138+A139*Z**1+A13a*Z**2+A13b*Z**3+A13c*Z**4+A13d*Z**5+A13e*Z**6+A13f*Z**7)+
      (a138+a139*Z**1+a13a*Z**2+a13b*Z**3+a13c*Z**4+a13d*Z**5+a13e*Z**6+a13f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r200+r201*Z**1+r202*Z**2+r203*Z**3+r204*Z**4+r205*Z**5+r206*Z**6+r207*Z**7
      (A200+A201*Z**1+A202*Z**2+A203*Z**3+A204*Z**4+A205*Z**5+A206*Z**6+A207*Z**7)+
      (a200+a201*Z**1+a202*Z**2+a203*Z**3+a204*Z**4+a205*Z**5+a206*Z**6+a207*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r208+r209*Z**1+r20a*Z**2+r20b*Z**3+r20c*Z**4+r20d*Z**5+r20e*Z**6+r20f*Z**7
      (A208+A209*Z**1+A20a*Z**2+A20b*Z**3+A20c*Z**4+A20d*Z**5+A20e*Z**6+A20f*Z**7)+
      (a208+a209*Z**1+a20a*Z**2+a20b*Z**3+a20c*Z**4+a20d*Z**5+a20e*Z**6+a20f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r210+r211*Z**1+r212*Z**2+r213*Z**3+r214*Z**4+r215*Z**5+r216*Z**6+r217*Z**7
      (A210+A211*Z**1+A212*Z**2+A213*Z**3+A214*Z**4+A215*Z**5+A216*Z**6+A217*Z**7)+
      (a210+a211*Z**1+a212*Z**2+a213*Z**3+a214*Z**4+a215*Z**5+a216*Z**6+a217*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r218+r219*Z**1+r21a*Z**2+r21b*Z**3+r21c*Z**4+r21d*Z**5+r21e*Z**6+r21f*Z**7
      (A218+A219*Z**1+A21a*Z**2+A21b*Z**3+A21c*Z**4+A21d*Z**5+A21e*Z**6+A21f*Z**7)+
      (a218+a219*Z**1+a21a*Z**2+a21b*Z**3+a21c*Z**4+a21d*Z**5+a21e*Z**6+a21f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r220+r221*Z**1+r222*Z**2+r223*Z**3+r224*Z**4+r225*Z**5+r226*Z**6+r227*Z**7
      (A220+A221*Z**1+A222*Z**2+A223*Z**3+A224*Z**4+A225*Z**5+A226*Z**6+A227*Z**7)+
      (a220+a221*Z**1+a222*Z**2+a223*Z**3+a224*Z**4+a225*Z**5+a226*Z**6+a227*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r228+r229*Z**1+r22a*Z**2+r22b*Z**3+r22c*Z**4+r22d*Z**5+r22e*Z**6+r22f*Z**7
      (A228+A229*Z**1+A22a*Z**2+A22b*Z**3+A22c*Z**4+A22d*Z**5+A22e*Z**6+A22f*Z**7)+
      (a228+a229*Z**1+a22a*Z**2+a22b*Z**3+a22c*Z**4+a22d*Z**5+a22e*Z**6+a22f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r230+r231*Z**1+r232*Z**2+r233*Z**3+r234*Z**4+r235*Z**5+r236*Z**6+r237*Z**7
      (A230+A231*Z**1+A232*Z**2+A233*Z**3+A234*Z**4+A235*Z**5+A236*Z**6+A237*Z**7)+
      (a230+a231*Z**1+a232*Z**2+a233*Z**3+a234*Z**4+a235*Z**5+a236*Z**6+a237*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r238+r239*Z**1+r23a*Z**2+r23b*Z**3+r23c*Z**4+r23d*Z**5+r23e*Z**6+r23f*Z**7
      (A238+A239*Z**1+A23a*Z**2+A23b*Z**3+A23c*Z**4+A23d*Z**5+A23e*Z**6+A23f*Z**7)+
      (a238+a239*Z**1+a23a*Z**2+a23b*Z**3+a23c*Z**4+a23d*Z**5+a23e*Z**6+a23f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r300+r301*Z**1+r302*Z**2+r303*Z**3+r304*Z**4+r305*Z**5+r306*Z**6+r307*Z**7
      (A300+A301*Z**1+A302*Z**2+A303*Z**3+A304*Z**4+A305*Z**5+A306*Z**6+A307*Z**7)+
      (a300+a301*Z**1+a302*Z**2+a303*Z**3+a304*Z**4+a305*Z**5+a306*Z**6+a307*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r308+r309*Z**1+r30a*Z**2+r30b*Z**3+r30c*Z**4+r30d*Z**5+r30e*Z**6+r30f*Z**7
      (A308+A309*Z**1+A30a*Z**2+A30b*Z**3+A30c*Z**4+A30d*Z**5+A30e*Z**6+A30f*Z**7)+
      (a308+a309*Z**1+a30a*Z**2+a30b*Z**3+a30c*Z**4+a30d*Z**5+a30e*Z**6+a30f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r310+r311*Z**1+r312*Z**2+r313*Z**3+r314*Z**4+r315*Z**5+r316*Z**6+r317*Z**7
      (A310+A311*Z**1+A312*Z**2+A313*Z**3+A314*Z**4+A315*Z**5+A316*Z**6+A317*Z**7)+
      (a310+a311*Z**1+a312*Z**2+a313*Z**3+a314*Z**4+a315*Z**5+a316*Z**6+a317*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r318+r319*Z**1+r31a*Z**2+r31b*Z**3+r31c*Z**4+r31d*Z**5+r31e*Z**6+r31f*Z**7
      (A318+A319*Z**1+A31a*Z**2+A31b*Z**3+A31c*Z**4+A31d*Z**5+A31e*Z**6+A31f*Z**7)+
      (a318+a319*Z**1+a31a*Z**2+a31b*Z**3+a31c*Z**4+a31d*Z**5+a31e*Z**6+a31f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r320+r321*Z**1+r322*Z**2+r323*Z**3+r324*Z**4+r325*Z**5+r326*Z**6+r327*Z**7
      (A320+A321*Z**1+A322*Z**2+A323*Z**3+A324*Z**4+A325*Z**5+A326*Z**6+A327*Z**7)+
      (a320+a321*Z**1+a322*Z**2+a323*Z**3+a324*Z**4+a325*Z**5+a326*Z**6+a327*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r328+r329*Z**1+r32a*Z**2+r32b*Z**3+r32c*Z**4+r32d*Z**5+r32e*Z**6+r32f*Z**7
      (A328+A329*Z**1+A32a*Z**2+A32b*Z**3+A32c*Z**4+A32d*Z**5+A32e*Z**6+A32f*Z**7)+
      (a328+a329*Z**1+a32a*Z**2+a32b*Z**3+a32c*Z**4+a32d*Z**5+a32e*Z**6+a32f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r330+r331*Z**1+r332*Z**2+r333*Z**3+r334*Z**4+r335*Z**5+r336*Z**6+r337*Z**7
      (A330+A331*Z**1+A332*Z**2+A333*Z**3+A334*Z**4+A335*Z**5+A336*Z**6+A337*Z**7)+
      (a330+a331*Z**1+a332*Z**2+a333*Z**3+a334*Z**4+a335*Z**5+a336*Z**6+a337*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r338+r339*Z**1+r33a*Z**2+r33b*Z**3+r33c*Z**4+r33d*Z**5+r33e*Z**6+r33f*Z**7
      (A338+A339*Z**1+A33a*Z**2+A33b*Z**3+A33c*Z**4+A33d*Z**5+A33e*Z**6+A33f*Z**7)+
      (a338+a339*Z**1+a33a*Z**2+a33b*Z**3+a33c*Z**4+a33d*Z**5+a33e*Z**6+a33f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r400+r401*Z**1+r402*Z**2+r403*Z**3+r404*Z**4+r405*Z**5+r406*Z**6+r407*Z**7
      (A400+A401*Z**1+A402*Z**2+A403*Z**3+A404*Z**4+A405*Z**5+A406*Z**6+A407*Z**7)+
      (a400+a401*Z**1+a402*Z**2+a403*Z**3+a404*Z**4+a405*Z**5+a406*Z**6+a407*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r408+r409*Z**1+r40a*Z**2+r40b*Z**3+r40c*Z**4+r40d*Z**5+r40e*Z**6+r40f*Z**7
      (A408+A409*Z**1+A40a*Z**2+A40b*Z**3+A40c*Z**4+A40d*Z**5+A40e*Z**6+A40f*Z**7)+
      (a408+a409*Z**1+a40a*Z**2+a40b*Z**3+a40c*Z**4+a40d*Z**5+a40e*Z**6+a40f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r410+r411*Z**1+r412*Z**2+r413*Z**3+r414*Z**4+r415*Z**5+r416*Z**6+r417*Z**7
      (A410+A411*Z**1+A412*Z**2+A413*Z**3+A414*Z**4+A415*Z**5+A416*Z**6+A417*Z**7)+
      (a410+a411*Z**1+a412*Z**2+a413*Z**3+a414*Z**4+a415*Z**5+a416*Z**6+a417*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r418+r419*Z**1+r41a*Z**2+r41b*Z**3+r41c*Z**4+r41d*Z**5+r41e*Z**6+r41f*Z**7
      (A418+A419*Z**1+A41a*Z**2+A41b*Z**3+A41c*Z**4+A41d*Z**5+A41e*Z**6+A41f*Z**7)+
      (a418+a419*Z**1+a41a*Z**2+a41b*Z**3+a41c*Z**4+a41d*Z**5+a41e*Z**6+a41f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r420+r421*Z**1+r422*Z**2+r423*Z**3+r424*Z**4+r425*Z**5+r426*Z**6+r427*Z**7
      (A420+A421*Z**1+A422*Z**2+A423*Z**3+A424*Z**4+A425*Z**5+A426*Z**6+A427*Z**7)+
      (a420+a421*Z**1+a422*Z**2+a423*Z**3+a424*Z**4+a425*Z**5+a426*Z**6+a427*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r428+r429*Z**1+r42a*Z**2+r42b*Z**3+r42c*Z**4+r42d*Z**5+r42e*Z**6+r42f*Z**7
      (A428+A429*Z**1+A42a*Z**2+A42b*Z**3+A42c*Z**4+A42d*Z**5+A42e*Z**6+A42f*Z**7)+
      (a428+a429*Z**1+a42a*Z**2+a42b*Z**3+a42c*Z**4+a42d*Z**5+a42e*Z**6+a42f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r430+r431*Z**1+r432*Z**2+r433*Z**3+r434*Z**4+r435*Z**5+r436*Z**6+r437*Z**7
      (A430+A431*Z**1+A432*Z**2+A433*Z**3+A434*Z**4+A435*Z**5+A436*Z**6+A437*Z**7)+
      (a430+a431*Z**1+a432*Z**2+a433*Z**3+a434*Z**4+a435*Z**5+a436*Z**6+a437*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r438+r439*Z**1+r43a*Z**2+r43b*Z**3+r43c*Z**4+r43d*Z**5+r43e*Z**6+r43f*Z**7
      (A438+A439*Z**1+A43a*Z**2+A43b*Z**3+A43c*Z**4+A43d*Z**5+A43e*Z**6+A43f*Z**7)+
      (a438+a439*Z**1+a43a*Z**2+a43b*Z**3+a43c*Z**4+a43d*Z**5+a43e*Z**6+a43f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r500+r501*Z**1+r502*Z**2+r503*Z**3+r504*Z**4+r505*Z**5+r506*Z**6+r507*Z**7
      (A500+A501*Z**1+A502*Z**2+A503*Z**3+A504*Z**4+A505*Z**5+A506*Z**6+A507*Z**7)+
      (a500+a501*Z**1+a502*Z**2+a503*Z**3+a504*Z**4+a505*Z**5+a506*Z**6+a507*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r508+r509*Z**1+r50a*Z**2+r50b*Z**3+r50c*Z**4+r50d*Z**5+r50e*Z**6+r50f*Z**7
      (A508+A509*Z**1+A50a*Z**2+A50b*Z**3+A50c*Z**4+A50d*Z**5+A50e*Z**6+A50f*Z**7)+
      (a508+a509*Z**1+a50a*Z**2+a50b*Z**3+a50c*Z**4+a50d*Z**5+a50e*Z**6+a50f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r510+r511*Z**1+r512*Z**2+r513*Z**3+r514*Z**4+r515*Z**5+r516*Z**6+r517*Z**7
      (A510+A511*Z**1+A512*Z**2+A513*Z**3+A514*Z**4+A515*Z**5+A516*Z**6+A517*Z**7)+
      (a510+a511*Z**1+a512*Z**2+a513*Z**3+a514*Z**4+a515*Z**5+a516*Z**6+a517*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2],
eqmod r518+r519*Z**1+r51a*Z**2+r51b*Z**3+r51c*Z**4+r51d*Z**5+r51e*Z**6+r51f*Z**7
      (A518+A519*Z**1+A51a*Z**2+A51b*Z**3+A51c*Z**4+A51d*Z**5+A51e*Z**6+A51f*Z**7)+
      (a518+a519*Z**1+a51a*Z**2+a51b*Z**3+a51c*Z**4+a51d*Z**5+a51e*Z**6+a51f*Z**7)*
      (b00+b01*Z**1+b02*Z**2+b03*Z**3+b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
      [Z**8+Z**4+Z**3+Z**1+1, 2]
      ]
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
  uint8 acc30, uint8 acc31, uint8 acc32, uint8 acc33,
  uint8 acc34, uint8 acc35, uint8 acc36, uint8 acc37,
  uint8 acc38, uint8 acc39, uint8 acc3a, uint8 acc3b,
  uint8 acc3c, uint8 acc3d, uint8 acc3e, uint8 acc3f,
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
  uint8 a30, uint8 a31, uint8 a32, uint8 a33,
  uint8 a34, uint8 a35, uint8 a36, uint8 a37,
  uint8 a38, uint8 a39, uint8 a3a, uint8 a3b,
  uint8 a3c, uint8 a3d, uint8 a3e, uint8 a3f,
  uint8 b
) = 
{
  true
  &&
  true
}

(* ========== generate inputs ========== *)

(* generate nondet inputs acc40 to acc57 *)
nondet acc40@uint8;  nondet acc41@uint8;
nondet acc42@uint8;  nondet acc43@uint8;
nondet acc44@uint8;  nondet acc45@uint8;
nondet acc46@uint8;  nondet acc47@uint8;
nondet acc48@uint8;  nondet acc49@uint8;
nondet acc4a@uint8;  nondet acc4b@uint8;
nondet acc4c@uint8;  nondet acc4d@uint8;
nondet acc4e@uint8;  nondet acc4f@uint8;
nondet acc50@uint8;  nondet acc51@uint8;
nondet acc52@uint8;  nondet acc53@uint8;
nondet acc54@uint8;  nondet acc55@uint8;
nondet acc56@uint8;  nondet acc57@uint8;
(* generate nondet inputs a40 to a57 *)
nondet a40@uint8;  nondet a41@uint8;
nondet a42@uint8;  nondet a43@uint8;
nondet a44@uint8;  nondet a45@uint8;
nondet a46@uint8;  nondet a47@uint8;
nondet a48@uint8;  nondet a49@uint8;
nondet a4a@uint8;  nondet a4b@uint8;
nondet a4c@uint8;  nondet a4d@uint8;
nondet a4e@uint8;  nondet a4f@uint8;
nondet a50@uint8;  nondet a51@uint8;
nondet a52@uint8;  nondet a53@uint8;
nondet a54@uint8;  nondet a55@uint8;
nondet a56@uint8;  nondet a57@uint8;

nondet Z@bit;

(* ========== split inputs ========== *)

(* split acc *)
spl tmp acc00_0 acc00 1; spl tmp acc00_1 tmp 1;
spl tmp acc00_2 tmp 1; spl tmp acc00_3 tmp 1;
spl tmp acc00_4 tmp 1; spl tmp acc00_5 tmp 1;
spl acc00_7 acc00_6 tmp 1;
spl tmp acc01_0 acc01 1; spl tmp acc01_1 tmp 1;
spl tmp acc01_2 tmp 1; spl tmp acc01_3 tmp 1;
spl tmp acc01_4 tmp 1; spl tmp acc01_5 tmp 1;
spl acc01_7 acc01_6 tmp 1;
spl tmp acc02_0 acc02 1; spl tmp acc02_1 tmp 1;
spl tmp acc02_2 tmp 1; spl tmp acc02_3 tmp 1;
spl tmp acc02_4 tmp 1; spl tmp acc02_5 tmp 1;
spl acc02_7 acc02_6 tmp 1;
spl tmp acc03_0 acc03 1; spl tmp acc03_1 tmp 1;
spl tmp acc03_2 tmp 1; spl tmp acc03_3 tmp 1;
spl tmp acc03_4 tmp 1; spl tmp acc03_5 tmp 1;
spl acc03_7 acc03_6 tmp 1;
spl tmp acc04_0 acc04 1; spl tmp acc04_1 tmp 1;
spl tmp acc04_2 tmp 1; spl tmp acc04_3 tmp 1;
spl tmp acc04_4 tmp 1; spl tmp acc04_5 tmp 1;
spl acc04_7 acc04_6 tmp 1;
spl tmp acc05_0 acc05 1; spl tmp acc05_1 tmp 1;
spl tmp acc05_2 tmp 1; spl tmp acc05_3 tmp 1;
spl tmp acc05_4 tmp 1; spl tmp acc05_5 tmp 1;
spl acc05_7 acc05_6 tmp 1;
spl tmp acc06_0 acc06 1; spl tmp acc06_1 tmp 1;
spl tmp acc06_2 tmp 1; spl tmp acc06_3 tmp 1;
spl tmp acc06_4 tmp 1; spl tmp acc06_5 tmp 1;
spl acc06_7 acc06_6 tmp 1;
spl tmp acc07_0 acc07 1; spl tmp acc07_1 tmp 1;
spl tmp acc07_2 tmp 1; spl tmp acc07_3 tmp 1;
spl tmp acc07_4 tmp 1; spl tmp acc07_5 tmp 1;
spl acc07_7 acc07_6 tmp 1;
spl tmp acc08_0 acc08 1; spl tmp acc08_1 tmp 1;
spl tmp acc08_2 tmp 1; spl tmp acc08_3 tmp 1;
spl tmp acc08_4 tmp 1; spl tmp acc08_5 tmp 1;
spl acc08_7 acc08_6 tmp 1;
spl tmp acc09_0 acc09 1; spl tmp acc09_1 tmp 1;
spl tmp acc09_2 tmp 1; spl tmp acc09_3 tmp 1;
spl tmp acc09_4 tmp 1; spl tmp acc09_5 tmp 1;
spl acc09_7 acc09_6 tmp 1;
spl tmp acc0a_0 acc0a 1; spl tmp acc0a_1 tmp 1;
spl tmp acc0a_2 tmp 1; spl tmp acc0a_3 tmp 1;
spl tmp acc0a_4 tmp 1; spl tmp acc0a_5 tmp 1;
spl acc0a_7 acc0a_6 tmp 1;
spl tmp acc0b_0 acc0b 1; spl tmp acc0b_1 tmp 1;
spl tmp acc0b_2 tmp 1; spl tmp acc0b_3 tmp 1;
spl tmp acc0b_4 tmp 1; spl tmp acc0b_5 tmp 1;
spl acc0b_7 acc0b_6 tmp 1;
spl tmp acc0c_0 acc0c 1; spl tmp acc0c_1 tmp 1;
spl tmp acc0c_2 tmp 1; spl tmp acc0c_3 tmp 1;
spl tmp acc0c_4 tmp 1; spl tmp acc0c_5 tmp 1;
spl acc0c_7 acc0c_6 tmp 1;
spl tmp acc0d_0 acc0d 1; spl tmp acc0d_1 tmp 1;
spl tmp acc0d_2 tmp 1; spl tmp acc0d_3 tmp 1;
spl tmp acc0d_4 tmp 1; spl tmp acc0d_5 tmp 1;
spl acc0d_7 acc0d_6 tmp 1;
spl tmp acc0e_0 acc0e 1; spl tmp acc0e_1 tmp 1;
spl tmp acc0e_2 tmp 1; spl tmp acc0e_3 tmp 1;
spl tmp acc0e_4 tmp 1; spl tmp acc0e_5 tmp 1;
spl acc0e_7 acc0e_6 tmp 1;
spl tmp acc0f_0 acc0f 1; spl tmp acc0f_1 tmp 1;
spl tmp acc0f_2 tmp 1; spl tmp acc0f_3 tmp 1;
spl tmp acc0f_4 tmp 1; spl tmp acc0f_5 tmp 1;
spl acc0f_7 acc0f_6 tmp 1;
spl tmp acc10_0 acc10 1; spl tmp acc10_1 tmp 1;
spl tmp acc10_2 tmp 1; spl tmp acc10_3 tmp 1;
spl tmp acc10_4 tmp 1; spl tmp acc10_5 tmp 1;
spl acc10_7 acc10_6 tmp 1;
spl tmp acc11_0 acc11 1; spl tmp acc11_1 tmp 1;
spl tmp acc11_2 tmp 1; spl tmp acc11_3 tmp 1;
spl tmp acc11_4 tmp 1; spl tmp acc11_5 tmp 1;
spl acc11_7 acc11_6 tmp 1;
spl tmp acc12_0 acc12 1; spl tmp acc12_1 tmp 1;
spl tmp acc12_2 tmp 1; spl tmp acc12_3 tmp 1;
spl tmp acc12_4 tmp 1; spl tmp acc12_5 tmp 1;
spl acc12_7 acc12_6 tmp 1;
spl tmp acc13_0 acc13 1; spl tmp acc13_1 tmp 1;
spl tmp acc13_2 tmp 1; spl tmp acc13_3 tmp 1;
spl tmp acc13_4 tmp 1; spl tmp acc13_5 tmp 1;
spl acc13_7 acc13_6 tmp 1;
spl tmp acc14_0 acc14 1; spl tmp acc14_1 tmp 1;
spl tmp acc14_2 tmp 1; spl tmp acc14_3 tmp 1;
spl tmp acc14_4 tmp 1; spl tmp acc14_5 tmp 1;
spl acc14_7 acc14_6 tmp 1;
spl tmp acc15_0 acc15 1; spl tmp acc15_1 tmp 1;
spl tmp acc15_2 tmp 1; spl tmp acc15_3 tmp 1;
spl tmp acc15_4 tmp 1; spl tmp acc15_5 tmp 1;
spl acc15_7 acc15_6 tmp 1;
spl tmp acc16_0 acc16 1; spl tmp acc16_1 tmp 1;
spl tmp acc16_2 tmp 1; spl tmp acc16_3 tmp 1;
spl tmp acc16_4 tmp 1; spl tmp acc16_5 tmp 1;
spl acc16_7 acc16_6 tmp 1;
spl tmp acc17_0 acc17 1; spl tmp acc17_1 tmp 1;
spl tmp acc17_2 tmp 1; spl tmp acc17_3 tmp 1;
spl tmp acc17_4 tmp 1; spl tmp acc17_5 tmp 1;
spl acc17_7 acc17_6 tmp 1;
spl tmp acc18_0 acc18 1; spl tmp acc18_1 tmp 1;
spl tmp acc18_2 tmp 1; spl tmp acc18_3 tmp 1;
spl tmp acc18_4 tmp 1; spl tmp acc18_5 tmp 1;
spl acc18_7 acc18_6 tmp 1;
spl tmp acc19_0 acc19 1; spl tmp acc19_1 tmp 1;
spl tmp acc19_2 tmp 1; spl tmp acc19_3 tmp 1;
spl tmp acc19_4 tmp 1; spl tmp acc19_5 tmp 1;
spl acc19_7 acc19_6 tmp 1;
spl tmp acc1a_0 acc1a 1; spl tmp acc1a_1 tmp 1;
spl tmp acc1a_2 tmp 1; spl tmp acc1a_3 tmp 1;
spl tmp acc1a_4 tmp 1; spl tmp acc1a_5 tmp 1;
spl acc1a_7 acc1a_6 tmp 1;
spl tmp acc1b_0 acc1b 1; spl tmp acc1b_1 tmp 1;
spl tmp acc1b_2 tmp 1; spl tmp acc1b_3 tmp 1;
spl tmp acc1b_4 tmp 1; spl tmp acc1b_5 tmp 1;
spl acc1b_7 acc1b_6 tmp 1;
spl tmp acc1c_0 acc1c 1; spl tmp acc1c_1 tmp 1;
spl tmp acc1c_2 tmp 1; spl tmp acc1c_3 tmp 1;
spl tmp acc1c_4 tmp 1; spl tmp acc1c_5 tmp 1;
spl acc1c_7 acc1c_6 tmp 1;
spl tmp acc1d_0 acc1d 1; spl tmp acc1d_1 tmp 1;
spl tmp acc1d_2 tmp 1; spl tmp acc1d_3 tmp 1;
spl tmp acc1d_4 tmp 1; spl tmp acc1d_5 tmp 1;
spl acc1d_7 acc1d_6 tmp 1;
spl tmp acc1e_0 acc1e 1; spl tmp acc1e_1 tmp 1;
spl tmp acc1e_2 tmp 1; spl tmp acc1e_3 tmp 1;
spl tmp acc1e_4 tmp 1; spl tmp acc1e_5 tmp 1;
spl acc1e_7 acc1e_6 tmp 1;
spl tmp acc1f_0 acc1f 1; spl tmp acc1f_1 tmp 1;
spl tmp acc1f_2 tmp 1; spl tmp acc1f_3 tmp 1;
spl tmp acc1f_4 tmp 1; spl tmp acc1f_5 tmp 1;
spl acc1f_7 acc1f_6 tmp 1;
spl tmp acc20_0 acc20 1; spl tmp acc20_1 tmp 1;
spl tmp acc20_2 tmp 1; spl tmp acc20_3 tmp 1;
spl tmp acc20_4 tmp 1; spl tmp acc20_5 tmp 1;
spl acc20_7 acc20_6 tmp 1;
spl tmp acc21_0 acc21 1; spl tmp acc21_1 tmp 1;
spl tmp acc21_2 tmp 1; spl tmp acc21_3 tmp 1;
spl tmp acc21_4 tmp 1; spl tmp acc21_5 tmp 1;
spl acc21_7 acc21_6 tmp 1;
spl tmp acc22_0 acc22 1; spl tmp acc22_1 tmp 1;
spl tmp acc22_2 tmp 1; spl tmp acc22_3 tmp 1;
spl tmp acc22_4 tmp 1; spl tmp acc22_5 tmp 1;
spl acc22_7 acc22_6 tmp 1;
spl tmp acc23_0 acc23 1; spl tmp acc23_1 tmp 1;
spl tmp acc23_2 tmp 1; spl tmp acc23_3 tmp 1;
spl tmp acc23_4 tmp 1; spl tmp acc23_5 tmp 1;
spl acc23_7 acc23_6 tmp 1;
spl tmp acc24_0 acc24 1; spl tmp acc24_1 tmp 1;
spl tmp acc24_2 tmp 1; spl tmp acc24_3 tmp 1;
spl tmp acc24_4 tmp 1; spl tmp acc24_5 tmp 1;
spl acc24_7 acc24_6 tmp 1;
spl tmp acc25_0 acc25 1; spl tmp acc25_1 tmp 1;
spl tmp acc25_2 tmp 1; spl tmp acc25_3 tmp 1;
spl tmp acc25_4 tmp 1; spl tmp acc25_5 tmp 1;
spl acc25_7 acc25_6 tmp 1;
spl tmp acc26_0 acc26 1; spl tmp acc26_1 tmp 1;
spl tmp acc26_2 tmp 1; spl tmp acc26_3 tmp 1;
spl tmp acc26_4 tmp 1; spl tmp acc26_5 tmp 1;
spl acc26_7 acc26_6 tmp 1;
spl tmp acc27_0 acc27 1; spl tmp acc27_1 tmp 1;
spl tmp acc27_2 tmp 1; spl tmp acc27_3 tmp 1;
spl tmp acc27_4 tmp 1; spl tmp acc27_5 tmp 1;
spl acc27_7 acc27_6 tmp 1;
spl tmp acc28_0 acc28 1; spl tmp acc28_1 tmp 1;
spl tmp acc28_2 tmp 1; spl tmp acc28_3 tmp 1;
spl tmp acc28_4 tmp 1; spl tmp acc28_5 tmp 1;
spl acc28_7 acc28_6 tmp 1;
spl tmp acc29_0 acc29 1; spl tmp acc29_1 tmp 1;
spl tmp acc29_2 tmp 1; spl tmp acc29_3 tmp 1;
spl tmp acc29_4 tmp 1; spl tmp acc29_5 tmp 1;
spl acc29_7 acc29_6 tmp 1;
spl tmp acc2a_0 acc2a 1; spl tmp acc2a_1 tmp 1;
spl tmp acc2a_2 tmp 1; spl tmp acc2a_3 tmp 1;
spl tmp acc2a_4 tmp 1; spl tmp acc2a_5 tmp 1;
spl acc2a_7 acc2a_6 tmp 1;
spl tmp acc2b_0 acc2b 1; spl tmp acc2b_1 tmp 1;
spl tmp acc2b_2 tmp 1; spl tmp acc2b_3 tmp 1;
spl tmp acc2b_4 tmp 1; spl tmp acc2b_5 tmp 1;
spl acc2b_7 acc2b_6 tmp 1;
spl tmp acc2c_0 acc2c 1; spl tmp acc2c_1 tmp 1;
spl tmp acc2c_2 tmp 1; spl tmp acc2c_3 tmp 1;
spl tmp acc2c_4 tmp 1; spl tmp acc2c_5 tmp 1;
spl acc2c_7 acc2c_6 tmp 1;
spl tmp acc2d_0 acc2d 1; spl tmp acc2d_1 tmp 1;
spl tmp acc2d_2 tmp 1; spl tmp acc2d_3 tmp 1;
spl tmp acc2d_4 tmp 1; spl tmp acc2d_5 tmp 1;
spl acc2d_7 acc2d_6 tmp 1;
spl tmp acc2e_0 acc2e 1; spl tmp acc2e_1 tmp 1;
spl tmp acc2e_2 tmp 1; spl tmp acc2e_3 tmp 1;
spl tmp acc2e_4 tmp 1; spl tmp acc2e_5 tmp 1;
spl acc2e_7 acc2e_6 tmp 1;
spl tmp acc2f_0 acc2f 1; spl tmp acc2f_1 tmp 1;
spl tmp acc2f_2 tmp 1; spl tmp acc2f_3 tmp 1;
spl tmp acc2f_4 tmp 1; spl tmp acc2f_5 tmp 1;
spl acc2f_7 acc2f_6 tmp 1;
spl tmp acc30_0 acc30 1; spl tmp acc30_1 tmp 1;
spl tmp acc30_2 tmp 1; spl tmp acc30_3 tmp 1;
spl tmp acc30_4 tmp 1; spl tmp acc30_5 tmp 1;
spl acc30_7 acc30_6 tmp 1;
spl tmp acc31_0 acc31 1; spl tmp acc31_1 tmp 1;
spl tmp acc31_2 tmp 1; spl tmp acc31_3 tmp 1;
spl tmp acc31_4 tmp 1; spl tmp acc31_5 tmp 1;
spl acc31_7 acc31_6 tmp 1;
spl tmp acc32_0 acc32 1; spl tmp acc32_1 tmp 1;
spl tmp acc32_2 tmp 1; spl tmp acc32_3 tmp 1;
spl tmp acc32_4 tmp 1; spl tmp acc32_5 tmp 1;
spl acc32_7 acc32_6 tmp 1;
spl tmp acc33_0 acc33 1; spl tmp acc33_1 tmp 1;
spl tmp acc33_2 tmp 1; spl tmp acc33_3 tmp 1;
spl tmp acc33_4 tmp 1; spl tmp acc33_5 tmp 1;
spl acc33_7 acc33_6 tmp 1;
spl tmp acc34_0 acc34 1; spl tmp acc34_1 tmp 1;
spl tmp acc34_2 tmp 1; spl tmp acc34_3 tmp 1;
spl tmp acc34_4 tmp 1; spl tmp acc34_5 tmp 1;
spl acc34_7 acc34_6 tmp 1;
spl tmp acc35_0 acc35 1; spl tmp acc35_1 tmp 1;
spl tmp acc35_2 tmp 1; spl tmp acc35_3 tmp 1;
spl tmp acc35_4 tmp 1; spl tmp acc35_5 tmp 1;
spl acc35_7 acc35_6 tmp 1;
spl tmp acc36_0 acc36 1; spl tmp acc36_1 tmp 1;
spl tmp acc36_2 tmp 1; spl tmp acc36_3 tmp 1;
spl tmp acc36_4 tmp 1; spl tmp acc36_5 tmp 1;
spl acc36_7 acc36_6 tmp 1;
spl tmp acc37_0 acc37 1; spl tmp acc37_1 tmp 1;
spl tmp acc37_2 tmp 1; spl tmp acc37_3 tmp 1;
spl tmp acc37_4 tmp 1; spl tmp acc37_5 tmp 1;
spl acc37_7 acc37_6 tmp 1;
spl tmp acc38_0 acc38 1; spl tmp acc38_1 tmp 1;
spl tmp acc38_2 tmp 1; spl tmp acc38_3 tmp 1;
spl tmp acc38_4 tmp 1; spl tmp acc38_5 tmp 1;
spl acc38_7 acc38_6 tmp 1;
spl tmp acc39_0 acc39 1; spl tmp acc39_1 tmp 1;
spl tmp acc39_2 tmp 1; spl tmp acc39_3 tmp 1;
spl tmp acc39_4 tmp 1; spl tmp acc39_5 tmp 1;
spl acc39_7 acc39_6 tmp 1;
spl tmp acc3a_0 acc3a 1; spl tmp acc3a_1 tmp 1;
spl tmp acc3a_2 tmp 1; spl tmp acc3a_3 tmp 1;
spl tmp acc3a_4 tmp 1; spl tmp acc3a_5 tmp 1;
spl acc3a_7 acc3a_6 tmp 1;
spl tmp acc3b_0 acc3b 1; spl tmp acc3b_1 tmp 1;
spl tmp acc3b_2 tmp 1; spl tmp acc3b_3 tmp 1;
spl tmp acc3b_4 tmp 1; spl tmp acc3b_5 tmp 1;
spl acc3b_7 acc3b_6 tmp 1;
spl tmp acc3c_0 acc3c 1; spl tmp acc3c_1 tmp 1;
spl tmp acc3c_2 tmp 1; spl tmp acc3c_3 tmp 1;
spl tmp acc3c_4 tmp 1; spl tmp acc3c_5 tmp 1;
spl acc3c_7 acc3c_6 tmp 1;
spl tmp acc3d_0 acc3d 1; spl tmp acc3d_1 tmp 1;
spl tmp acc3d_2 tmp 1; spl tmp acc3d_3 tmp 1;
spl tmp acc3d_4 tmp 1; spl tmp acc3d_5 tmp 1;
spl acc3d_7 acc3d_6 tmp 1;
spl tmp acc3e_0 acc3e 1; spl tmp acc3e_1 tmp 1;
spl tmp acc3e_2 tmp 1; spl tmp acc3e_3 tmp 1;
spl tmp acc3e_4 tmp 1; spl tmp acc3e_5 tmp 1;
spl acc3e_7 acc3e_6 tmp 1;
spl tmp acc3f_0 acc3f 1; spl tmp acc3f_1 tmp 1;
spl tmp acc3f_2 tmp 1; spl tmp acc3f_3 tmp 1;
spl tmp acc3f_4 tmp 1; spl tmp acc3f_5 tmp 1;
spl acc3f_7 acc3f_6 tmp 1;
spl tmp acc40_0 acc40 1; spl tmp acc40_1 tmp 1;
spl tmp acc40_2 tmp 1; spl tmp acc40_3 tmp 1;
spl tmp acc40_4 tmp 1; spl tmp acc40_5 tmp 1;
spl acc40_7 acc40_6 tmp 1;
spl tmp acc41_0 acc41 1; spl tmp acc41_1 tmp 1;
spl tmp acc41_2 tmp 1; spl tmp acc41_3 tmp 1;
spl tmp acc41_4 tmp 1; spl tmp acc41_5 tmp 1;
spl acc41_7 acc41_6 tmp 1;
spl tmp acc42_0 acc42 1; spl tmp acc42_1 tmp 1;
spl tmp acc42_2 tmp 1; spl tmp acc42_3 tmp 1;
spl tmp acc42_4 tmp 1; spl tmp acc42_5 tmp 1;
spl acc42_7 acc42_6 tmp 1;
spl tmp acc43_0 acc43 1; spl tmp acc43_1 tmp 1;
spl tmp acc43_2 tmp 1; spl tmp acc43_3 tmp 1;
spl tmp acc43_4 tmp 1; spl tmp acc43_5 tmp 1;
spl acc43_7 acc43_6 tmp 1;
spl tmp acc44_0 acc44 1; spl tmp acc44_1 tmp 1;
spl tmp acc44_2 tmp 1; spl tmp acc44_3 tmp 1;
spl tmp acc44_4 tmp 1; spl tmp acc44_5 tmp 1;
spl acc44_7 acc44_6 tmp 1;
spl tmp acc45_0 acc45 1; spl tmp acc45_1 tmp 1;
spl tmp acc45_2 tmp 1; spl tmp acc45_3 tmp 1;
spl tmp acc45_4 tmp 1; spl tmp acc45_5 tmp 1;
spl acc45_7 acc45_6 tmp 1;
spl tmp acc46_0 acc46 1; spl tmp acc46_1 tmp 1;
spl tmp acc46_2 tmp 1; spl tmp acc46_3 tmp 1;
spl tmp acc46_4 tmp 1; spl tmp acc46_5 tmp 1;
spl acc46_7 acc46_6 tmp 1;
spl tmp acc47_0 acc47 1; spl tmp acc47_1 tmp 1;
spl tmp acc47_2 tmp 1; spl tmp acc47_3 tmp 1;
spl tmp acc47_4 tmp 1; spl tmp acc47_5 tmp 1;
spl acc47_7 acc47_6 tmp 1;
spl tmp acc48_0 acc48 1; spl tmp acc48_1 tmp 1;
spl tmp acc48_2 tmp 1; spl tmp acc48_3 tmp 1;
spl tmp acc48_4 tmp 1; spl tmp acc48_5 tmp 1;
spl acc48_7 acc48_6 tmp 1;
spl tmp acc49_0 acc49 1; spl tmp acc49_1 tmp 1;
spl tmp acc49_2 tmp 1; spl tmp acc49_3 tmp 1;
spl tmp acc49_4 tmp 1; spl tmp acc49_5 tmp 1;
spl acc49_7 acc49_6 tmp 1;
spl tmp acc4a_0 acc4a 1; spl tmp acc4a_1 tmp 1;
spl tmp acc4a_2 tmp 1; spl tmp acc4a_3 tmp 1;
spl tmp acc4a_4 tmp 1; spl tmp acc4a_5 tmp 1;
spl acc4a_7 acc4a_6 tmp 1;
spl tmp acc4b_0 acc4b 1; spl tmp acc4b_1 tmp 1;
spl tmp acc4b_2 tmp 1; spl tmp acc4b_3 tmp 1;
spl tmp acc4b_4 tmp 1; spl tmp acc4b_5 tmp 1;
spl acc4b_7 acc4b_6 tmp 1;
spl tmp acc4c_0 acc4c 1; spl tmp acc4c_1 tmp 1;
spl tmp acc4c_2 tmp 1; spl tmp acc4c_3 tmp 1;
spl tmp acc4c_4 tmp 1; spl tmp acc4c_5 tmp 1;
spl acc4c_7 acc4c_6 tmp 1;
spl tmp acc4d_0 acc4d 1; spl tmp acc4d_1 tmp 1;
spl tmp acc4d_2 tmp 1; spl tmp acc4d_3 tmp 1;
spl tmp acc4d_4 tmp 1; spl tmp acc4d_5 tmp 1;
spl acc4d_7 acc4d_6 tmp 1;
spl tmp acc4e_0 acc4e 1; spl tmp acc4e_1 tmp 1;
spl tmp acc4e_2 tmp 1; spl tmp acc4e_3 tmp 1;
spl tmp acc4e_4 tmp 1; spl tmp acc4e_5 tmp 1;
spl acc4e_7 acc4e_6 tmp 1;
spl tmp acc4f_0 acc4f 1; spl tmp acc4f_1 tmp 1;
spl tmp acc4f_2 tmp 1; spl tmp acc4f_3 tmp 1;
spl tmp acc4f_4 tmp 1; spl tmp acc4f_5 tmp 1;
spl acc4f_7 acc4f_6 tmp 1;
spl tmp acc50_0 acc50 1; spl tmp acc50_1 tmp 1;
spl tmp acc50_2 tmp 1; spl tmp acc50_3 tmp 1;
spl tmp acc50_4 tmp 1; spl tmp acc50_5 tmp 1;
spl acc50_7 acc50_6 tmp 1;
spl tmp acc51_0 acc51 1; spl tmp acc51_1 tmp 1;
spl tmp acc51_2 tmp 1; spl tmp acc51_3 tmp 1;
spl tmp acc51_4 tmp 1; spl tmp acc51_5 tmp 1;
spl acc51_7 acc51_6 tmp 1;
spl tmp acc52_0 acc52 1; spl tmp acc52_1 tmp 1;
spl tmp acc52_2 tmp 1; spl tmp acc52_3 tmp 1;
spl tmp acc52_4 tmp 1; spl tmp acc52_5 tmp 1;
spl acc52_7 acc52_6 tmp 1;
spl tmp acc53_0 acc53 1; spl tmp acc53_1 tmp 1;
spl tmp acc53_2 tmp 1; spl tmp acc53_3 tmp 1;
spl tmp acc53_4 tmp 1; spl tmp acc53_5 tmp 1;
spl acc53_7 acc53_6 tmp 1;
spl tmp acc54_0 acc54 1; spl tmp acc54_1 tmp 1;
spl tmp acc54_2 tmp 1; spl tmp acc54_3 tmp 1;
spl tmp acc54_4 tmp 1; spl tmp acc54_5 tmp 1;
spl acc54_7 acc54_6 tmp 1;
spl tmp acc55_0 acc55 1; spl tmp acc55_1 tmp 1;
spl tmp acc55_2 tmp 1; spl tmp acc55_3 tmp 1;
spl tmp acc55_4 tmp 1; spl tmp acc55_5 tmp 1;
spl acc55_7 acc55_6 tmp 1;
spl tmp acc56_0 acc56 1; spl tmp acc56_1 tmp 1;
spl tmp acc56_2 tmp 1; spl tmp acc56_3 tmp 1;
spl tmp acc56_4 tmp 1; spl tmp acc56_5 tmp 1;
spl acc56_7 acc56_6 tmp 1;
spl tmp acc57_0 acc57 1; spl tmp acc57_1 tmp 1;
spl tmp acc57_2 tmp 1; spl tmp acc57_3 tmp 1;
spl tmp acc57_4 tmp 1; spl tmp acc57_5 tmp 1;
spl acc57_7 acc57_6 tmp 1;
(* split a *)
spl tmp a00_0 a00 1; spl tmp a00_1 tmp 1;
spl tmp a00_2 tmp 1; spl tmp a00_3 tmp 1;
spl tmp a00_4 tmp 1; spl tmp a00_5 tmp 1;
spl a00_7 a00_6 tmp 1;
spl tmp a01_0 a01 1; spl tmp a01_1 tmp 1;
spl tmp a01_2 tmp 1; spl tmp a01_3 tmp 1;
spl tmp a01_4 tmp 1; spl tmp a01_5 tmp 1;
spl a01_7 a01_6 tmp 1;
spl tmp a02_0 a02 1; spl tmp a02_1 tmp 1;
spl tmp a02_2 tmp 1; spl tmp a02_3 tmp 1;
spl tmp a02_4 tmp 1; spl tmp a02_5 tmp 1;
spl a02_7 a02_6 tmp 1;
spl tmp a03_0 a03 1; spl tmp a03_1 tmp 1;
spl tmp a03_2 tmp 1; spl tmp a03_3 tmp 1;
spl tmp a03_4 tmp 1; spl tmp a03_5 tmp 1;
spl a03_7 a03_6 tmp 1;
spl tmp a04_0 a04 1; spl tmp a04_1 tmp 1;
spl tmp a04_2 tmp 1; spl tmp a04_3 tmp 1;
spl tmp a04_4 tmp 1; spl tmp a04_5 tmp 1;
spl a04_7 a04_6 tmp 1;
spl tmp a05_0 a05 1; spl tmp a05_1 tmp 1;
spl tmp a05_2 tmp 1; spl tmp a05_3 tmp 1;
spl tmp a05_4 tmp 1; spl tmp a05_5 tmp 1;
spl a05_7 a05_6 tmp 1;
spl tmp a06_0 a06 1; spl tmp a06_1 tmp 1;
spl tmp a06_2 tmp 1; spl tmp a06_3 tmp 1;
spl tmp a06_4 tmp 1; spl tmp a06_5 tmp 1;
spl a06_7 a06_6 tmp 1;
spl tmp a07_0 a07 1; spl tmp a07_1 tmp 1;
spl tmp a07_2 tmp 1; spl tmp a07_3 tmp 1;
spl tmp a07_4 tmp 1; spl tmp a07_5 tmp 1;
spl a07_7 a07_6 tmp 1;
spl tmp a08_0 a08 1; spl tmp a08_1 tmp 1;
spl tmp a08_2 tmp 1; spl tmp a08_3 tmp 1;
spl tmp a08_4 tmp 1; spl tmp a08_5 tmp 1;
spl a08_7 a08_6 tmp 1;
spl tmp a09_0 a09 1; spl tmp a09_1 tmp 1;
spl tmp a09_2 tmp 1; spl tmp a09_3 tmp 1;
spl tmp a09_4 tmp 1; spl tmp a09_5 tmp 1;
spl a09_7 a09_6 tmp 1;
spl tmp a0a_0 a0a 1; spl tmp a0a_1 tmp 1;
spl tmp a0a_2 tmp 1; spl tmp a0a_3 tmp 1;
spl tmp a0a_4 tmp 1; spl tmp a0a_5 tmp 1;
spl a0a_7 a0a_6 tmp 1;
spl tmp a0b_0 a0b 1; spl tmp a0b_1 tmp 1;
spl tmp a0b_2 tmp 1; spl tmp a0b_3 tmp 1;
spl tmp a0b_4 tmp 1; spl tmp a0b_5 tmp 1;
spl a0b_7 a0b_6 tmp 1;
spl tmp a0c_0 a0c 1; spl tmp a0c_1 tmp 1;
spl tmp a0c_2 tmp 1; spl tmp a0c_3 tmp 1;
spl tmp a0c_4 tmp 1; spl tmp a0c_5 tmp 1;
spl a0c_7 a0c_6 tmp 1;
spl tmp a0d_0 a0d 1; spl tmp a0d_1 tmp 1;
spl tmp a0d_2 tmp 1; spl tmp a0d_3 tmp 1;
spl tmp a0d_4 tmp 1; spl tmp a0d_5 tmp 1;
spl a0d_7 a0d_6 tmp 1;
spl tmp a0e_0 a0e 1; spl tmp a0e_1 tmp 1;
spl tmp a0e_2 tmp 1; spl tmp a0e_3 tmp 1;
spl tmp a0e_4 tmp 1; spl tmp a0e_5 tmp 1;
spl a0e_7 a0e_6 tmp 1;
spl tmp a0f_0 a0f 1; spl tmp a0f_1 tmp 1;
spl tmp a0f_2 tmp 1; spl tmp a0f_3 tmp 1;
spl tmp a0f_4 tmp 1; spl tmp a0f_5 tmp 1;
spl a0f_7 a0f_6 tmp 1;
spl tmp a10_0 a10 1; spl tmp a10_1 tmp 1;
spl tmp a10_2 tmp 1; spl tmp a10_3 tmp 1;
spl tmp a10_4 tmp 1; spl tmp a10_5 tmp 1;
spl a10_7 a10_6 tmp 1;
spl tmp a11_0 a11 1; spl tmp a11_1 tmp 1;
spl tmp a11_2 tmp 1; spl tmp a11_3 tmp 1;
spl tmp a11_4 tmp 1; spl tmp a11_5 tmp 1;
spl a11_7 a11_6 tmp 1;
spl tmp a12_0 a12 1; spl tmp a12_1 tmp 1;
spl tmp a12_2 tmp 1; spl tmp a12_3 tmp 1;
spl tmp a12_4 tmp 1; spl tmp a12_5 tmp 1;
spl a12_7 a12_6 tmp 1;
spl tmp a13_0 a13 1; spl tmp a13_1 tmp 1;
spl tmp a13_2 tmp 1; spl tmp a13_3 tmp 1;
spl tmp a13_4 tmp 1; spl tmp a13_5 tmp 1;
spl a13_7 a13_6 tmp 1;
spl tmp a14_0 a14 1; spl tmp a14_1 tmp 1;
spl tmp a14_2 tmp 1; spl tmp a14_3 tmp 1;
spl tmp a14_4 tmp 1; spl tmp a14_5 tmp 1;
spl a14_7 a14_6 tmp 1;
spl tmp a15_0 a15 1; spl tmp a15_1 tmp 1;
spl tmp a15_2 tmp 1; spl tmp a15_3 tmp 1;
spl tmp a15_4 tmp 1; spl tmp a15_5 tmp 1;
spl a15_7 a15_6 tmp 1;
spl tmp a16_0 a16 1; spl tmp a16_1 tmp 1;
spl tmp a16_2 tmp 1; spl tmp a16_3 tmp 1;
spl tmp a16_4 tmp 1; spl tmp a16_5 tmp 1;
spl a16_7 a16_6 tmp 1;
spl tmp a17_0 a17 1; spl tmp a17_1 tmp 1;
spl tmp a17_2 tmp 1; spl tmp a17_3 tmp 1;
spl tmp a17_4 tmp 1; spl tmp a17_5 tmp 1;
spl a17_7 a17_6 tmp 1;
spl tmp a18_0 a18 1; spl tmp a18_1 tmp 1;
spl tmp a18_2 tmp 1; spl tmp a18_3 tmp 1;
spl tmp a18_4 tmp 1; spl tmp a18_5 tmp 1;
spl a18_7 a18_6 tmp 1;
spl tmp a19_0 a19 1; spl tmp a19_1 tmp 1;
spl tmp a19_2 tmp 1; spl tmp a19_3 tmp 1;
spl tmp a19_4 tmp 1; spl tmp a19_5 tmp 1;
spl a19_7 a19_6 tmp 1;
spl tmp a1a_0 a1a 1; spl tmp a1a_1 tmp 1;
spl tmp a1a_2 tmp 1; spl tmp a1a_3 tmp 1;
spl tmp a1a_4 tmp 1; spl tmp a1a_5 tmp 1;
spl a1a_7 a1a_6 tmp 1;
spl tmp a1b_0 a1b 1; spl tmp a1b_1 tmp 1;
spl tmp a1b_2 tmp 1; spl tmp a1b_3 tmp 1;
spl tmp a1b_4 tmp 1; spl tmp a1b_5 tmp 1;
spl a1b_7 a1b_6 tmp 1;
spl tmp a1c_0 a1c 1; spl tmp a1c_1 tmp 1;
spl tmp a1c_2 tmp 1; spl tmp a1c_3 tmp 1;
spl tmp a1c_4 tmp 1; spl tmp a1c_5 tmp 1;
spl a1c_7 a1c_6 tmp 1;
spl tmp a1d_0 a1d 1; spl tmp a1d_1 tmp 1;
spl tmp a1d_2 tmp 1; spl tmp a1d_3 tmp 1;
spl tmp a1d_4 tmp 1; spl tmp a1d_5 tmp 1;
spl a1d_7 a1d_6 tmp 1;
spl tmp a1e_0 a1e 1; spl tmp a1e_1 tmp 1;
spl tmp a1e_2 tmp 1; spl tmp a1e_3 tmp 1;
spl tmp a1e_4 tmp 1; spl tmp a1e_5 tmp 1;
spl a1e_7 a1e_6 tmp 1;
spl tmp a1f_0 a1f 1; spl tmp a1f_1 tmp 1;
spl tmp a1f_2 tmp 1; spl tmp a1f_3 tmp 1;
spl tmp a1f_4 tmp 1; spl tmp a1f_5 tmp 1;
spl a1f_7 a1f_6 tmp 1;
spl tmp a20_0 a20 1; spl tmp a20_1 tmp 1;
spl tmp a20_2 tmp 1; spl tmp a20_3 tmp 1;
spl tmp a20_4 tmp 1; spl tmp a20_5 tmp 1;
spl a20_7 a20_6 tmp 1;
spl tmp a21_0 a21 1; spl tmp a21_1 tmp 1;
spl tmp a21_2 tmp 1; spl tmp a21_3 tmp 1;
spl tmp a21_4 tmp 1; spl tmp a21_5 tmp 1;
spl a21_7 a21_6 tmp 1;
spl tmp a22_0 a22 1; spl tmp a22_1 tmp 1;
spl tmp a22_2 tmp 1; spl tmp a22_3 tmp 1;
spl tmp a22_4 tmp 1; spl tmp a22_5 tmp 1;
spl a22_7 a22_6 tmp 1;
spl tmp a23_0 a23 1; spl tmp a23_1 tmp 1;
spl tmp a23_2 tmp 1; spl tmp a23_3 tmp 1;
spl tmp a23_4 tmp 1; spl tmp a23_5 tmp 1;
spl a23_7 a23_6 tmp 1;
spl tmp a24_0 a24 1; spl tmp a24_1 tmp 1;
spl tmp a24_2 tmp 1; spl tmp a24_3 tmp 1;
spl tmp a24_4 tmp 1; spl tmp a24_5 tmp 1;
spl a24_7 a24_6 tmp 1;
spl tmp a25_0 a25 1; spl tmp a25_1 tmp 1;
spl tmp a25_2 tmp 1; spl tmp a25_3 tmp 1;
spl tmp a25_4 tmp 1; spl tmp a25_5 tmp 1;
spl a25_7 a25_6 tmp 1;
spl tmp a26_0 a26 1; spl tmp a26_1 tmp 1;
spl tmp a26_2 tmp 1; spl tmp a26_3 tmp 1;
spl tmp a26_4 tmp 1; spl tmp a26_5 tmp 1;
spl a26_7 a26_6 tmp 1;
spl tmp a27_0 a27 1; spl tmp a27_1 tmp 1;
spl tmp a27_2 tmp 1; spl tmp a27_3 tmp 1;
spl tmp a27_4 tmp 1; spl tmp a27_5 tmp 1;
spl a27_7 a27_6 tmp 1;
spl tmp a28_0 a28 1; spl tmp a28_1 tmp 1;
spl tmp a28_2 tmp 1; spl tmp a28_3 tmp 1;
spl tmp a28_4 tmp 1; spl tmp a28_5 tmp 1;
spl a28_7 a28_6 tmp 1;
spl tmp a29_0 a29 1; spl tmp a29_1 tmp 1;
spl tmp a29_2 tmp 1; spl tmp a29_3 tmp 1;
spl tmp a29_4 tmp 1; spl tmp a29_5 tmp 1;
spl a29_7 a29_6 tmp 1;
spl tmp a2a_0 a2a 1; spl tmp a2a_1 tmp 1;
spl tmp a2a_2 tmp 1; spl tmp a2a_3 tmp 1;
spl tmp a2a_4 tmp 1; spl tmp a2a_5 tmp 1;
spl a2a_7 a2a_6 tmp 1;
spl tmp a2b_0 a2b 1; spl tmp a2b_1 tmp 1;
spl tmp a2b_2 tmp 1; spl tmp a2b_3 tmp 1;
spl tmp a2b_4 tmp 1; spl tmp a2b_5 tmp 1;
spl a2b_7 a2b_6 tmp 1;
spl tmp a2c_0 a2c 1; spl tmp a2c_1 tmp 1;
spl tmp a2c_2 tmp 1; spl tmp a2c_3 tmp 1;
spl tmp a2c_4 tmp 1; spl tmp a2c_5 tmp 1;
spl a2c_7 a2c_6 tmp 1;
spl tmp a2d_0 a2d 1; spl tmp a2d_1 tmp 1;
spl tmp a2d_2 tmp 1; spl tmp a2d_3 tmp 1;
spl tmp a2d_4 tmp 1; spl tmp a2d_5 tmp 1;
spl a2d_7 a2d_6 tmp 1;
spl tmp a2e_0 a2e 1; spl tmp a2e_1 tmp 1;
spl tmp a2e_2 tmp 1; spl tmp a2e_3 tmp 1;
spl tmp a2e_4 tmp 1; spl tmp a2e_5 tmp 1;
spl a2e_7 a2e_6 tmp 1;
spl tmp a2f_0 a2f 1; spl tmp a2f_1 tmp 1;
spl tmp a2f_2 tmp 1; spl tmp a2f_3 tmp 1;
spl tmp a2f_4 tmp 1; spl tmp a2f_5 tmp 1;
spl a2f_7 a2f_6 tmp 1;
spl tmp a30_0 a30 1; spl tmp a30_1 tmp 1;
spl tmp a30_2 tmp 1; spl tmp a30_3 tmp 1;
spl tmp a30_4 tmp 1; spl tmp a30_5 tmp 1;
spl a30_7 a30_6 tmp 1;
spl tmp a31_0 a31 1; spl tmp a31_1 tmp 1;
spl tmp a31_2 tmp 1; spl tmp a31_3 tmp 1;
spl tmp a31_4 tmp 1; spl tmp a31_5 tmp 1;
spl a31_7 a31_6 tmp 1;
spl tmp a32_0 a32 1; spl tmp a32_1 tmp 1;
spl tmp a32_2 tmp 1; spl tmp a32_3 tmp 1;
spl tmp a32_4 tmp 1; spl tmp a32_5 tmp 1;
spl a32_7 a32_6 tmp 1;
spl tmp a33_0 a33 1; spl tmp a33_1 tmp 1;
spl tmp a33_2 tmp 1; spl tmp a33_3 tmp 1;
spl tmp a33_4 tmp 1; spl tmp a33_5 tmp 1;
spl a33_7 a33_6 tmp 1;
spl tmp a34_0 a34 1; spl tmp a34_1 tmp 1;
spl tmp a34_2 tmp 1; spl tmp a34_3 tmp 1;
spl tmp a34_4 tmp 1; spl tmp a34_5 tmp 1;
spl a34_7 a34_6 tmp 1;
spl tmp a35_0 a35 1; spl tmp a35_1 tmp 1;
spl tmp a35_2 tmp 1; spl tmp a35_3 tmp 1;
spl tmp a35_4 tmp 1; spl tmp a35_5 tmp 1;
spl a35_7 a35_6 tmp 1;
spl tmp a36_0 a36 1; spl tmp a36_1 tmp 1;
spl tmp a36_2 tmp 1; spl tmp a36_3 tmp 1;
spl tmp a36_4 tmp 1; spl tmp a36_5 tmp 1;
spl a36_7 a36_6 tmp 1;
spl tmp a37_0 a37 1; spl tmp a37_1 tmp 1;
spl tmp a37_2 tmp 1; spl tmp a37_3 tmp 1;
spl tmp a37_4 tmp 1; spl tmp a37_5 tmp 1;
spl a37_7 a37_6 tmp 1;
spl tmp a38_0 a38 1; spl tmp a38_1 tmp 1;
spl tmp a38_2 tmp 1; spl tmp a38_3 tmp 1;
spl tmp a38_4 tmp 1; spl tmp a38_5 tmp 1;
spl a38_7 a38_6 tmp 1;
spl tmp a39_0 a39 1; spl tmp a39_1 tmp 1;
spl tmp a39_2 tmp 1; spl tmp a39_3 tmp 1;
spl tmp a39_4 tmp 1; spl tmp a39_5 tmp 1;
spl a39_7 a39_6 tmp 1;
spl tmp a3a_0 a3a 1; spl tmp a3a_1 tmp 1;
spl tmp a3a_2 tmp 1; spl tmp a3a_3 tmp 1;
spl tmp a3a_4 tmp 1; spl tmp a3a_5 tmp 1;
spl a3a_7 a3a_6 tmp 1;
spl tmp a3b_0 a3b 1; spl tmp a3b_1 tmp 1;
spl tmp a3b_2 tmp 1; spl tmp a3b_3 tmp 1;
spl tmp a3b_4 tmp 1; spl tmp a3b_5 tmp 1;
spl a3b_7 a3b_6 tmp 1;
spl tmp a3c_0 a3c 1; spl tmp a3c_1 tmp 1;
spl tmp a3c_2 tmp 1; spl tmp a3c_3 tmp 1;
spl tmp a3c_4 tmp 1; spl tmp a3c_5 tmp 1;
spl a3c_7 a3c_6 tmp 1;
spl tmp a3d_0 a3d 1; spl tmp a3d_1 tmp 1;
spl tmp a3d_2 tmp 1; spl tmp a3d_3 tmp 1;
spl tmp a3d_4 tmp 1; spl tmp a3d_5 tmp 1;
spl a3d_7 a3d_6 tmp 1;
spl tmp a3e_0 a3e 1; spl tmp a3e_1 tmp 1;
spl tmp a3e_2 tmp 1; spl tmp a3e_3 tmp 1;
spl tmp a3e_4 tmp 1; spl tmp a3e_5 tmp 1;
spl a3e_7 a3e_6 tmp 1;
spl tmp a3f_0 a3f 1; spl tmp a3f_1 tmp 1;
spl tmp a3f_2 tmp 1; spl tmp a3f_3 tmp 1;
spl tmp a3f_4 tmp 1; spl tmp a3f_5 tmp 1;
spl a3f_7 a3f_6 tmp 1;
spl tmp a40_0 a40 1; spl tmp a40_1 tmp 1;
spl tmp a40_2 tmp 1; spl tmp a40_3 tmp 1;
spl tmp a40_4 tmp 1; spl tmp a40_5 tmp 1;
spl a40_7 a40_6 tmp 1;
spl tmp a41_0 a41 1; spl tmp a41_1 tmp 1;
spl tmp a41_2 tmp 1; spl tmp a41_3 tmp 1;
spl tmp a41_4 tmp 1; spl tmp a41_5 tmp 1;
spl a41_7 a41_6 tmp 1;
spl tmp a42_0 a42 1; spl tmp a42_1 tmp 1;
spl tmp a42_2 tmp 1; spl tmp a42_3 tmp 1;
spl tmp a42_4 tmp 1; spl tmp a42_5 tmp 1;
spl a42_7 a42_6 tmp 1;
spl tmp a43_0 a43 1; spl tmp a43_1 tmp 1;
spl tmp a43_2 tmp 1; spl tmp a43_3 tmp 1;
spl tmp a43_4 tmp 1; spl tmp a43_5 tmp 1;
spl a43_7 a43_6 tmp 1;
spl tmp a44_0 a44 1; spl tmp a44_1 tmp 1;
spl tmp a44_2 tmp 1; spl tmp a44_3 tmp 1;
spl tmp a44_4 tmp 1; spl tmp a44_5 tmp 1;
spl a44_7 a44_6 tmp 1;
spl tmp a45_0 a45 1; spl tmp a45_1 tmp 1;
spl tmp a45_2 tmp 1; spl tmp a45_3 tmp 1;
spl tmp a45_4 tmp 1; spl tmp a45_5 tmp 1;
spl a45_7 a45_6 tmp 1;
spl tmp a46_0 a46 1; spl tmp a46_1 tmp 1;
spl tmp a46_2 tmp 1; spl tmp a46_3 tmp 1;
spl tmp a46_4 tmp 1; spl tmp a46_5 tmp 1;
spl a46_7 a46_6 tmp 1;
spl tmp a47_0 a47 1; spl tmp a47_1 tmp 1;
spl tmp a47_2 tmp 1; spl tmp a47_3 tmp 1;
spl tmp a47_4 tmp 1; spl tmp a47_5 tmp 1;
spl a47_7 a47_6 tmp 1;
spl tmp a48_0 a48 1; spl tmp a48_1 tmp 1;
spl tmp a48_2 tmp 1; spl tmp a48_3 tmp 1;
spl tmp a48_4 tmp 1; spl tmp a48_5 tmp 1;
spl a48_7 a48_6 tmp 1;
spl tmp a49_0 a49 1; spl tmp a49_1 tmp 1;
spl tmp a49_2 tmp 1; spl tmp a49_3 tmp 1;
spl tmp a49_4 tmp 1; spl tmp a49_5 tmp 1;
spl a49_7 a49_6 tmp 1;
spl tmp a4a_0 a4a 1; spl tmp a4a_1 tmp 1;
spl tmp a4a_2 tmp 1; spl tmp a4a_3 tmp 1;
spl tmp a4a_4 tmp 1; spl tmp a4a_5 tmp 1;
spl a4a_7 a4a_6 tmp 1;
spl tmp a4b_0 a4b 1; spl tmp a4b_1 tmp 1;
spl tmp a4b_2 tmp 1; spl tmp a4b_3 tmp 1;
spl tmp a4b_4 tmp 1; spl tmp a4b_5 tmp 1;
spl a4b_7 a4b_6 tmp 1;
spl tmp a4c_0 a4c 1; spl tmp a4c_1 tmp 1;
spl tmp a4c_2 tmp 1; spl tmp a4c_3 tmp 1;
spl tmp a4c_4 tmp 1; spl tmp a4c_5 tmp 1;
spl a4c_7 a4c_6 tmp 1;
spl tmp a4d_0 a4d 1; spl tmp a4d_1 tmp 1;
spl tmp a4d_2 tmp 1; spl tmp a4d_3 tmp 1;
spl tmp a4d_4 tmp 1; spl tmp a4d_5 tmp 1;
spl a4d_7 a4d_6 tmp 1;
spl tmp a4e_0 a4e 1; spl tmp a4e_1 tmp 1;
spl tmp a4e_2 tmp 1; spl tmp a4e_3 tmp 1;
spl tmp a4e_4 tmp 1; spl tmp a4e_5 tmp 1;
spl a4e_7 a4e_6 tmp 1;
spl tmp a4f_0 a4f 1; spl tmp a4f_1 tmp 1;
spl tmp a4f_2 tmp 1; spl tmp a4f_3 tmp 1;
spl tmp a4f_4 tmp 1; spl tmp a4f_5 tmp 1;
spl a4f_7 a4f_6 tmp 1;
spl tmp a50_0 a50 1; spl tmp a50_1 tmp 1;
spl tmp a50_2 tmp 1; spl tmp a50_3 tmp 1;
spl tmp a50_4 tmp 1; spl tmp a50_5 tmp 1;
spl a50_7 a50_6 tmp 1;
spl tmp a51_0 a51 1; spl tmp a51_1 tmp 1;
spl tmp a51_2 tmp 1; spl tmp a51_3 tmp 1;
spl tmp a51_4 tmp 1; spl tmp a51_5 tmp 1;
spl a51_7 a51_6 tmp 1;
spl tmp a52_0 a52 1; spl tmp a52_1 tmp 1;
spl tmp a52_2 tmp 1; spl tmp a52_3 tmp 1;
spl tmp a52_4 tmp 1; spl tmp a52_5 tmp 1;
spl a52_7 a52_6 tmp 1;
spl tmp a53_0 a53 1; spl tmp a53_1 tmp 1;
spl tmp a53_2 tmp 1; spl tmp a53_3 tmp 1;
spl tmp a53_4 tmp 1; spl tmp a53_5 tmp 1;
spl a53_7 a53_6 tmp 1;
spl tmp a54_0 a54 1; spl tmp a54_1 tmp 1;
spl tmp a54_2 tmp 1; spl tmp a54_3 tmp 1;
spl tmp a54_4 tmp 1; spl tmp a54_5 tmp 1;
spl a54_7 a54_6 tmp 1;
spl tmp a55_0 a55 1; spl tmp a55_1 tmp 1;
spl tmp a55_2 tmp 1; spl tmp a55_3 tmp 1;
spl tmp a55_4 tmp 1; spl tmp a55_5 tmp 1;
spl a55_7 a55_6 tmp 1;
spl tmp a56_0 a56 1; spl tmp a56_1 tmp 1;
spl tmp a56_2 tmp 1; spl tmp a56_3 tmp 1;
spl tmp a56_4 tmp 1; spl tmp a56_5 tmp 1;
spl a56_7 a56_6 tmp 1;
spl tmp a57_0 a57 1; spl tmp a57_1 tmp 1;
spl tmp a57_2 tmp 1; spl tmp a57_3 tmp 1;
spl tmp a57_4 tmp 1; spl tmp a57_5 tmp 1;
spl a57_7 a57_6 tmp 1;
(* split b *)
spl tmp b_0 b 1; spl tmp b_1 tmp 1;
spl tmp b_2 tmp 1; spl tmp b_3 tmp 1;
spl tmp b_4 tmp 1; spl tmp b_5 tmp 1;
spl b_7 b_6 tmp 1;

(* ========== call functions ========== *)

(* call madd_u64 from 0 *)
call _gf256v_madd_u64 (
  a00_0, a00_1, a00_2, a00_3, a00_4, a00_5, a00_6, a00_7,
  a01_0, a01_1, a01_2, a01_3, a01_4, a01_5, a01_6, a01_7,
  a02_0, a02_1, a02_2, a02_3, a02_4, a02_5, a02_6, a02_7,
  a03_0, a03_1, a03_2, a03_3, a03_4, a03_5, a03_6, a03_7,
  a04_0, a04_1, a04_2, a04_3, a04_4, a04_5, a04_6, a04_7,
  a05_0, a05_1, a05_2, a05_3, a05_4, a05_5, a05_6, a05_7,
  a06_0, a06_1, a06_2, a06_3, a06_4, a06_5, a06_6, a06_7,
  a07_0, a07_1, a07_2, a07_3, a07_4, a07_5, a07_6, a07_7,
  a08_0, a08_1, a08_2, a08_3, a08_4, a08_5, a08_6, a08_7,
  a09_0, a09_1, a09_2, a09_3, a09_4, a09_5, a09_6, a09_7,
  a0a_0, a0a_1, a0a_2, a0a_3, a0a_4, a0a_5, a0a_6, a0a_7,
  a0b_0, a0b_1, a0b_2, a0b_3, a0b_4, a0b_5, a0b_6, a0b_7,
  a0c_0, a0c_1, a0c_2, a0c_3, a0c_4, a0c_5, a0c_6, a0c_7,
  a0d_0, a0d_1, a0d_2, a0d_3, a0d_4, a0d_5, a0d_6, a0d_7,
  a0e_0, a0e_1, a0e_2, a0e_3, a0e_4, a0e_5, a0e_6, a0e_7,
  a0f_0, a0f_1, a0f_2, a0f_3, a0f_4, a0f_5, a0f_6, a0f_7,
  a10_0, a10_1, a10_2, a10_3, a10_4, a10_5, a10_6, a10_7,
  a11_0, a11_1, a11_2, a11_3, a11_4, a11_5, a11_6, a11_7,
  a12_0, a12_1, a12_2, a12_3, a12_4, a12_5, a12_6, a12_7,
  a13_0, a13_1, a13_2, a13_3, a13_4, a13_5, a13_6, a13_7,
  a14_0, a14_1, a14_2, a14_3, a14_4, a14_5, a14_6, a14_7,
  a15_0, a15_1, a15_2, a15_3, a15_4, a15_5, a15_6, a15_7,
  a16_0, a16_1, a16_2, a16_3, a16_4, a16_5, a16_6, a16_7,
  a17_0, a17_1, a17_2, a17_3, a17_4, a17_5, a17_6, a17_7,
  a18_0, a18_1, a18_2, a18_3, a18_4, a18_5, a18_6, a18_7,
  a19_0, a19_1, a19_2, a19_3, a19_4, a19_5, a19_6, a19_7,
  a1a_0, a1a_1, a1a_2, a1a_3, a1a_4, a1a_5, a1a_6, a1a_7,
  a1b_0, a1b_1, a1b_2, a1b_3, a1b_4, a1b_5, a1b_6, a1b_7,
  a1c_0, a1c_1, a1c_2, a1c_3, a1c_4, a1c_5, a1c_6, a1c_7,
  a1d_0, a1d_1, a1d_2, a1d_3, a1d_4, a1d_5, a1d_6, a1d_7,
  a1e_0, a1e_1, a1e_2, a1e_3, a1e_4, a1e_5, a1e_6, a1e_7,
  a1f_0, a1f_1, a1f_2, a1f_3, a1f_4, a1f_5, a1f_6, a1f_7,
  a20_0, a20_1, a20_2, a20_3, a20_4, a20_5, a20_6, a20_7,
  a21_0, a21_1, a21_2, a21_3, a21_4, a21_5, a21_6, a21_7,
  a22_0, a22_1, a22_2, a22_3, a22_4, a22_5, a22_6, a22_7,
  a23_0, a23_1, a23_2, a23_3, a23_4, a23_5, a23_6, a23_7,
  a24_0, a24_1, a24_2, a24_3, a24_4, a24_5, a24_6, a24_7,
  a25_0, a25_1, a25_2, a25_3, a25_4, a25_5, a25_6, a25_7,
  a26_0, a26_1, a26_2, a26_3, a26_4, a26_5, a26_6, a26_7,
  a27_0, a27_1, a27_2, a27_3, a27_4, a27_5, a27_6, a27_7,
  a28_0, a28_1, a28_2, a28_3, a28_4, a28_5, a28_6, a28_7,
  a29_0, a29_1, a29_2, a29_3, a29_4, a29_5, a29_6, a29_7,
  a2a_0, a2a_1, a2a_2, a2a_3, a2a_4, a2a_5, a2a_6, a2a_7,
  a2b_0, a2b_1, a2b_2, a2b_3, a2b_4, a2b_5, a2b_6, a2b_7,
  acc00_0, acc00_1, acc00_2, acc00_3, acc00_4, acc00_5, acc00_6, acc00_7,
  acc01_0, acc01_1, acc01_2, acc01_3, acc01_4, acc01_5, acc01_6, acc01_7,
  acc02_0, acc02_1, acc02_2, acc02_3, acc02_4, acc02_5, acc02_6, acc02_7,
  acc03_0, acc03_1, acc03_2, acc03_3, acc03_4, acc03_5, acc03_6, acc03_7,
  acc04_0, acc04_1, acc04_2, acc04_3, acc04_4, acc04_5, acc04_6, acc04_7,
  acc05_0, acc05_1, acc05_2, acc05_3, acc05_4, acc05_5, acc05_6, acc05_7,
  acc06_0, acc06_1, acc06_2, acc06_3, acc06_4, acc06_5, acc06_6, acc06_7,
  acc07_0, acc07_1, acc07_2, acc07_3, acc07_4, acc07_5, acc07_6, acc07_7,
  acc08_0, acc08_1, acc08_2, acc08_3, acc08_4, acc08_5, acc08_6, acc08_7,
  acc09_0, acc09_1, acc09_2, acc09_3, acc09_4, acc09_5, acc09_6, acc09_7,
  acc0a_0, acc0a_1, acc0a_2, acc0a_3, acc0a_4, acc0a_5, acc0a_6, acc0a_7,
  acc0b_0, acc0b_1, acc0b_2, acc0b_3, acc0b_4, acc0b_5, acc0b_6, acc0b_7,
  acc0c_0, acc0c_1, acc0c_2, acc0c_3, acc0c_4, acc0c_5, acc0c_6, acc0c_7,
  acc0d_0, acc0d_1, acc0d_2, acc0d_3, acc0d_4, acc0d_5, acc0d_6, acc0d_7,
  acc0e_0, acc0e_1, acc0e_2, acc0e_3, acc0e_4, acc0e_5, acc0e_6, acc0e_7,
  acc0f_0, acc0f_1, acc0f_2, acc0f_3, acc0f_4, acc0f_5, acc0f_6, acc0f_7,
  acc10_0, acc10_1, acc10_2, acc10_3, acc10_4, acc10_5, acc10_6, acc10_7,
  acc11_0, acc11_1, acc11_2, acc11_3, acc11_4, acc11_5, acc11_6, acc11_7,
  acc12_0, acc12_1, acc12_2, acc12_3, acc12_4, acc12_5, acc12_6, acc12_7,
  acc13_0, acc13_1, acc13_2, acc13_3, acc13_4, acc13_5, acc13_6, acc13_7,
  acc14_0, acc14_1, acc14_2, acc14_3, acc14_4, acc14_5, acc14_6, acc14_7,
  acc15_0, acc15_1, acc15_2, acc15_3, acc15_4, acc15_5, acc15_6, acc15_7,
  acc16_0, acc16_1, acc16_2, acc16_3, acc16_4, acc16_5, acc16_6, acc16_7,
  acc17_0, acc17_1, acc17_2, acc17_3, acc17_4, acc17_5, acc17_6, acc17_7,
  acc18_0, acc18_1, acc18_2, acc18_3, acc18_4, acc18_5, acc18_6, acc18_7,
  acc19_0, acc19_1, acc19_2, acc19_3, acc19_4, acc19_5, acc19_6, acc19_7,
  acc1a_0, acc1a_1, acc1a_2, acc1a_3, acc1a_4, acc1a_5, acc1a_6, acc1a_7,
  acc1b_0, acc1b_1, acc1b_2, acc1b_3, acc1b_4, acc1b_5, acc1b_6, acc1b_7,
  acc1c_0, acc1c_1, acc1c_2, acc1c_3, acc1c_4, acc1c_5, acc1c_6, acc1c_7,
  acc1d_0, acc1d_1, acc1d_2, acc1d_3, acc1d_4, acc1d_5, acc1d_6, acc1d_7,
  acc1e_0, acc1e_1, acc1e_2, acc1e_3, acc1e_4, acc1e_5, acc1e_6, acc1e_7,
  acc1f_0, acc1f_1, acc1f_2, acc1f_3, acc1f_4, acc1f_5, acc1f_6, acc1f_7,
  acc20_0, acc20_1, acc20_2, acc20_3, acc20_4, acc20_5, acc20_6, acc20_7,
  acc21_0, acc21_1, acc21_2, acc21_3, acc21_4, acc21_5, acc21_6, acc21_7,
  acc22_0, acc22_1, acc22_2, acc22_3, acc22_4, acc22_5, acc22_6, acc22_7,
  acc23_0, acc23_1, acc23_2, acc23_3, acc23_4, acc23_5, acc23_6, acc23_7,
  acc24_0, acc24_1, acc24_2, acc24_3, acc24_4, acc24_5, acc24_6, acc24_7,
  acc25_0, acc25_1, acc25_2, acc25_3, acc25_4, acc25_5, acc25_6, acc25_7,
  acc26_0, acc26_1, acc26_2, acc26_3, acc26_4, acc26_5, acc26_6, acc26_7,
  acc27_0, acc27_1, acc27_2, acc27_3, acc27_4, acc27_5, acc27_6, acc27_7,
  acc28_0, acc28_1, acc28_2, acc28_3, acc28_4, acc28_5, acc28_6, acc28_7,
  acc29_0, acc29_1, acc29_2, acc29_3, acc29_4, acc29_5, acc29_6, acc29_7,
  acc2a_0, acc2a_1, acc2a_2, acc2a_3, acc2a_4, acc2a_5, acc2a_6, acc2a_7,
  acc2b_0, acc2b_1, acc2b_2, acc2b_3, acc2b_4, acc2b_5, acc2b_6, acc2b_7,
  b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7, Z,
  r00_0, r00_1, r00_2, r00_3, r00_4, r00_5, r00_6, r00_7, 
  r01_0, r01_1, r01_2, r01_3, r01_4, r01_5, r01_6, r01_7, 
  r02_0, r02_1, r02_2, r02_3, r02_4, r02_5, r02_6, r02_7, 
  r03_0, r03_1, r03_2, r03_3, r03_4, r03_5, r03_6, r03_7, 
  r04_0, r04_1, r04_2, r04_3, r04_4, r04_5, r04_6, r04_7, 
  r05_0, r05_1, r05_2, r05_3, r05_4, r05_5, r05_6, r05_7, 
  r06_0, r06_1, r06_2, r06_3, r06_4, r06_5, r06_6, r06_7, 
  r07_0, r07_1, r07_2, r07_3, r07_4, r07_5, r07_6, r07_7, 
  r08_0, r08_1, r08_2, r08_3, r08_4, r08_5, r08_6, r08_7, 
  r09_0, r09_1, r09_2, r09_3, r09_4, r09_5, r09_6, r09_7, 
  r0a_0, r0a_1, r0a_2, r0a_3, r0a_4, r0a_5, r0a_6, r0a_7, 
  r0b_0, r0b_1, r0b_2, r0b_3, r0b_4, r0b_5, r0b_6, r0b_7, 
  r0c_0, r0c_1, r0c_2, r0c_3, r0c_4, r0c_5, r0c_6, r0c_7, 
  r0d_0, r0d_1, r0d_2, r0d_3, r0d_4, r0d_5, r0d_6, r0d_7, 
  r0e_0, r0e_1, r0e_2, r0e_3, r0e_4, r0e_5, r0e_6, r0e_7, 
  r0f_0, r0f_1, r0f_2, r0f_3, r0f_4, r0f_5, r0f_6, r0f_7, 
  r10_0, r10_1, r10_2, r10_3, r10_4, r10_5, r10_6, r10_7, 
  r11_0, r11_1, r11_2, r11_3, r11_4, r11_5, r11_6, r11_7, 
  r12_0, r12_1, r12_2, r12_3, r12_4, r12_5, r12_6, r12_7, 
  r13_0, r13_1, r13_2, r13_3, r13_4, r13_5, r13_6, r13_7, 
  r14_0, r14_1, r14_2, r14_3, r14_4, r14_5, r14_6, r14_7, 
  r15_0, r15_1, r15_2, r15_3, r15_4, r15_5, r15_6, r15_7, 
  r16_0, r16_1, r16_2, r16_3, r16_4, r16_5, r16_6, r16_7, 
  r17_0, r17_1, r17_2, r17_3, r17_4, r17_5, r17_6, r17_7, 
  r18_0, r18_1, r18_2, r18_3, r18_4, r18_5, r18_6, r18_7, 
  r19_0, r19_1, r19_2, r19_3, r19_4, r19_5, r19_6, r19_7, 
  r1a_0, r1a_1, r1a_2, r1a_3, r1a_4, r1a_5, r1a_6, r1a_7, 
  r1b_0, r1b_1, r1b_2, r1b_3, r1b_4, r1b_5, r1b_6, r1b_7, 
  r1c_0, r1c_1, r1c_2, r1c_3, r1c_4, r1c_5, r1c_6, r1c_7, 
  r1d_0, r1d_1, r1d_2, r1d_3, r1d_4, r1d_5, r1d_6, r1d_7, 
  r1e_0, r1e_1, r1e_2, r1e_3, r1e_4, r1e_5, r1e_6, r1e_7, 
  r1f_0, r1f_1, r1f_2, r1f_3, r1f_4, r1f_5, r1f_6, r1f_7, 
  r20_0, r20_1, r20_2, r20_3, r20_4, r20_5, r20_6, r20_7, 
  r21_0, r21_1, r21_2, r21_3, r21_4, r21_5, r21_6, r21_7, 
  r22_0, r22_1, r22_2, r22_3, r22_4, r22_5, r22_6, r22_7, 
  r23_0, r23_1, r23_2, r23_3, r23_4, r23_5, r23_6, r23_7, 
  r24_0, r24_1, r24_2, r24_3, r24_4, r24_5, r24_6, r24_7, 
  r25_0, r25_1, r25_2, r25_3, r25_4, r25_5, r25_6, r25_7, 
  r26_0, r26_1, r26_2, r26_3, r26_4, r26_5, r26_6, r26_7, 
  r27_0, r27_1, r27_2, r27_3, r27_4, r27_5, r27_6, r27_7, 
  r28_0, r28_1, r28_2, r28_3, r28_4, r28_5, r28_6, r28_7, 
  r29_0, r29_1, r29_2, r29_3, r29_4, r29_5, r29_6, r29_7, 
  r2a_0, r2a_1, r2a_2, r2a_3, r2a_4, r2a_5, r2a_6, r2a_7, 
  r2b_0, r2b_1, r2b_2, r2b_3, r2b_4, r2b_5, r2b_6, r2b_7
);
(* call madd_u64 from 44 *)
call _gf256v_madd_u64 (
  a2c_0, a2c_1, a2c_2, a2c_3, a2c_4, a2c_5, a2c_6, a2c_7,
  a2d_0, a2d_1, a2d_2, a2d_3, a2d_4, a2d_5, a2d_6, a2d_7,
  a2e_0, a2e_1, a2e_2, a2e_3, a2e_4, a2e_5, a2e_6, a2e_7,
  a2f_0, a2f_1, a2f_2, a2f_3, a2f_4, a2f_5, a2f_6, a2f_7,
  a30_0, a30_1, a30_2, a30_3, a30_4, a30_5, a30_6, a30_7,
  a31_0, a31_1, a31_2, a31_3, a31_4, a31_5, a31_6, a31_7,
  a32_0, a32_1, a32_2, a32_3, a32_4, a32_5, a32_6, a32_7,
  a33_0, a33_1, a33_2, a33_3, a33_4, a33_5, a33_6, a33_7,
  a34_0, a34_1, a34_2, a34_3, a34_4, a34_5, a34_6, a34_7,
  a35_0, a35_1, a35_2, a35_3, a35_4, a35_5, a35_6, a35_7,
  a36_0, a36_1, a36_2, a36_3, a36_4, a36_5, a36_6, a36_7,
  a37_0, a37_1, a37_2, a37_3, a37_4, a37_5, a37_6, a37_7,
  a38_0, a38_1, a38_2, a38_3, a38_4, a38_5, a38_6, a38_7,
  a39_0, a39_1, a39_2, a39_3, a39_4, a39_5, a39_6, a39_7,
  a3a_0, a3a_1, a3a_2, a3a_3, a3a_4, a3a_5, a3a_6, a3a_7,
  a3b_0, a3b_1, a3b_2, a3b_3, a3b_4, a3b_5, a3b_6, a3b_7,
  a3c_0, a3c_1, a3c_2, a3c_3, a3c_4, a3c_5, a3c_6, a3c_7,
  a3d_0, a3d_1, a3d_2, a3d_3, a3d_4, a3d_5, a3d_6, a3d_7,
  a3e_0, a3e_1, a3e_2, a3e_3, a3e_4, a3e_5, a3e_6, a3e_7,
  a3f_0, a3f_1, a3f_2, a3f_3, a3f_4, a3f_5, a3f_6, a3f_7,
  a40_0, a40_1, a40_2, a40_3, a40_4, a40_5, a40_6, a40_7,
  a41_0, a41_1, a41_2, a41_3, a41_4, a41_5, a41_6, a41_7,
  a42_0, a42_1, a42_2, a42_3, a42_4, a42_5, a42_6, a42_7,
  a43_0, a43_1, a43_2, a43_3, a43_4, a43_5, a43_6, a43_7,
  a44_0, a44_1, a44_2, a44_3, a44_4, a44_5, a44_6, a44_7,
  a45_0, a45_1, a45_2, a45_3, a45_4, a45_5, a45_6, a45_7,
  a46_0, a46_1, a46_2, a46_3, a46_4, a46_5, a46_6, a46_7,
  a47_0, a47_1, a47_2, a47_3, a47_4, a47_5, a47_6, a47_7,
  a48_0, a48_1, a48_2, a48_3, a48_4, a48_5, a48_6, a48_7,
  a49_0, a49_1, a49_2, a49_3, a49_4, a49_5, a49_6, a49_7,
  a4a_0, a4a_1, a4a_2, a4a_3, a4a_4, a4a_5, a4a_6, a4a_7,
  a4b_0, a4b_1, a4b_2, a4b_3, a4b_4, a4b_5, a4b_6, a4b_7,
  a4c_0, a4c_1, a4c_2, a4c_3, a4c_4, a4c_5, a4c_6, a4c_7,
  a4d_0, a4d_1, a4d_2, a4d_3, a4d_4, a4d_5, a4d_6, a4d_7,
  a4e_0, a4e_1, a4e_2, a4e_3, a4e_4, a4e_5, a4e_6, a4e_7,
  a4f_0, a4f_1, a4f_2, a4f_3, a4f_4, a4f_5, a4f_6, a4f_7,
  a50_0, a50_1, a50_2, a50_3, a50_4, a50_5, a50_6, a50_7,
  a51_0, a51_1, a51_2, a51_3, a51_4, a51_5, a51_6, a51_7,
  a52_0, a52_1, a52_2, a52_3, a52_4, a52_5, a52_6, a52_7,
  a53_0, a53_1, a53_2, a53_3, a53_4, a53_5, a53_6, a53_7,
  a54_0, a54_1, a54_2, a54_3, a54_4, a54_5, a54_6, a54_7,
  a55_0, a55_1, a55_2, a55_3, a55_4, a55_5, a55_6, a55_7,
  a56_0, a56_1, a56_2, a56_3, a56_4, a56_5, a56_6, a56_7,
  a57_0, a57_1, a57_2, a57_3, a57_4, a57_5, a57_6, a57_7,
  acc2c_0, acc2c_1, acc2c_2, acc2c_3, acc2c_4, acc2c_5, acc2c_6, acc2c_7,
  acc2d_0, acc2d_1, acc2d_2, acc2d_3, acc2d_4, acc2d_5, acc2d_6, acc2d_7,
  acc2e_0, acc2e_1, acc2e_2, acc2e_3, acc2e_4, acc2e_5, acc2e_6, acc2e_7,
  acc2f_0, acc2f_1, acc2f_2, acc2f_3, acc2f_4, acc2f_5, acc2f_6, acc2f_7,
  acc30_0, acc30_1, acc30_2, acc30_3, acc30_4, acc30_5, acc30_6, acc30_7,
  acc31_0, acc31_1, acc31_2, acc31_3, acc31_4, acc31_5, acc31_6, acc31_7,
  acc32_0, acc32_1, acc32_2, acc32_3, acc32_4, acc32_5, acc32_6, acc32_7,
  acc33_0, acc33_1, acc33_2, acc33_3, acc33_4, acc33_5, acc33_6, acc33_7,
  acc34_0, acc34_1, acc34_2, acc34_3, acc34_4, acc34_5, acc34_6, acc34_7,
  acc35_0, acc35_1, acc35_2, acc35_3, acc35_4, acc35_5, acc35_6, acc35_7,
  acc36_0, acc36_1, acc36_2, acc36_3, acc36_4, acc36_5, acc36_6, acc36_7,
  acc37_0, acc37_1, acc37_2, acc37_3, acc37_4, acc37_5, acc37_6, acc37_7,
  acc38_0, acc38_1, acc38_2, acc38_3, acc38_4, acc38_5, acc38_6, acc38_7,
  acc39_0, acc39_1, acc39_2, acc39_3, acc39_4, acc39_5, acc39_6, acc39_7,
  acc3a_0, acc3a_1, acc3a_2, acc3a_3, acc3a_4, acc3a_5, acc3a_6, acc3a_7,
  acc3b_0, acc3b_1, acc3b_2, acc3b_3, acc3b_4, acc3b_5, acc3b_6, acc3b_7,
  acc3c_0, acc3c_1, acc3c_2, acc3c_3, acc3c_4, acc3c_5, acc3c_6, acc3c_7,
  acc3d_0, acc3d_1, acc3d_2, acc3d_3, acc3d_4, acc3d_5, acc3d_6, acc3d_7,
  acc3e_0, acc3e_1, acc3e_2, acc3e_3, acc3e_4, acc3e_5, acc3e_6, acc3e_7,
  acc3f_0, acc3f_1, acc3f_2, acc3f_3, acc3f_4, acc3f_5, acc3f_6, acc3f_7,
  acc40_0, acc40_1, acc40_2, acc40_3, acc40_4, acc40_5, acc40_6, acc40_7,
  acc41_0, acc41_1, acc41_2, acc41_3, acc41_4, acc41_5, acc41_6, acc41_7,
  acc42_0, acc42_1, acc42_2, acc42_3, acc42_4, acc42_5, acc42_6, acc42_7,
  acc43_0, acc43_1, acc43_2, acc43_3, acc43_4, acc43_5, acc43_6, acc43_7,
  acc44_0, acc44_1, acc44_2, acc44_3, acc44_4, acc44_5, acc44_6, acc44_7,
  acc45_0, acc45_1, acc45_2, acc45_3, acc45_4, acc45_5, acc45_6, acc45_7,
  acc46_0, acc46_1, acc46_2, acc46_3, acc46_4, acc46_5, acc46_6, acc46_7,
  acc47_0, acc47_1, acc47_2, acc47_3, acc47_4, acc47_5, acc47_6, acc47_7,
  acc48_0, acc48_1, acc48_2, acc48_3, acc48_4, acc48_5, acc48_6, acc48_7,
  acc49_0, acc49_1, acc49_2, acc49_3, acc49_4, acc49_5, acc49_6, acc49_7,
  acc4a_0, acc4a_1, acc4a_2, acc4a_3, acc4a_4, acc4a_5, acc4a_6, acc4a_7,
  acc4b_0, acc4b_1, acc4b_2, acc4b_3, acc4b_4, acc4b_5, acc4b_6, acc4b_7,
  acc4c_0, acc4c_1, acc4c_2, acc4c_3, acc4c_4, acc4c_5, acc4c_6, acc4c_7,
  acc4d_0, acc4d_1, acc4d_2, acc4d_3, acc4d_4, acc4d_5, acc4d_6, acc4d_7,
  acc4e_0, acc4e_1, acc4e_2, acc4e_3, acc4e_4, acc4e_5, acc4e_6, acc4e_7,
  acc4f_0, acc4f_1, acc4f_2, acc4f_3, acc4f_4, acc4f_5, acc4f_6, acc4f_7,
  acc50_0, acc50_1, acc50_2, acc50_3, acc50_4, acc50_5, acc50_6, acc50_7,
  acc51_0, acc51_1, acc51_2, acc51_3, acc51_4, acc51_5, acc51_6, acc51_7,
  acc52_0, acc52_1, acc52_2, acc52_3, acc52_4, acc52_5, acc52_6, acc52_7,
  acc53_0, acc53_1, acc53_2, acc53_3, acc53_4, acc53_5, acc53_6, acc53_7,
  acc54_0, acc54_1, acc54_2, acc54_3, acc54_4, acc54_5, acc54_6, acc54_7,
  acc55_0, acc55_1, acc55_2, acc55_3, acc55_4, acc55_5, acc55_6, acc55_7,
  acc56_0, acc56_1, acc56_2, acc56_3, acc56_4, acc56_5, acc56_6, acc56_7,
  acc57_0, acc57_1, acc57_2, acc57_3, acc57_4, acc57_5, acc57_6, acc57_7,
  b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7, Z,
  r2c_0, r2c_1, r2c_2, r2c_3, r2c_4, r2c_5, r2c_6, r2c_7, 
  r2d_0, r2d_1, r2d_2, r2d_3, r2d_4, r2d_5, r2d_6, r2d_7, 
  r2e_0, r2e_1, r2e_2, r2e_3, r2e_4, r2e_5, r2e_6, r2e_7, 
  r2f_0, r2f_1, r2f_2, r2f_3, r2f_4, r2f_5, r2f_6, r2f_7, 
  r30_0, r30_1, r30_2, r30_3, r30_4, r30_5, r30_6, r30_7, 
  r31_0, r31_1, r31_2, r31_3, r31_4, r31_5, r31_6, r31_7, 
  r32_0, r32_1, r32_2, r32_3, r32_4, r32_5, r32_6, r32_7, 
  r33_0, r33_1, r33_2, r33_3, r33_4, r33_5, r33_6, r33_7, 
  r34_0, r34_1, r34_2, r34_3, r34_4, r34_5, r34_6, r34_7, 
  r35_0, r35_1, r35_2, r35_3, r35_4, r35_5, r35_6, r35_7, 
  r36_0, r36_1, r36_2, r36_3, r36_4, r36_5, r36_6, r36_7, 
  r37_0, r37_1, r37_2, r37_3, r37_4, r37_5, r37_6, r37_7, 
  r38_0, r38_1, r38_2, r38_3, r38_4, r38_5, r38_6, r38_7, 
  r39_0, r39_1, r39_2, r39_3, r39_4, r39_5, r39_6, r39_7, 
  r3a_0, r3a_1, r3a_2, r3a_3, r3a_4, r3a_5, r3a_6, r3a_7, 
  r3b_0, r3b_1, r3b_2, r3b_3, r3b_4, r3b_5, r3b_6, r3b_7, 
  r3c_0, r3c_1, r3c_2, r3c_3, r3c_4, r3c_5, r3c_6, r3c_7, 
  r3d_0, r3d_1, r3d_2, r3d_3, r3d_4, r3d_5, r3d_6, r3d_7, 
  r3e_0, r3e_1, r3e_2, r3e_3, r3e_4, r3e_5, r3e_6, r3e_7, 
  r3f_0, r3f_1, r3f_2, r3f_3, r3f_4, r3f_5, r3f_6, r3f_7, 
  r40_0, r40_1, r40_2, r40_3, r40_4, r40_5, r40_6, r40_7, 
  r41_0, r41_1, r41_2, r41_3, r41_4, r41_5, r41_6, r41_7, 
  r42_0, r42_1, r42_2, r42_3, r42_4, r42_5, r42_6, r42_7, 
  r43_0, r43_1, r43_2, r43_3, r43_4, r43_5, r43_6, r43_7, 
  r44_0, r44_1, r44_2, r44_3, r44_4, r44_5, r44_6, r44_7, 
  r45_0, r45_1, r45_2, r45_3, r45_4, r45_5, r45_6, r45_7, 
  r46_0, r46_1, r46_2, r46_3, r46_4, r46_5, r46_6, r46_7, 
  r47_0, r47_1, r47_2, r47_3, r47_4, r47_5, r47_6, r47_7, 
  r48_0, r48_1, r48_2, r48_3, r48_4, r48_5, r48_6, r48_7, 
  r49_0, r49_1, r49_2, r49_3, r49_4, r49_5, r49_6, r49_7, 
  r4a_0, r4a_1, r4a_2, r4a_3, r4a_4, r4a_5, r4a_6, r4a_7, 
  r4b_0, r4b_1, r4b_2, r4b_3, r4b_4, r4b_5, r4b_6, r4b_7, 
  r4c_0, r4c_1, r4c_2, r4c_3, r4c_4, r4c_5, r4c_6, r4c_7, 
  r4d_0, r4d_1, r4d_2, r4d_3, r4d_4, r4d_5, r4d_6, r4d_7, 
  r4e_0, r4e_1, r4e_2, r4e_3, r4e_4, r4e_5, r4e_6, r4e_7, 
  r4f_0, r4f_1, r4f_2, r4f_3, r4f_4, r4f_5, r4f_6, r4f_7, 
  r50_0, r50_1, r50_2, r50_3, r50_4, r50_5, r50_6, r50_7, 
  r51_0, r51_1, r51_2, r51_3, r51_4, r51_5, r51_6, r51_7, 
  r52_0, r52_1, r52_2, r52_3, r52_4, r52_5, r52_6, r52_7, 
  r53_0, r53_1, r53_2, r53_3, r53_4, r53_5, r53_6, r53_7, 
  r54_0, r54_1, r54_2, r54_3, r54_4, r54_5, r54_6, r54_7, 
  r55_0, r55_1, r55_2, r55_3, r55_4, r55_5, r55_6, r55_7, 
  r56_0, r56_1, r56_2, r56_3, r56_4, r56_5, r56_6, r56_7, 
  r57_0, r57_1, r57_2, r57_3, r57_4, r57_5, r57_6, r57_7
);

(* ========== outputs ========== *)

(* join r *)
join tmp r00_1 r00_0; join tmp r00_2 tmp;
join tmp r00_3 tmp; join tmp r00_4 tmp;
join tmp r00_5 tmp; join tmp r00_6 tmp;
join r00 r00_7 tmp;
join tmp r01_1 r01_0; join tmp r01_2 tmp;
join tmp r01_3 tmp; join tmp r01_4 tmp;
join tmp r01_5 tmp; join tmp r01_6 tmp;
join r01 r01_7 tmp;
join tmp r02_1 r02_0; join tmp r02_2 tmp;
join tmp r02_3 tmp; join tmp r02_4 tmp;
join tmp r02_5 tmp; join tmp r02_6 tmp;
join r02 r02_7 tmp;
join tmp r03_1 r03_0; join tmp r03_2 tmp;
join tmp r03_3 tmp; join tmp r03_4 tmp;
join tmp r03_5 tmp; join tmp r03_6 tmp;
join r03 r03_7 tmp;
join tmp r04_1 r04_0; join tmp r04_2 tmp;
join tmp r04_3 tmp; join tmp r04_4 tmp;
join tmp r04_5 tmp; join tmp r04_6 tmp;
join r04 r04_7 tmp;
join tmp r05_1 r05_0; join tmp r05_2 tmp;
join tmp r05_3 tmp; join tmp r05_4 tmp;
join tmp r05_5 tmp; join tmp r05_6 tmp;
join r05 r05_7 tmp;
join tmp r06_1 r06_0; join tmp r06_2 tmp;
join tmp r06_3 tmp; join tmp r06_4 tmp;
join tmp r06_5 tmp; join tmp r06_6 tmp;
join r06 r06_7 tmp;
join tmp r07_1 r07_0; join tmp r07_2 tmp;
join tmp r07_3 tmp; join tmp r07_4 tmp;
join tmp r07_5 tmp; join tmp r07_6 tmp;
join r07 r07_7 tmp;
join tmp r08_1 r08_0; join tmp r08_2 tmp;
join tmp r08_3 tmp; join tmp r08_4 tmp;
join tmp r08_5 tmp; join tmp r08_6 tmp;
join r08 r08_7 tmp;
join tmp r09_1 r09_0; join tmp r09_2 tmp;
join tmp r09_3 tmp; join tmp r09_4 tmp;
join tmp r09_5 tmp; join tmp r09_6 tmp;
join r09 r09_7 tmp;
join tmp r0a_1 r0a_0; join tmp r0a_2 tmp;
join tmp r0a_3 tmp; join tmp r0a_4 tmp;
join tmp r0a_5 tmp; join tmp r0a_6 tmp;
join r0a r0a_7 tmp;
join tmp r0b_1 r0b_0; join tmp r0b_2 tmp;
join tmp r0b_3 tmp; join tmp r0b_4 tmp;
join tmp r0b_5 tmp; join tmp r0b_6 tmp;
join r0b r0b_7 tmp;
join tmp r0c_1 r0c_0; join tmp r0c_2 tmp;
join tmp r0c_3 tmp; join tmp r0c_4 tmp;
join tmp r0c_5 tmp; join tmp r0c_6 tmp;
join r0c r0c_7 tmp;
join tmp r0d_1 r0d_0; join tmp r0d_2 tmp;
join tmp r0d_3 tmp; join tmp r0d_4 tmp;
join tmp r0d_5 tmp; join tmp r0d_6 tmp;
join r0d r0d_7 tmp;
join tmp r0e_1 r0e_0; join tmp r0e_2 tmp;
join tmp r0e_3 tmp; join tmp r0e_4 tmp;
join tmp r0e_5 tmp; join tmp r0e_6 tmp;
join r0e r0e_7 tmp;
join tmp r0f_1 r0f_0; join tmp r0f_2 tmp;
join tmp r0f_3 tmp; join tmp r0f_4 tmp;
join tmp r0f_5 tmp; join tmp r0f_6 tmp;
join r0f r0f_7 tmp;
join tmp r10_1 r10_0; join tmp r10_2 tmp;
join tmp r10_3 tmp; join tmp r10_4 tmp;
join tmp r10_5 tmp; join tmp r10_6 tmp;
join r10 r10_7 tmp;
join tmp r11_1 r11_0; join tmp r11_2 tmp;
join tmp r11_3 tmp; join tmp r11_4 tmp;
join tmp r11_5 tmp; join tmp r11_6 tmp;
join r11 r11_7 tmp;
join tmp r12_1 r12_0; join tmp r12_2 tmp;
join tmp r12_3 tmp; join tmp r12_4 tmp;
join tmp r12_5 tmp; join tmp r12_6 tmp;
join r12 r12_7 tmp;
join tmp r13_1 r13_0; join tmp r13_2 tmp;
join tmp r13_3 tmp; join tmp r13_4 tmp;
join tmp r13_5 tmp; join tmp r13_6 tmp;
join r13 r13_7 tmp;
join tmp r14_1 r14_0; join tmp r14_2 tmp;
join tmp r14_3 tmp; join tmp r14_4 tmp;
join tmp r14_5 tmp; join tmp r14_6 tmp;
join r14 r14_7 tmp;
join tmp r15_1 r15_0; join tmp r15_2 tmp;
join tmp r15_3 tmp; join tmp r15_4 tmp;
join tmp r15_5 tmp; join tmp r15_6 tmp;
join r15 r15_7 tmp;
join tmp r16_1 r16_0; join tmp r16_2 tmp;
join tmp r16_3 tmp; join tmp r16_4 tmp;
join tmp r16_5 tmp; join tmp r16_6 tmp;
join r16 r16_7 tmp;
join tmp r17_1 r17_0; join tmp r17_2 tmp;
join tmp r17_3 tmp; join tmp r17_4 tmp;
join tmp r17_5 tmp; join tmp r17_6 tmp;
join r17 r17_7 tmp;
join tmp r18_1 r18_0; join tmp r18_2 tmp;
join tmp r18_3 tmp; join tmp r18_4 tmp;
join tmp r18_5 tmp; join tmp r18_6 tmp;
join r18 r18_7 tmp;
join tmp r19_1 r19_0; join tmp r19_2 tmp;
join tmp r19_3 tmp; join tmp r19_4 tmp;
join tmp r19_5 tmp; join tmp r19_6 tmp;
join r19 r19_7 tmp;
join tmp r1a_1 r1a_0; join tmp r1a_2 tmp;
join tmp r1a_3 tmp; join tmp r1a_4 tmp;
join tmp r1a_5 tmp; join tmp r1a_6 tmp;
join r1a r1a_7 tmp;
join tmp r1b_1 r1b_0; join tmp r1b_2 tmp;
join tmp r1b_3 tmp; join tmp r1b_4 tmp;
join tmp r1b_5 tmp; join tmp r1b_6 tmp;
join r1b r1b_7 tmp;
join tmp r1c_1 r1c_0; join tmp r1c_2 tmp;
join tmp r1c_3 tmp; join tmp r1c_4 tmp;
join tmp r1c_5 tmp; join tmp r1c_6 tmp;
join r1c r1c_7 tmp;
join tmp r1d_1 r1d_0; join tmp r1d_2 tmp;
join tmp r1d_3 tmp; join tmp r1d_4 tmp;
join tmp r1d_5 tmp; join tmp r1d_6 tmp;
join r1d r1d_7 tmp;
join tmp r1e_1 r1e_0; join tmp r1e_2 tmp;
join tmp r1e_3 tmp; join tmp r1e_4 tmp;
join tmp r1e_5 tmp; join tmp r1e_6 tmp;
join r1e r1e_7 tmp;
join tmp r1f_1 r1f_0; join tmp r1f_2 tmp;
join tmp r1f_3 tmp; join tmp r1f_4 tmp;
join tmp r1f_5 tmp; join tmp r1f_6 tmp;
join r1f r1f_7 tmp;
join tmp r20_1 r20_0; join tmp r20_2 tmp;
join tmp r20_3 tmp; join tmp r20_4 tmp;
join tmp r20_5 tmp; join tmp r20_6 tmp;
join r20 r20_7 tmp;
join tmp r21_1 r21_0; join tmp r21_2 tmp;
join tmp r21_3 tmp; join tmp r21_4 tmp;
join tmp r21_5 tmp; join tmp r21_6 tmp;
join r21 r21_7 tmp;
join tmp r22_1 r22_0; join tmp r22_2 tmp;
join tmp r22_3 tmp; join tmp r22_4 tmp;
join tmp r22_5 tmp; join tmp r22_6 tmp;
join r22 r22_7 tmp;
join tmp r23_1 r23_0; join tmp r23_2 tmp;
join tmp r23_3 tmp; join tmp r23_4 tmp;
join tmp r23_5 tmp; join tmp r23_6 tmp;
join r23 r23_7 tmp;
join tmp r24_1 r24_0; join tmp r24_2 tmp;
join tmp r24_3 tmp; join tmp r24_4 tmp;
join tmp r24_5 tmp; join tmp r24_6 tmp;
join r24 r24_7 tmp;
join tmp r25_1 r25_0; join tmp r25_2 tmp;
join tmp r25_3 tmp; join tmp r25_4 tmp;
join tmp r25_5 tmp; join tmp r25_6 tmp;
join r25 r25_7 tmp;
join tmp r26_1 r26_0; join tmp r26_2 tmp;
join tmp r26_3 tmp; join tmp r26_4 tmp;
join tmp r26_5 tmp; join tmp r26_6 tmp;
join r26 r26_7 tmp;
join tmp r27_1 r27_0; join tmp r27_2 tmp;
join tmp r27_3 tmp; join tmp r27_4 tmp;
join tmp r27_5 tmp; join tmp r27_6 tmp;
join r27 r27_7 tmp;
join tmp r28_1 r28_0; join tmp r28_2 tmp;
join tmp r28_3 tmp; join tmp r28_4 tmp;
join tmp r28_5 tmp; join tmp r28_6 tmp;
join r28 r28_7 tmp;
join tmp r29_1 r29_0; join tmp r29_2 tmp;
join tmp r29_3 tmp; join tmp r29_4 tmp;
join tmp r29_5 tmp; join tmp r29_6 tmp;
join r29 r29_7 tmp;
join tmp r2a_1 r2a_0; join tmp r2a_2 tmp;
join tmp r2a_3 tmp; join tmp r2a_4 tmp;
join tmp r2a_5 tmp; join tmp r2a_6 tmp;
join r2a r2a_7 tmp;
join tmp r2b_1 r2b_0; join tmp r2b_2 tmp;
join tmp r2b_3 tmp; join tmp r2b_4 tmp;
join tmp r2b_5 tmp; join tmp r2b_6 tmp;
join r2b r2b_7 tmp;
join tmp r2c_1 r2c_0; join tmp r2c_2 tmp;
join tmp r2c_3 tmp; join tmp r2c_4 tmp;
join tmp r2c_5 tmp; join tmp r2c_6 tmp;
join r2c r2c_7 tmp;
join tmp r2d_1 r2d_0; join tmp r2d_2 tmp;
join tmp r2d_3 tmp; join tmp r2d_4 tmp;
join tmp r2d_5 tmp; join tmp r2d_6 tmp;
join r2d r2d_7 tmp;
join tmp r2e_1 r2e_0; join tmp r2e_2 tmp;
join tmp r2e_3 tmp; join tmp r2e_4 tmp;
join tmp r2e_5 tmp; join tmp r2e_6 tmp;
join r2e r2e_7 tmp;
join tmp r2f_1 r2f_0; join tmp r2f_2 tmp;
join tmp r2f_3 tmp; join tmp r2f_4 tmp;
join tmp r2f_5 tmp; join tmp r2f_6 tmp;
join r2f r2f_7 tmp;
join tmp r30_1 r30_0; join tmp r30_2 tmp;
join tmp r30_3 tmp; join tmp r30_4 tmp;
join tmp r30_5 tmp; join tmp r30_6 tmp;
join r30 r30_7 tmp;
join tmp r31_1 r31_0; join tmp r31_2 tmp;
join tmp r31_3 tmp; join tmp r31_4 tmp;
join tmp r31_5 tmp; join tmp r31_6 tmp;
join r31 r31_7 tmp;
join tmp r32_1 r32_0; join tmp r32_2 tmp;
join tmp r32_3 tmp; join tmp r32_4 tmp;
join tmp r32_5 tmp; join tmp r32_6 tmp;
join r32 r32_7 tmp;
join tmp r33_1 r33_0; join tmp r33_2 tmp;
join tmp r33_3 tmp; join tmp r33_4 tmp;
join tmp r33_5 tmp; join tmp r33_6 tmp;
join r33 r33_7 tmp;
join tmp r34_1 r34_0; join tmp r34_2 tmp;
join tmp r34_3 tmp; join tmp r34_4 tmp;
join tmp r34_5 tmp; join tmp r34_6 tmp;
join r34 r34_7 tmp;
join tmp r35_1 r35_0; join tmp r35_2 tmp;
join tmp r35_3 tmp; join tmp r35_4 tmp;
join tmp r35_5 tmp; join tmp r35_6 tmp;
join r35 r35_7 tmp;
join tmp r36_1 r36_0; join tmp r36_2 tmp;
join tmp r36_3 tmp; join tmp r36_4 tmp;
join tmp r36_5 tmp; join tmp r36_6 tmp;
join r36 r36_7 tmp;
join tmp r37_1 r37_0; join tmp r37_2 tmp;
join tmp r37_3 tmp; join tmp r37_4 tmp;
join tmp r37_5 tmp; join tmp r37_6 tmp;
join r37 r37_7 tmp;
join tmp r38_1 r38_0; join tmp r38_2 tmp;
join tmp r38_3 tmp; join tmp r38_4 tmp;
join tmp r38_5 tmp; join tmp r38_6 tmp;
join r38 r38_7 tmp;
join tmp r39_1 r39_0; join tmp r39_2 tmp;
join tmp r39_3 tmp; join tmp r39_4 tmp;
join tmp r39_5 tmp; join tmp r39_6 tmp;
join r39 r39_7 tmp;
join tmp r3a_1 r3a_0; join tmp r3a_2 tmp;
join tmp r3a_3 tmp; join tmp r3a_4 tmp;
join tmp r3a_5 tmp; join tmp r3a_6 tmp;
join r3a r3a_7 tmp;
join tmp r3b_1 r3b_0; join tmp r3b_2 tmp;
join tmp r3b_3 tmp; join tmp r3b_4 tmp;
join tmp r3b_5 tmp; join tmp r3b_6 tmp;
join r3b r3b_7 tmp;
join tmp r3c_1 r3c_0; join tmp r3c_2 tmp;
join tmp r3c_3 tmp; join tmp r3c_4 tmp;
join tmp r3c_5 tmp; join tmp r3c_6 tmp;
join r3c r3c_7 tmp;
join tmp r3d_1 r3d_0; join tmp r3d_2 tmp;
join tmp r3d_3 tmp; join tmp r3d_4 tmp;
join tmp r3d_5 tmp; join tmp r3d_6 tmp;
join r3d r3d_7 tmp;
join tmp r3e_1 r3e_0; join tmp r3e_2 tmp;
join tmp r3e_3 tmp; join tmp r3e_4 tmp;
join tmp r3e_5 tmp; join tmp r3e_6 tmp;
join r3e r3e_7 tmp;
join tmp r3f_1 r3f_0; join tmp r3f_2 tmp;
join tmp r3f_3 tmp; join tmp r3f_4 tmp;
join tmp r3f_5 tmp; join tmp r3f_6 tmp;
join r3f r3f_7 tmp;


{
  true
  &&
  true
}
