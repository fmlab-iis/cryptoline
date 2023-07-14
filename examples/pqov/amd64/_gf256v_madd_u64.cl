proc main (bit a000,bit a001,bit a002,bit a003,bit a004,bit a005,bit a006,bit a007,
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
           bit a520,bit a521,bit a522,bit a523,bit a524,bit a525,bit a526,bit a527,
           bit a528,bit a529,bit a52a,bit a52b,bit a52c,bit a52d,bit a52e,bit a52f,
           bit a530,bit a531,bit a532,bit a533,bit a534,bit a535,bit a536,bit a537,
           bit a538,bit a539,bit a53a,bit a53b,bit a53c,bit a53d,bit a53e,bit a53f,
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
           bit A520,bit A521,bit A522,bit A523,bit A524,bit A525,bit A526,bit A527,
           bit A528,bit A529,bit A52a,bit A52b,bit A52c,bit A52d,bit A52e,bit A52f,
           bit A530,bit A531,bit A532,bit A533,bit A534,bit A535,bit A536,bit A537,
           bit A538,bit A539,bit A53a,bit A53b,bit A53c,bit A53d,bit A53e,bit A53f,
           bit b00, bit b01, bit b02, bit b03, bit b04, bit b05, bit b06, bit b07,
           bit Z) =
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
mov %L0x7ffff78bbc08
  [a500,a501,a502,a503,a504,a505,a506,a507,a508,a509,a50a,a50b,a50c,a50d,a50e,a50f];
mov %L0x7ffff78bbc09
  [a510,a511,a512,a513,a514,a515,a516,a517,a518,a519,a51a,a51b,a51c,a51d,a51e,a51f];
mov %L0x7ffff78bbc0a
  [a520,a521,a522,a523,a524,a525,a526,a527,a528,a529,a52a,a52b,a52c,a52d,a52e,a52f];
mov %L0x7ffff78bbc0b
  [a530,a531,a532,a533,a534,a535,a536,a537,a538,a539,a53a,a53b,a53c,a53d,a53e,a53f];

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
mov %L0x7fffffffd968
  [A500,A501,A502,A503,A504,A505,A506,A507,A508,A509,A50a,A50b,A50c,A50d,A50e,A50f];
mov %L0x7fffffffd969
  [A510,A511,A512,A513,A514,A515,A516,A517,A518,A519,A51a,A51b,A51c,A51d,A51e,A51f];
mov %L0x7fffffffd96a
  [A520,A521,A522,A523,A524,A525,A526,A527,A528,A529,A52a,A52b,A52c,A52d,A52e,A52f];
