(* quine: cv.exe -v -isafety -slicing -jobs 32 vec256_mul_asm.vcl
Parsing CryptoLine file:                    [OK]            0.6878 seconds
Checking well-formedness:                   [OK]            0.2848 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.1905 seconds
Normalizing specification:                  [OK]            0.2849 seconds
Rewriting assignments:                      [OK]            0.1471 seconds
Verifying program safety:                   [OK]            822.4328 seconds
Verifying range specification:              [OK]            0.0406 seconds
Rewriting value-preserved casting:          [OK]            0.0356 seconds
Verifying algebraic specification:          [OK]            42.6115 seconds
Procedure verification:                     [OK]            865.8374 seconds

Summary
-------
Verification result:                        [OK]            866.8181 seconds

*)
(* quine: cv.exe -v -isafety -abs_interp -slicing -jobs 32 vec256_mul_asm.vcl
Parsing CryptoLine file:                    [OK]            0.6955 seconds
Checking well-formedness:                   [OK]            0.2866 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.1944 seconds
Normalizing specification:                  [OK]            0.3037 seconds
Rewriting assignments:                      [OK]            0.1549 seconds
Verifying program safety:                   [OK]            6181.3421 seconds
Verifying range specification:              [OK]            14152.4223 seconds
Rewriting value-preserved casting:          [OK]            0.1165 seconds
Verifying algebraic specification:          [OK]            212.6033 seconds
Procedure verification:                     [OK]            20547.2318 seconds

Summary
-------
Verification result:                        [OK]            20548.2222 seconds
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
bit a7f6,bit a7f7,bit a7f8,bit a7f9,bit a7fa,bit a7fb,
bit a800,bit a801,bit a802,bit a803,bit a804,bit a805,
bit a806,bit a807,bit a808,bit a809,bit a80a,bit a80b,
bit a810,bit a811,bit a812,bit a813,bit a814,bit a815,
bit a816,bit a817,bit a818,bit a819,bit a81a,bit a81b,
bit a820,bit a821,bit a822,bit a823,bit a824,bit a825,
bit a826,bit a827,bit a828,bit a829,bit a82a,bit a82b,
bit a830,bit a831,bit a832,bit a833,bit a834,bit a835,
bit a836,bit a837,bit a838,bit a839,bit a83a,bit a83b,
bit a840,bit a841,bit a842,bit a843,bit a844,bit a845,
bit a846,bit a847,bit a848,bit a849,bit a84a,bit a84b,
bit a850,bit a851,bit a852,bit a853,bit a854,bit a855,
bit a856,bit a857,bit a858,bit a859,bit a85a,bit a85b,
bit a860,bit a861,bit a862,bit a863,bit a864,bit a865,
bit a866,bit a867,bit a868,bit a869,bit a86a,bit a86b,
bit a870,bit a871,bit a872,bit a873,bit a874,bit a875,
bit a876,bit a877,bit a878,bit a879,bit a87a,bit a87b,
bit a880,bit a881,bit a882,bit a883,bit a884,bit a885,
bit a886,bit a887,bit a888,bit a889,bit a88a,bit a88b,
bit a890,bit a891,bit a892,bit a893,bit a894,bit a895,
bit a896,bit a897,bit a898,bit a899,bit a89a,bit a89b,
bit a8a0,bit a8a1,bit a8a2,bit a8a3,bit a8a4,bit a8a5,
bit a8a6,bit a8a7,bit a8a8,bit a8a9,bit a8aa,bit a8ab,
bit a8b0,bit a8b1,bit a8b2,bit a8b3,bit a8b4,bit a8b5,
bit a8b6,bit a8b7,bit a8b8,bit a8b9,bit a8ba,bit a8bb,
bit a8c0,bit a8c1,bit a8c2,bit a8c3,bit a8c4,bit a8c5,
bit a8c6,bit a8c7,bit a8c8,bit a8c9,bit a8ca,bit a8cb,
bit a8d0,bit a8d1,bit a8d2,bit a8d3,bit a8d4,bit a8d5,
bit a8d6,bit a8d7,bit a8d8,bit a8d9,bit a8da,bit a8db,
bit a8e0,bit a8e1,bit a8e2,bit a8e3,bit a8e4,bit a8e5,
bit a8e6,bit a8e7,bit a8e8,bit a8e9,bit a8ea,bit a8eb,
bit a8f0,bit a8f1,bit a8f2,bit a8f3,bit a8f4,bit a8f5,
bit a8f6,bit a8f7,bit a8f8,bit a8f9,bit a8fa,bit a8fb,
bit a900,bit a901,bit a902,bit a903,bit a904,bit a905,
bit a906,bit a907,bit a908,bit a909,bit a90a,bit a90b,
bit a910,bit a911,bit a912,bit a913,bit a914,bit a915,
bit a916,bit a917,bit a918,bit a919,bit a91a,bit a91b,
bit a920,bit a921,bit a922,bit a923,bit a924,bit a925,
bit a926,bit a927,bit a928,bit a929,bit a92a,bit a92b,
bit a930,bit a931,bit a932,bit a933,bit a934,bit a935,
bit a936,bit a937,bit a938,bit a939,bit a93a,bit a93b,
bit a940,bit a941,bit a942,bit a943,bit a944,bit a945,
bit a946,bit a947,bit a948,bit a949,bit a94a,bit a94b,
bit a950,bit a951,bit a952,bit a953,bit a954,bit a955,
bit a956,bit a957,bit a958,bit a959,bit a95a,bit a95b,
bit a960,bit a961,bit a962,bit a963,bit a964,bit a965,
bit a966,bit a967,bit a968,bit a969,bit a96a,bit a96b,
bit a970,bit a971,bit a972,bit a973,bit a974,bit a975,
bit a976,bit a977,bit a978,bit a979,bit a97a,bit a97b,
bit a980,bit a981,bit a982,bit a983,bit a984,bit a985,
bit a986,bit a987,bit a988,bit a989,bit a98a,bit a98b,
bit a990,bit a991,bit a992,bit a993,bit a994,bit a995,
bit a996,bit a997,bit a998,bit a999,bit a99a,bit a99b,
bit a9a0,bit a9a1,bit a9a2,bit a9a3,bit a9a4,bit a9a5,
bit a9a6,bit a9a7,bit a9a8,bit a9a9,bit a9aa,bit a9ab,
bit a9b0,bit a9b1,bit a9b2,bit a9b3,bit a9b4,bit a9b5,
bit a9b6,bit a9b7,bit a9b8,bit a9b9,bit a9ba,bit a9bb,
bit a9c0,bit a9c1,bit a9c2,bit a9c3,bit a9c4,bit a9c5,
bit a9c6,bit a9c7,bit a9c8,bit a9c9,bit a9ca,bit a9cb,
bit a9d0,bit a9d1,bit a9d2,bit a9d3,bit a9d4,bit a9d5,
bit a9d6,bit a9d7,bit a9d8,bit a9d9,bit a9da,bit a9db,
bit a9e0,bit a9e1,bit a9e2,bit a9e3,bit a9e4,bit a9e5,
bit a9e6,bit a9e7,bit a9e8,bit a9e9,bit a9ea,bit a9eb,
bit a9f0,bit a9f1,bit a9f2,bit a9f3,bit a9f4,bit a9f5,
bit a9f6,bit a9f7,bit a9f8,bit a9f9,bit a9fa,bit a9fb,
bit aa00,bit aa01,bit aa02,bit aa03,bit aa04,bit aa05,
bit aa06,bit aa07,bit aa08,bit aa09,bit aa0a,bit aa0b,
bit aa10,bit aa11,bit aa12,bit aa13,bit aa14,bit aa15,
bit aa16,bit aa17,bit aa18,bit aa19,bit aa1a,bit aa1b,
bit aa20,bit aa21,bit aa22,bit aa23,bit aa24,bit aa25,
bit aa26,bit aa27,bit aa28,bit aa29,bit aa2a,bit aa2b,
bit aa30,bit aa31,bit aa32,bit aa33,bit aa34,bit aa35,
bit aa36,bit aa37,bit aa38,bit aa39,bit aa3a,bit aa3b,
bit aa40,bit aa41,bit aa42,bit aa43,bit aa44,bit aa45,
bit aa46,bit aa47,bit aa48,bit aa49,bit aa4a,bit aa4b,
bit aa50,bit aa51,bit aa52,bit aa53,bit aa54,bit aa55,
bit aa56,bit aa57,bit aa58,bit aa59,bit aa5a,bit aa5b,
bit aa60,bit aa61,bit aa62,bit aa63,bit aa64,bit aa65,
bit aa66,bit aa67,bit aa68,bit aa69,bit aa6a,bit aa6b,
bit aa70,bit aa71,bit aa72,bit aa73,bit aa74,bit aa75,
bit aa76,bit aa77,bit aa78,bit aa79,bit aa7a,bit aa7b,
bit aa80,bit aa81,bit aa82,bit aa83,bit aa84,bit aa85,
bit aa86,bit aa87,bit aa88,bit aa89,bit aa8a,bit aa8b,
bit aa90,bit aa91,bit aa92,bit aa93,bit aa94,bit aa95,
bit aa96,bit aa97,bit aa98,bit aa99,bit aa9a,bit aa9b,
bit aaa0,bit aaa1,bit aaa2,bit aaa3,bit aaa4,bit aaa5,
bit aaa6,bit aaa7,bit aaa8,bit aaa9,bit aaaa,bit aaab,
bit aab0,bit aab1,bit aab2,bit aab3,bit aab4,bit aab5,
bit aab6,bit aab7,bit aab8,bit aab9,bit aaba,bit aabb,
bit aac0,bit aac1,bit aac2,bit aac3,bit aac4,bit aac5,
bit aac6,bit aac7,bit aac8,bit aac9,bit aaca,bit aacb,
bit aad0,bit aad1,bit aad2,bit aad3,bit aad4,bit aad5,
bit aad6,bit aad7,bit aad8,bit aad9,bit aada,bit aadb,
bit aae0,bit aae1,bit aae2,bit aae3,bit aae4,bit aae5,
bit aae6,bit aae7,bit aae8,bit aae9,bit aaea,bit aaeb,
bit aaf0,bit aaf1,bit aaf2,bit aaf3,bit aaf4,bit aaf5,
bit aaf6,bit aaf7,bit aaf8,bit aaf9,bit aafa,bit aafb,
bit ab00,bit ab01,bit ab02,bit ab03,bit ab04,bit ab05,
bit ab06,bit ab07,bit ab08,bit ab09,bit ab0a,bit ab0b,
bit ab10,bit ab11,bit ab12,bit ab13,bit ab14,bit ab15,
bit ab16,bit ab17,bit ab18,bit ab19,bit ab1a,bit ab1b,
bit ab20,bit ab21,bit ab22,bit ab23,bit ab24,bit ab25,
bit ab26,bit ab27,bit ab28,bit ab29,bit ab2a,bit ab2b,
bit ab30,bit ab31,bit ab32,bit ab33,bit ab34,bit ab35,
bit ab36,bit ab37,bit ab38,bit ab39,bit ab3a,bit ab3b,
bit ab40,bit ab41,bit ab42,bit ab43,bit ab44,bit ab45,
bit ab46,bit ab47,bit ab48,bit ab49,bit ab4a,bit ab4b,
bit ab50,bit ab51,bit ab52,bit ab53,bit ab54,bit ab55,
bit ab56,bit ab57,bit ab58,bit ab59,bit ab5a,bit ab5b,
bit ab60,bit ab61,bit ab62,bit ab63,bit ab64,bit ab65,
bit ab66,bit ab67,bit ab68,bit ab69,bit ab6a,bit ab6b,
bit ab70,bit ab71,bit ab72,bit ab73,bit ab74,bit ab75,
bit ab76,bit ab77,bit ab78,bit ab79,bit ab7a,bit ab7b,
bit ab80,bit ab81,bit ab82,bit ab83,bit ab84,bit ab85,
bit ab86,bit ab87,bit ab88,bit ab89,bit ab8a,bit ab8b,
bit ab90,bit ab91,bit ab92,bit ab93,bit ab94,bit ab95,
bit ab96,bit ab97,bit ab98,bit ab99,bit ab9a,bit ab9b,
bit aba0,bit aba1,bit aba2,bit aba3,bit aba4,bit aba5,
bit aba6,bit aba7,bit aba8,bit aba9,bit abaa,bit abab,
bit abb0,bit abb1,bit abb2,bit abb3,bit abb4,bit abb5,
bit abb6,bit abb7,bit abb8,bit abb9,bit abba,bit abbb,
bit abc0,bit abc1,bit abc2,bit abc3,bit abc4,bit abc5,
bit abc6,bit abc7,bit abc8,bit abc9,bit abca,bit abcb,
bit abd0,bit abd1,bit abd2,bit abd3,bit abd4,bit abd5,
bit abd6,bit abd7,bit abd8,bit abd9,bit abda,bit abdb,
bit abe0,bit abe1,bit abe2,bit abe3,bit abe4,bit abe5,
bit abe6,bit abe7,bit abe8,bit abe9,bit abea,bit abeb,
bit abf0,bit abf1,bit abf2,bit abf3,bit abf4,bit abf5,
bit abf6,bit abf7,bit abf8,bit abf9,bit abfa,bit abfb,
bit ac00,bit ac01,bit ac02,bit ac03,bit ac04,bit ac05,
bit ac06,bit ac07,bit ac08,bit ac09,bit ac0a,bit ac0b,
bit ac10,bit ac11,bit ac12,bit ac13,bit ac14,bit ac15,
bit ac16,bit ac17,bit ac18,bit ac19,bit ac1a,bit ac1b,
bit ac20,bit ac21,bit ac22,bit ac23,bit ac24,bit ac25,
bit ac26,bit ac27,bit ac28,bit ac29,bit ac2a,bit ac2b,
bit ac30,bit ac31,bit ac32,bit ac33,bit ac34,bit ac35,
bit ac36,bit ac37,bit ac38,bit ac39,bit ac3a,bit ac3b,
bit ac40,bit ac41,bit ac42,bit ac43,bit ac44,bit ac45,
bit ac46,bit ac47,bit ac48,bit ac49,bit ac4a,bit ac4b,
bit ac50,bit ac51,bit ac52,bit ac53,bit ac54,bit ac55,
bit ac56,bit ac57,bit ac58,bit ac59,bit ac5a,bit ac5b,
bit ac60,bit ac61,bit ac62,bit ac63,bit ac64,bit ac65,
bit ac66,bit ac67,bit ac68,bit ac69,bit ac6a,bit ac6b,
bit ac70,bit ac71,bit ac72,bit ac73,bit ac74,bit ac75,
bit ac76,bit ac77,bit ac78,bit ac79,bit ac7a,bit ac7b,
bit ac80,bit ac81,bit ac82,bit ac83,bit ac84,bit ac85,
bit ac86,bit ac87,bit ac88,bit ac89,bit ac8a,bit ac8b,
bit ac90,bit ac91,bit ac92,bit ac93,bit ac94,bit ac95,
bit ac96,bit ac97,bit ac98,bit ac99,bit ac9a,bit ac9b,
bit aca0,bit aca1,bit aca2,bit aca3,bit aca4,bit aca5,
bit aca6,bit aca7,bit aca8,bit aca9,bit acaa,bit acab,
bit acb0,bit acb1,bit acb2,bit acb3,bit acb4,bit acb5,
bit acb6,bit acb7,bit acb8,bit acb9,bit acba,bit acbb,
bit acc0,bit acc1,bit acc2,bit acc3,bit acc4,bit acc5,
bit acc6,bit acc7,bit acc8,bit acc9,bit acca,bit accb,
bit acd0,bit acd1,bit acd2,bit acd3,bit acd4,bit acd5,
bit acd6,bit acd7,bit acd8,bit acd9,bit acda,bit acdb,
bit ace0,bit ace1,bit ace2,bit ace3,bit ace4,bit ace5,
bit ace6,bit ace7,bit ace8,bit ace9,bit acea,bit aceb,
bit acf0,bit acf1,bit acf2,bit acf3,bit acf4,bit acf5,
bit acf6,bit acf7,bit acf8,bit acf9,bit acfa,bit acfb,
bit ad00,bit ad01,bit ad02,bit ad03,bit ad04,bit ad05,
bit ad06,bit ad07,bit ad08,bit ad09,bit ad0a,bit ad0b,
bit ad10,bit ad11,bit ad12,bit ad13,bit ad14,bit ad15,
bit ad16,bit ad17,bit ad18,bit ad19,bit ad1a,bit ad1b,
bit ad20,bit ad21,bit ad22,bit ad23,bit ad24,bit ad25,
bit ad26,bit ad27,bit ad28,bit ad29,bit ad2a,bit ad2b,
bit ad30,bit ad31,bit ad32,bit ad33,bit ad34,bit ad35,
bit ad36,bit ad37,bit ad38,bit ad39,bit ad3a,bit ad3b,
bit ad40,bit ad41,bit ad42,bit ad43,bit ad44,bit ad45,
bit ad46,bit ad47,bit ad48,bit ad49,bit ad4a,bit ad4b,
bit ad50,bit ad51,bit ad52,bit ad53,bit ad54,bit ad55,
bit ad56,bit ad57,bit ad58,bit ad59,bit ad5a,bit ad5b,
bit ad60,bit ad61,bit ad62,bit ad63,bit ad64,bit ad65,
bit ad66,bit ad67,bit ad68,bit ad69,bit ad6a,bit ad6b,
bit ad70,bit ad71,bit ad72,bit ad73,bit ad74,bit ad75,
bit ad76,bit ad77,bit ad78,bit ad79,bit ad7a,bit ad7b,
bit ad80,bit ad81,bit ad82,bit ad83,bit ad84,bit ad85,
bit ad86,bit ad87,bit ad88,bit ad89,bit ad8a,bit ad8b,
bit ad90,bit ad91,bit ad92,bit ad93,bit ad94,bit ad95,
bit ad96,bit ad97,bit ad98,bit ad99,bit ad9a,bit ad9b,
bit ada0,bit ada1,bit ada2,bit ada3,bit ada4,bit ada5,
bit ada6,bit ada7,bit ada8,bit ada9,bit adaa,bit adab,
bit adb0,bit adb1,bit adb2,bit adb3,bit adb4,bit adb5,
bit adb6,bit adb7,bit adb8,bit adb9,bit adba,bit adbb,
bit adc0,bit adc1,bit adc2,bit adc3,bit adc4,bit adc5,
bit adc6,bit adc7,bit adc8,bit adc9,bit adca,bit adcb,
bit add0,bit add1,bit add2,bit add3,bit add4,bit add5,
bit add6,bit add7,bit add8,bit add9,bit adda,bit addb,
bit ade0,bit ade1,bit ade2,bit ade3,bit ade4,bit ade5,
bit ade6,bit ade7,bit ade8,bit ade9,bit adea,bit adeb,
bit adf0,bit adf1,bit adf2,bit adf3,bit adf4,bit adf5,
bit adf6,bit adf7,bit adf8,bit adf9,bit adfa,bit adfb,
bit ae00,bit ae01,bit ae02,bit ae03,bit ae04,bit ae05,
bit ae06,bit ae07,bit ae08,bit ae09,bit ae0a,bit ae0b,
bit ae10,bit ae11,bit ae12,bit ae13,bit ae14,bit ae15,
bit ae16,bit ae17,bit ae18,bit ae19,bit ae1a,bit ae1b,
bit ae20,bit ae21,bit ae22,bit ae23,bit ae24,bit ae25,
bit ae26,bit ae27,bit ae28,bit ae29,bit ae2a,bit ae2b,
bit ae30,bit ae31,bit ae32,bit ae33,bit ae34,bit ae35,
bit ae36,bit ae37,bit ae38,bit ae39,bit ae3a,bit ae3b,
bit ae40,bit ae41,bit ae42,bit ae43,bit ae44,bit ae45,
bit ae46,bit ae47,bit ae48,bit ae49,bit ae4a,bit ae4b,
bit ae50,bit ae51,bit ae52,bit ae53,bit ae54,bit ae55,
bit ae56,bit ae57,bit ae58,bit ae59,bit ae5a,bit ae5b,
bit ae60,bit ae61,bit ae62,bit ae63,bit ae64,bit ae65,
bit ae66,bit ae67,bit ae68,bit ae69,bit ae6a,bit ae6b,
bit ae70,bit ae71,bit ae72,bit ae73,bit ae74,bit ae75,
bit ae76,bit ae77,bit ae78,bit ae79,bit ae7a,bit ae7b,
bit ae80,bit ae81,bit ae82,bit ae83,bit ae84,bit ae85,
bit ae86,bit ae87,bit ae88,bit ae89,bit ae8a,bit ae8b,
bit ae90,bit ae91,bit ae92,bit ae93,bit ae94,bit ae95,
bit ae96,bit ae97,bit ae98,bit ae99,bit ae9a,bit ae9b,
bit aea0,bit aea1,bit aea2,bit aea3,bit aea4,bit aea5,
bit aea6,bit aea7,bit aea8,bit aea9,bit aeaa,bit aeab,
bit aeb0,bit aeb1,bit aeb2,bit aeb3,bit aeb4,bit aeb5,
bit aeb6,bit aeb7,bit aeb8,bit aeb9,bit aeba,bit aebb,
bit aec0,bit aec1,bit aec2,bit aec3,bit aec4,bit aec5,
bit aec6,bit aec7,bit aec8,bit aec9,bit aeca,bit aecb,
bit aed0,bit aed1,bit aed2,bit aed3,bit aed4,bit aed5,
bit aed6,bit aed7,bit aed8,bit aed9,bit aeda,bit aedb,
bit aee0,bit aee1,bit aee2,bit aee3,bit aee4,bit aee5,
bit aee6,bit aee7,bit aee8,bit aee9,bit aeea,bit aeeb,
bit aef0,bit aef1,bit aef2,bit aef3,bit aef4,bit aef5,
bit aef6,bit aef7,bit aef8,bit aef9,bit aefa,bit aefb,
bit af00,bit af01,bit af02,bit af03,bit af04,bit af05,
bit af06,bit af07,bit af08,bit af09,bit af0a,bit af0b,
bit af10,bit af11,bit af12,bit af13,bit af14,bit af15,
bit af16,bit af17,bit af18,bit af19,bit af1a,bit af1b,
bit af20,bit af21,bit af22,bit af23,bit af24,bit af25,
bit af26,bit af27,bit af28,bit af29,bit af2a,bit af2b,
bit af30,bit af31,bit af32,bit af33,bit af34,bit af35,
bit af36,bit af37,bit af38,bit af39,bit af3a,bit af3b,
bit af40,bit af41,bit af42,bit af43,bit af44,bit af45,
bit af46,bit af47,bit af48,bit af49,bit af4a,bit af4b,
bit af50,bit af51,bit af52,bit af53,bit af54,bit af55,
bit af56,bit af57,bit af58,bit af59,bit af5a,bit af5b,
bit af60,bit af61,bit af62,bit af63,bit af64,bit af65,
bit af66,bit af67,bit af68,bit af69,bit af6a,bit af6b,
bit af70,bit af71,bit af72,bit af73,bit af74,bit af75,
bit af76,bit af77,bit af78,bit af79,bit af7a,bit af7b,
bit af80,bit af81,bit af82,bit af83,bit af84,bit af85,
bit af86,bit af87,bit af88,bit af89,bit af8a,bit af8b,
bit af90,bit af91,bit af92,bit af93,bit af94,bit af95,
bit af96,bit af97,bit af98,bit af99,bit af9a,bit af9b,
bit afa0,bit afa1,bit afa2,bit afa3,bit afa4,bit afa5,
bit afa6,bit afa7,bit afa8,bit afa9,bit afaa,bit afab,
bit afb0,bit afb1,bit afb2,bit afb3,bit afb4,bit afb5,
bit afb6,bit afb7,bit afb8,bit afb9,bit afba,bit afbb,
bit afc0,bit afc1,bit afc2,bit afc3,bit afc4,bit afc5,
bit afc6,bit afc7,bit afc8,bit afc9,bit afca,bit afcb,
bit afd0,bit afd1,bit afd2,bit afd3,bit afd4,bit afd5,
bit afd6,bit afd7,bit afd8,bit afd9,bit afda,bit afdb,
bit afe0,bit afe1,bit afe2,bit afe3,bit afe4,bit afe5,
bit afe6,bit afe7,bit afe8,bit afe9,bit afea,bit afeb,
bit aff0,bit aff1,bit aff2,bit aff3,bit aff4,bit aff5,
bit aff6,bit aff7,bit aff8,bit aff9,bit affa,bit affb
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
bit b7f6,bit b7f7,bit b7f8,bit b7f9,bit b7fa,bit b7fb,
bit b800,bit b801,bit b802,bit b803,bit b804,bit b805,
bit b806,bit b807,bit b808,bit b809,bit b80a,bit b80b,
bit b810,bit b811,bit b812,bit b813,bit b814,bit b815,
bit b816,bit b817,bit b818,bit b819,bit b81a,bit b81b,
bit b820,bit b821,bit b822,bit b823,bit b824,bit b825,
bit b826,bit b827,bit b828,bit b829,bit b82a,bit b82b,
bit b830,bit b831,bit b832,bit b833,bit b834,bit b835,
bit b836,bit b837,bit b838,bit b839,bit b83a,bit b83b,
bit b840,bit b841,bit b842,bit b843,bit b844,bit b845,
bit b846,bit b847,bit b848,bit b849,bit b84a,bit b84b,
bit b850,bit b851,bit b852,bit b853,bit b854,bit b855,
bit b856,bit b857,bit b858,bit b859,bit b85a,bit b85b,
bit b860,bit b861,bit b862,bit b863,bit b864,bit b865,
bit b866,bit b867,bit b868,bit b869,bit b86a,bit b86b,
bit b870,bit b871,bit b872,bit b873,bit b874,bit b875,
bit b876,bit b877,bit b878,bit b879,bit b87a,bit b87b,
bit b880,bit b881,bit b882,bit b883,bit b884,bit b885,
bit b886,bit b887,bit b888,bit b889,bit b88a,bit b88b,
bit b890,bit b891,bit b892,bit b893,bit b894,bit b895,
bit b896,bit b897,bit b898,bit b899,bit b89a,bit b89b,
bit b8a0,bit b8a1,bit b8a2,bit b8a3,bit b8a4,bit b8a5,
bit b8a6,bit b8a7,bit b8a8,bit b8a9,bit b8aa,bit b8ab,
bit b8b0,bit b8b1,bit b8b2,bit b8b3,bit b8b4,bit b8b5,
bit b8b6,bit b8b7,bit b8b8,bit b8b9,bit b8ba,bit b8bb,
bit b8c0,bit b8c1,bit b8c2,bit b8c3,bit b8c4,bit b8c5,
bit b8c6,bit b8c7,bit b8c8,bit b8c9,bit b8ca,bit b8cb,
bit b8d0,bit b8d1,bit b8d2,bit b8d3,bit b8d4,bit b8d5,
bit b8d6,bit b8d7,bit b8d8,bit b8d9,bit b8da,bit b8db,
bit b8e0,bit b8e1,bit b8e2,bit b8e3,bit b8e4,bit b8e5,
bit b8e6,bit b8e7,bit b8e8,bit b8e9,bit b8ea,bit b8eb,
bit b8f0,bit b8f1,bit b8f2,bit b8f3,bit b8f4,bit b8f5,
bit b8f6,bit b8f7,bit b8f8,bit b8f9,bit b8fa,bit b8fb,
bit b900,bit b901,bit b902,bit b903,bit b904,bit b905,
bit b906,bit b907,bit b908,bit b909,bit b90a,bit b90b,
bit b910,bit b911,bit b912,bit b913,bit b914,bit b915,
bit b916,bit b917,bit b918,bit b919,bit b91a,bit b91b,
bit b920,bit b921,bit b922,bit b923,bit b924,bit b925,
bit b926,bit b927,bit b928,bit b929,bit b92a,bit b92b,
bit b930,bit b931,bit b932,bit b933,bit b934,bit b935,
bit b936,bit b937,bit b938,bit b939,bit b93a,bit b93b,
bit b940,bit b941,bit b942,bit b943,bit b944,bit b945,
bit b946,bit b947,bit b948,bit b949,bit b94a,bit b94b,
bit b950,bit b951,bit b952,bit b953,bit b954,bit b955,
bit b956,bit b957,bit b958,bit b959,bit b95a,bit b95b,
bit b960,bit b961,bit b962,bit b963,bit b964,bit b965,
bit b966,bit b967,bit b968,bit b969,bit b96a,bit b96b,
bit b970,bit b971,bit b972,bit b973,bit b974,bit b975,
bit b976,bit b977,bit b978,bit b979,bit b97a,bit b97b,
bit b980,bit b981,bit b982,bit b983,bit b984,bit b985,
bit b986,bit b987,bit b988,bit b989,bit b98a,bit b98b,
bit b990,bit b991,bit b992,bit b993,bit b994,bit b995,
bit b996,bit b997,bit b998,bit b999,bit b99a,bit b99b,
bit b9a0,bit b9a1,bit b9a2,bit b9a3,bit b9a4,bit b9a5,
bit b9a6,bit b9a7,bit b9a8,bit b9a9,bit b9aa,bit b9ab,
bit b9b0,bit b9b1,bit b9b2,bit b9b3,bit b9b4,bit b9b5,
bit b9b6,bit b9b7,bit b9b8,bit b9b9,bit b9ba,bit b9bb,
bit b9c0,bit b9c1,bit b9c2,bit b9c3,bit b9c4,bit b9c5,
bit b9c6,bit b9c7,bit b9c8,bit b9c9,bit b9ca,bit b9cb,
bit b9d0,bit b9d1,bit b9d2,bit b9d3,bit b9d4,bit b9d5,
bit b9d6,bit b9d7,bit b9d8,bit b9d9,bit b9da,bit b9db,
bit b9e0,bit b9e1,bit b9e2,bit b9e3,bit b9e4,bit b9e5,
bit b9e6,bit b9e7,bit b9e8,bit b9e9,bit b9ea,bit b9eb,
bit b9f0,bit b9f1,bit b9f2,bit b9f3,bit b9f4,bit b9f5,
bit b9f6,bit b9f7,bit b9f8,bit b9f9,bit b9fa,bit b9fb,
bit ba00,bit ba01,bit ba02,bit ba03,bit ba04,bit ba05,
bit ba06,bit ba07,bit ba08,bit ba09,bit ba0a,bit ba0b,
bit ba10,bit ba11,bit ba12,bit ba13,bit ba14,bit ba15,
bit ba16,bit ba17,bit ba18,bit ba19,bit ba1a,bit ba1b,
bit ba20,bit ba21,bit ba22,bit ba23,bit ba24,bit ba25,
bit ba26,bit ba27,bit ba28,bit ba29,bit ba2a,bit ba2b,
bit ba30,bit ba31,bit ba32,bit ba33,bit ba34,bit ba35,
bit ba36,bit ba37,bit ba38,bit ba39,bit ba3a,bit ba3b,
bit ba40,bit ba41,bit ba42,bit ba43,bit ba44,bit ba45,
bit ba46,bit ba47,bit ba48,bit ba49,bit ba4a,bit ba4b,
bit ba50,bit ba51,bit ba52,bit ba53,bit ba54,bit ba55,
bit ba56,bit ba57,bit ba58,bit ba59,bit ba5a,bit ba5b,
bit ba60,bit ba61,bit ba62,bit ba63,bit ba64,bit ba65,
bit ba66,bit ba67,bit ba68,bit ba69,bit ba6a,bit ba6b,
bit ba70,bit ba71,bit ba72,bit ba73,bit ba74,bit ba75,
bit ba76,bit ba77,bit ba78,bit ba79,bit ba7a,bit ba7b,
bit ba80,bit ba81,bit ba82,bit ba83,bit ba84,bit ba85,
bit ba86,bit ba87,bit ba88,bit ba89,bit ba8a,bit ba8b,
bit ba90,bit ba91,bit ba92,bit ba93,bit ba94,bit ba95,
bit ba96,bit ba97,bit ba98,bit ba99,bit ba9a,bit ba9b,
bit baa0,bit baa1,bit baa2,bit baa3,bit baa4,bit baa5,
bit baa6,bit baa7,bit baa8,bit baa9,bit baaa,bit baab,
bit bab0,bit bab1,bit bab2,bit bab3,bit bab4,bit bab5,
bit bab6,bit bab7,bit bab8,bit bab9,bit baba,bit babb,
bit bac0,bit bac1,bit bac2,bit bac3,bit bac4,bit bac5,
bit bac6,bit bac7,bit bac8,bit bac9,bit baca,bit bacb,
bit bad0,bit bad1,bit bad2,bit bad3,bit bad4,bit bad5,
bit bad6,bit bad7,bit bad8,bit bad9,bit bada,bit badb,
bit bae0,bit bae1,bit bae2,bit bae3,bit bae4,bit bae5,
bit bae6,bit bae7,bit bae8,bit bae9,bit baea,bit baeb,
bit baf0,bit baf1,bit baf2,bit baf3,bit baf4,bit baf5,
bit baf6,bit baf7,bit baf8,bit baf9,bit bafa,bit bafb,
bit bb00,bit bb01,bit bb02,bit bb03,bit bb04,bit bb05,
bit bb06,bit bb07,bit bb08,bit bb09,bit bb0a,bit bb0b,
bit bb10,bit bb11,bit bb12,bit bb13,bit bb14,bit bb15,
bit bb16,bit bb17,bit bb18,bit bb19,bit bb1a,bit bb1b,
bit bb20,bit bb21,bit bb22,bit bb23,bit bb24,bit bb25,
bit bb26,bit bb27,bit bb28,bit bb29,bit bb2a,bit bb2b,
bit bb30,bit bb31,bit bb32,bit bb33,bit bb34,bit bb35,
bit bb36,bit bb37,bit bb38,bit bb39,bit bb3a,bit bb3b,
bit bb40,bit bb41,bit bb42,bit bb43,bit bb44,bit bb45,
bit bb46,bit bb47,bit bb48,bit bb49,bit bb4a,bit bb4b,
bit bb50,bit bb51,bit bb52,bit bb53,bit bb54,bit bb55,
bit bb56,bit bb57,bit bb58,bit bb59,bit bb5a,bit bb5b,
bit bb60,bit bb61,bit bb62,bit bb63,bit bb64,bit bb65,
bit bb66,bit bb67,bit bb68,bit bb69,bit bb6a,bit bb6b,
bit bb70,bit bb71,bit bb72,bit bb73,bit bb74,bit bb75,
bit bb76,bit bb77,bit bb78,bit bb79,bit bb7a,bit bb7b,
bit bb80,bit bb81,bit bb82,bit bb83,bit bb84,bit bb85,
bit bb86,bit bb87,bit bb88,bit bb89,bit bb8a,bit bb8b,
bit bb90,bit bb91,bit bb92,bit bb93,bit bb94,bit bb95,
bit bb96,bit bb97,bit bb98,bit bb99,bit bb9a,bit bb9b,
bit bba0,bit bba1,bit bba2,bit bba3,bit bba4,bit bba5,
bit bba6,bit bba7,bit bba8,bit bba9,bit bbaa,bit bbab,
bit bbb0,bit bbb1,bit bbb2,bit bbb3,bit bbb4,bit bbb5,
bit bbb6,bit bbb7,bit bbb8,bit bbb9,bit bbba,bit bbbb,
bit bbc0,bit bbc1,bit bbc2,bit bbc3,bit bbc4,bit bbc5,
bit bbc6,bit bbc7,bit bbc8,bit bbc9,bit bbca,bit bbcb,
bit bbd0,bit bbd1,bit bbd2,bit bbd3,bit bbd4,bit bbd5,
bit bbd6,bit bbd7,bit bbd8,bit bbd9,bit bbda,bit bbdb,
bit bbe0,bit bbe1,bit bbe2,bit bbe3,bit bbe4,bit bbe5,
bit bbe6,bit bbe7,bit bbe8,bit bbe9,bit bbea,bit bbeb,
bit bbf0,bit bbf1,bit bbf2,bit bbf3,bit bbf4,bit bbf5,
bit bbf6,bit bbf7,bit bbf8,bit bbf9,bit bbfa,bit bbfb,
bit bc00,bit bc01,bit bc02,bit bc03,bit bc04,bit bc05,
bit bc06,bit bc07,bit bc08,bit bc09,bit bc0a,bit bc0b,
bit bc10,bit bc11,bit bc12,bit bc13,bit bc14,bit bc15,
bit bc16,bit bc17,bit bc18,bit bc19,bit bc1a,bit bc1b,
bit bc20,bit bc21,bit bc22,bit bc23,bit bc24,bit bc25,
bit bc26,bit bc27,bit bc28,bit bc29,bit bc2a,bit bc2b,
bit bc30,bit bc31,bit bc32,bit bc33,bit bc34,bit bc35,
bit bc36,bit bc37,bit bc38,bit bc39,bit bc3a,bit bc3b,
bit bc40,bit bc41,bit bc42,bit bc43,bit bc44,bit bc45,
bit bc46,bit bc47,bit bc48,bit bc49,bit bc4a,bit bc4b,
bit bc50,bit bc51,bit bc52,bit bc53,bit bc54,bit bc55,
bit bc56,bit bc57,bit bc58,bit bc59,bit bc5a,bit bc5b,
bit bc60,bit bc61,bit bc62,bit bc63,bit bc64,bit bc65,
bit bc66,bit bc67,bit bc68,bit bc69,bit bc6a,bit bc6b,
bit bc70,bit bc71,bit bc72,bit bc73,bit bc74,bit bc75,
bit bc76,bit bc77,bit bc78,bit bc79,bit bc7a,bit bc7b,
bit bc80,bit bc81,bit bc82,bit bc83,bit bc84,bit bc85,
bit bc86,bit bc87,bit bc88,bit bc89,bit bc8a,bit bc8b,
bit bc90,bit bc91,bit bc92,bit bc93,bit bc94,bit bc95,
bit bc96,bit bc97,bit bc98,bit bc99,bit bc9a,bit bc9b,
bit bca0,bit bca1,bit bca2,bit bca3,bit bca4,bit bca5,
bit bca6,bit bca7,bit bca8,bit bca9,bit bcaa,bit bcab,
bit bcb0,bit bcb1,bit bcb2,bit bcb3,bit bcb4,bit bcb5,
bit bcb6,bit bcb7,bit bcb8,bit bcb9,bit bcba,bit bcbb,
bit bcc0,bit bcc1,bit bcc2,bit bcc3,bit bcc4,bit bcc5,
bit bcc6,bit bcc7,bit bcc8,bit bcc9,bit bcca,bit bccb,
bit bcd0,bit bcd1,bit bcd2,bit bcd3,bit bcd4,bit bcd5,
bit bcd6,bit bcd7,bit bcd8,bit bcd9,bit bcda,bit bcdb,
bit bce0,bit bce1,bit bce2,bit bce3,bit bce4,bit bce5,
bit bce6,bit bce7,bit bce8,bit bce9,bit bcea,bit bceb,
bit bcf0,bit bcf1,bit bcf2,bit bcf3,bit bcf4,bit bcf5,
bit bcf6,bit bcf7,bit bcf8,bit bcf9,bit bcfa,bit bcfb,
bit bd00,bit bd01,bit bd02,bit bd03,bit bd04,bit bd05,
bit bd06,bit bd07,bit bd08,bit bd09,bit bd0a,bit bd0b,
bit bd10,bit bd11,bit bd12,bit bd13,bit bd14,bit bd15,
bit bd16,bit bd17,bit bd18,bit bd19,bit bd1a,bit bd1b,
bit bd20,bit bd21,bit bd22,bit bd23,bit bd24,bit bd25,
bit bd26,bit bd27,bit bd28,bit bd29,bit bd2a,bit bd2b,
bit bd30,bit bd31,bit bd32,bit bd33,bit bd34,bit bd35,
bit bd36,bit bd37,bit bd38,bit bd39,bit bd3a,bit bd3b,
bit bd40,bit bd41,bit bd42,bit bd43,bit bd44,bit bd45,
bit bd46,bit bd47,bit bd48,bit bd49,bit bd4a,bit bd4b,
bit bd50,bit bd51,bit bd52,bit bd53,bit bd54,bit bd55,
bit bd56,bit bd57,bit bd58,bit bd59,bit bd5a,bit bd5b,
bit bd60,bit bd61,bit bd62,bit bd63,bit bd64,bit bd65,
bit bd66,bit bd67,bit bd68,bit bd69,bit bd6a,bit bd6b,
bit bd70,bit bd71,bit bd72,bit bd73,bit bd74,bit bd75,
bit bd76,bit bd77,bit bd78,bit bd79,bit bd7a,bit bd7b,
bit bd80,bit bd81,bit bd82,bit bd83,bit bd84,bit bd85,
bit bd86,bit bd87,bit bd88,bit bd89,bit bd8a,bit bd8b,
bit bd90,bit bd91,bit bd92,bit bd93,bit bd94,bit bd95,
bit bd96,bit bd97,bit bd98,bit bd99,bit bd9a,bit bd9b,
bit bda0,bit bda1,bit bda2,bit bda3,bit bda4,bit bda5,
bit bda6,bit bda7,bit bda8,bit bda9,bit bdaa,bit bdab,
bit bdb0,bit bdb1,bit bdb2,bit bdb3,bit bdb4,bit bdb5,
bit bdb6,bit bdb7,bit bdb8,bit bdb9,bit bdba,bit bdbb,
bit bdc0,bit bdc1,bit bdc2,bit bdc3,bit bdc4,bit bdc5,
bit bdc6,bit bdc7,bit bdc8,bit bdc9,bit bdca,bit bdcb,
bit bdd0,bit bdd1,bit bdd2,bit bdd3,bit bdd4,bit bdd5,
bit bdd6,bit bdd7,bit bdd8,bit bdd9,bit bdda,bit bddb,
bit bde0,bit bde1,bit bde2,bit bde3,bit bde4,bit bde5,
bit bde6,bit bde7,bit bde8,bit bde9,bit bdea,bit bdeb,
bit bdf0,bit bdf1,bit bdf2,bit bdf3,bit bdf4,bit bdf5,
bit bdf6,bit bdf7,bit bdf8,bit bdf9,bit bdfa,bit bdfb,
bit be00,bit be01,bit be02,bit be03,bit be04,bit be05,
bit be06,bit be07,bit be08,bit be09,bit be0a,bit be0b,
bit be10,bit be11,bit be12,bit be13,bit be14,bit be15,
bit be16,bit be17,bit be18,bit be19,bit be1a,bit be1b,
bit be20,bit be21,bit be22,bit be23,bit be24,bit be25,
bit be26,bit be27,bit be28,bit be29,bit be2a,bit be2b,
bit be30,bit be31,bit be32,bit be33,bit be34,bit be35,
bit be36,bit be37,bit be38,bit be39,bit be3a,bit be3b,
bit be40,bit be41,bit be42,bit be43,bit be44,bit be45,
bit be46,bit be47,bit be48,bit be49,bit be4a,bit be4b,
bit be50,bit be51,bit be52,bit be53,bit be54,bit be55,
bit be56,bit be57,bit be58,bit be59,bit be5a,bit be5b,
bit be60,bit be61,bit be62,bit be63,bit be64,bit be65,
bit be66,bit be67,bit be68,bit be69,bit be6a,bit be6b,
bit be70,bit be71,bit be72,bit be73,bit be74,bit be75,
bit be76,bit be77,bit be78,bit be79,bit be7a,bit be7b,
bit be80,bit be81,bit be82,bit be83,bit be84,bit be85,
bit be86,bit be87,bit be88,bit be89,bit be8a,bit be8b,
bit be90,bit be91,bit be92,bit be93,bit be94,bit be95,
bit be96,bit be97,bit be98,bit be99,bit be9a,bit be9b,
bit bea0,bit bea1,bit bea2,bit bea3,bit bea4,bit bea5,
bit bea6,bit bea7,bit bea8,bit bea9,bit beaa,bit beab,
bit beb0,bit beb1,bit beb2,bit beb3,bit beb4,bit beb5,
bit beb6,bit beb7,bit beb8,bit beb9,bit beba,bit bebb,
bit bec0,bit bec1,bit bec2,bit bec3,bit bec4,bit bec5,
bit bec6,bit bec7,bit bec8,bit bec9,bit beca,bit becb,
bit bed0,bit bed1,bit bed2,bit bed3,bit bed4,bit bed5,
bit bed6,bit bed7,bit bed8,bit bed9,bit beda,bit bedb,
bit bee0,bit bee1,bit bee2,bit bee3,bit bee4,bit bee5,
bit bee6,bit bee7,bit bee8,bit bee9,bit beea,bit beeb,
bit bef0,bit bef1,bit bef2,bit bef3,bit bef4,bit bef5,
bit bef6,bit bef7,bit bef8,bit bef9,bit befa,bit befb,
bit bf00,bit bf01,bit bf02,bit bf03,bit bf04,bit bf05,
bit bf06,bit bf07,bit bf08,bit bf09,bit bf0a,bit bf0b,
bit bf10,bit bf11,bit bf12,bit bf13,bit bf14,bit bf15,
bit bf16,bit bf17,bit bf18,bit bf19,bit bf1a,bit bf1b,
bit bf20,bit bf21,bit bf22,bit bf23,bit bf24,bit bf25,
bit bf26,bit bf27,bit bf28,bit bf29,bit bf2a,bit bf2b,
bit bf30,bit bf31,bit bf32,bit bf33,bit bf34,bit bf35,
bit bf36,bit bf37,bit bf38,bit bf39,bit bf3a,bit bf3b,
bit bf40,bit bf41,bit bf42,bit bf43,bit bf44,bit bf45,
bit bf46,bit bf47,bit bf48,bit bf49,bit bf4a,bit bf4b,
bit bf50,bit bf51,bit bf52,bit bf53,bit bf54,bit bf55,
bit bf56,bit bf57,bit bf58,bit bf59,bit bf5a,bit bf5b,
bit bf60,bit bf61,bit bf62,bit bf63,bit bf64,bit bf65,
bit bf66,bit bf67,bit bf68,bit bf69,bit bf6a,bit bf6b,
bit bf70,bit bf71,bit bf72,bit bf73,bit bf74,bit bf75,
bit bf76,bit bf77,bit bf78,bit bf79,bit bf7a,bit bf7b,
bit bf80,bit bf81,bit bf82,bit bf83,bit bf84,bit bf85,
bit bf86,bit bf87,bit bf88,bit bf89,bit bf8a,bit bf8b,
bit bf90,bit bf91,bit bf92,bit bf93,bit bf94,bit bf95,
bit bf96,bit bf97,bit bf98,bit bf99,bit bf9a,bit bf9b,
bit bfa0,bit bfa1,bit bfa2,bit bfa3,bit bfa4,bit bfa5,
bit bfa6,bit bfa7,bit bfa8,bit bfa9,bit bfaa,bit bfab,
bit bfb0,bit bfb1,bit bfb2,bit bfb3,bit bfb4,bit bfb5,
bit bfb6,bit bfb7,bit bfb8,bit bfb9,bit bfba,bit bfbb,
bit bfc0,bit bfc1,bit bfc2,bit bfc3,bit bfc4,bit bfc5,
bit bfc6,bit bfc7,bit bfc8,bit bfc9,bit bfca,bit bfcb,
bit bfd0,bit bfd1,bit bfd2,bit bfd3,bit bfd4,bit bfd5,
bit bfd6,bit bfd7,bit bfd8,bit bfd9,bit bfda,bit bfdb,
bit bfe0,bit bfe1,bit bfe2,bit bfe3,bit bfe4,bit bfe5,
bit bfe6,bit bfe7,bit bfe8,bit bfe9,bit bfea,bit bfeb,
bit bff0,bit bff1,bit bff2,bit bff3,bit bff4,bit bff5,
bit bff6,bit bff7,bit bff8,bit bff9,bit bffa,bit bffb
) =
{
  true
  &&
  true
}

