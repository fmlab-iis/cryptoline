(* quine: cv.exe -v -isafety -slicing -jobs 32 vec_mul_asm.vcl
Parsing CryptoLine file:                    [OK]            0.1512 seconds
Checking well-formedness:                   [OK]            0.0840 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.0521 seconds
Normalizing specification:                  [OK]            0.0580 seconds
Rewriting assignments:                      [OK]            0.0695 seconds
Verifying program safety:                   [OK]            40.2914 seconds
Verifying range specification:              [OK]            0.0062 seconds
Rewriting value-preserved casting:          [OK]            0.0051 seconds
Verifying algebraic specification:          [OK]            2.7707 seconds
Procedure verification:                     [OK]            43.2838 seconds

Summary
-------
Verification result:                        [OK]            43.5202 seconds
*)
(* quine: cv.exe -v -isafety -abs_interp -slicing -jobs 32 vec_mul_asm.vcl
Parsing CryptoLine file:                     [OK]            0.1498 seconds
Checking well-formedness:                    [OK]            0.0845 seconds

Procedure main
--------------
Transforming to SSA form:                    [OK]            0.0528 seconds
Normalizing specification:                   [OK]            0.0608 seconds
Rewriting assignments:                       [OK]            0.0694 seconds
Verifying program safety:                    [OK]            225.8651 seconds
Verifying range specification:               [OK]            558.5700 seconds
Rewriting value-preserved casting:           [OK]            0.0060 seconds
Verifying algebraic specification:           [OK]            4.3126 seconds
Procedure verification:                      [OK]            788.9658 seconds

Summary
-------
Verification result:                         [OK]            789.2025 seconds
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
bit a3f6,bit a3f7,bit a3f8,bit a3f9,bit a3fa,bit a3fb
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
bit b3f6,bit b3f7,bit b3f8,bit b3f9,bit b3fa,bit b3fb
) =
{
  true
  &&
  true
}

mov %L0x7fffffff0300
    [a000,a010,a020,a030,a040,a050,a060,a070,a080,a090,a0a0,a0b0,a0c0,
     a0d0,a0e0,a0f0,a100,a110,a120,a130,a140,a150,a160,a170,a180,a190,
     a1a0,a1b0,a1c0,a1d0,a1e0,a1f0,a200,a210,a220,a230,a240,a250,a260,
     a270,a280,a290,a2a0,a2b0,a2c0,a2d0,a2e0,a2f0,a300,a310,a320,a330,
     a340,a350,a360,a370,a380,a390,a3a0,a3b0,a3c0,a3d0,a3e0,a3f0];
mov %L0x7fffffff0308
    [a001,a011,a021,a031,a041,a051,a061,a071,a081,a091,a0a1,a0b1,a0c1,
     a0d1,a0e1,a0f1,a101,a111,a121,a131,a141,a151,a161,a171,a181,a191,
     a1a1,a1b1,a1c1,a1d1,a1e1,a1f1,a201,a211,a221,a231,a241,a251,a261,
     a271,a281,a291,a2a1,a2b1,a2c1,a2d1,a2e1,a2f1,a301,a311,a321,a331,
     a341,a351,a361,a371,a381,a391,a3a1,a3b1,a3c1,a3d1,a3e1,a3f1];
mov %L0x7fffffff0310
    [a002,a012,a022,a032,a042,a052,a062,a072,a082,a092,a0a2,a0b2,a0c2,
     a0d2,a0e2,a0f2,a102,a112,a122,a132,a142,a152,a162,a172,a182,a192,
     a1a2,a1b2,a1c2,a1d2,a1e2,a1f2,a202,a212,a222,a232,a242,a252,a262,
     a272,a282,a292,a2a2,a2b2,a2c2,a2d2,a2e2,a2f2,a302,a312,a322,a332,
     a342,a352,a362,a372,a382,a392,a3a2,a3b2,a3c2,a3d2,a3e2,a3f2];
mov %L0x7fffffff0318
    [a003,a013,a023,a033,a043,a053,a063,a073,a083,a093,a0a3,a0b3,a0c3,
     a0d3,a0e3,a0f3,a103,a113,a123,a133,a143,a153,a163,a173,a183,a193,
     a1a3,a1b3,a1c3,a1d3,a1e3,a1f3,a203,a213,a223,a233,a243,a253,a263,
     a273,a283,a293,a2a3,a2b3,a2c3,a2d3,a2e3,a2f3,a303,a313,a323,a333,
     a343,a353,a363,a373,a383,a393,a3a3,a3b3,a3c3,a3d3,a3e3,a3f3];
mov %L0x7fffffff0320
    [a004,a014,a024,a034,a044,a054,a064,a074,a084,a094,a0a4,a0b4,a0c4,
     a0d4,a0e4,a0f4,a104,a114,a124,a134,a144,a154,a164,a174,a184,a194,
     a1a4,a1b4,a1c4,a1d4,a1e4,a1f4,a204,a214,a224,a234,a244,a254,a264,
     a274,a284,a294,a2a4,a2b4,a2c4,a2d4,a2e4,a2f4,a304,a314,a324,a334,
     a344,a354,a364,a374,a384,a394,a3a4,a3b4,a3c4,a3d4,a3e4,a3f4];
mov %L0x7fffffff0328
    [a005,a015,a025,a035,a045,a055,a065,a075,a085,a095,a0a5,a0b5,a0c5,
     a0d5,a0e5,a0f5,a105,a115,a125,a135,a145,a155,a165,a175,a185,a195,
     a1a5,a1b5,a1c5,a1d5,a1e5,a1f5,a205,a215,a225,a235,a245,a255,a265,
     a275,a285,a295,a2a5,a2b5,a2c5,a2d5,a2e5,a2f5,a305,a315,a325,a335,
     a345,a355,a365,a375,a385,a395,a3a5,a3b5,a3c5,a3d5,a3e5,a3f5];
mov %L0x7fffffff0330
    [a006,a016,a026,a036,a046,a056,a066,a076,a086,a096,a0a6,a0b6,a0c6,
     a0d6,a0e6,a0f6,a106,a116,a126,a136,a146,a156,a166,a176,a186,a196,
     a1a6,a1b6,a1c6,a1d6,a1e6,a1f6,a206,a216,a226,a236,a246,a256,a266,
     a276,a286,a296,a2a6,a2b6,a2c6,a2d6,a2e6,a2f6,a306,a316,a326,a336,
     a346,a356,a366,a376,a386,a396,a3a6,a3b6,a3c6,a3d6,a3e6,a3f6];
mov %L0x7fffffff0338
    [a007,a017,a027,a037,a047,a057,a067,a077,a087,a097,a0a7,a0b7,a0c7,
     a0d7,a0e7,a0f7,a107,a117,a127,a137,a147,a157,a167,a177,a187,a197,
     a1a7,a1b7,a1c7,a1d7,a1e7,a1f7,a207,a217,a227,a237,a247,a257,a267,
     a277,a287,a297,a2a7,a2b7,a2c7,a2d7,a2e7,a2f7,a307,a317,a327,a337,
     a347,a357,a367,a377,a387,a397,a3a7,a3b7,a3c7,a3d7,a3e7,a3f7];
mov %L0x7fffffff0340
    [a008,a018,a028,a038,a048,a058,a068,a078,a088,a098,a0a8,a0b8,a0c8,
     a0d8,a0e8,a0f8,a108,a118,a128,a138,a148,a158,a168,a178,a188,a198,
     a1a8,a1b8,a1c8,a1d8,a1e8,a1f8,a208,a218,a228,a238,a248,a258,a268,
     a278,a288,a298,a2a8,a2b8,a2c8,a2d8,a2e8,a2f8,a308,a318,a328,a338,
     a348,a358,a368,a378,a388,a398,a3a8,a3b8,a3c8,a3d8,a3e8,a3f8];
mov %L0x7fffffff0348
    [a009,a019,a029,a039,a049,a059,a069,a079,a089,a099,a0a9,a0b9,a0c9,
     a0d9,a0e9,a0f9,a109,a119,a129,a139,a149,a159,a169,a179,a189,a199,
     a1a9,a1b9,a1c9,a1d9,a1e9,a1f9,a209,a219,a229,a239,a249,a259,a269,
     a279,a289,a299,a2a9,a2b9,a2c9,a2d9,a2e9,a2f9,a309,a319,a329,a339,
     a349,a359,a369,a379,a389,a399,a3a9,a3b9,a3c9,a3d9,a3e9,a3f9];
mov %L0x7fffffff0350
    [a00a,a01a,a02a,a03a,a04a,a05a,a06a,a07a,a08a,a09a,a0aa,a0ba,a0ca,
     a0da,a0ea,a0fa,a10a,a11a,a12a,a13a,a14a,a15a,a16a,a17a,a18a,a19a,
     a1aa,a1ba,a1ca,a1da,a1ea,a1fa,a20a,a21a,a22a,a23a,a24a,a25a,a26a,
     a27a,a28a,a29a,a2aa,a2ba,a2ca,a2da,a2ea,a2fa,a30a,a31a,a32a,a33a,
     a34a,a35a,a36a,a37a,a38a,a39a,a3aa,a3ba,a3ca,a3da,a3ea,a3fa];
mov %L0x7fffffff0358
    [a00b,a01b,a02b,a03b,a04b,a05b,a06b,a07b,a08b,a09b,a0ab,a0bb,a0cb,
     a0db,a0eb,a0fb,a10b,a11b,a12b,a13b,a14b,a15b,a16b,a17b,a18b,a19b,
     a1ab,a1bb,a1cb,a1db,a1eb,a1fb,a20b,a21b,a22b,a23b,a24b,a25b,a26b,
     a27b,a28b,a29b,a2ab,a2bb,a2cb,a2db,a2eb,a2fb,a30b,a31b,a32b,a33b,
     a34b,a35b,a36b,a37b,a38b,a39b,a3ab,a3bb,a3cb,a3db,a3eb,a3fb];
