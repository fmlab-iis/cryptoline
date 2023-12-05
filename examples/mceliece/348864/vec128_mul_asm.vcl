(* quine: cv.exe -v -isafety -slicing -jobs 32 vec128_mul_asm.vcl
Parsing CryptoLine file:                    [OK]            0.2966 seconds
Checking well-formedness:                   [OK]            0.1647 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.1061 seconds
Normalizing specification:                  [OK]            0.1420 seconds
Rewriting assignments:                      [OK]            0.1108 seconds
Verifying program safety:Overall            [OK]            198.8583 seconds
Verifying range specification:              [OK]            0.0148 seconds
Rewriting value-preserved casting:          [OK]            0.0220 seconds
Verifying algebraic specification:          [OK]            11.4296 seconds
Procedure verification:                     [OK]            210.7413 seconds

Summary
-------
Verification result:                        [OK]            211.2055 seconds
*)
(* quine: cv.exe -v -isafety -abs_interp -slicing -jobs 32 vec128_mul_asm.vcl
Parsing CryptoLine file:                     [OK]            0.2988 seconds
Checking well-formedness:                    [OK]            0.1663 seconds

Procedure main
--------------
Transforming to SSA form:                    [OK]            0.1074 seconds
Normalizing specification:                   [OK]            0.1430 seconds
Rewriting assignments:                       [OK]            0.1115 seconds
Verifying program safety:                    [OK]            1217.8134 seconds
Verifying range specification:               [OK]            3181.0114 seconds
Rewriting value-preserved casting:           [OK]            0.0219 seconds
Verifying algebraic specification:           [OK]            12.7888 seconds
Procedure verification:                      [OK]            4412.0560 seconds

Summary
-------
Verification result:                         [OK]            4412.5243 seconds
*)