mov %L0x7ffffff904c0
    [a000,a010,a020,a030,a040,a050,a060,a070,a080,a090,a0a0,a0b0,a0c0,
     a0d0,a0e0,a0f0,a100,a110,a120,a130,a140,a150,a160,a170,a180,a190,
     a1a0,a1b0,a1c0,a1d0,a1e0,a1f0,a200,a210,a220,a230,a240,a250,a260,
     a270,a280,a290,a2a0,a2b0,a2c0,a2d0,a2e0,a2f0,a300,a310,a320,a330,
     a340,a350,a360,a370,a380,a390,a3a0,a3b0,a3c0,a3d0,a3e0,a3f0,a400,
     a410,a420,a430,a440,a450,a460,a470,a480,a490,a4a0,a4b0,a4c0,a4d0,
     a4e0,a4f0,a500,a510,a520,a530,a540,a550,a560,a570,a580,a590,a5a0,
     a5b0,a5c0,a5d0,a5e0,a5f0,a600,a610,a620,a630,a640,a650,a660,a670,
     a680,a690,a6a0,a6b0,a6c0,a6d0,a6e0,a6f0,a700,a710,a720,a730,a740,
     a750,a760,a770,a780,a790,a7a0,a7b0,a7c0,a7d0,a7e0,a7f0,a800,a810,
     a820,a830,a840,a850,a860,a870,a880,a890,a8a0,a8b0,a8c0,a8d0,a8e0,
     a8f0,a900,a910,a920,a930,a940,a950,a960,a970,a980,a990,a9a0,a9b0,
     a9c0,a9d0,a9e0,a9f0,aa00,aa10,aa20,aa30,aa40,aa50,aa60,aa70,aa80,
     aa90,aaa0,aab0,aac0,aad0,aae0,aaf0,ab00,ab10,ab20,ab30,ab40,ab50,
     ab60,ab70,ab80,ab90,aba0,abb0,abc0,abd0,abe0,abf0,ac00,ac10,ac20,
     ac30,ac40,ac50,ac60,ac70,ac80,ac90,aca0,acb0,acc0,acd0,ace0,acf0,
     ad00,ad10,ad20,ad30,ad40,ad50,ad60,ad70,ad80,ad90,ada0,adb0,adc0,
     add0,ade0,adf0,ae00,ae10,ae20,ae30,ae40,ae50,ae60,ae70,ae80,ae90,
     aea0,aeb0,aec0,aed0,aee0,aef0,af00,af10,af20,af30,af40,af50,af60,
     af70,af80,af90,afa0,afb0,afc0,afd0,afe0,aff0];
mov %L0x7ffffff904e0
    [a001,a011,a021,a031,a041,a051,a061,a071,a081,a091,a0a1,a0b1,a0c1,
     a0d1,a0e1,a0f1,a101,a111,a121,a131,a141,a151,a161,a171,a181,a191,
     a1a1,a1b1,a1c1,a1d1,a1e1,a1f1,a201,a211,a221,a231,a241,a251,a261,
     a271,a281,a291,a2a1,a2b1,a2c1,a2d1,a2e1,a2f1,a301,a311,a321,a331,
     a341,a351,a361,a371,a381,a391,a3a1,a3b1,a3c1,a3d1,a3e1,a3f1,a401,
     a411,a421,a431,a441,a451,a461,a471,a481,a491,a4a1,a4b1,a4c1,a4d1,
     a4e1,a4f1,a501,a511,a521,a531,a541,a551,a561,a571,a581,a591,a5a1,
     a5b1,a5c1,a5d1,a5e1,a5f1,a601,a611,a621,a631,a641,a651,a661,a671,
     a681,a691,a6a1,a6b1,a6c1,a6d1,a6e1,a6f1,a701,a711,a721,a731,a741,
     a751,a761,a771,a781,a791,a7a1,a7b1,a7c1,a7d1,a7e1,a7f1,a801,a811,
     a821,a831,a841,a851,a861,a871,a881,a891,a8a1,a8b1,a8c1,a8d1,a8e1,
     a8f1,a901,a911,a921,a931,a941,a951,a961,a971,a981,a991,a9a1,a9b1,
     a9c1,a9d1,a9e1,a9f1,aa01,aa11,aa21,aa31,aa41,aa51,aa61,aa71,aa81,
     aa91,aaa1,aab1,aac1,aad1,aae1,aaf1,ab01,ab11,ab21,ab31,ab41,ab51,
     ab61,ab71,ab81,ab91,aba1,abb1,abc1,abd1,abe1,abf1,ac01,ac11,ac21,
     ac31,ac41,ac51,ac61,ac71,ac81,ac91,aca1,acb1,acc1,acd1,ace1,acf1,
     ad01,ad11,ad21,ad31,ad41,ad51,ad61,ad71,ad81,ad91,ada1,adb1,adc1,
     add1,ade1,adf1,ae01,ae11,ae21,ae31,ae41,ae51,ae61,ae71,ae81,ae91,
     aea1,aeb1,aec1,aed1,aee1,aef1,af01,af11,af21,af31,af41,af51,af61,
     af71,af81,af91,afa1,afb1,afc1,afd1,afe1,aff1];
