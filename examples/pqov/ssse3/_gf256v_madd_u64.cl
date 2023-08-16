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

proc main (uint8 acc00, uint8 acc01, uint8 acc02, uint8 acc03,
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
           uint8 b) =
{ true && true }
spl A007 t acc00 7;spl A006 t t 6;spl A005 t t 5;spl A004 t t 4;
spl A003 t t 3;spl A002 t t 2;spl A001 A000 t 1;
spl A00f t acc01 7;spl A00e t t 6;spl A00d t t 5;spl A00c t t 4;
spl A00b t t 3;spl A00a t t 2;spl A009 A008 t 1;
spl A017 t acc02 7;spl A016 t t 6;spl A015 t t 5;spl A014 t t 4;
spl A013 t t 3;spl A012 t t 2;spl A011 A010 t 1;
spl A01f t acc03 7;spl A01e t t 6;spl A01d t t 5;spl A01c t t 4;
spl A01b t t 3;spl A01a t t 2;spl A019 A018 t 1;
spl A027 t acc04 7;spl A026 t t 6;spl A025 t t 5;spl A024 t t 4;
spl A023 t t 3;spl A022 t t 2;spl A021 A020 t 1;
spl A02f t acc05 7;spl A02e t t 6;spl A02d t t 5;spl A02c t t 4;
spl A02b t t 3;spl A02a t t 2;spl A029 A028 t 1;
spl A037 t acc06 7;spl A036 t t 6;spl A035 t t 5;spl A034 t t 4;
spl A033 t t 3;spl A032 t t 2;spl A031 A030 t 1;
spl A03f t acc07 7;spl A03e t t 6;spl A03d t t 5;spl A03c t t 4;
spl A03b t t 3;spl A03a t t 2;spl A039 A038 t 1;
spl A107 t acc08 7;spl A106 t t 6;spl A105 t t 5;spl A104 t t 4;
spl A103 t t 3;spl A102 t t 2;spl A101 A100 t 1;
spl A10f t acc09 7;spl A10e t t 6;spl A10d t t 5;spl A10c t t 4;
spl A10b t t 3;spl A10a t t 2;spl A109 A108 t 1;
spl A117 t acc0a 7;spl A116 t t 6;spl A115 t t 5;spl A114 t t 4;
spl A113 t t 3;spl A112 t t 2;spl A111 A110 t 1;
spl A11f t acc0b 7;spl A11e t t 6;spl A11d t t 5;spl A11c t t 4;
spl A11b t t 3;spl A11a t t 2;spl A119 A118 t 1;
spl A127 t acc0c 7;spl A126 t t 6;spl A125 t t 5;spl A124 t t 4;
spl A123 t t 3;spl A122 t t 2;spl A121 A120 t 1;
spl A12f t acc0d 7;spl A12e t t 6;spl A12d t t 5;spl A12c t t 4;
spl A12b t t 3;spl A12a t t 2;spl A129 A128 t 1;
spl A137 t acc0e 7;spl A136 t t 6;spl A135 t t 5;spl A134 t t 4;
spl A133 t t 3;spl A132 t t 2;spl A131 A130 t 1;
spl A13f t acc0f 7;spl A13e t t 6;spl A13d t t 5;spl A13c t t 4;
spl A13b t t 3;spl A13a t t 2;spl A139 A138 t 1;
spl A207 t acc10 7;spl A206 t t 6;spl A205 t t 5;spl A204 t t 4;
spl A203 t t 3;spl A202 t t 2;spl A201 A200 t 1;
spl A20f t acc11 7;spl A20e t t 6;spl A20d t t 5;spl A20c t t 4;
spl A20b t t 3;spl A20a t t 2;spl A209 A208 t 1;
spl A217 t acc12 7;spl A216 t t 6;spl A215 t t 5;spl A214 t t 4;
spl A213 t t 3;spl A212 t t 2;spl A211 A210 t 1;
spl A21f t acc13 7;spl A21e t t 6;spl A21d t t 5;spl A21c t t 4;
spl A21b t t 3;spl A21a t t 2;spl A219 A218 t 1;
spl A227 t acc14 7;spl A226 t t 6;spl A225 t t 5;spl A224 t t 4;
spl A223 t t 3;spl A222 t t 2;spl A221 A220 t 1;
spl A22f t acc15 7;spl A22e t t 6;spl A22d t t 5;spl A22c t t 4;
spl A22b t t 3;spl A22a t t 2;spl A229 A228 t 1;
spl A237 t acc16 7;spl A236 t t 6;spl A235 t t 5;spl A234 t t 4;
spl A233 t t 3;spl A232 t t 2;spl A231 A230 t 1;
spl A23f t acc17 7;spl A23e t t 6;spl A23d t t 5;spl A23c t t 4;
spl A23b t t 3;spl A23a t t 2;spl A239 A238 t 1;
spl A307 t acc18 7;spl A306 t t 6;spl A305 t t 5;spl A304 t t 4;
spl A303 t t 3;spl A302 t t 2;spl A301 A300 t 1;
spl A30f t acc19 7;spl A30e t t 6;spl A30d t t 5;spl A30c t t 4;
spl A30b t t 3;spl A30a t t 2;spl A309 A308 t 1;
spl A317 t acc1a 7;spl A316 t t 6;spl A315 t t 5;spl A314 t t 4;
spl A313 t t 3;spl A312 t t 2;spl A311 A310 t 1;
spl A31f t acc1b 7;spl A31e t t 6;spl A31d t t 5;spl A31c t t 4;
spl A31b t t 3;spl A31a t t 2;spl A319 A318 t 1;
spl A327 t acc1c 7;spl A326 t t 6;spl A325 t t 5;spl A324 t t 4;
spl A323 t t 3;spl A322 t t 2;spl A321 A320 t 1;
spl A32f t acc1d 7;spl A32e t t 6;spl A32d t t 5;spl A32c t t 4;
spl A32b t t 3;spl A32a t t 2;spl A329 A328 t 1;
spl A337 t acc1e 7;spl A336 t t 6;spl A335 t t 5;spl A334 t t 4;
spl A333 t t 3;spl A332 t t 2;spl A331 A330 t 1;
spl A33f t acc1f 7;spl A33e t t 6;spl A33d t t 5;spl A33c t t 4;
spl A33b t t 3;spl A33a t t 2;spl A339 A338 t 1;
spl A407 t acc20 7;spl A406 t t 6;spl A405 t t 5;spl A404 t t 4;
spl A403 t t 3;spl A402 t t 2;spl A401 A400 t 1;
spl A40f t acc21 7;spl A40e t t 6;spl A40d t t 5;spl A40c t t 4;
spl A40b t t 3;spl A40a t t 2;spl A409 A408 t 1;
spl A417 t acc22 7;spl A416 t t 6;spl A415 t t 5;spl A414 t t 4;
spl A413 t t 3;spl A412 t t 2;spl A411 A410 t 1;
spl A41f t acc23 7;spl A41e t t 6;spl A41d t t 5;spl A41c t t 4;
spl A41b t t 3;spl A41a t t 2;spl A419 A418 t 1;
spl A427 t acc24 7;spl A426 t t 6;spl A425 t t 5;spl A424 t t 4;
spl A423 t t 3;spl A422 t t 2;spl A421 A420 t 1;
spl A42f t acc25 7;spl A42e t t 6;spl A42d t t 5;spl A42c t t 4;
spl A42b t t 3;spl A42a t t 2;spl A429 A428 t 1;
spl A437 t acc26 7;spl A436 t t 6;spl A435 t t 5;spl A434 t t 4;
spl A433 t t 3;spl A432 t t 2;spl A431 A430 t 1;
spl A43f t acc27 7;spl A43e t t 6;spl A43d t t 5;spl A43c t t 4;
spl A43b t t 3;spl A43a t t 2;spl A439 A438 t 1;
spl A507 t acc28 7;spl A506 t t 6;spl A505 t t 5;spl A504 t t 4;
spl A503 t t 3;spl A502 t t 2;spl A501 A500 t 1;
spl A50f t acc29 7;spl A50e t t 6;spl A50d t t 5;spl A50c t t 4;
spl A50b t t 3;spl A50a t t 2;spl A509 A508 t 1;
spl A517 t acc2a 7;spl A516 t t 6;spl A515 t t 5;spl A514 t t 4;
spl A513 t t 3;spl A512 t t 2;spl A511 A510 t 1;
spl A51f t acc2b 7;spl A51e t t 6;spl A51d t t 5;spl A51c t t 4;
spl A51b t t 3;spl A51a t t 2;spl A519 A518 t 1;
spl A527 t acc2c 7;spl A526 t t 6;spl A525 t t 5;spl A524 t t 4;
spl A523 t t 3;spl A522 t t 2;spl A521 A520 t 1;
spl A52f t acc2d 7;spl A52e t t 6;spl A52d t t 5;spl A52c t t 4;
spl A52b t t 3;spl A52a t t 2;spl A529 A528 t 1;
spl A537 t acc2e 7;spl A536 t t 6;spl A535 t t 5;spl A534 t t 4;
spl A533 t t 3;spl A532 t t 2;spl A531 A530 t 1;
spl A53f t acc2f 7;spl A53e t t 6;spl A53d t t 5;spl A53c t t 4;
spl A53b t t 3;spl A53a t t 2;spl A539 A538 t 1;
spl a007 t a00 7;spl a006 t t 6;spl a005 t t 5;spl a004 t t 4;
spl a003 t t 3;spl a002 t t 2;spl a001 a000 t 1;
spl a00f t a01 7;spl a00e t t 6;spl a00d t t 5;spl a00c t t 4;
spl a00b t t 3;spl a00a t t 2;spl a009 a008 t 1;
spl a017 t a02 7;spl a016 t t 6;spl a015 t t 5;spl a014 t t 4;
spl a013 t t 3;spl a012 t t 2;spl a011 a010 t 1;
spl a01f t a03 7;spl a01e t t 6;spl a01d t t 5;spl a01c t t 4;
spl a01b t t 3;spl a01a t t 2;spl a019 a018 t 1;
spl a027 t a04 7;spl a026 t t 6;spl a025 t t 5;spl a024 t t 4;
spl a023 t t 3;spl a022 t t 2;spl a021 a020 t 1;
spl a02f t a05 7;spl a02e t t 6;spl a02d t t 5;spl a02c t t 4;
spl a02b t t 3;spl a02a t t 2;spl a029 a028 t 1;
spl a037 t a06 7;spl a036 t t 6;spl a035 t t 5;spl a034 t t 4;
spl a033 t t 3;spl a032 t t 2;spl a031 a030 t 1;
spl a03f t a07 7;spl a03e t t 6;spl a03d t t 5;spl a03c t t 4;
spl a03b t t 3;spl a03a t t 2;spl a039 a038 t 1;
spl a107 t a08 7;spl a106 t t 6;spl a105 t t 5;spl a104 t t 4;
spl a103 t t 3;spl a102 t t 2;spl a101 a100 t 1;
spl a10f t a09 7;spl a10e t t 6;spl a10d t t 5;spl a10c t t 4;
spl a10b t t 3;spl a10a t t 2;spl a109 a108 t 1;
spl a117 t a0a 7;spl a116 t t 6;spl a115 t t 5;spl a114 t t 4;
spl a113 t t 3;spl a112 t t 2;spl a111 a110 t 1;
spl a11f t a0b 7;spl a11e t t 6;spl a11d t t 5;spl a11c t t 4;
spl a11b t t 3;spl a11a t t 2;spl a119 a118 t 1;
spl a127 t a0c 7;spl a126 t t 6;spl a125 t t 5;spl a124 t t 4;
spl a123 t t 3;spl a122 t t 2;spl a121 a120 t 1;
spl a12f t a0d 7;spl a12e t t 6;spl a12d t t 5;spl a12c t t 4;
spl a12b t t 3;spl a12a t t 2;spl a129 a128 t 1;
spl a137 t a0e 7;spl a136 t t 6;spl a135 t t 5;spl a134 t t 4;
spl a133 t t 3;spl a132 t t 2;spl a131 a130 t 1;
spl a13f t a0f 7;spl a13e t t 6;spl a13d t t 5;spl a13c t t 4;
spl a13b t t 3;spl a13a t t 2;spl a139 a138 t 1;
spl a207 t a10 7;spl a206 t t 6;spl a205 t t 5;spl a204 t t 4;
spl a203 t t 3;spl a202 t t 2;spl a201 a200 t 1;
spl a20f t a11 7;spl a20e t t 6;spl a20d t t 5;spl a20c t t 4;
spl a20b t t 3;spl a20a t t 2;spl a209 a208 t 1;
spl a217 t a12 7;spl a216 t t 6;spl a215 t t 5;spl a214 t t 4;
spl a213 t t 3;spl a212 t t 2;spl a211 a210 t 1;
spl a21f t a13 7;spl a21e t t 6;spl a21d t t 5;spl a21c t t 4;
spl a21b t t 3;spl a21a t t 2;spl a219 a218 t 1;
spl a227 t a14 7;spl a226 t t 6;spl a225 t t 5;spl a224 t t 4;
spl a223 t t 3;spl a222 t t 2;spl a221 a220 t 1;
spl a22f t a15 7;spl a22e t t 6;spl a22d t t 5;spl a22c t t 4;
spl a22b t t 3;spl a22a t t 2;spl a229 a228 t 1;
spl a237 t a16 7;spl a236 t t 6;spl a235 t t 5;spl a234 t t 4;
spl a233 t t 3;spl a232 t t 2;spl a231 a230 t 1;
spl a23f t a17 7;spl a23e t t 6;spl a23d t t 5;spl a23c t t 4;
spl a23b t t 3;spl a23a t t 2;spl a239 a238 t 1;
spl a307 t a18 7;spl a306 t t 6;spl a305 t t 5;spl a304 t t 4;
spl a303 t t 3;spl a302 t t 2;spl a301 a300 t 1;
spl a30f t a19 7;spl a30e t t 6;spl a30d t t 5;spl a30c t t 4;
spl a30b t t 3;spl a30a t t 2;spl a309 a308 t 1;
spl a317 t a1a 7;spl a316 t t 6;spl a315 t t 5;spl a314 t t 4;
spl a313 t t 3;spl a312 t t 2;spl a311 a310 t 1;
spl a31f t a1b 7;spl a31e t t 6;spl a31d t t 5;spl a31c t t 4;
spl a31b t t 3;spl a31a t t 2;spl a319 a318 t 1;
spl a327 t a1c 7;spl a326 t t 6;spl a325 t t 5;spl a324 t t 4;
spl a323 t t 3;spl a322 t t 2;spl a321 a320 t 1;
spl a32f t a1d 7;spl a32e t t 6;spl a32d t t 5;spl a32c t t 4;
spl a32b t t 3;spl a32a t t 2;spl a329 a328 t 1;
spl a337 t a1e 7;spl a336 t t 6;spl a335 t t 5;spl a334 t t 4;
spl a333 t t 3;spl a332 t t 2;spl a331 a330 t 1;
spl a33f t a1f 7;spl a33e t t 6;spl a33d t t 5;spl a33c t t 4;
spl a33b t t 3;spl a33a t t 2;spl a339 a338 t 1;
spl a407 t a20 7;spl a406 t t 6;spl a405 t t 5;spl a404 t t 4;
spl a403 t t 3;spl a402 t t 2;spl a401 a400 t 1;
spl a40f t a21 7;spl a40e t t 6;spl a40d t t 5;spl a40c t t 4;
spl a40b t t 3;spl a40a t t 2;spl a409 a408 t 1;
spl a417 t a22 7;spl a416 t t 6;spl a415 t t 5;spl a414 t t 4;
spl a413 t t 3;spl a412 t t 2;spl a411 a410 t 1;
spl a41f t a23 7;spl a41e t t 6;spl a41d t t 5;spl a41c t t 4;
spl a41b t t 3;spl a41a t t 2;spl a419 a418 t 1;
spl a427 t a24 7;spl a426 t t 6;spl a425 t t 5;spl a424 t t 4;
spl a423 t t 3;spl a422 t t 2;spl a421 a420 t 1;
spl a42f t a25 7;spl a42e t t 6;spl a42d t t 5;spl a42c t t 4;
spl a42b t t 3;spl a42a t t 2;spl a429 a428 t 1;
spl a437 t a26 7;spl a436 t t 6;spl a435 t t 5;spl a434 t t 4;
spl a433 t t 3;spl a432 t t 2;spl a431 a430 t 1;
spl a43f t a27 7;spl a43e t t 6;spl a43d t t 5;spl a43c t t 4;
spl a43b t t 3;spl a43a t t 2;spl a439 a438 t 1;
spl a507 t a28 7;spl a506 t t 6;spl a505 t t 5;spl a504 t t 4;
spl a503 t t 3;spl a502 t t 2;spl a501 a500 t 1;
spl a50f t a29 7;spl a50e t t 6;spl a50d t t 5;spl a50c t t 4;
spl a50b t t 3;spl a50a t t 2;spl a509 a508 t 1;
spl a517 t a2a 7;spl a516 t t 6;spl a515 t t 5;spl a514 t t 4;
spl a513 t t 3;spl a512 t t 2;spl a511 a510 t 1;
spl a51f t a2b 7;spl a51e t t 6;spl a51d t t 5;spl a51c t t 4;
spl a51b t t 3;spl a51a t t 2;spl a519 a518 t 1;
spl a527 t a2c 7;spl a526 t t 6;spl a525 t t 5;spl a524 t t 4;
spl a523 t t 3;spl a522 t t 2;spl a521 a520 t 1;
spl a52f t a2d 7;spl a52e t t 6;spl a52d t t 5;spl a52c t t 4;
spl a52b t t 3;spl a52a t t 2;spl a529 a528 t 1;
spl a537 t a2e 7;spl a536 t t 6;spl a535 t t 5;spl a534 t t 4;
spl a533 t t 3;spl a532 t t 2;spl a531 a530 t 1;
spl a53f t a2f 7;spl a53e t t 6;spl a53d t t 5;spl a53c t t 4;
spl a53b t t 3;spl a53a t t 2;spl a539 a538 t 1;