mov %L0x7fffffff04e0
    [b000,b010,b020,b030,b040,b050,b060,b070,b080,b090,b0a0,b0b0,b0c0,
     b0d0,b0e0,b0f0,b100,b110,b120,b130,b140,b150,b160,b170,b180,b190,
     b1a0,b1b0,b1c0,b1d0,b1e0,b1f0,b200,b210,b220,b230,b240,b250,b260,
     b270,b280,b290,b2a0,b2b0,b2c0,b2d0,b2e0,b2f0,b300,b310,b320,b330,
     b340,b350,b360,b370,b380,b390,b3a0,b3b0,b3c0,b3d0,b3e0,b3f0];
mov %L0x7fffffff04e8
    [b001,b011,b021,b031,b041,b051,b061,b071,b081,b091,b0a1,b0b1,b0c1,
     b0d1,b0e1,b0f1,b101,b111,b121,b131,b141,b151,b161,b171,b181,b191,
     b1a1,b1b1,b1c1,b1d1,b1e1,b1f1,b201,b211,b221,b231,b241,b251,b261,
     b271,b281,b291,b2a1,b2b1,b2c1,b2d1,b2e1,b2f1,b301,b311,b321,b331,
     b341,b351,b361,b371,b381,b391,b3a1,b3b1,b3c1,b3d1,b3e1,b3f1];
mov %L0x7fffffff04f0
    [b002,b012,b022,b032,b042,b052,b062,b072,b082,b092,b0a2,b0b2,b0c2,
     b0d2,b0e2,b0f2,b102,b112,b122,b132,b142,b152,b162,b172,b182,b192,
     b1a2,b1b2,b1c2,b1d2,b1e2,b1f2,b202,b212,b222,b232,b242,b252,b262,
     b272,b282,b292,b2a2,b2b2,b2c2,b2d2,b2e2,b2f2,b302,b312,b322,b332,
     b342,b352,b362,b372,b382,b392,b3a2,b3b2,b3c2,b3d2,b3e2,b3f2];
mov %L0x7fffffff04f8
    [b003,b013,b023,b033,b043,b053,b063,b073,b083,b093,b0a3,b0b3,b0c3,
     b0d3,b0e3,b0f3,b103,b113,b123,b133,b143,b153,b163,b173,b183,b193,
     b1a3,b1b3,b1c3,b1d3,b1e3,b1f3,b203,b213,b223,b233,b243,b253,b263,
     b273,b283,b293,b2a3,b2b3,b2c3,b2d3,b2e3,b2f3,b303,b313,b323,b333,
     b343,b353,b363,b373,b383,b393,b3a3,b3b3,b3c3,b3d3,b3e3,b3f3];
mov %L0x7fffffff0500
    [b004,b014,b024,b034,b044,b054,b064,b074,b084,b094,b0a4,b0b4,b0c4,
     b0d4,b0e4,b0f4,b104,b114,b124,b134,b144,b154,b164,b174,b184,b194,
     b1a4,b1b4,b1c4,b1d4,b1e4,b1f4,b204,b214,b224,b234,b244,b254,b264,
     b274,b284,b294,b2a4,b2b4,b2c4,b2d4,b2e4,b2f4,b304,b314,b324,b334,
     b344,b354,b364,b374,b384,b394,b3a4,b3b4,b3c4,b3d4,b3e4,b3f4];
mov %L0x7fffffff0508
    [b005,b015,b025,b035,b045,b055,b065,b075,b085,b095,b0a5,b0b5,b0c5,
     b0d5,b0e5,b0f5,b105,b115,b125,b135,b145,b155,b165,b175,b185,b195,
     b1a5,b1b5,b1c5,b1d5,b1e5,b1f5,b205,b215,b225,b235,b245,b255,b265,
     b275,b285,b295,b2a5,b2b5,b2c5,b2d5,b2e5,b2f5,b305,b315,b325,b335,
     b345,b355,b365,b375,b385,b395,b3a5,b3b5,b3c5,b3d5,b3e5,b3f5];
mov %L0x7fffffff0510
    [b006,b016,b026,b036,b046,b056,b066,b076,b086,b096,b0a6,b0b6,b0c6,
     b0d6,b0e6,b0f6,b106,b116,b126,b136,b146,b156,b166,b176,b186,b196,
     b1a6,b1b6,b1c6,b1d6,b1e6,b1f6,b206,b216,b226,b236,b246,b256,b266,
     b276,b286,b296,b2a6,b2b6,b2c6,b2d6,b2e6,b2f6,b306,b316,b326,b336,
     b346,b356,b366,b376,b386,b396,b3a6,b3b6,b3c6,b3d6,b3e6,b3f6];
mov %L0x7fffffff0518
    [b007,b017,b027,b037,b047,b057,b067,b077,b087,b097,b0a7,b0b7,b0c7,
     b0d7,b0e7,b0f7,b107,b117,b127,b137,b147,b157,b167,b177,b187,b197,
     b1a7,b1b7,b1c7,b1d7,b1e7,b1f7,b207,b217,b227,b237,b247,b257,b267,
     b277,b287,b297,b2a7,b2b7,b2c7,b2d7,b2e7,b2f7,b307,b317,b327,b337,
     b347,b357,b367,b377,b387,b397,b3a7,b3b7,b3c7,b3d7,b3e7,b3f7];
mov %L0x7fffffff0520
    [b008,b018,b028,b038,b048,b058,b068,b078,b088,b098,b0a8,b0b8,b0c8,
     b0d8,b0e8,b0f8,b108,b118,b128,b138,b148,b158,b168,b178,b188,b198,
     b1a8,b1b8,b1c8,b1d8,b1e8,b1f8,b208,b218,b228,b238,b248,b258,b268,
     b278,b288,b298,b2a8,b2b8,b2c8,b2d8,b2e8,b2f8,b308,b318,b328,b338,
     b348,b358,b368,b378,b388,b398,b3a8,b3b8,b3c8,b3d8,b3e8,b3f8];
mov %L0x7fffffff0528
    [b009,b019,b029,b039,b049,b059,b069,b079,b089,b099,b0a9,b0b9,b0c9,
     b0d9,b0e9,b0f9,b109,b119,b129,b139,b149,b159,b169,b179,b189,b199,
     b1a9,b1b9,b1c9,b1d9,b1e9,b1f9,b209,b219,b229,b239,b249,b259,b269,
     b279,b289,b299,b2a9,b2b9,b2c9,b2d9,b2e9,b2f9,b309,b319,b329,b339,
     b349,b359,b369,b379,b389,b399,b3a9,b3b9,b3c9,b3d9,b3e9,b3f9];
mov %L0x7fffffff0530
    [b00a,b01a,b02a,b03a,b04a,b05a,b06a,b07a,b08a,b09a,b0aa,b0ba,b0ca,
     b0da,b0ea,b0fa,b10a,b11a,b12a,b13a,b14a,b15a,b16a,b17a,b18a,b19a,
     b1aa,b1ba,b1ca,b1da,b1ea,b1fa,b20a,b21a,b22a,b23a,b24a,b25a,b26a,
     b27a,b28a,b29a,b2aa,b2ba,b2ca,b2da,b2ea,b2fa,b30a,b31a,b32a,b33a,
     b34a,b35a,b36a,b37a,b38a,b39a,b3aa,b3ba,b3ca,b3da,b3ea,b3fa];
mov %L0x7fffffff0538
    [b00b,b01b,b02b,b03b,b04b,b05b,b06b,b07b,b08b,b09b,b0ab,b0bb,b0cb,
     b0db,b0eb,b0fb,b10b,b11b,b12b,b13b,b14b,b15b,b16b,b17b,b18b,b19b,
     b1ab,b1bb,b1cb,b1db,b1eb,b1fb,b20b,b21b,b22b,b23b,b24b,b25b,b26b,
     b27b,b28b,b29b,b2ab,b2bb,b2cb,b2db,b2eb,b2fb,b30b,b31b,b32b,b33b,
     b34b,b35b,b36b,b37b,b38b,b39b,b3ab,b3bb,b3cb,b3db,b3eb,b3fb];