mov %L0x7ffffff90500
    [a002,a012,a022,a032,a042,a052,a062,a072,a082,a092,a0a2,a0b2,a0c2,
     a0d2,a0e2,a0f2,a102,a112,a122,a132,a142,a152,a162,a172,a182,a192,
     a1a2,a1b2,a1c2,a1d2,a1e2,a1f2,a202,a212,a222,a232,a242,a252,a262,
     a272,a282,a292,a2a2,a2b2,a2c2,a2d2,a2e2,a2f2,a302,a312,a322,a332,
     a342,a352,a362,a372,a382,a392,a3a2,a3b2,a3c2,a3d2,a3e2,a3f2,a402,
     a412,a422,a432,a442,a452,a462,a472,a482,a492,a4a2,a4b2,a4c2,a4d2,
     a4e2,a4f2,a502,a512,a522,a532,a542,a552,a562,a572,a582,a592,a5a2,
     a5b2,a5c2,a5d2,a5e2,a5f2,a602,a612,a622,a632,a642,a652,a662,a672,
     a682,a692,a6a2,a6b2,a6c2,a6d2,a6e2,a6f2,a702,a712,a722,a732,a742,
     a752,a762,a772,a782,a792,a7a2,a7b2,a7c2,a7d2,a7e2,a7f2,a802,a812,
     a822,a832,a842,a852,a862,a872,a882,a892,a8a2,a8b2,a8c2,a8d2,a8e2,
     a8f2,a902,a912,a922,a932,a942,a952,a962,a972,a982,a992,a9a2,a9b2,
     a9c2,a9d2,a9e2,a9f2,aa02,aa12,aa22,aa32,aa42,aa52,aa62,aa72,aa82,
     aa92,aaa2,aab2,aac2,aad2,aae2,aaf2,ab02,ab12,ab22,ab32,ab42,ab52,
     ab62,ab72,ab82,ab92,aba2,abb2,abc2,abd2,abe2,abf2,ac02,ac12,ac22,
     ac32,ac42,ac52,ac62,ac72,ac82,ac92,aca2,acb2,acc2,acd2,ace2,acf2,
     ad02,ad12,ad22,ad32,ad42,ad52,ad62,ad72,ad82,ad92,ada2,adb2,adc2,
     add2,ade2,adf2,ae02,ae12,ae22,ae32,ae42,ae52,ae62,ae72,ae82,ae92,
     aea2,aeb2,aec2,aed2,aee2,aef2,af02,af12,af22,af32,af42,af52,af62,
     af72,af82,af92,afa2,afb2,afc2,afd2,afe2,aff2];
mov %L0x7ffffff90520
    [a003,a013,a023,a033,a043,a053,a063,a073,a083,a093,a0a3,a0b3,a0c3,
     a0d3,a0e3,a0f3,a103,a113,a123,a133,a143,a153,a163,a173,a183,a193,
     a1a3,a1b3,a1c3,a1d3,a1e3,a1f3,a203,a213,a223,a233,a243,a253,a263,
     a273,a283,a293,a2a3,a2b3,a2c3,a2d3,a2e3,a2f3,a303,a313,a323,a333,
     a343,a353,a363,a373,a383,a393,a3a3,a3b3,a3c3,a3d3,a3e3,a3f3,a403,
     a413,a423,a433,a443,a453,a463,a473,a483,a493,a4a3,a4b3,a4c3,a4d3,
     a4e3,a4f3,a503,a513,a523,a533,a543,a553,a563,a573,a583,a593,a5a3,
     a5b3,a5c3,a5d3,a5e3,a5f3,a603,a613,a623,a633,a643,a653,a663,a673,
     a683,a693,a6a3,a6b3,a6c3,a6d3,a6e3,a6f3,a703,a713,a723,a733,a743,
     a753,a763,a773,a783,a793,a7a3,a7b3,a7c3,a7d3,a7e3,a7f3,a803,a813,
     a823,a833,a843,a853,a863,a873,a883,a893,a8a3,a8b3,a8c3,a8d3,a8e3,
     a8f3,a903,a913,a923,a933,a943,a953,a963,a973,a983,a993,a9a3,a9b3,
     a9c3,a9d3,a9e3,a9f3,aa03,aa13,aa23,aa33,aa43,aa53,aa63,aa73,aa83,
     aa93,aaa3,aab3,aac3,aad3,aae3,aaf3,ab03,ab13,ab23,ab33,ab43,ab53,
     ab63,ab73,ab83,ab93,aba3,abb3,abc3,abd3,abe3,abf3,ac03,ac13,ac23,
     ac33,ac43,ac53,ac63,ac73,ac83,ac93,aca3,acb3,acc3,acd3,ace3,acf3,
     ad03,ad13,ad23,ad33,ad43,ad53,ad63,ad73,ad83,ad93,ada3,adb3,adc3,
     add3,ade3,adf3,ae03,ae13,ae23,ae33,ae43,ae53,ae63,ae73,ae83,ae93,
     aea3,aeb3,aec3,aed3,aee3,aef3,af03,af13,af23,af33,af43,af53,af63,
     af73,af83,af93,afa3,afb3,afc3,afd3,afe3,aff3];
mov %L0x7ffffff90540
    [a004,a014,a024,a034,a044,a054,a064,a074,a084,a094,a0a4,a0b4,a0c4,
     a0d4,a0e4,a0f4,a104,a114,a124,a134,a144,a154,a164,a174,a184,a194,
     a1a4,a1b4,a1c4,a1d4,a1e4,a1f4,a204,a214,a224,a234,a244,a254,a264,
     a274,a284,a294,a2a4,a2b4,a2c4,a2d4,a2e4,a2f4,a304,a314,a324,a334,
     a344,a354,a364,a374,a384,a394,a3a4,a3b4,a3c4,a3d4,a3e4,a3f4,a404,
     a414,a424,a434,a444,a454,a464,a474,a484,a494,a4a4,a4b4,a4c4,a4d4,
     a4e4,a4f4,a504,a514,a524,a534,a544,a554,a564,a574,a584,a594,a5a4,
     a5b4,a5c4,a5d4,a5e4,a5f4,a604,a614,a624,a634,a644,a654,a664,a674,
     a684,a694,a6a4,a6b4,a6c4,a6d4,a6e4,a6f4,a704,a714,a724,a734,a744,
     a754,a764,a774,a784,a794,a7a4,a7b4,a7c4,a7d4,a7e4,a7f4,a804,a814,
     a824,a834,a844,a854,a864,a874,a884,a894,a8a4,a8b4,a8c4,a8d4,a8e4,
     a8f4,a904,a914,a924,a934,a944,a954,a964,a974,a984,a994,a9a4,a9b4,
     a9c4,a9d4,a9e4,a9f4,aa04,aa14,aa24,aa34,aa44,aa54,aa64,aa74,aa84,
     aa94,aaa4,aab4,aac4,aad4,aae4,aaf4,ab04,ab14,ab24,ab34,ab44,ab54,
     ab64,ab74,ab84,ab94,aba4,abb4,abc4,abd4,abe4,abf4,ac04,ac14,ac24,
     ac34,ac44,ac54,ac64,ac74,ac84,ac94,aca4,acb4,acc4,acd4,ace4,acf4,
     ad04,ad14,ad24,ad34,ad44,ad54,ad64,ad74,ad84,ad94,ada4,adb4,adc4,
     add4,ade4,adf4,ae04,ae14,ae24,ae34,ae44,ae54,ae64,ae74,ae84,ae94,
     aea4,aeb4,aec4,aed4,aee4,aef4,af04,af14,af24,af34,af44,af54,af64,
     af74,af84,af94,afa4,afb4,afc4,afd4,afe4,aff4];
mov %L0x7ffffff90560
    [a005,a015,a025,a035,a045,a055,a065,a075,a085,a095,a0a5,a0b5,a0c5,
     a0d5,a0e5,a0f5,a105,a115,a125,a135,a145,a155,a165,a175,a185,a195,
     a1a5,a1b5,a1c5,a1d5,a1e5,a1f5,a205,a215,a225,a235,a245,a255,a265,
     a275,a285,a295,a2a5,a2b5,a2c5,a2d5,a2e5,a2f5,a305,a315,a325,a335,
     a345,a355,a365,a375,a385,a395,a3a5,a3b5,a3c5,a3d5,a3e5,a3f5,a405,
     a415,a425,a435,a445,a455,a465,a475,a485,a495,a4a5,a4b5,a4c5,a4d5,
     a4e5,a4f5,a505,a515,a525,a535,a545,a555,a565,a575,a585,a595,a5a5,
     a5b5,a5c5,a5d5,a5e5,a5f5,a605,a615,a625,a635,a645,a655,a665,a675,
     a685,a695,a6a5,a6b5,a6c5,a6d5,a6e5,a6f5,a705,a715,a725,a735,a745,
     a755,a765,a775,a785,a795,a7a5,a7b5,a7c5,a7d5,a7e5,a7f5,a805,a815,
     a825,a835,a845,a855,a865,a875,a885,a895,a8a5,a8b5,a8c5,a8d5,a8e5,
     a8f5,a905,a915,a925,a935,a945,a955,a965,a975,a985,a995,a9a5,a9b5,
     a9c5,a9d5,a9e5,a9f5,aa05,aa15,aa25,aa35,aa45,aa55,aa65,aa75,aa85,
     aa95,aaa5,aab5,aac5,aad5,aae5,aaf5,ab05,ab15,ab25,ab35,ab45,ab55,
     ab65,ab75,ab85,ab95,aba5,abb5,abc5,abd5,abe5,abf5,ac05,ac15,ac25,
     ac35,ac45,ac55,ac65,ac75,ac85,ac95,aca5,acb5,acc5,acd5,ace5,acf5,
     ad05,ad15,ad25,ad35,ad45,ad55,ad65,ad75,ad85,ad95,ada5,adb5,adc5,
     add5,ade5,adf5,ae05,ae15,ae25,ae35,ae45,ae55,ae65,ae75,ae85,ae95,
     aea5,aeb5,aec5,aed5,aee5,aef5,af05,af15,af25,af35,af45,af55,af65,
     af75,af85,af95,afa5,afb5,afc5,afd5,afe5,aff5];
mov %L0x7ffffff90580
    [a006,a016,a026,a036,a046,a056,a066,a076,a086,a096,a0a6,a0b6,a0c6,
     a0d6,a0e6,a0f6,a106,a116,a126,a136,a146,a156,a166,a176,a186,a196,
     a1a6,a1b6,a1c6,a1d6,a1e6,a1f6,a206,a216,a226,a236,a246,a256,a266,
     a276,a286,a296,a2a6,a2b6,a2c6,a2d6,a2e6,a2f6,a306,a316,a326,a336,
     a346,a356,a366,a376,a386,a396,a3a6,a3b6,a3c6,a3d6,a3e6,a3f6,a406,
     a416,a426,a436,a446,a456,a466,a476,a486,a496,a4a6,a4b6,a4c6,a4d6,
     a4e6,a4f6,a506,a516,a526,a536,a546,a556,a566,a576,a586,a596,a5a6,
     a5b6,a5c6,a5d6,a5e6,a5f6,a606,a616,a626,a636,a646,a656,a666,a676,
     a686,a696,a6a6,a6b6,a6c6,a6d6,a6e6,a6f6,a706,a716,a726,a736,a746,
     a756,a766,a776,a786,a796,a7a6,a7b6,a7c6,a7d6,a7e6,a7f6,a806,a816,
     a826,a836,a846,a856,a866,a876,a886,a896,a8a6,a8b6,a8c6,a8d6,a8e6,
     a8f6,a906,a916,a926,a936,a946,a956,a966,a976,a986,a996,a9a6,a9b6,
     a9c6,a9d6,a9e6,a9f6,aa06,aa16,aa26,aa36,aa46,aa56,aa66,aa76,aa86,
     aa96,aaa6,aab6,aac6,aad6,aae6,aaf6,ab06,ab16,ab26,ab36,ab46,ab56,
     ab66,ab76,ab86,ab96,aba6,abb6,abc6,abd6,abe6,abf6,ac06,ac16,ac26,
     ac36,ac46,ac56,ac66,ac76,ac86,ac96,aca6,acb6,acc6,acd6,ace6,acf6,
     ad06,ad16,ad26,ad36,ad46,ad56,ad66,ad76,ad86,ad96,ada6,adb6,adc6,
     add6,ade6,adf6,ae06,ae16,ae26,ae36,ae46,ae56,ae66,ae76,ae86,ae96,
     aea6,aeb6,aec6,aed6,aee6,aef6,af06,af16,af26,af36,af46,af56,af66,
     af76,af86,af96,afa6,afb6,afc6,afd6,afe6,aff6];
mov %L0x7ffffff905a0
    [a007,a017,a027,a037,a047,a057,a067,a077,a087,a097,a0a7,a0b7,a0c7,
     a0d7,a0e7,a0f7,a107,a117,a127,a137,a147,a157,a167,a177,a187,a197,
     a1a7,a1b7,a1c7,a1d7,a1e7,a1f7,a207,a217,a227,a237,a247,a257,a267,
     a277,a287,a297,a2a7,a2b7,a2c7,a2d7,a2e7,a2f7,a307,a317,a327,a337,
     a347,a357,a367,a377,a387,a397,a3a7,a3b7,a3c7,a3d7,a3e7,a3f7,a407,
     a417,a427,a437,a447,a457,a467,a477,a487,a497,a4a7,a4b7,a4c7,a4d7,
     a4e7,a4f7,a507,a517,a527,a537,a547,a557,a567,a577,a587,a597,a5a7,
     a5b7,a5c7,a5d7,a5e7,a5f7,a607,a617,a627,a637,a647,a657,a667,a677,
     a687,a697,a6a7,a6b7,a6c7,a6d7,a6e7,a6f7,a707,a717,a727,a737,a747,
     a757,a767,a777,a787,a797,a7a7,a7b7,a7c7,a7d7,a7e7,a7f7,a807,a817,
     a827,a837,a847,a857,a867,a877,a887,a897,a8a7,a8b7,a8c7,a8d7,a8e7,
     a8f7,a907,a917,a927,a937,a947,a957,a967,a977,a987,a997,a9a7,a9b7,
     a9c7,a9d7,a9e7,a9f7,aa07,aa17,aa27,aa37,aa47,aa57,aa67,aa77,aa87,
     aa97,aaa7,aab7,aac7,aad7,aae7,aaf7,ab07,ab17,ab27,ab37,ab47,ab57,
     ab67,ab77,ab87,ab97,aba7,abb7,abc7,abd7,abe7,abf7,ac07,ac17,ac27,
     ac37,ac47,ac57,ac67,ac77,ac87,ac97,aca7,acb7,acc7,acd7,ace7,acf7,
     ad07,ad17,ad27,ad37,ad47,ad57,ad67,ad77,ad87,ad97,ada7,adb7,adc7,
     add7,ade7,adf7,ae07,ae17,ae27,ae37,ae47,ae57,ae67,ae77,ae87,ae97,
     aea7,aeb7,aec7,aed7,aee7,aef7,af07,af17,af27,af37,af47,af57,af67,
     af77,af87,af97,afa7,afb7,afc7,afd7,afe7,aff7];
mov %L0x7ffffff905c0
    [a008,a018,a028,a038,a048,a058,a068,a078,a088,a098,a0a8,a0b8,a0c8,
     a0d8,a0e8,a0f8,a108,a118,a128,a138,a148,a158,a168,a178,a188,a198,
     a1a8,a1b8,a1c8,a1d8,a1e8,a1f8,a208,a218,a228,a238,a248,a258,a268,
     a278,a288,a298,a2a8,a2b8,a2c8,a2d8,a2e8,a2f8,a308,a318,a328,a338,
     a348,a358,a368,a378,a388,a398,a3a8,a3b8,a3c8,a3d8,a3e8,a3f8,a408,
     a418,a428,a438,a448,a458,a468,a478,a488,a498,a4a8,a4b8,a4c8,a4d8,
     a4e8,a4f8,a508,a518,a528,a538,a548,a558,a568,a578,a588,a598,a5a8,
     a5b8,a5c8,a5d8,a5e8,a5f8,a608,a618,a628,a638,a648,a658,a668,a678,
     a688,a698,a6a8,a6b8,a6c8,a6d8,a6e8,a6f8,a708,a718,a728,a738,a748,
     a758,a768,a778,a788,a798,a7a8,a7b8,a7c8,a7d8,a7e8,a7f8,a808,a818,
     a828,a838,a848,a858,a868,a878,a888,a898,a8a8,a8b8,a8c8,a8d8,a8e8,
     a8f8,a908,a918,a928,a938,a948,a958,a968,a978,a988,a998,a9a8,a9b8,
     a9c8,a9d8,a9e8,a9f8,aa08,aa18,aa28,aa38,aa48,aa58,aa68,aa78,aa88,
     aa98,aaa8,aab8,aac8,aad8,aae8,aaf8,ab08,ab18,ab28,ab38,ab48,ab58,
     ab68,ab78,ab88,ab98,aba8,abb8,abc8,abd8,abe8,abf8,ac08,ac18,ac28,
     ac38,ac48,ac58,ac68,ac78,ac88,ac98,aca8,acb8,acc8,acd8,ace8,acf8,
     ad08,ad18,ad28,ad38,ad48,ad58,ad68,ad78,ad88,ad98,ada8,adb8,adc8,
     add8,ade8,adf8,ae08,ae18,ae28,ae38,ae48,ae58,ae68,ae78,ae88,ae98,
     aea8,aeb8,aec8,aed8,aee8,aef8,af08,af18,af28,af38,af48,af58,af68,
     af78,af88,af98,afa8,afb8,afc8,afd8,afe8,aff8];
mov %L0x7ffffff905e0
    [a009,a019,a029,a039,a049,a059,a069,a079,a089,a099,a0a9,a0b9,a0c9,
     a0d9,a0e9,a0f9,a109,a119,a129,a139,a149,a159,a169,a179,a189,a199,
     a1a9,a1b9,a1c9,a1d9,a1e9,a1f9,a209,a219,a229,a239,a249,a259,a269,
     a279,a289,a299,a2a9,a2b9,a2c9,a2d9,a2e9,a2f9,a309,a319,a329,a339,
     a349,a359,a369,a379,a389,a399,a3a9,a3b9,a3c9,a3d9,a3e9,a3f9,a409,
     a419,a429,a439,a449,a459,a469,a479,a489,a499,a4a9,a4b9,a4c9,a4d9,
     a4e9,a4f9,a509,a519,a529,a539,a549,a559,a569,a579,a589,a599,a5a9,
     a5b9,a5c9,a5d9,a5e9,a5f9,a609,a619,a629,a639,a649,a659,a669,a679,
     a689,a699,a6a9,a6b9,a6c9,a6d9,a6e9,a6f9,a709,a719,a729,a739,a749,
     a759,a769,a779,a789,a799,a7a9,a7b9,a7c9,a7d9,a7e9,a7f9,a809,a819,
     a829,a839,a849,a859,a869,a879,a889,a899,a8a9,a8b9,a8c9,a8d9,a8e9,
     a8f9,a909,a919,a929,a939,a949,a959,a969,a979,a989,a999,a9a9,a9b9,
     a9c9,a9d9,a9e9,a9f9,aa09,aa19,aa29,aa39,aa49,aa59,aa69,aa79,aa89,
     aa99,aaa9,aab9,aac9,aad9,aae9,aaf9,ab09,ab19,ab29,ab39,ab49,ab59,
     ab69,ab79,ab89,ab99,aba9,abb9,abc9,abd9,abe9,abf9,ac09,ac19,ac29,
     ac39,ac49,ac59,ac69,ac79,ac89,ac99,aca9,acb9,acc9,acd9,ace9,acf9,
     ad09,ad19,ad29,ad39,ad49,ad59,ad69,ad79,ad89,ad99,ada9,adb9,adc9,
     add9,ade9,adf9,ae09,ae19,ae29,ae39,ae49,ae59,ae69,ae79,ae89,ae99,
     aea9,aeb9,aec9,aed9,aee9,aef9,af09,af19,af29,af39,af49,af59,af69,
     af79,af89,af99,afa9,afb9,afc9,afd9,afe9,aff9];
mov %L0x7ffffff90600
    [a00a,a01a,a02a,a03a,a04a,a05a,a06a,a07a,a08a,a09a,a0aa,a0ba,a0ca,
     a0da,a0ea,a0fa,a10a,a11a,a12a,a13a,a14a,a15a,a16a,a17a,a18a,a19a,
     a1aa,a1ba,a1ca,a1da,a1ea,a1fa,a20a,a21a,a22a,a23a,a24a,a25a,a26a,
     a27a,a28a,a29a,a2aa,a2ba,a2ca,a2da,a2ea,a2fa,a30a,a31a,a32a,a33a,
     a34a,a35a,a36a,a37a,a38a,a39a,a3aa,a3ba,a3ca,a3da,a3ea,a3fa,a40a,
     a41a,a42a,a43a,a44a,a45a,a46a,a47a,a48a,a49a,a4aa,a4ba,a4ca,a4da,
     a4ea,a4fa,a50a,a51a,a52a,a53a,a54a,a55a,a56a,a57a,a58a,a59a,a5aa,
     a5ba,a5ca,a5da,a5ea,a5fa,a60a,a61a,a62a,a63a,a64a,a65a,a66a,a67a,
     a68a,a69a,a6aa,a6ba,a6ca,a6da,a6ea,a6fa,a70a,a71a,a72a,a73a,a74a,
     a75a,a76a,a77a,a78a,a79a,a7aa,a7ba,a7ca,a7da,a7ea,a7fa,a80a,a81a,
     a82a,a83a,a84a,a85a,a86a,a87a,a88a,a89a,a8aa,a8ba,a8ca,a8da,a8ea,
     a8fa,a90a,a91a,a92a,a93a,a94a,a95a,a96a,a97a,a98a,a99a,a9aa,a9ba,
     a9ca,a9da,a9ea,a9fa,aa0a,aa1a,aa2a,aa3a,aa4a,aa5a,aa6a,aa7a,aa8a,
     aa9a,aaaa,aaba,aaca,aada,aaea,aafa,ab0a,ab1a,ab2a,ab3a,ab4a,ab5a,
     ab6a,ab7a,ab8a,ab9a,abaa,abba,abca,abda,abea,abfa,ac0a,ac1a,ac2a,
     ac3a,ac4a,ac5a,ac6a,ac7a,ac8a,ac9a,acaa,acba,acca,acda,acea,acfa,
     ad0a,ad1a,ad2a,ad3a,ad4a,ad5a,ad6a,ad7a,ad8a,ad9a,adaa,adba,adca,
     adda,adea,adfa,ae0a,ae1a,ae2a,ae3a,ae4a,ae5a,ae6a,ae7a,ae8a,ae9a,
     aeaa,aeba,aeca,aeda,aeea,aefa,af0a,af1a,af2a,af3a,af4a,af5a,af6a,
     af7a,af8a,af9a,afaa,afba,afca,afda,afea,affa];
mov %L0x7ffffff90620
    [a00b,a01b,a02b,a03b,a04b,a05b,a06b,a07b,a08b,a09b,a0ab,a0bb,a0cb,
     a0db,a0eb,a0fb,a10b,a11b,a12b,a13b,a14b,a15b,a16b,a17b,a18b,a19b,
     a1ab,a1bb,a1cb,a1db,a1eb,a1fb,a20b,a21b,a22b,a23b,a24b,a25b,a26b,
     a27b,a28b,a29b,a2ab,a2bb,a2cb,a2db,a2eb,a2fb,a30b,a31b,a32b,a33b,
     a34b,a35b,a36b,a37b,a38b,a39b,a3ab,a3bb,a3cb,a3db,a3eb,a3fb,a40b,
     a41b,a42b,a43b,a44b,a45b,a46b,a47b,a48b,a49b,a4ab,a4bb,a4cb,a4db,
     a4eb,a4fb,a50b,a51b,a52b,a53b,a54b,a55b,a56b,a57b,a58b,a59b,a5ab,
     a5bb,a5cb,a5db,a5eb,a5fb,a60b,a61b,a62b,a63b,a64b,a65b,a66b,a67b,
     a68b,a69b,a6ab,a6bb,a6cb,a6db,a6eb,a6fb,a70b,a71b,a72b,a73b,a74b,
     a75b,a76b,a77b,a78b,a79b,a7ab,a7bb,a7cb,a7db,a7eb,a7fb,a80b,a81b,
     a82b,a83b,a84b,a85b,a86b,a87b,a88b,a89b,a8ab,a8bb,a8cb,a8db,a8eb,
     a8fb,a90b,a91b,a92b,a93b,a94b,a95b,a96b,a97b,a98b,a99b,a9ab,a9bb,
     a9cb,a9db,a9eb,a9fb,aa0b,aa1b,aa2b,aa3b,aa4b,aa5b,aa6b,aa7b,aa8b,
     aa9b,aaab,aabb,aacb,aadb,aaeb,aafb,ab0b,ab1b,ab2b,ab3b,ab4b,ab5b,
     ab6b,ab7b,ab8b,ab9b,abab,abbb,abcb,abdb,abeb,abfb,ac0b,ac1b,ac2b,
     ac3b,ac4b,ac5b,ac6b,ac7b,ac8b,ac9b,acab,acbb,accb,acdb,aceb,acfb,
     ad0b,ad1b,ad2b,ad3b,ad4b,ad5b,ad6b,ad7b,ad8b,ad9b,adab,adbb,adcb,
     addb,adeb,adfb,ae0b,ae1b,ae2b,ae3b,ae4b,ae5b,ae6b,ae7b,ae8b,ae9b,
     aeab,aebb,aecb,aedb,aeeb,aefb,af0b,af1b,af2b,af3b,af4b,af5b,af6b,
     af7b,af8b,af9b,afab,afbb,afcb,afdb,afeb,affb];