spl b07 t b 7; spl b06 t t 6; spl b05 t t 5; spl b04 t t 4;
spl b03 t t 3; spl b02 t t 2; spl b01 b00 t 1;

nondet Z@bit;

call _gf256v_madd_u64 (a000,a001,a002,a003,a004,a005,a006,a007,
                       a008,a009,a00a,a00b,a00c,a00d,a00e,a00f,
                       a010,a011,a012,a013,a014,a015,a016,a017,
                       a018,a019,a01a,a01b,a01c,a01d,a01e,a01f,
                       a020,a021,a022,a023,a024,a025,a026,a027,
                       a028,a029,a02a,a02b,a02c,a02d,a02e,a02f,
                       a030,a031,a032,a033,a034,a035,a036,a037,
                       a038,a039,a03a,a03b,a03c,a03d,a03e,a03f,
                       a100,a101,a102,a103,a104,a105,a106,a107,
                       a108,a109,a10a,a10b,a10c,a10d,a10e,a10f,
                       a110,a111,a112,a113,a114,a115,a116,a117,
                       a118,a119,a11a,a11b,a11c,a11d,a11e,a11f,
                       a120,a121,a122,a123,a124,a125,a126,a127,
                       a128,a129,a12a,a12b,a12c,a12d,a12e,a12f,
                       a130,a131,a132,a133,a134,a135,a136,a137,
                       a138,a139,a13a,a13b,a13c,a13d,a13e,a13f,
                       a200,a201,a202,a203,a204,a205,a206,a207,
                       a208,a209,a20a,a20b,a20c,a20d,a20e,a20f,
                       a210,a211,a212,a213,a214,a215,a216,a217,
                       a218,a219,a21a,a21b,a21c,a21d,a21e,a21f,
                       a220,a221,a222,a223,a224,a225,a226,a227,
                       a228,a229,a22a,a22b,a22c,a22d,a22e,a22f,
                       a230,a231,a232,a233,a234,a235,a236,a237,
                       a238,a239,a23a,a23b,a23c,a23d,a23e,a23f,
                       a300,a301,a302,a303,a304,a305,a306,a307,
                       a308,a309,a30a,a30b,a30c,a30d,a30e,a30f,
                       a310,a311,a312,a313,a314,a315,a316,a317,
                       a318,a319,a31a,a31b,a31c,a31d,a31e,a31f,
                       a320,a321,a322,a323,a324,a325,a326,a327,
                       a328,a329,a32a,a32b,a32c,a32d,a32e,a32f,
                       a330,a331,a332,a333,a334,a335,a336,a337,
                       a338,a339,a33a,a33b,a33c,a33d,a33e,a33f,
                       a400,a401,a402,a403,a404,a405,a406,a407,
                       a408,a409,a40a,a40b,a40c,a40d,a40e,a40f,
                       a410,a411,a412,a413,a414,a415,a416,a417,
                       a418,a419,a41a,a41b,a41c,a41d,a41e,a41f,
                       a420,a421,a422,a423,a424,a425,a426,a427,
                       a428,a429,a42a,a42b,a42c,a42d,a42e,a42f,
                       a430,a431,a432,a433,a434,a435,a436,a437,
                       a438,a439,a43a,a43b,a43c,a43d,a43e,a43f,
                       a500,a501,a502,a503,a504,a505,a506,a507,
                       a508,a509,a50a,a50b,a50c,a50d,a50e,a50f,
                       a510,a511,a512,a513,a514,a515,a516,a517,
                       a518,a519,a51a,a51b,a51c,a51d,a51e,a51f,
                       A000,A001,A002,A003,A004,A005,A006,A007,
                       A008,A009,A00a,A00b,A00c,A00d,A00e,A00f,
                       A010,A011,A012,A013,A014,A015,A016,A017,
                       A018,A019,A01a,A01b,A01c,A01d,A01e,A01f,
                       A020,A021,A022,A023,A024,A025,A026,A027,
                       A028,A029,A02a,A02b,A02c,A02d,A02e,A02f,
                       A030,A031,A032,A033,A034,A035,A036,A037,
                       A038,A039,A03a,A03b,A03c,A03d,A03e,A03f,
                       A100,A101,A102,A103,A104,A105,A106,A107,
                       A108,A109,A10a,A10b,A10c,A10d,A10e,A10f,
                       A110,A111,A112,A113,A114,A115,A116,A117,
                       A118,A119,A11a,A11b,A11c,A11d,A11e,A11f,
                       A120,A121,A122,A123,A124,A125,A126,A127,
                       A128,A129,A12a,A12b,A12c,A12d,A12e,A12f,
                       A130,A131,A132,A133,A134,A135,A136,A137,
                       A138,A139,A13a,A13b,A13c,A13d,A13e,A13f,
                       A200,A201,A202,A203,A204,A205,A206,A207,
                       A208,A209,A20a,A20b,A20c,A20d,A20e,A20f,
                       A210,A211,A212,A213,A214,A215,A216,A217,
                       A218,A219,A21a,A21b,A21c,A21d,A21e,A21f,
                       A220,A221,A222,A223,A224,A225,A226,A227,
                       A228,A229,A22a,A22b,A22c,A22d,A22e,A22f,
                       A230,A231,A232,A233,A234,A235,A236,A237,
                       A238,A239,A23a,A23b,A23c,A23d,A23e,A23f,
                       A300,A301,A302,A303,A304,A305,A306,A307,
                       A308,A309,A30a,A30b,A30c,A30d,A30e,A30f,
                       A310,A311,A312,A313,A314,A315,A316,A317,
                       A318,A319,A31a,A31b,A31c,A31d,A31e,A31f,
                       A320,A321,A322,A323,A324,A325,A326,A327,
                       A328,A329,A32a,A32b,A32c,A32d,A32e,A32f,
                       A330,A331,A332,A333,A334,A335,A336,A337,
                       A338,A339,A33a,A33b,A33c,A33d,A33e,A33f,
                       A400,A401,A402,A403,A404,A405,A406,A407,
                       A408,A409,A40a,A40b,A40c,A40d,A40e,A40f,
                       A410,A411,A412,A413,A414,A415,A416,A417,
                       A418,A419,A41a,A41b,A41c,A41d,A41e,A41f,
                       A420,A421,A422,A423,A424,A425,A426,A427,
                       A428,A429,A42a,A42b,A42c,A42d,A42e,A42f,
                       A430,A431,A432,A433,A434,A435,A436,A437,
                       A438,A439,A43a,A43b,A43c,A43d,A43e,A43f,
                       A500,A501,A502,A503,A504,A505,A506,A507,
                       A508,A509,A50a,A50b,A50c,A50d,A50e,A50f,
                       A510,A511,A512,A513,A514,A515,A516,A517,
                       A518,A519,A51a,A51b,A51c,A51d,A51e,A51f,
                       b00, b01, b02, b03, b04, b05, b06, b07, Z,
                       r000,r001,r002,r003,r004,r005,r006,r007,
                       r008,r009,r00a,r00b,r00c,r00d,r00e,r00f,
                       r010,r011,r012,r013,r014,r015,r016,r017,
                       r018,r019,r01a,r01b,r01c,r01d,r01e,r01f,
                       r020,r021,r022,r023,r024,r025,r026,r027,
                       r028,r029,r02a,r02b,r02c,r02d,r02e,r02f,
                       r030,r031,r032,r033,r034,r035,r036,r037,
                       r038,r039,r03a,r03b,r03c,r03d,r03e,r03f,
                       r100,r101,r102,r103,r104,r105,r106,r107,
                       r108,r109,r10a,r10b,r10c,r10d,r10e,r10f,
                       r110,r111,r112,r113,r114,r115,r116,r117,
                       r118,r119,r11a,r11b,r11c,r11d,r11e,r11f,
                       r120,r121,r122,r123,r124,r125,r126,r127,
                       r128,r129,r12a,r12b,r12c,r12d,r12e,r12f,
                       r130,r131,r132,r133,r134,r135,r136,r137,
                       r138,r139,r13a,r13b,r13c,r13d,r13e,r13f,
                       r200,r201,r202,r203,r204,r205,r206,r207,
                       r208,r209,r20a,r20b,r20c,r20d,r20e,r20f,
                       r210,r211,r212,r213,r214,r215,r216,r217,
                       r218,r219,r21a,r21b,r21c,r21d,r21e,r21f,
                       r220,r221,r222,r223,r224,r225,r226,r227,
                       r228,r229,r22a,r22b,r22c,r22d,r22e,r22f,
                       r230,r231,r232,r233,r234,r235,r236,r237,
                       r238,r239,r23a,r23b,r23c,r23d,r23e,r23f,
                       r300,r301,r302,r303,r304,r305,r306,r307,
                       r308,r309,r30a,r30b,r30c,r30d,r30e,r30f,
                       r310,r311,r312,r313,r314,r315,r316,r317,
                       r318,r319,r31a,r31b,r31c,r31d,r31e,r31f,
                       r320,r321,r322,r323,r324,r325,r326,r327,
                       r328,r329,r32a,r32b,r32c,r32d,r32e,r32f,
                       r330,r331,r332,r333,r334,r335,r336,r337,
                       r338,r339,r33a,r33b,r33c,r33d,r33e,r33f,
                       r400,r401,r402,r403,r404,r405,r406,r407,
                       r408,r409,r40a,r40b,r40c,r40d,r40e,r40f,
                       r410,r411,r412,r413,r414,r415,r416,r417,
                       r418,r419,r41a,r41b,r41c,r41d,r41e,r41f,
                       r420,r421,r422,r423,r424,r425,r426,r427,
                       r428,r429,r42a,r42b,r42c,r42d,r42e,r42f,
                       r430,r431,r432,r433,r434,r435,r436,r437,
                       r438,r439,r43a,r43b,r43c,r43d,r43e,r43f,
                       r500,r501,r502,r503,r504,r505,r506,r507,
                       r508,r509,r50a,r50b,r50c,r50d,r50e,r50f,
                       r510,r511,r512,r513,r514,r515,r516,r517,
                       r518,r519,r51a,r51b,r51c,r51d,r51e,r51f
);