mov %L0x7fffffffd96b
  [A530,A531,A532,A533,A534,A535,A536,A537,A538,A539,A53a,A53b,A53c,A53d,A53e,A53f];

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
nop;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
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
nop;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
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
nop;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
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
nop;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
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
mov [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb,mc,md,me,mf] %L0x7fffffffd850;
mov %rdi [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb,mc,md,me,mf,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
          0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,0@bit,
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
nop;
(* mov    %rax,%rdi                                #! PC = 0x555555555b92 *)
mov %rdi %rax;
(* lea    (%rcx,%rcx,8),%rcx                       #! PC = 0x555555555b95 *)
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
(* NOTE: cast to 16 bits *)
mov [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb,mc,md,me,mf,
     _,_,_,_,_,_,_,_, _,_,_,_,_,_,_,_,
     _,_,_,_,_,_,_,_, _,_,_,_,_,_,_,_,
     _,_,_,_,_,_,_,_, _,_,_,_,_,_,_,_] %rax;
adds %dc %L0x7fffffffd968 %L0x7fffffffd968
                          [m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,ma,mb,mc,md,me,mf];
(* mov    %rax,-0x40(%rbp)                         #! EA = L0x7fffffffd850; PC = 0x555555556543 *)
mov %L0x7fffffffd850 %rax;
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
mov
  [r500,r501,r502,r503,r504,r505,r506,r507,r508,r509,r50a,r50b,r50c,r50d,r50e,r50f]
  %L0x7fffffffd968;
mov
  [r510,r511,r512,r513,r514,r515,r516,r517,r518,r519,r51a,r51b,r51c,r51d,r51e,r51f]
  %L0x7fffffffd969;
mov
  [r520,r521,r522,r523,r524,r525,r526,r527,r528,r529,r52a,r52b,r52c,r52d,r52e,r52f]
  %L0x7fffffffd96a;
mov
  [r530,r531,r532,r533,r534,r535,r536,r537,r538,r539,r53a,r53b,r53c,r53d,r53e,r53f]
  %L0x7fffffffd96b;
{
  and [eqmod r000*Z**0+r001*Z**1+r002*Z**2+r003*Z**3+
             r004*Z**4+r005*Z**5+r006*Z**6+r007*Z**7
             (A000*Z**0+A001*Z**1+A002*Z**2+A003*Z**3+
              A004*Z**4+A005*Z**5+A006*Z**6+A007*Z**7)+
             (a000*Z**0+a001*Z**1+a002*Z**2+a003*Z**3+
              a004*Z**4+a005*Z**5+a006*Z**6+a007*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2](*,
       eqmod r008*Z**0+r009*Z**1+r00a*Z**2+r00b*Z**3+
             r00c*Z**4+r00d*Z**5+r00e*Z**6+r00f*Z**7
             (A008*Z**0+A009*Z**1+A00a*Z**2+A00b*Z**3+
              A00c*Z**4+A00d*Z**5+A00e*Z**6+A00f*Z**7)+
             (a008*Z**0+a009*Z**1+a00a*Z**2+a00b*Z**3+
              a00c*Z**4+a00d*Z**5+a00e*Z**6+a00f*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2],
       eqmod r010*Z**0+r011*Z**1+r012*Z**2+r013*Z**3+
             r014*Z**4+r015*Z**5+r016*Z**6+r017*Z**7
             (A010*Z**0+A011*Z**1+A012*Z**2+A013*Z**3+
              A014*Z**4+A015*Z**5+A016*Z**6+A017*Z**7)+
             (a010*Z**0+a011*Z**1+a012*Z**2+a013*Z**3+
              a014*Z**4+a015*Z**5+a016*Z**6+a017*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2],
       eqmod r018*Z**0+r019*Z**1+r01a*Z**2+r01b*Z**3+
             r01c*Z**4+r01d*Z**5+r01e*Z**6+r01f*Z**7
             (A018*Z**0+A019*Z**1+A01a*Z**2+A01b*Z**3+
              A01c*Z**4+A01d*Z**5+A01e*Z**6+A01f*Z**7)+
             (a018*Z**0+a019*Z**1+a01a*Z**2+a01b*Z**3+
              a01c*Z**4+a01d*Z**5+a01e*Z**6+a01f*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2],
       eqmod r020*Z**0+r021*Z**1+r022*Z**2+r023*Z**3+
             r024*Z**4+r025*Z**5+r026*Z**6+r027*Z**7
             (A020*Z**0+A021*Z**1+A022*Z**2+A023*Z**3+
              A024*Z**4+A025*Z**5+A026*Z**6+A027*Z**7)+
             (a020*Z**0+a021*Z**1+a022*Z**2+a023*Z**3+
              a024*Z**4+a025*Z**5+a026*Z**6+a027*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2],
       eqmod r028*Z**0+r029*Z**1+r02a*Z**2+r02b*Z**3+
             r02c*Z**4+r02d*Z**5+r02e*Z**6+r02f*Z**7
             (A028*Z**0+A029*Z**1+A02a*Z**2+A02b*Z**3+
              A02c*Z**4+A02d*Z**5+A02e*Z**6+A02f*Z**7)+
             (a028*Z**0+a029*Z**1+a02a*Z**2+a02b*Z**3+
              a02c*Z**4+a02d*Z**5+a02e*Z**6+a02f*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2],
       eqmod r030*Z**0+r031*Z**1+r032*Z**2+r033*Z**3+
             r034*Z**4+r035*Z**5+r036*Z**6+r037*Z**7
             (A030*Z**0+A031*Z**1+A032*Z**2+A033*Z**3+
              A034*Z**4+A035*Z**5+A036*Z**6+A037*Z**7)+
             (a030*Z**0+a031*Z**1+a032*Z**2+a033*Z**3+
              a034*Z**4+a035*Z**5+a036*Z**6+a037*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2],
       eqmod r038*Z**0+r039*Z**1+r03a*Z**2+r03b*Z**3+
             r03c*Z**4+r03d*Z**5+r03e*Z**6+r03f*Z**7
             (A038*Z**0+A039*Z**1+A03a*Z**2+A03b*Z**3+
              A03c*Z**4+A03d*Z**5+A03e*Z**6+A03f*Z**7)+
             (a038*Z**0+a039*Z**1+a03a*Z**2+a03b*Z**3+
              a03c*Z**4+a03d*Z**5+a03e*Z**6+a03f*Z**7)*
             (b00*Z**0+b01*Z**1+b02*Z**2+b03*Z**3+
              b04*Z**4+b05*Z**5+b06*Z**6+b07*Z**7)
             [Z**8+Z**4+Z**3+Z**1+1, 2] *)
       ]
  &&
  true
}