mov %L0x7ffffffa6700
    [b000,b010,b020,b030,b040,b050,b060,b070,b080,b090,b0a0,b0b0,b0c0,
     b0d0,b0e0,b0f0,b100,b110,b120,b130,b140,b150,b160,b170,b180,b190,
     b1a0,b1b0,b1c0,b1d0,b1e0,b1f0,b200,b210,b220,b230,b240,b250,b260,
     b270,b280,b290,b2a0,b2b0,b2c0,b2d0,b2e0,b2f0,b300,b310,b320,b330,
     b340,b350,b360,b370,b380,b390,b3a0,b3b0,b3c0,b3d0,b3e0,b3f0,b400,
     b410,b420,b430,b440,b450,b460,b470,b480,b490,b4a0,b4b0,b4c0,b4d0,
     b4e0,b4f0,b500,b510,b520,b530,b540,b550,b560,b570,b580,b590,b5a0,
     b5b0,b5c0,b5d0,b5e0,b5f0,b600,b610,b620,b630,b640,b650,b660,b670,
     b680,b690,b6a0,b6b0,b6c0,b6d0,b6e0,b6f0,b700,b710,b720,b730,b740,
     b750,b760,b770,b780,b790,b7a0,b7b0,b7c0,b7d0,b7e0,b7f0,b800,b810,
     b820,b830,b840,b850,b860,b870,b880,b890,b8a0,b8b0,b8c0,b8d0,b8e0,
     b8f0,b900,b910,b920,b930,b940,b950,b960,b970,b980,b990,b9a0,b9b0,
     b9c0,b9d0,b9e0,b9f0,ba00,ba10,ba20,ba30,ba40,ba50,ba60,ba70,ba80,
     ba90,baa0,bab0,bac0,bad0,bae0,baf0,bb00,bb10,bb20,bb30,bb40,bb50,
     bb60,bb70,bb80,bb90,bba0,bbb0,bbc0,bbd0,bbe0,bbf0,bc00,bc10,bc20,
     bc30,bc40,bc50,bc60,bc70,bc80,bc90,bca0,bcb0,bcc0,bcd0,bce0,bcf0,
     bd00,bd10,bd20,bd30,bd40,bd50,bd60,bd70,bd80,bd90,bda0,bdb0,bdc0,
     bdd0,bde0,bdf0,be00,be10,be20,be30,be40,be50,be60,be70,be80,be90,
     bea0,beb0,bec0,bed0,bee0,bef0,bf00,bf10,bf20,bf30,bf40,bf50,bf60,
     bf70,bf80,bf90,bfa0,bfb0,bfc0,bfd0,bfe0,bff0];
mov %L0x7ffffffa6720
    [b001,b011,b021,b031,b041,b051,b061,b071,b081,b091,b0a1,b0b1,b0c1,
     b0d1,b0e1,b0f1,b101,b111,b121,b131,b141,b151,b161,b171,b181,b191,
     b1a1,b1b1,b1c1,b1d1,b1e1,b1f1,b201,b211,b221,b231,b241,b251,b261,
     b271,b281,b291,b2a1,b2b1,b2c1,b2d1,b2e1,b2f1,b301,b311,b321,b331,
     b341,b351,b361,b371,b381,b391,b3a1,b3b1,b3c1,b3d1,b3e1,b3f1,b401,
     b411,b421,b431,b441,b451,b461,b471,b481,b491,b4a1,b4b1,b4c1,b4d1,
     b4e1,b4f1,b501,b511,b521,b531,b541,b551,b561,b571,b581,b591,b5a1,
     b5b1,b5c1,b5d1,b5e1,b5f1,b601,b611,b621,b631,b641,b651,b661,b671,
     b681,b691,b6a1,b6b1,b6c1,b6d1,b6e1,b6f1,b701,b711,b721,b731,b741,
     b751,b761,b771,b781,b791,b7a1,b7b1,b7c1,b7d1,b7e1,b7f1,b801,b811,
     b821,b831,b841,b851,b861,b871,b881,b891,b8a1,b8b1,b8c1,b8d1,b8e1,
     b8f1,b901,b911,b921,b931,b941,b951,b961,b971,b981,b991,b9a1,b9b1,
     b9c1,b9d1,b9e1,b9f1,ba01,ba11,ba21,ba31,ba41,ba51,ba61,ba71,ba81,
     ba91,baa1,bab1,bac1,bad1,bae1,baf1,bb01,bb11,bb21,bb31,bb41,bb51,
     bb61,bb71,bb81,bb91,bba1,bbb1,bbc1,bbd1,bbe1,bbf1,bc01,bc11,bc21,
     bc31,bc41,bc51,bc61,bc71,bc81,bc91,bca1,bcb1,bcc1,bcd1,bce1,bcf1,
     bd01,bd11,bd21,bd31,bd41,bd51,bd61,bd71,bd81,bd91,bda1,bdb1,bdc1,
     bdd1,bde1,bdf1,be01,be11,be21,be31,be41,be51,be61,be71,be81,be91,
     bea1,beb1,bec1,bed1,bee1,bef1,bf01,bf11,bf21,bf31,bf41,bf51,bf61,
     bf71,bf81,bf91,bfa1,bfb1,bfc1,bfd1,bfe1,bff1];
mov %L0x7ffffffa6740
    [b002,b012,b022,b032,b042,b052,b062,b072,b082,b092,b0a2,b0b2,b0c2,
     b0d2,b0e2,b0f2,b102,b112,b122,b132,b142,b152,b162,b172,b182,b192,
     b1a2,b1b2,b1c2,b1d2,b1e2,b1f2,b202,b212,b222,b232,b242,b252,b262,
     b272,b282,b292,b2a2,b2b2,b2c2,b2d2,b2e2,b2f2,b302,b312,b322,b332,
     b342,b352,b362,b372,b382,b392,b3a2,b3b2,b3c2,b3d2,b3e2,b3f2,b402,
     b412,b422,b432,b442,b452,b462,b472,b482,b492,b4a2,b4b2,b4c2,b4d2,
     b4e2,b4f2,b502,b512,b522,b532,b542,b552,b562,b572,b582,b592,b5a2,
     b5b2,b5c2,b5d2,b5e2,b5f2,b602,b612,b622,b632,b642,b652,b662,b672,
     b682,b692,b6a2,b6b2,b6c2,b6d2,b6e2,b6f2,b702,b712,b722,b732,b742,
     b752,b762,b772,b782,b792,b7a2,b7b2,b7c2,b7d2,b7e2,b7f2,b802,b812,
     b822,b832,b842,b852,b862,b872,b882,b892,b8a2,b8b2,b8c2,b8d2,b8e2,
     b8f2,b902,b912,b922,b932,b942,b952,b962,b972,b982,b992,b9a2,b9b2,
     b9c2,b9d2,b9e2,b9f2,ba02,ba12,ba22,ba32,ba42,ba52,ba62,ba72,ba82,
     ba92,baa2,bab2,bac2,bad2,bae2,baf2,bb02,bb12,bb22,bb32,bb42,bb52,
     bb62,bb72,bb82,bb92,bba2,bbb2,bbc2,bbd2,bbe2,bbf2,bc02,bc12,bc22,
     bc32,bc42,bc52,bc62,bc72,bc82,bc92,bca2,bcb2,bcc2,bcd2,bce2,bcf2,
     bd02,bd12,bd22,bd32,bd42,bd52,bd62,bd72,bd82,bd92,bda2,bdb2,bdc2,
     bdd2,bde2,bdf2,be02,be12,be22,be32,be42,be52,be62,be72,be82,be92,
     bea2,beb2,bec2,bed2,bee2,bef2,bf02,bf12,bf22,bf32,bf42,bf52,bf62,
     bf72,bf82,bf92,bfa2,bfb2,bfc2,bfd2,bfe2,bff2];
mov %L0x7ffffffa6760
    [b003,b013,b023,b033,b043,b053,b063,b073,b083,b093,b0a3,b0b3,b0c3,
     b0d3,b0e3,b0f3,b103,b113,b123,b133,b143,b153,b163,b173,b183,b193,
     b1a3,b1b3,b1c3,b1d3,b1e3,b1f3,b203,b213,b223,b233,b243,b253,b263,
     b273,b283,b293,b2a3,b2b3,b2c3,b2d3,b2e3,b2f3,b303,b313,b323,b333,
     b343,b353,b363,b373,b383,b393,b3a3,b3b3,b3c3,b3d3,b3e3,b3f3,b403,
     b413,b423,b433,b443,b453,b463,b473,b483,b493,b4a3,b4b3,b4c3,b4d3,
     b4e3,b4f3,b503,b513,b523,b533,b543,b553,b563,b573,b583,b593,b5a3,
     b5b3,b5c3,b5d3,b5e3,b5f3,b603,b613,b623,b633,b643,b653,b663,b673,
     b683,b693,b6a3,b6b3,b6c3,b6d3,b6e3,b6f3,b703,b713,b723,b733,b743,
     b753,b763,b773,b783,b793,b7a3,b7b3,b7c3,b7d3,b7e3,b7f3,b803,b813,
     b823,b833,b843,b853,b863,b873,b883,b893,b8a3,b8b3,b8c3,b8d3,b8e3,
     b8f3,b903,b913,b923,b933,b943,b953,b963,b973,b983,b993,b9a3,b9b3,
     b9c3,b9d3,b9e3,b9f3,ba03,ba13,ba23,ba33,ba43,ba53,ba63,ba73,ba83,
     ba93,baa3,bab3,bac3,bad3,bae3,baf3,bb03,bb13,bb23,bb33,bb43,bb53,
     bb63,bb73,bb83,bb93,bba3,bbb3,bbc3,bbd3,bbe3,bbf3,bc03,bc13,bc23,
     bc33,bc43,bc53,bc63,bc73,bc83,bc93,bca3,bcb3,bcc3,bcd3,bce3,bcf3,
     bd03,bd13,bd23,bd33,bd43,bd53,bd63,bd73,bd83,bd93,bda3,bdb3,bdc3,
     bdd3,bde3,bdf3,be03,be13,be23,be33,be43,be53,be63,be73,be83,be93,
     bea3,beb3,bec3,bed3,bee3,bef3,bf03,bf13,bf23,bf33,bf43,bf53,bf63,
     bf73,bf83,bf93,bfa3,bfb3,bfc3,bfd3,bfe3,bff3];
mov %L0x7ffffffa6780
    [b004,b014,b024,b034,b044,b054,b064,b074,b084,b094,b0a4,b0b4,b0c4,
     b0d4,b0e4,b0f4,b104,b114,b124,b134,b144,b154,b164,b174,b184,b194,
     b1a4,b1b4,b1c4,b1d4,b1e4,b1f4,b204,b214,b224,b234,b244,b254,b264,
     b274,b284,b294,b2a4,b2b4,b2c4,b2d4,b2e4,b2f4,b304,b314,b324,b334,
     b344,b354,b364,b374,b384,b394,b3a4,b3b4,b3c4,b3d4,b3e4,b3f4,b404,
     b414,b424,b434,b444,b454,b464,b474,b484,b494,b4a4,b4b4,b4c4,b4d4,
     b4e4,b4f4,b504,b514,b524,b534,b544,b554,b564,b574,b584,b594,b5a4,
     b5b4,b5c4,b5d4,b5e4,b5f4,b604,b614,b624,b634,b644,b654,b664,b674,
     b684,b694,b6a4,b6b4,b6c4,b6d4,b6e4,b6f4,b704,b714,b724,b734,b744,
     b754,b764,b774,b784,b794,b7a4,b7b4,b7c4,b7d4,b7e4,b7f4,b804,b814,
     b824,b834,b844,b854,b864,b874,b884,b894,b8a4,b8b4,b8c4,b8d4,b8e4,
     b8f4,b904,b914,b924,b934,b944,b954,b964,b974,b984,b994,b9a4,b9b4,
     b9c4,b9d4,b9e4,b9f4,ba04,ba14,ba24,ba34,ba44,ba54,ba64,ba74,ba84,
     ba94,baa4,bab4,bac4,bad4,bae4,baf4,bb04,bb14,bb24,bb34,bb44,bb54,
     bb64,bb74,bb84,bb94,bba4,bbb4,bbc4,bbd4,bbe4,bbf4,bc04,bc14,bc24,
     bc34,bc44,bc54,bc64,bc74,bc84,bc94,bca4,bcb4,bcc4,bcd4,bce4,bcf4,
     bd04,bd14,bd24,bd34,bd44,bd54,bd64,bd74,bd84,bd94,bda4,bdb4,bdc4,
     bdd4,bde4,bdf4,be04,be14,be24,be34,be44,be54,be64,be74,be84,be94,
     bea4,beb4,bec4,bed4,bee4,bef4,bf04,bf14,bf24,bf34,bf44,bf54,bf64,
     bf74,bf84,bf94,bfa4,bfb4,bfc4,bfd4,bfe4,bff4];
mov %L0x7ffffffa67a0
    [b005,b015,b025,b035,b045,b055,b065,b075,b085,b095,b0a5,b0b5,b0c5,
     b0d5,b0e5,b0f5,b105,b115,b125,b135,b145,b155,b165,b175,b185,b195,
     b1a5,b1b5,b1c5,b1d5,b1e5,b1f5,b205,b215,b225,b235,b245,b255,b265,
     b275,b285,b295,b2a5,b2b5,b2c5,b2d5,b2e5,b2f5,b305,b315,b325,b335,
     b345,b355,b365,b375,b385,b395,b3a5,b3b5,b3c5,b3d5,b3e5,b3f5,b405,
     b415,b425,b435,b445,b455,b465,b475,b485,b495,b4a5,b4b5,b4c5,b4d5,
     b4e5,b4f5,b505,b515,b525,b535,b545,b555,b565,b575,b585,b595,b5a5,
     b5b5,b5c5,b5d5,b5e5,b5f5,b605,b615,b625,b635,b645,b655,b665,b675,
     b685,b695,b6a5,b6b5,b6c5,b6d5,b6e5,b6f5,b705,b715,b725,b735,b745,
     b755,b765,b775,b785,b795,b7a5,b7b5,b7c5,b7d5,b7e5,b7f5,b805,b815,
     b825,b835,b845,b855,b865,b875,b885,b895,b8a5,b8b5,b8c5,b8d5,b8e5,
     b8f5,b905,b915,b925,b935,b945,b955,b965,b975,b985,b995,b9a5,b9b5,
     b9c5,b9d5,b9e5,b9f5,ba05,ba15,ba25,ba35,ba45,ba55,ba65,ba75,ba85,
     ba95,baa5,bab5,bac5,bad5,bae5,baf5,bb05,bb15,bb25,bb35,bb45,bb55,
     bb65,bb75,bb85,bb95,bba5,bbb5,bbc5,bbd5,bbe5,bbf5,bc05,bc15,bc25,
     bc35,bc45,bc55,bc65,bc75,bc85,bc95,bca5,bcb5,bcc5,bcd5,bce5,bcf5,
     bd05,bd15,bd25,bd35,bd45,bd55,bd65,bd75,bd85,bd95,bda5,bdb5,bdc5,
     bdd5,bde5,bdf5,be05,be15,be25,be35,be45,be55,be65,be75,be85,be95,
     bea5,beb5,bec5,bed5,bee5,bef5,bf05,bf15,bf25,bf35,bf45,bf55,bf65,
     bf75,bf85,bf95,bfa5,bfb5,bfc5,bfd5,bfe5,bff5];
mov %L0x7ffffffa67c0
    [b006,b016,b026,b036,b046,b056,b066,b076,b086,b096,b0a6,b0b6,b0c6,
     b0d6,b0e6,b0f6,b106,b116,b126,b136,b146,b156,b166,b176,b186,b196,
     b1a6,b1b6,b1c6,b1d6,b1e6,b1f6,b206,b216,b226,b236,b246,b256,b266,
     b276,b286,b296,b2a6,b2b6,b2c6,b2d6,b2e6,b2f6,b306,b316,b326,b336,
     b346,b356,b366,b376,b386,b396,b3a6,b3b6,b3c6,b3d6,b3e6,b3f6,b406,
     b416,b426,b436,b446,b456,b466,b476,b486,b496,b4a6,b4b6,b4c6,b4d6,
     b4e6,b4f6,b506,b516,b526,b536,b546,b556,b566,b576,b586,b596,b5a6,
     b5b6,b5c6,b5d6,b5e6,b5f6,b606,b616,b626,b636,b646,b656,b666,b676,
     b686,b696,b6a6,b6b6,b6c6,b6d6,b6e6,b6f6,b706,b716,b726,b736,b746,
     b756,b766,b776,b786,b796,b7a6,b7b6,b7c6,b7d6,b7e6,b7f6,b806,b816,
     b826,b836,b846,b856,b866,b876,b886,b896,b8a6,b8b6,b8c6,b8d6,b8e6,
     b8f6,b906,b916,b926,b936,b946,b956,b966,b976,b986,b996,b9a6,b9b6,
     b9c6,b9d6,b9e6,b9f6,ba06,ba16,ba26,ba36,ba46,ba56,ba66,ba76,ba86,
     ba96,baa6,bab6,bac6,bad6,bae6,baf6,bb06,bb16,bb26,bb36,bb46,bb56,
     bb66,bb76,bb86,bb96,bba6,bbb6,bbc6,bbd6,bbe6,bbf6,bc06,bc16,bc26,
     bc36,bc46,bc56,bc66,bc76,bc86,bc96,bca6,bcb6,bcc6,bcd6,bce6,bcf6,
     bd06,bd16,bd26,bd36,bd46,bd56,bd66,bd76,bd86,bd96,bda6,bdb6,bdc6,
     bdd6,bde6,bdf6,be06,be16,be26,be36,be46,be56,be66,be76,be86,be96,
     bea6,beb6,bec6,bed6,bee6,bef6,bf06,bf16,bf26,bf36,bf46,bf56,bf66,
     bf76,bf86,bf96,bfa6,bfb6,bfc6,bfd6,bfe6,bff6];
mov %L0x7ffffffa67e0
    [b007,b017,b027,b037,b047,b057,b067,b077,b087,b097,b0a7,b0b7,b0c7,
     b0d7,b0e7,b0f7,b107,b117,b127,b137,b147,b157,b167,b177,b187,b197,
     b1a7,b1b7,b1c7,b1d7,b1e7,b1f7,b207,b217,b227,b237,b247,b257,b267,
     b277,b287,b297,b2a7,b2b7,b2c7,b2d7,b2e7,b2f7,b307,b317,b327,b337,
     b347,b357,b367,b377,b387,b397,b3a7,b3b7,b3c7,b3d7,b3e7,b3f7,b407,
     b417,b427,b437,b447,b457,b467,b477,b487,b497,b4a7,b4b7,b4c7,b4d7,
     b4e7,b4f7,b507,b517,b527,b537,b547,b557,b567,b577,b587,b597,b5a7,
     b5b7,b5c7,b5d7,b5e7,b5f7,b607,b617,b627,b637,b647,b657,b667,b677,
     b687,b697,b6a7,b6b7,b6c7,b6d7,b6e7,b6f7,b707,b717,b727,b737,b747,
     b757,b767,b777,b787,b797,b7a7,b7b7,b7c7,b7d7,b7e7,b7f7,b807,b817,
     b827,b837,b847,b857,b867,b877,b887,b897,b8a7,b8b7,b8c7,b8d7,b8e7,
     b8f7,b907,b917,b927,b937,b947,b957,b967,b977,b987,b997,b9a7,b9b7,
     b9c7,b9d7,b9e7,b9f7,ba07,ba17,ba27,ba37,ba47,ba57,ba67,ba77,ba87,
     ba97,baa7,bab7,bac7,bad7,bae7,baf7,bb07,bb17,bb27,bb37,bb47,bb57,
     bb67,bb77,bb87,bb97,bba7,bbb7,bbc7,bbd7,bbe7,bbf7,bc07,bc17,bc27,
     bc37,bc47,bc57,bc67,bc77,bc87,bc97,bca7,bcb7,bcc7,bcd7,bce7,bcf7,
     bd07,bd17,bd27,bd37,bd47,bd57,bd67,bd77,bd87,bd97,bda7,bdb7,bdc7,
     bdd7,bde7,bdf7,be07,be17,be27,be37,be47,be57,be67,be77,be87,be97,
     bea7,beb7,bec7,bed7,bee7,bef7,bf07,bf17,bf27,bf37,bf47,bf57,bf67,
     bf77,bf87,bf97,bfa7,bfb7,bfc7,bfd7,bfe7,bff7];
mov %L0x7ffffffa6800
    [b008,b018,b028,b038,b048,b058,b068,b078,b088,b098,b0a8,b0b8,b0c8,
     b0d8,b0e8,b0f8,b108,b118,b128,b138,b148,b158,b168,b178,b188,b198,
     b1a8,b1b8,b1c8,b1d8,b1e8,b1f8,b208,b218,b228,b238,b248,b258,b268,
     b278,b288,b298,b2a8,b2b8,b2c8,b2d8,b2e8,b2f8,b308,b318,b328,b338,
     b348,b358,b368,b378,b388,b398,b3a8,b3b8,b3c8,b3d8,b3e8,b3f8,b408,
     b418,b428,b438,b448,b458,b468,b478,b488,b498,b4a8,b4b8,b4c8,b4d8,
     b4e8,b4f8,b508,b518,b528,b538,b548,b558,b568,b578,b588,b598,b5a8,
     b5b8,b5c8,b5d8,b5e8,b5f8,b608,b618,b628,b638,b648,b658,b668,b678,
     b688,b698,b6a8,b6b8,b6c8,b6d8,b6e8,b6f8,b708,b718,b728,b738,b748,
     b758,b768,b778,b788,b798,b7a8,b7b8,b7c8,b7d8,b7e8,b7f8,b808,b818,
     b828,b838,b848,b858,b868,b878,b888,b898,b8a8,b8b8,b8c8,b8d8,b8e8,
     b8f8,b908,b918,b928,b938,b948,b958,b968,b978,b988,b998,b9a8,b9b8,
     b9c8,b9d8,b9e8,b9f8,ba08,ba18,ba28,ba38,ba48,ba58,ba68,ba78,ba88,
     ba98,baa8,bab8,bac8,bad8,bae8,baf8,bb08,bb18,bb28,bb38,bb48,bb58,
     bb68,bb78,bb88,bb98,bba8,bbb8,bbc8,bbd8,bbe8,bbf8,bc08,bc18,bc28,
     bc38,bc48,bc58,bc68,bc78,bc88,bc98,bca8,bcb8,bcc8,bcd8,bce8,bcf8,
     bd08,bd18,bd28,bd38,bd48,bd58,bd68,bd78,bd88,bd98,bda8,bdb8,bdc8,
     bdd8,bde8,bdf8,be08,be18,be28,be38,be48,be58,be68,be78,be88,be98,
     bea8,beb8,bec8,bed8,bee8,bef8,bf08,bf18,bf28,bf38,bf48,bf58,bf68,
     bf78,bf88,bf98,bfa8,bfb8,bfc8,bfd8,bfe8,bff8];
mov %L0x7ffffffa6820
    [b009,b019,b029,b039,b049,b059,b069,b079,b089,b099,b0a9,b0b9,b0c9,
     b0d9,b0e9,b0f9,b109,b119,b129,b139,b149,b159,b169,b179,b189,b199,
     b1a9,b1b9,b1c9,b1d9,b1e9,b1f9,b209,b219,b229,b239,b249,b259,b269,
     b279,b289,b299,b2a9,b2b9,b2c9,b2d9,b2e9,b2f9,b309,b319,b329,b339,
     b349,b359,b369,b379,b389,b399,b3a9,b3b9,b3c9,b3d9,b3e9,b3f9,b409,
     b419,b429,b439,b449,b459,b469,b479,b489,b499,b4a9,b4b9,b4c9,b4d9,
     b4e9,b4f9,b509,b519,b529,b539,b549,b559,b569,b579,b589,b599,b5a9,
     b5b9,b5c9,b5d9,b5e9,b5f9,b609,b619,b629,b639,b649,b659,b669,b679,
     b689,b699,b6a9,b6b9,b6c9,b6d9,b6e9,b6f9,b709,b719,b729,b739,b749,
     b759,b769,b779,b789,b799,b7a9,b7b9,b7c9,b7d9,b7e9,b7f9,b809,b819,
     b829,b839,b849,b859,b869,b879,b889,b899,b8a9,b8b9,b8c9,b8d9,b8e9,
     b8f9,b909,b919,b929,b939,b949,b959,b969,b979,b989,b999,b9a9,b9b9,
     b9c9,b9d9,b9e9,b9f9,ba09,ba19,ba29,ba39,ba49,ba59,ba69,ba79,ba89,
     ba99,baa9,bab9,bac9,bad9,bae9,baf9,bb09,bb19,bb29,bb39,bb49,bb59,
     bb69,bb79,bb89,bb99,bba9,bbb9,bbc9,bbd9,bbe9,bbf9,bc09,bc19,bc29,
     bc39,bc49,bc59,bc69,bc79,bc89,bc99,bca9,bcb9,bcc9,bcd9,bce9,bcf9,
     bd09,bd19,bd29,bd39,bd49,bd59,bd69,bd79,bd89,bd99,bda9,bdb9,bdc9,
     bdd9,bde9,bdf9,be09,be19,be29,be39,be49,be59,be69,be79,be89,be99,
     bea9,beb9,bec9,bed9,bee9,bef9,bf09,bf19,bf29,bf39,bf49,bf59,bf69,
     bf79,bf89,bf99,bfa9,bfb9,bfc9,bfd9,bfe9,bff9];
mov %L0x7ffffffa6840
    [b00a,b01a,b02a,b03a,b04a,b05a,b06a,b07a,b08a,b09a,b0aa,b0ba,b0ca,
     b0da,b0ea,b0fa,b10a,b11a,b12a,b13a,b14a,b15a,b16a,b17a,b18a,b19a,
     b1aa,b1ba,b1ca,b1da,b1ea,b1fa,b20a,b21a,b22a,b23a,b24a,b25a,b26a,
     b27a,b28a,b29a,b2aa,b2ba,b2ca,b2da,b2ea,b2fa,b30a,b31a,b32a,b33a,
     b34a,b35a,b36a,b37a,b38a,b39a,b3aa,b3ba,b3ca,b3da,b3ea,b3fa,b40a,
     b41a,b42a,b43a,b44a,b45a,b46a,b47a,b48a,b49a,b4aa,b4ba,b4ca,b4da,
     b4ea,b4fa,b50a,b51a,b52a,b53a,b54a,b55a,b56a,b57a,b58a,b59a,b5aa,
     b5ba,b5ca,b5da,b5ea,b5fa,b60a,b61a,b62a,b63a,b64a,b65a,b66a,b67a,
     b68a,b69a,b6aa,b6ba,b6ca,b6da,b6ea,b6fa,b70a,b71a,b72a,b73a,b74a,
     b75a,b76a,b77a,b78a,b79a,b7aa,b7ba,b7ca,b7da,b7ea,b7fa,b80a,b81a,
     b82a,b83a,b84a,b85a,b86a,b87a,b88a,b89a,b8aa,b8ba,b8ca,b8da,b8ea,
     b8fa,b90a,b91a,b92a,b93a,b94a,b95a,b96a,b97a,b98a,b99a,b9aa,b9ba,
     b9ca,b9da,b9ea,b9fa,ba0a,ba1a,ba2a,ba3a,ba4a,ba5a,ba6a,ba7a,ba8a,
     ba9a,baaa,baba,baca,bada,baea,bafa,bb0a,bb1a,bb2a,bb3a,bb4a,bb5a,
     bb6a,bb7a,bb8a,bb9a,bbaa,bbba,bbca,bbda,bbea,bbfa,bc0a,bc1a,bc2a,
     bc3a,bc4a,bc5a,bc6a,bc7a,bc8a,bc9a,bcaa,bcba,bcca,bcda,bcea,bcfa,
     bd0a,bd1a,bd2a,bd3a,bd4a,bd5a,bd6a,bd7a,bd8a,bd9a,bdaa,bdba,bdca,
     bdda,bdea,bdfa,be0a,be1a,be2a,be3a,be4a,be5a,be6a,be7a,be8a,be9a,
     beaa,beba,beca,beda,beea,befa,bf0a,bf1a,bf2a,bf3a,bf4a,bf5a,bf6a,
     bf7a,bf8a,bf9a,bfaa,bfba,bfca,bfda,bfea,bffa];