call _gf256v_madd_u64 (a020,a021,a022,a023,a024,a025,a026,a027,
                       a028,a029,a02a,a02b,a02c,a02d,a02e,a02f,
                       a030,a031,a032,a033,a034,a035,a036,a037,
                       a038,a039,a03a,a03b,a03c,a03d,a03e,a03f,
                       a100,a101,a102,a103,a104,a105,a106,a107,
                       a108,a109,a10a,a10b,a10c,a10d,a10e,a10f,
                       a110,a111,a112,a113,a114,a115,a116,a117,
                       a118,a119,a11a,a11b,a11c,a11d,a11e,a11f,
                       a120,a121,a122,a123,a124,a125,a126,a127,
                       a128,a129,a12a,a12b,a12c,a12d,a12e,a12f,
                       a130,a131,a132,a133,a134,a135,a136,a137,
                       a138,a139,a13a,a13b,a13c,a13d,a13e,a13f,
                       a200,a201,a202,a203,a204,a205,a206,a207,
                       a208,a209,a20a,a20b,a20c,a20d,a20e,a20f,
                       a210,a211,a212,a213,a214,a215,a216,a217,
                       a218,a219,a21a,a21b,a21c,a21d,a21e,a21f,
                       a220,a221,a222,a223,a224,a225,a226,a227,
                       a228,a229,a22a,a22b,a22c,a22d,a22e,a22f,
                       a230,a231,a232,a233,a234,a235,a236,a237,
                       a238,a239,a23a,a23b,a23c,a23d,a23e,a23f,
                       a300,a301,a302,a303,a304,a305,a306,a307,
                       a308,a309,a30a,a30b,a30c,a30d,a30e,a30f,
                       a310,a311,a312,a313,a314,a315,a316,a317,
                       a318,a319,a31a,a31b,a31c,a31d,a31e,a31f,
                       a320,a321,a322,a323,a324,a325,a326,a327,
                       a328,a329,a32a,a32b,a32c,a32d,a32e,a32f,
                       a330,a331,a332,a333,a334,a335,a336,a337,
                       a338,a339,a33a,a33b,a33c,a33d,a33e,a33f,
                       a400,a401,a402,a403,a404,a405,a406,a407,
                       a408,a409,a40a,a40b,a40c,a40d,a40e,a40f,
                       a410,a411,a412,a413,a414,a415,a416,a417,
                       a418,a419,a41a,a41b,a41c,a41d,a41e,a41f,
                       a420,a421,a422,a423,a424,a425,a426,a427,
                       a428,a429,a42a,a42b,a42c,a42d,a42e,a42f,
                       a430,a431,a432,a433,a434,a435,a436,a437,
                       a438,a439,a43a,a43b,a43c,a43d,a43e,a43f,
                       a500,a501,a502,a503,a504,a505,a506,a507,
                       a508,a509,a50a,a50b,a50c,a50d,a50e,a50f,
                       a510,a511,a512,a513,a514,a515,a516,a517,
                       a518,a519,a51a,a51b,a51c,a51d,a51e,a51f,
                       a520,a521,a522,a523,a524,a525,a526,a527,
                       a528,a529,a52a,a52b,a52c,a52d,a52e,a52f,
                       a530,a531,a532,a533,a534,a535,a536,a537,
                       a538,a539,a53a,a53b,a53c,a53d,a53e,a53f,
                       A020,A021,A022,A023,A024,A025,A026,A027,
                       A028,A029,A02a,A02b,A02c,A02d,A02e,A02f,
                       A030,A031,A032,A033,A034,A035,A036,A037,
                       A038,A039,A03a,A03b,A03c,A03d,A03e,A03f,
                       A100,A101,A102,A103,A104,A105,A106,A107,
                       A108,A109,A10a,A10b,A10c,A10d,A10e,A10f,
                       A110,A111,A112,A113,A114,A115,A116,A117,
                       A118,A119,A11a,A11b,A11c,A11d,A11e,A11f,
                       A120,A121,A122,A123,A124,A125,A126,A127,
                       A128,A129,A12a,A12b,A12c,A12d,A12e,A12f,
                       A130,A131,A132,A133,A134,A135,A136,A137,
                       A138,A139,A13a,A13b,A13c,A13d,A13e,A13f,
                       A200,A201,A202,A203,A204,A205,A206,A207,
                       A208,A209,A20a,A20b,A20c,A20d,A20e,A20f,
                       A210,A211,A212,A213,A214,A215,A216,A217,
                       A218,A219,A21a,A21b,A21c,A21d,A21e,A21f,
                       A220,A221,A222,A223,A224,A225,A226,A227,
                       A228,A229,A22a,A22b,A22c,A22d,A22e,A22f,
                       A230,A231,A232,A233,A234,A235,A236,A237,
                       A238,A239,A23a,A23b,A23c,A23d,A23e,A23f,
                       A300,A301,A302,A303,A304,A305,A306,A307,
                       A308,A309,A30a,A30b,A30c,A30d,A30e,A30f,
                       A310,A311,A312,A313,A314,A315,A316,A317,
                       A318,A319,A31a,A31b,A31c,A31d,A31e,A31f,
                       A320,A321,A322,A323,A324,A325,A326,A327,
                       A328,A329,A32a,A32b,A32c,A32d,A32e,A32f,
                       A330,A331,A332,A333,A334,A335,A336,A337,
                       A338,A339,A33a,A33b,A33c,A33d,A33e,A33f,
                       A400,A401,A402,A403,A404,A405,A406,A407,
                       A408,A409,A40a,A40b,A40c,A40d,A40e,A40f,
                       A410,A411,A412,A413,A414,A415,A416,A417,
                       A418,A419,A41a,A41b,A41c,A41d,A41e,A41f,
                       A420,A421,A422,A423,A424,A425,A426,A427,
                       A428,A429,A42a,A42b,A42c,A42d,A42e,A42f,
                       A430,A431,A432,A433,A434,A435,A436,A437,
                       A438,A439,A43a,A43b,A43c,A43d,A43e,A43f,
                       A500,A501,A502,A503,A504,A505,A506,A507,
                       A508,A509,A50a,A50b,A50c,A50d,A50e,A50f,
                       A510,A511,A512,A513,A514,A515,A516,A517,
                       A518,A519,A51a,A51b,A51c,A51d,A51e,A51f,
                       A520,A521,A522,A523,A524,A525,A526,A527,
                       A528,A529,A52a,A52b,A52c,A52d,A52e,A52f,
                       A530,A531,A532,A533,A534,A535,A536,A537,
                       A538,A539,A53a,A53b,A53c,A53d,A53e,A53f,
                       b00, b01, b02, b03, b04, b05, b06, b07, Z,
                       r020,r021,r022,r023,r024,r025,r026,r027,
                       r028,r029,r02a,r02b,r02c,r02d,r02e,r02f,
                       r030,r031,r032,r033,r034,r035,r036,r037,
                       r038,r039,r03a,r03b,r03c,r03d,r03e,r03f,
                       r100,r101,r102,r103,r104,r105,r106,r107,
                       r108,r109,r10a,r10b,r10c,r10d,r10e,r10f,
                       r110,r111,r112,r113,r114,r115,r116,r117,
                       r118,r119,r11a,r11b,r11c,r11d,r11e,r11f,
                       r120,r121,r122,r123,r124,r125,r126,r127,
                       r128,r129,r12a,r12b,r12c,r12d,r12e,r12f,
                       r130,r131,r132,r133,r134,r135,r136,r137,
                       r138,r139,r13a,r13b,r13c,r13d,r13e,r13f,
                       r200,r201,r202,r203,r204,r205,r206,r207,
                       r208,r209,r20a,r20b,r20c,r20d,r20e,r20f,
                       r210,r211,r212,r213,r214,r215,r216,r217,
                       r218,r219,r21a,r21b,r21c,r21d,r21e,r21f,
                       r220,r221,r222,r223,r224,r225,r226,r227,
                       r228,r229,r22a,r22b,r22c,r22d,r22e,r22f,
                       r230,r231,r232,r233,r234,r235,r236,r237,
                       r238,r239,r23a,r23b,r23c,r23d,r23e,r23f,
                       r300,r301,r302,r303,r304,r305,r306,r307,
                       r308,r309,r30a,r30b,r30c,r30d,r30e,r30f,
                       r310,r311,r312,r313,r314,r315,r316,r317,
                       r318,r319,r31a,r31b,r31c,r31d,r31e,r31f,
                       r320,r321,r322,r323,r324,r325,r326,r327,
                       r328,r329,r32a,r32b,r32c,r32d,r32e,r32f,
                       r330,r331,r332,r333,r334,r335,r336,r337,
                       r338,r339,r33a,r33b,r33c,r33d,r33e,r33f,
                       r400,r401,r402,r403,r404,r405,r406,r407,
                       r408,r409,r40a,r40b,r40c,r40d,r40e,r40f,
                       r410,r411,r412,r413,r414,r415,r416,r417,
                       r418,r419,r41a,r41b,r41c,r41d,r41e,r41f,
                       r420,r421,r422,r423,r424,r425,r426,r427,
                       r428,r429,r42a,r42b,r42c,r42d,r42e,r42f,
                       r430,r431,r432,r433,r434,r435,r436,r437,
                       r438,r439,r43a,r43b,r43c,r43d,r43e,r43f,
                       r500,r501,r502,r503,r504,r505,r506,r507,
                       r508,r509,r50a,r50b,r50c,r50d,r50e,r50f,
                       r510,r511,r512,r513,r514,r515,r516,r517,
                       r518,r519,r51a,r51b,r51c,r51d,r51e,r51f,
                       r520,r521,r522,r523,r524,r525,r526,r527,
                       r528,r529,r52a,r52b,r52c,r52d,r52e,r52f,
                       r530,r531,r532,r533,r534,r535,r536,r537,
                       r538,r539,r53a,r53b,r53c,r53d,r53e,r53f
);