proc main (
bit a000,bit a001,bit a002,bit a003,bit a004,bit a005,
bit a006,bit a007,bit a008,bit a009,bit a00a,bit a00b,
bit a010,bit a011,bit a012,bit a013,bit a014,bit a015,
bit a016,bit a017,bit a018,bit a019,bit a01a,bit a01b,
bit a020,bit a021,bit a022,bit a023,bit a024,bit a025,
bit a026,bit a027,bit a028,bit a029,bit a02a,bit a02b,
bit a030,bit a031,bit a032,bit a033,bit a034,bit a035,
bit a036,bit a037,bit a038,bit a039,bit a03a,bit a03b,
bit a040,bit a041,bit a042,bit a043,bit a044,bit a045,
bit a046,bit a047,bit a048,bit a049,bit a04a,bit a04b,
bit a050,bit a051,bit a052,bit a053,bit a054,bit a055,
bit a056,bit a057,bit a058,bit a059,bit a05a,bit a05b,
bit a060,bit a061,bit a062,bit a063,bit a064,bit a065,
bit a066,bit a067,bit a068,bit a069,bit a06a,bit a06b,
bit a070,bit a071,bit a072,bit a073,bit a074,bit a075,
bit a076,bit a077,bit a078,bit a079,bit a07a,bit a07b,
bit a080,bit a081,bit a082,bit a083,bit a084,bit a085,
bit a086,bit a087,bit a088,bit a089,bit a08a,bit a08b,
bit a090,bit a091,bit a092,bit a093,bit a094,bit a095,
bit a096,bit a097,bit a098,bit a099,bit a09a,bit a09b,
bit a0a0,bit a0a1,bit a0a2,bit a0a3,bit a0a4,bit a0a5,
bit a0a6,bit a0a7,bit a0a8,bit a0a9,bit a0aa,bit a0ab,
bit a0b0,bit a0b1,bit a0b2,bit a0b3,bit a0b4,bit a0b5,
bit a0b6,bit a0b7,bit a0b8,bit a0b9,bit a0ba,bit a0bb,
bit a0c0,bit a0c1,bit a0c2,bit a0c3,bit a0c4,bit a0c5,
bit a0c6,bit a0c7,bit a0c8,bit a0c9,bit a0ca,bit a0cb,
bit a0d0,bit a0d1,bit a0d2,bit a0d3,bit a0d4,bit a0d5,
bit a0d6,bit a0d7,bit a0d8,bit a0d9,bit a0da,bit a0db,
bit a0e0,bit a0e1,bit a0e2,bit a0e3,bit a0e4,bit a0e5,
bit a0e6,bit a0e7,bit a0e8,bit a0e9,bit a0ea,bit a0eb,
bit a0f0,bit a0f1,bit a0f2,bit a0f3,bit a0f4,bit a0f5,
bit a0f6,bit a0f7,bit a0f8,bit a0f9,bit a0fa,bit a0fb,
bit a100,bit a101,bit a102,bit a103,bit a104,bit a105,
bit a106,bit a107,bit a108,bit a109,bit a10a,bit a10b,
bit a110,bit a111,bit a112,bit a113,bit a114,bit a115,
bit a116,bit a117,bit a118,bit a119,bit a11a,bit a11b,
bit a120,bit a121,bit a122,bit a123,bit a124,bit a125,
bit a126,bit a127,bit a128,bit a129,bit a12a,bit a12b,
bit a130,bit a131,bit a132,bit a133,bit a134,bit a135,
bit a136,bit a137,bit a138,bit a139,bit a13a,bit a13b,
bit a140,bit a141,bit a142,bit a143,bit a144,bit a145,
bit a146,bit a147,bit a148,bit a149,bit a14a,bit a14b,
bit a150,bit a151,bit a152,bit a153,bit a154,bit a155,
bit a156,bit a157,bit a158,bit a159,bit a15a,bit a15b,
bit a160,bit a161,bit a162,bit a163,bit a164,bit a165,
bit a166,bit a167,bit a168,bit a169,bit a16a,bit a16b,
bit a170,bit a171,bit a172,bit a173,bit a174,bit a175,
bit a176,bit a177,bit a178,bit a179,bit a17a,bit a17b,
bit a180,bit a181,bit a182,bit a183,bit a184,bit a185,
bit a186,bit a187,bit a188,bit a189,bit a18a,bit a18b,
bit a190,bit a191,bit a192,bit a193,bit a194,bit a195,
bit a196,bit a197,bit a198,bit a199,bit a19a,bit a19b,
bit a1a0,bit a1a1,bit a1a2,bit a1a3,bit a1a4,bit a1a5,
bit a1a6,bit a1a7,bit a1a8,bit a1a9,bit a1aa,bit a1ab,
bit a1b0,bit a1b1,bit a1b2,bit a1b3,bit a1b4,bit a1b5,
bit a1b6,bit a1b7,bit a1b8,bit a1b9,bit a1ba,bit a1bb,
bit a1c0,bit a1c1,bit a1c2,bit a1c3,bit a1c4,bit a1c5,
bit a1c6,bit a1c7,bit a1c8,bit a1c9,bit a1ca,bit a1cb,
bit a1d0,bit a1d1,bit a1d2,bit a1d3,bit a1d4,bit a1d5,
bit a1d6,bit a1d7,bit a1d8,bit a1d9,bit a1da,bit a1db,
bit a1e0,bit a1e1,bit a1e2,bit a1e3,bit a1e4,bit a1e5,
bit a1e6,bit a1e7,bit a1e8,bit a1e9,bit a1ea,bit a1eb,
bit a1f0,bit a1f1,bit a1f2,bit a1f3,bit a1f4,bit a1f5,
bit a1f6,bit a1f7,bit a1f8,bit a1f9,bit a1fa,bit a1fb,
bit a200,bit a201,bit a202,bit a203,bit a204,bit a205,
bit a206,bit a207,bit a208,bit a209,bit a20a,bit a20b,
bit a210,bit a211,bit a212,bit a213,bit a214,bit a215,
bit a216,bit a217,bit a218,bit a219,bit a21a,bit a21b,
bit a220,bit a221,bit a222,bit a223,bit a224,bit a225,
bit a226,bit a227,bit a228,bit a229,bit a22a,bit a22b,
bit a230,bit a231,bit a232,bit a233,bit a234,bit a235,
bit a236,bit a237,bit a238,bit a239,bit a23a,bit a23b,
bit a240,bit a241,bit a242,bit a243,bit a244,bit a245,
bit a246,bit a247,bit a248,bit a249,bit a24a,bit a24b,
bit a250,bit a251,bit a252,bit a253,bit a254,bit a255,
bit a256,bit a257,bit a258,bit a259,bit a25a,bit a25b,
bit a260,bit a261,bit a262,bit a263,bit a264,bit a265,
bit a266,bit a267,bit a268,bit a269,bit a26a,bit a26b,
bit a270,bit a271,bit a272,bit a273,bit a274,bit a275,
bit a276,bit a277,bit a278,bit a279,bit a27a,bit a27b,
bit a280,bit a281,bit a282,bit a283,bit a284,bit a285,
bit a286,bit a287,bit a288,bit a289,bit a28a,bit a28b,
bit a290,bit a291,bit a292,bit a293,bit a294,bit a295,
bit a296,bit a297,bit a298,bit a299,bit a29a,bit a29b,
bit a2a0,bit a2a1,bit a2a2,bit a2a3,bit a2a4,bit a2a5,
bit a2a6,bit a2a7,bit a2a8,bit a2a9,bit a2aa,bit a2ab,
bit a2b0,bit a2b1,bit a2b2,bit a2b3,bit a2b4,bit a2b5,
bit a2b6,bit a2b7,bit a2b8,bit a2b9,bit a2ba,bit a2bb,
bit a2c0,bit a2c1,bit a2c2,bit a2c3,bit a2c4,bit a2c5,
bit a2c6,bit a2c7,bit a2c8,bit a2c9,bit a2ca,bit a2cb,
bit a2d0,bit a2d1,bit a2d2,bit a2d3,bit a2d4,bit a2d5,
bit a2d6,bit a2d7,bit a2d8,bit a2d9,bit a2da,bit a2db,
bit a2e0,bit a2e1,bit a2e2,bit a2e3,bit a2e4,bit a2e5,
bit a2e6,bit a2e7,bit a2e8,bit a2e9,bit a2ea,bit a2eb,
bit a2f0,bit a2f1,bit a2f2,bit a2f3,bit a2f4,bit a2f5,
bit a2f6,bit a2f7,bit a2f8,bit a2f9,bit a2fa,bit a2fb,
bit a300,bit a301,bit a302,bit a303,bit a304,bit a305,
bit a306,bit a307,bit a308,bit a309,bit a30a,bit a30b,
bit a310,bit a311,bit a312,bit a313,bit a314,bit a315,
bit a316,bit a317,bit a318,bit a319,bit a31a,bit a31b,
bit a320,bit a321,bit a322,bit a323,bit a324,bit a325,
bit a326,bit a327,bit a328,bit a329,bit a32a,bit a32b,
bit a330,bit a331,bit a332,bit a333,bit a334,bit a335,
bit a336,bit a337,bit a338,bit a339,bit a33a,bit a33b,
bit a340,bit a341,bit a342,bit a343,bit a344,bit a345,
bit a346,bit a347,bit a348,bit a349,bit a34a,bit a34b,
bit a350,bit a351,bit a352,bit a353,bit a354,bit a355,
bit a356,bit a357,bit a358,bit a359,bit a35a,bit a35b,
bit a360,bit a361,bit a362,bit a363,bit a364,bit a365,
bit a366,bit a367,bit a368,bit a369,bit a36a,bit a36b,
bit a370,bit a371,bit a372,bit a373,bit a374,bit a375,
bit a376,bit a377,bit a378,bit a379,bit a37a,bit a37b,
bit a380,bit a381,bit a382,bit a383,bit a384,bit a385,
bit a386,bit a387,bit a388,bit a389,bit a38a,bit a38b,
bit a390,bit a391,bit a392,bit a393,bit a394,bit a395,
bit a396,bit a397,bit a398,bit a399,bit a39a,bit a39b,
bit a3a0,bit a3a1,bit a3a2,bit a3a3,bit a3a4,bit a3a5,
bit a3a6,bit a3a7,bit a3a8,bit a3a9,bit a3aa,bit a3ab,
bit a3b0,bit a3b1,bit a3b2,bit a3b3,bit a3b4,bit a3b5,
bit a3b6,bit a3b7,bit a3b8,bit a3b9,bit a3ba,bit a3bb,
bit a3c0,bit a3c1,bit a3c2,bit a3c3,bit a3c4,bit a3c5,
bit a3c6,bit a3c7,bit a3c8,bit a3c9,bit a3ca,bit a3cb,
bit a3d0,bit a3d1,bit a3d2,bit a3d3,bit a3d4,bit a3d5,
bit a3d6,bit a3d7,bit a3d8,bit a3d9,bit a3da,bit a3db,
bit a3e0,bit a3e1,bit a3e2,bit a3e3,bit a3e4,bit a3e5,
bit a3e6,bit a3e7,bit a3e8,bit a3e9,bit a3ea,bit a3eb,
bit a3f0,bit a3f1,bit a3f2,bit a3f3,bit a3f4,bit a3f5,
bit a3f6,bit a3f7,bit a3f8,bit a3f9,bit a3fa,bit a3fb,
bit a400,bit a401,bit a402,bit a403,bit a404,bit a405,
bit a406,bit a407,bit a408,bit a409,bit a40a,bit a40b,
bit a410,bit a411,bit a412,bit a413,bit a414,bit a415,
bit a416,bit a417,bit a418,bit a419,bit a41a,bit a41b,
bit a420,bit a421,bit a422,bit a423,bit a424,bit a425,
bit a426,bit a427,bit a428,bit a429,bit a42a,bit a42b,
bit a430,bit a431,bit a432,bit a433,bit a434,bit a435,
bit a436,bit a437,bit a438,bit a439,bit a43a,bit a43b,
bit a440,bit a441,bit a442,bit a443,bit a444,bit a445,
bit a446,bit a447,bit a448,bit a449,bit a44a,bit a44b,
bit a450,bit a451,bit a452,bit a453,bit a454,bit a455,
bit a456,bit a457,bit a458,bit a459,bit a45a,bit a45b,
bit a460,bit a461,bit a462,bit a463,bit a464,bit a465,
bit a466,bit a467,bit a468,bit a469,bit a46a,bit a46b,
bit a470,bit a471,bit a472,bit a473,bit a474,bit a475,
bit a476,bit a477,bit a478,bit a479,bit a47a,bit a47b,
bit a480,bit a481,bit a482,bit a483,bit a484,bit a485,
bit a486,bit a487,bit a488,bit a489,bit a48a,bit a48b,
bit a490,bit a491,bit a492,bit a493,bit a494,bit a495,
bit a496,bit a497,bit a498,bit a499,bit a49a,bit a49b,
bit a4a0,bit a4a1,bit a4a2,bit a4a3,bit a4a4,bit a4a5,
bit a4a6,bit a4a7,bit a4a8,bit a4a9,bit a4aa,bit a4ab,
bit a4b0,bit a4b1,bit a4b2,bit a4b3,bit a4b4,bit a4b5,
bit a4b6,bit a4b7,bit a4b8,bit a4b9,bit a4ba,bit a4bb,
bit a4c0,bit a4c1,bit a4c2,bit a4c3,bit a4c4,bit a4c5,
bit a4c6,bit a4c7,bit a4c8,bit a4c9,bit a4ca,bit a4cb,
bit a4d0,bit a4d1,bit a4d2,bit a4d3,bit a4d4,bit a4d5,
bit a4d6,bit a4d7,bit a4d8,bit a4d9,bit a4da,bit a4db,
bit a4e0,bit a4e1,bit a4e2,bit a4e3,bit a4e4,bit a4e5,
bit a4e6,bit a4e7,bit a4e8,bit a4e9,bit a4ea,bit a4eb,
bit a4f0,bit a4f1,bit a4f2,bit a4f3,bit a4f4,bit a4f5,
bit a4f6,bit a4f7,bit a4f8,bit a4f9,bit a4fa,bit a4fb,
bit a500,bit a501,bit a502,bit a503,bit a504,bit a505,
bit a506,bit a507,bit a508,bit a509,bit a50a,bit a50b,
bit a510,bit a511,bit a512,bit a513,bit a514,bit a515,
bit a516,bit a517,bit a518,bit a519,bit a51a,bit a51b,
bit a520,bit a521,bit a522,bit a523,bit a524,bit a525,
bit a526,bit a527,bit a528,bit a529,bit a52a,bit a52b,
bit a530,bit a531,bit a532,bit a533,bit a534,bit a535,
bit a536,bit a537,bit a538,bit a539,bit a53a,bit a53b,
bit a540,bit a541,bit a542,bit a543,bit a544,bit a545,
bit a546,bit a547,bit a548,bit a549,bit a54a,bit a54b,
bit a550,bit a551,bit a552,bit a553,bit a554,bit a555,
bit a556,bit a557,bit a558,bit a559,bit a55a,bit a55b,
bit a560,bit a561,bit a562,bit a563,bit a564,bit a565,
bit a566,bit a567,bit a568,bit a569,bit a56a,bit a56b,
bit a570,bit a571,bit a572,bit a573,bit a574,bit a575,
bit a576,bit a577,bit a578,bit a579,bit a57a,bit a57b,
bit a580,bit a581,bit a582,bit a583,bit a584,bit a585,
bit a586,bit a587,bit a588,bit a589,bit a58a,bit a58b,
bit a590,bit a591,bit a592,bit a593,bit a594,bit a595,
bit a596,bit a597,bit a598,bit a599,bit a59a,bit a59b,
bit a5a0,bit a5a1,bit a5a2,bit a5a3,bit a5a4,bit a5a5,
bit a5a6,bit a5a7,bit a5a8,bit a5a9,bit a5aa,bit a5ab,
bit a5b0,bit a5b1,bit a5b2,bit a5b3,bit a5b4,bit a5b5,
bit a5b6,bit a5b7,bit a5b8,bit a5b9,bit a5ba,bit a5bb,
bit a5c0,bit a5c1,bit a5c2,bit a5c3,bit a5c4,bit a5c5,
bit a5c6,bit a5c7,bit a5c8,bit a5c9,bit a5ca,bit a5cb,
bit a5d0,bit a5d1,bit a5d2,bit a5d3,bit a5d4,bit a5d5,
bit a5d6,bit a5d7,bit a5d8,bit a5d9,bit a5da,bit a5db,
bit a5e0,bit a5e1,bit a5e2,bit a5e3,bit a5e4,bit a5e5,
bit a5e6,bit a5e7,bit a5e8,bit a5e9,bit a5ea,bit a5eb,
bit a5f0,bit a5f1,bit a5f2,bit a5f3,bit a5f4,bit a5f5,
bit a5f6,bit a5f7,bit a5f8,bit a5f9,bit a5fa,bit a5fb,
bit a600,bit a601,bit a602,bit a603,bit a604,bit a605,
bit a606,bit a607,bit a608,bit a609,bit a60a,bit a60b,
bit a610,bit a611,bit a612,bit a613,bit a614,bit a615,
bit a616,bit a617,bit a618,bit a619,bit a61a,bit a61b,
bit a620,bit a621,bit a622,bit a623,bit a624,bit a625,
bit a626,bit a627,bit a628,bit a629,bit a62a,bit a62b,
bit a630,bit a631,bit a632,bit a633,bit a634,bit a635,
bit a636,bit a637,bit a638,bit a639,bit a63a,bit a63b,
bit a640,bit a641,bit a642,bit a643,bit a644,bit a645,
bit a646,bit a647,bit a648,bit a649,bit a64a,bit a64b,
bit a650,bit a651,bit a652,bit a653,bit a654,bit a655,
bit a656,bit a657,bit a658,bit a659,bit a65a,bit a65b,
bit a660,bit a661,bit a662,bit a663,bit a664,bit a665,
bit a666,bit a667,bit a668,bit a669,bit a66a,bit a66b,
bit a670,bit a671,bit a672,bit a673,bit a674,bit a675,
bit a676,bit a677,bit a678,bit a679,bit a67a,bit a67b,
bit a680,bit a681,bit a682,bit a683,bit a684,bit a685,
bit a686,bit a687,bit a688,bit a689,bit a68a,bit a68b,
bit a690,bit a691,bit a692,bit a693,bit a694,bit a695,
bit a696,bit a697,bit a698,bit a699,bit a69a,bit a69b,
bit a6a0,bit a6a1,bit a6a2,bit a6a3,bit a6a4,bit a6a5,
bit a6a6,bit a6a7,bit a6a8,bit a6a9,bit a6aa,bit a6ab,
bit a6b0,bit a6b1,bit a6b2,bit a6b3,bit a6b4,bit a6b5,
bit a6b6,bit a6b7,bit a6b8,bit a6b9,bit a6ba,bit a6bb,
bit a6c0,bit a6c1,bit a6c2,bit a6c3,bit a6c4,bit a6c5,
bit a6c6,bit a6c7,bit a6c8,bit a6c9,bit a6ca,bit a6cb,
bit a6d0,bit a6d1,bit a6d2,bit a6d3,bit a6d4,bit a6d5,
bit a6d6,bit a6d7,bit a6d8,bit a6d9,bit a6da,bit a6db,
bit a6e0,bit a6e1,bit a6e2,bit a6e3,bit a6e4,bit a6e5,
bit a6e6,bit a6e7,bit a6e8,bit a6e9,bit a6ea,bit a6eb,
bit a6f0,bit a6f1,bit a6f2,bit a6f3,bit a6f4,bit a6f5,
bit a6f6,bit a6f7,bit a6f8,bit a6f9,bit a6fa,bit a6fb,
bit a700,bit a701,bit a702,bit a703,bit a704,bit a705,
bit a706,bit a707,bit a708,bit a709,bit a70a,bit a70b,
bit a710,bit a711,bit a712,bit a713,bit a714,bit a715,
bit a716,bit a717,bit a718,bit a719,bit a71a,bit a71b,
bit a720,bit a721,bit a722,bit a723,bit a724,bit a725,
bit a726,bit a727,bit a728,bit a729,bit a72a,bit a72b,
bit a730,bit a731,bit a732,bit a733,bit a734,bit a735,
bit a736,bit a737,bit a738,bit a739,bit a73a,bit a73b,
bit a740,bit a741,bit a742,bit a743,bit a744,bit a745,
bit a746,bit a747,bit a748,bit a749,bit a74a,bit a74b,
bit a750,bit a751,bit a752,bit a753,bit a754,bit a755,
bit a756,bit a757,bit a758,bit a759,bit a75a,bit a75b,
bit a760,bit a761,bit a762,bit a763,bit a764,bit a765,
bit a766,bit a767,bit a768,bit a769,bit a76a,bit a76b,
bit a770,bit a771,bit a772,bit a773,bit a774,bit a775,
bit a776,bit a777,bit a778,bit a779,bit a77a,bit a77b,
bit a780,bit a781,bit a782,bit a783,bit a784,bit a785,
bit a786,bit a787,bit a788,bit a789,bit a78a,bit a78b,
bit a790,bit a791,bit a792,bit a793,bit a794,bit a795,
bit a796,bit a797,bit a798,bit a799,bit a79a,bit a79b,
bit a7a0,bit a7a1,bit a7a2,bit a7a3,bit a7a4,bit a7a5,
bit a7a6,bit a7a7,bit a7a8,bit a7a9,bit a7aa,bit a7ab,
bit a7b0,bit a7b1,bit a7b2,bit a7b3,bit a7b4,bit a7b5,
bit a7b6,bit a7b7,bit a7b8,bit a7b9,bit a7ba,bit a7bb,
bit a7c0,bit a7c1,bit a7c2,bit a7c3,bit a7c4,bit a7c5,
bit a7c6,bit a7c7,bit a7c8,bit a7c9,bit a7ca,bit a7cb,
bit a7d0,bit a7d1,bit a7d2,bit a7d3,bit a7d4,bit a7d5,
bit a7d6,bit a7d7,bit a7d8,bit a7d9,bit a7da,bit a7db,
bit a7e0,bit a7e1,bit a7e2,bit a7e3,bit a7e4,bit a7e5,
bit a7e6,bit a7e7,bit a7e8,bit a7e9,bit a7ea,bit a7eb,
bit a7f0,bit a7f1,bit a7f2,bit a7f3,bit a7f4,bit a7f5,
bit a7f6,bit a7f7,bit a7f8,bit a7f9,bit a7fa,bit a7fb
,
bit b000,bit b001,bit b002,bit b003,bit b004,bit b005,
bit b006,bit b007,bit b008,bit b009,bit b00a,bit b00b,
bit b010,bit b011,bit b012,bit b013,bit b014,bit b015,
bit b016,bit b017,bit b018,bit b019,bit b01a,bit b01b,
bit b020,bit b021,bit b022,bit b023,bit b024,bit b025,
bit b026,bit b027,bit b028,bit b029,bit b02a,bit b02b,
bit b030,bit b031,bit b032,bit b033,bit b034,bit b035,
bit b036,bit b037,bit b038,bit b039,bit b03a,bit b03b,
bit b040,bit b041,bit b042,bit b043,bit b044,bit b045,
bit b046,bit b047,bit b048,bit b049,bit b04a,bit b04b,
bit b050,bit b051,bit b052,bit b053,bit b054,bit b055,
bit b056,bit b057,bit b058,bit b059,bit b05a,bit b05b,
bit b060,bit b061,bit b062,bit b063,bit b064,bit b065,
bit b066,bit b067,bit b068,bit b069,bit b06a,bit b06b,
bit b070,bit b071,bit b072,bit b073,bit b074,bit b075,
bit b076,bit b077,bit b078,bit b079,bit b07a,bit b07b,
bit b080,bit b081,bit b082,bit b083,bit b084,bit b085,
bit b086,bit b087,bit b088,bit b089,bit b08a,bit b08b,
bit b090,bit b091,bit b092,bit b093,bit b094,bit b095,
bit b096,bit b097,bit b098,bit b099,bit b09a,bit b09b,
bit b0a0,bit b0a1,bit b0a2,bit b0a3,bit b0a4,bit b0a5,
bit b0a6,bit b0a7,bit b0a8,bit b0a9,bit b0aa,bit b0ab,
bit b0b0,bit b0b1,bit b0b2,bit b0b3,bit b0b4,bit b0b5,
bit b0b6,bit b0b7,bit b0b8,bit b0b9,bit b0ba,bit b0bb,
bit b0c0,bit b0c1,bit b0c2,bit b0c3,bit b0c4,bit b0c5,
bit b0c6,bit b0c7,bit b0c8,bit b0c9,bit b0ca,bit b0cb,
bit b0d0,bit b0d1,bit b0d2,bit b0d3,bit b0d4,bit b0d5,
bit b0d6,bit b0d7,bit b0d8,bit b0d9,bit b0da,bit b0db,
bit b0e0,bit b0e1,bit b0e2,bit b0e3,bit b0e4,bit b0e5,
bit b0e6,bit b0e7,bit b0e8,bit b0e9,bit b0ea,bit b0eb,
bit b0f0,bit b0f1,bit b0f2,bit b0f3,bit b0f4,bit b0f5,
bit b0f6,bit b0f7,bit b0f8,bit b0f9,bit b0fa,bit b0fb,
bit b100,bit b101,bit b102,bit b103,bit b104,bit b105,
bit b106,bit b107,bit b108,bit b109,bit b10a,bit b10b,
bit b110,bit b111,bit b112,bit b113,bit b114,bit b115,
bit b116,bit b117,bit b118,bit b119,bit b11a,bit b11b,
bit b120,bit b121,bit b122,bit b123,bit b124,bit b125,
bit b126,bit b127,bit b128,bit b129,bit b12a,bit b12b,
bit b130,bit b131,bit b132,bit b133,bit b134,bit b135,
bit b136,bit b137,bit b138,bit b139,bit b13a,bit b13b,
bit b140,bit b141,bit b142,bit b143,bit b144,bit b145,
bit b146,bit b147,bit b148,bit b149,bit b14a,bit b14b,
bit b150,bit b151,bit b152,bit b153,bit b154,bit b155,
bit b156,bit b157,bit b158,bit b159,bit b15a,bit b15b,
bit b160,bit b161,bit b162,bit b163,bit b164,bit b165,
bit b166,bit b167,bit b168,bit b169,bit b16a,bit b16b,
bit b170,bit b171,bit b172,bit b173,bit b174,bit b175,
bit b176,bit b177,bit b178,bit b179,bit b17a,bit b17b,
bit b180,bit b181,bit b182,bit b183,bit b184,bit b185,
bit b186,bit b187,bit b188,bit b189,bit b18a,bit b18b,
bit b190,bit b191,bit b192,bit b193,bit b194,bit b195,
bit b196,bit b197,bit b198,bit b199,bit b19a,bit b19b,
bit b1a0,bit b1a1,bit b1a2,bit b1a3,bit b1a4,bit b1a5,
bit b1a6,bit b1a7,bit b1a8,bit b1a9,bit b1aa,bit b1ab,
bit b1b0,bit b1b1,bit b1b2,bit b1b3,bit b1b4,bit b1b5,
bit b1b6,bit b1b7,bit b1b8,bit b1b9,bit b1ba,bit b1bb,
bit b1c0,bit b1c1,bit b1c2,bit b1c3,bit b1c4,bit b1c5,
bit b1c6,bit b1c7,bit b1c8,bit b1c9,bit b1ca,bit b1cb,
bit b1d0,bit b1d1,bit b1d2,bit b1d3,bit b1d4,bit b1d5,
bit b1d6,bit b1d7,bit b1d8,bit b1d9,bit b1da,bit b1db,
bit b1e0,bit b1e1,bit b1e2,bit b1e3,bit b1e4,bit b1e5,
bit b1e6,bit b1e7,bit b1e8,bit b1e9,bit b1ea,bit b1eb,
bit b1f0,bit b1f1,bit b1f2,bit b1f3,bit b1f4,bit b1f5,
bit b1f6,bit b1f7,bit b1f8,bit b1f9,bit b1fa,bit b1fb,
bit b200,bit b201,bit b202,bit b203,bit b204,bit b205,
bit b206,bit b207,bit b208,bit b209,bit b20a,bit b20b,
bit b210,bit b211,bit b212,bit b213,bit b214,bit b215,
bit b216,bit b217,bit b218,bit b219,bit b21a,bit b21b,
bit b220,bit b221,bit b222,bit b223,bit b224,bit b225,
bit b226,bit b227,bit b228,bit b229,bit b22a,bit b22b,
bit b230,bit b231,bit b232,bit b233,bit b234,bit b235,
bit b236,bit b237,bit b238,bit b239,bit b23a,bit b23b,
bit b240,bit b241,bit b242,bit b243,bit b244,bit b245,
bit b246,bit b247,bit b248,bit b249,bit b24a,bit b24b,
bit b250,bit b251,bit b252,bit b253,bit b254,bit b255,
bit b256,bit b257,bit b258,bit b259,bit b25a,bit b25b,
bit b260,bit b261,bit b262,bit b263,bit b264,bit b265,
bit b266,bit b267,bit b268,bit b269,bit b26a,bit b26b,
bit b270,bit b271,bit b272,bit b273,bit b274,bit b275,
bit b276,bit b277,bit b278,bit b279,bit b27a,bit b27b,
bit b280,bit b281,bit b282,bit b283,bit b284,bit b285,
bit b286,bit b287,bit b288,bit b289,bit b28a,bit b28b,
bit b290,bit b291,bit b292,bit b293,bit b294,bit b295,
bit b296,bit b297,bit b298,bit b299,bit b29a,bit b29b,
bit b2a0,bit b2a1,bit b2a2,bit b2a3,bit b2a4,bit b2a5,
bit b2a6,bit b2a7,bit b2a8,bit b2a9,bit b2aa,bit b2ab,
bit b2b0,bit b2b1,bit b2b2,bit b2b3,bit b2b4,bit b2b5,
bit b2b6,bit b2b7,bit b2b8,bit b2b9,bit b2ba,bit b2bb,
bit b2c0,bit b2c1,bit b2c2,bit b2c3,bit b2c4,bit b2c5,
bit b2c6,bit b2c7,bit b2c8,bit b2c9,bit b2ca,bit b2cb,
bit b2d0,bit b2d1,bit b2d2,bit b2d3,bit b2d4,bit b2d5,
bit b2d6,bit b2d7,bit b2d8,bit b2d9,bit b2da,bit b2db,
bit b2e0,bit b2e1,bit b2e2,bit b2e3,bit b2e4,bit b2e5,
bit b2e6,bit b2e7,bit b2e8,bit b2e9,bit b2ea,bit b2eb,
bit b2f0,bit b2f1,bit b2f2,bit b2f3,bit b2f4,bit b2f5,
bit b2f6,bit b2f7,bit b2f8,bit b2f9,bit b2fa,bit b2fb,
bit b300,bit b301,bit b302,bit b303,bit b304,bit b305,
bit b306,bit b307,bit b308,bit b309,bit b30a,bit b30b,
bit b310,bit b311,bit b312,bit b313,bit b314,bit b315,
bit b316,bit b317,bit b318,bit b319,bit b31a,bit b31b,
bit b320,bit b321,bit b322,bit b323,bit b324,bit b325,
bit b326,bit b327,bit b328,bit b329,bit b32a,bit b32b,
bit b330,bit b331,bit b332,bit b333,bit b334,bit b335,
bit b336,bit b337,bit b338,bit b339,bit b33a,bit b33b,
bit b340,bit b341,bit b342,bit b343,bit b344,bit b345,
bit b346,bit b347,bit b348,bit b349,bit b34a,bit b34b,
bit b350,bit b351,bit b352,bit b353,bit b354,bit b355,
bit b356,bit b357,bit b358,bit b359,bit b35a,bit b35b,
bit b360,bit b361,bit b362,bit b363,bit b364,bit b365,
bit b366,bit b367,bit b368,bit b369,bit b36a,bit b36b,
bit b370,bit b371,bit b372,bit b373,bit b374,bit b375,
bit b376,bit b377,bit b378,bit b379,bit b37a,bit b37b,
bit b380,bit b381,bit b382,bit b383,bit b384,bit b385,
bit b386,bit b387,bit b388,bit b389,bit b38a,bit b38b,
bit b390,bit b391,bit b392,bit b393,bit b394,bit b395,
bit b396,bit b397,bit b398,bit b399,bit b39a,bit b39b,
bit b3a0,bit b3a1,bit b3a2,bit b3a3,bit b3a4,bit b3a5,
bit b3a6,bit b3a7,bit b3a8,bit b3a9,bit b3aa,bit b3ab,
bit b3b0,bit b3b1,bit b3b2,bit b3b3,bit b3b4,bit b3b5,
bit b3b6,bit b3b7,bit b3b8,bit b3b9,bit b3ba,bit b3bb,
bit b3c0,bit b3c1,bit b3c2,bit b3c3,bit b3c4,bit b3c5,
bit b3c6,bit b3c7,bit b3c8,bit b3c9,bit b3ca,bit b3cb,
bit b3d0,bit b3d1,bit b3d2,bit b3d3,bit b3d4,bit b3d5,
bit b3d6,bit b3d7,bit b3d8,bit b3d9,bit b3da,bit b3db,
bit b3e0,bit b3e1,bit b3e2,bit b3e3,bit b3e4,bit b3e5,
bit b3e6,bit b3e7,bit b3e8,bit b3e9,bit b3ea,bit b3eb,
bit b3f0,bit b3f1,bit b3f2,bit b3f3,bit b3f4,bit b3f5,
bit b3f6,bit b3f7,bit b3f8,bit b3f9,bit b3fa,bit b3fb,
bit b400,bit b401,bit b402,bit b403,bit b404,bit b405,
bit b406,bit b407,bit b408,bit b409,bit b40a,bit b40b,
bit b410,bit b411,bit b412,bit b413,bit b414,bit b415,
bit b416,bit b417,bit b418,bit b419,bit b41a,bit b41b,
bit b420,bit b421,bit b422,bit b423,bit b424,bit b425,
bit b426,bit b427,bit b428,bit b429,bit b42a,bit b42b,
bit b430,bit b431,bit b432,bit b433,bit b434,bit b435,
bit b436,bit b437,bit b438,bit b439,bit b43a,bit b43b,
bit b440,bit b441,bit b442,bit b443,bit b444,bit b445,
bit b446,bit b447,bit b448,bit b449,bit b44a,bit b44b,
bit b450,bit b451,bit b452,bit b453,bit b454,bit b455,
bit b456,bit b457,bit b458,bit b459,bit b45a,bit b45b,
bit b460,bit b461,bit b462,bit b463,bit b464,bit b465,
bit b466,bit b467,bit b468,bit b469,bit b46a,bit b46b,
bit b470,bit b471,bit b472,bit b473,bit b474,bit b475,
bit b476,bit b477,bit b478,bit b479,bit b47a,bit b47b,
bit b480,bit b481,bit b482,bit b483,bit b484,bit b485,
bit b486,bit b487,bit b488,bit b489,bit b48a,bit b48b,
bit b490,bit b491,bit b492,bit b493,bit b494,bit b495,
bit b496,bit b497,bit b498,bit b499,bit b49a,bit b49b,
bit b4a0,bit b4a1,bit b4a2,bit b4a3,bit b4a4,bit b4a5,
bit b4a6,bit b4a7,bit b4a8,bit b4a9,bit b4aa,bit b4ab,
bit b4b0,bit b4b1,bit b4b2,bit b4b3,bit b4b4,bit b4b5,
bit b4b6,bit b4b7,bit b4b8,bit b4b9,bit b4ba,bit b4bb,
bit b4c0,bit b4c1,bit b4c2,bit b4c3,bit b4c4,bit b4c5,
bit b4c6,bit b4c7,bit b4c8,bit b4c9,bit b4ca,bit b4cb,
bit b4d0,bit b4d1,bit b4d2,bit b4d3,bit b4d4,bit b4d5,
bit b4d6,bit b4d7,bit b4d8,bit b4d9,bit b4da,bit b4db,
bit b4e0,bit b4e1,bit b4e2,bit b4e3,bit b4e4,bit b4e5,
bit b4e6,bit b4e7,bit b4e8,bit b4e9,bit b4ea,bit b4eb,
bit b4f0,bit b4f1,bit b4f2,bit b4f3,bit b4f4,bit b4f5,
bit b4f6,bit b4f7,bit b4f8,bit b4f9,bit b4fa,bit b4fb,
bit b500,bit b501,bit b502,bit b503,bit b504,bit b505,
bit b506,bit b507,bit b508,bit b509,bit b50a,bit b50b,
bit b510,bit b511,bit b512,bit b513,bit b514,bit b515,
bit b516,bit b517,bit b518,bit b519,bit b51a,bit b51b,
bit b520,bit b521,bit b522,bit b523,bit b524,bit b525,
bit b526,bit b527,bit b528,bit b529,bit b52a,bit b52b,
bit b530,bit b531,bit b532,bit b533,bit b534,bit b535,
bit b536,bit b537,bit b538,bit b539,bit b53a,bit b53b,
bit b540,bit b541,bit b542,bit b543,bit b544,bit b545,
bit b546,bit b547,bit b548,bit b549,bit b54a,bit b54b,
bit b550,bit b551,bit b552,bit b553,bit b554,bit b555,
bit b556,bit b557,bit b558,bit b559,bit b55a,bit b55b,
bit b560,bit b561,bit b562,bit b563,bit b564,bit b565,
bit b566,bit b567,bit b568,bit b569,bit b56a,bit b56b,
bit b570,bit b571,bit b572,bit b573,bit b574,bit b575,
bit b576,bit b577,bit b578,bit b579,bit b57a,bit b57b,
bit b580,bit b581,bit b582,bit b583,bit b584,bit b585,
bit b586,bit b587,bit b588,bit b589,bit b58a,bit b58b,
bit b590,bit b591,bit b592,bit b593,bit b594,bit b595,
bit b596,bit b597,bit b598,bit b599,bit b59a,bit b59b,
bit b5a0,bit b5a1,bit b5a2,bit b5a3,bit b5a4,bit b5a5,
bit b5a6,bit b5a7,bit b5a8,bit b5a9,bit b5aa,bit b5ab,
bit b5b0,bit b5b1,bit b5b2,bit b5b3,bit b5b4,bit b5b5,
bit b5b6,bit b5b7,bit b5b8,bit b5b9,bit b5ba,bit b5bb,
bit b5c0,bit b5c1,bit b5c2,bit b5c3,bit b5c4,bit b5c5,
bit b5c6,bit b5c7,bit b5c8,bit b5c9,bit b5ca,bit b5cb,
bit b5d0,bit b5d1,bit b5d2,bit b5d3,bit b5d4,bit b5d5,
bit b5d6,bit b5d7,bit b5d8,bit b5d9,bit b5da,bit b5db,
bit b5e0,bit b5e1,bit b5e2,bit b5e3,bit b5e4,bit b5e5,
bit b5e6,bit b5e7,bit b5e8,bit b5e9,bit b5ea,bit b5eb,
bit b5f0,bit b5f1,bit b5f2,bit b5f3,bit b5f4,bit b5f5,
bit b5f6,bit b5f7,bit b5f8,bit b5f9,bit b5fa,bit b5fb,
bit b600,bit b601,bit b602,bit b603,bit b604,bit b605,
bit b606,bit b607,bit b608,bit b609,bit b60a,bit b60b,
bit b610,bit b611,bit b612,bit b613,bit b614,bit b615,
bit b616,bit b617,bit b618,bit b619,bit b61a,bit b61b,
bit b620,bit b621,bit b622,bit b623,bit b624,bit b625,
bit b626,bit b627,bit b628,bit b629,bit b62a,bit b62b,
bit b630,bit b631,bit b632,bit b633,bit b634,bit b635,
bit b636,bit b637,bit b638,bit b639,bit b63a,bit b63b,
bit b640,bit b641,bit b642,bit b643,bit b644,bit b645,
bit b646,bit b647,bit b648,bit b649,bit b64a,bit b64b,
bit b650,bit b651,bit b652,bit b653,bit b654,bit b655,
bit b656,bit b657,bit b658,bit b659,bit b65a,bit b65b,
bit b660,bit b661,bit b662,bit b663,bit b664,bit b665,
bit b666,bit b667,bit b668,bit b669,bit b66a,bit b66b,
bit b670,bit b671,bit b672,bit b673,bit b674,bit b675,
bit b676,bit b677,bit b678,bit b679,bit b67a,bit b67b,
bit b680,bit b681,bit b682,bit b683,bit b684,bit b685,
bit b686,bit b687,bit b688,bit b689,bit b68a,bit b68b,
bit b690,bit b691,bit b692,bit b693,bit b694,bit b695,
bit b696,bit b697,bit b698,bit b699,bit b69a,bit b69b,
bit b6a0,bit b6a1,bit b6a2,bit b6a3,bit b6a4,bit b6a5,
bit b6a6,bit b6a7,bit b6a8,bit b6a9,bit b6aa,bit b6ab,
bit b6b0,bit b6b1,bit b6b2,bit b6b3,bit b6b4,bit b6b5,
bit b6b6,bit b6b7,bit b6b8,bit b6b9,bit b6ba,bit b6bb,
bit b6c0,bit b6c1,bit b6c2,bit b6c3,bit b6c4,bit b6c5,
bit b6c6,bit b6c7,bit b6c8,bit b6c9,bit b6ca,bit b6cb,
bit b6d0,bit b6d1,bit b6d2,bit b6d3,bit b6d4,bit b6d5,
bit b6d6,bit b6d7,bit b6d8,bit b6d9,bit b6da,bit b6db,
bit b6e0,bit b6e1,bit b6e2,bit b6e3,bit b6e4,bit b6e5,
bit b6e6,bit b6e7,bit b6e8,bit b6e9,bit b6ea,bit b6eb,
bit b6f0,bit b6f1,bit b6f2,bit b6f3,bit b6f4,bit b6f5,
bit b6f6,bit b6f7,bit b6f8,bit b6f9,bit b6fa,bit b6fb,
bit b700,bit b701,bit b702,bit b703,bit b704,bit b705,
bit b706,bit b707,bit b708,bit b709,bit b70a,bit b70b,
bit b710,bit b711,bit b712,bit b713,bit b714,bit b715,
bit b716,bit b717,bit b718,bit b719,bit b71a,bit b71b,
bit b720,bit b721,bit b722,bit b723,bit b724,bit b725,
bit b726,bit b727,bit b728,bit b729,bit b72a,bit b72b,
bit b730,bit b731,bit b732,bit b733,bit b734,bit b735,
bit b736,bit b737,bit b738,bit b739,bit b73a,bit b73b,
bit b740,bit b741,bit b742,bit b743,bit b744,bit b745,
bit b746,bit b747,bit b748,bit b749,bit b74a,bit b74b,
bit b750,bit b751,bit b752,bit b753,bit b754,bit b755,
bit b756,bit b757,bit b758,bit b759,bit b75a,bit b75b,
bit b760,bit b761,bit b762,bit b763,bit b764,bit b765,
bit b766,bit b767,bit b768,bit b769,bit b76a,bit b76b,
bit b770,bit b771,bit b772,bit b773,bit b774,bit b775,
bit b776,bit b777,bit b778,bit b779,bit b77a,bit b77b,
bit b780,bit b781,bit b782,bit b783,bit b784,bit b785,
bit b786,bit b787,bit b788,bit b789,bit b78a,bit b78b,
bit b790,bit b791,bit b792,bit b793,bit b794,bit b795,
bit b796,bit b797,bit b798,bit b799,bit b79a,bit b79b,
bit b7a0,bit b7a1,bit b7a2,bit b7a3,bit b7a4,bit b7a5,
bit b7a6,bit b7a7,bit b7a8,bit b7a9,bit b7aa,bit b7ab,
bit b7b0,bit b7b1,bit b7b2,bit b7b3,bit b7b4,bit b7b5,
bit b7b6,bit b7b7,bit b7b8,bit b7b9,bit b7ba,bit b7bb,
bit b7c0,bit b7c1,bit b7c2,bit b7c3,bit b7c4,bit b7c5,
bit b7c6,bit b7c7,bit b7c8,bit b7c9,bit b7ca,bit b7cb,
bit b7d0,bit b7d1,bit b7d2,bit b7d3,bit b7d4,bit b7d5,
bit b7d6,bit b7d7,bit b7d8,bit b7d9,bit b7da,bit b7db,
bit b7e0,bit b7e1,bit b7e2,bit b7e3,bit b7e4,bit b7e5,
bit b7e6,bit b7e7,bit b7e8,bit b7e9,bit b7ea,bit b7eb,
bit b7f0,bit b7f1,bit b7f2,bit b7f3,bit b7f4,bit b7f5,
bit b7f6,bit b7f7,bit b7f8,bit b7f9,bit b7fa,bit b7fb
) =
{
  true
  &&
  true
}

mov %L0x7fffffff6930
    [a000,a010,a020,a030,a040,a050,a060,a070,a080,a090,a0a0,a0b0,a0c0,
     a0d0,a0e0,a0f0,a100,a110,a120,a130,a140,a150,a160,a170,a180,a190,
     a1a0,a1b0,a1c0,a1d0,a1e0,a1f0,a200,a210,a220,a230,a240,a250,a260,
     a270,a280,a290,a2a0,a2b0,a2c0,a2d0,a2e0,a2f0,a300,a310,a320,a330,
     a340,a350,a360,a370,a380,a390,a3a0,a3b0,a3c0,a3d0,a3e0,a3f0,a400,
     a410,a420,a430,a440,a450,a460,a470,a480,a490,a4a0,a4b0,a4c0,a4d0,
     a4e0,a4f0,a500,a510,a520,a530,a540,a550,a560,a570,a580,a590,a5a0,
     a5b0,a5c0,a5d0,a5e0,a5f0,a600,a610,a620,a630,a640,a650,a660,a670,
     a680,a690,a6a0,a6b0,a6c0,a6d0,a6e0,a6f0,a700,a710,a720,a730,a740,
     a750,a760,a770,a780,a790,a7a0,a7b0,a7c0,a7d0,a7e0,a7f0];