mov %L0x7ffffffa6860
    [b00b,b01b,b02b,b03b,b04b,b05b,b06b,b07b,b08b,b09b,b0ab,b0bb,b0cb,
     b0db,b0eb,b0fb,b10b,b11b,b12b,b13b,b14b,b15b,b16b,b17b,b18b,b19b,
     b1ab,b1bb,b1cb,b1db,b1eb,b1fb,b20b,b21b,b22b,b23b,b24b,b25b,b26b,
     b27b,b28b,b29b,b2ab,b2bb,b2cb,b2db,b2eb,b2fb,b30b,b31b,b32b,b33b,
     b34b,b35b,b36b,b37b,b38b,b39b,b3ab,b3bb,b3cb,b3db,b3eb,b3fb,b40b,
     b41b,b42b,b43b,b44b,b45b,b46b,b47b,b48b,b49b,b4ab,b4bb,b4cb,b4db,
     b4eb,b4fb,b50b,b51b,b52b,b53b,b54b,b55b,b56b,b57b,b58b,b59b,b5ab,
     b5bb,b5cb,b5db,b5eb,b5fb,b60b,b61b,b62b,b63b,b64b,b65b,b66b,b67b,
     b68b,b69b,b6ab,b6bb,b6cb,b6db,b6eb,b6fb,b70b,b71b,b72b,b73b,b74b,
     b75b,b76b,b77b,b78b,b79b,b7ab,b7bb,b7cb,b7db,b7eb,b7fb,b80b,b81b,
     b82b,b83b,b84b,b85b,b86b,b87b,b88b,b89b,b8ab,b8bb,b8cb,b8db,b8eb,
     b8fb,b90b,b91b,b92b,b93b,b94b,b95b,b96b,b97b,b98b,b99b,b9ab,b9bb,
     b9cb,b9db,b9eb,b9fb,ba0b,ba1b,ba2b,ba3b,ba4b,ba5b,ba6b,ba7b,ba8b,
     ba9b,baab,babb,bacb,badb,baeb,bafb,bb0b,bb1b,bb2b,bb3b,bb4b,bb5b,
     bb6b,bb7b,bb8b,bb9b,bbab,bbbb,bbcb,bbdb,bbeb,bbfb,bc0b,bc1b,bc2b,
     bc3b,bc4b,bc5b,bc6b,bc7b,bc8b,bc9b,bcab,bcbb,bccb,bcdb,bceb,bcfb,
     bd0b,bd1b,bd2b,bd3b,bd4b,bd5b,bd6b,bd7b,bd8b,bd9b,bdab,bdbb,bdcb,
     bddb,bdeb,bdfb,be0b,be1b,be2b,be3b,be4b,be5b,be6b,be7b,be8b,be9b,
     beab,bebb,becb,bedb,beeb,befb,bf0b,bf1b,bf2b,bf3b,bf4b,bf5b,bf6b,
     bf7b,bf8b,bf9b,bfab,bfbb,bfcb,bfdb,bfeb,bffb];