join r00 r001 r000;join r00 r002 r00;join r00 r003 r00;
join r00 r004 r00;join r00 r005 r00;join r00 r006 r00;join r00 r007 r00;
join r01 r009 r008;join r01 r00a r01;join r01 r00b r01;
join r01 r00c r01;join r01 r00d r01;join r01 r00e r01;join r01 r00f r01;
join r02 r011 r010;join r02 r012 r02;join r02 r013 r02;
join r02 r014 r02;join r02 r015 r02;join r02 r016 r02;join r02 r017 r02;
join r03 r019 r018;join r03 r01a r03;join r03 r01b r03;
join r03 r01c r03;join r03 r01d r03;join r03 r01e r03;join r03 r01f r03;
join r04 r021 r020;join r04 r022 r04;join r04 r023 r04;
join r04 r024 r04;join r04 r025 r04;join r04 r026 r04;join r04 r027 r04;
join r05 r029 r028;join r05 r02a r05;join r05 r02b r05;
join r05 r02c r05;join r05 r02d r05;join r05 r02e r05;join r05 r02f r05;
join r06 r031 r030;join r06 r032 r06;join r06 r033 r06;
join r06 r034 r06;join r06 r035 r06;join r06 r036 r06;join r06 r037 r06;
join r07 r039 r038;join r07 r03a r07;join r07 r03b r07;
join r07 r03c r07;join r07 r03d r07;join r07 r03e r07;join r07 r03f r07;
join r08 r101 r100;join r08 r102 r08;join r08 r103 r08;
join r08 r104 r08;join r08 r105 r08;join r08 r106 r08;join r08 r107 r08;
join r09 r109 r108;join r09 r10a r09;join r09 r10b r09;
join r09 r10c r09;join r09 r10d r09;join r09 r10e r09;join r09 r10f r09;
join r0a r111 r110;join r0a r112 r0a;join r0a r113 r0a;
join r0a r114 r0a;join r0a r115 r0a;join r0a r116 r0a;join r0a r117 r0a;
join r0b r119 r118;join r0b r11a r0b;join r0b r11b r0b;
join r0b r11c r0b;join r0b r11d r0b;join r0b r11e r0b;join r0b r11f r0b;
join r0c r121 r120;join r0c r122 r0c;join r0c r123 r0c;
join r0c r124 r0c;join r0c r125 r0c;join r0c r126 r0c;join r0c r127 r0c;
join r0d r129 r128;join r0d r12a r0d;join r0d r12b r0d;
join r0d r12c r0d;join r0d r12d r0d;join r0d r12e r0d;join r0d r12f r0d;
join r0e r131 r130;join r0e r132 r0e;join r0e r133 r0e;
join r0e r134 r0e;join r0e r135 r0e;join r0e r136 r0e;join r0e r137 r0e;
join r0f r139 r138;join r0f r13a r0f;join r0f r13b r0f;
join r0f r13c r0f;join r0f r13d r0f;join r0f r13e r0f;join r0f r13f r0f;
join r10 r201 r200;join r10 r202 r10;join r10 r203 r10;
join r10 r204 r10;join r10 r205 r10;join r10 r206 r10;join r10 r207 r10;
join r11 r209 r208;join r11 r20a r11;join r11 r20b r11;
join r11 r20c r11;join r11 r20d r11;join r11 r20e r11;join r11 r20f r11;
join r12 r211 r210;join r12 r212 r12;join r12 r213 r12;
join r12 r214 r12;join r12 r215 r12;join r12 r216 r12;join r12 r217 r12;
join r13 r219 r218;join r13 r21a r13;join r13 r21b r13;
join r13 r21c r13;join r13 r21d r13;join r13 r21e r13;join r13 r21f r13;
join r14 r221 r220;join r14 r222 r14;join r14 r223 r14;
join r14 r224 r14;join r14 r225 r14;join r14 r226 r14;join r14 r227 r14;
join r15 r229 r228;join r15 r22a r15;join r15 r22b r15;
join r15 r22c r15;join r15 r22d r15;join r15 r22e r15;join r15 r22f r15;
join r16 r231 r230;join r16 r232 r16;join r16 r233 r16;
join r16 r234 r16;join r16 r235 r16;join r16 r236 r16;join r16 r237 r16;
join r17 r239 r238;join r17 r23a r17;join r17 r23b r17;
join r17 r23c r17;join r17 r23d r17;join r17 r23e r17;join r17 r23f r17;
join r18 r301 r300;join r18 r302 r18;join r18 r303 r18;
join r18 r304 r18;join r18 r305 r18;join r18 r306 r18;join r18 r307 r18;
join r19 r309 r308;join r19 r30a r19;join r19 r30b r19;
join r19 r30c r19;join r19 r30d r19;join r19 r30e r19;join r19 r30f r19;
join r1a r311 r310;join r1a r312 r1a;join r1a r313 r1a;
join r1a r314 r1a;join r1a r315 r1a;join r1a r316 r1a;join r1a r317 r1a;
join r1b r319 r318;join r1b r31a r1b;join r1b r31b r1b;
join r1b r31c r1b;join r1b r31d r1b;join r1b r31e r1b;join r1b r31f r1b;
join r1c r321 r320;join r1c r322 r1c;join r1c r323 r1c;
join r1c r324 r1c;join r1c r325 r1c;join r1c r326 r1c;join r1c r327 r1c;
join r1d r329 r328;join r1d r32a r1d;join r1d r32b r1d;
join r1d r32c r1d;join r1d r32d r1d;join r1d r32e r1d;join r1d r32f r1d;
join r1e r331 r330;join r1e r332 r1e;join r1e r333 r1e;
join r1e r334 r1e;join r1e r335 r1e;join r1e r336 r1e;join r1e r337 r1e;
join r1f r339 r338;join r1f r33a r1f;join r1f r33b r1f;
join r1f r33c r1f;join r1f r33d r1f;join r1f r33e r1f;join r1f r33f r1f;
join r20 r401 r400;join r20 r402 r20;join r20 r403 r20;
join r20 r404 r20;join r20 r405 r20;join r20 r406 r20;join r20 r407 r20;
join r21 r409 r408;join r21 r40a r21;join r21 r40b r21;
join r21 r40c r21;join r21 r40d r21;join r21 r40e r21;join r21 r40f r21;
join r22 r411 r410;join r22 r412 r22;join r22 r413 r22;
join r22 r414 r22;join r22 r415 r22;join r22 r416 r22;join r22 r417 r22;
join r23 r419 r418;join r23 r41a r23;join r23 r41b r23;
join r23 r41c r23;join r23 r41d r23;join r23 r41e r23;join r23 r41f r23;
join r24 r421 r420;join r24 r422 r24;join r24 r423 r24;
join r24 r424 r24;join r24 r425 r24;join r24 r426 r24;join r24 r427 r24;
join r25 r429 r428;join r25 r42a r25;join r25 r42b r25;
join r25 r42c r25;join r25 r42d r25;join r25 r42e r25;join r25 r42f r25;
join r26 r431 r430;join r26 r432 r26;join r26 r433 r26;
join r26 r434 r26;join r26 r435 r26;join r26 r436 r26;join r26 r437 r26;
join r27 r439 r438;join r27 r43a r27;join r27 r43b r27;
join r27 r43c r27;join r27 r43d r27;join r27 r43e r27;join r27 r43f r27;
join r28 r501 r500;join r28 r502 r28;join r28 r503 r28;
join r28 r504 r28;join r28 r505 r28;join r28 r506 r28;join r28 r507 r28;
join r29 r509 r508;join r29 r50a r29;join r29 r50b r29;
join r29 r50c r29;join r29 r50d r29;join r29 r50e r29;join r29 r50f r29;
join r2a r511 r510;join r2a r512 r2a;join r2a r513 r2a;
join r2a r514 r2a;join r2a r515 r2a;join r2a r516 r2a;join r2a r517 r2a;
join r2b r519 r518;join r2b r51a r2b;join r2b r51b r2b;
join r2b r51c r2b;join r2b r51d r2b;join r2b r51e r2b;join r2b r51f r2b;
join r2c r521 r520;join r2c r522 r2c;join r2c r523 r2c;
join r2c r524 r2c;join r2c r525 r2c;join r2c r526 r2c;join r2c r527 r2c;
join r2d r529 r528;join r2d r52a r2d;join r2d r52b r2d;
join r2d r52c r2d;join r2d r52d r2d;join r2d r52e r2d;join r2d r52f r2d;
join r2e r531 r530;join r2e r532 r2e;join r2e r533 r2e;
join r2e r534 r2e;join r2e r535 r2e;join r2e r536 r2e;join r2e r537 r2e;
join r2f r539 r538;join r2f r53a r2f;join r2f r53b r2f;
join r2f r53c r2f;join r2f r53d r2f;join r2f r53e r2f;join r2f r53f r2f;

{ true && true }