mov %L0x7fffffff6940
    [a001,a011,a021,a031,a041,a051,a061,a071,a081,a091,a0a1,a0b1,a0c1,
     a0d1,a0e1,a0f1,a101,a111,a121,a131,a141,a151,a161,a171,a181,a191,
     a1a1,a1b1,a1c1,a1d1,a1e1,a1f1,a201,a211,a221,a231,a241,a251,a261,
     a271,a281,a291,a2a1,a2b1,a2c1,a2d1,a2e1,a2f1,a301,a311,a321,a331,
     a341,a351,a361,a371,a381,a391,a3a1,a3b1,a3c1,a3d1,a3e1,a3f1,a401,
     a411,a421,a431,a441,a451,a461,a471,a481,a491,a4a1,a4b1,a4c1,a4d1,
     a4e1,a4f1,a501,a511,a521,a531,a541,a551,a561,a571,a581,a591,a5a1,
     a5b1,a5c1,a5d1,a5e1,a5f1,a601,a611,a621,a631,a641,a651,a661,a671,
     a681,a691,a6a1,a6b1,a6c1,a6d1,a6e1,a6f1,a701,a711,a721,a731,a741,
     a751,a761,a771,a781,a791,a7a1,a7b1,a7c1,a7d1,a7e1,a7f1];
mov %L0x7fffffff6950
    [a002,a012,a022,a032,a042,a052,a062,a072,a082,a092,a0a2,a0b2,a0c2,
     a0d2,a0e2,a0f2,a102,a112,a122,a132,a142,a152,a162,a172,a182,a192,
     a1a2,a1b2,a1c2,a1d2,a1e2,a1f2,a202,a212,a222,a232,a242,a252,a262,
     a272,a282,a292,a2a2,a2b2,a2c2,a2d2,a2e2,a2f2,a302,a312,a322,a332,
     a342,a352,a362,a372,a382,a392,a3a2,a3b2,a3c2,a3d2,a3e2,a3f2,a402,
     a412,a422,a432,a442,a452,a462,a472,a482,a492,a4a2,a4b2,a4c2,a4d2,
     a4e2,a4f2,a502,a512,a522,a532,a542,a552,a562,a572,a582,a592,a5a2,
     a5b2,a5c2,a5d2,a5e2,a5f2,a602,a612,a622,a632,a642,a652,a662,a672,
     a682,a692,a6a2,a6b2,a6c2,a6d2,a6e2,a6f2,a702,a712,a722,a732,a742,
     a752,a762,a772,a782,a792,a7a2,a7b2,a7c2,a7d2,a7e2,a7f2];
mov %L0x7fffffff6960
    [a003,a013,a023,a033,a043,a053,a063,a073,a083,a093,a0a3,a0b3,a0c3,
     a0d3,a0e3,a0f3,a103,a113,a123,a133,a143,a153,a163,a173,a183,a193,
     a1a3,a1b3,a1c3,a1d3,a1e3,a1f3,a203,a213,a223,a233,a243,a253,a263,
     a273,a283,a293,a2a3,a2b3,a2c3,a2d3,a2e3,a2f3,a303,a313,a323,a333,
     a343,a353,a363,a373,a383,a393,a3a3,a3b3,a3c3,a3d3,a3e3,a3f3,a403,
     a413,a423,a433,a443,a453,a463,a473,a483,a493,a4a3,a4b3,a4c3,a4d3,
     a4e3,a4f3,a503,a513,a523,a533,a543,a553,a563,a573,a583,a593,a5a3,
     a5b3,a5c3,a5d3,a5e3,a5f3,a603,a613,a623,a633,a643,a653,a663,a673,
     a683,a693,a6a3,a6b3,a6c3,a6d3,a6e3,a6f3,a703,a713,a723,a733,a743,
     a753,a763,a773,a783,a793,a7a3,a7b3,a7c3,a7d3,a7e3,a7f3];
mov %L0x7fffffff6970
    [a004,a014,a024,a034,a044,a054,a064,a074,a084,a094,a0a4,a0b4,a0c4,
     a0d4,a0e4,a0f4,a104,a114,a124,a134,a144,a154,a164,a174,a184,a194,
     a1a4,a1b4,a1c4,a1d4,a1e4,a1f4,a204,a214,a224,a234,a244,a254,a264,
     a274,a284,a294,a2a4,a2b4,a2c4,a2d4,a2e4,a2f4,a304,a314,a324,a334,
     a344,a354,a364,a374,a384,a394,a3a4,a3b4,a3c4,a3d4,a3e4,a3f4,a404,
     a414,a424,a434,a444,a454,a464,a474,a484,a494,a4a4,a4b4,a4c4,a4d4,
     a4e4,a4f4,a504,a514,a524,a534,a544,a554,a564,a574,a584,a594,a5a4,
     a5b4,a5c4,a5d4,a5e4,a5f4,a604,a614,a624,a634,a644,a654,a664,a674,
     a684,a694,a6a4,a6b4,a6c4,a6d4,a6e4,a6f4,a704,a714,a724,a734,a744,
     a754,a764,a774,a784,a794,a7a4,a7b4,a7c4,a7d4,a7e4,a7f4];
mov %L0x7fffffff6980
    [a005,a015,a025,a035,a045,a055,a065,a075,a085,a095,a0a5,a0b5,a0c5,
     a0d5,a0e5,a0f5,a105,a115,a125,a135,a145,a155,a165,a175,a185,a195,
     a1a5,a1b5,a1c5,a1d5,a1e5,a1f5,a205,a215,a225,a235,a245,a255,a265,
     a275,a285,a295,a2a5,a2b5,a2c5,a2d5,a2e5,a2f5,a305,a315,a325,a335,
     a345,a355,a365,a375,a385,a395,a3a5,a3b5,a3c5,a3d5,a3e5,a3f5,a405,
     a415,a425,a435,a445,a455,a465,a475,a485,a495,a4a5,a4b5,a4c5,a4d5,
     a4e5,a4f5,a505,a515,a525,a535,a545,a555,a565,a575,a585,a595,a5a5,
     a5b5,a5c5,a5d5,a5e5,a5f5,a605,a615,a625,a635,a645,a655,a665,a675,
     a685,a695,a6a5,a6b5,a6c5,a6d5,a6e5,a6f5,a705,a715,a725,a735,a745,
     a755,a765,a775,a785,a795,a7a5,a7b5,a7c5,a7d5,a7e5,a7f5];
mov %L0x7fffffff6990
    [a006,a016,a026,a036,a046,a056,a066,a076,a086,a096,a0a6,a0b6,a0c6,
     a0d6,a0e6,a0f6,a106,a116,a126,a136,a146,a156,a166,a176,a186,a196,
     a1a6,a1b6,a1c6,a1d6,a1e6,a1f6,a206,a216,a226,a236,a246,a256,a266,
     a276,a286,a296,a2a6,a2b6,a2c6,a2d6,a2e6,a2f6,a306,a316,a326,a336,
     a346,a356,a366,a376,a386,a396,a3a6,a3b6,a3c6,a3d6,a3e6,a3f6,a406,
     a416,a426,a436,a446,a456,a466,a476,a486,a496,a4a6,a4b6,a4c6,a4d6,
     a4e6,a4f6,a506,a516,a526,a536,a546,a556,a566,a576,a586,a596,a5a6,
     a5b6,a5c6,a5d6,a5e6,a5f6,a606,a616,a626,a636,a646,a656,a666,a676,
     a686,a696,a6a6,a6b6,a6c6,a6d6,a6e6,a6f6,a706,a716,a726,a736,a746,
     a756,a766,a776,a786,a796,a7a6,a7b6,a7c6,a7d6,a7e6,a7f6];
mov %L0x7fffffff69a0
    [a007,a017,a027,a037,a047,a057,a067,a077,a087,a097,a0a7,a0b7,a0c7,
     a0d7,a0e7,a0f7,a107,a117,a127,a137,a147,a157,a167,a177,a187,a197,
     a1a7,a1b7,a1c7,a1d7,a1e7,a1f7,a207,a217,a227,a237,a247,a257,a267,
     a277,a287,a297,a2a7,a2b7,a2c7,a2d7,a2e7,a2f7,a307,a317,a327,a337,
     a347,a357,a367,a377,a387,a397,a3a7,a3b7,a3c7,a3d7,a3e7,a3f7,a407,
     a417,a427,a437,a447,a457,a467,a477,a487,a497,a4a7,a4b7,a4c7,a4d7,
     a4e7,a4f7,a507,a517,a527,a537,a547,a557,a567,a577,a587,a597,a5a7,
     a5b7,a5c7,a5d7,a5e7,a5f7,a607,a617,a627,a637,a647,a657,a667,a677,
     a687,a697,a6a7,a6b7,a6c7,a6d7,a6e7,a6f7,a707,a717,a727,a737,a747,
     a757,a767,a777,a787,a797,a7a7,a7b7,a7c7,a7d7,a7e7,a7f7];
mov %L0x7fffffff69b0
    [a008,a018,a028,a038,a048,a058,a068,a078,a088,a098,a0a8,a0b8,a0c8,
     a0d8,a0e8,a0f8,a108,a118,a128,a138,a148,a158,a168,a178,a188,a198,
     a1a8,a1b8,a1c8,a1d8,a1e8,a1f8,a208,a218,a228,a238,a248,a258,a268,
     a278,a288,a298,a2a8,a2b8,a2c8,a2d8,a2e8,a2f8,a308,a318,a328,a338,
     a348,a358,a368,a378,a388,a398,a3a8,a3b8,a3c8,a3d8,a3e8,a3f8,a408,
     a418,a428,a438,a448,a458,a468,a478,a488,a498,a4a8,a4b8,a4c8,a4d8,
     a4e8,a4f8,a508,a518,a528,a538,a548,a558,a568,a578,a588,a598,a5a8,
     a5b8,a5c8,a5d8,a5e8,a5f8,a608,a618,a628,a638,a648,a658,a668,a678,
     a688,a698,a6a8,a6b8,a6c8,a6d8,a6e8,a6f8,a708,a718,a728,a738,a748,
     a758,a768,a778,a788,a798,a7a8,a7b8,a7c8,a7d8,a7e8,a7f8];
mov %L0x7fffffff69c0
    [a009,a019,a029,a039,a049,a059,a069,a079,a089,a099,a0a9,a0b9,a0c9,
     a0d9,a0e9,a0f9,a109,a119,a129,a139,a149,a159,a169,a179,a189,a199,
     a1a9,a1b9,a1c9,a1d9,a1e9,a1f9,a209,a219,a229,a239,a249,a259,a269,
     a279,a289,a299,a2a9,a2b9,a2c9,a2d9,a2e9,a2f9,a309,a319,a329,a339,
     a349,a359,a369,a379,a389,a399,a3a9,a3b9,a3c9,a3d9,a3e9,a3f9,a409,
     a419,a429,a439,a449,a459,a469,a479,a489,a499,a4a9,a4b9,a4c9,a4d9,
     a4e9,a4f9,a509,a519,a529,a539,a549,a559,a569,a579,a589,a599,a5a9,
     a5b9,a5c9,a5d9,a5e9,a5f9,a609,a619,a629,a639,a649,a659,a669,a679,
     a689,a699,a6a9,a6b9,a6c9,a6d9,a6e9,a6f9,a709,a719,a729,a739,a749,
     a759,a769,a779,a789,a799,a7a9,a7b9,a7c9,a7d9,a7e9,a7f9];
mov %L0x7fffffff69d0
    [a00a,a01a,a02a,a03a,a04a,a05a,a06a,a07a,a08a,a09a,a0aa,a0ba,a0ca,
     a0da,a0ea,a0fa,a10a,a11a,a12a,a13a,a14a,a15a,a16a,a17a,a18a,a19a,
     a1aa,a1ba,a1ca,a1da,a1ea,a1fa,a20a,a21a,a22a,a23a,a24a,a25a,a26a,
     a27a,a28a,a29a,a2aa,a2ba,a2ca,a2da,a2ea,a2fa,a30a,a31a,a32a,a33a,
     a34a,a35a,a36a,a37a,a38a,a39a,a3aa,a3ba,a3ca,a3da,a3ea,a3fa,a40a,
     a41a,a42a,a43a,a44a,a45a,a46a,a47a,a48a,a49a,a4aa,a4ba,a4ca,a4da,
     a4ea,a4fa,a50a,a51a,a52a,a53a,a54a,a55a,a56a,a57a,a58a,a59a,a5aa,
     a5ba,a5ca,a5da,a5ea,a5fa,a60a,a61a,a62a,a63a,a64a,a65a,a66a,a67a,
     a68a,a69a,a6aa,a6ba,a6ca,a6da,a6ea,a6fa,a70a,a71a,a72a,a73a,a74a,
     a75a,a76a,a77a,a78a,a79a,a7aa,a7ba,a7ca,a7da,a7ea,a7fa];
mov %L0x7fffffff69e0
    [a00b,a01b,a02b,a03b,a04b,a05b,a06b,a07b,a08b,a09b,a0ab,a0bb,a0cb,
     a0db,a0eb,a0fb,a10b,a11b,a12b,a13b,a14b,a15b,a16b,a17b,a18b,a19b,
     a1ab,a1bb,a1cb,a1db,a1eb,a1fb,a20b,a21b,a22b,a23b,a24b,a25b,a26b,
     a27b,a28b,a29b,a2ab,a2bb,a2cb,a2db,a2eb,a2fb,a30b,a31b,a32b,a33b,
     a34b,a35b,a36b,a37b,a38b,a39b,a3ab,a3bb,a3cb,a3db,a3eb,a3fb,a40b,
     a41b,a42b,a43b,a44b,a45b,a46b,a47b,a48b,a49b,a4ab,a4bb,a4cb,a4db,
     a4eb,a4fb,a50b,a51b,a52b,a53b,a54b,a55b,a56b,a57b,a58b,a59b,a5ab,
     a5bb,a5cb,a5db,a5eb,a5fb,a60b,a61b,a62b,a63b,a64b,a65b,a66b,a67b,
     a68b,a69b,a6ab,a6bb,a6cb,a6db,a6eb,a6fb,a70b,a71b,a72b,a73b,a74b,
     a75b,a76b,a77b,a78b,a79b,a7ab,a7bb,a7cb,a7db,a7eb,a7fb];
mov %L0x7fffffff6b00
    [b000,b010,b020,b030,b040,b050,b060,b070,b080,b090,b0a0,b0b0,b0c0,
     b0d0,b0e0,b0f0,b100,b110,b120,b130,b140,b150,b160,b170,b180,b190,
     b1a0,b1b0,b1c0,b1d0,b1e0,b1f0,b200,b210,b220,b230,b240,b250,b260,
     b270,b280,b290,b2a0,b2b0,b2c0,b2d0,b2e0,b2f0,b300,b310,b320,b330,
     b340,b350,b360,b370,b380,b390,b3a0,b3b0,b3c0,b3d0,b3e0,b3f0,b400,
     b410,b420,b430,b440,b450,b460,b470,b480,b490,b4a0,b4b0,b4c0,b4d0,
     b4e0,b4f0,b500,b510,b520,b530,b540,b550,b560,b570,b580,b590,b5a0,
     b5b0,b5c0,b5d0,b5e0,b5f0,b600,b610,b620,b630,b640,b650,b660,b670,
     b680,b690,b6a0,b6b0,b6c0,b6d0,b6e0,b6f0,b700,b710,b720,b730,b740,
     b750,b760,b770,b780,b790,b7a0,b7b0,b7c0,b7d0,b7e0,b7f0];
mov %L0x7fffffff6b10
    [b001,b011,b021,b031,b041,b051,b061,b071,b081,b091,b0a1,b0b1,b0c1,
     b0d1,b0e1,b0f1,b101,b111,b121,b131,b141,b151,b161,b171,b181,b191,
     b1a1,b1b1,b1c1,b1d1,b1e1,b1f1,b201,b211,b221,b231,b241,b251,b261,
     b271,b281,b291,b2a1,b2b1,b2c1,b2d1,b2e1,b2f1,b301,b311,b321,b331,
     b341,b351,b361,b371,b381,b391,b3a1,b3b1,b3c1,b3d1,b3e1,b3f1,b401,
     b411,b421,b431,b441,b451,b461,b471,b481,b491,b4a1,b4b1,b4c1,b4d1,
     b4e1,b4f1,b501,b511,b521,b531,b541,b551,b561,b571,b581,b591,b5a1,
     b5b1,b5c1,b5d1,b5e1,b5f1,b601,b611,b621,b631,b641,b651,b661,b671,
     b681,b691,b6a1,b6b1,b6c1,b6d1,b6e1,b6f1,b701,b711,b721,b731,b741,
     b751,b761,b771,b781,b791,b7a1,b7b1,b7c1,b7d1,b7e1,b7f1];
mov %L0x7fffffff6b20
    [b002,b012,b022,b032,b042,b052,b062,b072,b082,b092,b0a2,b0b2,b0c2,
     b0d2,b0e2,b0f2,b102,b112,b122,b132,b142,b152,b162,b172,b182,b192,
     b1a2,b1b2,b1c2,b1d2,b1e2,b1f2,b202,b212,b222,b232,b242,b252,b262,
     b272,b282,b292,b2a2,b2b2,b2c2,b2d2,b2e2,b2f2,b302,b312,b322,b332,
     b342,b352,b362,b372,b382,b392,b3a2,b3b2,b3c2,b3d2,b3e2,b3f2,b402,
     b412,b422,b432,b442,b452,b462,b472,b482,b492,b4a2,b4b2,b4c2,b4d2,
     b4e2,b4f2,b502,b512,b522,b532,b542,b552,b562,b572,b582,b592,b5a2,
     b5b2,b5c2,b5d2,b5e2,b5f2,b602,b612,b622,b632,b642,b652,b662,b672,
     b682,b692,b6a2,b6b2,b6c2,b6d2,b6e2,b6f2,b702,b712,b722,b732,b742,
     b752,b762,b772,b782,b792,b7a2,b7b2,b7c2,b7d2,b7e2,b7f2];
mov %L0x7fffffff6b30
    [b003,b013,b023,b033,b043,b053,b063,b073,b083,b093,b0a3,b0b3,b0c3,
     b0d3,b0e3,b0f3,b103,b113,b123,b133,b143,b153,b163,b173,b183,b193,
     b1a3,b1b3,b1c3,b1d3,b1e3,b1f3,b203,b213,b223,b233,b243,b253,b263,
     b273,b283,b293,b2a3,b2b3,b2c3,b2d3,b2e3,b2f3,b303,b313,b323,b333,
     b343,b353,b363,b373,b383,b393,b3a3,b3b3,b3c3,b3d3,b3e3,b3f3,b403,
     b413,b423,b433,b443,b453,b463,b473,b483,b493,b4a3,b4b3,b4c3,b4d3,
     b4e3,b4f3,b503,b513,b523,b533,b543,b553,b563,b573,b583,b593,b5a3,
     b5b3,b5c3,b5d3,b5e3,b5f3,b603,b613,b623,b633,b643,b653,b663,b673,
     b683,b693,b6a3,b6b3,b6c3,b6d3,b6e3,b6f3,b703,b713,b723,b733,b743,
     b753,b763,b773,b783,b793,b7a3,b7b3,b7c3,b7d3,b7e3,b7f3];
mov %L0x7fffffff6b40
    [b004,b014,b024,b034,b044,b054,b064,b074,b084,b094,b0a4,b0b4,b0c4,
     b0d4,b0e4,b0f4,b104,b114,b124,b134,b144,b154,b164,b174,b184,b194,
     b1a4,b1b4,b1c4,b1d4,b1e4,b1f4,b204,b214,b224,b234,b244,b254,b264,
     b274,b284,b294,b2a4,b2b4,b2c4,b2d4,b2e4,b2f4,b304,b314,b324,b334,
     b344,b354,b364,b374,b384,b394,b3a4,b3b4,b3c4,b3d4,b3e4,b3f4,b404,
     b414,b424,b434,b444,b454,b464,b474,b484,b494,b4a4,b4b4,b4c4,b4d4,
     b4e4,b4f4,b504,b514,b524,b534,b544,b554,b564,b574,b584,b594,b5a4,
     b5b4,b5c4,b5d4,b5e4,b5f4,b604,b614,b624,b634,b644,b654,b664,b674,
     b684,b694,b6a4,b6b4,b6c4,b6d4,b6e4,b6f4,b704,b714,b724,b734,b744,
     b754,b764,b774,b784,b794,b7a4,b7b4,b7c4,b7d4,b7e4,b7f4];
mov %L0x7fffffff6b50
    [b005,b015,b025,b035,b045,b055,b065,b075,b085,b095,b0a5,b0b5,b0c5,
     b0d5,b0e5,b0f5,b105,b115,b125,b135,b145,b155,b165,b175,b185,b195,
     b1a5,b1b5,b1c5,b1d5,b1e5,b1f5,b205,b215,b225,b235,b245,b255,b265,
     b275,b285,b295,b2a5,b2b5,b2c5,b2d5,b2e5,b2f5,b305,b315,b325,b335,
     b345,b355,b365,b375,b385,b395,b3a5,b3b5,b3c5,b3d5,b3e5,b3f5,b405,
     b415,b425,b435,b445,b455,b465,b475,b485,b495,b4a5,b4b5,b4c5,b4d5,
     b4e5,b4f5,b505,b515,b525,b535,b545,b555,b565,b575,b585,b595,b5a5,
     b5b5,b5c5,b5d5,b5e5,b5f5,b605,b615,b625,b635,b645,b655,b665,b675,
     b685,b695,b6a5,b6b5,b6c5,b6d5,b6e5,b6f5,b705,b715,b725,b735,b745,
     b755,b765,b775,b785,b795,b7a5,b7b5,b7c5,b7d5,b7e5,b7f5];
mov %L0x7fffffff6b60
    [b006,b016,b026,b036,b046,b056,b066,b076,b086,b096,b0a6,b0b6,b0c6,
     b0d6,b0e6,b0f6,b106,b116,b126,b136,b146,b156,b166,b176,b186,b196,
     b1a6,b1b6,b1c6,b1d6,b1e6,b1f6,b206,b216,b226,b236,b246,b256,b266,
     b276,b286,b296,b2a6,b2b6,b2c6,b2d6,b2e6,b2f6,b306,b316,b326,b336,
     b346,b356,b366,b376,b386,b396,b3a6,b3b6,b3c6,b3d6,b3e6,b3f6,b406,
     b416,b426,b436,b446,b456,b466,b476,b486,b496,b4a6,b4b6,b4c6,b4d6,
     b4e6,b4f6,b506,b516,b526,b536,b546,b556,b566,b576,b586,b596,b5a6,
     b5b6,b5c6,b5d6,b5e6,b5f6,b606,b616,b626,b636,b646,b656,b666,b676,
     b686,b696,b6a6,b6b6,b6c6,b6d6,b6e6,b6f6,b706,b716,b726,b736,b746,
     b756,b766,b776,b786,b796,b7a6,b7b6,b7c6,b7d6,b7e6,b7f6];
mov %L0x7fffffff6b70
    [b007,b017,b027,b037,b047,b057,b067,b077,b087,b097,b0a7,b0b7,b0c7,
     b0d7,b0e7,b0f7,b107,b117,b127,b137,b147,b157,b167,b177,b187,b197,
     b1a7,b1b7,b1c7,b1d7,b1e7,b1f7,b207,b217,b227,b237,b247,b257,b267,
     b277,b287,b297,b2a7,b2b7,b2c7,b2d7,b2e7,b2f7,b307,b317,b327,b337,
     b347,b357,b367,b377,b387,b397,b3a7,b3b7,b3c7,b3d7,b3e7,b3f7,b407,
     b417,b427,b437,b447,b457,b467,b477,b487,b497,b4a7,b4b7,b4c7,b4d7,
     b4e7,b4f7,b507,b517,b527,b537,b547,b557,b567,b577,b587,b597,b5a7,
     b5b7,b5c7,b5d7,b5e7,b5f7,b607,b617,b627,b637,b647,b657,b667,b677,
     b687,b697,b6a7,b6b7,b6c7,b6d7,b6e7,b6f7,b707,b717,b727,b737,b747,
     b757,b767,b777,b787,b797,b7a7,b7b7,b7c7,b7d7,b7e7,b7f7];