(* #! -> SP = 0x7fffffff00d8 *)
#! 0x7fffffff00d8 = 0x7fffffff00d8;
(* #mov    %rsp,%r11                                #! PC = 0x55555557f8a0 *)
#mov    %rsp,%%r11                                #! 0x55555557f8a0 = 0x55555557f8a0;
(* #and    $0x1f,%r11                               #! PC = 0x55555557f8a3 *)
#and    $0x1f,%%r11                               #! 0x55555557f8a3 = 0x55555557f8a3;
(* #add    $0x2a0,%r11                              #! PC = 0x55555557f8a7 *)
#add    $0x2a0,%%r11                              #! 0x55555557f8a7 = 0x55555557f8a7;
(* #sub    %r11,%rsp                                #! PC = 0x55555557f8ae *)
#sub    %%r11,%rsp                                #! 0x55555557f8ae = 0x55555557f8ae;
(* #mov    %r11,0x260(%rsp)                         #! EA = L0x7fffffff0080; PC = 0x55555557f8b1 *)
#mov    %%r11,0x260(%rsp)                         #! L0x7fffffff0080 = L0x7fffffff0080; 0x55555557f8b1 = 0x55555557f8b1;
(* #mov    %r12,0x268(%rsp)                         #! EA = L0x7fffffff0088; PC = 0x55555557f8b9 *)
#mov    %%r12,0x268(%rsp)                         #! L0x7fffffff0088 = L0x7fffffff0088; 0x55555557f8b9 = 0x55555557f8b9;
(* #mov    %r13,0x270(%rsp)                         #! EA = L0x7fffffff0090; PC = 0x55555557f8c1 *)
#mov    %%r13,0x270(%rsp)                         #! L0x7fffffff0090 = L0x7fffffff0090; 0x55555557f8c1 = 0x55555557f8c1;
(* #mov    %r14,0x278(%rsp)                         #! EA = L0x7fffffff0098; PC = 0x55555557f8c9 *)
#mov    %%r14,0x278(%rsp)                         #! L0x7fffffff0098 = L0x7fffffff0098; 0x55555557f8c9 = 0x55555557f8c9;
(* #mov    %r15,0x280(%rsp)                         #! EA = L0x7fffffff00a0; PC = 0x55555557f8d1 *)
#mov    %%r15,0x280(%rsp)                         #! L0x7fffffff00a0 = L0x7fffffff00a0; 0x55555557f8d1 = 0x55555557f8d1;
(* #mov    %rbx,0x288(%rsp)                         #! EA = L0x7fffffff00a8; PC = 0x55555557f8d9 *)
#mov    %%rbx,0x288(%rsp)                         #! L0x7fffffff00a8 = L0x7fffffff00a8; 0x55555557f8d9 = 0x55555557f8d9;
(* #lea    (%rsp),%rcx                              #! PC = 0x55555557f8e1 *)
#lea    (%rsp),%rcx                              #! 0x55555557f8e1 = 0x55555557f8e1;
(* vmovupd (%rsi),%ymm0                            #! EA = L0x7fffffff04e0; Value = 0x97edff5d0a8f8505; PC = 0x55555557f8e5 *)
mov %ymm0_0 %L0x7fffffff04e0;
mov %ymm0_1 %L0x7fffffff04e8;
mov %ymm0_2 %L0x7fffffff04f0;
mov %ymm0_3 %L0x7fffffff04f8;
(* vmovupd 0x20(%rsi),%ymm1                        #! EA = L0x7fffffff0500; Value = 0x25c9b68fc451afa6; PC = 0x55555557f8e9 *)
mov %ymm1_0 %L0x7fffffff0500;
mov %ymm1_1 %L0x7fffffff0508;
mov %ymm1_2 %L0x7fffffff0510;
mov %ymm1_3 %L0x7fffffff0518;
(* vmovupd 0x40(%rsi),%ymm2                        #! EA = L0x7fffffff0520; Value = 0x0ce195f68faf2909; PC = 0x55555557f8ee *)
mov %ymm2_0 %L0x7fffffff0520;
mov %ymm2_1 %L0x7fffffff0528;
mov %ymm2_2 %L0x7fffffff0530;
mov %ymm2_3 %L0x7fffffff0538;
(* vmovupd (%rdx),%ymm3                            #! EA = L0x7fffffff0300; Value = 0xffffffffffffffff; PC = 0x55555557f8f3 *)
mov %ymm3_0 %L0x7fffffff0300;
mov %ymm3_1 %L0x7fffffff0308;
mov %ymm3_2 %L0x7fffffff0310;
mov %ymm3_3 %L0x7fffffff0318;
(* vmovupd 0x20(%rdx),%ymm4                        #! EA = L0x7fffffff0320; Value = 0x0000000000000000; PC = 0x55555557f8f7 *)
mov %ymm4_0 %L0x7fffffff0320;
mov %ymm4_1 %L0x7fffffff0328;
mov %ymm4_2 %L0x7fffffff0330;
mov %ymm4_3 %L0x7fffffff0338;
(* vmovupd 0x40(%rdx),%ymm5                        #! EA = L0x7fffffff0340; Value = 0x0000000000000000; PC = 0x55555557f8fc *)
mov %ymm5_0 %L0x7fffffff0340;
mov %ymm5_1 %L0x7fffffff0348;
mov %ymm5_2 %L0x7fffffff0350;
mov %ymm5_3 %L0x7fffffff0358;
(* vpermq $0xfa,%ymm2,%ymm6                        #! PC = 0x55555557f901 *)
mov %perm0 %ymm2_2;
mov %perm1 %ymm2_2;
mov %perm2 %ymm2_3;
mov %perm3 %ymm2_3;
mov %ymm6_0 %perm0;
mov %ymm6_1 %perm1;
mov %ymm6_2 %perm2;
mov %ymm6_3 %perm3;
(* vpermq $0xee,%ymm5,%ymm7                        #! PC = 0x55555557f907 *)
mov %perm0 %ymm5_2;
mov %perm1 %ymm5_3;
mov %perm2 %ymm5_2;
mov %perm3 %ymm5_3;
mov %ymm7_0 %perm0;
mov %ymm7_1 %perm1;
mov %ymm7_2 %perm2;
mov %ymm7_3 %perm3;
(* vpand  %ymm6,%ymm7,%ymm8                        #! PC = 0x55555557f90d *)
mul %ymm8_0 %ymm7_0 %ymm6_0;
mul %ymm8_1 %ymm7_1 %ymm6_1;
mul %ymm8_2 %ymm7_2 %ymm6_2;
mul %ymm8_3 %ymm7_3 %ymm6_3;
(* vmovupd %ymm8,0x140(%rcx)                       #! EA = L0x7ffffffeff60; PC = 0x55555557f911 *)
mov %L0x7ffffffeff60 %ymm8_0;
mov %L0x7ffffffeff68 %ymm8_1;
mov %L0x7ffffffeff70 %ymm8_2;
mov %L0x7ffffffeff78 %ymm8_3;
(* vpermq $0x44,%ymm5,%ymm5                        #! PC = 0x55555557f919 *)
mov %perm0 %ymm5_0;
mov %perm1 %ymm5_1;
mov %perm2 %ymm5_0;
mov %perm3 %ymm5_1;
mov %ymm5_0 %perm0;
mov %ymm5_1 %perm1;
mov %ymm5_2 %perm2;
mov %ymm5_3 %perm3;
(* vpand  %ymm6,%ymm5,%ymm8                        #! PC = 0x55555557f91f *)
mul %ymm8_0 %ymm5_0 %ymm6_0;
mul %ymm8_1 %ymm5_1 %ymm6_1;
mul %ymm8_2 %ymm5_2 %ymm6_2;
mul %ymm8_3 %ymm5_3 %ymm6_3;
(* vpermq $0xee,%ymm4,%ymm9                        #! PC = 0x55555557f923 *)
mov %perm0 %ymm4_2;
mov %perm1 %ymm4_3;
mov %perm2 %ymm4_2;
mov %perm3 %ymm4_3;
mov %ymm9_0 %perm0;
mov %ymm9_1 %perm1;
mov %ymm9_2 %perm2;
mov %ymm9_3 %perm3;
(* vpand  %ymm6,%ymm9,%ymm10                       #! PC = 0x55555557f929 *)
mul %ymm10_0 %ymm9_0 %ymm6_0;
mul %ymm10_1 %ymm9_1 %ymm6_1;
mul %ymm10_2 %ymm9_2 %ymm6_2;
mul %ymm10_3 %ymm9_3 %ymm6_3;
(* vpermq $0x44,%ymm4,%ymm4                        #! PC = 0x55555557f92d *)
mov %perm0 %ymm4_0;
mov %perm1 %ymm4_1;
mov %perm2 %ymm4_0;
mov %perm3 %ymm4_1;
mov %ymm4_0 %perm0;
mov %ymm4_1 %perm1;
mov %ymm4_2 %perm2;
mov %ymm4_3 %perm3;
(* vpand  %ymm6,%ymm4,%ymm11                       #! PC = 0x55555557f933 *)
mul %ymm11_0 %ymm4_0 %ymm6_0;
mul %ymm11_1 %ymm4_1 %ymm6_1;
mul %ymm11_2 %ymm4_2 %ymm6_2;
mul %ymm11_3 %ymm4_3 %ymm6_3;
(* vpermq $0xee,%ymm3,%ymm12                       #! PC = 0x55555557f937 *)
mov %perm0 %ymm3_2;
mov %perm1 %ymm3_3;
mov %perm2 %ymm3_2;
mov %perm3 %ymm3_3;
mov %ymm12_0 %perm0;
mov %ymm12_1 %perm1;
mov %ymm12_2 %perm2;
mov %ymm12_3 %perm3;
(* vpand  %ymm6,%ymm12,%ymm13                      #! PC = 0x55555557f93d *)
mul %ymm13_0 %ymm12_0 %ymm6_0;
mul %ymm13_1 %ymm12_1 %ymm6_1;
mul %ymm13_2 %ymm12_2 %ymm6_2;
mul %ymm13_3 %ymm12_3 %ymm6_3;
(* vpermq $0x44,%ymm3,%ymm3                        #! PC = 0x55555557f941 *)
mov %perm0 %ymm3_0;
mov %perm1 %ymm3_1;
mov %perm2 %ymm3_0;
mov %perm3 %ymm3_1;
mov %ymm3_0 %perm0;
mov %ymm3_1 %perm1;
mov %ymm3_2 %perm2;
mov %ymm3_3 %perm3;
(* vpand  %ymm6,%ymm3,%ymm6                        #! PC = 0x55555557f947 *)
mul %ymm6_0 %ymm3_0 %ymm6_0;
mul %ymm6_1 %ymm3_1 %ymm6_1;
mul %ymm6_2 %ymm3_2 %ymm6_2;
mul %ymm6_3 %ymm3_3 %ymm6_3;
(* vpermq $0x50,%ymm2,%ymm2                        #! PC = 0x55555557f94b *)
mov %perm0 %ymm2_0;
mov %perm1 %ymm2_0;
mov %perm2 %ymm2_1;
mov %perm3 %ymm2_1;
mov %ymm2_0 %perm0;
mov %ymm2_1 %perm1;
mov %ymm2_2 %perm2;
mov %ymm2_3 %perm3;
(* vpand  %ymm2,%ymm7,%ymm14                       #! PC = 0x55555557f951 *)
mul %ymm14_0 %ymm7_0 %ymm2_0;
mul %ymm14_1 %ymm7_1 %ymm2_1;
mul %ymm14_2 %ymm7_2 %ymm2_2;
mul %ymm14_3 %ymm7_3 %ymm2_3;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557f955 *)
adds %dc %ymm8_0 %ymm8_0 %ymm14_0;
adds %dc %ymm8_1 %ymm8_1 %ymm14_1;
adds %dc %ymm8_2 %ymm8_2 %ymm14_2;
adds %dc %ymm8_3 %ymm8_3 %ymm14_3;
(* vmovupd %ymm8,0x120(%rcx)                       #! EA = L0x7ffffffeff40; PC = 0x55555557f95a *)
mov %L0x7ffffffeff40 %ymm8_0;
mov %L0x7ffffffeff48 %ymm8_1;
mov %L0x7ffffffeff50 %ymm8_2;
mov %L0x7ffffffeff58 %ymm8_3;
(* vpand  %ymm2,%ymm5,%ymm8                        #! PC = 0x55555557f962 *)
mul %ymm8_0 %ymm5_0 %ymm2_0;
mul %ymm8_1 %ymm5_1 %ymm2_1;
mul %ymm8_2 %ymm5_2 %ymm2_2;
mul %ymm8_3 %ymm5_3 %ymm2_3;
(* vpxor  %ymm8,%ymm10,%ymm10                      #! PC = 0x55555557f966 *)
adds %dc %ymm10_0 %ymm10_0 %ymm8_0;
adds %dc %ymm10_1 %ymm10_1 %ymm8_1;
adds %dc %ymm10_2 %ymm10_2 %ymm8_2;
adds %dc %ymm10_3 %ymm10_3 %ymm8_3;
(* vpand  %ymm2,%ymm9,%ymm8                        #! PC = 0x55555557f96b *)
mul %ymm8_0 %ymm9_0 %ymm2_0;
mul %ymm8_1 %ymm9_1 %ymm2_1;
mul %ymm8_2 %ymm9_2 %ymm2_2;
mul %ymm8_3 %ymm9_3 %ymm2_3;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557f96f *)
adds %dc %ymm11_0 %ymm11_0 %ymm8_0;
adds %dc %ymm11_1 %ymm11_1 %ymm8_1;
adds %dc %ymm11_2 %ymm11_2 %ymm8_2;
adds %dc %ymm11_3 %ymm11_3 %ymm8_3;
(* vpand  %ymm2,%ymm4,%ymm8                        #! PC = 0x55555557f974 *)
mul %ymm8_0 %ymm4_0 %ymm2_0;
mul %ymm8_1 %ymm4_1 %ymm2_1;
mul %ymm8_2 %ymm4_2 %ymm2_2;
mul %ymm8_3 %ymm4_3 %ymm2_3;
(* vpxor  %ymm8,%ymm13,%ymm13                      #! PC = 0x55555557f978 *)
adds %dc %ymm13_0 %ymm13_0 %ymm8_0;
adds %dc %ymm13_1 %ymm13_1 %ymm8_1;
adds %dc %ymm13_2 %ymm13_2 %ymm8_2;
adds %dc %ymm13_3 %ymm13_3 %ymm8_3;
(* vpand  %ymm2,%ymm12,%ymm8                       #! PC = 0x55555557f97d *)
mul %ymm8_0 %ymm12_0 %ymm2_0;
mul %ymm8_1 %ymm12_1 %ymm2_1;
mul %ymm8_2 %ymm12_2 %ymm2_2;
mul %ymm8_3 %ymm12_3 %ymm2_3;
(* vpxor  %ymm8,%ymm6,%ymm6                        #! PC = 0x55555557f981 *)
adds %dc %ymm6_0 %ymm6_0 %ymm8_0;
adds %dc %ymm6_1 %ymm6_1 %ymm8_1;
adds %dc %ymm6_2 %ymm6_2 %ymm8_2;
adds %dc %ymm6_3 %ymm6_3 %ymm8_3;
(* vpand  %ymm2,%ymm3,%ymm2                        #! PC = 0x55555557f986 *)
mul %ymm2_0 %ymm3_0 %ymm2_0;
mul %ymm2_1 %ymm3_1 %ymm2_1;
mul %ymm2_2 %ymm3_2 %ymm2_2;
mul %ymm2_3 %ymm3_3 %ymm2_3;
(* vpermq $0xfa,%ymm1,%ymm8                        #! PC = 0x55555557f98a *)
mov %perm0 %ymm1_2;
mov %perm1 %ymm1_2;
mov %perm2 %ymm1_3;
mov %perm3 %ymm1_3;
mov %ymm8_0 %perm0;
mov %ymm8_1 %perm1;
mov %ymm8_2 %perm2;
mov %ymm8_3 %perm3;
(* vpand  %ymm8,%ymm7,%ymm14                       #! PC = 0x55555557f990 *)
mul %ymm14_0 %ymm7_0 %ymm8_0;
mul %ymm14_1 %ymm7_1 %ymm8_1;
mul %ymm14_2 %ymm7_2 %ymm8_2;
mul %ymm14_3 %ymm7_3 %ymm8_3;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557f995 *)
adds %dc %ymm10_0 %ymm10_0 %ymm14_0;
adds %dc %ymm10_1 %ymm10_1 %ymm14_1;
adds %dc %ymm10_2 %ymm10_2 %ymm14_2;
adds %dc %ymm10_3 %ymm10_3 %ymm14_3;
(* vmovupd %ymm10,0x100(%rcx)                      #! EA = L0x7ffffffeff20; PC = 0x55555557f99a *)
mov %L0x7ffffffeff20 %ymm10_0;
mov %L0x7ffffffeff28 %ymm10_1;
mov %L0x7ffffffeff30 %ymm10_2;
mov %L0x7ffffffeff38 %ymm10_3;
(* vpand  %ymm8,%ymm5,%ymm10                       #! PC = 0x55555557f9a2 *)
mul %ymm10_0 %ymm5_0 %ymm8_0;
mul %ymm10_1 %ymm5_1 %ymm8_1;
mul %ymm10_2 %ymm5_2 %ymm8_2;
mul %ymm10_3 %ymm5_3 %ymm8_3;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557f9a7 *)
adds %dc %ymm11_0 %ymm11_0 %ymm10_0;
adds %dc %ymm11_1 %ymm11_1 %ymm10_1;
adds %dc %ymm11_2 %ymm11_2 %ymm10_2;
adds %dc %ymm11_3 %ymm11_3 %ymm10_3;
(* vpand  %ymm8,%ymm9,%ymm10                       #! PC = 0x55555557f9ac *)
mul %ymm10_0 %ymm9_0 %ymm8_0;
mul %ymm10_1 %ymm9_1 %ymm8_1;
mul %ymm10_2 %ymm9_2 %ymm8_2;
mul %ymm10_3 %ymm9_3 %ymm8_3;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557f9b1 *)
adds %dc %ymm13_0 %ymm13_0 %ymm10_0;
adds %dc %ymm13_1 %ymm13_1 %ymm10_1;
adds %dc %ymm13_2 %ymm13_2 %ymm10_2;
adds %dc %ymm13_3 %ymm13_3 %ymm10_3;
(* vpand  %ymm8,%ymm4,%ymm10                       #! PC = 0x55555557f9b6 *)
mul %ymm10_0 %ymm4_0 %ymm8_0;
mul %ymm10_1 %ymm4_1 %ymm8_1;
mul %ymm10_2 %ymm4_2 %ymm8_2;
mul %ymm10_3 %ymm4_3 %ymm8_3;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555557f9bb *)
adds %dc %ymm6_0 %ymm6_0 %ymm10_0;
adds %dc %ymm6_1 %ymm6_1 %ymm10_1;
adds %dc %ymm6_2 %ymm6_2 %ymm10_2;
adds %dc %ymm6_3 %ymm6_3 %ymm10_3;
(* vpand  %ymm8,%ymm12,%ymm10                      #! PC = 0x55555557f9c0 *)
mul %ymm10_0 %ymm12_0 %ymm8_0;
mul %ymm10_1 %ymm12_1 %ymm8_1;
mul %ymm10_2 %ymm12_2 %ymm8_2;
mul %ymm10_3 %ymm12_3 %ymm8_3;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555557f9c5 *)
adds %dc %ymm2_0 %ymm2_0 %ymm10_0;
adds %dc %ymm2_1 %ymm2_1 %ymm10_1;
adds %dc %ymm2_2 %ymm2_2 %ymm10_2;
adds %dc %ymm2_3 %ymm2_3 %ymm10_3;
(* vpand  %ymm8,%ymm3,%ymm8                        #! PC = 0x55555557f9ca *)
mul %ymm8_0 %ymm3_0 %ymm8_0;
mul %ymm8_1 %ymm3_1 %ymm8_1;
mul %ymm8_2 %ymm3_2 %ymm8_2;
mul %ymm8_3 %ymm3_3 %ymm8_3;
(* vpermq $0x50,%ymm1,%ymm1                        #! PC = 0x55555557f9cf *)
mov %perm0 %ymm1_0;
mov %perm1 %ymm1_0;
mov %perm2 %ymm1_1;
mov %perm3 %ymm1_1;
mov %ymm1_0 %perm0;
mov %ymm1_1 %perm1;
mov %ymm1_2 %perm2;
mov %ymm1_3 %perm3;
(* vpand  %ymm1,%ymm7,%ymm10                       #! PC = 0x55555557f9d5 *)
mul %ymm10_0 %ymm7_0 %ymm1_0;
mul %ymm10_1 %ymm7_1 %ymm1_1;
mul %ymm10_2 %ymm7_2 %ymm1_2;
mul %ymm10_3 %ymm7_3 %ymm1_3;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557f9d9 *)
adds %dc %ymm11_0 %ymm11_0 %ymm10_0;
adds %dc %ymm11_1 %ymm11_1 %ymm10_1;
adds %dc %ymm11_2 %ymm11_2 %ymm10_2;
adds %dc %ymm11_3 %ymm11_3 %ymm10_3;
(* vmovupd %ymm11,0xe0(%rcx)                       #! EA = L0x7ffffffeff00; PC = 0x55555557f9de *)
mov %L0x7ffffffeff00 %ymm11_0;
mov %L0x7ffffffeff08 %ymm11_1;
mov %L0x7ffffffeff10 %ymm11_2;
mov %L0x7ffffffeff18 %ymm11_3;
(* vpand  %ymm1,%ymm5,%ymm10                       #! PC = 0x55555557f9e6 *)
mul %ymm10_0 %ymm5_0 %ymm1_0;
mul %ymm10_1 %ymm5_1 %ymm1_1;
mul %ymm10_2 %ymm5_2 %ymm1_2;
mul %ymm10_3 %ymm5_3 %ymm1_3;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557f9ea *)
adds %dc %ymm13_0 %ymm13_0 %ymm10_0;
adds %dc %ymm13_1 %ymm13_1 %ymm10_1;
adds %dc %ymm13_2 %ymm13_2 %ymm10_2;
adds %dc %ymm13_3 %ymm13_3 %ymm10_3;
(* vpand  %ymm1,%ymm9,%ymm10                       #! PC = 0x55555557f9ef *)
mul %ymm10_0 %ymm9_0 %ymm1_0;
mul %ymm10_1 %ymm9_1 %ymm1_1;
mul %ymm10_2 %ymm9_2 %ymm1_2;
mul %ymm10_3 %ymm9_3 %ymm1_3;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555557f9f3 *)
adds %dc %ymm6_0 %ymm6_0 %ymm10_0;
adds %dc %ymm6_1 %ymm6_1 %ymm10_1;
adds %dc %ymm6_2 %ymm6_2 %ymm10_2;
adds %dc %ymm6_3 %ymm6_3 %ymm10_3;
(* vpand  %ymm1,%ymm4,%ymm10                       #! PC = 0x55555557f9f8 *)
mul %ymm10_0 %ymm4_0 %ymm1_0;
mul %ymm10_1 %ymm4_1 %ymm1_1;
mul %ymm10_2 %ymm4_2 %ymm1_2;
mul %ymm10_3 %ymm4_3 %ymm1_3;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555557f9fc *)
adds %dc %ymm2_0 %ymm2_0 %ymm10_0;
adds %dc %ymm2_1 %ymm2_1 %ymm10_1;
adds %dc %ymm2_2 %ymm2_2 %ymm10_2;
adds %dc %ymm2_3 %ymm2_3 %ymm10_3;
(* vpand  %ymm1,%ymm12,%ymm10                      #! PC = 0x55555557fa01 *)
mul %ymm10_0 %ymm12_0 %ymm1_0;
mul %ymm10_1 %ymm12_1 %ymm1_1;
mul %ymm10_2 %ymm12_2 %ymm1_2;
mul %ymm10_3 %ymm12_3 %ymm1_3;
(* vpxor  %ymm10,%ymm8,%ymm8                       #! PC = 0x55555557fa05 *)
adds %dc %ymm8_0 %ymm8_0 %ymm10_0;
adds %dc %ymm8_1 %ymm8_1 %ymm10_1;
adds %dc %ymm8_2 %ymm8_2 %ymm10_2;
adds %dc %ymm8_3 %ymm8_3 %ymm10_3;
(* vpand  %ymm1,%ymm3,%ymm1                        #! PC = 0x55555557fa0a *)
mul %ymm1_0 %ymm3_0 %ymm1_0;
mul %ymm1_1 %ymm3_1 %ymm1_1;
mul %ymm1_2 %ymm3_2 %ymm1_2;
mul %ymm1_3 %ymm3_3 %ymm1_3;
(* vpermq $0xfa,%ymm0,%ymm10                       #! PC = 0x55555557fa0e *)
mov %perm0 %ymm0_2;
mov %perm1 %ymm0_2;
mov %perm2 %ymm0_3;
mov %perm3 %ymm0_3;
mov %ymm10_0 %perm0;
mov %ymm10_1 %perm1;
mov %ymm10_2 %perm2;
mov %ymm10_3 %perm3;
(* vpand  %ymm10,%ymm7,%ymm11                      #! PC = 0x55555557fa14 *)
mul %ymm11_0 %ymm7_0 %ymm10_0;
mul %ymm11_1 %ymm7_1 %ymm10_1;
mul %ymm11_2 %ymm7_2 %ymm10_2;
mul %ymm11_3 %ymm7_3 %ymm10_3;
(* vpxor  %ymm11,%ymm13,%ymm13                     #! PC = 0x55555557fa19 *)
adds %dc %ymm13_0 %ymm13_0 %ymm11_0;
adds %dc %ymm13_1 %ymm13_1 %ymm11_1;
adds %dc %ymm13_2 %ymm13_2 %ymm11_2;
adds %dc %ymm13_3 %ymm13_3 %ymm11_3;
(* vmovupd %ymm13,0xc0(%rcx)                       #! EA = L0x7ffffffefee0; PC = 0x55555557fa1e *)
mov %L0x7ffffffefee0 %ymm13_0;
mov %L0x7ffffffefee8 %ymm13_1;
mov %L0x7ffffffefef0 %ymm13_2;
mov %L0x7ffffffefef8 %ymm13_3;
(* vpand  %ymm10,%ymm5,%ymm11                      #! PC = 0x55555557fa26 *)
mul %ymm11_0 %ymm5_0 %ymm10_0;
mul %ymm11_1 %ymm5_1 %ymm10_1;
mul %ymm11_2 %ymm5_2 %ymm10_2;
mul %ymm11_3 %ymm5_3 %ymm10_3;
(* vpxor  %ymm11,%ymm6,%ymm6                       #! PC = 0x55555557fa2b *)
adds %dc %ymm6_0 %ymm6_0 %ymm11_0;
adds %dc %ymm6_1 %ymm6_1 %ymm11_1;
adds %dc %ymm6_2 %ymm6_2 %ymm11_2;
adds %dc %ymm6_3 %ymm6_3 %ymm11_3;
(* vpand  %ymm10,%ymm9,%ymm11                      #! PC = 0x55555557fa30 *)
mul %ymm11_0 %ymm9_0 %ymm10_0;
mul %ymm11_1 %ymm9_1 %ymm10_1;
mul %ymm11_2 %ymm9_2 %ymm10_2;
mul %ymm11_3 %ymm9_3 %ymm10_3;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557fa35 *)
adds %dc %ymm2_0 %ymm2_0 %ymm11_0;
adds %dc %ymm2_1 %ymm2_1 %ymm11_1;
adds %dc %ymm2_2 %ymm2_2 %ymm11_2;
adds %dc %ymm2_3 %ymm2_3 %ymm11_3;
(* vpand  %ymm10,%ymm4,%ymm11                      #! PC = 0x55555557fa3a *)
mul %ymm11_0 %ymm4_0 %ymm10_0;
mul %ymm11_1 %ymm4_1 %ymm10_1;
mul %ymm11_2 %ymm4_2 %ymm10_2;
mul %ymm11_3 %ymm4_3 %ymm10_3;
(* vpxor  %ymm11,%ymm8,%ymm8                       #! PC = 0x55555557fa3f *)
adds %dc %ymm8_0 %ymm8_0 %ymm11_0;
adds %dc %ymm8_1 %ymm8_1 %ymm11_1;
adds %dc %ymm8_2 %ymm8_2 %ymm11_2;
adds %dc %ymm8_3 %ymm8_3 %ymm11_3;
(* vpand  %ymm10,%ymm12,%ymm11                     #! PC = 0x55555557fa44 *)
mul %ymm11_0 %ymm12_0 %ymm10_0;
mul %ymm11_1 %ymm12_1 %ymm10_1;
mul %ymm11_2 %ymm12_2 %ymm10_2;
mul %ymm11_3 %ymm12_3 %ymm10_3;
(* vpxor  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555557fa49 *)
adds %dc %ymm1_0 %ymm1_0 %ymm11_0;
adds %dc %ymm1_1 %ymm1_1 %ymm11_1;
adds %dc %ymm1_2 %ymm1_2 %ymm11_2;
adds %dc %ymm1_3 %ymm1_3 %ymm11_3;
(* vpand  %ymm10,%ymm3,%ymm10                      #! PC = 0x55555557fa4e *)
mul %ymm10_0 %ymm3_0 %ymm10_0;
mul %ymm10_1 %ymm3_1 %ymm10_1;
mul %ymm10_2 %ymm3_2 %ymm10_2;
mul %ymm10_3 %ymm3_3 %ymm10_3;
(* vpermq $0x50,%ymm0,%ymm0                        #! PC = 0x55555557fa53 *)
mov %perm0 %ymm0_0;
mov %perm1 %ymm0_0;
mov %perm2 %ymm0_1;
mov %perm3 %ymm0_1;
mov %ymm0_0 %perm0;
mov %ymm0_1 %perm1;
mov %ymm0_2 %perm2;
mov %ymm0_3 %perm3;
(* vpand  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557fa59 *)
mul %ymm7_0 %ymm7_0 %ymm0_0;
mul %ymm7_1 %ymm7_1 %ymm0_1;
mul %ymm7_2 %ymm7_2 %ymm0_2;
mul %ymm7_3 %ymm7_3 %ymm0_3;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555557fa5d *)
adds %dc %ymm6_0 %ymm6_0 %ymm7_0;
adds %dc %ymm6_1 %ymm6_1 %ymm7_1;
adds %dc %ymm6_2 %ymm6_2 %ymm7_2;
adds %dc %ymm6_3 %ymm6_3 %ymm7_3;
(* vmovupd %ymm6,0xa0(%rcx)                        #! EA = L0x7ffffffefec0; PC = 0x55555557fa61 *)
mov %L0x7ffffffefec0 %ymm6_0;
mov %L0x7ffffffefec8 %ymm6_1;
mov %L0x7ffffffefed0 %ymm6_2;
mov %L0x7ffffffefed8 %ymm6_3;
(* vpand  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557fa69 *)
mul %ymm5_0 %ymm5_0 %ymm0_0;
mul %ymm5_1 %ymm5_1 %ymm0_1;
mul %ymm5_2 %ymm5_2 %ymm0_2;
mul %ymm5_3 %ymm5_3 %ymm0_3;
(* vpxor  %ymm5,%ymm2,%ymm2                        #! PC = 0x55555557fa6d *)
adds %dc %ymm2_0 %ymm2_0 %ymm5_0;
adds %dc %ymm2_1 %ymm2_1 %ymm5_1;
adds %dc %ymm2_2 %ymm2_2 %ymm5_2;
adds %dc %ymm2_3 %ymm2_3 %ymm5_3;
(* vpand  %ymm0,%ymm9,%ymm5                        #! PC = 0x55555557fa71 *)
mul %ymm5_0 %ymm9_0 %ymm0_0;
mul %ymm5_1 %ymm9_1 %ymm0_1;
mul %ymm5_2 %ymm9_2 %ymm0_2;
mul %ymm5_3 %ymm9_3 %ymm0_3;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557fa75 *)
adds %dc %ymm8_0 %ymm8_0 %ymm5_0;
adds %dc %ymm8_1 %ymm8_1 %ymm5_1;
adds %dc %ymm8_2 %ymm8_2 %ymm5_2;
adds %dc %ymm8_3 %ymm8_3 %ymm5_3;
(* vpand  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557fa79 *)
mul %ymm4_0 %ymm4_0 %ymm0_0;
mul %ymm4_1 %ymm4_1 %ymm0_1;
mul %ymm4_2 %ymm4_2 %ymm0_2;
mul %ymm4_3 %ymm4_3 %ymm0_3;
(* vpxor  %ymm4,%ymm1,%ymm1                        #! PC = 0x55555557fa7d *)
adds %dc %ymm1_0 %ymm1_0 %ymm4_0;
adds %dc %ymm1_1 %ymm1_1 %ymm4_1;
adds %dc %ymm1_2 %ymm1_2 %ymm4_2;
adds %dc %ymm1_3 %ymm1_3 %ymm4_3;
(* vpand  %ymm0,%ymm12,%ymm4                       #! PC = 0x55555557fa81 *)
mul %ymm4_0 %ymm12_0 %ymm0_0;
mul %ymm4_1 %ymm12_1 %ymm0_1;
mul %ymm4_2 %ymm12_2 %ymm0_2;
mul %ymm4_3 %ymm12_3 %ymm0_3;
(* vpxor  %ymm4,%ymm10,%ymm10                      #! PC = 0x55555557fa85 *)
adds %dc %ymm10_0 %ymm10_0 %ymm4_0;
adds %dc %ymm10_1 %ymm10_1 %ymm4_1;
adds %dc %ymm10_2 %ymm10_2 %ymm4_2;
adds %dc %ymm10_3 %ymm10_3 %ymm4_3;
(* vpand  %ymm0,%ymm3,%ymm0                        #! PC = 0x55555557fa89 *)
mul %ymm0_0 %ymm3_0 %ymm0_0;
mul %ymm0_1 %ymm3_1 %ymm0_1;
mul %ymm0_2 %ymm3_2 %ymm0_2;
mul %ymm0_3 %ymm3_3 %ymm0_3;
(* vmovupd %ymm2,0x80(%rcx)                        #! EA = L0x7ffffffefea0; PC = 0x55555557fa8d *)
mov %L0x7ffffffefea0 %ymm2_0;
mov %L0x7ffffffefea8 %ymm2_1;
mov %L0x7ffffffefeb0 %ymm2_2;
mov %L0x7ffffffefeb8 %ymm2_3;
(* vmovupd %ymm8,0x60(%rcx)                        #! EA = L0x7ffffffefe80; PC = 0x55555557fa95 *)
mov %L0x7ffffffefe80 %ymm8_0;
mov %L0x7ffffffefe88 %ymm8_1;
mov %L0x7ffffffefe90 %ymm8_2;
mov %L0x7ffffffefe98 %ymm8_3;
(* vmovupd %ymm1,0x40(%rcx)                        #! EA = L0x7ffffffefe60; PC = 0x55555557fa9a *)
mov %L0x7ffffffefe60 %ymm1_0;
mov %L0x7ffffffefe68 %ymm1_1;
mov %L0x7ffffffefe70 %ymm1_2;
mov %L0x7ffffffefe78 %ymm1_3;
(* vmovupd %ymm10,0x20(%rcx)                       #! EA = L0x7ffffffefe40; PC = 0x55555557fa9f *)
mov %L0x7ffffffefe40 %ymm10_0;
mov %L0x7ffffffefe48 %ymm10_1;
mov %L0x7ffffffefe50 %ymm10_2;
mov %L0x7ffffffefe58 %ymm10_3;
(* vmovupd %ymm0,(%rcx)                            #! EA = L0x7ffffffefe20; PC = 0x55555557faa4 *)
mov %L0x7ffffffefe20 %ymm0_0;
mov %L0x7ffffffefe28 %ymm0_1;
mov %L0x7ffffffefe30 %ymm0_2;
mov %L0x7ffffffefe38 %ymm0_3;
(* mov    0x158(%rcx),%rsi                         #! EA = L0x7ffffffeff78; Value = 0x8f83fa884bf91c77; PC = 0x55555557faa8 *)
mov %rsi %L0x7ffffffeff78;
(* mov    %rsi,%rdx                                #! PC = 0x55555557faaf *)
mov %rdx %rsi;
(* mov    %rsi,%rsi                                #! PC = 0x55555557fab2 *)
mov %rsi %rsi;
(* mov    0x150(%rcx),%r8                          #! EA = L0x7ffffffeff70; Value = 0x8f83fa884bf91c77; PC = 0x55555557fab5 *)
mov %r8 %L0x7ffffffeff70;
(* xor    0x148(%rcx),%r8                          #! EA = L0x7ffffffeff68; Value = 0x8e0d615b6c0d3b13; PC = 0x55555557fabc *)
adds %dc %r8 %r8 %L0x7ffffffeff68;
(* mov    %r8,%r9                                  #! PC = 0x55555557fac3 *)
mov %r9 %r8;
(* mov    %r8,%r8                                  #! PC = 0x55555557fac6 *)
mov %r8 %r8;
(* mov    0x138(%rcx),%rax                         #! EA = L0x7ffffffeff58; Value = 0x4f61ca2e4322941d; PC = 0x55555557fac9 *)
mov %rax %L0x7ffffffeff58;
(* xor    0x140(%rcx),%rax                         #! EA = L0x7ffffffeff60; Value = 0x8e0d615b6c0d3b13; PC = 0x55555557fad0 *)
adds %dc %rax %rax %L0x7ffffffeff60;
(* mov    %rax,%r10                                #! PC = 0x55555557fad7 *)
mov %r10 %rax;
(* mov    %rax,%rax                                #! PC = 0x55555557fada *)
mov %rax %rax;
(* mov    0x130(%rcx),%r11                         #! EA = L0x7ffffffeff50; Value = 0xc0e230a608db886a; PC = 0x55555557fadd *)
mov %r11 %L0x7ffffffeff50;
(* xor    0x128(%rcx),%r11                         #! EA = L0x7ffffffeff48; Value = 0x82ecf4ade3a2121a; PC = 0x55555557fae4 *)
adds %dc %r11 %r11 %L0x7ffffffeff48;
(* xor    %r11,%rsi                                #! PC = 0x55555557faeb *)
adds %dc %rsi %rsi %r11;
(* mov    %r11,%r11                                #! PC = 0x55555557faee *)
mov %r11 %r11;
(* mov    0x118(%rcx),%r12                         #! EA = L0x7ffffffeff38; Value = 0xf9e1c36677604867; PC = 0x55555557faf1 *)
mov %r12 %L0x7ffffffeff38;
(* xor    0x120(%rcx),%r12                         #! EA = L0x7ffffffeff40; Value = 0x0ce195f68faf2909; PC = 0x55555557faf8 *)
adds %dc %r12 %r12 %L0x7ffffffeff40;
(* xor    %r12,%r8                                 #! PC = 0x55555557faff *)
adds %dc %r8 %r8 %r12;
(* mov    %r12,%r12                                #! PC = 0x55555557fb02 *)
mov %r12 %r12;
(* mov    0x110(%rcx),%r13                         #! EA = L0x7ffffffeff30; Value = 0xb68009483442dc7a; PC = 0x55555557fb05 *)
mov %r13 %L0x7ffffffeff30;
(* xor    0x108(%rcx),%r13                         #! EA = L0x7ffffffeff28; Value = 0xda81058191371710; PC = 0x55555557fb0c *)
adds %dc %r13 %r13 %L0x7ffffffeff28;
(* xor    %r13,%rax                                #! PC = 0x55555557fb13 *)
adds %dc %rax %rax %r13;
(* mov    %r13,%r13                                #! PC = 0x55555557fb16 *)
mov %r13 %r13;
(* mov    0xf8(%rcx),%r14                          #! EA = L0x7ffffffeff18; Value = 0x74600f9b9cd38180; PC = 0x55555557fb19 *)
mov %r14 %L0x7ffffffeff18;
(* xor    0x100(%rcx),%r14                         #! EA = L0x7ffffffeff20; Value = 0x586df12c7295050a; PC = 0x55555557fb20 *)
adds %dc %r14 %r14 %L0x7ffffffeff20;
(* xor    %r14,%r11                                #! PC = 0x55555557fb27 *)
adds %dc %r11 %r11 %r14;
(* mov    %r14,%r14                                #! PC = 0x55555557fb2a *)
mov %r14 %r14;
(* mov    0xf0(%rcx),%r15                          #! EA = L0x7ffffffeff10; Value = 0x8d81ccfdebb3c9e7; PC = 0x55555557fb2d *)
mov %r15 %L0x7ffffffeff10;
(* xor    0xe8(%rcx),%r15                          #! EA = L0x7ffffffeff08; Value = 0xff48b30e5566b8b6; PC = 0x55555557fb34 *)
adds %dc %r15 %r15 %L0x7ffffffeff08;
(* xor    %r15,%r12                                #! PC = 0x55555557fb3b *)
adds %dc %r12 %r12 %r15;
(* mov    %r15,%r15                                #! PC = 0x55555557fb3e *)
mov %r15 %r15;
(* mov    0xd8(%rcx),%rbx                          #! EA = L0x7ffffffefef8; Value = 0xbf82edf0422b1ff6; PC = 0x55555557fb41 *)
mov %rbx %L0x7ffffffefef8;
(* xor    0xe0(%rcx),%rbx                          #! EA = L0x7ffffffeff00; Value = 0x25c9b68fc451afa6; PC = 0x55555557fb48 *)
adds %dc %rbx %rbx %L0x7ffffffeff00;
(* xor    %rbx,%r13                                #! PC = 0x55555557fb4f *)
adds %dc %r13 %r13 %rbx;
(* mov    %rbx,%rbx                                #! PC = 0x55555557fb52 *)
mov %rbx %rbx;
(* xor    0xd0(%rcx),%rdx                          #! EA = L0x7ffffffefef0; Value = 0x446118e395018201; PC = 0x55555557fb55 *)
adds %dc %rdx %rdx %L0x7ffffffefef0;
(* xor    0xc8(%rcx),%rdx                          #! EA = L0x7ffffffefee8; Value = 0x14f1c7b67c24ded6; PC = 0x55555557fb5c *)
adds %dc %rdx %rdx %L0x7ffffffefee8;
(* xor    %rdx,%r14                                #! PC = 0x55555557fb63 *)
adds %dc %r14 %r14 %rdx;
(* mov    %rdx,%rdx                                #! PC = 0x55555557fb66 *)
mov %rdx %rdx;
(* xor    0xb8(%rcx),%r9                           #! EA = L0x7ffffffefed8; Value = 0x6a9a17b31243f514; PC = 0x55555557fb69 *)
adds %dc %r9 %r9 %L0x7ffffffefed8;
(* xor    0xc0(%rcx),%r9                           #! EA = L0x7ffffffefee0; Value = 0x65b415e3454f5d73; PC = 0x55555557fb70 *)
adds %dc %r9 %r9 %L0x7ffffffefee0;
(* xor    %r9,%r15                                 #! PC = 0x55555557fb77 *)
adds %dc %r15 %r15 %r9;
(* mov    %r9,%r9                                  #! PC = 0x55555557fb7a *)
mov %r9 %r9;
(* xor    0xb0(%rcx),%r10                          #! EA = L0x7ffffffefed0; Value = 0x9a79306d134a7eff; PC = 0x55555557fb7d *)
adds %dc %r10 %r10 %L0x7ffffffefed0;
(* xor    0xa8(%rcx),%r10                          #! EA = L0x7ffffffefec8; Value = 0x8ffdad1df90472da; PC = 0x55555557fb84 *)
adds %dc %r10 %r10 %L0x7ffffffefec8;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffff0298; PC = 0x55555557fb8b *)
mov %L0x7fffffff0298 %r10;
(* xor    0x98(%rcx),%rsi                          #! EA = L0x7ffffffefeb8; Value = 0xdc1a1efb2601296e; PC = 0x55555557fb8f *)
adds %dc %rsi %rsi %L0x7ffffffefeb8;
(* xor    0xa0(%rcx),%rsi                          #! EA = L0x7ffffffefec0; Value = 0x19e09e066682be16; PC = 0x55555557fb96 *)
adds %dc %rsi %rsi %L0x7ffffffefec0;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7fffffff0290; PC = 0x55555557fb9d *)
mov %L0x7fffffff0290 %rsi;
(* xor    0x90(%rcx),%r8                           #! EA = L0x7ffffffefeb0; Value = 0xc0e230a608db886a; PC = 0x55555557fba1 *)
adds %dc %r8 %r8 %L0x7ffffffefeb0;
(* xor    0x88(%rcx),%r8                           #! EA = L0x7ffffffefea8; Value = 0xd7905c318b9177d0; PC = 0x55555557fba8 *)
adds %dc %r8 %r8 %L0x7ffffffefea8;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffff0288; PC = 0x55555557fbaf *)
mov %L0x7fffffff0288 %r8;
(* xor    0x78(%rcx),%rax                          #! EA = L0x7ffffffefe98; Value = 0x519bd206cdb2e089; PC = 0x55555557fbb3 *)
adds %dc %rax %rax %L0x7ffffffefe98;
(* xor    0x80(%rcx),%rax                          #! EA = L0x7ffffffefea0; Value = 0x0ce195f68faf2909; PC = 0x55555557fbb7 *)
adds %dc %rax %rax %L0x7ffffffefea0;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffff0280; PC = 0x55555557fbbe *)
mov %L0x7fffffff0280 %rax;
(* xor    0x70(%rcx),%r11                          #! EA = L0x7ffffffefe90; Value = 0xb68009483442dc7a; PC = 0x55555557fbc2 *)
adds %dc %r11 %r11 %L0x7ffffffefe90;
(* xor    0x68(%rcx),%r11                          #! EA = L0x7ffffffefe88; Value = 0xf259eabe4fc0d876; PC = 0x55555557fbc6 *)
adds %dc %r11 %r11 %L0x7ffffffefe88;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7fffffff0278; PC = 0x55555557fbca *)
mov %L0x7fffffff0278 %r11;
(* xor    0x58(%rcx),%r12                          #! EA = L0x7ffffffefe78; Value = 0x15facae558b36288; PC = 0x55555557fbce *)
adds %dc %r12 %r12 %L0x7ffffffefe78;
(* xor    0x60(%rcx),%r12                          #! EA = L0x7ffffffefe80; Value = 0x586df12c7295050a; PC = 0x55555557fbd2 *)
adds %dc %r12 %r12 %L0x7ffffffefe80;
(* mov    %r12,0x30(%rdi)                          #! EA = L0x7fffffff0270; PC = 0x55555557fbd6 *)
mov %L0x7fffffff0270 %r12;
(* xor    0x50(%rcx),%r13                          #! EA = L0x7ffffffefe70; Value = 0x8d81ccfdebb3c9e7; PC = 0x55555557fbda *)
adds %dc %r13 %r13 %L0x7ffffffefe70;
(* xor    0x48(%rcx),%r13                          #! EA = L0x7ffffffefe68; Value = 0x97edff5d0a8f8505; PC = 0x55555557fbde *)
adds %dc %r13 %r13 %L0x7ffffffefe68;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7fffffff0268; PC = 0x55555557fbe2 *)
mov %L0x7fffffff0268 %r13;
(* xor    0x38(%rcx),%r14                          #! EA = L0x7ffffffefe58; Value = 0x0000000000000000; PC = 0x55555557fbe6 *)
adds %dc %r14 %r14 %L0x7ffffffefe58;
(* xor    0x40(%rcx),%r14                          #! EA = L0x7ffffffefe60; Value = 0x25c9b68fc451afa6; PC = 0x55555557fbea *)
adds %dc %r14 %r14 %L0x7ffffffefe60;
(* mov    %r14,0x20(%rdi)                          #! EA = L0x7fffffff0260; PC = 0x55555557fbee *)
mov %L0x7fffffff0260 %r14;
(* xor    0x30(%rcx),%r15                          #! EA = L0x7ffffffefe50; Value = 0x446118e395018201; PC = 0x55555557fbf2 *)
adds %dc %r15 %r15 %L0x7ffffffefe50;
(* xor    0x28(%rcx),%r15                          #! EA = L0x7ffffffefe48; Value = 0x0000000000000000; PC = 0x55555557fbf6 *)
adds %dc %r15 %r15 %L0x7ffffffefe48;
(* mov    %r15,0x18(%rdi)                          #! EA = L0x7fffffff0258; PC = 0x55555557fbfa *)
mov %L0x7fffffff0258 %r15;
(* xor    0x18(%rcx),%rbx                          #! EA = L0x7ffffffefe38; Value = 0x0000000000000000; PC = 0x55555557fbfe *)
adds %dc %rbx %rbx %L0x7ffffffefe38;
(* xor    0x20(%rcx),%rbx                          #! EA = L0x7ffffffefe40; Value = 0x65b415e3454f5d73; PC = 0x55555557fc02 *)
adds %dc %rbx %rbx %L0x7ffffffefe40;
(* mov    %rbx,0x10(%rdi)                          #! EA = L0x7fffffff0250; PC = 0x55555557fc06 *)
mov %L0x7fffffff0250 %rbx;
(* xor    0x10(%rcx),%rdx                          #! EA = L0x7ffffffefe30; Value = 0x15facae558b36288; PC = 0x55555557fc0a *)
adds %dc %rdx %rdx %L0x7ffffffefe30;
(* xor    0x8(%rcx),%rdx                           #! EA = L0x7ffffffefe28; Value = 0x0000000000000000; PC = 0x55555557fc0e *)
adds %dc %rdx %rdx %L0x7ffffffefe28;
(* mov    %rdx,0x8(%rdi)                           #! EA = L0x7fffffff0248; PC = 0x55555557fc12 *)
mov %L0x7fffffff0248 %rdx;
(* xor    (%rcx),%r9                               #! EA = L0x7ffffffefe20; Value = 0x97edff5d0a8f8505; PC = 0x55555557fc16 *)
adds %dc %r9 %r9 %L0x7ffffffefe20;
(* mov    %r9,(%rdi)                               #! EA = L0x7fffffff0240; PC = 0x55555557fc19 *)
mov %L0x7fffffff0240 %r9;
(* #mov    0x260(%rsp),%r11                         #! EA = L0x7fffffff0080; Value = 0x00000000000002b8; PC = 0x55555557fc1c *)
#mov    0x260(%rsp),%%r11                         #! L0x7fffffff0080 = L0x7fffffff0080; 0x00000000000002b8 = 0x00000000000002b8; 0x55555557fc1c = 0x55555557fc1c;
(* #mov    0x268(%rsp),%r12                         #! EA = L0x7fffffff0088; Value = 0x0000000000000000; PC = 0x55555557fc24 *)
#mov    0x268(%rsp),%%r12                         #! L0x7fffffff0088 = L0x7fffffff0088; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc24 = 0x55555557fc24;
(* #mov    0x270(%rsp),%r13                         #! EA = L0x7fffffff0090; Value = 0x0000000000000000; PC = 0x55555557fc2c *)
#mov    0x270(%rsp),%%r13                         #! L0x7fffffff0090 = L0x7fffffff0090; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc2c = 0x55555557fc2c;
(* #mov    0x278(%rsp),%r14                         #! EA = L0x7fffffff0098; Value = 0x0000000000000000; PC = 0x55555557fc34 *)
#mov    0x278(%rsp),%%r14                         #! L0x7fffffff0098 = L0x7fffffff0098; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc34 = 0x55555557fc34;
(* #mov    0x280(%rsp),%r15                         #! EA = L0x7fffffff00a0; Value = 0x0000000000000000; PC = 0x55555557fc3c *)
#mov    0x280(%rsp),%%r15                         #! L0x7fffffff00a0 = L0x7fffffff00a0; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc3c = 0x55555557fc3c;
(* #mov    0x288(%rsp),%rbx                         #! EA = L0x7fffffff00a8; Value = 0x0000000000000000; PC = 0x55555557fc44 *)
#mov    0x288(%rsp),%%rbx                         #! L0x7fffffff00a8 = L0x7fffffff00a8; 0x0000000000000000 = 0x0000000000000000; 0x55555557fc44 = 0x55555557fc44;
(* #add    %r11,%rsp                                #! PC = 0x55555557fc4c *)
#add    %%r11,%rsp                                #! 0x55555557fc4c = 0x55555557fc4c;
(* #! <- SP = 0x7fffffff00d8 *)
#! 0x7fffffff00d8 = 0x7fffffff00d8;
(* #retq                                           #! PC = 0x55555557fc4f *)
#retq                                           #! 0x55555557fc4f = 0x55555557fc4f;

mov [r000,r010,r020,r030,r040,r050,r060,r070,r080,r090,r0a0,r0b0,r0c0,
     r0d0,r0e0,r0f0,r100,r110,r120,r130,r140,r150,r160,r170,r180,r190,
     r1a0,r1b0,r1c0,r1d0,r1e0,r1f0,r200,r210,r220,r230,r240,r250,r260,
     r270,r280,r290,r2a0,r2b0,r2c0,r2d0,r2e0,r2f0,r300,r310,r320,r330,
     r340,r350,r360,r370,r380,r390,r3a0,r3b0,r3c0,r3d0,r3e0,r3f0]
     %L0x7fffffff0240;
mov [r001,r011,r021,r031,r041,r051,r061,r071,r081,r091,r0a1,r0b1,r0c1,
     r0d1,r0e1,r0f1,r101,r111,r121,r131,r141,r151,r161,r171,r181,r191,
     r1a1,r1b1,r1c1,r1d1,r1e1,r1f1,r201,r211,r221,r231,r241,r251,r261,
     r271,r281,r291,r2a1,r2b1,r2c1,r2d1,r2e1,r2f1,r301,r311,r321,r331,
     r341,r351,r361,r371,r381,r391,r3a1,r3b1,r3c1,r3d1,r3e1,r3f1]
     %L0x7fffffff0248;
mov [r002,r012,r022,r032,r042,r052,r062,r072,r082,r092,r0a2,r0b2,r0c2,
     r0d2,r0e2,r0f2,r102,r112,r122,r132,r142,r152,r162,r172,r182,r192,
     r1a2,r1b2,r1c2,r1d2,r1e2,r1f2,r202,r212,r222,r232,r242,r252,r262,
     r272,r282,r292,r2a2,r2b2,r2c2,r2d2,r2e2,r2f2,r302,r312,r322,r332,
     r342,r352,r362,r372,r382,r392,r3a2,r3b2,r3c2,r3d2,r3e2,r3f2]
     %L0x7fffffff0250;
mov [r003,r013,r023,r033,r043,r053,r063,r073,r083,r093,r0a3,r0b3,r0c3,
     r0d3,r0e3,r0f3,r103,r113,r123,r133,r143,r153,r163,r173,r183,r193,
     r1a3,r1b3,r1c3,r1d3,r1e3,r1f3,r203,r213,r223,r233,r243,r253,r263,
     r273,r283,r293,r2a3,r2b3,r2c3,r2d3,r2e3,r2f3,r303,r313,r323,r333,
     r343,r353,r363,r373,r383,r393,r3a3,r3b3,r3c3,r3d3,r3e3,r3f3]
     %L0x7fffffff0258;
mov [r004,r014,r024,r034,r044,r054,r064,r074,r084,r094,r0a4,r0b4,r0c4,
     r0d4,r0e4,r0f4,r104,r114,r124,r134,r144,r154,r164,r174,r184,r194,
     r1a4,r1b4,r1c4,r1d4,r1e4,r1f4,r204,r214,r224,r234,r244,r254,r264,
     r274,r284,r294,r2a4,r2b4,r2c4,r2d4,r2e4,r2f4,r304,r314,r324,r334,
     r344,r354,r364,r374,r384,r394,r3a4,r3b4,r3c4,r3d4,r3e4,r3f4]
     %L0x7fffffff0260;
mov [r005,r015,r025,r035,r045,r055,r065,r075,r085,r095,r0a5,r0b5,r0c5,
     r0d5,r0e5,r0f5,r105,r115,r125,r135,r145,r155,r165,r175,r185,r195,
     r1a5,r1b5,r1c5,r1d5,r1e5,r1f5,r205,r215,r225,r235,r245,r255,r265,
     r275,r285,r295,r2a5,r2b5,r2c5,r2d5,r2e5,r2f5,r305,r315,r325,r335,
     r345,r355,r365,r375,r385,r395,r3a5,r3b5,r3c5,r3d5,r3e5,r3f5]
     %L0x7fffffff0268;
mov [r006,r016,r026,r036,r046,r056,r066,r076,r086,r096,r0a6,r0b6,r0c6,
     r0d6,r0e6,r0f6,r106,r116,r126,r136,r146,r156,r166,r176,r186,r196,
     r1a6,r1b6,r1c6,r1d6,r1e6,r1f6,r206,r216,r226,r236,r246,r256,r266,
     r276,r286,r296,r2a6,r2b6,r2c6,r2d6,r2e6,r2f6,r306,r316,r326,r336,
     r346,r356,r366,r376,r386,r396,r3a6,r3b6,r3c6,r3d6,r3e6,r3f6]
     %L0x7fffffff0270;
mov [r007,r017,r027,r037,r047,r057,r067,r077,r087,r097,r0a7,r0b7,r0c7,
     r0d7,r0e7,r0f7,r107,r117,r127,r137,r147,r157,r167,r177,r187,r197,
     r1a7,r1b7,r1c7,r1d7,r1e7,r1f7,r207,r217,r227,r237,r247,r257,r267,
     r277,r287,r297,r2a7,r2b7,r2c7,r2d7,r2e7,r2f7,r307,r317,r327,r337,
     r347,r357,r367,r377,r387,r397,r3a7,r3b7,r3c7,r3d7,r3e7,r3f7]
     %L0x7fffffff0278;
mov [r008,r018,r028,r038,r048,r058,r068,r078,r088,r098,r0a8,r0b8,r0c8,
     r0d8,r0e8,r0f8,r108,r118,r128,r138,r148,r158,r168,r178,r188,r198,
     r1a8,r1b8,r1c8,r1d8,r1e8,r1f8,r208,r218,r228,r238,r248,r258,r268,
     r278,r288,r298,r2a8,r2b8,r2c8,r2d8,r2e8,r2f8,r308,r318,r328,r338,
     r348,r358,r368,r378,r388,r398,r3a8,r3b8,r3c8,r3d8,r3e8,r3f8]
     %L0x7fffffff0280;
mov [r009,r019,r029,r039,r049,r059,r069,r079,r089,r099,r0a9,r0b9,r0c9,
     r0d9,r0e9,r0f9,r109,r119,r129,r139,r149,r159,r169,r179,r189,r199,
     r1a9,r1b9,r1c9,r1d9,r1e9,r1f9,r209,r219,r229,r239,r249,r259,r269,
     r279,r289,r299,r2a9,r2b9,r2c9,r2d9,r2e9,r2f9,r309,r319,r329,r339,
     r349,r359,r369,r379,r389,r399,r3a9,r3b9,r3c9,r3d9,r3e9,r3f9]
     %L0x7fffffff0288;
mov [r00a,r01a,r02a,r03a,r04a,r05a,r06a,r07a,r08a,r09a,r0aa,r0ba,r0ca,
     r0da,r0ea,r0fa,r10a,r11a,r12a,r13a,r14a,r15a,r16a,r17a,r18a,r19a,
     r1aa,r1ba,r1ca,r1da,r1ea,r1fa,r20a,r21a,r22a,r23a,r24a,r25a,r26a,
     r27a,r28a,r29a,r2aa,r2ba,r2ca,r2da,r2ea,r2fa,r30a,r31a,r32a,r33a,
     r34a,r35a,r36a,r37a,r38a,r39a,r3aa,r3ba,r3ca,r3da,r3ea,r3fa]
     %L0x7fffffff0290;
mov [r00b,r01b,r02b,r03b,r04b,r05b,r06b,r07b,r08b,r09b,r0ab,r0bb,r0cb,
     r0db,r0eb,r0fb,r10b,r11b,r12b,r13b,r14b,r15b,r16b,r17b,r18b,r19b,
     r1ab,r1bb,r1cb,r1db,r1eb,r1fb,r20b,r21b,r22b,r23b,r24b,r25b,r26b,
     r27b,r28b,r29b,r2ab,r2bb,r2cb,r2db,r2eb,r2fb,r30b,r31b,r32b,r33b,
     r34b,r35b,r36b,r37b,r38b,r39b,r3ab,r3bb,r3cb,r3db,r3eb,r3fb]
     %L0x7fffffff0298;

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
      [2, X**12 + X**3 + 1]
&&
  true
}