(* #! -> SP = 0x7ffffff8e818 *)
#! 0x7ffffff8e818 = 0x7ffffff8e818;
(* #mov    %rsp,%r11                                #! PC = 0x55555557f100 *)
#mov    %rsp,%r11                                #! 0x55555557f100 = 0x55555557f100;
(* #and    $0x1f,%r11                               #! PC = 0x55555557f103 *)
#and    $0x1f,%r11                               #! 0x55555557f103 = 0x55555557f103;
(* #add    $0x0,%r11                                #! PC = 0x55555557f107 *)
#add    $0x0,%r11                                #! 0x55555557f107 = 0x55555557f107;
(* #sub    %r11,%rsp                                #! PC = 0x55555557f10b *)
#sub    %r11,%rsp                                #! 0x55555557f10b = 0x55555557f10b;
(* vmovupd (%rdx),%ymm0                            #! EA = L0x7ffffff904c0; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f10e *)
mov %ymm0 %L0x7ffffff904c0;
(* vmovupd 0x160(%rsi),%ymm1                       #! EA = L0x7ffffffa6860; Value = 0xffffffffffffffff; PC = 0x55555557f112 *)
mov %ymm1 %L0x7ffffffa6860;
(* vpand  %ymm1,%ymm0,%ymm2                        #! PC = 0x55555557f11a *)
mul %ymm2 %ymm0 %ymm1;
(* vpand  0x20(%rdx),%ymm1,%ymm3                   #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f11e *)
mul %ymm3 %ymm1 %L0x7ffffff904e0;
(* vpand  0x40(%rdx),%ymm1,%ymm4                   #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f123 *)
mul %ymm4 %ymm1 %L0x7ffffff90500;
(* vpand  0x60(%rdx),%ymm1,%ymm5                   #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f128 *)
mul %ymm5 %ymm1 %L0x7ffffff90520;
(* vpand  0x80(%rdx),%ymm1,%ymm6                   #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f12d *)
mul %ymm6 %ymm1 %L0x7ffffff90540;
(* vpand  0xa0(%rdx),%ymm1,%ymm7                   #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f135 *)
mul %ymm7 %ymm1 %L0x7ffffff90560;
(* vpand  0xc0(%rdx),%ymm1,%ymm8                   #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f13d *)
mul %ymm8 %ymm1 %L0x7ffffff90580;
(* vpand  0xe0(%rdx),%ymm1,%ymm9                   #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f145 *)
mul %ymm9 %ymm1 %L0x7ffffff905a0;
(* vpand  0x100(%rdx),%ymm1,%ymm10                 #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f14d *)
mul %ymm10 %ymm1 %L0x7ffffff905c0;
(* vpand  0x120(%rdx),%ymm1,%ymm11                 #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f155 *)
mul %ymm11 %ymm1 %L0x7ffffff905e0;
(* vpand  0x140(%rdx),%ymm1,%ymm12                 #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f15d *)
mul %ymm12 %ymm1 %L0x7ffffff90600;
(* vpand  0x160(%rdx),%ymm1,%ymm1                  #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f165 *)
mul %ymm1 %ymm1 %L0x7ffffff90620;
(* vpxor  %ymm1,%ymm4,%ymm4                        #! PC = 0x55555557f16d *)
adds %dc %ymm4 %ymm4 %ymm1;
(* vmovapd %ymm1,%ymm1                             #! PC = 0x55555557f171 *)
mov %ymm1 %ymm1;
(* vmovupd 0x140(%rsi),%ymm13                      #! EA = L0x7ffffffa6840; Value = 0xffffffffffffffff; PC = 0x55555557f175 *)
mov %ymm13 %L0x7ffffffa6840;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f17d *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f182 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f187 *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f18c *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f191 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f196 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f19b *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f1a0 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f1a5 *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f1ad *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f1b2 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f1ba *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f1bf *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f1c7 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f1cc *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f1d4 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f1d9 *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f1e1 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f1e6 *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f1ee *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f1f3 *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f1fb *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f200 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm12,%ymm12                     #! PC = 0x55555557f208 *)
adds %dc %ymm12 %ymm12 %ymm13;
(* vpxor  %ymm12,%ymm3,%ymm3                       #! PC = 0x55555557f20d *)
adds %dc %ymm3 %ymm3 %ymm12;
(* vmovapd %ymm12,%ymm12                           #! PC = 0x55555557f212 *)
mov %ymm12 %ymm12;
(* vmovupd 0x120(%rsi),%ymm13                      #! EA = L0x7ffffffa6820; Value = 0xffffffffffffffff; PC = 0x55555557f217 *)
mov %ymm13 %L0x7ffffffa6820;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f21f *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f224 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f229 *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f22e *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f233 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f238 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f23d *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f242 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f247 *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f24f *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f254 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f25c *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f261 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f269 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f26e *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f276 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f27b *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f283 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f288 *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f290 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f295 *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f29d *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f2a2 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm11,%ymm11                     #! PC = 0x55555557f2aa *)
adds %dc %ymm11 %ymm11 %ymm13;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557f2af *)
adds %dc %ymm2 %ymm2 %ymm11;
(* vmovapd %ymm11,%ymm11                           #! PC = 0x55555557f2b4 *)
mov %ymm11 %ymm11;
(* vmovupd 0x100(%rsi),%ymm13                      #! EA = L0x7ffffffa6800; Value = 0xffffffffffffffff; PC = 0x55555557f2b9 *)
mov %ymm13 %L0x7ffffffa6800;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f2c1 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f2c6 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f2cb *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f2d0 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f2d5 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f2da *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f2df *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f2e4 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f2e9 *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f2f1 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f2f6 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f2fe *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f303 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f30b *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f310 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f318 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f31d *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f325 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f32a *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f332 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f337 *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f33f *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f344 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm10,%ymm10                     #! PC = 0x55555557f34c *)
adds %dc %ymm10 %ymm10 %ymm13;
(* vpxor  %ymm10,%ymm1,%ymm1                       #! PC = 0x55555557f351 *)
adds %dc %ymm1 %ymm1 %ymm10;
(* vmovapd %ymm10,%ymm10                           #! PC = 0x55555557f356 *)
mov %ymm10 %ymm10;
(* vmovupd 0xe0(%rsi),%ymm13                       #! EA = L0x7ffffffa67e0; Value = 0xffffffffffffffff; PC = 0x55555557f35b *)
mov %ymm13 %L0x7ffffffa67e0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f363 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f368 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f36d *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f372 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f377 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f37c *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f381 *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f386 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f38b *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f393 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f398 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f3a0 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f3a5 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f3ad *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f3b2 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f3ba *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f3bf *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f3c7 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f3cc *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f3d4 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f3d9 *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f3e1 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f3e6 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm9,%ymm9                       #! PC = 0x55555557f3ee *)
adds %dc %ymm9 %ymm9 %ymm13;
(* vpxor  %ymm9,%ymm12,%ymm12                      #! PC = 0x55555557f3f3 *)
adds %dc %ymm12 %ymm12 %ymm9;
(* vmovapd %ymm9,%ymm9                             #! PC = 0x55555557f3f8 *)
mov %ymm9 %ymm9;
(* vmovupd 0xc0(%rsi),%ymm13                       #! EA = L0x7ffffffa67c0; Value = 0x0000000000000000; PC = 0x55555557f3fd *)
mov %ymm13 %L0x7ffffffa67c0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f405 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f40a *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f40f *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f414 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f419 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f41e *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f423 *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f428 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f42d *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f435 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f43a *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f442 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f447 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f44f *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f454 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f45c *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f461 *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f469 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f46e *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f476 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f47b *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f483 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f488 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm8,%ymm8                       #! PC = 0x55555557f490 *)
adds %dc %ymm8 %ymm8 %ymm13;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557f495 *)
adds %dc %ymm11 %ymm11 %ymm8;
(* vmovapd %ymm8,%ymm8                             #! PC = 0x55555557f49a *)
mov %ymm8 %ymm8;
(* vmovupd 0xa0(%rsi),%ymm13                       #! EA = L0x7ffffffa67a0; Value = 0xffffffffffffffff; PC = 0x55555557f49f *)
mov %ymm13 %L0x7ffffffa67a0;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f4a7 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f4ac *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f4b1 *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f4b6 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f4bb *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f4c0 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f4c5 *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f4ca *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f4cf *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f4d7 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f4dc *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f4e4 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f4e9 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f4f1 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f4f6 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f4fe *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f503 *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f50b *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f510 *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f518 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f51d *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f525 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f52a *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm7,%ymm7                       #! PC = 0x55555557f532 *)
adds %dc %ymm7 %ymm7 %ymm13;
(* vpxor  %ymm7,%ymm10,%ymm10                      #! PC = 0x55555557f537 *)
adds %dc %ymm10 %ymm10 %ymm7;
(* vmovapd %ymm7,%ymm7                             #! PC = 0x55555557f53b *)
mov %ymm7 %ymm7;
(* vmovupd 0x80(%rsi),%ymm13                       #! EA = L0x7ffffffa6780; Value = 0xffffffffffffffff; PC = 0x55555557f53f *)
mov %ymm13 %L0x7ffffffa6780;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f547 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f54c *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f551 *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f556 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f55b *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f560 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f565 *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f56a *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f56f *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f577 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f57c *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f584 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f589 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f591 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f596 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f59e *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f5a3 *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f5ab *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f5b0 *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f5b8 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f5bd *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f5c5 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f5ca *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm6,%ymm6                       #! PC = 0x55555557f5d2 *)
adds %dc %ymm6 %ymm6 %ymm13;
(* vpxor  %ymm6,%ymm9,%ymm9                        #! PC = 0x55555557f5d7 *)
adds %dc %ymm9 %ymm9 %ymm6;
(* vmovapd %ymm6,%ymm6                             #! PC = 0x55555557f5db *)
mov %ymm6 %ymm6;
(* vmovupd 0x60(%rsi),%ymm13                       #! EA = L0x7ffffffa6760; Value = 0x0000000000000000; PC = 0x55555557f5df *)
mov %ymm13 %L0x7ffffffa6760;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f5e4 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f5e9 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f5ee *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f5f3 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f5f8 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f5fd *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f602 *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f607 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f60c *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f614 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f619 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f621 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f626 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f62e *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f633 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f63b *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f640 *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f648 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f64d *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f655 *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f65a *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f662 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f667 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm5,%ymm5                       #! PC = 0x55555557f66f *)
adds %dc %ymm5 %ymm5 %ymm13;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557f674 *)
adds %dc %ymm8 %ymm8 %ymm5;
(* vmovapd %ymm5,%ymm5                             #! PC = 0x55555557f678 *)
mov %ymm5 %ymm5;
(* vmovupd 0x40(%rsi),%ymm13                       #! EA = L0x7ffffffa6740; Value = 0x0000000000000000; PC = 0x55555557f67c *)
mov %ymm13 %L0x7ffffffa6740;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f681 *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f686 *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f68b *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f690 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f695 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f69a *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f69f *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f6a4 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f6a9 *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f6b1 *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f6b6 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f6be *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f6c3 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f6cb *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f6d0 *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f6d8 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f6dd *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f6e5 *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f6ea *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f6f2 *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f6f7 *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm3,%ymm3                       #! PC = 0x55555557f6ff *)
adds %dc %ymm3 %ymm3 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f704 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm4,%ymm4                       #! PC = 0x55555557f70c *)
adds %dc %ymm4 %ymm4 %ymm13;
(* vpxor  %ymm4,%ymm7,%ymm7                        #! PC = 0x55555557f711 *)
adds %dc %ymm7 %ymm7 %ymm4;
(* vmovapd %ymm4,%ymm4                             #! PC = 0x55555557f715 *)
mov %ymm4 %ymm4;
(* vmovupd 0x20(%rsi),%ymm13                       #! EA = L0x7ffffffa6720; Value = 0xffffffffffffffff; PC = 0x55555557f719 *)
mov %ymm13 %L0x7ffffffa6720;
(* vpand  %ymm13,%ymm0,%ymm14                      #! PC = 0x55555557f71e *)
mul %ymm14 %ymm0 %ymm13;
(* vpxor  %ymm14,%ymm4,%ymm4                       #! PC = 0x55555557f723 *)
adds %dc %ymm4 %ymm4 %ymm14;
(* vpand  0x20(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f728 *)
mul %ymm14 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm14,%ymm5,%ymm5                       #! PC = 0x55555557f72d *)
adds %dc %ymm5 %ymm5 %ymm14;
(* vpand  0x40(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f732 *)
mul %ymm14 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm14,%ymm6,%ymm6                       #! PC = 0x55555557f737 *)
adds %dc %ymm6 %ymm6 %ymm14;
(* vpand  0x60(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f73c *)
mul %ymm14 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm14,%ymm7,%ymm7                       #! PC = 0x55555557f741 *)
adds %dc %ymm7 %ymm7 %ymm14;
(* vpand  0x80(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f746 *)
mul %ymm14 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f74e *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vpand  0xa0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f753 *)
mul %ymm14 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm14,%ymm9,%ymm9                       #! PC = 0x55555557f75b *)
adds %dc %ymm9 %ymm9 %ymm14;
(* vpand  0xc0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f760 *)
mul %ymm14 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f768 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vpand  0xe0(%rdx),%ymm13,%ymm14                 #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f76d *)
mul %ymm14 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm14,%ymm11,%ymm11                     #! PC = 0x55555557f775 *)
adds %dc %ymm11 %ymm11 %ymm14;
(* vpand  0x100(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f77a *)
mul %ymm14 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm14,%ymm12,%ymm12                     #! PC = 0x55555557f782 *)
adds %dc %ymm12 %ymm12 %ymm14;
(* vpand  0x120(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f787 *)
mul %ymm14 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm14,%ymm1,%ymm1                       #! PC = 0x55555557f78f *)
adds %dc %ymm1 %ymm1 %ymm14;
(* vpand  0x140(%rdx),%ymm13,%ymm14                #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f794 *)
mul %ymm14 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm14,%ymm2,%ymm2                       #! PC = 0x55555557f79c *)
adds %dc %ymm2 %ymm2 %ymm14;
(* vpand  0x160(%rdx),%ymm13,%ymm13                #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f7a1 *)
mul %ymm13 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm13,%ymm3,%ymm3                       #! PC = 0x55555557f7a9 *)
adds %dc %ymm3 %ymm3 %ymm13;
(* vpxor  %ymm3,%ymm6,%ymm6                        #! PC = 0x55555557f7ae *)
adds %dc %ymm6 %ymm6 %ymm3;
(* vmovapd %ymm3,%ymm3                             #! PC = 0x55555557f7b2 *)
mov %ymm3 %ymm3;
(* vmovupd (%rsi),%ymm13                           #! EA = L0x7ffffffa6700; Value = 0x0000000000000000; PC = 0x55555557f7b6 *)
mov %ymm13 %L0x7ffffffa6700;
(* vpand  %ymm13,%ymm0,%ymm0                       #! PC = 0x55555557f7ba *)
mul %ymm0 %ymm0 %ymm13;
(* vpxor  %ymm0,%ymm3,%ymm3                        #! PC = 0x55555557f7bf *)
adds %dc %ymm3 %ymm3 %ymm0;
(* vpand  0x20(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff904e0; Value = 0xf0f00f0f0f0ff0f0; PC = 0x55555557f7c3 *)
mul %ymm0 %ymm13 %L0x7ffffff904e0;
(* vpxor  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557f7c8 *)
adds %dc %ymm4 %ymm4 %ymm0;
(* vpand  0x40(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90500; Value = 0x0ff00ff00ff00ff0; PC = 0x55555557f7cc *)
mul %ymm0 %ymm13 %L0x7ffffff90500;
(* vpxor  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557f7d1 *)
adds %dc %ymm5 %ymm5 %ymm0;
(* vpand  0x60(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90520; Value = 0xaa5555aaaa5555aa; PC = 0x55555557f7d5 *)
mul %ymm0 %ymm13 %L0x7ffffff90520;
(* vpxor  %ymm0,%ymm6,%ymm6                        #! PC = 0x55555557f7da *)
adds %dc %ymm6 %ymm6 %ymm0;
(* vpand  0x80(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90540; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f7de *)
mul %ymm0 %ymm13 %L0x7ffffff90540;
(* vpxor  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557f7e6 *)
adds %dc %ymm7 %ymm7 %ymm0;
(* vpand  0xa0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90560; Value = 0x33cccc33cc3333cc; PC = 0x55555557f7ea *)
mul %ymm0 %ymm13 %L0x7ffffff90560;
(* vpxor  %ymm0,%ymm8,%ymm8                        #! PC = 0x55555557f7f2 *)
adds %dc %ymm8 %ymm8 %ymm0;
(* vpand  0xc0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff90580; Value = 0xffff0000ffff0000; PC = 0x55555557f7f6 *)
mul %ymm0 %ymm13 %L0x7ffffff90580;
(* vpxor  %ymm0,%ymm9,%ymm9                        #! PC = 0x55555557f7fe *)
adds %dc %ymm9 %ymm9 %ymm0;
(* vpand  0xe0(%rdx),%ymm13,%ymm0                  #! EA = L0x7ffffff905a0; Value = 0xcc33cc3333cc33cc; PC = 0x55555557f802 *)
mul %ymm0 %ymm13 %L0x7ffffff905a0;
(* vpxor  %ymm0,%ymm10,%ymm10                      #! PC = 0x55555557f80a *)
adds %dc %ymm10 %ymm10 %ymm0;
(* vpand  0x100(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff905c0; Value = 0x33cc33cc33cc33cc; PC = 0x55555557f80e *)
mul %ymm0 %ymm13 %L0x7ffffff905c0;
(* vpxor  %ymm0,%ymm11,%ymm11                      #! PC = 0x55555557f816 *)
adds %dc %ymm11 %ymm11 %ymm0;
(* vpand  0x120(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff905e0; Value = 0x5a5a5a5a5a5a5a5a; PC = 0x55555557f81a *)
mul %ymm0 %ymm13 %L0x7ffffff905e0;
(* vpxor  %ymm0,%ymm12,%ymm12                      #! PC = 0x55555557f822 *)
adds %dc %ymm12 %ymm12 %ymm0;
(* vpand  0x140(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff90600; Value = 0xff00ff00ff00ff00; PC = 0x55555557f826 *)
mul %ymm0 %ymm13 %L0x7ffffff90600;
(* vpxor  %ymm0,%ymm1,%ymm1                        #! PC = 0x55555557f82e *)
adds %dc %ymm1 %ymm1 %ymm0;
(* vpand  0x160(%rdx),%ymm13,%ymm0                 #! EA = L0x7ffffff90620; Value = 0xf00f0ff0f00f0ff0; PC = 0x55555557f832 *)
mul %ymm0 %ymm13 %L0x7ffffff90620;
(* vpxor  %ymm0,%ymm2,%ymm2                        #! PC = 0x55555557f83a *)
adds %dc %ymm2 %ymm2 %ymm0;
(* vmovupd %ymm2,0x160(%rdi)                       #! EA = L0x7ffffff8eb20; PC = 0x55555557f83e *)
mov %L0x7ffffff8eb20 %ymm2;
(* vmovupd %ymm1,0x140(%rdi)                       #! EA = L0x7ffffff8eb00; PC = 0x55555557f846 *)
mov %L0x7ffffff8eb00 %ymm1;
(* vmovupd %ymm12,0x120(%rdi)                      #! EA = L0x7ffffff8eae0; PC = 0x55555557f84e *)
mov %L0x7ffffff8eae0 %ymm12;
(* vmovupd %ymm11,0x100(%rdi)                      #! EA = L0x7ffffff8eac0; PC = 0x55555557f856 *)
mov %L0x7ffffff8eac0 %ymm11;
(* vmovupd %ymm10,0xe0(%rdi)                       #! EA = L0x7ffffff8eaa0; PC = 0x55555557f85e *)
mov %L0x7ffffff8eaa0 %ymm10;
(* vmovupd %ymm9,0xc0(%rdi)                        #! EA = L0x7ffffff8ea80; PC = 0x55555557f866 *)
mov %L0x7ffffff8ea80 %ymm9;
(* vmovupd %ymm8,0xa0(%rdi)                        #! EA = L0x7ffffff8ea60; PC = 0x55555557f86e *)
mov %L0x7ffffff8ea60 %ymm8;
(* vmovupd %ymm7,0x80(%rdi)                        #! EA = L0x7ffffff8ea40; PC = 0x55555557f876 *)
mov %L0x7ffffff8ea40 %ymm7;
(* vmovupd %ymm6,0x60(%rdi)                        #! EA = L0x7ffffff8ea20; PC = 0x55555557f87e *)
mov %L0x7ffffff8ea20 %ymm6;
(* vmovupd %ymm5,0x40(%rdi)                        #! EA = L0x7ffffff8ea00; PC = 0x55555557f883 *)
mov %L0x7ffffff8ea00 %ymm5;
(* vmovupd %ymm4,0x20(%rdi)                        #! EA = L0x7ffffff8e9e0; PC = 0x55555557f888 *)
mov %L0x7ffffff8e9e0 %ymm4;
(* vmovupd %ymm3,(%rdi)                            #! EA = L0x7ffffff8e9c0; PC = 0x55555557f88d *)
mov %L0x7ffffff8e9c0 %ymm3;
(* #add    %r11,%rsp                                #! PC = 0x55555557f891 *)
#add    %r11,%rsp                                #! 0x55555557f891 = 0x55555557f891;
(* #! <- SP = 0x7ffffff8e818 *)
#! 0x7ffffff8e818 = 0x7ffffff8e818;
(* #retq                                           #! PC = 0x55555557f894 *)
#retq                                           #! 0x55555557f894 = 0x55555557f894;

mov [r000,r010,r020,r030,r040,r050,r060,r070,r080,r090,r0a0,r0b0,r0c0,
     r0d0,r0e0,r0f0,r100,r110,r120,r130,r140,r150,r160,r170,r180,r190,
     r1a0,r1b0,r1c0,r1d0,r1e0,r1f0,r200,r210,r220,r230,r240,r250,r260,
     r270,r280,r290,r2a0,r2b0,r2c0,r2d0,r2e0,r2f0,r300,r310,r320,r330,
     r340,r350,r360,r370,r380,r390,r3a0,r3b0,r3c0,r3d0,r3e0,r3f0,r400,
     r410,r420,r430,r440,r450,r460,r470,r480,r490,r4a0,r4b0,r4c0,r4d0,
     r4e0,r4f0,r500,r510,r520,r530,r540,r550,r560,r570,r580,r590,r5a0,
     r5b0,r5c0,r5d0,r5e0,r5f0,r600,r610,r620,r630,r640,r650,r660,r670,
     r680,r690,r6a0,r6b0,r6c0,r6d0,r6e0,r6f0,r700,r710,r720,r730,r740,
     r750,r760,r770,r780,r790,r7a0,r7b0,r7c0,r7d0,r7e0,r7f0,r800,r810,
     r820,r830,r840,r850,r860,r870,r880,r890,r8a0,r8b0,r8c0,r8d0,r8e0,
     r8f0,r900,r910,r920,r930,r940,r950,r960,r970,r980,r990,r9a0,r9b0,
     r9c0,r9d0,r9e0,r9f0,ra00,ra10,ra20,ra30,ra40,ra50,ra60,ra70,ra80,
     ra90,raa0,rab0,rac0,rad0,rae0,raf0,rb00,rb10,rb20,rb30,rb40,rb50,
     rb60,rb70,rb80,rb90,rba0,rbb0,rbc0,rbd0,rbe0,rbf0,rc00,rc10,rc20,
     rc30,rc40,rc50,rc60,rc70,rc80,rc90,rca0,rcb0,rcc0,rcd0,rce0,rcf0,
     rd00,rd10,rd20,rd30,rd40,rd50,rd60,rd70,rd80,rd90,rda0,rdb0,rdc0,
     rdd0,rde0,rdf0,re00,re10,re20,re30,re40,re50,re60,re70,re80,re90,
     rea0,reb0,rec0,red0,ree0,ref0,rf00,rf10,rf20,rf30,rf40,rf50,rf60,
     rf70,rf80,rf90,rfa0,rfb0,rfc0,rfd0,rfe0,rff0]
     %L0x7ffffff8e9c0;
mov [r001,r011,r021,r031,r041,r051,r061,r071,r081,r091,r0a1,r0b1,r0c1,
     r0d1,r0e1,r0f1,r101,r111,r121,r131,r141,r151,r161,r171,r181,r191,
     r1a1,r1b1,r1c1,r1d1,r1e1,r1f1,r201,r211,r221,r231,r241,r251,r261,
     r271,r281,r291,r2a1,r2b1,r2c1,r2d1,r2e1,r2f1,r301,r311,r321,r331,
     r341,r351,r361,r371,r381,r391,r3a1,r3b1,r3c1,r3d1,r3e1,r3f1,r401,
     r411,r421,r431,r441,r451,r461,r471,r481,r491,r4a1,r4b1,r4c1,r4d1,
     r4e1,r4f1,r501,r511,r521,r531,r541,r551,r561,r571,r581,r591,r5a1,
     r5b1,r5c1,r5d1,r5e1,r5f1,r601,r611,r621,r631,r641,r651,r661,r671,
     r681,r691,r6a1,r6b1,r6c1,r6d1,r6e1,r6f1,r701,r711,r721,r731,r741,
     r751,r761,r771,r781,r791,r7a1,r7b1,r7c1,r7d1,r7e1,r7f1,r801,r811,
     r821,r831,r841,r851,r861,r871,r881,r891,r8a1,r8b1,r8c1,r8d1,r8e1,
     r8f1,r901,r911,r921,r931,r941,r951,r961,r971,r981,r991,r9a1,r9b1,
     r9c1,r9d1,r9e1,r9f1,ra01,ra11,ra21,ra31,ra41,ra51,ra61,ra71,ra81,
     ra91,raa1,rab1,rac1,rad1,rae1,raf1,rb01,rb11,rb21,rb31,rb41,rb51,
     rb61,rb71,rb81,rb91,rba1,rbb1,rbc1,rbd1,rbe1,rbf1,rc01,rc11,rc21,
     rc31,rc41,rc51,rc61,rc71,rc81,rc91,rca1,rcb1,rcc1,rcd1,rce1,rcf1,
     rd01,rd11,rd21,rd31,rd41,rd51,rd61,rd71,rd81,rd91,rda1,rdb1,rdc1,
     rdd1,rde1,rdf1,re01,re11,re21,re31,re41,re51,re61,re71,re81,re91,
     rea1,reb1,rec1,red1,ree1,ref1,rf01,rf11,rf21,rf31,rf41,rf51,rf61,
     rf71,rf81,rf91,rfa1,rfb1,rfc1,rfd1,rfe1,rff1]
     %L0x7ffffff8e9e0;
mov [r002,r012,r022,r032,r042,r052,r062,r072,r082,r092,r0a2,r0b2,r0c2,
     r0d2,r0e2,r0f2,r102,r112,r122,r132,r142,r152,r162,r172,r182,r192,
     r1a2,r1b2,r1c2,r1d2,r1e2,r1f2,r202,r212,r222,r232,r242,r252,r262,
     r272,r282,r292,r2a2,r2b2,r2c2,r2d2,r2e2,r2f2,r302,r312,r322,r332,
     r342,r352,r362,r372,r382,r392,r3a2,r3b2,r3c2,r3d2,r3e2,r3f2,r402,
     r412,r422,r432,r442,r452,r462,r472,r482,r492,r4a2,r4b2,r4c2,r4d2,
     r4e2,r4f2,r502,r512,r522,r532,r542,r552,r562,r572,r582,r592,r5a2,
     r5b2,r5c2,r5d2,r5e2,r5f2,r602,r612,r622,r632,r642,r652,r662,r672,
     r682,r692,r6a2,r6b2,r6c2,r6d2,r6e2,r6f2,r702,r712,r722,r732,r742,
     r752,r762,r772,r782,r792,r7a2,r7b2,r7c2,r7d2,r7e2,r7f2,r802,r812,
     r822,r832,r842,r852,r862,r872,r882,r892,r8a2,r8b2,r8c2,r8d2,r8e2,
     r8f2,r902,r912,r922,r932,r942,r952,r962,r972,r982,r992,r9a2,r9b2,
     r9c2,r9d2,r9e2,r9f2,ra02,ra12,ra22,ra32,ra42,ra52,ra62,ra72,ra82,
     ra92,raa2,rab2,rac2,rad2,rae2,raf2,rb02,rb12,rb22,rb32,rb42,rb52,
     rb62,rb72,rb82,rb92,rba2,rbb2,rbc2,rbd2,rbe2,rbf2,rc02,rc12,rc22,
     rc32,rc42,rc52,rc62,rc72,rc82,rc92,rca2,rcb2,rcc2,rcd2,rce2,rcf2,
     rd02,rd12,rd22,rd32,rd42,rd52,rd62,rd72,rd82,rd92,rda2,rdb2,rdc2,
     rdd2,rde2,rdf2,re02,re12,re22,re32,re42,re52,re62,re72,re82,re92,
     rea2,reb2,rec2,red2,ree2,ref2,rf02,rf12,rf22,rf32,rf42,rf52,rf62,
     rf72,rf82,rf92,rfa2,rfb2,rfc2,rfd2,rfe2,rff2]
     %L0x7ffffff8ea00;
mov [r003,r013,r023,r033,r043,r053,r063,r073,r083,r093,r0a3,r0b3,r0c3,
     r0d3,r0e3,r0f3,r103,r113,r123,r133,r143,r153,r163,r173,r183,r193,
     r1a3,r1b3,r1c3,r1d3,r1e3,r1f3,r203,r213,r223,r233,r243,r253,r263,
     r273,r283,r293,r2a3,r2b3,r2c3,r2d3,r2e3,r2f3,r303,r313,r323,r333,
     r343,r353,r363,r373,r383,r393,r3a3,r3b3,r3c3,r3d3,r3e3,r3f3,r403,
     r413,r423,r433,r443,r453,r463,r473,r483,r493,r4a3,r4b3,r4c3,r4d3,
     r4e3,r4f3,r503,r513,r523,r533,r543,r553,r563,r573,r583,r593,r5a3,
     r5b3,r5c3,r5d3,r5e3,r5f3,r603,r613,r623,r633,r643,r653,r663,r673,
     r683,r693,r6a3,r6b3,r6c3,r6d3,r6e3,r6f3,r703,r713,r723,r733,r743,
     r753,r763,r773,r783,r793,r7a3,r7b3,r7c3,r7d3,r7e3,r7f3,r803,r813,
     r823,r833,r843,r853,r863,r873,r883,r893,r8a3,r8b3,r8c3,r8d3,r8e3,
     r8f3,r903,r913,r923,r933,r943,r953,r963,r973,r983,r993,r9a3,r9b3,
     r9c3,r9d3,r9e3,r9f3,ra03,ra13,ra23,ra33,ra43,ra53,ra63,ra73,ra83,
     ra93,raa3,rab3,rac3,rad3,rae3,raf3,rb03,rb13,rb23,rb33,rb43,rb53,
     rb63,rb73,rb83,rb93,rba3,rbb3,rbc3,rbd3,rbe3,rbf3,rc03,rc13,rc23,
     rc33,rc43,rc53,rc63,rc73,rc83,rc93,rca3,rcb3,rcc3,rcd3,rce3,rcf3,
     rd03,rd13,rd23,rd33,rd43,rd53,rd63,rd73,rd83,rd93,rda3,rdb3,rdc3,
     rdd3,rde3,rdf3,re03,re13,re23,re33,re43,re53,re63,re73,re83,re93,
     rea3,reb3,rec3,red3,ree3,ref3,rf03,rf13,rf23,rf33,rf43,rf53,rf63,
     rf73,rf83,rf93,rfa3,rfb3,rfc3,rfd3,rfe3,rff3]
     %L0x7ffffff8ea20;
mov [r004,r014,r024,r034,r044,r054,r064,r074,r084,r094,r0a4,r0b4,r0c4,
     r0d4,r0e4,r0f4,r104,r114,r124,r134,r144,r154,r164,r174,r184,r194,
     r1a4,r1b4,r1c4,r1d4,r1e4,r1f4,r204,r214,r224,r234,r244,r254,r264,
     r274,r284,r294,r2a4,r2b4,r2c4,r2d4,r2e4,r2f4,r304,r314,r324,r334,
     r344,r354,r364,r374,r384,r394,r3a4,r3b4,r3c4,r3d4,r3e4,r3f4,r404,
     r414,r424,r434,r444,r454,r464,r474,r484,r494,r4a4,r4b4,r4c4,r4d4,
     r4e4,r4f4,r504,r514,r524,r534,r544,r554,r564,r574,r584,r594,r5a4,
     r5b4,r5c4,r5d4,r5e4,r5f4,r604,r614,r624,r634,r644,r654,r664,r674,
     r684,r694,r6a4,r6b4,r6c4,r6d4,r6e4,r6f4,r704,r714,r724,r734,r744,
     r754,r764,r774,r784,r794,r7a4,r7b4,r7c4,r7d4,r7e4,r7f4,r804,r814,
     r824,r834,r844,r854,r864,r874,r884,r894,r8a4,r8b4,r8c4,r8d4,r8e4,
     r8f4,r904,r914,r924,r934,r944,r954,r964,r974,r984,r994,r9a4,r9b4,
     r9c4,r9d4,r9e4,r9f4,ra04,ra14,ra24,ra34,ra44,ra54,ra64,ra74,ra84,
     ra94,raa4,rab4,rac4,rad4,rae4,raf4,rb04,rb14,rb24,rb34,rb44,rb54,
     rb64,rb74,rb84,rb94,rba4,rbb4,rbc4,rbd4,rbe4,rbf4,rc04,rc14,rc24,
     rc34,rc44,rc54,rc64,rc74,rc84,rc94,rca4,rcb4,rcc4,rcd4,rce4,rcf4,
     rd04,rd14,rd24,rd34,rd44,rd54,rd64,rd74,rd84,rd94,rda4,rdb4,rdc4,
     rdd4,rde4,rdf4,re04,re14,re24,re34,re44,re54,re64,re74,re84,re94,
     rea4,reb4,rec4,red4,ree4,ref4,rf04,rf14,rf24,rf34,rf44,rf54,rf64,
     rf74,rf84,rf94,rfa4,rfb4,rfc4,rfd4,rfe4,rff4]
     %L0x7ffffff8ea40;
mov [r005,r015,r025,r035,r045,r055,r065,r075,r085,r095,r0a5,r0b5,r0c5,
     r0d5,r0e5,r0f5,r105,r115,r125,r135,r145,r155,r165,r175,r185,r195,
     r1a5,r1b5,r1c5,r1d5,r1e5,r1f5,r205,r215,r225,r235,r245,r255,r265,
     r275,r285,r295,r2a5,r2b5,r2c5,r2d5,r2e5,r2f5,r305,r315,r325,r335,
     r345,r355,r365,r375,r385,r395,r3a5,r3b5,r3c5,r3d5,r3e5,r3f5,r405,
     r415,r425,r435,r445,r455,r465,r475,r485,r495,r4a5,r4b5,r4c5,r4d5,
     r4e5,r4f5,r505,r515,r525,r535,r545,r555,r565,r575,r585,r595,r5a5,
     r5b5,r5c5,r5d5,r5e5,r5f5,r605,r615,r625,r635,r645,r655,r665,r675,
     r685,r695,r6a5,r6b5,r6c5,r6d5,r6e5,r6f5,r705,r715,r725,r735,r745,
     r755,r765,r775,r785,r795,r7a5,r7b5,r7c5,r7d5,r7e5,r7f5,r805,r815,
     r825,r835,r845,r855,r865,r875,r885,r895,r8a5,r8b5,r8c5,r8d5,r8e5,
     r8f5,r905,r915,r925,r935,r945,r955,r965,r975,r985,r995,r9a5,r9b5,
     r9c5,r9d5,r9e5,r9f5,ra05,ra15,ra25,ra35,ra45,ra55,ra65,ra75,ra85,
     ra95,raa5,rab5,rac5,rad5,rae5,raf5,rb05,rb15,rb25,rb35,rb45,rb55,
     rb65,rb75,rb85,rb95,rba5,rbb5,rbc5,rbd5,rbe5,rbf5,rc05,rc15,rc25,
     rc35,rc45,rc55,rc65,rc75,rc85,rc95,rca5,rcb5,rcc5,rcd5,rce5,rcf5,
     rd05,rd15,rd25,rd35,rd45,rd55,rd65,rd75,rd85,rd95,rda5,rdb5,rdc5,
     rdd5,rde5,rdf5,re05,re15,re25,re35,re45,re55,re65,re75,re85,re95,
     rea5,reb5,rec5,red5,ree5,ref5,rf05,rf15,rf25,rf35,rf45,rf55,rf65,
     rf75,rf85,rf95,rfa5,rfb5,rfc5,rfd5,rfe5,rff5]
     %L0x7ffffff8ea60;
mov [r006,r016,r026,r036,r046,r056,r066,r076,r086,r096,r0a6,r0b6,r0c6,
     r0d6,r0e6,r0f6,r106,r116,r126,r136,r146,r156,r166,r176,r186,r196,
     r1a6,r1b6,r1c6,r1d6,r1e6,r1f6,r206,r216,r226,r236,r246,r256,r266,
     r276,r286,r296,r2a6,r2b6,r2c6,r2d6,r2e6,r2f6,r306,r316,r326,r336,
     r346,r356,r366,r376,r386,r396,r3a6,r3b6,r3c6,r3d6,r3e6,r3f6,r406,
     r416,r426,r436,r446,r456,r466,r476,r486,r496,r4a6,r4b6,r4c6,r4d6,
     r4e6,r4f6,r506,r516,r526,r536,r546,r556,r566,r576,r586,r596,r5a6,
     r5b6,r5c6,r5d6,r5e6,r5f6,r606,r616,r626,r636,r646,r656,r666,r676,
     r686,r696,r6a6,r6b6,r6c6,r6d6,r6e6,r6f6,r706,r716,r726,r736,r746,
     r756,r766,r776,r786,r796,r7a6,r7b6,r7c6,r7d6,r7e6,r7f6,r806,r816,
     r826,r836,r846,r856,r866,r876,r886,r896,r8a6,r8b6,r8c6,r8d6,r8e6,
     r8f6,r906,r916,r926,r936,r946,r956,r966,r976,r986,r996,r9a6,r9b6,
     r9c6,r9d6,r9e6,r9f6,ra06,ra16,ra26,ra36,ra46,ra56,ra66,ra76,ra86,
     ra96,raa6,rab6,rac6,rad6,rae6,raf6,rb06,rb16,rb26,rb36,rb46,rb56,
     rb66,rb76,rb86,rb96,rba6,rbb6,rbc6,rbd6,rbe6,rbf6,rc06,rc16,rc26,
     rc36,rc46,rc56,rc66,rc76,rc86,rc96,rca6,rcb6,rcc6,rcd6,rce6,rcf6,
     rd06,rd16,rd26,rd36,rd46,rd56,rd66,rd76,rd86,rd96,rda6,rdb6,rdc6,
     rdd6,rde6,rdf6,re06,re16,re26,re36,re46,re56,re66,re76,re86,re96,
     rea6,reb6,rec6,red6,ree6,ref6,rf06,rf16,rf26,rf36,rf46,rf56,rf66,
     rf76,rf86,rf96,rfa6,rfb6,rfc6,rfd6,rfe6,rff6]
     %L0x7ffffff8ea80;
mov [r007,r017,r027,r037,r047,r057,r067,r077,r087,r097,r0a7,r0b7,r0c7,
     r0d7,r0e7,r0f7,r107,r117,r127,r137,r147,r157,r167,r177,r187,r197,
     r1a7,r1b7,r1c7,r1d7,r1e7,r1f7,r207,r217,r227,r237,r247,r257,r267,
     r277,r287,r297,r2a7,r2b7,r2c7,r2d7,r2e7,r2f7,r307,r317,r327,r337,
     r347,r357,r367,r377,r387,r397,r3a7,r3b7,r3c7,r3d7,r3e7,r3f7,r407,
     r417,r427,r437,r447,r457,r467,r477,r487,r497,r4a7,r4b7,r4c7,r4d7,
     r4e7,r4f7,r507,r517,r527,r537,r547,r557,r567,r577,r587,r597,r5a7,
     r5b7,r5c7,r5d7,r5e7,r5f7,r607,r617,r627,r637,r647,r657,r667,r677,
     r687,r697,r6a7,r6b7,r6c7,r6d7,r6e7,r6f7,r707,r717,r727,r737,r747,
     r757,r767,r777,r787,r797,r7a7,r7b7,r7c7,r7d7,r7e7,r7f7,r807,r817,
     r827,r837,r847,r857,r867,r877,r887,r897,r8a7,r8b7,r8c7,r8d7,r8e7,
     r8f7,r907,r917,r927,r937,r947,r957,r967,r977,r987,r997,r9a7,r9b7,
     r9c7,r9d7,r9e7,r9f7,ra07,ra17,ra27,ra37,ra47,ra57,ra67,ra77,ra87,
     ra97,raa7,rab7,rac7,rad7,rae7,raf7,rb07,rb17,rb27,rb37,rb47,rb57,
     rb67,rb77,rb87,rb97,rba7,rbb7,rbc7,rbd7,rbe7,rbf7,rc07,rc17,rc27,
     rc37,rc47,rc57,rc67,rc77,rc87,rc97,rca7,rcb7,rcc7,rcd7,rce7,rcf7,
     rd07,rd17,rd27,rd37,rd47,rd57,rd67,rd77,rd87,rd97,rda7,rdb7,rdc7,
     rdd7,rde7,rdf7,re07,re17,re27,re37,re47,re57,re67,re77,re87,re97,
     rea7,reb7,rec7,red7,ree7,ref7,rf07,rf17,rf27,rf37,rf47,rf57,rf67,
     rf77,rf87,rf97,rfa7,rfb7,rfc7,rfd7,rfe7,rff7]
     %L0x7ffffff8eaa0;
mov [r008,r018,r028,r038,r048,r058,r068,r078,r088,r098,r0a8,r0b8,r0c8,
     r0d8,r0e8,r0f8,r108,r118,r128,r138,r148,r158,r168,r178,r188,r198,
     r1a8,r1b8,r1c8,r1d8,r1e8,r1f8,r208,r218,r228,r238,r248,r258,r268,
     r278,r288,r298,r2a8,r2b8,r2c8,r2d8,r2e8,r2f8,r308,r318,r328,r338,
     r348,r358,r368,r378,r388,r398,r3a8,r3b8,r3c8,r3d8,r3e8,r3f8,r408,
     r418,r428,r438,r448,r458,r468,r478,r488,r498,r4a8,r4b8,r4c8,r4d8,
     r4e8,r4f8,r508,r518,r528,r538,r548,r558,r568,r578,r588,r598,r5a8,
     r5b8,r5c8,r5d8,r5e8,r5f8,r608,r618,r628,r638,r648,r658,r668,r678,
     r688,r698,r6a8,r6b8,r6c8,r6d8,r6e8,r6f8,r708,r718,r728,r738,r748,
     r758,r768,r778,r788,r798,r7a8,r7b8,r7c8,r7d8,r7e8,r7f8,r808,r818,
     r828,r838,r848,r858,r868,r878,r888,r898,r8a8,r8b8,r8c8,r8d8,r8e8,
     r8f8,r908,r918,r928,r938,r948,r958,r968,r978,r988,r998,r9a8,r9b8,
     r9c8,r9d8,r9e8,r9f8,ra08,ra18,ra28,ra38,ra48,ra58,ra68,ra78,ra88,
     ra98,raa8,rab8,rac8,rad8,rae8,raf8,rb08,rb18,rb28,rb38,rb48,rb58,
     rb68,rb78,rb88,rb98,rba8,rbb8,rbc8,rbd8,rbe8,rbf8,rc08,rc18,rc28,
     rc38,rc48,rc58,rc68,rc78,rc88,rc98,rca8,rcb8,rcc8,rcd8,rce8,rcf8,
     rd08,rd18,rd28,rd38,rd48,rd58,rd68,rd78,rd88,rd98,rda8,rdb8,rdc8,
     rdd8,rde8,rdf8,re08,re18,re28,re38,re48,re58,re68,re78,re88,re98,
     rea8,reb8,rec8,red8,ree8,ref8,rf08,rf18,rf28,rf38,rf48,rf58,rf68,
     rf78,rf88,rf98,rfa8,rfb8,rfc8,rfd8,rfe8,rff8]
     %L0x7ffffff8eac0;
mov [r009,r019,r029,r039,r049,r059,r069,r079,r089,r099,r0a9,r0b9,r0c9,
     r0d9,r0e9,r0f9,r109,r119,r129,r139,r149,r159,r169,r179,r189,r199,
     r1a9,r1b9,r1c9,r1d9,r1e9,r1f9,r209,r219,r229,r239,r249,r259,r269,
     r279,r289,r299,r2a9,r2b9,r2c9,r2d9,r2e9,r2f9,r309,r319,r329,r339,
     r349,r359,r369,r379,r389,r399,r3a9,r3b9,r3c9,r3d9,r3e9,r3f9,r409,
     r419,r429,r439,r449,r459,r469,r479,r489,r499,r4a9,r4b9,r4c9,r4d9,
     r4e9,r4f9,r509,r519,r529,r539,r549,r559,r569,r579,r589,r599,r5a9,
     r5b9,r5c9,r5d9,r5e9,r5f9,r609,r619,r629,r639,r649,r659,r669,r679,
     r689,r699,r6a9,r6b9,r6c9,r6d9,r6e9,r6f9,r709,r719,r729,r739,r749,
     r759,r769,r779,r789,r799,r7a9,r7b9,r7c9,r7d9,r7e9,r7f9,r809,r819,
     r829,r839,r849,r859,r869,r879,r889,r899,r8a9,r8b9,r8c9,r8d9,r8e9,
     r8f9,r909,r919,r929,r939,r949,r959,r969,r979,r989,r999,r9a9,r9b9,
     r9c9,r9d9,r9e9,r9f9,ra09,ra19,ra29,ra39,ra49,ra59,ra69,ra79,ra89,
     ra99,raa9,rab9,rac9,rad9,rae9,raf9,rb09,rb19,rb29,rb39,rb49,rb59,
     rb69,rb79,rb89,rb99,rba9,rbb9,rbc9,rbd9,rbe9,rbf9,rc09,rc19,rc29,
     rc39,rc49,rc59,rc69,rc79,rc89,rc99,rca9,rcb9,rcc9,rcd9,rce9,rcf9,
     rd09,rd19,rd29,rd39,rd49,rd59,rd69,rd79,rd89,rd99,rda9,rdb9,rdc9,
     rdd9,rde9,rdf9,re09,re19,re29,re39,re49,re59,re69,re79,re89,re99,
     rea9,reb9,rec9,red9,ree9,ref9,rf09,rf19,rf29,rf39,rf49,rf59,rf69,
     rf79,rf89,rf99,rfa9,rfb9,rfc9,rfd9,rfe9,rff9]
     %L0x7ffffff8eae0;
mov [r00a,r01a,r02a,r03a,r04a,r05a,r06a,r07a,r08a,r09a,r0aa,r0ba,r0ca,
     r0da,r0ea,r0fa,r10a,r11a,r12a,r13a,r14a,r15a,r16a,r17a,r18a,r19a,
     r1aa,r1ba,r1ca,r1da,r1ea,r1fa,r20a,r21a,r22a,r23a,r24a,r25a,r26a,
     r27a,r28a,r29a,r2aa,r2ba,r2ca,r2da,r2ea,r2fa,r30a,r31a,r32a,r33a,
     r34a,r35a,r36a,r37a,r38a,r39a,r3aa,r3ba,r3ca,r3da,r3ea,r3fa,r40a,
     r41a,r42a,r43a,r44a,r45a,r46a,r47a,r48a,r49a,r4aa,r4ba,r4ca,r4da,
     r4ea,r4fa,r50a,r51a,r52a,r53a,r54a,r55a,r56a,r57a,r58a,r59a,r5aa,
     r5ba,r5ca,r5da,r5ea,r5fa,r60a,r61a,r62a,r63a,r64a,r65a,r66a,r67a,
     r68a,r69a,r6aa,r6ba,r6ca,r6da,r6ea,r6fa,r70a,r71a,r72a,r73a,r74a,
     r75a,r76a,r77a,r78a,r79a,r7aa,r7ba,r7ca,r7da,r7ea,r7fa,r80a,r81a,
     r82a,r83a,r84a,r85a,r86a,r87a,r88a,r89a,r8aa,r8ba,r8ca,r8da,r8ea,
     r8fa,r90a,r91a,r92a,r93a,r94a,r95a,r96a,r97a,r98a,r99a,r9aa,r9ba,
     r9ca,r9da,r9ea,r9fa,ra0a,ra1a,ra2a,ra3a,ra4a,ra5a,ra6a,ra7a,ra8a,
     ra9a,raaa,raba,raca,rada,raea,rafa,rb0a,rb1a,rb2a,rb3a,rb4a,rb5a,
     rb6a,rb7a,rb8a,rb9a,rbaa,rbba,rbca,rbda,rbea,rbfa,rc0a,rc1a,rc2a,
     rc3a,rc4a,rc5a,rc6a,rc7a,rc8a,rc9a,rcaa,rcba,rcca,rcda,rcea,rcfa,
     rd0a,rd1a,rd2a,rd3a,rd4a,rd5a,rd6a,rd7a,rd8a,rd9a,rdaa,rdba,rdca,
     rdda,rdea,rdfa,re0a,re1a,re2a,re3a,re4a,re5a,re6a,re7a,re8a,re9a,
     reaa,reba,reca,reda,reea,refa,rf0a,rf1a,rf2a,rf3a,rf4a,rf5a,rf6a,
     rf7a,rf8a,rf9a,rfaa,rfba,rfca,rfda,rfea,rffa]
     %L0x7ffffff8eb00;
mov [r00b,r01b,r02b,r03b,r04b,r05b,r06b,r07b,r08b,r09b,r0ab,r0bb,r0cb,
     r0db,r0eb,r0fb,r10b,r11b,r12b,r13b,r14b,r15b,r16b,r17b,r18b,r19b,
     r1ab,r1bb,r1cb,r1db,r1eb,r1fb,r20b,r21b,r22b,r23b,r24b,r25b,r26b,
     r27b,r28b,r29b,r2ab,r2bb,r2cb,r2db,r2eb,r2fb,r30b,r31b,r32b,r33b,
     r34b,r35b,r36b,r37b,r38b,r39b,r3ab,r3bb,r3cb,r3db,r3eb,r3fb,r40b,
     r41b,r42b,r43b,r44b,r45b,r46b,r47b,r48b,r49b,r4ab,r4bb,r4cb,r4db,
     r4eb,r4fb,r50b,r51b,r52b,r53b,r54b,r55b,r56b,r57b,r58b,r59b,r5ab,
     r5bb,r5cb,r5db,r5eb,r5fb,r60b,r61b,r62b,r63b,r64b,r65b,r66b,r67b,
     r68b,r69b,r6ab,r6bb,r6cb,r6db,r6eb,r6fb,r70b,r71b,r72b,r73b,r74b,
     r75b,r76b,r77b,r78b,r79b,r7ab,r7bb,r7cb,r7db,r7eb,r7fb,r80b,r81b,
     r82b,r83b,r84b,r85b,r86b,r87b,r88b,r89b,r8ab,r8bb,r8cb,r8db,r8eb,
     r8fb,r90b,r91b,r92b,r93b,r94b,r95b,r96b,r97b,r98b,r99b,r9ab,r9bb,
     r9cb,r9db,r9eb,r9fb,ra0b,ra1b,ra2b,ra3b,ra4b,ra5b,ra6b,ra7b,ra8b,
     ra9b,raab,rabb,racb,radb,raeb,rafb,rb0b,rb1b,rb2b,rb3b,rb4b,rb5b,
     rb6b,rb7b,rb8b,rb9b,rbab,rbbb,rbcb,rbdb,rbeb,rbfb,rc0b,rc1b,rc2b,
     rc3b,rc4b,rc5b,rc6b,rc7b,rc8b,rc9b,rcab,rcbb,rccb,rcdb,rceb,rcfb,
     rd0b,rd1b,rd2b,rd3b,rd4b,rd5b,rd6b,rd7b,rd8b,rd9b,rdab,rdbb,rdcb,
     rddb,rdeb,rdfb,re0b,re1b,re2b,re3b,re4b,re5b,re6b,re7b,re8b,re9b,
     reab,rebb,recb,redb,reeb,refb,rf0b,rf1b,rf2b,rf3b,rf4b,rf5b,rf6b,
     rf7b,rf8b,rf9b,rfab,rfbb,rfcb,rfdb,rfeb,rffb]
     %L0x7ffffff8eb20;

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
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r800,r801,r802,r803,r804,r805,r806,r807,r808,r809,r80a,r80b])
      ((poly X [a800,a801,a802,a803,a804,a805,a806,a807,a808,a809,a80a,a80b])*
       (poly X [b800,b801,b802,b803,b804,b805,b806,b807,b808,b809,b80a,b80b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r810,r811,r812,r813,r814,r815,r816,r817,r818,r819,r81a,r81b])
      ((poly X [a810,a811,a812,a813,a814,a815,a816,a817,a818,a819,a81a,a81b])*
       (poly X [b810,b811,b812,b813,b814,b815,b816,b817,b818,b819,b81a,b81b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r820,r821,r822,r823,r824,r825,r826,r827,r828,r829,r82a,r82b])
      ((poly X [a820,a821,a822,a823,a824,a825,a826,a827,a828,a829,a82a,a82b])*
       (poly X [b820,b821,b822,b823,b824,b825,b826,b827,b828,b829,b82a,b82b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r830,r831,r832,r833,r834,r835,r836,r837,r838,r839,r83a,r83b])
      ((poly X [a830,a831,a832,a833,a834,a835,a836,a837,a838,a839,a83a,a83b])*
       (poly X [b830,b831,b832,b833,b834,b835,b836,b837,b838,b839,b83a,b83b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r840,r841,r842,r843,r844,r845,r846,r847,r848,r849,r84a,r84b])
      ((poly X [a840,a841,a842,a843,a844,a845,a846,a847,a848,a849,a84a,a84b])*
       (poly X [b840,b841,b842,b843,b844,b845,b846,b847,b848,b849,b84a,b84b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r850,r851,r852,r853,r854,r855,r856,r857,r858,r859,r85a,r85b])
      ((poly X [a850,a851,a852,a853,a854,a855,a856,a857,a858,a859,a85a,a85b])*
       (poly X [b850,b851,b852,b853,b854,b855,b856,b857,b858,b859,b85a,b85b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r860,r861,r862,r863,r864,r865,r866,r867,r868,r869,r86a,r86b])
      ((poly X [a860,a861,a862,a863,a864,a865,a866,a867,a868,a869,a86a,a86b])*
       (poly X [b860,b861,b862,b863,b864,b865,b866,b867,b868,b869,b86a,b86b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r870,r871,r872,r873,r874,r875,r876,r877,r878,r879,r87a,r87b])
      ((poly X [a870,a871,a872,a873,a874,a875,a876,a877,a878,a879,a87a,a87b])*
       (poly X [b870,b871,b872,b873,b874,b875,b876,b877,b878,b879,b87a,b87b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r880,r881,r882,r883,r884,r885,r886,r887,r888,r889,r88a,r88b])
      ((poly X [a880,a881,a882,a883,a884,a885,a886,a887,a888,a889,a88a,a88b])*
       (poly X [b880,b881,b882,b883,b884,b885,b886,b887,b888,b889,b88a,b88b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r890,r891,r892,r893,r894,r895,r896,r897,r898,r899,r89a,r89b])
      ((poly X [a890,a891,a892,a893,a894,a895,a896,a897,a898,a899,a89a,a89b])*
       (poly X [b890,b891,b892,b893,b894,b895,b896,b897,b898,b899,b89a,b89b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r8a0,r8a1,r8a2,r8a3,r8a4,r8a5,r8a6,r8a7,r8a8,r8a9,r8aa,r8ab])
      ((poly X [a8a0,a8a1,a8a2,a8a3,a8a4,a8a5,a8a6,a8a7,a8a8,a8a9,a8aa,a8ab])*
       (poly X [b8a0,b8a1,b8a2,b8a3,b8a4,b8a5,b8a6,b8a7,b8a8,b8a9,b8aa,b8ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r8b0,r8b1,r8b2,r8b3,r8b4,r8b5,r8b6,r8b7,r8b8,r8b9,r8ba,r8bb])
      ((poly X [a8b0,a8b1,a8b2,a8b3,a8b4,a8b5,a8b6,a8b7,a8b8,a8b9,a8ba,a8bb])*
       (poly X [b8b0,b8b1,b8b2,b8b3,b8b4,b8b5,b8b6,b8b7,b8b8,b8b9,b8ba,b8bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r8c0,r8c1,r8c2,r8c3,r8c4,r8c5,r8c6,r8c7,r8c8,r8c9,r8ca,r8cb])
      ((poly X [a8c0,a8c1,a8c2,a8c3,a8c4,a8c5,a8c6,a8c7,a8c8,a8c9,a8ca,a8cb])*
       (poly X [b8c0,b8c1,b8c2,b8c3,b8c4,b8c5,b8c6,b8c7,b8c8,b8c9,b8ca,b8cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r8d0,r8d1,r8d2,r8d3,r8d4,r8d5,r8d6,r8d7,r8d8,r8d9,r8da,r8db])
      ((poly X [a8d0,a8d1,a8d2,a8d3,a8d4,a8d5,a8d6,a8d7,a8d8,a8d9,a8da,a8db])*
       (poly X [b8d0,b8d1,b8d2,b8d3,b8d4,b8d5,b8d6,b8d7,b8d8,b8d9,b8da,b8db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r8e0,r8e1,r8e2,r8e3,r8e4,r8e5,r8e6,r8e7,r8e8,r8e9,r8ea,r8eb])
      ((poly X [a8e0,a8e1,a8e2,a8e3,a8e4,a8e5,a8e6,a8e7,a8e8,a8e9,a8ea,a8eb])*
       (poly X [b8e0,b8e1,b8e2,b8e3,b8e4,b8e5,b8e6,b8e7,b8e8,b8e9,b8ea,b8eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r8f0,r8f1,r8f2,r8f3,r8f4,r8f5,r8f6,r8f7,r8f8,r8f9,r8fa,r8fb])
      ((poly X [a8f0,a8f1,a8f2,a8f3,a8f4,a8f5,a8f6,a8f7,a8f8,a8f9,a8fa,a8fb])*
       (poly X [b8f0,b8f1,b8f2,b8f3,b8f4,b8f5,b8f6,b8f7,b8f8,b8f9,b8fa,b8fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r900,r901,r902,r903,r904,r905,r906,r907,r908,r909,r90a,r90b])
      ((poly X [a900,a901,a902,a903,a904,a905,a906,a907,a908,a909,a90a,a90b])*
       (poly X [b900,b901,b902,b903,b904,b905,b906,b907,b908,b909,b90a,b90b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r910,r911,r912,r913,r914,r915,r916,r917,r918,r919,r91a,r91b])
      ((poly X [a910,a911,a912,a913,a914,a915,a916,a917,a918,a919,a91a,a91b])*
       (poly X [b910,b911,b912,b913,b914,b915,b916,b917,b918,b919,b91a,b91b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r920,r921,r922,r923,r924,r925,r926,r927,r928,r929,r92a,r92b])
      ((poly X [a920,a921,a922,a923,a924,a925,a926,a927,a928,a929,a92a,a92b])*
       (poly X [b920,b921,b922,b923,b924,b925,b926,b927,b928,b929,b92a,b92b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r930,r931,r932,r933,r934,r935,r936,r937,r938,r939,r93a,r93b])
      ((poly X [a930,a931,a932,a933,a934,a935,a936,a937,a938,a939,a93a,a93b])*
       (poly X [b930,b931,b932,b933,b934,b935,b936,b937,b938,b939,b93a,b93b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r940,r941,r942,r943,r944,r945,r946,r947,r948,r949,r94a,r94b])
      ((poly X [a940,a941,a942,a943,a944,a945,a946,a947,a948,a949,a94a,a94b])*
       (poly X [b940,b941,b942,b943,b944,b945,b946,b947,b948,b949,b94a,b94b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r950,r951,r952,r953,r954,r955,r956,r957,r958,r959,r95a,r95b])
      ((poly X [a950,a951,a952,a953,a954,a955,a956,a957,a958,a959,a95a,a95b])*
       (poly X [b950,b951,b952,b953,b954,b955,b956,b957,b958,b959,b95a,b95b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r960,r961,r962,r963,r964,r965,r966,r967,r968,r969,r96a,r96b])
      ((poly X [a960,a961,a962,a963,a964,a965,a966,a967,a968,a969,a96a,a96b])*
       (poly X [b960,b961,b962,b963,b964,b965,b966,b967,b968,b969,b96a,b96b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r970,r971,r972,r973,r974,r975,r976,r977,r978,r979,r97a,r97b])
      ((poly X [a970,a971,a972,a973,a974,a975,a976,a977,a978,a979,a97a,a97b])*
       (poly X [b970,b971,b972,b973,b974,b975,b976,b977,b978,b979,b97a,b97b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r980,r981,r982,r983,r984,r985,r986,r987,r988,r989,r98a,r98b])
      ((poly X [a980,a981,a982,a983,a984,a985,a986,a987,a988,a989,a98a,a98b])*
       (poly X [b980,b981,b982,b983,b984,b985,b986,b987,b988,b989,b98a,b98b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r990,r991,r992,r993,r994,r995,r996,r997,r998,r999,r99a,r99b])
      ((poly X [a990,a991,a992,a993,a994,a995,a996,a997,a998,a999,a99a,a99b])*
       (poly X [b990,b991,b992,b993,b994,b995,b996,b997,b998,b999,b99a,b99b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r9a0,r9a1,r9a2,r9a3,r9a4,r9a5,r9a6,r9a7,r9a8,r9a9,r9aa,r9ab])
      ((poly X [a9a0,a9a1,a9a2,a9a3,a9a4,a9a5,a9a6,a9a7,a9a8,a9a9,a9aa,a9ab])*
       (poly X [b9a0,b9a1,b9a2,b9a3,b9a4,b9a5,b9a6,b9a7,b9a8,b9a9,b9aa,b9ab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r9b0,r9b1,r9b2,r9b3,r9b4,r9b5,r9b6,r9b7,r9b8,r9b9,r9ba,r9bb])
      ((poly X [a9b0,a9b1,a9b2,a9b3,a9b4,a9b5,a9b6,a9b7,a9b8,a9b9,a9ba,a9bb])*
       (poly X [b9b0,b9b1,b9b2,b9b3,b9b4,b9b5,b9b6,b9b7,b9b8,b9b9,b9ba,b9bb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r9c0,r9c1,r9c2,r9c3,r9c4,r9c5,r9c6,r9c7,r9c8,r9c9,r9ca,r9cb])
      ((poly X [a9c0,a9c1,a9c2,a9c3,a9c4,a9c5,a9c6,a9c7,a9c8,a9c9,a9ca,a9cb])*
       (poly X [b9c0,b9c1,b9c2,b9c3,b9c4,b9c5,b9c6,b9c7,b9c8,b9c9,b9ca,b9cb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r9d0,r9d1,r9d2,r9d3,r9d4,r9d5,r9d6,r9d7,r9d8,r9d9,r9da,r9db])
      ((poly X [a9d0,a9d1,a9d2,a9d3,a9d4,a9d5,a9d6,a9d7,a9d8,a9d9,a9da,a9db])*
       (poly X [b9d0,b9d1,b9d2,b9d3,b9d4,b9d5,b9d6,b9d7,b9d8,b9d9,b9da,b9db]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r9e0,r9e1,r9e2,r9e3,r9e4,r9e5,r9e6,r9e7,r9e8,r9e9,r9ea,r9eb])
      ((poly X [a9e0,a9e1,a9e2,a9e3,a9e4,a9e5,a9e6,a9e7,a9e8,a9e9,a9ea,a9eb])*
       (poly X [b9e0,b9e1,b9e2,b9e3,b9e4,b9e5,b9e6,b9e7,b9e8,b9e9,b9ea,b9eb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [r9f0,r9f1,r9f2,r9f3,r9f4,r9f5,r9f6,r9f7,r9f8,r9f9,r9fa,r9fb])
      ((poly X [a9f0,a9f1,a9f2,a9f3,a9f4,a9f5,a9f6,a9f7,a9f8,a9f9,a9fa,a9fb])*
       (poly X [b9f0,b9f1,b9f2,b9f3,b9f4,b9f5,b9f6,b9f7,b9f8,b9f9,b9fa,b9fb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra00,ra01,ra02,ra03,ra04,ra05,ra06,ra07,ra08,ra09,ra0a,ra0b])
      ((poly X [aa00,aa01,aa02,aa03,aa04,aa05,aa06,aa07,aa08,aa09,aa0a,aa0b])*
       (poly X [ba00,ba01,ba02,ba03,ba04,ba05,ba06,ba07,ba08,ba09,ba0a,ba0b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra10,ra11,ra12,ra13,ra14,ra15,ra16,ra17,ra18,ra19,ra1a,ra1b])
      ((poly X [aa10,aa11,aa12,aa13,aa14,aa15,aa16,aa17,aa18,aa19,aa1a,aa1b])*
       (poly X [ba10,ba11,ba12,ba13,ba14,ba15,ba16,ba17,ba18,ba19,ba1a,ba1b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra20,ra21,ra22,ra23,ra24,ra25,ra26,ra27,ra28,ra29,ra2a,ra2b])
      ((poly X [aa20,aa21,aa22,aa23,aa24,aa25,aa26,aa27,aa28,aa29,aa2a,aa2b])*
       (poly X [ba20,ba21,ba22,ba23,ba24,ba25,ba26,ba27,ba28,ba29,ba2a,ba2b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra30,ra31,ra32,ra33,ra34,ra35,ra36,ra37,ra38,ra39,ra3a,ra3b])
      ((poly X [aa30,aa31,aa32,aa33,aa34,aa35,aa36,aa37,aa38,aa39,aa3a,aa3b])*
       (poly X [ba30,ba31,ba32,ba33,ba34,ba35,ba36,ba37,ba38,ba39,ba3a,ba3b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra40,ra41,ra42,ra43,ra44,ra45,ra46,ra47,ra48,ra49,ra4a,ra4b])
      ((poly X [aa40,aa41,aa42,aa43,aa44,aa45,aa46,aa47,aa48,aa49,aa4a,aa4b])*
       (poly X [ba40,ba41,ba42,ba43,ba44,ba45,ba46,ba47,ba48,ba49,ba4a,ba4b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra50,ra51,ra52,ra53,ra54,ra55,ra56,ra57,ra58,ra59,ra5a,ra5b])
      ((poly X [aa50,aa51,aa52,aa53,aa54,aa55,aa56,aa57,aa58,aa59,aa5a,aa5b])*
       (poly X [ba50,ba51,ba52,ba53,ba54,ba55,ba56,ba57,ba58,ba59,ba5a,ba5b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra60,ra61,ra62,ra63,ra64,ra65,ra66,ra67,ra68,ra69,ra6a,ra6b])
      ((poly X [aa60,aa61,aa62,aa63,aa64,aa65,aa66,aa67,aa68,aa69,aa6a,aa6b])*
       (poly X [ba60,ba61,ba62,ba63,ba64,ba65,ba66,ba67,ba68,ba69,ba6a,ba6b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra70,ra71,ra72,ra73,ra74,ra75,ra76,ra77,ra78,ra79,ra7a,ra7b])
      ((poly X [aa70,aa71,aa72,aa73,aa74,aa75,aa76,aa77,aa78,aa79,aa7a,aa7b])*
       (poly X [ba70,ba71,ba72,ba73,ba74,ba75,ba76,ba77,ba78,ba79,ba7a,ba7b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra80,ra81,ra82,ra83,ra84,ra85,ra86,ra87,ra88,ra89,ra8a,ra8b])
      ((poly X [aa80,aa81,aa82,aa83,aa84,aa85,aa86,aa87,aa88,aa89,aa8a,aa8b])*
       (poly X [ba80,ba81,ba82,ba83,ba84,ba85,ba86,ba87,ba88,ba89,ba8a,ba8b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ra90,ra91,ra92,ra93,ra94,ra95,ra96,ra97,ra98,ra99,ra9a,ra9b])
      ((poly X [aa90,aa91,aa92,aa93,aa94,aa95,aa96,aa97,aa98,aa99,aa9a,aa9b])*
       (poly X [ba90,ba91,ba92,ba93,ba94,ba95,ba96,ba97,ba98,ba99,ba9a,ba9b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [raa0,raa1,raa2,raa3,raa4,raa5,raa6,raa7,raa8,raa9,raaa,raab])
      ((poly X [aaa0,aaa1,aaa2,aaa3,aaa4,aaa5,aaa6,aaa7,aaa8,aaa9,aaaa,aaab])*
       (poly X [baa0,baa1,baa2,baa3,baa4,baa5,baa6,baa7,baa8,baa9,baaa,baab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rab0,rab1,rab2,rab3,rab4,rab5,rab6,rab7,rab8,rab9,raba,rabb])
      ((poly X [aab0,aab1,aab2,aab3,aab4,aab5,aab6,aab7,aab8,aab9,aaba,aabb])*
       (poly X [bab0,bab1,bab2,bab3,bab4,bab5,bab6,bab7,bab8,bab9,baba,babb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rac0,rac1,rac2,rac3,rac4,rac5,rac6,rac7,rac8,rac9,raca,racb])
      ((poly X [aac0,aac1,aac2,aac3,aac4,aac5,aac6,aac7,aac8,aac9,aaca,aacb])*
       (poly X [bac0,bac1,bac2,bac3,bac4,bac5,bac6,bac7,bac8,bac9,baca,bacb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rad0,rad1,rad2,rad3,rad4,rad5,rad6,rad7,rad8,rad9,rada,radb])
      ((poly X [aad0,aad1,aad2,aad3,aad4,aad5,aad6,aad7,aad8,aad9,aada,aadb])*
       (poly X [bad0,bad1,bad2,bad3,bad4,bad5,bad6,bad7,bad8,bad9,bada,badb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rae0,rae1,rae2,rae3,rae4,rae5,rae6,rae7,rae8,rae9,raea,raeb])
      ((poly X [aae0,aae1,aae2,aae3,aae4,aae5,aae6,aae7,aae8,aae9,aaea,aaeb])*
       (poly X [bae0,bae1,bae2,bae3,bae4,bae5,bae6,bae7,bae8,bae9,baea,baeb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [raf0,raf1,raf2,raf3,raf4,raf5,raf6,raf7,raf8,raf9,rafa,rafb])
      ((poly X [aaf0,aaf1,aaf2,aaf3,aaf4,aaf5,aaf6,aaf7,aaf8,aaf9,aafa,aafb])*
       (poly X [baf0,baf1,baf2,baf3,baf4,baf5,baf6,baf7,baf8,baf9,bafa,bafb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb00,rb01,rb02,rb03,rb04,rb05,rb06,rb07,rb08,rb09,rb0a,rb0b])
      ((poly X [ab00,ab01,ab02,ab03,ab04,ab05,ab06,ab07,ab08,ab09,ab0a,ab0b])*
       (poly X [bb00,bb01,bb02,bb03,bb04,bb05,bb06,bb07,bb08,bb09,bb0a,bb0b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb10,rb11,rb12,rb13,rb14,rb15,rb16,rb17,rb18,rb19,rb1a,rb1b])
      ((poly X [ab10,ab11,ab12,ab13,ab14,ab15,ab16,ab17,ab18,ab19,ab1a,ab1b])*
       (poly X [bb10,bb11,bb12,bb13,bb14,bb15,bb16,bb17,bb18,bb19,bb1a,bb1b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb20,rb21,rb22,rb23,rb24,rb25,rb26,rb27,rb28,rb29,rb2a,rb2b])
      ((poly X [ab20,ab21,ab22,ab23,ab24,ab25,ab26,ab27,ab28,ab29,ab2a,ab2b])*
       (poly X [bb20,bb21,bb22,bb23,bb24,bb25,bb26,bb27,bb28,bb29,bb2a,bb2b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb30,rb31,rb32,rb33,rb34,rb35,rb36,rb37,rb38,rb39,rb3a,rb3b])
      ((poly X [ab30,ab31,ab32,ab33,ab34,ab35,ab36,ab37,ab38,ab39,ab3a,ab3b])*
       (poly X [bb30,bb31,bb32,bb33,bb34,bb35,bb36,bb37,bb38,bb39,bb3a,bb3b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb40,rb41,rb42,rb43,rb44,rb45,rb46,rb47,rb48,rb49,rb4a,rb4b])
      ((poly X [ab40,ab41,ab42,ab43,ab44,ab45,ab46,ab47,ab48,ab49,ab4a,ab4b])*
       (poly X [bb40,bb41,bb42,bb43,bb44,bb45,bb46,bb47,bb48,bb49,bb4a,bb4b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb50,rb51,rb52,rb53,rb54,rb55,rb56,rb57,rb58,rb59,rb5a,rb5b])
      ((poly X [ab50,ab51,ab52,ab53,ab54,ab55,ab56,ab57,ab58,ab59,ab5a,ab5b])*
       (poly X [bb50,bb51,bb52,bb53,bb54,bb55,bb56,bb57,bb58,bb59,bb5a,bb5b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb60,rb61,rb62,rb63,rb64,rb65,rb66,rb67,rb68,rb69,rb6a,rb6b])
      ((poly X [ab60,ab61,ab62,ab63,ab64,ab65,ab66,ab67,ab68,ab69,ab6a,ab6b])*
       (poly X [bb60,bb61,bb62,bb63,bb64,bb65,bb66,bb67,bb68,bb69,bb6a,bb6b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb70,rb71,rb72,rb73,rb74,rb75,rb76,rb77,rb78,rb79,rb7a,rb7b])
      ((poly X [ab70,ab71,ab72,ab73,ab74,ab75,ab76,ab77,ab78,ab79,ab7a,ab7b])*
       (poly X [bb70,bb71,bb72,bb73,bb74,bb75,bb76,bb77,bb78,bb79,bb7a,bb7b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb80,rb81,rb82,rb83,rb84,rb85,rb86,rb87,rb88,rb89,rb8a,rb8b])
      ((poly X [ab80,ab81,ab82,ab83,ab84,ab85,ab86,ab87,ab88,ab89,ab8a,ab8b])*
       (poly X [bb80,bb81,bb82,bb83,bb84,bb85,bb86,bb87,bb88,bb89,bb8a,bb8b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rb90,rb91,rb92,rb93,rb94,rb95,rb96,rb97,rb98,rb99,rb9a,rb9b])
      ((poly X [ab90,ab91,ab92,ab93,ab94,ab95,ab96,ab97,ab98,ab99,ab9a,ab9b])*
       (poly X [bb90,bb91,bb92,bb93,bb94,bb95,bb96,bb97,bb98,bb99,bb9a,bb9b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rba0,rba1,rba2,rba3,rba4,rba5,rba6,rba7,rba8,rba9,rbaa,rbab])
      ((poly X [aba0,aba1,aba2,aba3,aba4,aba5,aba6,aba7,aba8,aba9,abaa,abab])*
       (poly X [bba0,bba1,bba2,bba3,bba4,bba5,bba6,bba7,bba8,bba9,bbaa,bbab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rbb0,rbb1,rbb2,rbb3,rbb4,rbb5,rbb6,rbb7,rbb8,rbb9,rbba,rbbb])
      ((poly X [abb0,abb1,abb2,abb3,abb4,abb5,abb6,abb7,abb8,abb9,abba,abbb])*
       (poly X [bbb0,bbb1,bbb2,bbb3,bbb4,bbb5,bbb6,bbb7,bbb8,bbb9,bbba,bbbb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rbc0,rbc1,rbc2,rbc3,rbc4,rbc5,rbc6,rbc7,rbc8,rbc9,rbca,rbcb])
      ((poly X [abc0,abc1,abc2,abc3,abc4,abc5,abc6,abc7,abc8,abc9,abca,abcb])*
       (poly X [bbc0,bbc1,bbc2,bbc3,bbc4,bbc5,bbc6,bbc7,bbc8,bbc9,bbca,bbcb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rbd0,rbd1,rbd2,rbd3,rbd4,rbd5,rbd6,rbd7,rbd8,rbd9,rbda,rbdb])
      ((poly X [abd0,abd1,abd2,abd3,abd4,abd5,abd6,abd7,abd8,abd9,abda,abdb])*
       (poly X [bbd0,bbd1,bbd2,bbd3,bbd4,bbd5,bbd6,bbd7,bbd8,bbd9,bbda,bbdb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rbe0,rbe1,rbe2,rbe3,rbe4,rbe5,rbe6,rbe7,rbe8,rbe9,rbea,rbeb])
      ((poly X [abe0,abe1,abe2,abe3,abe4,abe5,abe6,abe7,abe8,abe9,abea,abeb])*
       (poly X [bbe0,bbe1,bbe2,bbe3,bbe4,bbe5,bbe6,bbe7,bbe8,bbe9,bbea,bbeb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rbf0,rbf1,rbf2,rbf3,rbf4,rbf5,rbf6,rbf7,rbf8,rbf9,rbfa,rbfb])
      ((poly X [abf0,abf1,abf2,abf3,abf4,abf5,abf6,abf7,abf8,abf9,abfa,abfb])*
       (poly X [bbf0,bbf1,bbf2,bbf3,bbf4,bbf5,bbf6,bbf7,bbf8,bbf9,bbfa,bbfb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc00,rc01,rc02,rc03,rc04,rc05,rc06,rc07,rc08,rc09,rc0a,rc0b])
      ((poly X [ac00,ac01,ac02,ac03,ac04,ac05,ac06,ac07,ac08,ac09,ac0a,ac0b])*
       (poly X [bc00,bc01,bc02,bc03,bc04,bc05,bc06,bc07,bc08,bc09,bc0a,bc0b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc10,rc11,rc12,rc13,rc14,rc15,rc16,rc17,rc18,rc19,rc1a,rc1b])
      ((poly X [ac10,ac11,ac12,ac13,ac14,ac15,ac16,ac17,ac18,ac19,ac1a,ac1b])*
       (poly X [bc10,bc11,bc12,bc13,bc14,bc15,bc16,bc17,bc18,bc19,bc1a,bc1b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc20,rc21,rc22,rc23,rc24,rc25,rc26,rc27,rc28,rc29,rc2a,rc2b])
      ((poly X [ac20,ac21,ac22,ac23,ac24,ac25,ac26,ac27,ac28,ac29,ac2a,ac2b])*
       (poly X [bc20,bc21,bc22,bc23,bc24,bc25,bc26,bc27,bc28,bc29,bc2a,bc2b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc30,rc31,rc32,rc33,rc34,rc35,rc36,rc37,rc38,rc39,rc3a,rc3b])
      ((poly X [ac30,ac31,ac32,ac33,ac34,ac35,ac36,ac37,ac38,ac39,ac3a,ac3b])*
       (poly X [bc30,bc31,bc32,bc33,bc34,bc35,bc36,bc37,bc38,bc39,bc3a,bc3b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc40,rc41,rc42,rc43,rc44,rc45,rc46,rc47,rc48,rc49,rc4a,rc4b])
      ((poly X [ac40,ac41,ac42,ac43,ac44,ac45,ac46,ac47,ac48,ac49,ac4a,ac4b])*
       (poly X [bc40,bc41,bc42,bc43,bc44,bc45,bc46,bc47,bc48,bc49,bc4a,bc4b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc50,rc51,rc52,rc53,rc54,rc55,rc56,rc57,rc58,rc59,rc5a,rc5b])
      ((poly X [ac50,ac51,ac52,ac53,ac54,ac55,ac56,ac57,ac58,ac59,ac5a,ac5b])*
       (poly X [bc50,bc51,bc52,bc53,bc54,bc55,bc56,bc57,bc58,bc59,bc5a,bc5b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc60,rc61,rc62,rc63,rc64,rc65,rc66,rc67,rc68,rc69,rc6a,rc6b])
      ((poly X [ac60,ac61,ac62,ac63,ac64,ac65,ac66,ac67,ac68,ac69,ac6a,ac6b])*
       (poly X [bc60,bc61,bc62,bc63,bc64,bc65,bc66,bc67,bc68,bc69,bc6a,bc6b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc70,rc71,rc72,rc73,rc74,rc75,rc76,rc77,rc78,rc79,rc7a,rc7b])
      ((poly X [ac70,ac71,ac72,ac73,ac74,ac75,ac76,ac77,ac78,ac79,ac7a,ac7b])*
       (poly X [bc70,bc71,bc72,bc73,bc74,bc75,bc76,bc77,bc78,bc79,bc7a,bc7b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc80,rc81,rc82,rc83,rc84,rc85,rc86,rc87,rc88,rc89,rc8a,rc8b])
      ((poly X [ac80,ac81,ac82,ac83,ac84,ac85,ac86,ac87,ac88,ac89,ac8a,ac8b])*
       (poly X [bc80,bc81,bc82,bc83,bc84,bc85,bc86,bc87,bc88,bc89,bc8a,bc8b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rc90,rc91,rc92,rc93,rc94,rc95,rc96,rc97,rc98,rc99,rc9a,rc9b])
      ((poly X [ac90,ac91,ac92,ac93,ac94,ac95,ac96,ac97,ac98,ac99,ac9a,ac9b])*
       (poly X [bc90,bc91,bc92,bc93,bc94,bc95,bc96,bc97,bc98,bc99,bc9a,bc9b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rca0,rca1,rca2,rca3,rca4,rca5,rca6,rca7,rca8,rca9,rcaa,rcab])
      ((poly X [aca0,aca1,aca2,aca3,aca4,aca5,aca6,aca7,aca8,aca9,acaa,acab])*
       (poly X [bca0,bca1,bca2,bca3,bca4,bca5,bca6,bca7,bca8,bca9,bcaa,bcab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rcb0,rcb1,rcb2,rcb3,rcb4,rcb5,rcb6,rcb7,rcb8,rcb9,rcba,rcbb])
      ((poly X [acb0,acb1,acb2,acb3,acb4,acb5,acb6,acb7,acb8,acb9,acba,acbb])*
       (poly X [bcb0,bcb1,bcb2,bcb3,bcb4,bcb5,bcb6,bcb7,bcb8,bcb9,bcba,bcbb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rcc0,rcc1,rcc2,rcc3,rcc4,rcc5,rcc6,rcc7,rcc8,rcc9,rcca,rccb])
      ((poly X [acc0,acc1,acc2,acc3,acc4,acc5,acc6,acc7,acc8,acc9,acca,accb])*
       (poly X [bcc0,bcc1,bcc2,bcc3,bcc4,bcc5,bcc6,bcc7,bcc8,bcc9,bcca,bccb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rcd0,rcd1,rcd2,rcd3,rcd4,rcd5,rcd6,rcd7,rcd8,rcd9,rcda,rcdb])
      ((poly X [acd0,acd1,acd2,acd3,acd4,acd5,acd6,acd7,acd8,acd9,acda,acdb])*
       (poly X [bcd0,bcd1,bcd2,bcd3,bcd4,bcd5,bcd6,bcd7,bcd8,bcd9,bcda,bcdb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rce0,rce1,rce2,rce3,rce4,rce5,rce6,rce7,rce8,rce9,rcea,rceb])
      ((poly X [ace0,ace1,ace2,ace3,ace4,ace5,ace6,ace7,ace8,ace9,acea,aceb])*
       (poly X [bce0,bce1,bce2,bce3,bce4,bce5,bce6,bce7,bce8,bce9,bcea,bceb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rcf0,rcf1,rcf2,rcf3,rcf4,rcf5,rcf6,rcf7,rcf8,rcf9,rcfa,rcfb])
      ((poly X [acf0,acf1,acf2,acf3,acf4,acf5,acf6,acf7,acf8,acf9,acfa,acfb])*
       (poly X [bcf0,bcf1,bcf2,bcf3,bcf4,bcf5,bcf6,bcf7,bcf8,bcf9,bcfa,bcfb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd00,rd01,rd02,rd03,rd04,rd05,rd06,rd07,rd08,rd09,rd0a,rd0b])
      ((poly X [ad00,ad01,ad02,ad03,ad04,ad05,ad06,ad07,ad08,ad09,ad0a,ad0b])*
       (poly X [bd00,bd01,bd02,bd03,bd04,bd05,bd06,bd07,bd08,bd09,bd0a,bd0b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd10,rd11,rd12,rd13,rd14,rd15,rd16,rd17,rd18,rd19,rd1a,rd1b])
      ((poly X [ad10,ad11,ad12,ad13,ad14,ad15,ad16,ad17,ad18,ad19,ad1a,ad1b])*
       (poly X [bd10,bd11,bd12,bd13,bd14,bd15,bd16,bd17,bd18,bd19,bd1a,bd1b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd20,rd21,rd22,rd23,rd24,rd25,rd26,rd27,rd28,rd29,rd2a,rd2b])
      ((poly X [ad20,ad21,ad22,ad23,ad24,ad25,ad26,ad27,ad28,ad29,ad2a,ad2b])*
       (poly X [bd20,bd21,bd22,bd23,bd24,bd25,bd26,bd27,bd28,bd29,bd2a,bd2b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd30,rd31,rd32,rd33,rd34,rd35,rd36,rd37,rd38,rd39,rd3a,rd3b])
      ((poly X [ad30,ad31,ad32,ad33,ad34,ad35,ad36,ad37,ad38,ad39,ad3a,ad3b])*
       (poly X [bd30,bd31,bd32,bd33,bd34,bd35,bd36,bd37,bd38,bd39,bd3a,bd3b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd40,rd41,rd42,rd43,rd44,rd45,rd46,rd47,rd48,rd49,rd4a,rd4b])
      ((poly X [ad40,ad41,ad42,ad43,ad44,ad45,ad46,ad47,ad48,ad49,ad4a,ad4b])*
       (poly X [bd40,bd41,bd42,bd43,bd44,bd45,bd46,bd47,bd48,bd49,bd4a,bd4b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd50,rd51,rd52,rd53,rd54,rd55,rd56,rd57,rd58,rd59,rd5a,rd5b])
      ((poly X [ad50,ad51,ad52,ad53,ad54,ad55,ad56,ad57,ad58,ad59,ad5a,ad5b])*
       (poly X [bd50,bd51,bd52,bd53,bd54,bd55,bd56,bd57,bd58,bd59,bd5a,bd5b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd60,rd61,rd62,rd63,rd64,rd65,rd66,rd67,rd68,rd69,rd6a,rd6b])
      ((poly X [ad60,ad61,ad62,ad63,ad64,ad65,ad66,ad67,ad68,ad69,ad6a,ad6b])*
       (poly X [bd60,bd61,bd62,bd63,bd64,bd65,bd66,bd67,bd68,bd69,bd6a,bd6b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd70,rd71,rd72,rd73,rd74,rd75,rd76,rd77,rd78,rd79,rd7a,rd7b])
      ((poly X [ad70,ad71,ad72,ad73,ad74,ad75,ad76,ad77,ad78,ad79,ad7a,ad7b])*
       (poly X [bd70,bd71,bd72,bd73,bd74,bd75,bd76,bd77,bd78,bd79,bd7a,bd7b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd80,rd81,rd82,rd83,rd84,rd85,rd86,rd87,rd88,rd89,rd8a,rd8b])
      ((poly X [ad80,ad81,ad82,ad83,ad84,ad85,ad86,ad87,ad88,ad89,ad8a,ad8b])*
       (poly X [bd80,bd81,bd82,bd83,bd84,bd85,bd86,bd87,bd88,bd89,bd8a,bd8b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rd90,rd91,rd92,rd93,rd94,rd95,rd96,rd97,rd98,rd99,rd9a,rd9b])
      ((poly X [ad90,ad91,ad92,ad93,ad94,ad95,ad96,ad97,ad98,ad99,ad9a,ad9b])*
       (poly X [bd90,bd91,bd92,bd93,bd94,bd95,bd96,bd97,bd98,bd99,bd9a,bd9b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rda0,rda1,rda2,rda3,rda4,rda5,rda6,rda7,rda8,rda9,rdaa,rdab])
      ((poly X [ada0,ada1,ada2,ada3,ada4,ada5,ada6,ada7,ada8,ada9,adaa,adab])*
       (poly X [bda0,bda1,bda2,bda3,bda4,bda5,bda6,bda7,bda8,bda9,bdaa,bdab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rdb0,rdb1,rdb2,rdb3,rdb4,rdb5,rdb6,rdb7,rdb8,rdb9,rdba,rdbb])
      ((poly X [adb0,adb1,adb2,adb3,adb4,adb5,adb6,adb7,adb8,adb9,adba,adbb])*
       (poly X [bdb0,bdb1,bdb2,bdb3,bdb4,bdb5,bdb6,bdb7,bdb8,bdb9,bdba,bdbb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rdc0,rdc1,rdc2,rdc3,rdc4,rdc5,rdc6,rdc7,rdc8,rdc9,rdca,rdcb])
      ((poly X [adc0,adc1,adc2,adc3,adc4,adc5,adc6,adc7,adc8,adc9,adca,adcb])*
       (poly X [bdc0,bdc1,bdc2,bdc3,bdc4,bdc5,bdc6,bdc7,bdc8,bdc9,bdca,bdcb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rdd0,rdd1,rdd2,rdd3,rdd4,rdd5,rdd6,rdd7,rdd8,rdd9,rdda,rddb])
      ((poly X [add0,add1,add2,add3,add4,add5,add6,add7,add8,add9,adda,addb])*
       (poly X [bdd0,bdd1,bdd2,bdd3,bdd4,bdd5,bdd6,bdd7,bdd8,bdd9,bdda,bddb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rde0,rde1,rde2,rde3,rde4,rde5,rde6,rde7,rde8,rde9,rdea,rdeb])
      ((poly X [ade0,ade1,ade2,ade3,ade4,ade5,ade6,ade7,ade8,ade9,adea,adeb])*
       (poly X [bde0,bde1,bde2,bde3,bde4,bde5,bde6,bde7,bde8,bde9,bdea,bdeb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rdf0,rdf1,rdf2,rdf3,rdf4,rdf5,rdf6,rdf7,rdf8,rdf9,rdfa,rdfb])
      ((poly X [adf0,adf1,adf2,adf3,adf4,adf5,adf6,adf7,adf8,adf9,adfa,adfb])*
       (poly X [bdf0,bdf1,bdf2,bdf3,bdf4,bdf5,bdf6,bdf7,bdf8,bdf9,bdfa,bdfb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re00,re01,re02,re03,re04,re05,re06,re07,re08,re09,re0a,re0b])
      ((poly X [ae00,ae01,ae02,ae03,ae04,ae05,ae06,ae07,ae08,ae09,ae0a,ae0b])*
       (poly X [be00,be01,be02,be03,be04,be05,be06,be07,be08,be09,be0a,be0b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re10,re11,re12,re13,re14,re15,re16,re17,re18,re19,re1a,re1b])
      ((poly X [ae10,ae11,ae12,ae13,ae14,ae15,ae16,ae17,ae18,ae19,ae1a,ae1b])*
       (poly X [be10,be11,be12,be13,be14,be15,be16,be17,be18,be19,be1a,be1b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re20,re21,re22,re23,re24,re25,re26,re27,re28,re29,re2a,re2b])
      ((poly X [ae20,ae21,ae22,ae23,ae24,ae25,ae26,ae27,ae28,ae29,ae2a,ae2b])*
       (poly X [be20,be21,be22,be23,be24,be25,be26,be27,be28,be29,be2a,be2b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re30,re31,re32,re33,re34,re35,re36,re37,re38,re39,re3a,re3b])
      ((poly X [ae30,ae31,ae32,ae33,ae34,ae35,ae36,ae37,ae38,ae39,ae3a,ae3b])*
       (poly X [be30,be31,be32,be33,be34,be35,be36,be37,be38,be39,be3a,be3b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re40,re41,re42,re43,re44,re45,re46,re47,re48,re49,re4a,re4b])
      ((poly X [ae40,ae41,ae42,ae43,ae44,ae45,ae46,ae47,ae48,ae49,ae4a,ae4b])*
       (poly X [be40,be41,be42,be43,be44,be45,be46,be47,be48,be49,be4a,be4b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re50,re51,re52,re53,re54,re55,re56,re57,re58,re59,re5a,re5b])
      ((poly X [ae50,ae51,ae52,ae53,ae54,ae55,ae56,ae57,ae58,ae59,ae5a,ae5b])*
       (poly X [be50,be51,be52,be53,be54,be55,be56,be57,be58,be59,be5a,be5b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re60,re61,re62,re63,re64,re65,re66,re67,re68,re69,re6a,re6b])
      ((poly X [ae60,ae61,ae62,ae63,ae64,ae65,ae66,ae67,ae68,ae69,ae6a,ae6b])*
       (poly X [be60,be61,be62,be63,be64,be65,be66,be67,be68,be69,be6a,be6b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re70,re71,re72,re73,re74,re75,re76,re77,re78,re79,re7a,re7b])
      ((poly X [ae70,ae71,ae72,ae73,ae74,ae75,ae76,ae77,ae78,ae79,ae7a,ae7b])*
       (poly X [be70,be71,be72,be73,be74,be75,be76,be77,be78,be79,be7a,be7b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re80,re81,re82,re83,re84,re85,re86,re87,re88,re89,re8a,re8b])
      ((poly X [ae80,ae81,ae82,ae83,ae84,ae85,ae86,ae87,ae88,ae89,ae8a,ae8b])*
       (poly X [be80,be81,be82,be83,be84,be85,be86,be87,be88,be89,be8a,be8b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [re90,re91,re92,re93,re94,re95,re96,re97,re98,re99,re9a,re9b])
      ((poly X [ae90,ae91,ae92,ae93,ae94,ae95,ae96,ae97,ae98,ae99,ae9a,ae9b])*
       (poly X [be90,be91,be92,be93,be94,be95,be96,be97,be98,be99,be9a,be9b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rea0,rea1,rea2,rea3,rea4,rea5,rea6,rea7,rea8,rea9,reaa,reab])
      ((poly X [aea0,aea1,aea2,aea3,aea4,aea5,aea6,aea7,aea8,aea9,aeaa,aeab])*
       (poly X [bea0,bea1,bea2,bea3,bea4,bea5,bea6,bea7,bea8,bea9,beaa,beab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [reb0,reb1,reb2,reb3,reb4,reb5,reb6,reb7,reb8,reb9,reba,rebb])
      ((poly X [aeb0,aeb1,aeb2,aeb3,aeb4,aeb5,aeb6,aeb7,aeb8,aeb9,aeba,aebb])*
       (poly X [beb0,beb1,beb2,beb3,beb4,beb5,beb6,beb7,beb8,beb9,beba,bebb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rec0,rec1,rec2,rec3,rec4,rec5,rec6,rec7,rec8,rec9,reca,recb])
      ((poly X [aec0,aec1,aec2,aec3,aec4,aec5,aec6,aec7,aec8,aec9,aeca,aecb])*
       (poly X [bec0,bec1,bec2,bec3,bec4,bec5,bec6,bec7,bec8,bec9,beca,becb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [red0,red1,red2,red3,red4,red5,red6,red7,red8,red9,reda,redb])
      ((poly X [aed0,aed1,aed2,aed3,aed4,aed5,aed6,aed7,aed8,aed9,aeda,aedb])*
       (poly X [bed0,bed1,bed2,bed3,bed4,bed5,bed6,bed7,bed8,bed9,beda,bedb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ree0,ree1,ree2,ree3,ree4,ree5,ree6,ree7,ree8,ree9,reea,reeb])
      ((poly X [aee0,aee1,aee2,aee3,aee4,aee5,aee6,aee7,aee8,aee9,aeea,aeeb])*
       (poly X [bee0,bee1,bee2,bee3,bee4,bee5,bee6,bee7,bee8,bee9,beea,beeb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [ref0,ref1,ref2,ref3,ref4,ref5,ref6,ref7,ref8,ref9,refa,refb])
      ((poly X [aef0,aef1,aef2,aef3,aef4,aef5,aef6,aef7,aef8,aef9,aefa,aefb])*
       (poly X [bef0,bef1,bef2,bef3,bef4,bef5,bef6,bef7,bef8,bef9,befa,befb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf00,rf01,rf02,rf03,rf04,rf05,rf06,rf07,rf08,rf09,rf0a,rf0b])
      ((poly X [af00,af01,af02,af03,af04,af05,af06,af07,af08,af09,af0a,af0b])*
       (poly X [bf00,bf01,bf02,bf03,bf04,bf05,bf06,bf07,bf08,bf09,bf0a,bf0b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf10,rf11,rf12,rf13,rf14,rf15,rf16,rf17,rf18,rf19,rf1a,rf1b])
      ((poly X [af10,af11,af12,af13,af14,af15,af16,af17,af18,af19,af1a,af1b])*
       (poly X [bf10,bf11,bf12,bf13,bf14,bf15,bf16,bf17,bf18,bf19,bf1a,bf1b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf20,rf21,rf22,rf23,rf24,rf25,rf26,rf27,rf28,rf29,rf2a,rf2b])
      ((poly X [af20,af21,af22,af23,af24,af25,af26,af27,af28,af29,af2a,af2b])*
       (poly X [bf20,bf21,bf22,bf23,bf24,bf25,bf26,bf27,bf28,bf29,bf2a,bf2b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf30,rf31,rf32,rf33,rf34,rf35,rf36,rf37,rf38,rf39,rf3a,rf3b])
      ((poly X [af30,af31,af32,af33,af34,af35,af36,af37,af38,af39,af3a,af3b])*
       (poly X [bf30,bf31,bf32,bf33,bf34,bf35,bf36,bf37,bf38,bf39,bf3a,bf3b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf40,rf41,rf42,rf43,rf44,rf45,rf46,rf47,rf48,rf49,rf4a,rf4b])
      ((poly X [af40,af41,af42,af43,af44,af45,af46,af47,af48,af49,af4a,af4b])*
       (poly X [bf40,bf41,bf42,bf43,bf44,bf45,bf46,bf47,bf48,bf49,bf4a,bf4b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf50,rf51,rf52,rf53,rf54,rf55,rf56,rf57,rf58,rf59,rf5a,rf5b])
      ((poly X [af50,af51,af52,af53,af54,af55,af56,af57,af58,af59,af5a,af5b])*
       (poly X [bf50,bf51,bf52,bf53,bf54,bf55,bf56,bf57,bf58,bf59,bf5a,bf5b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf60,rf61,rf62,rf63,rf64,rf65,rf66,rf67,rf68,rf69,rf6a,rf6b])
      ((poly X [af60,af61,af62,af63,af64,af65,af66,af67,af68,af69,af6a,af6b])*
       (poly X [bf60,bf61,bf62,bf63,bf64,bf65,bf66,bf67,bf68,bf69,bf6a,bf6b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf70,rf71,rf72,rf73,rf74,rf75,rf76,rf77,rf78,rf79,rf7a,rf7b])
      ((poly X [af70,af71,af72,af73,af74,af75,af76,af77,af78,af79,af7a,af7b])*
       (poly X [bf70,bf71,bf72,bf73,bf74,bf75,bf76,bf77,bf78,bf79,bf7a,bf7b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf80,rf81,rf82,rf83,rf84,rf85,rf86,rf87,rf88,rf89,rf8a,rf8b])
      ((poly X [af80,af81,af82,af83,af84,af85,af86,af87,af88,af89,af8a,af8b])*
       (poly X [bf80,bf81,bf82,bf83,bf84,bf85,bf86,bf87,bf88,bf89,bf8a,bf8b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rf90,rf91,rf92,rf93,rf94,rf95,rf96,rf97,rf98,rf99,rf9a,rf9b])
      ((poly X [af90,af91,af92,af93,af94,af95,af96,af97,af98,af99,af9a,af9b])*
       (poly X [bf90,bf91,bf92,bf93,bf94,bf95,bf96,bf97,bf98,bf99,bf9a,bf9b]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rfa0,rfa1,rfa2,rfa3,rfa4,rfa5,rfa6,rfa7,rfa8,rfa9,rfaa,rfab])
      ((poly X [afa0,afa1,afa2,afa3,afa4,afa5,afa6,afa7,afa8,afa9,afaa,afab])*
       (poly X [bfa0,bfa1,bfa2,bfa3,bfa4,bfa5,bfa6,bfa7,bfa8,bfa9,bfaa,bfab]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rfb0,rfb1,rfb2,rfb3,rfb4,rfb5,rfb6,rfb7,rfb8,rfb9,rfba,rfbb])
      ((poly X [afb0,afb1,afb2,afb3,afb4,afb5,afb6,afb7,afb8,afb9,afba,afbb])*
       (poly X [bfb0,bfb1,bfb2,bfb3,bfb4,bfb5,bfb6,bfb7,bfb8,bfb9,bfba,bfbb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rfc0,rfc1,rfc2,rfc3,rfc4,rfc5,rfc6,rfc7,rfc8,rfc9,rfca,rfcb])
      ((poly X [afc0,afc1,afc2,afc3,afc4,afc5,afc6,afc7,afc8,afc9,afca,afcb])*
       (poly X [bfc0,bfc1,bfc2,bfc3,bfc4,bfc5,bfc6,bfc7,bfc8,bfc9,bfca,bfcb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rfd0,rfd1,rfd2,rfd3,rfd4,rfd5,rfd6,rfd7,rfd8,rfd9,rfda,rfdb])
      ((poly X [afd0,afd1,afd2,afd3,afd4,afd5,afd6,afd7,afd8,afd9,afda,afdb])*
       (poly X [bfd0,bfd1,bfd2,bfd3,bfd4,bfd5,bfd6,bfd7,bfd8,bfd9,bfda,bfdb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rfe0,rfe1,rfe2,rfe3,rfe4,rfe5,rfe6,rfe7,rfe8,rfe9,rfea,rfeb])
      ((poly X [afe0,afe1,afe2,afe3,afe4,afe5,afe6,afe7,afe8,afe9,afea,afeb])*
       (poly X [bfe0,bfe1,bfe2,bfe3,bfe4,bfe5,bfe6,bfe7,bfe8,bfe9,bfea,bfeb]))
      [2, X**12 + X**3 + 1] /\
eqmod (poly X [rff0,rff1,rff2,rff3,rff4,rff5,rff6,rff7,rff8,rff9,rffa,rffb])
      ((poly X [aff0,aff1,aff2,aff3,aff4,aff5,aff6,aff7,aff8,aff9,affa,affb])*
       (poly X [bff0,bff1,bff2,bff3,bff4,bff5,bff6,bff7,bff8,bff9,bffa,bffb]))
      [2, X**12 + X**3 + 1]
  &&
  true
}