mov %L0x7fffffff6b80
    [b008,b018,b028,b038,b048,b058,b068,b078,b088,b098,b0a8,b0b8,b0c8,
     b0d8,b0e8,b0f8,b108,b118,b128,b138,b148,b158,b168,b178,b188,b198,
     b1a8,b1b8,b1c8,b1d8,b1e8,b1f8,b208,b218,b228,b238,b248,b258,b268,
     b278,b288,b298,b2a8,b2b8,b2c8,b2d8,b2e8,b2f8,b308,b318,b328,b338,
     b348,b358,b368,b378,b388,b398,b3a8,b3b8,b3c8,b3d8,b3e8,b3f8,b408,
     b418,b428,b438,b448,b458,b468,b478,b488,b498,b4a8,b4b8,b4c8,b4d8,
     b4e8,b4f8,b508,b518,b528,b538,b548,b558,b568,b578,b588,b598,b5a8,
     b5b8,b5c8,b5d8,b5e8,b5f8,b608,b618,b628,b638,b648,b658,b668,b678,
     b688,b698,b6a8,b6b8,b6c8,b6d8,b6e8,b6f8,b708,b718,b728,b738,b748,
     b758,b768,b778,b788,b798,b7a8,b7b8,b7c8,b7d8,b7e8,b7f8];
mov %L0x7fffffff6b90
    [b009,b019,b029,b039,b049,b059,b069,b079,b089,b099,b0a9,b0b9,b0c9,
     b0d9,b0e9,b0f9,b109,b119,b129,b139,b149,b159,b169,b179,b189,b199,
     b1a9,b1b9,b1c9,b1d9,b1e9,b1f9,b209,b219,b229,b239,b249,b259,b269,
     b279,b289,b299,b2a9,b2b9,b2c9,b2d9,b2e9,b2f9,b309,b319,b329,b339,
     b349,b359,b369,b379,b389,b399,b3a9,b3b9,b3c9,b3d9,b3e9,b3f9,b409,
     b419,b429,b439,b449,b459,b469,b479,b489,b499,b4a9,b4b9,b4c9,b4d9,
     b4e9,b4f9,b509,b519,b529,b539,b549,b559,b569,b579,b589,b599,b5a9,
     b5b9,b5c9,b5d9,b5e9,b5f9,b609,b619,b629,b639,b649,b659,b669,b679,
     b689,b699,b6a9,b6b9,b6c9,b6d9,b6e9,b6f9,b709,b719,b729,b739,b749,
     b759,b769,b779,b789,b799,b7a9,b7b9,b7c9,b7d9,b7e9,b7f9];
mov %L0x7fffffff6ba0
    [b00a,b01a,b02a,b03a,b04a,b05a,b06a,b07a,b08a,b09a,b0aa,b0ba,b0ca,
     b0da,b0ea,b0fa,b10a,b11a,b12a,b13a,b14a,b15a,b16a,b17a,b18a,b19a,
     b1aa,b1ba,b1ca,b1da,b1ea,b1fa,b20a,b21a,b22a,b23a,b24a,b25a,b26a,
     b27a,b28a,b29a,b2aa,b2ba,b2ca,b2da,b2ea,b2fa,b30a,b31a,b32a,b33a,
     b34a,b35a,b36a,b37a,b38a,b39a,b3aa,b3ba,b3ca,b3da,b3ea,b3fa,b40a,
     b41a,b42a,b43a,b44a,b45a,b46a,b47a,b48a,b49a,b4aa,b4ba,b4ca,b4da,
     b4ea,b4fa,b50a,b51a,b52a,b53a,b54a,b55a,b56a,b57a,b58a,b59a,b5aa,
     b5ba,b5ca,b5da,b5ea,b5fa,b60a,b61a,b62a,b63a,b64a,b65a,b66a,b67a,
     b68a,b69a,b6aa,b6ba,b6ca,b6da,b6ea,b6fa,b70a,b71a,b72a,b73a,b74a,
     b75a,b76a,b77a,b78a,b79a,b7aa,b7ba,b7ca,b7da,b7ea,b7fa];
mov %L0x7fffffff6bb0
    [b00b,b01b,b02b,b03b,b04b,b05b,b06b,b07b,b08b,b09b,b0ab,b0bb,b0cb,
     b0db,b0eb,b0fb,b10b,b11b,b12b,b13b,b14b,b15b,b16b,b17b,b18b,b19b,
     b1ab,b1bb,b1cb,b1db,b1eb,b1fb,b20b,b21b,b22b,b23b,b24b,b25b,b26b,
     b27b,b28b,b29b,b2ab,b2bb,b2cb,b2db,b2eb,b2fb,b30b,b31b,b32b,b33b,
     b34b,b35b,b36b,b37b,b38b,b39b,b3ab,b3bb,b3cb,b3db,b3eb,b3fb,b40b,
     b41b,b42b,b43b,b44b,b45b,b46b,b47b,b48b,b49b,b4ab,b4bb,b4cb,b4db,
     b4eb,b4fb,b50b,b51b,b52b,b53b,b54b,b55b,b56b,b57b,b58b,b59b,b5ab,
     b5bb,b5cb,b5db,b5eb,b5fb,b60b,b61b,b62b,b63b,b64b,b65b,b66b,b67b,
     b68b,b69b,b6ab,b6bb,b6cb,b6db,b6eb,b6fb,b70b,b71b,b72b,b73b,b74b,
     b75b,b76b,b77b,b78b,b79b,b7ab,b7bb,b7cb,b7db,b7eb,b7fb];

nondet %ymm0_0@bit[128]; nondet %ymm0_1@bit[128];
nondet %ymm1_0@bit[128]; nondet %ymm1_1@bit[128];
nondet %ymm2_0@bit[128]; nondet %ymm2_1@bit[128];
nondet %ymm3_0@bit[128]; nondet %ymm3_1@bit[128];
nondet %ymm4_0@bit[128]; nondet %ymm4_1@bit[128];
nondet %ymm5_0@bit[128]; nondet %ymm5_1@bit[128];
nondet %ymm6_0@bit[128]; nondet %ymm6_1@bit[128];
nondet %ymm7_0@bit[128]; nondet %ymm7_1@bit[128];
nondet %ymm8_0@bit[128]; nondet %ymm8_1@bit[128];
nondet %ymm9_0@bit[128]; nondet %ymm9_1@bit[128];
nondet %ymm10_0@bit[128]; nondet %ymm10_1@bit[128];

(* #! -> SP = 0x7fffffff6578 *)
#! 0x7fffffff6578 = 0x7fffffff6578;
(* #mov    %rsp,%r11                                #! PC = 0x55555557ebc0 *)
#mov    %rsp,%r11                                #! 0x55555557ebc0 = 0x55555557ebc0;
(* #and    $0x1f,%r11                               #! PC = 0x55555557ebc3 *)
#and    $0x1f,%r11                               #! 0x55555557ebc3 = 0x55555557ebc3;
(* #add    $0x260,%r11                              #! PC = 0x55555557ebc7 *)
#add    $0x260,%r11                              #! 0x55555557ebc7 = 0x55555557ebc7;
(* #sub    %r11,%rsp                                #! PC = 0x55555557ebce *)
#sub    %r11,%rsp                                #! 0x55555557ebce = 0x55555557ebce;
(* #lea    (%rsp),%rcx                              #! PC = 0x55555557ebd1 *)
#lea    (%rsp),%rcx                              #! 0x55555557ebd1 = 0x55555557ebd1;
(* vbroadcasti128 0xb0(%rdx),%ymm0                 #! EA = L0x7fffffff69e0; Value = 0x0000000000000000; PC = 0x55555557ebd5 *)
mov %ymm0_0 %L0x7fffffff69e0; mov %ymm0_1 %L0x7fffffff69e0;
(* vinsertf128 $0x0,0x50(%rsi),%ymm1,%ymm1         #! EA = L0x7fffffff6b50; Value = 0x0f0aa94f8bd0c1ae; PC = 0x55555557ebde *)
mov %ymm1_0 %L0x7fffffff6b50; mov %ymm1_1 %ymm1_1;
(* vinsertf128 $0x1,0xb0(%rsi),%ymm1,%ymm1         #! EA = L0x7fffffff6bb0; Value = 0x48422151e04fc0b1; PC = 0x55555557ebe5 *)
mov %ymm1_0 %ymm1_0; mov %ymm1_1 %L0x7fffffff6bb0;
(* vpand  %ymm0,%ymm1,%ymm2                        #! PC = 0x55555557ebef *)
mul %ymm2_0 %ymm1_0 %ymm0_0; mul %ymm2_1 %ymm1_1 %ymm0_1;
(* vmovupd %ymm2,0x200(%rcx)                       #! EA = L0x7fffffff6500; PC = 0x55555557ebf3 *)
mov %L0x7fffffff6500 %ymm2_0; mov %L0x7fffffff6510 %ymm2_1;
(* vinsertf128 $0x0,0x40(%rsi),%ymm2,%ymm2         #! EA = L0x7fffffff6b40; Value = 0xb5d02fb44c7afa0d; PC = 0x55555557ebfb *)
mov %ymm2_0 %L0x7fffffff6b40; mov %ymm2_1 %ymm2_1;
(* vinsertf128 $0x1,0xa0(%rsi),%ymm2,%ymm2         #! EA = L0x7fffffff6ba0; Value = 0x607a77d2b1e87075; PC = 0x55555557ec02 *)
mov %ymm2_0 %ymm2_0; mov %ymm2_1 %L0x7fffffff6ba0;
(* vpand  %ymm0,%ymm2,%ymm3                        #! PC = 0x55555557ec0c *)
mul %ymm3_0 %ymm2_0 %ymm0_0; mul %ymm3_1 %ymm2_1 %ymm0_1;
(* vinsertf128 $0x0,0x30(%rsi),%ymm4,%ymm4         #! EA = L0x7fffffff6b30; Value = 0x6179bc25454c1be8; PC = 0x55555557ec10 *)
mov %ymm4_0 %L0x7fffffff6b30; mov %ymm4_1 %ymm4_1;
(* vinsertf128 $0x1,0x90(%rsi),%ymm4,%ymm4         #! EA = L0x7fffffff6b90; Value = 0x797453373c22680c; PC = 0x55555557ec17 *)
mov %ymm4_0 %ymm4_0; mov %ymm4_1 %L0x7fffffff6b90;
(* vpand  %ymm0,%ymm4,%ymm5                        #! PC = 0x55555557ec21 *)
mul %ymm5_0 %ymm4_0 %ymm0_0; mul %ymm5_1 %ymm4_1 %ymm0_1;
(* vinsertf128 $0x0,0x20(%rsi),%ymm6,%ymm6         #! EA = L0x7fffffff6b20; Value = 0x488bb7b57e38cc9a; PC = 0x55555557ec25 *)
mov %ymm6_0 %L0x7fffffff6b20; mov %ymm6_1 %ymm6_1;
(* vinsertf128 $0x1,0x80(%rsi),%ymm6,%ymm6         #! EA = L0x7fffffff6b80; Value = 0x337a173d0c576036; PC = 0x55555557ec2c *)
mov %ymm6_0 %ymm6_0; mov %ymm6_1 %L0x7fffffff6b80;
(* vpand  %ymm0,%ymm6,%ymm7                        #! PC = 0x55555557ec36 *)
mul %ymm7_0 %ymm6_0 %ymm0_0; mul %ymm7_1 %ymm6_1 %ymm0_1;
(* vinsertf128 $0x0,0x10(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffff6b10; Value = 0xcde3e8b3b32c164e; PC = 0x55555557ec3a *)
mov %ymm8_0 %L0x7fffffff6b10; mov %ymm8_1 %ymm8_1;
(* vinsertf128 $0x1,0x70(%rsi),%ymm8,%ymm8         #! EA = L0x7fffffff6b70; Value = 0x9279cd8dbd503d36; PC = 0x55555557ec41 *)
mov %ymm8_0 %ymm8_0; mov %ymm8_1 %L0x7fffffff6b70;
(* vpand  %ymm0,%ymm8,%ymm9                        #! PC = 0x55555557ec48 *)
mul %ymm9_0 %ymm8_0 %ymm0_0; mul %ymm9_1 %ymm8_1 %ymm0_1;
(* vinsertf128 $0x0,(%rsi),%ymm10,%ymm10           #! EA = L0x7fffffff6b00; Value = 0x7af3bef3b95920ce; PC = 0x55555557ec4c *)
mov %ymm10_0 %L0x7fffffff6b00; mov %ymm10_1 %ymm10_1;
(* vinsertf128 $0x1,0x60(%rsi),%ymm10,%ymm10       #! EA = L0x7fffffff6b60; Value = 0x1b76699d0cb0f11c; PC = 0x55555557ec52 *)
mov %ymm10_0 %ymm10_0; mov %ymm10_1 %L0x7fffffff6b60;
(* vpand  %ymm0,%ymm10,%ymm0                       #! PC = 0x55555557ec59 *)
mul %ymm0_0 %ymm10_0 %ymm0_0; mul %ymm0_1 %ymm10_1 %ymm0_1;
(* vbroadcasti128 0xa0(%rdx),%ymm11                #! EA = L0x7fffffff69d0; Value = 0x0000000000000000; PC = 0x55555557ec5d *)
mov %ymm11_0 %L0x7fffffff69d0; mov %ymm11_1 %L0x7fffffff69d0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ec66 *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557ec6b *)
adds %dc %ymm3_0 %ymm3_0 %ymm12_0; adds %dc %ymm3_1 %ymm3_1 %ymm12_1;
(* vmovupd %ymm3,0x1e0(%rcx)                       #! EA = L0x7fffffff64e0; PC = 0x55555557ec70 *)
mov %L0x7fffffff64e0 %ymm3_0; mov %L0x7fffffff64f0 %ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm3                       #! PC = 0x55555557ec78 *)
mul %ymm3_0 %ymm2_0 %ymm11_0; mul %ymm3_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555557ec7d *)
adds %dc %ymm5_0 %ymm5_0 %ymm3_0; adds %dc %ymm5_1 %ymm5_1 %ymm3_1;
(* vpand  %ymm11,%ymm4,%ymm3                       #! PC = 0x55555557ec81 *)
mul %ymm3_0 %ymm4_0 %ymm11_0; mul %ymm3_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555557ec86 *)
adds %dc %ymm7_0 %ymm7_0 %ymm3_0; adds %dc %ymm7_1 %ymm7_1 %ymm3_1;
(* vpand  %ymm11,%ymm6,%ymm3                       #! PC = 0x55555557ec8a *)
mul %ymm3_0 %ymm6_0 %ymm11_0; mul %ymm3_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555557ec8f *)
adds %dc %ymm9_0 %ymm9_0 %ymm3_0; adds %dc %ymm9_1 %ymm9_1 %ymm3_1;
(* vpand  %ymm11,%ymm8,%ymm3                       #! PC = 0x55555557ec93 *)
mul %ymm3_0 %ymm8_0 %ymm11_0; mul %ymm3_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555557ec98 *)
adds %dc %ymm0_0 %ymm0_0 %ymm3_0; adds %dc %ymm0_1 %ymm0_1 %ymm3_1;
(* vpand  %ymm11,%ymm10,%ymm3                      #! PC = 0x55555557ec9c *)
mul %ymm3_0 %ymm10_0 %ymm11_0; mul %ymm3_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x90(%rdx),%ymm11                #! EA = L0x7fffffff69c0; Value = 0x0000000000000000; PC = 0x55555557eca1 *)
mov %ymm11_0 %L0x7fffffff69c0; mov %ymm11_1 %L0x7fffffff69c0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ecaa *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x55555557ecaf *)
adds %dc %ymm5_0 %ymm5_0 %ymm12_0; adds %dc %ymm5_1 %ymm5_1 %ymm12_1;
(* vmovupd %ymm5,0x1c0(%rcx)                       #! EA = L0x7fffffff64c0; PC = 0x55555557ecb4 *)
mov %L0x7fffffff64c0 %ymm5_0; mov %L0x7fffffff64d0 %ymm5_1;
(* vpand  %ymm11,%ymm2,%ymm5                       #! PC = 0x55555557ecbc *)
mul %ymm5_0 %ymm2_0 %ymm11_0; mul %ymm5_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555557ecc1 *)
adds %dc %ymm7_0 %ymm7_0 %ymm5_0; adds %dc %ymm7_1 %ymm7_1 %ymm5_1;
(* vpand  %ymm11,%ymm4,%ymm5                       #! PC = 0x55555557ecc5 *)
mul %ymm5_0 %ymm4_0 %ymm11_0; mul %ymm5_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555557ecca *)
adds %dc %ymm9_0 %ymm9_0 %ymm5_0; adds %dc %ymm9_1 %ymm9_1 %ymm5_1;
(* vpand  %ymm11,%ymm6,%ymm5                       #! PC = 0x55555557ecce *)
mul %ymm5_0 %ymm6_0 %ymm11_0; mul %ymm5_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555557ecd3 *)
adds %dc %ymm0_0 %ymm0_0 %ymm5_0; adds %dc %ymm0_1 %ymm0_1 %ymm5_1;
(* vpand  %ymm11,%ymm8,%ymm5                       #! PC = 0x55555557ecd7 *)
mul %ymm5_0 %ymm8_0 %ymm11_0; mul %ymm5_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555557ecdc *)
adds %dc %ymm3_0 %ymm3_0 %ymm5_0; adds %dc %ymm3_1 %ymm3_1 %ymm5_1;
(* vpand  %ymm11,%ymm10,%ymm5                      #! PC = 0x55555557ece0 *)
mul %ymm5_0 %ymm10_0 %ymm11_0; mul %ymm5_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x80(%rdx),%ymm11                #! EA = L0x7fffffff69b0; Value = 0xffffffff00000000; PC = 0x55555557ece5 *)
mov %ymm11_0 %L0x7fffffff69b0; mov %ymm11_1 %L0x7fffffff69b0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ecee *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm7,%ymm7                       #! PC = 0x55555557ecf3 *)
adds %dc %ymm7_0 %ymm7_0 %ymm12_0; adds %dc %ymm7_1 %ymm7_1 %ymm12_1;
(* vmovupd %ymm7,0x1a0(%rcx)                       #! EA = L0x7fffffff64a0; PC = 0x55555557ecf8 *)
mov %L0x7fffffff64a0 %ymm7_0; mov %L0x7fffffff64b0 %ymm7_1;
(* vpand  %ymm11,%ymm2,%ymm7                       #! PC = 0x55555557ed00 *)
mul %ymm7_0 %ymm2_0 %ymm11_0; mul %ymm7_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555557ed05 *)
adds %dc %ymm9_0 %ymm9_0 %ymm7_0; adds %dc %ymm9_1 %ymm9_1 %ymm7_1;
(* vpand  %ymm11,%ymm4,%ymm7                       #! PC = 0x55555557ed09 *)
mul %ymm7_0 %ymm4_0 %ymm11_0; mul %ymm7_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555557ed0e *)
adds %dc %ymm0_0 %ymm0_0 %ymm7_0; adds %dc %ymm0_1 %ymm0_1 %ymm7_1;
(* vpand  %ymm11,%ymm6,%ymm7                       #! PC = 0x55555557ed12 *)
mul %ymm7_0 %ymm6_0 %ymm11_0; mul %ymm7_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555557ed17 *)
adds %dc %ymm3_0 %ymm3_0 %ymm7_0; adds %dc %ymm3_1 %ymm3_1 %ymm7_1;
(* vpand  %ymm11,%ymm8,%ymm7                       #! PC = 0x55555557ed1b *)
mul %ymm7_0 %ymm8_0 %ymm11_0; mul %ymm7_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555557ed20 *)
adds %dc %ymm5_0 %ymm5_0 %ymm7_0; adds %dc %ymm5_1 %ymm5_1 %ymm7_1;
(* vpand  %ymm11,%ymm10,%ymm7                      #! PC = 0x55555557ed24 *)
mul %ymm7_0 %ymm10_0 %ymm11_0; mul %ymm7_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x70(%rdx),%ymm11                #! EA = L0x7fffffff69a0; Value = 0x0000000000000000; PC = 0x55555557ed29 *)
mov %ymm11_0 %L0x7fffffff69a0; mov %ymm11_1 %L0x7fffffff69a0;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ed2f *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm9,%ymm9                       #! PC = 0x55555557ed34 *)
adds %dc %ymm9_0 %ymm9_0 %ymm12_0; adds %dc %ymm9_1 %ymm9_1 %ymm12_1;
(* vmovupd %ymm9,0x180(%rcx)                       #! EA = L0x7fffffff6480; PC = 0x55555557ed39 *)
mov %L0x7fffffff6480 %ymm9_0; mov %L0x7fffffff6490 %ymm9_1;
(* vpand  %ymm11,%ymm2,%ymm9                       #! PC = 0x55555557ed41 *)
mul %ymm9_0 %ymm2_0 %ymm11_0; mul %ymm9_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555557ed46 *)
adds %dc %ymm0_0 %ymm0_0 %ymm9_0; adds %dc %ymm0_1 %ymm0_1 %ymm9_1;
(* vpand  %ymm11,%ymm4,%ymm9                       #! PC = 0x55555557ed4b *)
mul %ymm9_0 %ymm4_0 %ymm11_0; mul %ymm9_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555557ed50 *)
adds %dc %ymm3_0 %ymm3_0 %ymm9_0; adds %dc %ymm3_1 %ymm3_1 %ymm9_1;
(* vpand  %ymm11,%ymm6,%ymm9                       #! PC = 0x55555557ed55 *)
mul %ymm9_0 %ymm6_0 %ymm11_0; mul %ymm9_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555557ed5a *)
adds %dc %ymm5_0 %ymm5_0 %ymm9_0; adds %dc %ymm5_1 %ymm5_1 %ymm9_1;
(* vpand  %ymm11,%ymm8,%ymm9                       #! PC = 0x55555557ed5f *)
mul %ymm9_0 %ymm8_0 %ymm11_0; mul %ymm9_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555557ed64 *)
adds %dc %ymm7_0 %ymm7_0 %ymm9_0; adds %dc %ymm7_1 %ymm7_1 %ymm9_1;
(* vpand  %ymm11,%ymm10,%ymm9                      #! PC = 0x55555557ed69 *)
mul %ymm9_0 %ymm10_0 %ymm11_0; mul %ymm9_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x60(%rdx),%ymm11                #! EA = L0x7fffffff6990; Value = 0x0000000000000000; PC = 0x55555557ed6e *)
mov %ymm11_0 %L0x7fffffff6990; mov %ymm11_1 %L0x7fffffff6990;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ed74 *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm0,%ymm0                       #! PC = 0x55555557ed79 *)
adds %dc %ymm0_0 %ymm0_0 %ymm12_0; adds %dc %ymm0_1 %ymm0_1 %ymm12_1;
(* vmovupd %ymm0,0x160(%rcx)                       #! EA = L0x7fffffff6460; PC = 0x55555557ed7e *)
mov %L0x7fffffff6460 %ymm0_0; mov %L0x7fffffff6470 %ymm0_1;
(* vpand  %ymm11,%ymm2,%ymm0                       #! PC = 0x55555557ed86 *)
mul %ymm0_0 %ymm2_0 %ymm11_0; mul %ymm0_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557ed8b *)
adds %dc %ymm3_0 %ymm3_0 %ymm0_0; adds %dc %ymm3_1 %ymm3_1 %ymm0_1;
(* vpand  %ymm11,%ymm4,%ymm0                       #! PC = 0x55555557ed8f *)
mul %ymm0_0 %ymm4_0 %ymm11_0; mul %ymm0_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557ed94 *)
adds %dc %ymm5_0 %ymm5_0 %ymm0_0; adds %dc %ymm5_1 %ymm5_1 %ymm0_1;
(* vpand  %ymm11,%ymm6,%ymm0                       #! PC = 0x55555557ed98 *)
mul %ymm0_0 %ymm6_0 %ymm11_0; mul %ymm0_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557ed9d *)
adds %dc %ymm7_0 %ymm7_0 %ymm0_0; adds %dc %ymm7_1 %ymm7_1 %ymm0_1;
(* vpand  %ymm11,%ymm8,%ymm0                       #! PC = 0x55555557eda1 *)
mul %ymm0_0 %ymm8_0 %ymm11_0; mul %ymm0_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557eda6 *)
adds %dc %ymm9_0 %ymm9_0 %ymm0_0; adds %dc %ymm9_1 %ymm9_1 %ymm0_1;
(* vpand  %ymm11,%ymm10,%ymm0                      #! PC = 0x55555557edaa *)
mul %ymm0_0 %ymm10_0 %ymm11_0; mul %ymm0_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x50(%rdx),%ymm11                #! EA = L0x7fffffff6980; Value = 0xffffffff00000000; PC = 0x55555557edaf *)
mov %ymm11_0 %L0x7fffffff6980; mov %ymm11_1 %L0x7fffffff6980;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557edb5 *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557edba *)
adds %dc %ymm3_0 %ymm3_0 %ymm12_0; adds %dc %ymm3_1 %ymm3_1 %ymm12_1;
(* vmovupd %ymm3,0x140(%rcx)                       #! EA = L0x7fffffff6440; PC = 0x55555557edbf *)
mov %L0x7fffffff6440 %ymm3_0; mov %L0x7fffffff6450 %ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm3                       #! PC = 0x55555557edc7 *)
mul %ymm3_0 %ymm2_0 %ymm11_0; mul %ymm3_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm3,%ymm5,%ymm5                        #! PC = 0x55555557edcc *)
adds %dc %ymm5_0 %ymm5_0 %ymm3_0; adds %dc %ymm5_1 %ymm5_1 %ymm3_1;
(* vpand  %ymm11,%ymm4,%ymm3                       #! PC = 0x55555557edd0 *)
mul %ymm3_0 %ymm4_0 %ymm11_0; mul %ymm3_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm3,%ymm7,%ymm7                        #! PC = 0x55555557edd5 *)
adds %dc %ymm7_0 %ymm7_0 %ymm3_0; adds %dc %ymm7_1 %ymm7_1 %ymm3_1;
(* vpand  %ymm11,%ymm6,%ymm3                       #! PC = 0x55555557edd9 *)
mul %ymm3_0 %ymm6_0 %ymm11_0; mul %ymm3_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm3,%ymm9,%ymm9                        #! PC = 0x55555557edde *)
adds %dc %ymm9_0 %ymm9_0 %ymm3_0; adds %dc %ymm9_1 %ymm9_1 %ymm3_1;
(* vpand  %ymm11,%ymm8,%ymm3                       #! PC = 0x55555557ede2 *)
mul %ymm3_0 %ymm8_0 %ymm11_0; mul %ymm3_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm3,%ymm0,%ymm0                        #! PC = 0x55555557ede7 *)
adds %dc %ymm0_0 %ymm0_0 %ymm3_0; adds %dc %ymm0_1 %ymm0_1 %ymm3_1;
(* vpand  %ymm11,%ymm10,%ymm3                      #! PC = 0x55555557edeb *)
mul %ymm3_0 %ymm10_0 %ymm11_0; mul %ymm3_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x40(%rdx),%ymm11                #! EA = L0x7fffffff6970; Value = 0x0000000000000000; PC = 0x55555557edf0 *)
mov %ymm11_0 %L0x7fffffff6970; mov %ymm11_1 %L0x7fffffff6970;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557edf6 *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm5,%ymm5                       #! PC = 0x55555557edfb *)
adds %dc %ymm5_0 %ymm5_0 %ymm12_0; adds %dc %ymm5_1 %ymm5_1 %ymm12_1;
(* vmovupd %ymm5,0x120(%rcx)                       #! EA = L0x7fffffff6420; PC = 0x55555557ee00 *)
mov %L0x7fffffff6420 %ymm5_0; mov %L0x7fffffff6430 %ymm5_1;
(* vpand  %ymm11,%ymm2,%ymm5                       #! PC = 0x55555557ee08 *)
mul %ymm5_0 %ymm2_0 %ymm11_0; mul %ymm5_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm5,%ymm7,%ymm7                        #! PC = 0x55555557ee0d *)
adds %dc %ymm7_0 %ymm7_0 %ymm5_0; adds %dc %ymm7_1 %ymm7_1 %ymm5_1;
(* vpand  %ymm11,%ymm4,%ymm5                       #! PC = 0x55555557ee11 *)
mul %ymm5_0 %ymm4_0 %ymm11_0; mul %ymm5_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm5,%ymm9,%ymm9                        #! PC = 0x55555557ee16 *)
adds %dc %ymm9_0 %ymm9_0 %ymm5_0; adds %dc %ymm9_1 %ymm9_1 %ymm5_1;
(* vpand  %ymm11,%ymm6,%ymm5                       #! PC = 0x55555557ee1a *)
mul %ymm5_0 %ymm6_0 %ymm11_0; mul %ymm5_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555557ee1f *)
adds %dc %ymm0_0 %ymm0_0 %ymm5_0; adds %dc %ymm0_1 %ymm0_1 %ymm5_1;
(* vpand  %ymm11,%ymm8,%ymm5                       #! PC = 0x55555557ee23 *)
mul %ymm5_0 %ymm8_0 %ymm11_0; mul %ymm5_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm5,%ymm3,%ymm3                        #! PC = 0x55555557ee28 *)
adds %dc %ymm3_0 %ymm3_0 %ymm5_0; adds %dc %ymm3_1 %ymm3_1 %ymm5_1;
(* vpand  %ymm11,%ymm10,%ymm5                      #! PC = 0x55555557ee2c *)
mul %ymm5_0 %ymm10_0 %ymm11_0; mul %ymm5_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x30(%rdx),%ymm11                #! EA = L0x7fffffff6960; Value = 0x0000000000000000; PC = 0x55555557ee31 *)
mov %ymm11_0 %L0x7fffffff6960; mov %ymm11_1 %L0x7fffffff6960;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ee37 *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm7,%ymm7                       #! PC = 0x55555557ee3c *)
adds %dc %ymm7_0 %ymm7_0 %ymm12_0; adds %dc %ymm7_1 %ymm7_1 %ymm12_1;
(* vmovupd %ymm7,0x100(%rcx)                       #! EA = L0x7fffffff6400; PC = 0x55555557ee41 *)
mov %L0x7fffffff6400 %ymm7_0; mov %L0x7fffffff6410 %ymm7_1;
(* vpand  %ymm11,%ymm2,%ymm7                       #! PC = 0x55555557ee49 *)
mul %ymm7_0 %ymm2_0 %ymm11_0; mul %ymm7_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm7,%ymm9,%ymm9                        #! PC = 0x55555557ee4e *)
adds %dc %ymm9_0 %ymm9_0 %ymm7_0; adds %dc %ymm9_1 %ymm9_1 %ymm7_1;
(* vpand  %ymm11,%ymm4,%ymm7                       #! PC = 0x55555557ee52 *)
mul %ymm7_0 %ymm4_0 %ymm11_0; mul %ymm7_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm7,%ymm0,%ymm0                        #! PC = 0x55555557ee57 *)
adds %dc %ymm0_0 %ymm0_0 %ymm7_0; adds %dc %ymm0_1 %ymm0_1 %ymm7_1;
(* vpand  %ymm11,%ymm6,%ymm7                       #! PC = 0x55555557ee5b *)
mul %ymm7_0 %ymm6_0 %ymm11_0; mul %ymm7_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm7,%ymm3,%ymm3                        #! PC = 0x55555557ee60 *)
adds %dc %ymm3_0 %ymm3_0 %ymm7_0; adds %dc %ymm3_1 %ymm3_1 %ymm7_1;
(* vpand  %ymm11,%ymm8,%ymm7                       #! PC = 0x55555557ee64 *)
mul %ymm7_0 %ymm8_0 %ymm11_0; mul %ymm7_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555557ee69 *)
adds %dc %ymm5_0 %ymm5_0 %ymm7_0; adds %dc %ymm5_1 %ymm5_1 %ymm7_1;
(* vpand  %ymm11,%ymm10,%ymm7                      #! PC = 0x55555557ee6d *)
mul %ymm7_0 %ymm10_0 %ymm11_0; mul %ymm7_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x20(%rdx),%ymm11                #! EA = L0x7fffffff6950; Value = 0xffffffff00000000; PC = 0x55555557ee72 *)
mov %ymm11_0 %L0x7fffffff6950; mov %ymm11_1 %L0x7fffffff6950;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557ee78 *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm9,%ymm9                       #! PC = 0x55555557ee7d *)
adds %dc %ymm9_0 %ymm9_0 %ymm12_0; adds %dc %ymm9_1 %ymm9_1 %ymm12_1;
(* vmovupd %ymm9,0xe0(%rcx)                        #! EA = L0x7fffffff63e0; PC = 0x55555557ee82 *)
mov %L0x7fffffff63e0 %ymm9_0; mov %L0x7fffffff63f0 %ymm9_1;
(* vpand  %ymm11,%ymm2,%ymm9                       #! PC = 0x55555557ee8a *)
mul %ymm9_0 %ymm2_0 %ymm11_0; mul %ymm9_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm9,%ymm0,%ymm0                        #! PC = 0x55555557ee8f *)
adds %dc %ymm0_0 %ymm0_0 %ymm9_0; adds %dc %ymm0_1 %ymm0_1 %ymm9_1;
(* vpand  %ymm11,%ymm4,%ymm9                       #! PC = 0x55555557ee94 *)
mul %ymm9_0 %ymm4_0 %ymm11_0; mul %ymm9_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm9,%ymm3,%ymm3                        #! PC = 0x55555557ee99 *)
adds %dc %ymm3_0 %ymm3_0 %ymm9_0; adds %dc %ymm3_1 %ymm3_1 %ymm9_1;
(* vpand  %ymm11,%ymm6,%ymm9                       #! PC = 0x55555557ee9e *)
mul %ymm9_0 %ymm6_0 %ymm11_0; mul %ymm9_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm9,%ymm5,%ymm5                        #! PC = 0x55555557eea3 *)
adds %dc %ymm5_0 %ymm5_0 %ymm9_0; adds %dc %ymm5_1 %ymm5_1 %ymm9_1;
(* vpand  %ymm11,%ymm8,%ymm9                       #! PC = 0x55555557eea8 *)
mul %ymm9_0 %ymm8_0 %ymm11_0; mul %ymm9_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm9,%ymm7,%ymm7                        #! PC = 0x55555557eead *)
adds %dc %ymm7_0 %ymm7_0 %ymm9_0; adds %dc %ymm7_1 %ymm7_1 %ymm9_1;
(* vpand  %ymm11,%ymm10,%ymm9                      #! PC = 0x55555557eeb2 *)
mul %ymm9_0 %ymm10_0 %ymm11_0; mul %ymm9_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 0x10(%rdx),%ymm11                #! EA = L0x7fffffff6940; Value = 0xffffffff00000000; PC = 0x55555557eeb7 *)
mov %ymm11_0 %L0x7fffffff6940; mov %ymm11_1 %L0x7fffffff6940;
(* vpand  %ymm11,%ymm1,%ymm12                      #! PC = 0x55555557eebd *)
mul %ymm12_0 %ymm1_0 %ymm11_0; mul %ymm12_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm12,%ymm0,%ymm0                       #! PC = 0x55555557eec2 *)
adds %dc %ymm0_0 %ymm0_0 %ymm12_0; adds %dc %ymm0_1 %ymm0_1 %ymm12_1;
(* vmovupd %ymm0,0xc0(%rcx)                        #! EA = L0x7fffffff63c0; PC = 0x55555557eec7 *)
mov %L0x7fffffff63c0 %ymm0_0; mov %L0x7fffffff63d0 %ymm0_1;
(* vpand  %ymm11,%ymm2,%ymm0                       #! PC = 0x55555557eecf *)
mul %ymm0_0 %ymm2_0 %ymm11_0; mul %ymm0_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557eed4 *)
adds %dc %ymm3_0 %ymm3_0 %ymm0_0; adds %dc %ymm3_1 %ymm3_1 %ymm0_1;
(* vpand  %ymm11,%ymm4,%ymm0                       #! PC = 0x55555557eed8 *)
mul %ymm0_0 %ymm4_0 %ymm11_0; mul %ymm0_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557eedd *)
adds %dc %ymm5_0 %ymm5_0 %ymm0_0; adds %dc %ymm5_1 %ymm5_1 %ymm0_1;
(* vpand  %ymm11,%ymm6,%ymm0                       #! PC = 0x55555557eee1 *)
mul %ymm0_0 %ymm6_0 %ymm11_0; mul %ymm0_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557eee6 *)
adds %dc %ymm7_0 %ymm7_0 %ymm0_0; adds %dc %ymm7_1 %ymm7_1 %ymm0_1;
(* vpand  %ymm11,%ymm8,%ymm0                       #! PC = 0x55555557eeea *)
mul %ymm0_0 %ymm8_0 %ymm11_0; mul %ymm0_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557eeef *)
adds %dc %ymm9_0 %ymm9_0 %ymm0_0; adds %dc %ymm9_1 %ymm9_1 %ymm0_1;
(* vpand  %ymm11,%ymm10,%ymm0                      #! PC = 0x55555557eef3 *)
mul %ymm0_0 %ymm10_0 %ymm11_0; mul %ymm0_1 %ymm10_1 %ymm11_1;
(* vbroadcasti128 (%rdx),%ymm11                    #! EA = L0x7fffffff6930; Value = 0x00000000ffffffff; PC = 0x55555557eef8 *)
mov %ymm11_0 %L0x7fffffff6930; mov %ymm11_1 %L0x7fffffff6930;
(* vpand  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555557eefd *)
mul %ymm1_0 %ymm1_0 %ymm11_0; mul %ymm1_1 %ymm1_1 %ymm11_1;
(* vpxor  %ymm1,%ymm3,%ymm3                        #! PC = 0x55555557ef02 *)
adds %dc %ymm3_0 %ymm3_0 %ymm1_0; adds %dc %ymm3_1 %ymm3_1 %ymm1_1;
(* vmovupd %ymm3,0xa0(%rcx)                        #! EA = L0x7fffffff63a0; PC = 0x55555557ef06 *)
mov %L0x7fffffff63a0 %ymm3_0; mov %L0x7fffffff63b0 %ymm3_1;
(* vpand  %ymm11,%ymm2,%ymm1                       #! PC = 0x55555557ef0e *)
mul %ymm1_0 %ymm2_0 %ymm11_0; mul %ymm1_1 %ymm2_1 %ymm11_1;
(* vpxor  %ymm1,%ymm5,%ymm5                        #! PC = 0x55555557ef13 *)
adds %dc %ymm5_0 %ymm5_0 %ymm1_0; adds %dc %ymm5_1 %ymm5_1 %ymm1_1;
(* vpand  %ymm11,%ymm4,%ymm1                       #! PC = 0x55555557ef17 *)
mul %ymm1_0 %ymm4_0 %ymm11_0; mul %ymm1_1 %ymm4_1 %ymm11_1;
(* vpxor  %ymm1,%ymm7,%ymm7                        #! PC = 0x55555557ef1c *)
adds %dc %ymm7_0 %ymm7_0 %ymm1_0; adds %dc %ymm7_1 %ymm7_1 %ymm1_1;
(* vpand  %ymm11,%ymm6,%ymm1                       #! PC = 0x55555557ef20 *)
mul %ymm1_0 %ymm6_0 %ymm11_0; mul %ymm1_1 %ymm6_1 %ymm11_1;
(* vpxor  %ymm1,%ymm9,%ymm9                        #! PC = 0x55555557ef25 *)
adds %dc %ymm9_0 %ymm9_0 %ymm1_0; adds %dc %ymm9_1 %ymm9_1 %ymm1_1;
(* vpand  %ymm11,%ymm8,%ymm1                       #! PC = 0x55555557ef29 *)
mul %ymm1_0 %ymm8_0 %ymm11_0; mul %ymm1_1 %ymm8_1 %ymm11_1;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555557ef2e *)
adds %dc %ymm0_0 %ymm0_0 %ymm1_0; adds %dc %ymm0_1 %ymm0_1 %ymm1_1;
(* vpand  %ymm11,%ymm10,%ymm1                      #! PC = 0x55555557ef32 *)
mul %ymm1_0 %ymm10_0 %ymm11_0; mul %ymm1_1 %ymm10_1 %ymm11_1;
(* vmovupd %ymm5,0x80(%rcx)                        #! EA = L0x7fffffff6380; PC = 0x55555557ef37 *)
mov %L0x7fffffff6380 %ymm5_0; mov %L0x7fffffff6390 %ymm5_1;
(* vmovupd %ymm7,0x60(%rcx)                        #! EA = L0x7fffffff6360; PC = 0x55555557ef3f *)
mov %L0x7fffffff6360 %ymm7_0; mov %L0x7fffffff6370 %ymm7_1;
(* vmovupd %ymm9,0x40(%rcx)                        #! EA = L0x7fffffff6340; PC = 0x55555557ef44 *)
mov %L0x7fffffff6340 %ymm9_0; mov %L0x7fffffff6350 %ymm9_1;
(* vmovupd %ymm0,0x20(%rcx)                        #! EA = L0x7fffffff6320; PC = 0x55555557ef49 *)
mov %L0x7fffffff6320 %ymm0_0; mov %L0x7fffffff6330 %ymm0_1;
(* vmovupd %ymm1,(%rcx)                            #! EA = L0x7fffffff6300; PC = 0x55555557ef4e *)
mov %L0x7fffffff6300 %ymm1_0; mov %L0x7fffffff6310 %ymm1_1;
(* vzeroupper                                      #! PC = 0x55555557ef52 *)
mov %xmm0 %ymm0_0; mov %xmm1 %ymm1_0; mov %xmm2 %ymm2_0; mov %xmm3 %ymm3_0;
mov %xmm4 %ymm4_0; mov %xmm5 %ymm5_0; mov %xmm6 %ymm6_0; mov %xmm7 %ymm7_0;
mov %xmm8 %ymm8_0; mov %xmm9 %ymm9_0; mov %xmm10 %ymm10_0; mov %xmm11 %ymm11_0;
(* movdqu 0x210(%rcx),%xmm0                        #! EA = L0x7fffffff6510; Value = 0x0000000000000000; PC = 0x55555557ef55 *)
mov %xmm0 %L0x7fffffff6510;
(* movdqa %xmm0,%xmm1                              #! PC = 0x55555557ef5d *)
mov %xmm1 %xmm0;
(* movdqa %xmm0,%xmm0                              #! PC = 0x55555557ef61 *)
mov %xmm0 %xmm0;
(* movdqu 0x1f0(%rcx),%xmm2                        #! EA = L0x7fffffff64f0; Value = 0x0000000000000000; PC = 0x55555557ef65 *)
mov %xmm2 %L0x7fffffff64f0;
(* movdqa %xmm2,%xmm3                              #! PC = 0x55555557ef6d *)
mov %xmm3 %xmm2;
(* movdqa %xmm2,%xmm2                              #! PC = 0x55555557ef71 *)
mov %xmm2 %xmm2;
(* movdqu 0x1d0(%rcx),%xmm4                        #! EA = L0x7fffffff64d0; Value = 0x0000000000000000; PC = 0x55555557ef75 *)
mov %xmm4 %L0x7fffffff64d0;
(* movdqa %xmm4,%xmm5                              #! PC = 0x55555557ef7d *)
mov %xmm5 %xmm4;
(* movdqa %xmm4,%xmm4                              #! PC = 0x55555557ef81 *)
mov %xmm4 %xmm4;
(* movdqu 0x1b0(%rcx),%xmm6                        #! EA = L0x7fffffff64b0; Value = 0x4842215100000000; PC = 0x55555557ef85 *)
mov %xmm6 %L0x7fffffff64b0;
(* vpxor  %xmm6,%xmm0,%xmm0                        #! PC = 0x55555557ef8d *)
adds %dc %xmm0 %xmm0 %xmm6;
(* movdqa %xmm6,%xmm6                              #! PC = 0x55555557ef91 *)
mov %xmm6 %xmm6;
(* movdqu 0x190(%rcx),%xmm7                        #! EA = L0x7fffffff6490; Value = 0x607a77d200000000; PC = 0x55555557ef95 *)
mov %xmm7 %L0x7fffffff6490;
(* vpxor  %xmm7,%xmm2,%xmm2                        #! PC = 0x55555557ef9d *)
adds %dc %xmm2 %xmm2 %xmm7;
(* movdqa %xmm7,%xmm7                              #! PC = 0x55555557efa1 *)
mov %xmm7 %xmm7;
(* movdqu 0x170(%rcx),%xmm8                        #! EA = L0x7fffffff6470; Value = 0x7974533700000000; PC = 0x55555557efa5 *)
mov %xmm8 %L0x7fffffff6470;
(* vpxor  %xmm8,%xmm4,%xmm4                        #! PC = 0x55555557efae *)
adds %dc %xmm4 %xmm4 %xmm8;
(* movdqa %xmm8,%xmm8                              #! PC = 0x55555557efb3 *)
mov %xmm8 %xmm8;
(* movdqu 0x150(%rcx),%xmm9                        #! EA = L0x7fffffff6450; Value = 0x7b38366c00000000; PC = 0x55555557efb8 *)
mov %xmm9 %L0x7fffffff6450;
(* vpxor  0x200(%rcx),%xmm9,%xmm9                  #! EA = L0x7fffffff6500; Value = 0x0000000000000000; PC = 0x55555557efc1 *)
adds %dc %xmm9 %xmm9 %L0x7fffffff6500;
(* vpxor  %xmm9,%xmm6,%xmm6                        #! PC = 0x55555557efc9 *)
adds %dc %xmm6 %xmm6 %xmm9;
(* movdqa %xmm9,%xmm9                              #! PC = 0x55555557efce *)
mov %xmm9 %xmm9;
(* movdqu 0x130(%rcx),%xmm10                       #! EA = L0x7fffffff6430; Value = 0xf203ba5f00000000; PC = 0x55555557efd3 *)
mov %xmm10 %L0x7fffffff6430;
(* vpxor  0x1e0(%rcx),%xmm10,%xmm10                #! EA = L0x7fffffff64e0; Value = 0x0000000000000000; PC = 0x55555557efdc *)
adds %dc %xmm10 %xmm10 %L0x7fffffff64e0;
(* vpxor  %xmm10,%xmm7,%xmm7                       #! PC = 0x55555557efe4 *)
adds %dc %xmm7 %xmm7 %xmm10;
(* movdqa %xmm10,%xmm10                            #! PC = 0x55555557efe9 *)
mov %xmm10 %xmm10;
(* movdqu 0x110(%rcx),%xmm11                       #! EA = L0x7fffffff6410; Value = 0x62023aaa00000000; PC = 0x55555557efee *)
mov %xmm11 %L0x7fffffff6410;
(* vpxor  0x1c0(%rcx),%xmm11,%xmm11                #! EA = L0x7fffffff64c0; Value = 0x0000000000000000; PC = 0x55555557eff7 *)
adds %dc %xmm11 %xmm11 %L0x7fffffff64c0;
(* vpxor  %xmm11,%xmm8,%xmm8                       #! PC = 0x55555557efff *)
adds %dc %xmm8 %xmm8 %xmm11;
(* movdqa %xmm11,%xmm11                            #! PC = 0x55555557f004 *)
mov %xmm11 %xmm11;
(* vpxor  0xf0(%rcx),%xmm1,%xmm1                   #! EA = L0x7fffffff63f0; Value = 0x7b38366c00000000; PC = 0x55555557f009 *)
adds %dc %xmm1 %xmm1 %L0x7fffffff63f0;
(* vpxor  0x1a0(%rcx),%xmm1,%xmm1                  #! EA = L0x7fffffff64a0; Value = 0x0f0aa94f00000000; PC = 0x55555557f011 *)
adds %dc %xmm1 %xmm1 %L0x7fffffff64a0;
(* vpxor  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557f019 *)
adds %dc %xmm9 %xmm9 %xmm1;
(* movdqa %xmm1,%xmm1                              #! PC = 0x55555557f01d *)
mov %xmm1 %xmm1;
(* vpxor  0xd0(%rcx),%xmm3,%xmm3                   #! EA = L0x7fffffff63d0; Value = 0xba419b0e00000000; PC = 0x55555557f021 *)
adds %dc %xmm3 %xmm3 %L0x7fffffff63d0;
(* vpxor  0x180(%rcx),%xmm3,%xmm3                  #! EA = L0x7fffffff6480; Value = 0xb5d02fb400000000; PC = 0x55555557f029 *)
adds %dc %xmm3 %xmm3 %L0x7fffffff6480;
(* vpxor  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557f031 *)
adds %dc %xmm10 %xmm10 %xmm3;
(* movdqa %xmm3,%xmm3                              #! PC = 0x55555557f035 *)
mov %xmm3 %xmm3;
(* vpxor  0x160(%rcx),%xmm5,%xmm5                  #! EA = L0x7fffffff6460; Value = 0x6179bc2500000000; PC = 0x55555557f039 *)
adds %dc %xmm5 %xmm5 %L0x7fffffff6460;
(* vpxor  0xb0(%rcx),%xmm5,%xmm5                   #! EA = L0x7fffffff63b0; Value = 0x02784d78e04fc0b1; PC = 0x55555557f041 *)
adds %dc %xmm5 %xmm5 %L0x7fffffff63b0;
(* movdqu %xmm5,0xb0(%rdi)                         #! EA = L0x7fffffff6bb0; PC = 0x55555557f049 *)
mov %L0x7fffffff6bb0 %xmm5;
(* vpxor  0x140(%rcx),%xmm0,%xmm0                  #! EA = L0x7fffffff6440; Value = 0x47811efa00000000; PC = 0x55555557f051 *)
adds %dc %xmm0 %xmm0 %L0x7fffffff6440;
(* vpxor  0x90(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6390; Value = 0x4a0e440ab1e87075; PC = 0x55555557f059 *)
adds %dc %xmm0 %xmm0 %L0x7fffffff6390;
(* movdqu %xmm0,0xa0(%rdi)                         #! EA = L0x7fffffff6ba0; PC = 0x55555557f061 *)
mov %L0x7fffffff6ba0 %xmm0;
(* vpxor  0x120(%rcx),%xmm2,%xmm0                  #! EA = L0x7fffffff6420; Value = 0x7833c70700000000; PC = 0x55555557f069 *)
adds %dc %xmm0 %xmm2 %L0x7fffffff6420;
(* vpxor  0x70(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6370; Value = 0xa103dab03c22680c; PC = 0x55555557f071 *)
adds %dc %xmm0 %xmm0 %L0x7fffffff6370;
(* movdqu %xmm0,0x90(%rdi)                         #! EA = L0x7fffffff6b90; PC = 0x55555557f076 *)
mov %L0x7fffffff6b90 %xmm0;
(* vpxor  0x100(%rcx),%xmm4,%xmm0                  #! EA = L0x7fffffff6400; Value = 0x1b8a02d600000000; PC = 0x55555557f07e *)
adds %dc %xmm0 %xmm4 %L0x7fffffff6400;
(* vpxor  0x50(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6350; Value = 0x890fa4100c576036; PC = 0x55555557f086 *)
adds %dc %xmm0 %xmm0 %L0x7fffffff6350;
(* movdqu %xmm0,0x80(%rdi)                         #! EA = L0x7fffffff6b80; PC = 0x55555557f08b *)
mov %L0x7fffffff6b80 %xmm0;
(* vpxor  0xe0(%rcx),%xmm6,%xmm0                   #! EA = L0x7fffffff63e0; Value = 0x47811efa00000000; PC = 0x55555557f093 *)
adds %dc %xmm0 %xmm6 %L0x7fffffff63e0;
(* vpxor  0x30(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6330; Value = 0x1b76699dbd503d36; PC = 0x55555557f09b *)
adds %dc %xmm0 %xmm0 %L0x7fffffff6330;
(* movdqu %xmm0,0x70(%rdi)                         #! EA = L0x7fffffff6b70; PC = 0x55555557f0a0 *)
mov %L0x7fffffff6b70 %xmm0;
(* vpxor  0xc0(%rcx),%xmm7,%xmm0                   #! EA = L0x7fffffff63c0; Value = 0x77396e4800000000; PC = 0x55555557f0a5 *)
adds %dc %xmm0 %xmm7 %L0x7fffffff63c0;
(* vpxor  0x10(%rcx),%xmm0,%xmm0                   #! EA = L0x7fffffff6310; Value = 0x000000000cb0f11c; PC = 0x55555557f0ad *)
adds %dc %xmm0 %xmm0 %L0x7fffffff6310;
(* movdqu %xmm0,0x60(%rdi)                         #! EA = L0x7fffffff6b60; PC = 0x55555557f0b2 *)
mov %L0x7fffffff6b60 %xmm0;
(* vpxor  0xa0(%rcx),%xmm8,%xmm0                   #! EA = L0x7fffffff63a0; Value = 0xae5a2d628bd0c1ae; PC = 0x55555557f0b7 *)
adds %dc %xmm0 %xmm8 %L0x7fffffff63a0;
(* movdqu %xmm0,0x50(%rdi)                         #! EA = L0x7fffffff6b50; PC = 0x55555557f0bf *)
mov %L0x7fffffff6b50 %xmm0;
(* vpxor  0x80(%rcx),%xmm9,%xmm0                   #! EA = L0x7fffffff6380; Value = 0x29f20b904c7afa0d; PC = 0x55555557f0c4 *)
adds %dc %xmm0 %xmm9 %L0x7fffffff6380;
(* movdqu %xmm0,0x40(%rdi)                         #! EA = L0x7fffffff6b40; PC = 0x55555557f0cc *)
mov %L0x7fffffff6b40 %xmm0;
(* vpxor  0x60(%rcx),%xmm10,%xmm0                  #! EA = L0x7fffffff6360; Value = 0x85685f06454c1be8; PC = 0x55555557f0d1 *)
adds %dc %xmm0 %xmm10 %L0x7fffffff6360;
(* movdqu %xmm0,0x30(%rdi)                         #! EA = L0x7fffffff6b30; PC = 0x55555557f0d6 *)
mov %L0x7fffffff6b30 %xmm0;
(* vpxor  0x40(%rcx),%xmm11,%xmm0                  #! EA = L0x7fffffff6340; Value = 0xb71056407e38cc9a; PC = 0x55555557f0db *)
adds %dc %xmm0 %xmm11 %L0x7fffffff6340;
(* movdqu %xmm0,0x20(%rdi)                         #! EA = L0x7fffffff6b20; PC = 0x55555557f0e0 *)
mov %L0x7fffffff6b20 %xmm0;
(* vpxor  0x20(%rcx),%xmm1,%xmm0                   #! EA = L0x7fffffff6320; Value = 0x7af3bef3b32c164e; PC = 0x55555557f0e5 *)
adds %dc %xmm0 %xmm1 %L0x7fffffff6320;
(* movdqu %xmm0,0x10(%rdi)                         #! EA = L0x7fffffff6b10; PC = 0x55555557f0ea *)
mov %L0x7fffffff6b10 %xmm0;
(* vpxor  (%rcx),%xmm3,%xmm0                       #! EA = L0x7fffffff6300; Value = 0x00000000b95920ce; PC = 0x55555557f0ef *)
adds %dc %xmm0 %xmm3 %L0x7fffffff6300;
(* movdqu %xmm0,(%rdi)                             #! EA = L0x7fffffff6b00; PC = 0x55555557f0f3 *)
mov %L0x7fffffff6b00 %xmm0;
(* #add    %r11,%rsp                                #! PC = 0x55555557f0f7 *)
#add    %r11,%rsp                                #! 0x55555557f0f7 = 0x55555557f0f7;
(* #! <- SP = 0x7fffffff6578 *)
#! 0x7fffffff6578 = 0x7fffffff6578;
(* #retq                                           #! PC = 0x55555557f0fa *)
#retq                                           #! 0x55555557f0fa = 0x55555557f0fa;

mov [r000,r010,r020,r030,r040,r050,r060,r070,r080,r090,r0a0,r0b0,r0c0,
     r0d0,r0e0,r0f0,r100,r110,r120,r130,r140,r150,r160,r170,r180,r190,
     r1a0,r1b0,r1c0,r1d0,r1e0,r1f0,r200,r210,r220,r230,r240,r250,r260,
     r270,r280,r290,r2a0,r2b0,r2c0,r2d0,r2e0,r2f0,r300,r310,r320,r330,
     r340,r350,r360,r370,r380,r390,r3a0,r3b0,r3c0,r3d0,r3e0,r3f0,r400,
     r410,r420,r430,r440,r450,r460,r470,r480,r490,r4a0,r4b0,r4c0,r4d0,
     r4e0,r4f0,r500,r510,r520,r530,r540,r550,r560,r570,r580,r590,r5a0,
     r5b0,r5c0,r5d0,r5e0,r5f0,r600,r610,r620,r630,r640,r650,r660,r670,
     r680,r690,r6a0,r6b0,r6c0,r6d0,r6e0,r6f0,r700,r710,r720,r730,r740,
     r750,r760,r770,r780,r790,r7a0,r7b0,r7c0,r7d0,r7e0,r7f0]
     %L0x7fffffff6b00;
mov [r001,r011,r021,r031,r041,r051,r061,r071,r081,r091,r0a1,r0b1,r0c1,
     r0d1,r0e1,r0f1,r101,r111,r121,r131,r141,r151,r161,r171,r181,r191,
     r1a1,r1b1,r1c1,r1d1,r1e1,r1f1,r201,r211,r221,r231,r241,r251,r261,
     r271,r281,r291,r2a1,r2b1,r2c1,r2d1,r2e1,r2f1,r301,r311,r321,r331,
     r341,r351,r361,r371,r381,r391,r3a1,r3b1,r3c1,r3d1,r3e1,r3f1,r401,
     r411,r421,r431,r441,r451,r461,r471,r481,r491,r4a1,r4b1,r4c1,r4d1,
     r4e1,r4f1,r501,r511,r521,r531,r541,r551,r561,r571,r581,r591,r5a1,
     r5b1,r5c1,r5d1,r5e1,r5f1,r601,r611,r621,r631,r641,r651,r661,r671,
     r681,r691,r6a1,r6b1,r6c1,r6d1,r6e1,r6f1,r701,r711,r721,r731,r741,
     r751,r761,r771,r781,r791,r7a1,r7b1,r7c1,r7d1,r7e1,r7f1]
     %L0x7fffffff6b10;
mov [r002,r012,r022,r032,r042,r052,r062,r072,r082,r092,r0a2,r0b2,r0c2,
     r0d2,r0e2,r0f2,r102,r112,r122,r132,r142,r152,r162,r172,r182,r192,
     r1a2,r1b2,r1c2,r1d2,r1e2,r1f2,r202,r212,r222,r232,r242,r252,r262,
     r272,r282,r292,r2a2,r2b2,r2c2,r2d2,r2e2,r2f2,r302,r312,r322,r332,
     r342,r352,r362,r372,r382,r392,r3a2,r3b2,r3c2,r3d2,r3e2,r3f2,r402,
     r412,r422,r432,r442,r452,r462,r472,r482,r492,r4a2,r4b2,r4c2,r4d2,
     r4e2,r4f2,r502,r512,r522,r532,r542,r552,r562,r572,r582,r592,r5a2,
     r5b2,r5c2,r5d2,r5e2,r5f2,r602,r612,r622,r632,r642,r652,r662,r672,
     r682,r692,r6a2,r6b2,r6c2,r6d2,r6e2,r6f2,r702,r712,r722,r732,r742,
     r752,r762,r772,r782,r792,r7a2,r7b2,r7c2,r7d2,r7e2,r7f2]
     %L0x7fffffff6b20;
mov [r003,r013,r023,r033,r043,r053,r063,r073,r083,r093,r0a3,r0b3,r0c3,
     r0d3,r0e3,r0f3,r103,r113,r123,r133,r143,r153,r163,r173,r183,r193,
     r1a3,r1b3,r1c3,r1d3,r1e3,r1f3,r203,r213,r223,r233,r243,r253,r263,
     r273,r283,r293,r2a3,r2b3,r2c3,r2d3,r2e3,r2f3,r303,r313,r323,r333,
     r343,r353,r363,r373,r383,r393,r3a3,r3b3,r3c3,r3d3,r3e3,r3f3,r403,
     r413,r423,r433,r443,r453,r463,r473,r483,r493,r4a3,r4b3,r4c3,r4d3,
     r4e3,r4f3,r503,r513,r523,r533,r543,r553,r563,r573,r583,r593,r5a3,
     r5b3,r5c3,r5d3,r5e3,r5f3,r603,r613,r623,r633,r643,r653,r663,r673,
     r683,r693,r6a3,r6b3,r6c3,r6d3,r6e3,r6f3,r703,r713,r723,r733,r743,
     r753,r763,r773,r783,r793,r7a3,r7b3,r7c3,r7d3,r7e3,r7f3]
     %L0x7fffffff6b30;
mov [r004,r014,r024,r034,r044,r054,r064,r074,r084,r094,r0a4,r0b4,r0c4,
     r0d4,r0e4,r0f4,r104,r114,r124,r134,r144,r154,r164,r174,r184,r194,
     r1a4,r1b4,r1c4,r1d4,r1e4,r1f4,r204,r214,r224,r234,r244,r254,r264,
     r274,r284,r294,r2a4,r2b4,r2c4,r2d4,r2e4,r2f4,r304,r314,r324,r334,
     r344,r354,r364,r374,r384,r394,r3a4,r3b4,r3c4,r3d4,r3e4,r3f4,r404,
     r414,r424,r434,r444,r454,r464,r474,r484,r494,r4a4,r4b4,r4c4,r4d4,
     r4e4,r4f4,r504,r514,r524,r534,r544,r554,r564,r574,r584,r594,r5a4,
     r5b4,r5c4,r5d4,r5e4,r5f4,r604,r614,r624,r634,r644,r654,r664,r674,
     r684,r694,r6a4,r6b4,r6c4,r6d4,r6e4,r6f4,r704,r714,r724,r734,r744,
     r754,r764,r774,r784,r794,r7a4,r7b4,r7c4,r7d4,r7e4,r7f4]
     %L0x7fffffff6b40;
mov [r005,r015,r025,r035,r045,r055,r065,r075,r085,r095,r0a5,r0b5,r0c5,
     r0d5,r0e5,r0f5,r105,r115,r125,r135,r145,r155,r165,r175,r185,r195,
     r1a5,r1b5,r1c5,r1d5,r1e5,r1f5,r205,r215,r225,r235,r245,r255,r265,
     r275,r285,r295,r2a5,r2b5,r2c5,r2d5,r2e5,r2f5,r305,r315,r325,r335,
     r345,r355,r365,r375,r385,r395,r3a5,r3b5,r3c5,r3d5,r3e5,r3f5,r405,
     r415,r425,r435,r445,r455,r465,r475,r485,r495,r4a5,r4b5,r4c5,r4d5,
     r4e5,r4f5,r505,r515,r525,r535,r545,r555,r565,r575,r585,r595,r5a5,
     r5b5,r5c5,r5d5,r5e5,r5f5,r605,r615,r625,r635,r645,r655,r665,r675,
     r685,r695,r6a5,r6b5,r6c5,r6d5,r6e5,r6f5,r705,r715,r725,r735,r745,
     r755,r765,r775,r785,r795,r7a5,r7b5,r7c5,r7d5,r7e5,r7f5]
     %L0x7fffffff6b50;
mov [r006,r016,r026,r036,r046,r056,r066,r076,r086,r096,r0a6,r0b6,r0c6,
     r0d6,r0e6,r0f6,r106,r116,r126,r136,r146,r156,r166,r176,r186,r196,
     r1a6,r1b6,r1c6,r1d6,r1e6,r1f6,r206,r216,r226,r236,r246,r256,r266,
     r276,r286,r296,r2a6,r2b6,r2c6,r2d6,r2e6,r2f6,r306,r316,r326,r336,
     r346,r356,r366,r376,r386,r396,r3a6,r3b6,r3c6,r3d6,r3e6,r3f6,r406,
     r416,r426,r436,r446,r456,r466,r476,r486,r496,r4a6,r4b6,r4c6,r4d6,
     r4e6,r4f6,r506,r516,r526,r536,r546,r556,r566,r576,r586,r596,r5a6,
     r5b6,r5c6,r5d6,r5e6,r5f6,r606,r616,r626,r636,r646,r656,r666,r676,
     r686,r696,r6a6,r6b6,r6c6,r6d6,r6e6,r6f6,r706,r716,r726,r736,r746,
     r756,r766,r776,r786,r796,r7a6,r7b6,r7c6,r7d6,r7e6,r7f6]
     %L0x7fffffff6b60;
mov [r007,r017,r027,r037,r047,r057,r067,r077,r087,r097,r0a7,r0b7,r0c7,
     r0d7,r0e7,r0f7,r107,r117,r127,r137,r147,r157,r167,r177,r187,r197,
     r1a7,r1b7,r1c7,r1d7,r1e7,r1f7,r207,r217,r227,r237,r247,r257,r267,
     r277,r287,r297,r2a7,r2b7,r2c7,r2d7,r2e7,r2f7,r307,r317,r327,r337,
     r347,r357,r367,r377,r387,r397,r3a7,r3b7,r3c7,r3d7,r3e7,r3f7,r407,
     r417,r427,r437,r447,r457,r467,r477,r487,r497,r4a7,r4b7,r4c7,r4d7,
     r4e7,r4f7,r507,r517,r527,r537,r547,r557,r567,r577,r587,r597,r5a7,
     r5b7,r5c7,r5d7,r5e7,r5f7,r607,r617,r627,r637,r647,r657,r667,r677,
     r687,r697,r6a7,r6b7,r6c7,r6d7,r6e7,r6f7,r707,r717,r727,r737,r747,
     r757,r767,r777,r787,r797,r7a7,r7b7,r7c7,r7d7,r7e7,r7f7]
     %L0x7fffffff6b70;
mov [r008,r018,r028,r038,r048,r058,r068,r078,r088,r098,r0a8,r0b8,r0c8,
     r0d8,r0e8,r0f8,r108,r118,r128,r138,r148,r158,r168,r178,r188,r198,
     r1a8,r1b8,r1c8,r1d8,r1e8,r1f8,r208,r218,r228,r238,r248,r258,r268,
     r278,r288,r298,r2a8,r2b8,r2c8,r2d8,r2e8,r2f8,r308,r318,r328,r338,
     r348,r358,r368,r378,r388,r398,r3a8,r3b8,r3c8,r3d8,r3e8,r3f8,r408,
     r418,r428,r438,r448,r458,r468,r478,r488,r498,r4a8,r4b8,r4c8,r4d8,
     r4e8,r4f8,r508,r518,r528,r538,r548,r558,r568,r578,r588,r598,r5a8,
     r5b8,r5c8,r5d8,r5e8,r5f8,r608,r618,r628,r638,r648,r658,r668,r678,
     r688,r698,r6a8,r6b8,r6c8,r6d8,r6e8,r6f8,r708,r718,r728,r738,r748,
     r758,r768,r778,r788,r798,r7a8,r7b8,r7c8,r7d8,r7e8,r7f8]
     %L0x7fffffff6b80;
mov [r009,r019,r029,r039,r049,r059,r069,r079,r089,r099,r0a9,r0b9,r0c9,
     r0d9,r0e9,r0f9,r109,r119,r129,r139,r149,r159,r169,r179,r189,r199,
     r1a9,r1b9,r1c9,r1d9,r1e9,r1f9,r209,r219,r229,r239,r249,r259,r269,
     r279,r289,r299,r2a9,r2b9,r2c9,r2d9,r2e9,r2f9,r309,r319,r329,r339,
     r349,r359,r369,r379,r389,r399,r3a9,r3b9,r3c9,r3d9,r3e9,r3f9,r409,
     r419,r429,r439,r449,r459,r469,r479,r489,r499,r4a9,r4b9,r4c9,r4d9,
     r4e9,r4f9,r509,r519,r529,r539,r549,r559,r569,r579,r589,r599,r5a9,
     r5b9,r5c9,r5d9,r5e9,r5f9,r609,r619,r629,r639,r649,r659,r669,r679,
     r689,r699,r6a9,r6b9,r6c9,r6d9,r6e9,r6f9,r709,r719,r729,r739,r749,
     r759,r769,r779,r789,r799,r7a9,r7b9,r7c9,r7d9,r7e9,r7f9]
     %L0x7fffffff6b90;
mov [r00a,r01a,r02a,r03a,r04a,r05a,r06a,r07a,r08a,r09a,r0aa,r0ba,r0ca,
     r0da,r0ea,r0fa,r10a,r11a,r12a,r13a,r14a,r15a,r16a,r17a,r18a,r19a,
     r1aa,r1ba,r1ca,r1da,r1ea,r1fa,r20a,r21a,r22a,r23a,r24a,r25a,r26a,
     r27a,r28a,r29a,r2aa,r2ba,r2ca,r2da,r2ea,r2fa,r30a,r31a,r32a,r33a,
     r34a,r35a,r36a,r37a,r38a,r39a,r3aa,r3ba,r3ca,r3da,r3ea,r3fa,r40a,
     r41a,r42a,r43a,r44a,r45a,r46a,r47a,r48a,r49a,r4aa,r4ba,r4ca,r4da,
     r4ea,r4fa,r50a,r51a,r52a,r53a,r54a,r55a,r56a,r57a,r58a,r59a,r5aa,
     r5ba,r5ca,r5da,r5ea,r5fa,r60a,r61a,r62a,r63a,r64a,r65a,r66a,r67a,
     r68a,r69a,r6aa,r6ba,r6ca,r6da,r6ea,r6fa,r70a,r71a,r72a,r73a,r74a,
     r75a,r76a,r77a,r78a,r79a,r7aa,r7ba,r7ca,r7da,r7ea,r7fa]
     %L0x7fffffff6ba0;
mov [r00b,r01b,r02b,r03b,r04b,r05b,r06b,r07b,r08b,r09b,r0ab,r0bb,r0cb,
     r0db,r0eb,r0fb,r10b,r11b,r12b,r13b,r14b,r15b,r16b,r17b,r18b,r19b,
     r1ab,r1bb,r1cb,r1db,r1eb,r1fb,r20b,r21b,r22b,r23b,r24b,r25b,r26b,
     r27b,r28b,r29b,r2ab,r2bb,r2cb,r2db,r2eb,r2fb,r30b,r31b,r32b,r33b,
     r34b,r35b,r36b,r37b,r38b,r39b,r3ab,r3bb,r3cb,r3db,r3eb,r3fb,r40b,
     r41b,r42b,r43b,r44b,r45b,r46b,r47b,r48b,r49b,r4ab,r4bb,r4cb,r4db,
     r4eb,r4fb,r50b,r51b,r52b,r53b,r54b,r55b,r56b,r57b,r58b,r59b,r5ab,
     r5bb,r5cb,r5db,r5eb,r5fb,r60b,r61b,r62b,r63b,r64b,r65b,r66b,r67b,
     r68b,r69b,r6ab,r6bb,r6cb,r6db,r6eb,r6fb,r70b,r71b,r72b,r73b,r74b,
     r75b,r76b,r77b,r78b,r79b,r7ab,r7bb,r7cb,r7db,r7eb,r7fb]
     %L0x7fffffff6bb0;

ghost X@uint12 : true && true;

{
eqmod (poly X [r000,r001,r002,r003,r004,r005,r006,r007,r008,r009,r00a,r00b])
      ((poly X [a000,a001,a002,a003,a004,a005,a006,a007,a008,a009,a00a,a00b])*
       (poly X [b000,b001,b002,b003,b004,b005,b006,b007,b008,b009,b00a,b00b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r010,r011,r012,r013,r014,r015,r016,r017,r018,r019,r01a,r01b])
      ((poly X [a010,a011,a012,a013,a014,a015,a016,a017,a018,a019,a01a,a01b])*
       (poly X [b010,b011,b012,b013,b014,b015,b016,b017,b018,b019,b01a,b01b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r020,r021,r022,r023,r024,r025,r026,r027,r028,r029,r02a,r02b])
      ((poly X [a020,a021,a022,a023,a024,a025,a026,a027,a028,a029,a02a,a02b])*
       (poly X [b020,b021,b022,b023,b024,b025,b026,b027,b028,b029,b02a,b02b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r030,r031,r032,r033,r034,r035,r036,r037,r038,r039,r03a,r03b])
      ((poly X [a030,a031,a032,a033,a034,a035,a036,a037,a038,a039,a03a,a03b])*
       (poly X [b030,b031,b032,b033,b034,b035,b036,b037,b038,b039,b03a,b03b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r040,r041,r042,r043,r044,r045,r046,r047,r048,r049,r04a,r04b])
      ((poly X [a040,a041,a042,a043,a044,a045,a046,a047,a048,a049,a04a,a04b])*
       (poly X [b040,b041,b042,b043,b044,b045,b046,b047,b048,b049,b04a,b04b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r050,r051,r052,r053,r054,r055,r056,r057,r058,r059,r05a,r05b])
      ((poly X [a050,a051,a052,a053,a054,a055,a056,a057,a058,a059,a05a,a05b])*
       (poly X [b050,b051,b052,b053,b054,b055,b056,b057,b058,b059,b05a,b05b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r060,r061,r062,r063,r064,r065,r066,r067,r068,r069,r06a,r06b])
      ((poly X [a060,a061,a062,a063,a064,a065,a066,a067,a068,a069,a06a,a06b])*
       (poly X [b060,b061,b062,b063,b064,b065,b066,b067,b068,b069,b06a,b06b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r070,r071,r072,r073,r074,r075,r076,r077,r078,r079,r07a,r07b])
      ((poly X [a070,a071,a072,a073,a074,a075,a076,a077,a078,a079,a07a,a07b])*
       (poly X [b070,b071,b072,b073,b074,b075,b076,b077,b078,b079,b07a,b07b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r080,r081,r082,r083,r084,r085,r086,r087,r088,r089,r08a,r08b])
      ((poly X [a080,a081,a082,a083,a084,a085,a086,a087,a088,a089,a08a,a08b])*
       (poly X [b080,b081,b082,b083,b084,b085,b086,b087,b088,b089,b08a,b08b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r090,r091,r092,r093,r094,r095,r096,r097,r098,r099,r09a,r09b])
      ((poly X [a090,a091,a092,a093,a094,a095,a096,a097,a098,a099,a09a,a09b])*
       (poly X [b090,b091,b092,b093,b094,b095,b096,b097,b098,b099,b09a,b09b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r0a0,r0a1,r0a2,r0a3,r0a4,r0a5,r0a6,r0a7,r0a8,r0a9,r0aa,r0ab])
      ((poly X [a0a0,a0a1,a0a2,a0a3,a0a4,a0a5,a0a6,a0a7,a0a8,a0a9,a0aa,a0ab])*
       (poly X [b0a0,b0a1,b0a2,b0a3,b0a4,b0a5,b0a6,b0a7,b0a8,b0a9,b0aa,b0ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r0b0,r0b1,r0b2,r0b3,r0b4,r0b5,r0b6,r0b7,r0b8,r0b9,r0ba,r0bb])
      ((poly X [a0b0,a0b1,a0b2,a0b3,a0b4,a0b5,a0b6,a0b7,a0b8,a0b9,a0ba,a0bb])*
       (poly X [b0b0,b0b1,b0b2,b0b3,b0b4,b0b5,b0b6,b0b7,b0b8,b0b9,b0ba,b0bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r0c0,r0c1,r0c2,r0c3,r0c4,r0c5,r0c6,r0c7,r0c8,r0c9,r0ca,r0cb])
      ((poly X [a0c0,a0c1,a0c2,a0c3,a0c4,a0c5,a0c6,a0c7,a0c8,a0c9,a0ca,a0cb])*
       (poly X [b0c0,b0c1,b0c2,b0c3,b0c4,b0c5,b0c6,b0c7,b0c8,b0c9,b0ca,b0cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r0d0,r0d1,r0d2,r0d3,r0d4,r0d5,r0d6,r0d7,r0d8,r0d9,r0da,r0db])
      ((poly X [a0d0,a0d1,a0d2,a0d3,a0d4,a0d5,a0d6,a0d7,a0d8,a0d9,a0da,a0db])*
       (poly X [b0d0,b0d1,b0d2,b0d3,b0d4,b0d5,b0d6,b0d7,b0d8,b0d9,b0da,b0db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r0e0,r0e1,r0e2,r0e3,r0e4,r0e5,r0e6,r0e7,r0e8,r0e9,r0ea,r0eb])
      ((poly X [a0e0,a0e1,a0e2,a0e3,a0e4,a0e5,a0e6,a0e7,a0e8,a0e9,a0ea,a0eb])*
       (poly X [b0e0,b0e1,b0e2,b0e3,b0e4,b0e5,b0e6,b0e7,b0e8,b0e9,b0ea,b0eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r0f0,r0f1,r0f2,r0f3,r0f4,r0f5,r0f6,r0f7,r0f8,r0f9,r0fa,r0fb])
      ((poly X [a0f0,a0f1,a0f2,a0f3,a0f4,a0f5,a0f6,a0f7,a0f8,a0f9,a0fa,a0fb])*
       (poly X [b0f0,b0f1,b0f2,b0f3,b0f4,b0f5,b0f6,b0f7,b0f8,b0f9,b0fa,b0fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r100,r101,r102,r103,r104,r105,r106,r107,r108,r109,r10a,r10b])
      ((poly X [a100,a101,a102,a103,a104,a105,a106,a107,a108,a109,a10a,a10b])*
       (poly X [b100,b101,b102,b103,b104,b105,b106,b107,b108,b109,b10a,b10b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r110,r111,r112,r113,r114,r115,r116,r117,r118,r119,r11a,r11b])
      ((poly X [a110,a111,a112,a113,a114,a115,a116,a117,a118,a119,a11a,a11b])*
       (poly X [b110,b111,b112,b113,b114,b115,b116,b117,b118,b119,b11a,b11b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r120,r121,r122,r123,r124,r125,r126,r127,r128,r129,r12a,r12b])
      ((poly X [a120,a121,a122,a123,a124,a125,a126,a127,a128,a129,a12a,a12b])*
       (poly X [b120,b121,b122,b123,b124,b125,b126,b127,b128,b129,b12a,b12b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r130,r131,r132,r133,r134,r135,r136,r137,r138,r139,r13a,r13b])
      ((poly X [a130,a131,a132,a133,a134,a135,a136,a137,a138,a139,a13a,a13b])*
       (poly X [b130,b131,b132,b133,b134,b135,b136,b137,b138,b139,b13a,b13b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r140,r141,r142,r143,r144,r145,r146,r147,r148,r149,r14a,r14b])
      ((poly X [a140,a141,a142,a143,a144,a145,a146,a147,a148,a149,a14a,a14b])*
       (poly X [b140,b141,b142,b143,b144,b145,b146,b147,b148,b149,b14a,b14b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r150,r151,r152,r153,r154,r155,r156,r157,r158,r159,r15a,r15b])
      ((poly X [a150,a151,a152,a153,a154,a155,a156,a157,a158,a159,a15a,a15b])*
       (poly X [b150,b151,b152,b153,b154,b155,b156,b157,b158,b159,b15a,b15b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r160,r161,r162,r163,r164,r165,r166,r167,r168,r169,r16a,r16b])
      ((poly X [a160,a161,a162,a163,a164,a165,a166,a167,a168,a169,a16a,a16b])*
       (poly X [b160,b161,b162,b163,b164,b165,b166,b167,b168,b169,b16a,b16b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r170,r171,r172,r173,r174,r175,r176,r177,r178,r179,r17a,r17b])
      ((poly X [a170,a171,a172,a173,a174,a175,a176,a177,a178,a179,a17a,a17b])*
       (poly X [b170,b171,b172,b173,b174,b175,b176,b177,b178,b179,b17a,b17b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r180,r181,r182,r183,r184,r185,r186,r187,r188,r189,r18a,r18b])
      ((poly X [a180,a181,a182,a183,a184,a185,a186,a187,a188,a189,a18a,a18b])*
       (poly X [b180,b181,b182,b183,b184,b185,b186,b187,b188,b189,b18a,b18b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r190,r191,r192,r193,r194,r195,r196,r197,r198,r199,r19a,r19b])
      ((poly X [a190,a191,a192,a193,a194,a195,a196,a197,a198,a199,a19a,a19b])*
       (poly X [b190,b191,b192,b193,b194,b195,b196,b197,b198,b199,b19a,b19b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r1a0,r1a1,r1a2,r1a3,r1a4,r1a5,r1a6,r1a7,r1a8,r1a9,r1aa,r1ab])
      ((poly X [a1a0,a1a1,a1a2,a1a3,a1a4,a1a5,a1a6,a1a7,a1a8,a1a9,a1aa,a1ab])*
       (poly X [b1a0,b1a1,b1a2,b1a3,b1a4,b1a5,b1a6,b1a7,b1a8,b1a9,b1aa,b1ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r1b0,r1b1,r1b2,r1b3,r1b4,r1b5,r1b6,r1b7,r1b8,r1b9,r1ba,r1bb])
      ((poly X [a1b0,a1b1,a1b2,a1b3,a1b4,a1b5,a1b6,a1b7,a1b8,a1b9,a1ba,a1bb])*
       (poly X [b1b0,b1b1,b1b2,b1b3,b1b4,b1b5,b1b6,b1b7,b1b8,b1b9,b1ba,b1bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r1c0,r1c1,r1c2,r1c3,r1c4,r1c5,r1c6,r1c7,r1c8,r1c9,r1ca,r1cb])
      ((poly X [a1c0,a1c1,a1c2,a1c3,a1c4,a1c5,a1c6,a1c7,a1c8,a1c9,a1ca,a1cb])*
       (poly X [b1c0,b1c1,b1c2,b1c3,b1c4,b1c5,b1c6,b1c7,b1c8,b1c9,b1ca,b1cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r1d0,r1d1,r1d2,r1d3,r1d4,r1d5,r1d6,r1d7,r1d8,r1d9,r1da,r1db])
      ((poly X [a1d0,a1d1,a1d2,a1d3,a1d4,a1d5,a1d6,a1d7,a1d8,a1d9,a1da,a1db])*
       (poly X [b1d0,b1d1,b1d2,b1d3,b1d4,b1d5,b1d6,b1d7,b1d8,b1d9,b1da,b1db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r1e0,r1e1,r1e2,r1e3,r1e4,r1e5,r1e6,r1e7,r1e8,r1e9,r1ea,r1eb])
      ((poly X [a1e0,a1e1,a1e2,a1e3,a1e4,a1e5,a1e6,a1e7,a1e8,a1e9,a1ea,a1eb])*
       (poly X [b1e0,b1e1,b1e2,b1e3,b1e4,b1e5,b1e6,b1e7,b1e8,b1e9,b1ea,b1eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r1f0,r1f1,r1f2,r1f3,r1f4,r1f5,r1f6,r1f7,r1f8,r1f9,r1fa,r1fb])
      ((poly X [a1f0,a1f1,a1f2,a1f3,a1f4,a1f5,a1f6,a1f7,a1f8,a1f9,a1fa,a1fb])*
       (poly X [b1f0,b1f1,b1f2,b1f3,b1f4,b1f5,b1f6,b1f7,b1f8,b1f9,b1fa,b1fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r200,r201,r202,r203,r204,r205,r206,r207,r208,r209,r20a,r20b])
      ((poly X [a200,a201,a202,a203,a204,a205,a206,a207,a208,a209,a20a,a20b])*
       (poly X [b200,b201,b202,b203,b204,b205,b206,b207,b208,b209,b20a,b20b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r210,r211,r212,r213,r214,r215,r216,r217,r218,r219,r21a,r21b])
      ((poly X [a210,a211,a212,a213,a214,a215,a216,a217,a218,a219,a21a,a21b])*
       (poly X [b210,b211,b212,b213,b214,b215,b216,b217,b218,b219,b21a,b21b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r220,r221,r222,r223,r224,r225,r226,r227,r228,r229,r22a,r22b])
      ((poly X [a220,a221,a222,a223,a224,a225,a226,a227,a228,a229,a22a,a22b])*
       (poly X [b220,b221,b222,b223,b224,b225,b226,b227,b228,b229,b22a,b22b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r230,r231,r232,r233,r234,r235,r236,r237,r238,r239,r23a,r23b])
      ((poly X [a230,a231,a232,a233,a234,a235,a236,a237,a238,a239,a23a,a23b])*
       (poly X [b230,b231,b232,b233,b234,b235,b236,b237,b238,b239,b23a,b23b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r240,r241,r242,r243,r244,r245,r246,r247,r248,r249,r24a,r24b])
      ((poly X [a240,a241,a242,a243,a244,a245,a246,a247,a248,a249,a24a,a24b])*
       (poly X [b240,b241,b242,b243,b244,b245,b246,b247,b248,b249,b24a,b24b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r250,r251,r252,r253,r254,r255,r256,r257,r258,r259,r25a,r25b])
      ((poly X [a250,a251,a252,a253,a254,a255,a256,a257,a258,a259,a25a,a25b])*
       (poly X [b250,b251,b252,b253,b254,b255,b256,b257,b258,b259,b25a,b25b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r260,r261,r262,r263,r264,r265,r266,r267,r268,r269,r26a,r26b])
      ((poly X [a260,a261,a262,a263,a264,a265,a266,a267,a268,a269,a26a,a26b])*
       (poly X [b260,b261,b262,b263,b264,b265,b266,b267,b268,b269,b26a,b26b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r270,r271,r272,r273,r274,r275,r276,r277,r278,r279,r27a,r27b])
      ((poly X [a270,a271,a272,a273,a274,a275,a276,a277,a278,a279,a27a,a27b])*
       (poly X [b270,b271,b272,b273,b274,b275,b276,b277,b278,b279,b27a,b27b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r280,r281,r282,r283,r284,r285,r286,r287,r288,r289,r28a,r28b])
      ((poly X [a280,a281,a282,a283,a284,a285,a286,a287,a288,a289,a28a,a28b])*
       (poly X [b280,b281,b282,b283,b284,b285,b286,b287,b288,b289,b28a,b28b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r290,r291,r292,r293,r294,r295,r296,r297,r298,r299,r29a,r29b])
      ((poly X [a290,a291,a292,a293,a294,a295,a296,a297,a298,a299,a29a,a29b])*
       (poly X [b290,b291,b292,b293,b294,b295,b296,b297,b298,b299,b29a,b29b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r2a0,r2a1,r2a2,r2a3,r2a4,r2a5,r2a6,r2a7,r2a8,r2a9,r2aa,r2ab])
      ((poly X [a2a0,a2a1,a2a2,a2a3,a2a4,a2a5,a2a6,a2a7,a2a8,a2a9,a2aa,a2ab])*
       (poly X [b2a0,b2a1,b2a2,b2a3,b2a4,b2a5,b2a6,b2a7,b2a8,b2a9,b2aa,b2ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r2b0,r2b1,r2b2,r2b3,r2b4,r2b5,r2b6,r2b7,r2b8,r2b9,r2ba,r2bb])
      ((poly X [a2b0,a2b1,a2b2,a2b3,a2b4,a2b5,a2b6,a2b7,a2b8,a2b9,a2ba,a2bb])*
       (poly X [b2b0,b2b1,b2b2,b2b3,b2b4,b2b5,b2b6,b2b7,b2b8,b2b9,b2ba,b2bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r2c0,r2c1,r2c2,r2c3,r2c4,r2c5,r2c6,r2c7,r2c8,r2c9,r2ca,r2cb])
      ((poly X [a2c0,a2c1,a2c2,a2c3,a2c4,a2c5,a2c6,a2c7,a2c8,a2c9,a2ca,a2cb])*
       (poly X [b2c0,b2c1,b2c2,b2c3,b2c4,b2c5,b2c6,b2c7,b2c8,b2c9,b2ca,b2cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r2d0,r2d1,r2d2,r2d3,r2d4,r2d5,r2d6,r2d7,r2d8,r2d9,r2da,r2db])
      ((poly X [a2d0,a2d1,a2d2,a2d3,a2d4,a2d5,a2d6,a2d7,a2d8,a2d9,a2da,a2db])*
       (poly X [b2d0,b2d1,b2d2,b2d3,b2d4,b2d5,b2d6,b2d7,b2d8,b2d9,b2da,b2db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r2e0,r2e1,r2e2,r2e3,r2e4,r2e5,r2e6,r2e7,r2e8,r2e9,r2ea,r2eb])
      ((poly X [a2e0,a2e1,a2e2,a2e3,a2e4,a2e5,a2e6,a2e7,a2e8,a2e9,a2ea,a2eb])*
       (poly X [b2e0,b2e1,b2e2,b2e3,b2e4,b2e5,b2e6,b2e7,b2e8,b2e9,b2ea,b2eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r2f0,r2f1,r2f2,r2f3,r2f4,r2f5,r2f6,r2f7,r2f8,r2f9,r2fa,r2fb])
      ((poly X [a2f0,a2f1,a2f2,a2f3,a2f4,a2f5,a2f6,a2f7,a2f8,a2f9,a2fa,a2fb])*
       (poly X [b2f0,b2f1,b2f2,b2f3,b2f4,b2f5,b2f6,b2f7,b2f8,b2f9,b2fa,b2fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r300,r301,r302,r303,r304,r305,r306,r307,r308,r309,r30a,r30b])
      ((poly X [a300,a301,a302,a303,a304,a305,a306,a307,a308,a309,a30a,a30b])*
       (poly X [b300,b301,b302,b303,b304,b305,b306,b307,b308,b309,b30a,b30b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r310,r311,r312,r313,r314,r315,r316,r317,r318,r319,r31a,r31b])
      ((poly X [a310,a311,a312,a313,a314,a315,a316,a317,a318,a319,a31a,a31b])*
       (poly X [b310,b311,b312,b313,b314,b315,b316,b317,b318,b319,b31a,b31b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r320,r321,r322,r323,r324,r325,r326,r327,r328,r329,r32a,r32b])
      ((poly X [a320,a321,a322,a323,a324,a325,a326,a327,a328,a329,a32a,a32b])*
       (poly X [b320,b321,b322,b323,b324,b325,b326,b327,b328,b329,b32a,b32b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r330,r331,r332,r333,r334,r335,r336,r337,r338,r339,r33a,r33b])
      ((poly X [a330,a331,a332,a333,a334,a335,a336,a337,a338,a339,a33a,a33b])*
       (poly X [b330,b331,b332,b333,b334,b335,b336,b337,b338,b339,b33a,b33b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r340,r341,r342,r343,r344,r345,r346,r347,r348,r349,r34a,r34b])
      ((poly X [a340,a341,a342,a343,a344,a345,a346,a347,a348,a349,a34a,a34b])*
       (poly X [b340,b341,b342,b343,b344,b345,b346,b347,b348,b349,b34a,b34b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r350,r351,r352,r353,r354,r355,r356,r357,r358,r359,r35a,r35b])
      ((poly X [a350,a351,a352,a353,a354,a355,a356,a357,a358,a359,a35a,a35b])*
       (poly X [b350,b351,b352,b353,b354,b355,b356,b357,b358,b359,b35a,b35b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r360,r361,r362,r363,r364,r365,r366,r367,r368,r369,r36a,r36b])
      ((poly X [a360,a361,a362,a363,a364,a365,a366,a367,a368,a369,a36a,a36b])*
       (poly X [b360,b361,b362,b363,b364,b365,b366,b367,b368,b369,b36a,b36b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r370,r371,r372,r373,r374,r375,r376,r377,r378,r379,r37a,r37b])
      ((poly X [a370,a371,a372,a373,a374,a375,a376,a377,a378,a379,a37a,a37b])*
       (poly X [b370,b371,b372,b373,b374,b375,b376,b377,b378,b379,b37a,b37b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r380,r381,r382,r383,r384,r385,r386,r387,r388,r389,r38a,r38b])
      ((poly X [a380,a381,a382,a383,a384,a385,a386,a387,a388,a389,a38a,a38b])*
       (poly X [b380,b381,b382,b383,b384,b385,b386,b387,b388,b389,b38a,b38b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r390,r391,r392,r393,r394,r395,r396,r397,r398,r399,r39a,r39b])
      ((poly X [a390,a391,a392,a393,a394,a395,a396,a397,a398,a399,a39a,a39b])*
       (poly X [b390,b391,b392,b393,b394,b395,b396,b397,b398,b399,b39a,b39b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r3a0,r3a1,r3a2,r3a3,r3a4,r3a5,r3a6,r3a7,r3a8,r3a9,r3aa,r3ab])
      ((poly X [a3a0,a3a1,a3a2,a3a3,a3a4,a3a5,a3a6,a3a7,a3a8,a3a9,a3aa,a3ab])*
       (poly X [b3a0,b3a1,b3a2,b3a3,b3a4,b3a5,b3a6,b3a7,b3a8,b3a9,b3aa,b3ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r3b0,r3b1,r3b2,r3b3,r3b4,r3b5,r3b6,r3b7,r3b8,r3b9,r3ba,r3bb])
      ((poly X [a3b0,a3b1,a3b2,a3b3,a3b4,a3b5,a3b6,a3b7,a3b8,a3b9,a3ba,a3bb])*
       (poly X [b3b0,b3b1,b3b2,b3b3,b3b4,b3b5,b3b6,b3b7,b3b8,b3b9,b3ba,b3bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r3c0,r3c1,r3c2,r3c3,r3c4,r3c5,r3c6,r3c7,r3c8,r3c9,r3ca,r3cb])
      ((poly X [a3c0,a3c1,a3c2,a3c3,a3c4,a3c5,a3c6,a3c7,a3c8,a3c9,a3ca,a3cb])*
       (poly X [b3c0,b3c1,b3c2,b3c3,b3c4,b3c5,b3c6,b3c7,b3c8,b3c9,b3ca,b3cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r3d0,r3d1,r3d2,r3d3,r3d4,r3d5,r3d6,r3d7,r3d8,r3d9,r3da,r3db])
      ((poly X [a3d0,a3d1,a3d2,a3d3,a3d4,a3d5,a3d6,a3d7,a3d8,a3d9,a3da,a3db])*
       (poly X [b3d0,b3d1,b3d2,b3d3,b3d4,b3d5,b3d6,b3d7,b3d8,b3d9,b3da,b3db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r3e0,r3e1,r3e2,r3e3,r3e4,r3e5,r3e6,r3e7,r3e8,r3e9,r3ea,r3eb])
      ((poly X [a3e0,a3e1,a3e2,a3e3,a3e4,a3e5,a3e6,a3e7,a3e8,a3e9,a3ea,a3eb])*
       (poly X [b3e0,b3e1,b3e2,b3e3,b3e4,b3e5,b3e6,b3e7,b3e8,b3e9,b3ea,b3eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r3f0,r3f1,r3f2,r3f3,r3f4,r3f5,r3f6,r3f7,r3f8,r3f9,r3fa,r3fb])
      ((poly X [a3f0,a3f1,a3f2,a3f3,a3f4,a3f5,a3f6,a3f7,a3f8,a3f9,a3fa,a3fb])*
       (poly X [b3f0,b3f1,b3f2,b3f3,b3f4,b3f5,b3f6,b3f7,b3f8,b3f9,b3fa,b3fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r400,r401,r402,r403,r404,r405,r406,r407,r408,r409,r40a,r40b])
      ((poly X [a400,a401,a402,a403,a404,a405,a406,a407,a408,a409,a40a,a40b])*
       (poly X [b400,b401,b402,b403,b404,b405,b406,b407,b408,b409,b40a,b40b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r410,r411,r412,r413,r414,r415,r416,r417,r418,r419,r41a,r41b])
      ((poly X [a410,a411,a412,a413,a414,a415,a416,a417,a418,a419,a41a,a41b])*
       (poly X [b410,b411,b412,b413,b414,b415,b416,b417,b418,b419,b41a,b41b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r420,r421,r422,r423,r424,r425,r426,r427,r428,r429,r42a,r42b])
      ((poly X [a420,a421,a422,a423,a424,a425,a426,a427,a428,a429,a42a,a42b])*
       (poly X [b420,b421,b422,b423,b424,b425,b426,b427,b428,b429,b42a,b42b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r430,r431,r432,r433,r434,r435,r436,r437,r438,r439,r43a,r43b])
      ((poly X [a430,a431,a432,a433,a434,a435,a436,a437,a438,a439,a43a,a43b])*
       (poly X [b430,b431,b432,b433,b434,b435,b436,b437,b438,b439,b43a,b43b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r440,r441,r442,r443,r444,r445,r446,r447,r448,r449,r44a,r44b])
      ((poly X [a440,a441,a442,a443,a444,a445,a446,a447,a448,a449,a44a,a44b])*
       (poly X [b440,b441,b442,b443,b444,b445,b446,b447,b448,b449,b44a,b44b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r450,r451,r452,r453,r454,r455,r456,r457,r458,r459,r45a,r45b])
      ((poly X [a450,a451,a452,a453,a454,a455,a456,a457,a458,a459,a45a,a45b])*
       (poly X [b450,b451,b452,b453,b454,b455,b456,b457,b458,b459,b45a,b45b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r460,r461,r462,r463,r464,r465,r466,r467,r468,r469,r46a,r46b])
      ((poly X [a460,a461,a462,a463,a464,a465,a466,a467,a468,a469,a46a,a46b])*
       (poly X [b460,b461,b462,b463,b464,b465,b466,b467,b468,b469,b46a,b46b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r470,r471,r472,r473,r474,r475,r476,r477,r478,r479,r47a,r47b])
      ((poly X [a470,a471,a472,a473,a474,a475,a476,a477,a478,a479,a47a,a47b])*
       (poly X [b470,b471,b472,b473,b474,b475,b476,b477,b478,b479,b47a,b47b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r480,r481,r482,r483,r484,r485,r486,r487,r488,r489,r48a,r48b])
      ((poly X [a480,a481,a482,a483,a484,a485,a486,a487,a488,a489,a48a,a48b])*
       (poly X [b480,b481,b482,b483,b484,b485,b486,b487,b488,b489,b48a,b48b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r490,r491,r492,r493,r494,r495,r496,r497,r498,r499,r49a,r49b])
      ((poly X [a490,a491,a492,a493,a494,a495,a496,a497,a498,a499,a49a,a49b])*
       (poly X [b490,b491,b492,b493,b494,b495,b496,b497,b498,b499,b49a,b49b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r4a0,r4a1,r4a2,r4a3,r4a4,r4a5,r4a6,r4a7,r4a8,r4a9,r4aa,r4ab])
      ((poly X [a4a0,a4a1,a4a2,a4a3,a4a4,a4a5,a4a6,a4a7,a4a8,a4a9,a4aa,a4ab])*
       (poly X [b4a0,b4a1,b4a2,b4a3,b4a4,b4a5,b4a6,b4a7,b4a8,b4a9,b4aa,b4ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r4b0,r4b1,r4b2,r4b3,r4b4,r4b5,r4b6,r4b7,r4b8,r4b9,r4ba,r4bb])
      ((poly X [a4b0,a4b1,a4b2,a4b3,a4b4,a4b5,a4b6,a4b7,a4b8,a4b9,a4ba,a4bb])*
       (poly X [b4b0,b4b1,b4b2,b4b3,b4b4,b4b5,b4b6,b4b7,b4b8,b4b9,b4ba,b4bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r4c0,r4c1,r4c2,r4c3,r4c4,r4c5,r4c6,r4c7,r4c8,r4c9,r4ca,r4cb])
      ((poly X [a4c0,a4c1,a4c2,a4c3,a4c4,a4c5,a4c6,a4c7,a4c8,a4c9,a4ca,a4cb])*
       (poly X [b4c0,b4c1,b4c2,b4c3,b4c4,b4c5,b4c6,b4c7,b4c8,b4c9,b4ca,b4cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r4d0,r4d1,r4d2,r4d3,r4d4,r4d5,r4d6,r4d7,r4d8,r4d9,r4da,r4db])
      ((poly X [a4d0,a4d1,a4d2,a4d3,a4d4,a4d5,a4d6,a4d7,a4d8,a4d9,a4da,a4db])*
       (poly X [b4d0,b4d1,b4d2,b4d3,b4d4,b4d5,b4d6,b4d7,b4d8,b4d9,b4da,b4db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r4e0,r4e1,r4e2,r4e3,r4e4,r4e5,r4e6,r4e7,r4e8,r4e9,r4ea,r4eb])
      ((poly X [a4e0,a4e1,a4e2,a4e3,a4e4,a4e5,a4e6,a4e7,a4e8,a4e9,a4ea,a4eb])*
       (poly X [b4e0,b4e1,b4e2,b4e3,b4e4,b4e5,b4e6,b4e7,b4e8,b4e9,b4ea,b4eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r4f0,r4f1,r4f2,r4f3,r4f4,r4f5,r4f6,r4f7,r4f8,r4f9,r4fa,r4fb])
      ((poly X [a4f0,a4f1,a4f2,a4f3,a4f4,a4f5,a4f6,a4f7,a4f8,a4f9,a4fa,a4fb])*
       (poly X [b4f0,b4f1,b4f2,b4f3,b4f4,b4f5,b4f6,b4f7,b4f8,b4f9,b4fa,b4fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r500,r501,r502,r503,r504,r505,r506,r507,r508,r509,r50a,r50b])
      ((poly X [a500,a501,a502,a503,a504,a505,a506,a507,a508,a509,a50a,a50b])*
       (poly X [b500,b501,b502,b503,b504,b505,b506,b507,b508,b509,b50a,b50b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r510,r511,r512,r513,r514,r515,r516,r517,r518,r519,r51a,r51b])
      ((poly X [a510,a511,a512,a513,a514,a515,a516,a517,a518,a519,a51a,a51b])*
       (poly X [b510,b511,b512,b513,b514,b515,b516,b517,b518,b519,b51a,b51b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r520,r521,r522,r523,r524,r525,r526,r527,r528,r529,r52a,r52b])
      ((poly X [a520,a521,a522,a523,a524,a525,a526,a527,a528,a529,a52a,a52b])*
       (poly X [b520,b521,b522,b523,b524,b525,b526,b527,b528,b529,b52a,b52b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r530,r531,r532,r533,r534,r535,r536,r537,r538,r539,r53a,r53b])
      ((poly X [a530,a531,a532,a533,a534,a535,a536,a537,a538,a539,a53a,a53b])*
       (poly X [b530,b531,b532,b533,b534,b535,b536,b537,b538,b539,b53a,b53b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r540,r541,r542,r543,r544,r545,r546,r547,r548,r549,r54a,r54b])
      ((poly X [a540,a541,a542,a543,a544,a545,a546,a547,a548,a549,a54a,a54b])*
       (poly X [b540,b541,b542,b543,b544,b545,b546,b547,b548,b549,b54a,b54b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r550,r551,r552,r553,r554,r555,r556,r557,r558,r559,r55a,r55b])
      ((poly X [a550,a551,a552,a553,a554,a555,a556,a557,a558,a559,a55a,a55b])*
       (poly X [b550,b551,b552,b553,b554,b555,b556,b557,b558,b559,b55a,b55b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r560,r561,r562,r563,r564,r565,r566,r567,r568,r569,r56a,r56b])
      ((poly X [a560,a561,a562,a563,a564,a565,a566,a567,a568,a569,a56a,a56b])*
       (poly X [b560,b561,b562,b563,b564,b565,b566,b567,b568,b569,b56a,b56b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r570,r571,r572,r573,r574,r575,r576,r577,r578,r579,r57a,r57b])
      ((poly X [a570,a571,a572,a573,a574,a575,a576,a577,a578,a579,a57a,a57b])*
       (poly X [b570,b571,b572,b573,b574,b575,b576,b577,b578,b579,b57a,b57b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r580,r581,r582,r583,r584,r585,r586,r587,r588,r589,r58a,r58b])
      ((poly X [a580,a581,a582,a583,a584,a585,a586,a587,a588,a589,a58a,a58b])*
       (poly X [b580,b581,b582,b583,b584,b585,b586,b587,b588,b589,b58a,b58b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r590,r591,r592,r593,r594,r595,r596,r597,r598,r599,r59a,r59b])
      ((poly X [a590,a591,a592,a593,a594,a595,a596,a597,a598,a599,a59a,a59b])*
       (poly X [b590,b591,b592,b593,b594,b595,b596,b597,b598,b599,b59a,b59b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r5a0,r5a1,r5a2,r5a3,r5a4,r5a5,r5a6,r5a7,r5a8,r5a9,r5aa,r5ab])
      ((poly X [a5a0,a5a1,a5a2,a5a3,a5a4,a5a5,a5a6,a5a7,a5a8,a5a9,a5aa,a5ab])*
       (poly X [b5a0,b5a1,b5a2,b5a3,b5a4,b5a5,b5a6,b5a7,b5a8,b5a9,b5aa,b5ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r5b0,r5b1,r5b2,r5b3,r5b4,r5b5,r5b6,r5b7,r5b8,r5b9,r5ba,r5bb])
      ((poly X [a5b0,a5b1,a5b2,a5b3,a5b4,a5b5,a5b6,a5b7,a5b8,a5b9,a5ba,a5bb])*
       (poly X [b5b0,b5b1,b5b2,b5b3,b5b4,b5b5,b5b6,b5b7,b5b8,b5b9,b5ba,b5bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r5c0,r5c1,r5c2,r5c3,r5c4,r5c5,r5c6,r5c7,r5c8,r5c9,r5ca,r5cb])
      ((poly X [a5c0,a5c1,a5c2,a5c3,a5c4,a5c5,a5c6,a5c7,a5c8,a5c9,a5ca,a5cb])*
       (poly X [b5c0,b5c1,b5c2,b5c3,b5c4,b5c5,b5c6,b5c7,b5c8,b5c9,b5ca,b5cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r5d0,r5d1,r5d2,r5d3,r5d4,r5d5,r5d6,r5d7,r5d8,r5d9,r5da,r5db])
      ((poly X [a5d0,a5d1,a5d2,a5d3,a5d4,a5d5,a5d6,a5d7,a5d8,a5d9,a5da,a5db])*
       (poly X [b5d0,b5d1,b5d2,b5d3,b5d4,b5d5,b5d6,b5d7,b5d8,b5d9,b5da,b5db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r5e0,r5e1,r5e2,r5e3,r5e4,r5e5,r5e6,r5e7,r5e8,r5e9,r5ea,r5eb])
      ((poly X [a5e0,a5e1,a5e2,a5e3,a5e4,a5e5,a5e6,a5e7,a5e8,a5e9,a5ea,a5eb])*
       (poly X [b5e0,b5e1,b5e2,b5e3,b5e4,b5e5,b5e6,b5e7,b5e8,b5e9,b5ea,b5eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r5f0,r5f1,r5f2,r5f3,r5f4,r5f5,r5f6,r5f7,r5f8,r5f9,r5fa,r5fb])
      ((poly X [a5f0,a5f1,a5f2,a5f3,a5f4,a5f5,a5f6,a5f7,a5f8,a5f9,a5fa,a5fb])*
       (poly X [b5f0,b5f1,b5f2,b5f3,b5f4,b5f5,b5f6,b5f7,b5f8,b5f9,b5fa,b5fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r600,r601,r602,r603,r604,r605,r606,r607,r608,r609,r60a,r60b])
      ((poly X [a600,a601,a602,a603,a604,a605,a606,a607,a608,a609,a60a,a60b])*
       (poly X [b600,b601,b602,b603,b604,b605,b606,b607,b608,b609,b60a,b60b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r610,r611,r612,r613,r614,r615,r616,r617,r618,r619,r61a,r61b])
      ((poly X [a610,a611,a612,a613,a614,a615,a616,a617,a618,a619,a61a,a61b])*
       (poly X [b610,b611,b612,b613,b614,b615,b616,b617,b618,b619,b61a,b61b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r620,r621,r622,r623,r624,r625,r626,r627,r628,r629,r62a,r62b])
      ((poly X [a620,a621,a622,a623,a624,a625,a626,a627,a628,a629,a62a,a62b])*
       (poly X [b620,b621,b622,b623,b624,b625,b626,b627,b628,b629,b62a,b62b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r630,r631,r632,r633,r634,r635,r636,r637,r638,r639,r63a,r63b])
      ((poly X [a630,a631,a632,a633,a634,a635,a636,a637,a638,a639,a63a,a63b])*
       (poly X [b630,b631,b632,b633,b634,b635,b636,b637,b638,b639,b63a,b63b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r640,r641,r642,r643,r644,r645,r646,r647,r648,r649,r64a,r64b])
      ((poly X [a640,a641,a642,a643,a644,a645,a646,a647,a648,a649,a64a,a64b])*
       (poly X [b640,b641,b642,b643,b644,b645,b646,b647,b648,b649,b64a,b64b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r650,r651,r652,r653,r654,r655,r656,r657,r658,r659,r65a,r65b])
      ((poly X [a650,a651,a652,a653,a654,a655,a656,a657,a658,a659,a65a,a65b])*
       (poly X [b650,b651,b652,b653,b654,b655,b656,b657,b658,b659,b65a,b65b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r660,r661,r662,r663,r664,r665,r666,r667,r668,r669,r66a,r66b])
      ((poly X [a660,a661,a662,a663,a664,a665,a666,a667,a668,a669,a66a,a66b])*
       (poly X [b660,b661,b662,b663,b664,b665,b666,b667,b668,b669,b66a,b66b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r670,r671,r672,r673,r674,r675,r676,r677,r678,r679,r67a,r67b])
      ((poly X [a670,a671,a672,a673,a674,a675,a676,a677,a678,a679,a67a,a67b])*
       (poly X [b670,b671,b672,b673,b674,b675,b676,b677,b678,b679,b67a,b67b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r680,r681,r682,r683,r684,r685,r686,r687,r688,r689,r68a,r68b])
      ((poly X [a680,a681,a682,a683,a684,a685,a686,a687,a688,a689,a68a,a68b])*
       (poly X [b680,b681,b682,b683,b684,b685,b686,b687,b688,b689,b68a,b68b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r690,r691,r692,r693,r694,r695,r696,r697,r698,r699,r69a,r69b])
      ((poly X [a690,a691,a692,a693,a694,a695,a696,a697,a698,a699,a69a,a69b])*
       (poly X [b690,b691,b692,b693,b694,b695,b696,b697,b698,b699,b69a,b69b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r6a0,r6a1,r6a2,r6a3,r6a4,r6a5,r6a6,r6a7,r6a8,r6a9,r6aa,r6ab])
      ((poly X [a6a0,a6a1,a6a2,a6a3,a6a4,a6a5,a6a6,a6a7,a6a8,a6a9,a6aa,a6ab])*
       (poly X [b6a0,b6a1,b6a2,b6a3,b6a4,b6a5,b6a6,b6a7,b6a8,b6a9,b6aa,b6ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r6b0,r6b1,r6b2,r6b3,r6b4,r6b5,r6b6,r6b7,r6b8,r6b9,r6ba,r6bb])
      ((poly X [a6b0,a6b1,a6b2,a6b3,a6b4,a6b5,a6b6,a6b7,a6b8,a6b9,a6ba,a6bb])*
       (poly X [b6b0,b6b1,b6b2,b6b3,b6b4,b6b5,b6b6,b6b7,b6b8,b6b9,b6ba,b6bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r6c0,r6c1,r6c2,r6c3,r6c4,r6c5,r6c6,r6c7,r6c8,r6c9,r6ca,r6cb])
      ((poly X [a6c0,a6c1,a6c2,a6c3,a6c4,a6c5,a6c6,a6c7,a6c8,a6c9,a6ca,a6cb])*
       (poly X [b6c0,b6c1,b6c2,b6c3,b6c4,b6c5,b6c6,b6c7,b6c8,b6c9,b6ca,b6cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r6d0,r6d1,r6d2,r6d3,r6d4,r6d5,r6d6,r6d7,r6d8,r6d9,r6da,r6db])
      ((poly X [a6d0,a6d1,a6d2,a6d3,a6d4,a6d5,a6d6,a6d7,a6d8,a6d9,a6da,a6db])*
       (poly X [b6d0,b6d1,b6d2,b6d3,b6d4,b6d5,b6d6,b6d7,b6d8,b6d9,b6da,b6db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r6e0,r6e1,r6e2,r6e3,r6e4,r6e5,r6e6,r6e7,r6e8,r6e9,r6ea,r6eb])
      ((poly X [a6e0,a6e1,a6e2,a6e3,a6e4,a6e5,a6e6,a6e7,a6e8,a6e9,a6ea,a6eb])*
       (poly X [b6e0,b6e1,b6e2,b6e3,b6e4,b6e5,b6e6,b6e7,b6e8,b6e9,b6ea,b6eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r6f0,r6f1,r6f2,r6f3,r6f4,r6f5,r6f6,r6f7,r6f8,r6f9,r6fa,r6fb])
      ((poly X [a6f0,a6f1,a6f2,a6f3,a6f4,a6f5,a6f6,a6f7,a6f8,a6f9,a6fa,a6fb])*
       (poly X [b6f0,b6f1,b6f2,b6f3,b6f4,b6f5,b6f6,b6f7,b6f8,b6f9,b6fa,b6fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r700,r701,r702,r703,r704,r705,r706,r707,r708,r709,r70a,r70b])
      ((poly X [a700,a701,a702,a703,a704,a705,a706,a707,a708,a709,a70a,a70b])*
       (poly X [b700,b701,b702,b703,b704,b705,b706,b707,b708,b709,b70a,b70b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r710,r711,r712,r713,r714,r715,r716,r717,r718,r719,r71a,r71b])
      ((poly X [a710,a711,a712,a713,a714,a715,a716,a717,a718,a719,a71a,a71b])*
       (poly X [b710,b711,b712,b713,b714,b715,b716,b717,b718,b719,b71a,b71b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r720,r721,r722,r723,r724,r725,r726,r727,r728,r729,r72a,r72b])
      ((poly X [a720,a721,a722,a723,a724,a725,a726,a727,a728,a729,a72a,a72b])*
       (poly X [b720,b721,b722,b723,b724,b725,b726,b727,b728,b729,b72a,b72b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r730,r731,r732,r733,r734,r735,r736,r737,r738,r739,r73a,r73b])
      ((poly X [a730,a731,a732,a733,a734,a735,a736,a737,a738,a739,a73a,a73b])*
       (poly X [b730,b731,b732,b733,b734,b735,b736,b737,b738,b739,b73a,b73b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r740,r741,r742,r743,r744,r745,r746,r747,r748,r749,r74a,r74b])
      ((poly X [a740,a741,a742,a743,a744,a745,a746,a747,a748,a749,a74a,a74b])*
       (poly X [b740,b741,b742,b743,b744,b745,b746,b747,b748,b749,b74a,b74b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r750,r751,r752,r753,r754,r755,r756,r757,r758,r759,r75a,r75b])
      ((poly X [a750,a751,a752,a753,a754,a755,a756,a757,a758,a759,a75a,a75b])*
       (poly X [b750,b751,b752,b753,b754,b755,b756,b757,b758,b759,b75a,b75b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r760,r761,r762,r763,r764,r765,r766,r767,r768,r769,r76a,r76b])
      ((poly X [a760,a761,a762,a763,a764,a765,a766,a767,a768,a769,a76a,a76b])*
       (poly X [b760,b761,b762,b763,b764,b765,b766,b767,b768,b769,b76a,b76b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r770,r771,r772,r773,r774,r775,r776,r777,r778,r779,r77a,r77b])
      ((poly X [a770,a771,a772,a773,a774,a775,a776,a777,a778,a779,a77a,a77b])*
       (poly X [b770,b771,b772,b773,b774,b775,b776,b777,b778,b779,b77a,b77b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r780,r781,r782,r783,r784,r785,r786,r787,r788,r789,r78a,r78b])
      ((poly X [a780,a781,a782,a783,a784,a785,a786,a787,a788,a789,a78a,a78b])*
       (poly X [b780,b781,b782,b783,b784,b785,b786,b787,b788,b789,b78a,b78b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r790,r791,r792,r793,r794,r795,r796,r797,r798,r799,r79a,r79b])
      ((poly X [a790,a791,a792,a793,a794,a795,a796,a797,a798,a799,a79a,a79b])*
       (poly X [b790,b791,b792,b793,b794,b795,b796,b797,b798,b799,b79a,b79b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r7a0,r7a1,r7a2,r7a3,r7a4,r7a5,r7a6,r7a7,r7a8,r7a9,r7aa,r7ab])
      ((poly X [a7a0,a7a1,a7a2,a7a3,a7a4,a7a5,a7a6,a7a7,a7a8,a7a9,a7aa,a7ab])*
       (poly X [b7a0,b7a1,b7a2,b7a3,b7a4,b7a5,b7a6,b7a7,b7a8,b7a9,b7aa,b7ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r7b0,r7b1,r7b2,r7b3,r7b4,r7b5,r7b6,r7b7,r7b8,r7b9,r7ba,r7bb])
      ((poly X [a7b0,a7b1,a7b2,a7b3,a7b4,a7b5,a7b6,a7b7,a7b8,a7b9,a7ba,a7bb])*
       (poly X [b7b0,b7b1,b7b2,b7b3,b7b4,b7b5,b7b6,b7b7,b7b8,b7b9,b7ba,b7bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r7c0,r7c1,r7c2,r7c3,r7c4,r7c5,r7c6,r7c7,r7c8,r7c9,r7ca,r7cb])
      ((poly X [a7c0,a7c1,a7c2,a7c3,a7c4,a7c5,a7c6,a7c7,a7c8,a7c9,a7ca,a7cb])*
       (poly X [b7c0,b7c1,b7c2,b7c3,b7c4,b7c5,b7c6,b7c7,b7c8,b7c9,b7ca,b7cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r7d0,r7d1,r7d2,r7d3,r7d4,r7d5,r7d6,r7d7,r7d8,r7d9,r7da,r7db])
      ((poly X [a7d0,a7d1,a7d2,a7d3,a7d4,a7d5,a7d6,a7d7,a7d8,a7d9,a7da,a7db])*
       (poly X [b7d0,b7d1,b7d2,b7d3,b7d4,b7d5,b7d6,b7d7,b7d8,b7d9,b7da,b7db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r7e0,r7e1,r7e2,r7e3,r7e4,r7e5,r7e6,r7e7,r7e8,r7e9,r7ea,r7eb])
      ((poly X [a7e0,a7e1,a7e2,a7e3,a7e4,a7e5,a7e6,a7e7,a7e8,a7e9,a7ea,a7eb])*
       (poly X [b7e0,b7e1,b7e2,b7e3,b7e4,b7e5,b7e6,b7e7,b7e8,b7e9,b7ea,b7eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r7f0,r7f1,r7f2,r7f3,r7f4,r7f5,r7f6,r7f7,r7f8,r7f9,r7fa,r7fb])
      ((poly X [a7f0,a7f1,a7f2,a7f3,a7f4,a7f5,a7f6,a7f7,a7f8,a7f9,a7fa,a7fb])*
       (poly X [b7f0,b7f1,b7f2,b7f3,b7f4,b7f5,b7f6,b7f7,b7f8,b7f9,b7fa,b7fb]))
      [2, X**12 + X**3 + 1]
  &&
  true
}

