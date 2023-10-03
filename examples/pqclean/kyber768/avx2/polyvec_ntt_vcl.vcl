(* quine: cv.exe -v -isafety -jobs 48 -slicing -no_carry_constraint polyvec_ntt_vcl.vcl
Parsing CryptoLine file:                [OK]            0.103204 seconds
Checking well-formedness:               [OK]            0.032103 seconds

Procedure main
--------------
Transforming to SSA form:               [OK]            0.028382 seconds
Normalizing specification:              [OK]            0.031131 seconds
Rewriting assignments:                  [OK]            0.040372 seconds
Verifying program safety:               [OK]            34.822545 seconds
Verifying range assertions:             [OK]            35.193180 seconds
Verifying range specification:          [OK]            24.996538 seconds
Rewriting value-preserved casting:      [OK]            0.004681 seconds
Verifying algebraic assertions:         [OK]            0.008927 seconds
Verifying algebraic specification:      [OK]            4.586786 seconds
Procedure verification:                 [OK]            99.726738 seconds

Summary
-------
Verification result:                    [OK]            99.862649 seconds
*)

(* quine: cv.exe -v -isafety -jobs 24 -slicing -no_carry_constraint polyvec_ntt_vcl.vcl
Parsing CryptoLine file:                [OK]            0.100056 seconds
Checking well-formedness:               [OK]            0.030645 seconds

Procedure main
--------------
Transforming to SSA form:               [OK]            0.027273 seconds
Normalizing specification:              [OK]            0.029583 seconds
Rewriting assignments:                  [OK]            0.038485 seconds
Verifying program safety:               [OK]            40.959620 seconds
Verifying range assertions:             [OK]            43.534263 seconds
Verifying range specification:          [OK]            25.268802 seconds
Rewriting value-preserved casting:      [OK]            0.008775 seconds
Verifying algebraic assertions:         [OK]            0.009168 seconds
Verifying algebraic specification:      [OK]            4.160946 seconds
Procedure verification:                 [OK]            114.050508 seconds

Summary
-------
Verification result:                    [OK]            114.181733 seconds
*)

proc main (
sint16 f000, sint16 f001, sint16 f002, sint16 f003,
sint16 f004, sint16 f005, sint16 f006, sint16 f007,
sint16 f008, sint16 f009, sint16 f010, sint16 f011,
sint16 f012, sint16 f013, sint16 f014, sint16 f015,
sint16 f016, sint16 f017, sint16 f018, sint16 f019,
sint16 f020, sint16 f021, sint16 f022, sint16 f023,
sint16 f024, sint16 f025, sint16 f026, sint16 f027,
sint16 f028, sint16 f029, sint16 f030, sint16 f031,
sint16 f032, sint16 f033, sint16 f034, sint16 f035,
sint16 f036, sint16 f037, sint16 f038, sint16 f039,
sint16 f040, sint16 f041, sint16 f042, sint16 f043,
sint16 f044, sint16 f045, sint16 f046, sint16 f047,
sint16 f048, sint16 f049, sint16 f050, sint16 f051,
sint16 f052, sint16 f053, sint16 f054, sint16 f055,
sint16 f056, sint16 f057, sint16 f058, sint16 f059,
sint16 f060, sint16 f061, sint16 f062, sint16 f063,
sint16 f064, sint16 f065, sint16 f066, sint16 f067,
sint16 f068, sint16 f069, sint16 f070, sint16 f071,
sint16 f072, sint16 f073, sint16 f074, sint16 f075,
sint16 f076, sint16 f077, sint16 f078, sint16 f079,
sint16 f080, sint16 f081, sint16 f082, sint16 f083,
sint16 f084, sint16 f085, sint16 f086, sint16 f087,
sint16 f088, sint16 f089, sint16 f090, sint16 f091,
sint16 f092, sint16 f093, sint16 f094, sint16 f095,
sint16 f096, sint16 f097, sint16 f098, sint16 f099,
sint16 f100, sint16 f101, sint16 f102, sint16 f103,
sint16 f104, sint16 f105, sint16 f106, sint16 f107,
sint16 f108, sint16 f109, sint16 f110, sint16 f111,
sint16 f112, sint16 f113, sint16 f114, sint16 f115,
sint16 f116, sint16 f117, sint16 f118, sint16 f119,
sint16 f120, sint16 f121, sint16 f122, sint16 f123,
sint16 f124, sint16 f125, sint16 f126, sint16 f127,
sint16 f128, sint16 f129, sint16 f130, sint16 f131,
sint16 f132, sint16 f133, sint16 f134, sint16 f135,
sint16 f136, sint16 f137, sint16 f138, sint16 f139,
sint16 f140, sint16 f141, sint16 f142, sint16 f143,
sint16 f144, sint16 f145, sint16 f146, sint16 f147,
sint16 f148, sint16 f149, sint16 f150, sint16 f151,
sint16 f152, sint16 f153, sint16 f154, sint16 f155,
sint16 f156, sint16 f157, sint16 f158, sint16 f159,
sint16 f160, sint16 f161, sint16 f162, sint16 f163,
sint16 f164, sint16 f165, sint16 f166, sint16 f167,
sint16 f168, sint16 f169, sint16 f170, sint16 f171,
sint16 f172, sint16 f173, sint16 f174, sint16 f175,
sint16 f176, sint16 f177, sint16 f178, sint16 f179,
sint16 f180, sint16 f181, sint16 f182, sint16 f183,
sint16 f184, sint16 f185, sint16 f186, sint16 f187,
sint16 f188, sint16 f189, sint16 f190, sint16 f191,
sint16 f192, sint16 f193, sint16 f194, sint16 f195,
sint16 f196, sint16 f197, sint16 f198, sint16 f199,
sint16 f200, sint16 f201, sint16 f202, sint16 f203,
sint16 f204, sint16 f205, sint16 f206, sint16 f207,
sint16 f208, sint16 f209, sint16 f210, sint16 f211,
sint16 f212, sint16 f213, sint16 f214, sint16 f215,
sint16 f216, sint16 f217, sint16 f218, sint16 f219,
sint16 f220, sint16 f221, sint16 f222, sint16 f223,
sint16 f224, sint16 f225, sint16 f226, sint16 f227,
sint16 f228, sint16 f229, sint16 f230, sint16 f231,
sint16 f232, sint16 f233, sint16 f234, sint16 f235,
sint16 f236, sint16 f237, sint16 f238, sint16 f239,
sint16 f240, sint16 f241, sint16 f242, sint16 f243,
sint16 f244, sint16 f245, sint16 f246, sint16 f247,
sint16 f248, sint16 f249, sint16 f250, sint16 f251,
sint16 f252, sint16 f253, sint16 f254, sint16 f255
) =
{
true &&
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f000,f001,f002,f003] /\
[f000,f001,f002,f003] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f004,f005,f006,f007] /\
[f004,f005,f006,f007] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f008,f009,f010,f011] /\
[f008,f009,f010,f011] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f012,f013,f014,f015] /\
[f012,f013,f014,f015] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f016,f017,f018,f019] /\
[f016,f017,f018,f019] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f020,f021,f022,f023] /\
[f020,f021,f022,f023] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f024,f025,f026,f027] /\
[f024,f025,f026,f027] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f028,f029,f030,f031] /\
[f028,f029,f030,f031] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f032,f033,f034,f035] /\
[f032,f033,f034,f035] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f036,f037,f038,f039] /\
[f036,f037,f038,f039] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f040,f041,f042,f043] /\
[f040,f041,f042,f043] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f044,f045,f046,f047] /\
[f044,f045,f046,f047] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f048,f049,f050,f051] /\
[f048,f049,f050,f051] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f052,f053,f054,f055] /\
[f052,f053,f054,f055] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f056,f057,f058,f059] /\
[f056,f057,f058,f059] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f060,f061,f062,f063] /\
[f060,f061,f062,f063] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f064,f065,f066,f067] /\
[f064,f065,f066,f067] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f068,f069,f070,f071] /\
[f068,f069,f070,f071] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f072,f073,f074,f075] /\
[f072,f073,f074,f075] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f076,f077,f078,f079] /\
[f076,f077,f078,f079] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f080,f081,f082,f083] /\
[f080,f081,f082,f083] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f084,f085,f086,f087] /\
[f084,f085,f086,f087] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f088,f089,f090,f091] /\
[f088,f089,f090,f091] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f092,f093,f094,f095] /\
[f092,f093,f094,f095] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f096,f097,f098,f099] /\
[f096,f097,f098,f099] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f100,f101,f102,f103] /\
[f100,f101,f102,f103] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f104,f105,f106,f107] /\
[f104,f105,f106,f107] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f108,f109,f110,f111] /\
[f108,f109,f110,f111] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f112,f113,f114,f115] /\
[f112,f113,f114,f115] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f116,f117,f118,f119] /\
[f116,f117,f118,f119] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f120,f121,f122,f123] /\
[f120,f121,f122,f123] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f124,f125,f126,f127] /\
[f124,f125,f126,f127] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f128,f129,f130,f131] /\
[f128,f129,f130,f131] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f132,f133,f134,f135] /\
[f132,f133,f134,f135] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f136,f137,f138,f139] /\
[f136,f137,f138,f139] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f140,f141,f142,f143] /\
[f140,f141,f142,f143] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f144,f145,f146,f147] /\
[f144,f145,f146,f147] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f148,f149,f150,f151] /\
[f148,f149,f150,f151] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f152,f153,f154,f155] /\
[f152,f153,f154,f155] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f156,f157,f158,f159] /\
[f156,f157,f158,f159] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f160,f161,f162,f163] /\
[f160,f161,f162,f163] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f164,f165,f166,f167] /\
[f164,f165,f166,f167] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f168,f169,f170,f171] /\
[f168,f169,f170,f171] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f172,f173,f174,f175] /\
[f172,f173,f174,f175] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f176,f177,f178,f179] /\
[f176,f177,f178,f179] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f180,f181,f182,f183] /\
[f180,f181,f182,f183] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f184,f185,f186,f187] /\
[f184,f185,f186,f187] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f188,f189,f190,f191] /\
[f188,f189,f190,f191] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f192,f193,f194,f195] /\
[f192,f193,f194,f195] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f196,f197,f198,f199] /\
[f196,f197,f198,f199] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f200,f201,f202,f203] /\
[f200,f201,f202,f203] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f204,f205,f206,f207] /\
[f204,f205,f206,f207] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f208,f209,f210,f211] /\
[f208,f209,f210,f211] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f212,f213,f214,f215] /\
[f212,f213,f214,f215] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f216,f217,f218,f219] /\
[f216,f217,f218,f219] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f220,f221,f222,f223] /\
[f220,f221,f222,f223] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f224,f225,f226,f227] /\
[f224,f225,f226,f227] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f228,f229,f230,f231] /\
[f228,f229,f230,f231] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f232,f233,f234,f235] /\
[f232,f233,f234,f235] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f236,f237,f238,f239] /\
[f236,f237,f238,f239] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f240,f241,f242,f243] /\
[f240,f241,f242,f243] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f244,f245,f246,f247] /\
[f244,f245,f246,f247] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f248,f249,f250,f251] /\
[f248,f249,f250,f251] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16] /\
[(-3329)@16,(-3329)@16,(-3329)@16,(-3329)@16] <s [f252,f253,f254,f255] /\
[f252,f253,f254,f255] <s [(3329)@16,(3329)@16,(3329)@16,(3329)@16]
}


(*********** initialization ***********)


mov L0x7fffffffaf80 f000; mov L0x7fffffffaf82 f001;  mov L0x7fffffffaf84 f002;
mov L0x7fffffffaf86 f003; mov L0x7fffffffaf88 f004;  mov L0x7fffffffaf8a f005;
mov L0x7fffffffaf8c f006; mov L0x7fffffffaf8e f007;  mov L0x7fffffffaf90 f008;
mov L0x7fffffffaf92 f009; mov L0x7fffffffaf94 f010;  mov L0x7fffffffaf96 f011;
mov L0x7fffffffaf98 f012; mov L0x7fffffffaf9a f013;  mov L0x7fffffffaf9c f014;
mov L0x7fffffffaf9e f015; mov L0x7fffffffafa0 f016;  mov L0x7fffffffafa2 f017;
mov L0x7fffffffafa4 f018; mov L0x7fffffffafa6 f019;  mov L0x7fffffffafa8 f020;
mov L0x7fffffffafaa f021; mov L0x7fffffffafac f022;  mov L0x7fffffffafae f023;
mov L0x7fffffffafb0 f024; mov L0x7fffffffafb2 f025;  mov L0x7fffffffafb4 f026;
mov L0x7fffffffafb6 f027; mov L0x7fffffffafb8 f028;  mov L0x7fffffffafba f029;
mov L0x7fffffffafbc f030; mov L0x7fffffffafbe f031;  mov L0x7fffffffafc0 f032;
mov L0x7fffffffafc2 f033; mov L0x7fffffffafc4 f034;  mov L0x7fffffffafc6 f035;
mov L0x7fffffffafc8 f036; mov L0x7fffffffafca f037;  mov L0x7fffffffafcc f038;
mov L0x7fffffffafce f039; mov L0x7fffffffafd0 f040;  mov L0x7fffffffafd2 f041;
mov L0x7fffffffafd4 f042; mov L0x7fffffffafd6 f043;  mov L0x7fffffffafd8 f044;
mov L0x7fffffffafda f045; mov L0x7fffffffafdc f046;  mov L0x7fffffffafde f047;
mov L0x7fffffffafe0 f048; mov L0x7fffffffafe2 f049;  mov L0x7fffffffafe4 f050;
mov L0x7fffffffafe6 f051; mov L0x7fffffffafe8 f052;  mov L0x7fffffffafea f053;
mov L0x7fffffffafec f054; mov L0x7fffffffafee f055;  mov L0x7fffffffaff0 f056;
mov L0x7fffffffaff2 f057; mov L0x7fffffffaff4 f058;  mov L0x7fffffffaff6 f059;
mov L0x7fffffffaff8 f060; mov L0x7fffffffaffa f061;  mov L0x7fffffffaffc f062;
mov L0x7fffffffaffe f063; mov L0x7fffffffb000 f064;  mov L0x7fffffffb002 f065;
mov L0x7fffffffb004 f066; mov L0x7fffffffb006 f067;  mov L0x7fffffffb008 f068;
mov L0x7fffffffb00a f069; mov L0x7fffffffb00c f070;  mov L0x7fffffffb00e f071;
mov L0x7fffffffb010 f072; mov L0x7fffffffb012 f073;  mov L0x7fffffffb014 f074;
mov L0x7fffffffb016 f075; mov L0x7fffffffb018 f076;  mov L0x7fffffffb01a f077;
mov L0x7fffffffb01c f078; mov L0x7fffffffb01e f079;  mov L0x7fffffffb020 f080;
mov L0x7fffffffb022 f081; mov L0x7fffffffb024 f082;  mov L0x7fffffffb026 f083;
mov L0x7fffffffb028 f084; mov L0x7fffffffb02a f085;  mov L0x7fffffffb02c f086;
mov L0x7fffffffb02e f087; mov L0x7fffffffb030 f088;  mov L0x7fffffffb032 f089;
mov L0x7fffffffb034 f090; mov L0x7fffffffb036 f091;  mov L0x7fffffffb038 f092;
mov L0x7fffffffb03a f093; mov L0x7fffffffb03c f094;  mov L0x7fffffffb03e f095;
mov L0x7fffffffb040 f096; mov L0x7fffffffb042 f097;  mov L0x7fffffffb044 f098;
mov L0x7fffffffb046 f099; mov L0x7fffffffb048 f100;  mov L0x7fffffffb04a f101;
mov L0x7fffffffb04c f102; mov L0x7fffffffb04e f103;  mov L0x7fffffffb050 f104;
mov L0x7fffffffb052 f105; mov L0x7fffffffb054 f106;  mov L0x7fffffffb056 f107;
mov L0x7fffffffb058 f108; mov L0x7fffffffb05a f109;  mov L0x7fffffffb05c f110;
mov L0x7fffffffb05e f111; mov L0x7fffffffb060 f112;  mov L0x7fffffffb062 f113;
mov L0x7fffffffb064 f114; mov L0x7fffffffb066 f115;  mov L0x7fffffffb068 f116;
mov L0x7fffffffb06a f117; mov L0x7fffffffb06c f118;  mov L0x7fffffffb06e f119;
mov L0x7fffffffb070 f120; mov L0x7fffffffb072 f121;  mov L0x7fffffffb074 f122;
mov L0x7fffffffb076 f123; mov L0x7fffffffb078 f124;  mov L0x7fffffffb07a f125;
mov L0x7fffffffb07c f126; mov L0x7fffffffb07e f127;  mov L0x7fffffffb080 f128;
mov L0x7fffffffb082 f129; mov L0x7fffffffb084 f130;  mov L0x7fffffffb086 f131;
mov L0x7fffffffb088 f132; mov L0x7fffffffb08a f133;  mov L0x7fffffffb08c f134;
mov L0x7fffffffb08e f135; mov L0x7fffffffb090 f136;  mov L0x7fffffffb092 f137;
mov L0x7fffffffb094 f138; mov L0x7fffffffb096 f139;  mov L0x7fffffffb098 f140;
mov L0x7fffffffb09a f141; mov L0x7fffffffb09c f142;  mov L0x7fffffffb09e f143;
mov L0x7fffffffb0a0 f144; mov L0x7fffffffb0a2 f145;  mov L0x7fffffffb0a4 f146;
mov L0x7fffffffb0a6 f147; mov L0x7fffffffb0a8 f148;  mov L0x7fffffffb0aa f149;
mov L0x7fffffffb0ac f150; mov L0x7fffffffb0ae f151;  mov L0x7fffffffb0b0 f152;
mov L0x7fffffffb0b2 f153; mov L0x7fffffffb0b4 f154;  mov L0x7fffffffb0b6 f155;
mov L0x7fffffffb0b8 f156; mov L0x7fffffffb0ba f157;  mov L0x7fffffffb0bc f158;
mov L0x7fffffffb0be f159; mov L0x7fffffffb0c0 f160;  mov L0x7fffffffb0c2 f161;
mov L0x7fffffffb0c4 f162; mov L0x7fffffffb0c6 f163;  mov L0x7fffffffb0c8 f164;
mov L0x7fffffffb0ca f165; mov L0x7fffffffb0cc f166;  mov L0x7fffffffb0ce f167;
mov L0x7fffffffb0d0 f168; mov L0x7fffffffb0d2 f169;  mov L0x7fffffffb0d4 f170;
mov L0x7fffffffb0d6 f171; mov L0x7fffffffb0d8 f172;  mov L0x7fffffffb0da f173;
mov L0x7fffffffb0dc f174; mov L0x7fffffffb0de f175;  mov L0x7fffffffb0e0 f176;
mov L0x7fffffffb0e2 f177; mov L0x7fffffffb0e4 f178;  mov L0x7fffffffb0e6 f179;
mov L0x7fffffffb0e8 f180; mov L0x7fffffffb0ea f181;  mov L0x7fffffffb0ec f182;
mov L0x7fffffffb0ee f183; mov L0x7fffffffb0f0 f184;  mov L0x7fffffffb0f2 f185;
mov L0x7fffffffb0f4 f186; mov L0x7fffffffb0f6 f187;  mov L0x7fffffffb0f8 f188;
mov L0x7fffffffb0fa f189; mov L0x7fffffffb0fc f190;  mov L0x7fffffffb0fe f191;
mov L0x7fffffffb100 f192; mov L0x7fffffffb102 f193;  mov L0x7fffffffb104 f194;
mov L0x7fffffffb106 f195; mov L0x7fffffffb108 f196;  mov L0x7fffffffb10a f197;
mov L0x7fffffffb10c f198; mov L0x7fffffffb10e f199;  mov L0x7fffffffb110 f200;
mov L0x7fffffffb112 f201; mov L0x7fffffffb114 f202;  mov L0x7fffffffb116 f203;
mov L0x7fffffffb118 f204; mov L0x7fffffffb11a f205;  mov L0x7fffffffb11c f206;
mov L0x7fffffffb11e f207; mov L0x7fffffffb120 f208;  mov L0x7fffffffb122 f209;
mov L0x7fffffffb124 f210; mov L0x7fffffffb126 f211;  mov L0x7fffffffb128 f212;
mov L0x7fffffffb12a f213; mov L0x7fffffffb12c f214;  mov L0x7fffffffb12e f215;
mov L0x7fffffffb130 f216; mov L0x7fffffffb132 f217;  mov L0x7fffffffb134 f218;
mov L0x7fffffffb136 f219; mov L0x7fffffffb138 f220;  mov L0x7fffffffb13a f221;
mov L0x7fffffffb13c f222; mov L0x7fffffffb13e f223;  mov L0x7fffffffb140 f224;
mov L0x7fffffffb142 f225; mov L0x7fffffffb144 f226;  mov L0x7fffffffb146 f227;
mov L0x7fffffffb148 f228; mov L0x7fffffffb14a f229;  mov L0x7fffffffb14c f230;
mov L0x7fffffffb14e f231; mov L0x7fffffffb150 f232;  mov L0x7fffffffb152 f233;
mov L0x7fffffffb154 f234; mov L0x7fffffffb156 f235;  mov L0x7fffffffb158 f236;
mov L0x7fffffffb15a f237; mov L0x7fffffffb15c f238;  mov L0x7fffffffb15e f239;
mov L0x7fffffffb160 f240; mov L0x7fffffffb162 f241;  mov L0x7fffffffb164 f242;
mov L0x7fffffffb166 f243; mov L0x7fffffffb168 f244;  mov L0x7fffffffb16a f245;
mov L0x7fffffffb16c f246; mov L0x7fffffffb16e f247;  mov L0x7fffffffb170 f248;
mov L0x7fffffffb172 f249; mov L0x7fffffffb174 f250;  mov L0x7fffffffb176 f251;
mov L0x7fffffffb178 f252; mov L0x7fffffffb17a f253;  mov L0x7fffffffb17c f254;
mov L0x7fffffffb17e f255;


(*********** constants ***********)



mov L0x5555556395e0 (  3329)@sint16; mov L0x5555556395e2 (  3329)@sint16;
mov L0x5555556395e4 (  3329)@sint16; mov L0x5555556395e6 (  3329)@sint16;
mov L0x5555556395e8 (  3329)@sint16; mov L0x5555556395ea (  3329)@sint16;
mov L0x5555556395ec (  3329)@sint16; mov L0x5555556395ee (  3329)@sint16;
mov L0x5555556395f0 (  3329)@sint16; mov L0x5555556395f2 (  3329)@sint16;
mov L0x5555556395f4 (  3329)@sint16; mov L0x5555556395f6 (  3329)@sint16;
mov L0x5555556395f8 (  3329)@sint16; mov L0x5555556395fa (  3329)@sint16;
mov L0x5555556395fc (  3329)@sint16; mov L0x5555556395fe (  3329)@sint16;
mov L0x555555639600 ( -3327)@sint16; mov L0x555555639602 ( -3327)@sint16;
mov L0x555555639604 ( -3327)@sint16; mov L0x555555639606 ( -3327)@sint16;
mov L0x555555639608 ( -3327)@sint16; mov L0x55555563960a ( -3327)@sint16;
mov L0x55555563960c ( -3327)@sint16; mov L0x55555563960e ( -3327)@sint16;
mov L0x555555639610 ( -3327)@sint16; mov L0x555555639612 ( -3327)@sint16;
mov L0x555555639614 ( -3327)@sint16; mov L0x555555639616 ( -3327)@sint16;
mov L0x555555639618 ( -3327)@sint16; mov L0x55555563961a ( -3327)@sint16;
mov L0x55555563961c ( -3327)@sint16; mov L0x55555563961e ( -3327)@sint16;
mov L0x555555639620 ( 20159)@sint16; mov L0x555555639622 ( 20159)@sint16;
mov L0x555555639624 ( 20159)@sint16; mov L0x555555639626 ( 20159)@sint16;
mov L0x555555639628 ( 20159)@sint16; mov L0x55555563962a ( 20159)@sint16;
mov L0x55555563962c ( 20159)@sint16; mov L0x55555563962e ( 20159)@sint16;
mov L0x555555639630 ( 20159)@sint16; mov L0x555555639632 ( 20159)@sint16;
mov L0x555555639634 ( 20159)@sint16; mov L0x555555639636 ( 20159)@sint16;
mov L0x555555639638 ( 20159)@sint16; mov L0x55555563963a ( 20159)@sint16;
mov L0x55555563963c ( 20159)@sint16; mov L0x55555563963e ( 20159)@sint16;
mov L0x555555639640 (-10079)@sint16; mov L0x555555639642 (-10079)@sint16;
mov L0x555555639644 (-10079)@sint16; mov L0x555555639646 (-10079)@sint16;
mov L0x555555639648 (-10079)@sint16; mov L0x55555563964a (-10079)@sint16;
mov L0x55555563964c (-10079)@sint16; mov L0x55555563964e (-10079)@sint16;
mov L0x555555639650 (-10079)@sint16; mov L0x555555639652 (-10079)@sint16;
mov L0x555555639654 (-10079)@sint16; mov L0x555555639656 (-10079)@sint16;
mov L0x555555639658 (-10079)@sint16; mov L0x55555563965a (-10079)@sint16;
mov L0x55555563965c (-10079)@sint16; mov L0x55555563965e (-10079)@sint16;
mov L0x555555639660 (  1441)@sint16; mov L0x555555639662 (  1441)@sint16;
mov L0x555555639664 (  1441)@sint16; mov L0x555555639666 (  1441)@sint16;
mov L0x555555639668 (  1441)@sint16; mov L0x55555563966a (  1441)@sint16;
mov L0x55555563966c (  1441)@sint16; mov L0x55555563966e (  1441)@sint16;
mov L0x555555639670 (  1441)@sint16; mov L0x555555639672 (  1441)@sint16;
mov L0x555555639674 (  1441)@sint16; mov L0x555555639676 (  1441)@sint16;
mov L0x555555639678 (  1441)@sint16; mov L0x55555563967a (  1441)@sint16;
mov L0x55555563967c (  1441)@sint16; mov L0x55555563967e (  1441)@sint16;
mov L0x555555639680 ( 20553)@sint16; mov L0x555555639682 ( 20553)@sint16;
mov L0x555555639684 ( 20553)@sint16; mov L0x555555639686 ( 20553)@sint16;
mov L0x555555639688 ( 20553)@sint16; mov L0x55555563968a ( 20553)@sint16;
mov L0x55555563968c ( 20553)@sint16; mov L0x55555563968e ( 20553)@sint16;
mov L0x555555639690 ( 20553)@sint16; mov L0x555555639692 ( 20553)@sint16;
mov L0x555555639694 ( 20553)@sint16; mov L0x555555639696 ( 20553)@sint16;
mov L0x555555639698 ( 20553)@sint16; mov L0x55555563969a ( 20553)@sint16;
mov L0x55555563969c ( 20553)@sint16; mov L0x55555563969e ( 20553)@sint16;
mov L0x5555556396a0 (  1353)@sint16; mov L0x5555556396a2 (  1353)@sint16;
mov L0x5555556396a4 (  1353)@sint16; mov L0x5555556396a6 (  1353)@sint16;
mov L0x5555556396a8 (  1353)@sint16; mov L0x5555556396aa (  1353)@sint16;
mov L0x5555556396ac (  1353)@sint16; mov L0x5555556396ae (  1353)@sint16;
mov L0x5555556396b0 (  1353)@sint16; mov L0x5555556396b2 (  1353)@sint16;
mov L0x5555556396b4 (  1353)@sint16; mov L0x5555556396b6 (  1353)@sint16;
mov L0x5555556396b8 (  1353)@sint16; mov L0x5555556396ba (  1353)@sint16;
mov L0x5555556396bc (  1353)@sint16; mov L0x5555556396be (  1353)@sint16;
mov L0x5555556396c0 (  4095)@sint16; mov L0x5555556396c2 (  4095)@sint16;
mov L0x5555556396c4 (  4095)@sint16; mov L0x5555556396c6 (  4095)@sint16;
mov L0x5555556396c8 (  4095)@sint16; mov L0x5555556396ca (  4095)@sint16;
mov L0x5555556396cc (  4095)@sint16; mov L0x5555556396ce (  4095)@sint16;
mov L0x5555556396d0 (  4095)@sint16; mov L0x5555556396d2 (  4095)@sint16;
mov L0x5555556396d4 (  4095)@sint16; mov L0x5555556396d6 (  4095)@sint16;
mov L0x5555556396d8 (  4095)@sint16; mov L0x5555556396da (  4095)@sint16;
mov L0x5555556396dc (  4095)@sint16; mov L0x5555556396de (  4095)@sint16;
mov L0x5555556396e0 (  3854)@sint16; mov L0x5555556396e2 (  3340)@sint16;
mov L0x5555556396e4 (  2826)@sint16; mov L0x5555556396e6 (  2312)@sint16;
mov L0x5555556396e8 (  1798)@sint16; mov L0x5555556396ea (  1284)@sint16;
mov L0x5555556396ec (   770)@sint16; mov L0x5555556396ee (   256)@sint16;
mov L0x5555556396f0 (  3854)@sint16; mov L0x5555556396f2 (  3340)@sint16;
mov L0x5555556396f4 (  2826)@sint16; mov L0x5555556396f6 (  2312)@sint16;
mov L0x5555556396f8 (  1798)@sint16; mov L0x5555556396fa (  1284)@sint16;
mov L0x5555556396fc (   770)@sint16; mov L0x5555556396fe (   256)@sint16;
mov L0x555555639700 (     7)@sint16; mov L0x555555639702 (     0)@sint16;
mov L0x555555639704 (     6)@sint16; mov L0x555555639706 (     0)@sint16;
mov L0x555555639708 (     5)@sint16; mov L0x55555563970a (     0)@sint16;
mov L0x55555563970c (     4)@sint16; mov L0x55555563970e (     0)@sint16;
mov L0x555555639710 (     3)@sint16; mov L0x555555639712 (     0)@sint16;
mov L0x555555639714 (     2)@sint16; mov L0x555555639716 (     0)@sint16;
mov L0x555555639718 (     1)@sint16; mov L0x55555563971a (     0)@sint16;
mov L0x55555563971c (     0)@sint16; mov L0x55555563971e (     0)@sint16;
mov L0x555555639720 ( 31498)@sint16; mov L0x555555639722 ( 31498)@sint16;
mov L0x555555639724 ( 31498)@sint16; mov L0x555555639726 ( 31498)@sint16;
mov L0x555555639728 (  -758)@sint16; mov L0x55555563972a (  -758)@sint16;
mov L0x55555563972c (  -758)@sint16; mov L0x55555563972e (  -758)@sint16;
mov L0x555555639730 (  5237)@sint16; mov L0x555555639732 (  5237)@sint16;
mov L0x555555639734 (  5237)@sint16; mov L0x555555639736 (  5237)@sint16;
mov L0x555555639738 (  1397)@sint16; mov L0x55555563973a (  1397)@sint16;
mov L0x55555563973c (  1397)@sint16; mov L0x55555563973e (  1397)@sint16;
mov L0x555555639740 ( 14745)@sint16; mov L0x555555639742 ( 14745)@sint16;
mov L0x555555639744 ( 14745)@sint16; mov L0x555555639746 ( 14745)@sint16;
mov L0x555555639748 ( 14745)@sint16; mov L0x55555563974a ( 14745)@sint16;
mov L0x55555563974c ( 14745)@sint16; mov L0x55555563974e ( 14745)@sint16;
mov L0x555555639750 ( 14745)@sint16; mov L0x555555639752 ( 14745)@sint16;
mov L0x555555639754 ( 14745)@sint16; mov L0x555555639756 ( 14745)@sint16;
mov L0x555555639758 ( 14745)@sint16; mov L0x55555563975a ( 14745)@sint16;
mov L0x55555563975c ( 14745)@sint16; mov L0x55555563975e ( 14745)@sint16;
mov L0x555555639760 (  -359)@sint16; mov L0x555555639762 (  -359)@sint16;
mov L0x555555639764 (  -359)@sint16; mov L0x555555639766 (  -359)@sint16;
mov L0x555555639768 (  -359)@sint16; mov L0x55555563976a (  -359)@sint16;
mov L0x55555563976c (  -359)@sint16; mov L0x55555563976e (  -359)@sint16;
mov L0x555555639770 (  -359)@sint16; mov L0x555555639772 (  -359)@sint16;
mov L0x555555639774 (  -359)@sint16; mov L0x555555639776 (  -359)@sint16;
mov L0x555555639778 (  -359)@sint16; mov L0x55555563977a (  -359)@sint16;
mov L0x55555563977c (  -359)@sint16; mov L0x55555563977e (  -359)@sint16;
mov L0x555555639780 ( 13525)@sint16; mov L0x555555639782 ( 13525)@sint16;
mov L0x555555639784 ( 13525)@sint16; mov L0x555555639786 ( 13525)@sint16;
mov L0x555555639788 ( 13525)@sint16; mov L0x55555563978a ( 13525)@sint16;
mov L0x55555563978c ( 13525)@sint16; mov L0x55555563978e ( 13525)@sint16;
mov L0x555555639790 (-12402)@sint16; mov L0x555555639792 (-12402)@sint16;
mov L0x555555639794 (-12402)@sint16; mov L0x555555639796 (-12402)@sint16;
mov L0x555555639798 (-12402)@sint16; mov L0x55555563979a (-12402)@sint16;
mov L0x55555563979c (-12402)@sint16; mov L0x55555563979e (-12402)@sint16;
mov L0x5555556397a0 (  1493)@sint16; mov L0x5555556397a2 (  1493)@sint16;
mov L0x5555556397a4 (  1493)@sint16; mov L0x5555556397a6 (  1493)@sint16;
mov L0x5555556397a8 (  1493)@sint16; mov L0x5555556397aa (  1493)@sint16;
mov L0x5555556397ac (  1493)@sint16; mov L0x5555556397ae (  1493)@sint16;
mov L0x5555556397b0 (  1422)@sint16; mov L0x5555556397b2 (  1422)@sint16;
mov L0x5555556397b4 (  1422)@sint16; mov L0x5555556397b6 (  1422)@sint16;
mov L0x5555556397b8 (  1422)@sint16; mov L0x5555556397ba (  1422)@sint16;
mov L0x5555556397bc (  1422)@sint16; mov L0x5555556397be (  1422)@sint16;
mov L0x5555556397c0 (-20907)@sint16; mov L0x5555556397c2 (-20907)@sint16;
mov L0x5555556397c4 (-20907)@sint16; mov L0x5555556397c6 (-20907)@sint16;
mov L0x5555556397c8 ( 27758)@sint16; mov L0x5555556397ca ( 27758)@sint16;
mov L0x5555556397cc ( 27758)@sint16; mov L0x5555556397ce ( 27758)@sint16;
mov L0x5555556397d0 ( -3799)@sint16; mov L0x5555556397d2 ( -3799)@sint16;
mov L0x5555556397d4 ( -3799)@sint16; mov L0x5555556397d6 ( -3799)@sint16;
mov L0x5555556397d8 (-15690)@sint16; mov L0x5555556397da (-15690)@sint16;
mov L0x5555556397dc (-15690)@sint16; mov L0x5555556397de (-15690)@sint16;
mov L0x5555556397e0 (  -171)@sint16; mov L0x5555556397e2 (  -171)@sint16;
mov L0x5555556397e4 (  -171)@sint16; mov L0x5555556397e6 (  -171)@sint16;
mov L0x5555556397e8 (   622)@sint16; mov L0x5555556397ea (   622)@sint16;
mov L0x5555556397ec (   622)@sint16; mov L0x5555556397ee (   622)@sint16;
mov L0x5555556397f0 (  1577)@sint16; mov L0x5555556397f2 (  1577)@sint16;
mov L0x5555556397f4 (  1577)@sint16; mov L0x5555556397f6 (  1577)@sint16;
mov L0x5555556397f8 (   182)@sint16; mov L0x5555556397fa (   182)@sint16;
mov L0x5555556397fc (   182)@sint16; mov L0x5555556397fe (   182)@sint16;
mov L0x555555639800 ( -5827)@sint16; mov L0x555555639802 ( -5827)@sint16;
mov L0x555555639804 ( 17363)@sint16; mov L0x555555639806 ( 17363)@sint16;
mov L0x555555639808 (-26360)@sint16; mov L0x55555563980a (-26360)@sint16;
mov L0x55555563980c (-29057)@sint16; mov L0x55555563980e (-29057)@sint16;
mov L0x555555639810 (  5571)@sint16; mov L0x555555639812 (  5571)@sint16;
mov L0x555555639814 ( -1102)@sint16; mov L0x555555639816 ( -1102)@sint16;
mov L0x555555639818 ( 21438)@sint16; mov L0x55555563981a ( 21438)@sint16;
mov L0x55555563981c (-26242)@sint16; mov L0x55555563981e (-26242)@sint16;
mov L0x555555639820 (   573)@sint16; mov L0x555555639822 (   573)@sint16;
mov L0x555555639824 ( -1325)@sint16; mov L0x555555639826 ( -1325)@sint16;
mov L0x555555639828 (   264)@sint16; mov L0x55555563982a (   264)@sint16;
mov L0x55555563982c (   383)@sint16; mov L0x55555563982e (   383)@sint16;
mov L0x555555639830 (  -829)@sint16; mov L0x555555639832 (  -829)@sint16;
mov L0x555555639834 (  1458)@sint16; mov L0x555555639836 (  1458)@sint16;
mov L0x555555639838 ( -1602)@sint16; mov L0x55555563983a ( -1602)@sint16;
mov L0x55555563983c (  -130)@sint16; mov L0x55555563983e (  -130)@sint16;
mov L0x555555639840 ( -5689)@sint16; mov L0x555555639842 ( -6516)@sint16;
mov L0x555555639844 (  1496)@sint16; mov L0x555555639846 ( 30967)@sint16;
mov L0x555555639848 (-23565)@sint16; mov L0x55555563984a ( 20179)@sint16;
mov L0x55555563984c ( 20710)@sint16; mov L0x55555563984e ( 25080)@sint16;
mov L0x555555639850 (-12796)@sint16; mov L0x555555639852 ( 26616)@sint16;
mov L0x555555639854 ( 16064)@sint16; mov L0x555555639856 (-12442)@sint16;
mov L0x555555639858 (  9134)@sint16; mov L0x55555563985a (  -650)@sint16;
mov L0x55555563985c (-25986)@sint16; mov L0x55555563985e ( 27837)@sint16;
mov L0x555555639860 (  1223)@sint16; mov L0x555555639862 (   652)@sint16;
mov L0x555555639864 (  -552)@sint16; mov L0x555555639866 (  1015)@sint16;
mov L0x555555639868 ( -1293)@sint16; mov L0x55555563986a (  1491)@sint16;
mov L0x55555563986c (  -282)@sint16; mov L0x55555563986e ( -1544)@sint16;
mov L0x555555639870 (   516)@sint16; mov L0x555555639872 (    -8)@sint16;
mov L0x555555639874 (  -320)@sint16; mov L0x555555639876 (  -666)@sint16;
mov L0x555555639878 ( -1618)@sint16; mov L0x55555563987a ( -1162)@sint16;
mov L0x55555563987c (   126)@sint16; mov L0x55555563987e (  1469)@sint16;
mov L0x555555639880 (  -335)@sint16; mov L0x555555639882 (-11477)@sint16;
mov L0x555555639884 (-32227)@sint16; mov L0x555555639886 ( 20494)@sint16;
mov L0x555555639888 (-27738)@sint16; mov L0x55555563988a (   945)@sint16;
mov L0x55555563988c (-14883)@sint16; mov L0x55555563988e (  6182)@sint16;
mov L0x555555639890 ( 32010)@sint16; mov L0x555555639892 ( 10631)@sint16;
mov L0x555555639894 ( 29175)@sint16; mov L0x555555639896 (-28762)@sint16;
mov L0x555555639898 (-18486)@sint16; mov L0x55555563989a ( 17560)@sint16;
mov L0x55555563989c (-14430)@sint16; mov L0x55555563989e ( -5276)@sint16;
mov L0x5555556398a0 ( -1103)@sint16; mov L0x5555556398a2 (   555)@sint16;
mov L0x5555556398a4 ( -1251)@sint16; mov L0x5555556398a6 (  1550)@sint16;
mov L0x5555556398a8 (   422)@sint16; mov L0x5555556398aa (   177)@sint16;
mov L0x5555556398ac (  -291)@sint16; mov L0x5555556398ae (  1574)@sint16;
mov L0x5555556398b0 (  -246)@sint16; mov L0x5555556398b2 (  1159)@sint16;
mov L0x5555556398b4 (  -777)@sint16; mov L0x5555556398b6 (  -602)@sint16;
mov L0x5555556398b8 ( -1590)@sint16; mov L0x5555556398ba (  -872)@sint16;
mov L0x5555556398bc (   418)@sint16; mov L0x5555556398be (  -156)@sint16;
mov L0x5555556398c0 ( 11182)@sint16; mov L0x5555556398c2 ( 13387)@sint16;
mov L0x5555556398c4 (-14233)@sint16; mov L0x5555556398c6 (-21655)@sint16;
mov L0x5555556398c8 ( 13131)@sint16; mov L0x5555556398ca ( -4587)@sint16;
mov L0x5555556398cc ( 23092)@sint16; mov L0x5555556398ce (  5493)@sint16;
mov L0x5555556398d0 (-32502)@sint16; mov L0x5555556398d2 ( 30317)@sint16;
mov L0x5555556398d4 (-18741)@sint16; mov L0x5555556398d6 ( 12639)@sint16;
mov L0x5555556398d8 ( 20100)@sint16; mov L0x5555556398da ( 18525)@sint16;
mov L0x5555556398dc ( 19529)@sint16; mov L0x5555556398de (-12619)@sint16;
mov L0x5555556398e0 (   430)@sint16; mov L0x5555556398e2 (   843)@sint16;
mov L0x5555556398e4 (   871)@sint16; mov L0x5555556398e6 (   105)@sint16;
mov L0x5555556398e8 (   587)@sint16; mov L0x5555556398ea (  -235)@sint16;
mov L0x5555556398ec (  -460)@sint16; mov L0x5555556398ee (  1653)@sint16;
mov L0x5555556398f0 (   778)@sint16; mov L0x5555556398f2 (  -147)@sint16;
mov L0x5555556398f4 (  1483)@sint16; mov L0x5555556398f6 (  1119)@sint16;
mov L0x5555556398f8 (   644)@sint16; mov L0x5555556398fa (   349)@sint16;
mov L0x5555556398fc (   329)@sint16; mov L0x5555556398fe (   -75)@sint16;
mov L0x555555639900 (   787)@sint16; mov L0x555555639902 (   787)@sint16;
mov L0x555555639904 (   787)@sint16; mov L0x555555639906 (   787)@sint16;
mov L0x555555639908 (   787)@sint16; mov L0x55555563990a (   787)@sint16;
mov L0x55555563990c (   787)@sint16; mov L0x55555563990e (   787)@sint16;
mov L0x555555639910 (   787)@sint16; mov L0x555555639912 (   787)@sint16;
mov L0x555555639914 (   787)@sint16; mov L0x555555639916 (   787)@sint16;
mov L0x555555639918 (   787)@sint16; mov L0x55555563991a (   787)@sint16;
mov L0x55555563991c (   787)@sint16; mov L0x55555563991e (   787)@sint16;
mov L0x555555639920 ( -1517)@sint16; mov L0x555555639922 ( -1517)@sint16;
mov L0x555555639924 ( -1517)@sint16; mov L0x555555639926 ( -1517)@sint16;
mov L0x555555639928 ( -1517)@sint16; mov L0x55555563992a ( -1517)@sint16;
mov L0x55555563992c ( -1517)@sint16; mov L0x55555563992e ( -1517)@sint16;
mov L0x555555639930 ( -1517)@sint16; mov L0x555555639932 ( -1517)@sint16;
mov L0x555555639934 ( -1517)@sint16; mov L0x555555639936 ( -1517)@sint16;
mov L0x555555639938 ( -1517)@sint16; mov L0x55555563993a ( -1517)@sint16;
mov L0x55555563993c ( -1517)@sint16; mov L0x55555563993e ( -1517)@sint16;
mov L0x555555639940 ( 28191)@sint16; mov L0x555555639942 ( 28191)@sint16;
mov L0x555555639944 ( 28191)@sint16; mov L0x555555639946 ( 28191)@sint16;
mov L0x555555639948 ( 28191)@sint16; mov L0x55555563994a ( 28191)@sint16;
mov L0x55555563994c ( 28191)@sint16; mov L0x55555563994e ( 28191)@sint16;
mov L0x555555639950 (-16694)@sint16; mov L0x555555639952 (-16694)@sint16;
mov L0x555555639954 (-16694)@sint16; mov L0x555555639956 (-16694)@sint16;
mov L0x555555639958 (-16694)@sint16; mov L0x55555563995a (-16694)@sint16;
mov L0x55555563995c (-16694)@sint16; mov L0x55555563995e (-16694)@sint16;
mov L0x555555639960 (   287)@sint16; mov L0x555555639962 (   287)@sint16;
mov L0x555555639964 (   287)@sint16; mov L0x555555639966 (   287)@sint16;
mov L0x555555639968 (   287)@sint16; mov L0x55555563996a (   287)@sint16;
mov L0x55555563996c (   287)@sint16; mov L0x55555563996e (   287)@sint16;
mov L0x555555639970 (   202)@sint16; mov L0x555555639972 (   202)@sint16;
mov L0x555555639974 (   202)@sint16; mov L0x555555639976 (   202)@sint16;
mov L0x555555639978 (   202)@sint16; mov L0x55555563997a (   202)@sint16;
mov L0x55555563997c (   202)@sint16; mov L0x55555563997e (   202)@sint16;
mov L0x555555639980 ( 10690)@sint16; mov L0x555555639982 ( 10690)@sint16;
mov L0x555555639984 ( 10690)@sint16; mov L0x555555639986 ( 10690)@sint16;
mov L0x555555639988 (  1358)@sint16; mov L0x55555563998a (  1358)@sint16;
mov L0x55555563998c (  1358)@sint16; mov L0x55555563998e (  1358)@sint16;
mov L0x555555639990 (-11202)@sint16; mov L0x555555639992 (-11202)@sint16;
mov L0x555555639994 (-11202)@sint16; mov L0x555555639996 (-11202)@sint16;
mov L0x555555639998 ( 31164)@sint16; mov L0x55555563999a ( 31164)@sint16;
mov L0x55555563999c ( 31164)@sint16; mov L0x55555563999e ( 31164)@sint16;
mov L0x5555556399a0 (   962)@sint16; mov L0x5555556399a2 (   962)@sint16;
mov L0x5555556399a4 (   962)@sint16; mov L0x5555556399a6 (   962)@sint16;
mov L0x5555556399a8 ( -1202)@sint16; mov L0x5555556399aa ( -1202)@sint16;
mov L0x5555556399ac ( -1202)@sint16; mov L0x5555556399ae ( -1202)@sint16;
mov L0x5555556399b0 ( -1474)@sint16; mov L0x5555556399b2 ( -1474)@sint16;
mov L0x5555556399b4 ( -1474)@sint16; mov L0x5555556399b6 ( -1474)@sint16;
mov L0x5555556399b8 (  1468)@sint16; mov L0x5555556399ba (  1468)@sint16;
mov L0x5555556399bc (  1468)@sint16; mov L0x5555556399be (  1468)@sint16;
mov L0x5555556399c0 (-28073)@sint16; mov L0x5555556399c2 (-28073)@sint16;
mov L0x5555556399c4 ( 24313)@sint16; mov L0x5555556399c6 ( 24313)@sint16;
mov L0x5555556399c8 (-10532)@sint16; mov L0x5555556399ca (-10532)@sint16;
mov L0x5555556399cc (  8800)@sint16; mov L0x5555556399ce (  8800)@sint16;
mov L0x5555556399d0 ( 18426)@sint16; mov L0x5555556399d2 ( 18426)@sint16;
mov L0x5555556399d4 (  8859)@sint16; mov L0x5555556399d6 (  8859)@sint16;
mov L0x5555556399d8 ( 26675)@sint16; mov L0x5555556399da ( 26675)@sint16;
mov L0x5555556399dc (-16163)@sint16; mov L0x5555556399de (-16163)@sint16;
mov L0x5555556399e0 (  -681)@sint16; mov L0x5555556399e2 (  -681)@sint16;
mov L0x5555556399e4 (  1017)@sint16; mov L0x5555556399e6 (  1017)@sint16;
mov L0x5555556399e8 (   732)@sint16; mov L0x5555556399ea (   732)@sint16;
mov L0x5555556399ec (   608)@sint16; mov L0x5555556399ee (   608)@sint16;
mov L0x5555556399f0 ( -1542)@sint16; mov L0x5555556399f2 ( -1542)@sint16;
mov L0x5555556399f4 (   411)@sint16; mov L0x5555556399f6 (   411)@sint16;
mov L0x5555556399f8 (  -205)@sint16; mov L0x5555556399fa (  -205)@sint16;
mov L0x5555556399fc ( -1571)@sint16; mov L0x5555556399fe ( -1571)@sint16;
mov L0x555555639a00 ( 19883)@sint16; mov L0x555555639a02 (-28250)@sint16;
mov L0x555555639a04 (-15887)@sint16; mov L0x555555639a06 ( -8898)@sint16;
mov L0x555555639a08 (-28309)@sint16; mov L0x555555639a0a (  9075)@sint16;
mov L0x555555639a0c (-30199)@sint16; mov L0x555555639a0e ( 18249)@sint16;
mov L0x555555639a10 ( 13426)@sint16; mov L0x555555639a12 ( 14017)@sint16;
mov L0x555555639a14 (-29156)@sint16; mov L0x555555639a16 (-12757)@sint16;
mov L0x555555639a18 ( 16832)@sint16; mov L0x555555639a1a (  4311)@sint16;
mov L0x555555639a1c (-24155)@sint16; mov L0x555555639a1e (-17915)@sint16;
mov L0x555555639a20 (  -853)@sint16; mov L0x555555639a22 (   -90)@sint16;
mov L0x555555639a24 (  -271)@sint16; mov L0x555555639a26 (   830)@sint16;
mov L0x555555639a28 (   107)@sint16; mov L0x555555639a2a ( -1421)@sint16;
mov L0x555555639a2c (  -247)@sint16; mov L0x555555639a2e (  -951)@sint16;
mov L0x555555639a30 (  -398)@sint16; mov L0x555555639a32 (   961)@sint16;
mov L0x555555639a34 ( -1508)@sint16; mov L0x555555639a36 (  -725)@sint16;
mov L0x555555639a38 (   448)@sint16; mov L0x555555639a3a ( -1065)@sint16;
mov L0x555555639a3c (   677)@sint16; mov L0x555555639a3e ( -1275)@sint16;
mov L0x555555639a40 (-31183)@sint16; mov L0x555555639a42 ( 25435)@sint16;
mov L0x555555639a44 ( -7382)@sint16; mov L0x555555639a46 ( 24391)@sint16;
mov L0x555555639a48 (-20927)@sint16; mov L0x555555639a4a ( 10946)@sint16;
mov L0x555555639a4c ( 24214)@sint16; mov L0x555555639a4e ( 16989)@sint16;
mov L0x555555639a50 ( 10335)@sint16; mov L0x555555639a52 ( -7934)@sint16;
mov L0x555555639a54 (-22502)@sint16; mov L0x555555639a56 ( 10906)@sint16;
mov L0x555555639a58 ( 31636)@sint16; mov L0x555555639a5a ( 28644)@sint16;
mov L0x555555639a5c ( 23998)@sint16; mov L0x555555639a5e (-17422)@sint16;
mov L0x555555639a60 (   817)@sint16; mov L0x555555639a62 (   603)@sint16;
mov L0x555555639a64 (  1322)@sint16; mov L0x555555639a66 ( -1465)@sint16;
mov L0x555555639a68 ( -1215)@sint16; mov L0x555555639a6a (  1218)@sint16;
mov L0x555555639a6c (  -874)@sint16; mov L0x555555639a6e ( -1187)@sint16;
mov L0x555555639a70 ( -1185)@sint16; mov L0x555555639a72 ( -1278)@sint16;
mov L0x555555639a74 ( -1510)@sint16; mov L0x555555639a76 (  -870)@sint16;
mov L0x555555639a78 (  -108)@sint16; mov L0x555555639a7a (   996)@sint16;
mov L0x555555639a7c (   958)@sint16; mov L0x555555639a7e (  1522)@sint16;
mov L0x555555639a80 ( 20297)@sint16; mov L0x555555639a82 (  2146)@sint16;
mov L0x555555639a84 ( 15355)@sint16; mov L0x555555639a86 (-32384)@sint16;
mov L0x555555639a88 ( -6280)@sint16; mov L0x555555639a8a (-14903)@sint16;
mov L0x555555639a8c (-11044)@sint16; mov L0x555555639a8e ( 14469)@sint16;
mov L0x555555639a90 (-21498)@sint16; mov L0x555555639a92 (-20198)@sint16;
mov L0x555555639a94 ( 23210)@sint16; mov L0x555555639a96 (-17442)@sint16;
mov L0x555555639a98 (-23860)@sint16; mov L0x555555639a9a (-20257)@sint16;
mov L0x555555639a9c (  7756)@sint16; mov L0x555555639a9e ( 23132)@sint16;
mov L0x555555639aa0 (  1097)@sint16; mov L0x555555639aa2 (   610)@sint16;
mov L0x555555639aa4 ( -1285)@sint16; mov L0x555555639aa6 (   384)@sint16;
mov L0x555555639aa8 (  -136)@sint16; mov L0x555555639aaa ( -1335)@sint16;
mov L0x555555639aac (   220)@sint16; mov L0x555555639aae ( -1659)@sint16;
mov L0x555555639ab0 ( -1530)@sint16; mov L0x555555639ab2 (   794)@sint16;
mov L0x555555639ab4 (  -854)@sint16; mov L0x555555639ab6 (   478)@sint16;
mov L0x555555639ab8 (  -308)@sint16; mov L0x555555639aba (   991)@sint16;
mov L0x555555639abc ( -1460)@sint16; mov L0x555555639abe (  1628)@sint16;
mov L0x555555639ac0 (    32)@sint16; mov L0x555555639ac2 (    32)@sint16;
mov L0x555555639ac4 (    32)@sint16; mov L0x555555639ac6 (    32)@sint16;
mov L0x555555639ac8 (    32)@sint16; mov L0x555555639aca (    32)@sint16;
mov L0x555555639acc (    32)@sint16; mov L0x555555639ace (    32)@sint16;
mov L0x555555639ad0 (    32)@sint16; mov L0x555555639ad2 (    32)@sint16;
mov L0x555555639ad4 (    32)@sint16; mov L0x555555639ad6 (    32)@sint16;
mov L0x555555639ad8 (    32)@sint16; mov L0x555555639ada (    32)@sint16;
mov L0x555555639adc (    32)@sint16; mov L0x555555639ade (    32)@sint16;



(*********** ghost polynomial ***********)



ghost x@bit, inp_poly@bit : inp_poly**2 =
poly x [
f000,f001,f002,f003,f004,f005,f006,f007,f008,f009,f010,f011,f012,f013,f014,
f015,f016,f017,f018,f019,f020,f021,f022,f023,f024,f025,f026,f027,f028,f029,
f030,f031,f032,f033,f034,f035,f036,f037,f038,f039,f040,f041,f042,f043,f044,
f045,f046,f047,f048,f049,f050,f051,f052,f053,f054,f055,f056,f057,f058,f059,
f060,f061,f062,f063,f064,f065,f066,f067,f068,f069,f070,f071,f072,f073,f074,
f075,f076,f077,f078,f079,f080,f081,f082,f083,f084,f085,f086,f087,f088,f089,
f090,f091,f092,f093,f094,f095,f096,f097,f098,f099,f100,f101,f102,f103,f104,
f105,f106,f107,f108,f109,f110,f111,f112,f113,f114,f115,f116,f117,f118,f119,
f120,f121,f122,f123,f124,f125,f126,f127,f128,f129,f130,f131,f132,f133,f134,
f135,f136,f137,f138,f139,f140,f141,f142,f143,f144,f145,f146,f147,f148,f149,
f150,f151,f152,f153,f154,f155,f156,f157,f158,f159,f160,f161,f162,f163,f164,
f165,f166,f167,f168,f169,f170,f171,f172,f173,f174,f175,f176,f177,f178,f179,
f180,f181,f182,f183,f184,f185,f186,f187,f188,f189,f190,f191,f192,f193,f194,
f195,f196,f197,f198,f199,f200,f201,f202,f203,f204,f205,f206,f207,f208,f209,
f210,f211,f212,f213,f214,f215,f216,f217,f218,f219,f220,f221,f222,f223,f224,
f225,f226,f227,f228,f229,f230,f231,f232,f233,f234,f235,f236,f237,f238,f239,
f240,f241,f242,f243,f244,f245,f246,f247,f248,f249,f250,f251,f252,f253,f254,
f255] && true;
(*
f000*(x**0) + f001*(x**1) + f002*(x**2) + f003*(x**3) +
f004*(x**4) + f005*(x**5) + f006*(x**6) + f007*(x**7) +
f008*(x**8) + f009*(x**9) + f010*(x**10) + f011*(x**11) +
f012*(x**12) + f013*(x**13) + f014*(x**14) + f015*(x**15) +
f016*(x**16) + f017*(x**17) + f018*(x**18) + f019*(x**19) +
f020*(x**20) + f021*(x**21) + f022*(x**22) + f023*(x**23) +
f024*(x**24) + f025*(x**25) + f026*(x**26) + f027*(x**27) +
f028*(x**28) + f029*(x**29) + f030*(x**30) + f031*(x**31) +
f032*(x**32) + f033*(x**33) + f034*(x**34) + f035*(x**35) +
f036*(x**36) + f037*(x**37) + f038*(x**38) + f039*(x**39) +
f040*(x**40) + f041*(x**41) + f042*(x**42) + f043*(x**43) +
f044*(x**44) + f045*(x**45) + f046*(x**46) + f047*(x**47) +
f048*(x**48) + f049*(x**49) + f050*(x**50) + f051*(x**51) +
f052*(x**52) + f053*(x**53) + f054*(x**54) + f055*(x**55) +
f056*(x**56) + f057*(x**57) + f058*(x**58) + f059*(x**59) +
f060*(x**60) + f061*(x**61) + f062*(x**62) + f063*(x**63) +
f064*(x**64) + f065*(x**65) + f066*(x**66) + f067*(x**67) +
f068*(x**68) + f069*(x**69) + f070*(x**70) + f071*(x**71) +
f072*(x**72) + f073*(x**73) + f074*(x**74) + f075*(x**75) +
f076*(x**76) + f077*(x**77) + f078*(x**78) + f079*(x**79) +
f080*(x**80) + f081*(x**81) + f082*(x**82) + f083*(x**83) +
f084*(x**84) + f085*(x**85) + f086*(x**86) + f087*(x**87) +
f088*(x**88) + f089*(x**89) + f090*(x**90) + f091*(x**91) +
f092*(x**92) + f093*(x**93) + f094*(x**94) + f095*(x**95) +
f096*(x**96) + f097*(x**97) + f098*(x**98) + f099*(x**99) +
f100*(x**100) + f101*(x**101) + f102*(x**102) + f103*(x**103) +
f104*(x**104) + f105*(x**105) + f106*(x**106) + f107*(x**107) +
f108*(x**108) + f109*(x**109) + f110*(x**110) + f111*(x**111) +
f112*(x**112) + f113*(x**113) + f114*(x**114) + f115*(x**115) +
f116*(x**116) + f117*(x**117) + f118*(x**118) + f119*(x**119) +
f120*(x**120) + f121*(x**121) + f122*(x**122) + f123*(x**123) +
f124*(x**124) + f125*(x**125) + f126*(x**126) + f127*(x**127) +
f128*(x**128) + f129*(x**129) + f130*(x**130) + f131*(x**131) +
f132*(x**132) + f133*(x**133) + f134*(x**134) + f135*(x**135) +
f136*(x**136) + f137*(x**137) + f138*(x**138) + f139*(x**139) +
f140*(x**140) + f141*(x**141) + f142*(x**142) + f143*(x**143) +
f144*(x**144) + f145*(x**145) + f146*(x**146) + f147*(x**147) +
f148*(x**148) + f149*(x**149) + f150*(x**150) + f151*(x**151) +
f152*(x**152) + f153*(x**153) + f154*(x**154) + f155*(x**155) +
f156*(x**156) + f157*(x**157) + f158*(x**158) + f159*(x**159) +
f160*(x**160) + f161*(x**161) + f162*(x**162) + f163*(x**163) +
f164*(x**164) + f165*(x**165) + f166*(x**166) + f167*(x**167) +
f168*(x**168) + f169*(x**169) + f170*(x**170) + f171*(x**171) +
f172*(x**172) + f173*(x**173) + f174*(x**174) + f175*(x**175) +
f176*(x**176) + f177*(x**177) + f178*(x**178) + f179*(x**179) +
f180*(x**180) + f181*(x**181) + f182*(x**182) + f183*(x**183) +
f184*(x**184) + f185*(x**185) + f186*(x**186) + f187*(x**187) +
f188*(x**188) + f189*(x**189) + f190*(x**190) + f191*(x**191) +
f192*(x**192) + f193*(x**193) + f194*(x**194) + f195*(x**195) +
f196*(x**196) + f197*(x**197) + f198*(x**198) + f199*(x**199) +
f200*(x**200) + f201*(x**201) + f202*(x**202) + f203*(x**203) +
f204*(x**204) + f205*(x**205) + f206*(x**206) + f207*(x**207) +
f208*(x**208) + f209*(x**209) + f210*(x**210) + f211*(x**211) +
f212*(x**212) + f213*(x**213) + f214*(x**214) + f215*(x**215) +
f216*(x**216) + f217*(x**217) + f218*(x**218) + f219*(x**219) +
f220*(x**220) + f221*(x**221) + f222*(x**222) + f223*(x**223) +
f224*(x**224) + f225*(x**225) + f226*(x**226) + f227*(x**227) +
f228*(x**228) + f229*(x**229) + f230*(x**230) + f231*(x**231) +
f232*(x**232) + f233*(x**233) + f234*(x**234) + f235*(x**235) +
f236*(x**236) + f237*(x**237) + f238*(x**238) + f239*(x**239) +
f240*(x**240) + f241*(x**241) + f242*(x**242) + f243*(x**243) +
f244*(x**244) + f245*(x**245) + f246*(x**246) + f247*(x**247) +
f248*(x**248) + f249*(x**249) + f250*(x**250) + f251*(x**251) +
f252*(x**252) + f253*(x**253) + f254*(x**254) + f255*(x**255)
 && true;
*)

(* #! -> SP = 0x7fffffffa358 *)
#! 0x7fffffffa358 = 0x7fffffffa358;
(* #endbr64                                         #! PC = 0x55555556d170 *)
#endbr64                                         #! 0x55555556d170 = 0x55555556d170;
(* #push   %rbx                                     #! EA = L0x7fffffffa350; PC = 0x55555556d174 *)
#push   %rbx                                     #! L0x7fffffffa350 = L0x7fffffffa350; 0x55555556d174 = 0x55555556d174;
(* #mov    %rdi,%rbx                                #! PC = 0x55555556d175 *)
#mov    %rdi,%rbx                                #! 0x55555556d175 = 0x55555556d175;
(* #callq  0x55555556c8f0 <PQCLEAN_KYBER768_AVX2_poly_ntt>#! PC = 0x55555556d178 *)
#callq  0x55555556c8f0 <PQCLEAN_KYBER768_AVX2_poly_ntt>#! 0x55555556d178 = 0x55555556d178;
(* #! -> SP = 0x7fffffffa348 *)
#! 0x7fffffffa348 = 0x7fffffffa348;
(* #endbr64                                         #! PC = 0x55555556c8f0 *)
#endbr64                                         #! 0x55555556c8f0 = 0x55555556c8f0;
(* #lea    0xccce5(%rip),%rsi        # 0x5555556395e0 <PQCLEAN_KYBER768_AVX2_qdata>#! PC = 0x55555556c8f4 *)
#lea    0xccce5(%rip),%rsi        # 0x5555556395e0 <PQCLEAN_KYBER768_AVX2_qdata>#! 0x55555556c8f4 = 0x55555556c8f4;
(* #jmpq   0x55555556eb4f <_PQCLEAN_KYBER768_AVX2_ntt_avx>#! PC = 0x55555556c8fb *)
#jmpq   0x55555556eb4f <_PQCLEAN_KYBER768_AVX2_ntt_avx>#! 0x55555556c8fb = 0x55555556c8fb;
(* vmovdqa (%rsi),%ymm0                            #! EA = L0x5555556395e0; Value = 0x0d010d010d010d01; PC = 0x55555556eb4f *)
mov %ymm0 [L0x5555556395e0, L0x5555556395e2, L0x5555556395e4, L0x5555556395e6, L0x5555556395e8, L0x5555556395ea, L0x5555556395ec, L0x5555556395ee, L0x5555556395f0, L0x5555556395f2, L0x5555556395f4, L0x5555556395f6, L0x5555556395f8, L0x5555556395fa, L0x5555556395fc, L0x5555556395fe];
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x555555639720; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556eb53 *)
broadcast %ymm15 16 [L0x555555639720, L0x555555639722];
(* vmovdqa 0x100(%rdi),%ymm8                       #! EA = L0x7fffffffb080; Value = 0xffff0000ffff0001; PC = 0x55555556eb5c *)
mov %ymm8 [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e];
(* vmovdqa 0x120(%rdi),%ymm9                       #! EA = L0x7fffffffb0a0; Value = 0x00010001ffffffff; PC = 0x55555556eb64 *)
mov %ymm9 [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be];
(* vmovdqa 0x140(%rdi),%ymm10                      #! EA = L0x7fffffffb0c0; Value = 0x0000000000010000; PC = 0x55555556eb6c *)
mov %ymm10 [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de];
(* vmovdqa 0x160(%rdi),%ymm11                      #! EA = L0x7fffffffb0e0; Value = 0x0000fffe00000000; PC = 0x55555556eb74 *)
mov %ymm11 [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe];
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x555555639728; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556eb7c *)
broadcast %ymm2 16 [L0x555555639728, L0x55555563972a];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556eb85 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556eb8a *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556eb8f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eb94 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eb99 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556eb9d *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eba1 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eba5 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffaf80; Value = 0x0000ffff00000000; PC = 0x55555556eba9 *)
mov %ymm4 [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffafa0; Value = 0x00010001ffffffff; PC = 0x55555556ebad *)
mov %ymm5 [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffafc0; Value = 0x00010000ffff0000; PC = 0x55555556ebb2 *)
mov %ymm6 [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffafe0; Value = 0x000100010001ffff; PC = 0x55555556ebb7 *)
mov %ymm7 [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ebbc *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ebc0 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ebc4 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ebc8 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ebcc *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ebd1 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ebd6 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ebdb *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ebe0 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ebe5 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ebea *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ebef *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ebf4 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ebf9 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ebfe *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ec03 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ec08 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ec0d *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ec12 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ec17 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffffaf80; PC = 0x55555556ec1c *)
mov [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e] %ymm3;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffafa0; PC = 0x55555556ec20 *)
mov [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe] %ymm4;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffffafc0; PC = 0x55555556ec25 *)
mov [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde] %ymm5;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffffafe0; PC = 0x55555556ec2a *)
mov [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe] %ymm6;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb080; PC = 0x55555556ec2f *)
mov [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e] %ymm8;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb0a0; PC = 0x55555556ec37 *)
mov [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be] %ymm9;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb0c0; PC = 0x55555556ec3f *)
mov [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de] %ymm10;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb0e0; PC = 0x55555556ec47 *)
mov [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe] %ymm11;
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x555555639720; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556ec4f *)
broadcast %ymm15 16 [L0x555555639720, L0x555555639722];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb100; Value = 0x00000000ffffffff; PC = 0x55555556ec58 *)
mov %ymm8 [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb120; Value = 0x0001ffffffffffff; PC = 0x55555556ec60 *)
mov %ymm9 [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb140; Value = 0x00010001ffff0000; PC = 0x55555556ec68 *)
mov %ymm10 [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb160; Value = 0x0000ffff00010001; PC = 0x55555556ec70 *)
mov %ymm11 [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e];
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x555555639728; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556ec78 *)
broadcast %ymm2 16 [L0x555555639728, L0x55555563972a];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ec81 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ec86 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ec8b *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ec90 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ec95 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ec99 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ec9d *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eca1 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa 0x80(%rdi),%ymm4                        #! EA = L0x7fffffffb000; Value = 0xfffe0000ffff0000; PC = 0x55555556eca5 *)
mov %ymm4 [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e];
(* vmovdqa 0xa0(%rdi),%ymm5                        #! EA = L0x7fffffffb020; Value = 0xfffe000000010000; PC = 0x55555556ecad *)
mov %ymm5 [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e];
(* vmovdqa 0xc0(%rdi),%ymm6                        #! EA = L0x7fffffffb040; Value = 0x0001ffff0000ffff; PC = 0x55555556ecb5 *)
mov %ymm6 [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e];
(* vmovdqa 0xe0(%rdi),%ymm7                        #! EA = L0x7fffffffb060; Value = 0xfffeffff00000000; PC = 0x55555556ecbd *)
mov %ymm7 [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ecc5 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ecc9 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556eccd *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ecd1 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ecd5 *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ecda *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ecdf *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ece4 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ece9 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ecee *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ecf3 *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ecf8 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ecfd *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ed02 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ed07 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ed0c *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ed11 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ed16 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ed1b *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ed20 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffffb000; PC = 0x55555556ed25 *)
mov [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e] %ymm3;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb020; PC = 0x55555556ed2d *)
mov [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e] %ymm4;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb040; PC = 0x55555556ed35 *)
mov [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e] %ymm5;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffffb060; PC = 0x55555556ed3d *)
mov [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e] %ymm6;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb100; PC = 0x55555556ed45 *)
mov [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e] %ymm8;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb120; PC = 0x55555556ed4d *)
mov [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e] %ymm9;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb140; PC = 0x55555556ed55 *)
mov [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e] %ymm10;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb160; PC = 0x55555556ed5d *)
mov [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e] %ymm11;

(*********** SUMMARY OF LEVEL 0 ***********)



cut
eqmod (inp_poly**2)
      (poly x [L0x7fffffffaf80,L0x7fffffffaf82,L0x7fffffffaf84,L0x7fffffffaf86,
               L0x7fffffffaf88,L0x7fffffffaf8a,L0x7fffffffaf8c,L0x7fffffffaf8e,
               L0x7fffffffaf90,L0x7fffffffaf92,L0x7fffffffaf94,L0x7fffffffaf96,
               L0x7fffffffaf98,L0x7fffffffaf9a,L0x7fffffffaf9c,L0x7fffffffaf9e,
               L0x7fffffffafa0,L0x7fffffffafa2,L0x7fffffffafa4,L0x7fffffffafa6,
               L0x7fffffffafa8,L0x7fffffffafaa,L0x7fffffffafac,L0x7fffffffafae,
               L0x7fffffffafb0,L0x7fffffffafb2,L0x7fffffffafb4,L0x7fffffffafb6,
               L0x7fffffffafb8,L0x7fffffffafba,L0x7fffffffafbc,L0x7fffffffafbe,
               L0x7fffffffafc0,L0x7fffffffafc2,L0x7fffffffafc4,L0x7fffffffafc6,
               L0x7fffffffafc8,L0x7fffffffafca,L0x7fffffffafcc,L0x7fffffffafce,
               L0x7fffffffafd0,L0x7fffffffafd2,L0x7fffffffafd4,L0x7fffffffafd6,
               L0x7fffffffafd8,L0x7fffffffafda,L0x7fffffffafdc,L0x7fffffffafde,
               L0x7fffffffafe0,L0x7fffffffafe2,L0x7fffffffafe4,L0x7fffffffafe6,
               L0x7fffffffafe8,L0x7fffffffafea,L0x7fffffffafec,L0x7fffffffafee,
               L0x7fffffffaff0,L0x7fffffffaff2,L0x7fffffffaff4,L0x7fffffffaff6,
               L0x7fffffffaff8,L0x7fffffffaffa,L0x7fffffffaffc,L0x7fffffffaffe,
               L0x7fffffffb000,L0x7fffffffb002,L0x7fffffffb004,L0x7fffffffb006,
               L0x7fffffffb008,L0x7fffffffb00a,L0x7fffffffb00c,L0x7fffffffb00e,
               L0x7fffffffb010,L0x7fffffffb012,L0x7fffffffb014,L0x7fffffffb016,
               L0x7fffffffb018,L0x7fffffffb01a,L0x7fffffffb01c,L0x7fffffffb01e,
               L0x7fffffffb020,L0x7fffffffb022,L0x7fffffffb024,L0x7fffffffb026,
               L0x7fffffffb028,L0x7fffffffb02a,L0x7fffffffb02c,L0x7fffffffb02e,
               L0x7fffffffb030,L0x7fffffffb032,L0x7fffffffb034,L0x7fffffffb036,
               L0x7fffffffb038,L0x7fffffffb03a,L0x7fffffffb03c,L0x7fffffffb03e,
               L0x7fffffffb040,L0x7fffffffb042,L0x7fffffffb044,L0x7fffffffb046,
               L0x7fffffffb048,L0x7fffffffb04a,L0x7fffffffb04c,L0x7fffffffb04e,
               L0x7fffffffb050,L0x7fffffffb052,L0x7fffffffb054,L0x7fffffffb056,
               L0x7fffffffb058,L0x7fffffffb05a,L0x7fffffffb05c,L0x7fffffffb05e,
               L0x7fffffffb060,L0x7fffffffb062,L0x7fffffffb064,L0x7fffffffb066,
               L0x7fffffffb068,L0x7fffffffb06a,L0x7fffffffb06c,L0x7fffffffb06e,
               L0x7fffffffb070,L0x7fffffffb072,L0x7fffffffb074,L0x7fffffffb076,
               L0x7fffffffb078,L0x7fffffffb07a,L0x7fffffffb07c,L0x7fffffffb07e])
      [3329, x**128 - (1729)] /\
eqmod (inp_poly**2)
      (poly x [L0x7fffffffb080,L0x7fffffffb082,L0x7fffffffb084,L0x7fffffffb086,
               L0x7fffffffb088,L0x7fffffffb08a,L0x7fffffffb08c,L0x7fffffffb08e,
               L0x7fffffffb090,L0x7fffffffb092,L0x7fffffffb094,L0x7fffffffb096,
               L0x7fffffffb098,L0x7fffffffb09a,L0x7fffffffb09c,L0x7fffffffb09e,
               L0x7fffffffb0a0,L0x7fffffffb0a2,L0x7fffffffb0a4,L0x7fffffffb0a6,
               L0x7fffffffb0a8,L0x7fffffffb0aa,L0x7fffffffb0ac,L0x7fffffffb0ae,
               L0x7fffffffb0b0,L0x7fffffffb0b2,L0x7fffffffb0b4,L0x7fffffffb0b6,
               L0x7fffffffb0b8,L0x7fffffffb0ba,L0x7fffffffb0bc,L0x7fffffffb0be,
               L0x7fffffffb0c0,L0x7fffffffb0c2,L0x7fffffffb0c4,L0x7fffffffb0c6,
               L0x7fffffffb0c8,L0x7fffffffb0ca,L0x7fffffffb0cc,L0x7fffffffb0ce,
               L0x7fffffffb0d0,L0x7fffffffb0d2,L0x7fffffffb0d4,L0x7fffffffb0d6,
               L0x7fffffffb0d8,L0x7fffffffb0da,L0x7fffffffb0dc,L0x7fffffffb0de,
               L0x7fffffffb0e0,L0x7fffffffb0e2,L0x7fffffffb0e4,L0x7fffffffb0e6,
               L0x7fffffffb0e8,L0x7fffffffb0ea,L0x7fffffffb0ec,L0x7fffffffb0ee,
               L0x7fffffffb0f0,L0x7fffffffb0f2,L0x7fffffffb0f4,L0x7fffffffb0f6,
               L0x7fffffffb0f8,L0x7fffffffb0fa,L0x7fffffffb0fc,L0x7fffffffb0fe,
               L0x7fffffffb100,L0x7fffffffb102,L0x7fffffffb104,L0x7fffffffb106,
               L0x7fffffffb108,L0x7fffffffb10a,L0x7fffffffb10c,L0x7fffffffb10e,
               L0x7fffffffb110,L0x7fffffffb112,L0x7fffffffb114,L0x7fffffffb116,
               L0x7fffffffb118,L0x7fffffffb11a,L0x7fffffffb11c,L0x7fffffffb11e,
               L0x7fffffffb120,L0x7fffffffb122,L0x7fffffffb124,L0x7fffffffb126,
               L0x7fffffffb128,L0x7fffffffb12a,L0x7fffffffb12c,L0x7fffffffb12e,
               L0x7fffffffb130,L0x7fffffffb132,L0x7fffffffb134,L0x7fffffffb136,
               L0x7fffffffb138,L0x7fffffffb13a,L0x7fffffffb13c,L0x7fffffffb13e,
               L0x7fffffffb140,L0x7fffffffb142,L0x7fffffffb144,L0x7fffffffb146,
               L0x7fffffffb148,L0x7fffffffb14a,L0x7fffffffb14c,L0x7fffffffb14e,
               L0x7fffffffb150,L0x7fffffffb152,L0x7fffffffb154,L0x7fffffffb156,
               L0x7fffffffb158,L0x7fffffffb15a,L0x7fffffffb15c,L0x7fffffffb15e,
               L0x7fffffffb160,L0x7fffffffb162,L0x7fffffffb164,L0x7fffffffb166,
               L0x7fffffffb168,L0x7fffffffb16a,L0x7fffffffb16c,L0x7fffffffb16e,
               L0x7fffffffb170,L0x7fffffffb172,L0x7fffffffb174,L0x7fffffffb176,
               L0x7fffffffb178,L0x7fffffffb17a,L0x7fffffffb17c,L0x7fffffffb17e])
      [3329, x**128 - (1600)]
&&
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf80,L0x7fffffffaf82] /\
[L0x7fffffffaf80,L0x7fffffffaf82] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf84,L0x7fffffffaf86] /\
[L0x7fffffffaf84,L0x7fffffffaf86] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf88,L0x7fffffffaf8a] /\
[L0x7fffffffaf88,L0x7fffffffaf8a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf8c,L0x7fffffffaf8e] /\
[L0x7fffffffaf8c,L0x7fffffffaf8e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf90,L0x7fffffffaf92] /\
[L0x7fffffffaf90,L0x7fffffffaf92] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf94,L0x7fffffffaf96] /\
[L0x7fffffffaf94,L0x7fffffffaf96] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf98,L0x7fffffffaf9a] /\
[L0x7fffffffaf98,L0x7fffffffaf9a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaf9c,L0x7fffffffaf9e] /\
[L0x7fffffffaf9c,L0x7fffffffaf9e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafa0,L0x7fffffffafa2] /\
[L0x7fffffffafa0,L0x7fffffffafa2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafa4,L0x7fffffffafa6] /\
[L0x7fffffffafa4,L0x7fffffffafa6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafa8,L0x7fffffffafaa] /\
[L0x7fffffffafa8,L0x7fffffffafaa] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafac,L0x7fffffffafae] /\
[L0x7fffffffafac,L0x7fffffffafae] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafb0,L0x7fffffffafb2] /\
[L0x7fffffffafb0,L0x7fffffffafb2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafb4,L0x7fffffffafb6] /\
[L0x7fffffffafb4,L0x7fffffffafb6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafb8,L0x7fffffffafba] /\
[L0x7fffffffafb8,L0x7fffffffafba] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafbc,L0x7fffffffafbe] /\
[L0x7fffffffafbc,L0x7fffffffafbe] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafc0,L0x7fffffffafc2] /\
[L0x7fffffffafc0,L0x7fffffffafc2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafc4,L0x7fffffffafc6] /\
[L0x7fffffffafc4,L0x7fffffffafc6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafc8,L0x7fffffffafca] /\
[L0x7fffffffafc8,L0x7fffffffafca] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafcc,L0x7fffffffafce] /\
[L0x7fffffffafcc,L0x7fffffffafce] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafd0,L0x7fffffffafd2] /\
[L0x7fffffffafd0,L0x7fffffffafd2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafd4,L0x7fffffffafd6] /\
[L0x7fffffffafd4,L0x7fffffffafd6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafd8,L0x7fffffffafda] /\
[L0x7fffffffafd8,L0x7fffffffafda] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafdc,L0x7fffffffafde] /\
[L0x7fffffffafdc,L0x7fffffffafde] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafe0,L0x7fffffffafe2] /\
[L0x7fffffffafe0,L0x7fffffffafe2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafe4,L0x7fffffffafe6] /\
[L0x7fffffffafe4,L0x7fffffffafe6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafe8,L0x7fffffffafea] /\
[L0x7fffffffafe8,L0x7fffffffafea] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffafec,L0x7fffffffafee] /\
[L0x7fffffffafec,L0x7fffffffafee] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaff0,L0x7fffffffaff2] /\
[L0x7fffffffaff0,L0x7fffffffaff2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaff4,L0x7fffffffaff6] /\
[L0x7fffffffaff4,L0x7fffffffaff6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaff8,L0x7fffffffaffa] /\
[L0x7fffffffaff8,L0x7fffffffaffa] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffaffc,L0x7fffffffaffe] /\
[L0x7fffffffaffc,L0x7fffffffaffe] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb000,L0x7fffffffb002] /\
[L0x7fffffffb000,L0x7fffffffb002] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb004,L0x7fffffffb006] /\
[L0x7fffffffb004,L0x7fffffffb006] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb008,L0x7fffffffb00a] /\
[L0x7fffffffb008,L0x7fffffffb00a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb00c,L0x7fffffffb00e] /\
[L0x7fffffffb00c,L0x7fffffffb00e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb010,L0x7fffffffb012] /\
[L0x7fffffffb010,L0x7fffffffb012] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb014,L0x7fffffffb016] /\
[L0x7fffffffb014,L0x7fffffffb016] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb018,L0x7fffffffb01a] /\
[L0x7fffffffb018,L0x7fffffffb01a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb01c,L0x7fffffffb01e] /\
[L0x7fffffffb01c,L0x7fffffffb01e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb020,L0x7fffffffb022] /\
[L0x7fffffffb020,L0x7fffffffb022] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb024,L0x7fffffffb026] /\
[L0x7fffffffb024,L0x7fffffffb026] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb028,L0x7fffffffb02a] /\
[L0x7fffffffb028,L0x7fffffffb02a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb02c,L0x7fffffffb02e] /\
[L0x7fffffffb02c,L0x7fffffffb02e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb030,L0x7fffffffb032] /\
[L0x7fffffffb030,L0x7fffffffb032] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb034,L0x7fffffffb036] /\
[L0x7fffffffb034,L0x7fffffffb036] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb038,L0x7fffffffb03a] /\
[L0x7fffffffb038,L0x7fffffffb03a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb03c,L0x7fffffffb03e] /\
[L0x7fffffffb03c,L0x7fffffffb03e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb040,L0x7fffffffb042] /\
[L0x7fffffffb040,L0x7fffffffb042] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb044,L0x7fffffffb046] /\
[L0x7fffffffb044,L0x7fffffffb046] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb048,L0x7fffffffb04a] /\
[L0x7fffffffb048,L0x7fffffffb04a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb04c,L0x7fffffffb04e] /\
[L0x7fffffffb04c,L0x7fffffffb04e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb050,L0x7fffffffb052] /\
[L0x7fffffffb050,L0x7fffffffb052] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb054,L0x7fffffffb056] /\
[L0x7fffffffb054,L0x7fffffffb056] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb058,L0x7fffffffb05a] /\
[L0x7fffffffb058,L0x7fffffffb05a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb05c,L0x7fffffffb05e] /\
[L0x7fffffffb05c,L0x7fffffffb05e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb060,L0x7fffffffb062] /\
[L0x7fffffffb060,L0x7fffffffb062] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb064,L0x7fffffffb066] /\
[L0x7fffffffb064,L0x7fffffffb066] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb068,L0x7fffffffb06a] /\
[L0x7fffffffb068,L0x7fffffffb06a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb06c,L0x7fffffffb06e] /\
[L0x7fffffffb06c,L0x7fffffffb06e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb070,L0x7fffffffb072] /\
[L0x7fffffffb070,L0x7fffffffb072] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb074,L0x7fffffffb076] /\
[L0x7fffffffb074,L0x7fffffffb076] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb078,L0x7fffffffb07a] /\
[L0x7fffffffb078,L0x7fffffffb07a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb07c,L0x7fffffffb07e] /\
[L0x7fffffffb07c,L0x7fffffffb07e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb080,L0x7fffffffb082] /\
[L0x7fffffffb080,L0x7fffffffb082] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb084,L0x7fffffffb086] /\
[L0x7fffffffb084,L0x7fffffffb086] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb088,L0x7fffffffb08a] /\
[L0x7fffffffb088,L0x7fffffffb08a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb08c,L0x7fffffffb08e] /\
[L0x7fffffffb08c,L0x7fffffffb08e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb090,L0x7fffffffb092] /\
[L0x7fffffffb090,L0x7fffffffb092] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb094,L0x7fffffffb096] /\
[L0x7fffffffb094,L0x7fffffffb096] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb098,L0x7fffffffb09a] /\
[L0x7fffffffb098,L0x7fffffffb09a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb09c,L0x7fffffffb09e] /\
[L0x7fffffffb09c,L0x7fffffffb09e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0a0,L0x7fffffffb0a2] /\
[L0x7fffffffb0a0,L0x7fffffffb0a2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0a4,L0x7fffffffb0a6] /\
[L0x7fffffffb0a4,L0x7fffffffb0a6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0a8,L0x7fffffffb0aa] /\
[L0x7fffffffb0a8,L0x7fffffffb0aa] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0ac,L0x7fffffffb0ae] /\
[L0x7fffffffb0ac,L0x7fffffffb0ae] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0b0,L0x7fffffffb0b2] /\
[L0x7fffffffb0b0,L0x7fffffffb0b2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0b4,L0x7fffffffb0b6] /\
[L0x7fffffffb0b4,L0x7fffffffb0b6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0b8,L0x7fffffffb0ba] /\
[L0x7fffffffb0b8,L0x7fffffffb0ba] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0bc,L0x7fffffffb0be] /\
[L0x7fffffffb0bc,L0x7fffffffb0be] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0c0,L0x7fffffffb0c2] /\
[L0x7fffffffb0c0,L0x7fffffffb0c2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0c4,L0x7fffffffb0c6] /\
[L0x7fffffffb0c4,L0x7fffffffb0c6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0c8,L0x7fffffffb0ca] /\
[L0x7fffffffb0c8,L0x7fffffffb0ca] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0cc,L0x7fffffffb0ce] /\
[L0x7fffffffb0cc,L0x7fffffffb0ce] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0d0,L0x7fffffffb0d2] /\
[L0x7fffffffb0d0,L0x7fffffffb0d2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0d4,L0x7fffffffb0d6] /\
[L0x7fffffffb0d4,L0x7fffffffb0d6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0d8,L0x7fffffffb0da] /\
[L0x7fffffffb0d8,L0x7fffffffb0da] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0dc,L0x7fffffffb0de] /\
[L0x7fffffffb0dc,L0x7fffffffb0de] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0e0,L0x7fffffffb0e2] /\
[L0x7fffffffb0e0,L0x7fffffffb0e2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0e4,L0x7fffffffb0e6] /\
[L0x7fffffffb0e4,L0x7fffffffb0e6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0e8,L0x7fffffffb0ea] /\
[L0x7fffffffb0e8,L0x7fffffffb0ea] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0ec,L0x7fffffffb0ee] /\
[L0x7fffffffb0ec,L0x7fffffffb0ee] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0f0,L0x7fffffffb0f2] /\
[L0x7fffffffb0f0,L0x7fffffffb0f2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0f4,L0x7fffffffb0f6] /\
[L0x7fffffffb0f4,L0x7fffffffb0f6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0f8,L0x7fffffffb0fa] /\
[L0x7fffffffb0f8,L0x7fffffffb0fa] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0fc,L0x7fffffffb0fe] /\
[L0x7fffffffb0fc,L0x7fffffffb0fe] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb100,L0x7fffffffb102] /\
[L0x7fffffffb100,L0x7fffffffb102] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb104,L0x7fffffffb106] /\
[L0x7fffffffb104,L0x7fffffffb106] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb108,L0x7fffffffb10a] /\
[L0x7fffffffb108,L0x7fffffffb10a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb10c,L0x7fffffffb10e] /\
[L0x7fffffffb10c,L0x7fffffffb10e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb110,L0x7fffffffb112] /\
[L0x7fffffffb110,L0x7fffffffb112] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb114,L0x7fffffffb116] /\
[L0x7fffffffb114,L0x7fffffffb116] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb118,L0x7fffffffb11a] /\
[L0x7fffffffb118,L0x7fffffffb11a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb11c,L0x7fffffffb11e] /\
[L0x7fffffffb11c,L0x7fffffffb11e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb120,L0x7fffffffb122] /\
[L0x7fffffffb120,L0x7fffffffb122] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb124,L0x7fffffffb126] /\
[L0x7fffffffb124,L0x7fffffffb126] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb128,L0x7fffffffb12a] /\
[L0x7fffffffb128,L0x7fffffffb12a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb12c,L0x7fffffffb12e] /\
[L0x7fffffffb12c,L0x7fffffffb12e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb130,L0x7fffffffb132] /\
[L0x7fffffffb130,L0x7fffffffb132] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb134,L0x7fffffffb136] /\
[L0x7fffffffb134,L0x7fffffffb136] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb138,L0x7fffffffb13a] /\
[L0x7fffffffb138,L0x7fffffffb13a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb13c,L0x7fffffffb13e] /\
[L0x7fffffffb13c,L0x7fffffffb13e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb140,L0x7fffffffb142] /\
[L0x7fffffffb140,L0x7fffffffb142] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb144,L0x7fffffffb146] /\
[L0x7fffffffb144,L0x7fffffffb146] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb148,L0x7fffffffb14a] /\
[L0x7fffffffb148,L0x7fffffffb14a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb14c,L0x7fffffffb14e] /\
[L0x7fffffffb14c,L0x7fffffffb14e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb150,L0x7fffffffb152] /\
[L0x7fffffffb150,L0x7fffffffb152] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb154,L0x7fffffffb156] /\
[L0x7fffffffb154,L0x7fffffffb156] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb158,L0x7fffffffb15a] /\
[L0x7fffffffb158,L0x7fffffffb15a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb15c,L0x7fffffffb15e] /\
[L0x7fffffffb15c,L0x7fffffffb15e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb160,L0x7fffffffb162] /\
[L0x7fffffffb160,L0x7fffffffb162] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb164,L0x7fffffffb166] /\
[L0x7fffffffb164,L0x7fffffffb166] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb168,L0x7fffffffb16a] /\
[L0x7fffffffb168,L0x7fffffffb16a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb16c,L0x7fffffffb16e] /\
[L0x7fffffffb16c,L0x7fffffffb16e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb170,L0x7fffffffb172] /\
[L0x7fffffffb170,L0x7fffffffb172] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb174,L0x7fffffffb176] /\
[L0x7fffffffb174,L0x7fffffffb176] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb178,L0x7fffffffb17a] /\
[L0x7fffffffb178,L0x7fffffffb17a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb17c,L0x7fffffffb17e] /\
[L0x7fffffffb17c,L0x7fffffffb17e] <s [6658@16,6658@16];


(* vmovdqa 0x160(%rsi),%ymm15                      #! EA = L0x555555639740; Value = 0x3999399939993999; PC = 0x55555556ed65 *)
mov %ymm15 [L0x555555639740, L0x555555639742, L0x555555639744, L0x555555639746, L0x555555639748, L0x55555563974a, L0x55555563974c, L0x55555563974e, L0x555555639750, L0x555555639752, L0x555555639754, L0x555555639756, L0x555555639758, L0x55555563975a, L0x55555563975c, L0x55555563975e];
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb000; Value = 0xfffe0000063f0640; PC = 0x55555556ed6d *)
mov %ymm8 [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e];
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb020; Value = 0xf9be064006410640; PC = 0x55555556ed75 *)
mov %ymm9 [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e];
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb040; Value = 0xf9c1f9bf0640ffff; PC = 0x55555556ed7d *)
mov %ymm10 [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e];
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb060; Value = 0xfffe063ff9c0f9c0; PC = 0x55555556ed85 *)
mov %ymm11 [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e];
(* vmovdqa 0x180(%rsi),%ymm2                       #! EA = L0x555555639760; Value = 0xfe99fe99fe99fe99; PC = 0x55555556ed8d *)
mov %ymm2 [L0x555555639760, L0x555555639762, L0x555555639764, L0x555555639766, L0x555555639768, L0x55555563976a, L0x55555563976c, L0x55555563976e, L0x555555639770, L0x555555639772, L0x555555639774, L0x555555639776, L0x555555639778, L0x55555563977a, L0x55555563977c, L0x55555563977e];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ed95 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ed9a *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ed9f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eda4 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eda9 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556edad *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556edb1 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556edb5 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffaf80; Value = 0x0640ffff0640f9c0; PC = 0x55555556edb9 *)
mov %ymm4 [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffafa0; Value = 0xf9c1f9c1063f063f; PC = 0x55555556edbd *)
mov %ymm5 [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffafc0; Value = 0x00010000f9bf0000; PC = 0x55555556edc2 *)
mov %ymm6 [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffafe0; Value = 0x0001ff800001ffff; PC = 0x55555556edc7 *)
mov %ymm7 [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556edcc *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556edd0 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556edd4 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556edd8 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556eddc *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ede1 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ede6 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556edeb *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556edf0 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556edf5 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556edfa *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556edff *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ee04 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ee09 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ee0e *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ee13 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ee18 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ee1d *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ee22 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ee27 *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 1 0 ***********)

mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut
and [
eqmod (inp_poly**2) (poly x [*%ymm3, *%ymm4, *%ymm5, *%ymm6])
      [3329, x**64 - (2580)],
eqmod (inp_poly**2) (poly x [*%ymm8, *%ymm9, *%ymm10, *%ymm11])
      [3329, x**64 - (749)]]
&&
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm3 /\ %ymm3 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm4 /\ %ymm4 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm5 /\ %ymm5 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm6 /\ %ymm6 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm8 /\ %ymm8 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm9 /\ %ymm9 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm10 /\ %ymm10 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm11 /\ %ymm11 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16];

(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556ee2c *)
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
_, _, _, _] %ymm5;
mov [ymm7_8, ymm7_9, ymm7_a, ymm7_b,
ymm7_c, ymm7_d, ymm7_e, ymm7_f,
_, _, _, _,
_, _, _, _] %ymm10;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556ee32 *)
mov [_, _, _, _,
_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
ymm10_4, ymm10_5, ymm10_6, ymm10_7] %ymm5;
mov [_, _, _, _,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556ee38 *)
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
_, _, _, _] %ymm6;
mov [ymm5_8, ymm5_9, ymm5_a, ymm5_b,
ymm5_c, ymm5_d, ymm5_e, ymm5_f,
_, _, _, _,
_, _, _, _] %ymm11;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556ee3e *)
mov [_, _, _, _,
_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
ymm11_4, ymm11_5, ymm11_6, ymm11_7] %ymm6;
mov [_, _, _, _,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x1a0(%rsi),%ymm15                      #! EA = L0x555555639780; Value = 0x34d534d534d534d5; PC = 0x55555556ee44 *)
mov %ymm15 [L0x555555639780, L0x555555639782, L0x555555639784, L0x555555639786, L0x555555639788, L0x55555563978a, L0x55555563978c, L0x55555563978e, L0x555555639790, L0x555555639792, L0x555555639794, L0x555555639796, L0x555555639798, L0x55555563979a, L0x55555563979c, L0x55555563979e];
(* vmovdqa 0x1c0(%rsi),%ymm2                       #! EA = L0x5555556397a0; Value = 0x05d505d505d505d5; PC = 0x55555556ee4c *)
mov %ymm2 [L0x5555556397a0, L0x5555556397a2, L0x5555556397a4, L0x5555556397a6, L0x5555556397a8, L0x5555556397aa, L0x5555556397ac, L0x5555556397ae, L0x5555556397b0, L0x5555556397b2, L0x5555556397b4, L0x5555556397b6, L0x5555556397b8, L0x5555556397ba, L0x5555556397bc, L0x5555556397be];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556ee54 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556ee59 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556ee5e *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ee63 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ee68 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ee6c *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ee70 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ee74 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556ee78 *)
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3,
ymm6_4, ymm6_5, ymm6_6, ymm6_7,
_, _, _, _,
_, _, _, _] %ymm3;
mov [ymm6_8, ymm6_9, ymm6_a, ymm6_b,
ymm6_c, ymm6_d, ymm6_e, ymm6_f,
_, _, _, _,
_, _, _, _] %ymm8;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556ee7e *)
mov [_, _, _, _,
_, _, _, _,
ymm8_0, ymm8_1, ymm8_2, ymm8_3,
ymm8_4, ymm8_5, ymm8_6, ymm8_7] %ymm3;
mov [_, _, _, _,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556ee84 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
_, _, _, _] %ymm4;
mov [ymm3_8, ymm3_9, ymm3_a, ymm3_b,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _,
_, _, _, _] %ymm9;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556ee8a *)
mov [_, _, _, _,
_, _, _, _,
ymm9_0, ymm9_1, ymm9_2, ymm9_3,
ymm9_4, ymm9_5, ymm9_6, ymm9_7] %ymm4;
mov [_, _, _, _,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ee90 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm7;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ee94 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ee98 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm5;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ee9c *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556eea0 *)
add %ymm4 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556eea4 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556eea8 *)
add %ymm6 %ymm10 %ymm8;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556eead *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556eeb2 *)
add %ymm8 %ymm5 %ymm3;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556eeb6 *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556eeba *)
add %ymm3 %ymm11 %ymm9;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556eebf *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556eec4 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556eec9 *)
add %ymm7 %ymm12 %ymm7;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556eece *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556eed3 *)
add %ymm10 %ymm13 %ymm10;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556eed8 *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556eedd *)
add %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556eee2 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556eee7 *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 2 0 ***********)

mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
                   %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7]])
          [3329, x**32 - (2642)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                   %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [3329, x**32 - (687)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
                   %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15]])
          [3329, x**32 - (630)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                   %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [3329, x**32 - (2699)]
&&
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm4 /\ %ymm4 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm6 /\ %ymm6 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm8 /\ %ymm8 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm3 /\ %ymm3 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm7 /\ %ymm7 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm10 /\ %ymm10 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm11 /\ %ymm11 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16];

(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556eeec *)
mov [ymm9_4, ymm9_5, ymm9_6, ymm9_7,
_, _, _, _,
ymm9_c, ymm9_d, ymm9_e, ymm9_f,
_, _, _, _] %ymm5;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
_, _, _, _] %ymm8;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556eef0 *)
mov [_, _, _, _,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [_, _, _, _,
ymm5_0, ymm5_1, ymm5_2, ymm5_3,
_, _, _, _,
ymm5_8, ymm5_9, ymm5_a, ymm5_b] %ymm8;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556eef4 *)
mov [ymm8_4, ymm8_5, ymm8_6, ymm8_7,
_, _, _, _,
ymm8_c, ymm8_d, ymm8_e, ymm8_f,
_, _, _, _] %ymm11;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
_, _, _, _] %ymm3;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556eef9 *)
mov [_, _, _, _,
ymm11_4, ymm11_5, ymm11_6, ymm11_7,
_, _, _, _,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov [_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b] %ymm3;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x1e0(%rsi),%ymm15                      #! EA = L0x5555556397c0; Value = 0xae55ae55ae55ae55; PC = 0x55555556eefe *)
mov %ymm15 [L0x5555556397c0, L0x5555556397c2, L0x5555556397c4, L0x5555556397c6, L0x5555556397c8, L0x5555556397ca, L0x5555556397cc, L0x5555556397ce, L0x5555556397d0, L0x5555556397d2, L0x5555556397d4, L0x5555556397d6, L0x5555556397d8, L0x5555556397da, L0x5555556397dc, L0x5555556397de];
(* vmovdqa 0x200(%rsi),%ymm2                       #! EA = L0x5555556397e0; Value = 0xff55ff55ff55ff55; PC = 0x55555556ef06 *)
mov %ymm2 [L0x5555556397e0, L0x5555556397e2, L0x5555556397e4, L0x5555556397e6, L0x5555556397e8, L0x5555556397ea, L0x5555556397ec, L0x5555556397ee, L0x5555556397f0, L0x5555556397f2, L0x5555556397f4, L0x5555556397f6, L0x5555556397f8, L0x5555556397fa, L0x5555556397fc, L0x5555556397fe];
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556ef0e *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556ef13 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556ef18 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ef1d *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ef22 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ef26 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ef2a *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ef2e *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556ef32 *)
mov [ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _] %ymm7;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
_, _, _, _,
ymm3_8, ymm3_9, ymm3_a, ymm3_b,
_, _, _, _] %ymm4;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556ef36 *)
mov [_, _, _, _,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [_, _, _, _,
ymm7_0, ymm7_1, ymm7_2, ymm7_3,
_, _, _, _,
ymm7_8, ymm7_9, ymm7_a, ymm7_b] %ymm4;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556ef3a *)
mov [ymm4_4, ymm4_5, ymm4_6, ymm4_7,
_, _, _, _,
ymm4_c, ymm4_d, ymm4_e, ymm4_f,
_, _, _, _] %ymm10;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3,
_, _, _, _,
ymm4_8, ymm4_9, ymm4_a, ymm4_b,
_, _, _, _] %ymm6;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556ef3f *)
mov [_, _, _, _,
ymm10_4, ymm10_5, ymm10_6, ymm10_7,
_, _, _, _,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b] %ymm6;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ef44 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ef48 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm5;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ef4c *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ef50 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556ef54 *)
add %ymm6 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556ef59 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556ef5e *)
add %ymm3 %ymm5 %ymm7;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556ef62 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556ef66 *)
add %ymm7 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ef6b *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556ef70 *)
add %ymm4 %ymm11 %ymm10;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556ef75 *)
sub %ymm11 %ymm10 %ymm11;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556ef7a *)
sub %ymm6 %ymm6 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556ef7f *)
add %ymm9 %ymm12 %ymm9;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556ef84 *)
sub %ymm3 %ymm3 %ymm13;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556ef89 *)
add %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ef8e *)
sub %ymm7 %ymm7 %ymm14;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ef93 *)
add %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556ef98 *)
sub %ymm4 %ymm4 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ef9d *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 3 0 ***********)

mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                   %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                   %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                   %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3]])
          [3329, x**16 - (1062)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
                   %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                   %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                   %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3]])
          [3329, x**16 - (2267)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                   %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                   %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                   %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]])
          [3329, x**16 - (1919)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
                   %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                   %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                   %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [3329, x**16 - (1410)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                   %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                   %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                   %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11]])
          [3329, x**16 - (193)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
                   %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                   %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                   %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]])
          [3329, x**16 - (3136)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                   %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                   %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                   %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]])
          [3329, x**16 - (797)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
                   %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                   %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                   %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [3329, x**16 - (2532)]
&&
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm6 /\ %ymm6 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm3 /\ %ymm3 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm7 /\ %ymm7 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm4 /\ %ymm4 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm9 /\ %ymm9 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm5 /\ %ymm5 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm8 /\ %ymm8 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm11 /\ %ymm11 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16];

(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556efa2 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm8;
mov %ymm10 [
ymm8_0, ymm8_1, ymm8_0, ymm8_1,
ymm8_4, ymm8_5, ymm8_4, ymm8_5,
ymm8_8, ymm8_9, ymm8_8, ymm8_9,
ymm8_c, ymm8_d, ymm8_c, ymm8_d];
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556efa7 *)
mov [ymm10_0, ymm10_1, _, _,
ymm10_4, ymm10_5, _, _,
ymm10_8, ymm10_9, _, _,
ymm10_c, ymm10_d, _, _] %ymm7;
mov [_, _, ymm10_2, ymm10_3,
_, _, ymm10_6, ymm10_7,
_, _, ymm10_a, ymm10_b,
_, _, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556efad *)
mov [_, _, ymm7_0010, ymm7_0011,
_, _, ymm7_0110, ymm7_0111,
_, _, ymm7_1010, ymm7_1011,
_, _, ymm7_1110, ymm7_1111] %ymm7;
mov %ymm7 [ymm7_0010, ymm7_0011, 0@sint16, 0@sint16,
ymm7_0110, ymm7_0111, 0@sint16, 0@sint16,
ymm7_1010, ymm7_1011, 0@sint16, 0@sint16,
ymm7_1110, ymm7_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556efb2 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm7;
mov [_, _, ymm8_2, ymm8_3,
_, _, ymm8_6, ymm8_7,
_, _, ymm8_a, ymm8_b,
_, _, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556efb8 *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm11;
mov %ymm7 [
ymm11_0, ymm11_1, ymm11_0, ymm11_1,
ymm11_4, ymm11_5, ymm11_4, ymm11_5,
ymm11_8, ymm11_9, ymm11_8, ymm11_9,
ymm11_c, ymm11_d, ymm11_c, ymm11_d];
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556efbd *)
mov [ymm7_0, ymm7_1, _, _,
ymm7_4, ymm7_5, _, _,
ymm7_8, ymm7_9, _, _,
ymm7_c, ymm7_d, _, _] %ymm4;
mov [_, _, ymm7_2, ymm7_3,
_, _, ymm7_6, ymm7_7,
_, _, ymm7_a, ymm7_b,
_, _, ymm7_e, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556efc3 *)
mov [_, _, ymm4_0010, ymm4_0011,
_, _, ymm4_0110, ymm4_0111,
_, _, ymm4_1010, ymm4_1011,
_, _, ymm4_1110, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0010, ymm4_0011, 0@sint16, 0@sint16,
ymm4_0110, ymm4_0111, 0@sint16, 0@sint16,
ymm4_1010, ymm4_1011, 0@sint16, 0@sint16,
ymm4_1110, ymm4_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556efc8 *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm4;
mov [_, _, ymm11_2, ymm11_3,
_, _, ymm11_6, ymm11_7,
_, _, ymm11_a, ymm11_b,
_, _, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x220(%rsi),%ymm15                      #! EA = L0x555555639800; Value = 0x43d343d3e93de93d; PC = 0x55555556efce *)
mov %ymm15 [L0x555555639800, L0x555555639802, L0x555555639804, L0x555555639806, L0x555555639808, L0x55555563980a, L0x55555563980c, L0x55555563980e, L0x555555639810, L0x555555639812, L0x555555639814, L0x555555639816, L0x555555639818, L0x55555563981a, L0x55555563981c, L0x55555563981e];
(* vmovdqa 0x240(%rsi),%ymm2                       #! EA = L0x555555639820; Value = 0xfad3fad3023d023d; PC = 0x55555556efd6 *)
mov %ymm2 [L0x555555639820, L0x555555639822, L0x555555639824, L0x555555639826, L0x555555639828, L0x55555563982a, L0x55555563982c, L0x55555563982e, L0x555555639830, L0x555555639832, L0x555555639834, L0x555555639836, L0x555555639838, L0x55555563983a, L0x55555563983c, L0x55555563983e];
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556efde *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556efe3 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556efe8 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556efed *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eff2 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eff6 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556effa *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556effe *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556f002 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm9;
mov %ymm4 [
ymm9_0, ymm9_1, ymm9_0, ymm9_1,
ymm9_4, ymm9_5, ymm9_4, ymm9_5,
ymm9_8, ymm9_9, ymm9_8, ymm9_9,
ymm9_c, ymm9_d, ymm9_c, ymm9_d];
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556f007 *)
mov [ymm4_0, ymm4_1, _, _,
ymm4_4, ymm4_5, _, _,
ymm4_8, ymm4_9, _, _,
ymm4_c, ymm4_d, _, _] %ymm6;
mov [_, _, ymm4_2, ymm4_3,
_, _, ymm4_6, ymm4_7,
_, _, ymm4_a, ymm4_b,
_, _, ymm4_e, ymm4_f] %ymm4;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556f00d *)
mov [_, _, ymm6_0010, ymm6_0011,
_, _, ymm6_0110, ymm6_0111,
_, _, ymm6_1010, ymm6_1011,
_, _, ymm6_1110, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0010, ymm6_0011, 0@sint16, 0@sint16,
ymm6_0110, ymm6_0111, 0@sint16, 0@sint16,
ymm6_1010, ymm6_1011, 0@sint16, 0@sint16,
ymm6_1110, ymm6_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f012 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm6;
mov [_, _, ymm9_2, ymm9_3,
_, _, ymm9_6, ymm9_7,
_, _, ymm9_a, ymm9_b,
_, _, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556f018 *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm5;
mov %ymm6 [
ymm5_0, ymm5_1, ymm5_0, ymm5_1,
ymm5_4, ymm5_5, ymm5_4, ymm5_5,
ymm5_8, ymm5_9, ymm5_8, ymm5_9,
ymm5_c, ymm5_d, ymm5_c, ymm5_d];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f01c *)
mov [ymm6_0, ymm6_1, _, _,
ymm6_4, ymm6_5, _, _,
ymm6_8, ymm6_9, _, _,
ymm6_c, ymm6_d, _, _] %ymm3;
mov [_, _, ymm6_2, ymm6_3,
_, _, ymm6_6, ymm6_7,
_, _, ymm6_a, ymm6_b,
_, _, ymm6_e, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556f022 *)
mov [_, _, ymm3_0010, ymm3_0011,
_, _, ymm3_0110, ymm3_0111,
_, _, ymm3_1010, ymm3_1011,
_, _, ymm3_1110, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0010, ymm3_0011, 0@sint16, 0@sint16,
ymm3_0110, ymm3_0111, 0@sint16, 0@sint16,
ymm3_1010, ymm3_1011, 0@sint16, 0@sint16,
ymm3_1110, ymm3_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556f027 *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm3;
mov [_, _, ymm5_2, ymm5_3,
_, _, ymm5_6, ymm5_7,
_, _, ymm5_a, ymm5_b,
_, _, ymm5_e, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f02d *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f031 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f035 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm7;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f039 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556f03d *)
add %ymm3 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f042 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556f047 *)
add %ymm4 %ymm8 %ymm9;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556f04c *)
sub %ymm8 %ymm9 %ymm8;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556f051 *)
add %ymm9 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f055 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556f059 *)
add %ymm6 %ymm11 %ymm5;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556f05e *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f063 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f068 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f06d *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556f072 *)
add %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f077 *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f07c *)
add %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f081 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f086 *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 4 0 ***********)

mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;


cut eqmod (inp_poly**2)
          (poly x [%ymm3[0],%ymm3[1],%ymm4[0],%ymm4[1],
                   %ymm9[0],%ymm9[1],%ymm6[0],%ymm6[1]])
          [3329, x**8 - (296)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[0],%ymm10[1],%ymm8[0],%ymm8[1],
                   %ymm7[0],%ymm7[1],%ymm11[0],%ymm11[1]])
          [3329, x**8 - (3033)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[2],%ymm3[3],%ymm4[2],%ymm4[3],
                   %ymm9[2],%ymm9[3],%ymm6[2],%ymm6[3]])
          [3329, x**8 - (2447)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[2],%ymm10[3],%ymm8[2],%ymm8[3],
                   %ymm7[2],%ymm7[3],%ymm11[2],%ymm11[3]])
          [3329, x**8 - (882)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[4],%ymm3[5],%ymm4[4],%ymm4[5],
                   %ymm9[4],%ymm9[5],%ymm6[4],%ymm6[5]])
          [3329, x**8 - (1339)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[4],%ymm10[5],%ymm8[4],%ymm8[5],
                   %ymm7[4],%ymm7[5],%ymm11[4],%ymm11[5]])
          [3329, x**8 - (1990)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[6],%ymm3[7],%ymm4[6],%ymm4[7],
                   %ymm9[6],%ymm9[7],%ymm6[6],%ymm6[7]])
          [3329, x**8 - (1476)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[6],%ymm10[7],%ymm8[6],%ymm8[7],
                   %ymm7[6],%ymm7[7],%ymm11[6],%ymm11[7]])
          [3329, x**8 - (1853)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[8],%ymm3[9],%ymm4[8],%ymm4[9],
                   %ymm9[8],%ymm9[9],%ymm6[8],%ymm6[9]])
          [3329, x**8 - (3046)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[8],%ymm10[9],%ymm8[8],%ymm8[9],
                   %ymm7[8],%ymm7[9],%ymm11[8],%ymm11[9]])
          [3329, x**8 - (283)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[10],%ymm3[11],%ymm4[10],%ymm4[11],
                   %ymm9[10],%ymm9[11],%ymm6[10],%ymm6[11]])
          [3329, x**8 - (56)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[10],%ymm10[11],%ymm8[10],%ymm8[11],
                   %ymm7[10],%ymm7[11],%ymm11[10],%ymm11[11]])
          [3329, x**8 - (3273)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[12],%ymm3[13],%ymm4[12],%ymm4[13],
                   %ymm9[12],%ymm9[13],%ymm6[12],%ymm6[13]])
          [3329, x**8 - (2240)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[12],%ymm10[13],%ymm8[12],%ymm8[13],
                   %ymm7[12],%ymm7[13],%ymm11[12],%ymm11[13]])
          [3329, x**8 - (1089)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[14],%ymm3[15],%ymm4[14],%ymm4[15],
                   %ymm9[14],%ymm9[15],%ymm6[14],%ymm6[15]])
          [3329, x**8 - (1333)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[14],%ymm10[15],%ymm8[14],%ymm8[15],
                   %ymm7[14],%ymm7[15],%ymm11[14],%ymm11[15]])
          [3329, x**8 - (1996)]
&&
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm3 /\ %ymm3 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm4 /\ %ymm4 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm9 /\ %ymm9 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm6 /\ %ymm6 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm10 /\ %ymm10 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm8 /\ %ymm8 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm7 /\ %ymm7 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm11 /\ %ymm11 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16];


(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556f08b *)
mov [ymm7_0000, _, ymm7_0010, _,
ymm7_0100, _, ymm7_0110, _,
ymm7_1000, _, ymm7_1010, _,
ymm7_1100, _, ymm7_1110, _] %ymm7;
mov %ymm5 [0@sint16, ymm7_0000, 0@sint16, ymm7_0010,
0@sint16, ymm7_0100, 0@sint16, ymm7_0110,
0@sint16, ymm7_1000, 0@sint16, ymm7_1010,
0@sint16, ymm7_1100, 0@sint16, ymm7_1110];
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556f090 *)
mov [ymm5_0, _, ymm5_2, _,
ymm5_4, _, ymm5_6, _,
ymm5_8, _, ymm5_a, _,
ymm5_c, _, ymm5_e, _] %ymm9;
mov [_, ymm5_1, _, ymm5_3,
_, ymm5_5, _, ymm5_7,
_, ymm5_9, _, ymm5_b,
_, ymm5_d, _, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556f096 *)
mov [_, ymm9_0001, _, ymm9_0011,
_, ymm9_0101, _, ymm9_0111,
_, ymm9_1001, _, ymm9_1011,
_, ymm9_1101, _, ymm9_1111] %ymm9;
mov %ymm9 [ymm9_0001, 0@sint16, ymm9_0011, 0@sint16,
ymm9_0101, 0@sint16, ymm9_0111, 0@sint16,
ymm9_1001, 0@sint16, ymm9_1011, 0@sint16,
ymm9_1101, 0@sint16, ymm9_1111, 0@sint16];
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556f09c *)
mov [ymm7_0, _, ymm7_2, _,
ymm7_4, _, ymm7_6, _,
ymm7_8, _, ymm7_a, _,
ymm7_c, _, ymm7_e, _] %ymm9;
mov [_, ymm7_1, _, ymm7_3,
_, ymm7_5, _, ymm7_7,
_, ymm7_9, _, ymm7_b,
_, ymm7_d, _, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556f0a2 *)
mov [ymm11_0000, _, ymm11_0010, _,
ymm11_0100, _, ymm11_0110, _,
ymm11_1000, _, ymm11_1010, _,
ymm11_1100, _, ymm11_1110, _] %ymm11;
mov %ymm9 [0@sint16, ymm11_0000, 0@sint16, ymm11_0010,
0@sint16, ymm11_0100, 0@sint16, ymm11_0110,
0@sint16, ymm11_1000, 0@sint16, ymm11_1010,
0@sint16, ymm11_1100, 0@sint16, ymm11_1110];
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f0a8 *)
mov [ymm9_0, _, ymm9_2, _,
ymm9_4, _, ymm9_6, _,
ymm9_8, _, ymm9_a, _,
ymm9_c, _, ymm9_e, _] %ymm6;
mov [_, ymm9_1, _, ymm9_3,
_, ymm9_5, _, ymm9_7,
_, ymm9_9, _, ymm9_b,
_, ymm9_d, _, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556f0ae *)
mov [_, ymm6_0001, _, ymm6_0011,
_, ymm6_0101, _, ymm6_0111,
_, ymm6_1001, _, ymm6_1011,
_, ymm6_1101, _, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0001, 0@sint16, ymm6_0011, 0@sint16,
ymm6_0101, 0@sint16, ymm6_0111, 0@sint16,
ymm6_1001, 0@sint16, ymm6_1011, 0@sint16,
ymm6_1101, 0@sint16, ymm6_1111, 0@sint16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556f0b3 *)
mov [ymm11_0, _, ymm11_2, _,
ymm11_4, _, ymm11_6, _,
ymm11_8, _, ymm11_a, _,
ymm11_c, _, ymm11_e, _] %ymm6;
mov [_, ymm11_1, _, ymm11_3,
_, ymm11_5, _, ymm11_7,
_, ymm11_9, _, ymm11_b,
_, ymm11_d, _, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x260(%rsi),%ymm15                      #! EA = L0x555555639840; Value = 0x78f705d8e68ce9c7; PC = 0x55555556f0b9 *)
mov %ymm15 [L0x555555639840, L0x555555639842, L0x555555639844, L0x555555639846, L0x555555639848, L0x55555563984a, L0x55555563984c, L0x55555563984e, L0x555555639850, L0x555555639852, L0x555555639854, L0x555555639856, L0x555555639858, L0x55555563985a, L0x55555563985c, L0x55555563985e];
(* vmovdqa 0x280(%rsi),%ymm2                       #! EA = L0x555555639860; Value = 0x03f7fdd8028c04c7; PC = 0x55555556f0c1 *)
mov %ymm2 [L0x555555639860, L0x555555639862, L0x555555639864, L0x555555639866, L0x555555639868, L0x55555563986a, L0x55555563986c, L0x55555563986e, L0x555555639870, L0x555555639872, L0x555555639874, L0x555555639876, L0x555555639878, L0x55555563987a, L0x55555563987c, L0x55555563987e];
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556f0c9 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556f0ce *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f0d3 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f0d8 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f0dd *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f0e1 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f0e5 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f0e9 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556f0ed *)
mov [ymm10_0000, _, ymm10_0010, _,
ymm10_0100, _, ymm10_0110, _,
ymm10_1000, _, ymm10_1010, _,
ymm10_1100, _, ymm10_1110, _] %ymm10;
mov %ymm6 [0@sint16, ymm10_0000, 0@sint16, ymm10_0010,
0@sint16, ymm10_0100, 0@sint16, ymm10_0110,
0@sint16, ymm10_1000, 0@sint16, ymm10_1010,
0@sint16, ymm10_1100, 0@sint16, ymm10_1110];
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f0f3 *)
mov [ymm6_0, _, ymm6_2, _,
ymm6_4, _, ymm6_6, _,
ymm6_8, _, ymm6_a, _,
ymm6_c, _, ymm6_e, _] %ymm3;
mov [_, ymm6_1, _, ymm6_3,
_, ymm6_5, _, ymm6_7,
_, ymm6_9, _, ymm6_b,
_, ymm6_d, _, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556f0f9 *)
mov [_, ymm3_0001, _, ymm3_0011,
_, ymm3_0101, _, ymm3_0111,
_, ymm3_1001, _, ymm3_1011,
_, ymm3_1101, _, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0001, 0@sint16, ymm3_0011, 0@sint16,
ymm3_0101, 0@sint16, ymm3_0111, 0@sint16,
ymm3_1001, 0@sint16, ymm3_1011, 0@sint16,
ymm3_1101, 0@sint16, ymm3_1111, 0@sint16];
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556f0fe *)
mov [ymm10_0, _, ymm10_2, _,
ymm10_4, _, ymm10_6, _,
ymm10_8, _, ymm10_a, _,
ymm10_c, _, ymm10_e, _] %ymm3;
mov [_, ymm10_1, _, ymm10_3,
_, ymm10_5, _, ymm10_7,
_, ymm10_9, _, ymm10_b,
_, ymm10_d, _, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556f104 *)
mov [ymm8_0000, _, ymm8_0010, _,
ymm8_0100, _, ymm8_0110, _,
ymm8_1000, _, ymm8_1010, _,
ymm8_1100, _, ymm8_1110, _] %ymm8;
mov %ymm3 [0@sint16, ymm8_0000, 0@sint16, ymm8_0010,
0@sint16, ymm8_0100, 0@sint16, ymm8_0110,
0@sint16, ymm8_1000, 0@sint16, ymm8_1010,
0@sint16, ymm8_1100, 0@sint16, ymm8_1110];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556f10a *)
mov [ymm3_0, _, ymm3_2, _,
ymm3_4, _, ymm3_6, _,
ymm3_8, _, ymm3_a, _,
ymm3_c, _, ymm3_e, _] %ymm4;
mov [_, ymm3_1, _, ymm3_3,
_, ymm3_5, _, ymm3_7,
_, ymm3_9, _, ymm3_b,
_, ymm3_d, _, ymm3_f] %ymm3;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556f110 *)
mov [_, ymm4_0001, _, ymm4_0011,
_, ymm4_0101, _, ymm4_0111,
_, ymm4_1001, _, ymm4_1011,
_, ymm4_1101, _, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0001, 0@sint16, ymm4_0011, 0@sint16,
ymm4_0101, 0@sint16, ymm4_0111, 0@sint16,
ymm4_1001, 0@sint16, ymm4_1011, 0@sint16,
ymm4_1101, 0@sint16, ymm4_1111, 0@sint16];
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556f115 *)
mov [ymm8_0, _, ymm8_2, _,
ymm8_4, _, ymm8_6, _,
ymm8_8, _, ymm8_a, _,
ymm8_c, _, ymm8_e, _] %ymm4;
mov [_, ymm8_1, _, ymm8_3,
_, ymm8_5, _, ymm8_7,
_, ymm8_9, _, ymm8_b,
_, ymm8_d, _, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f11b *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm5;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f11f *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm7;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f123 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f127 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556f12b *)
add %ymm4 %ymm5 %ymm6;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556f12f *)
sub %ymm5 %ymm6 %ymm5;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556f133 *)
add %ymm6 %ymm7 %ymm10;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556f137 *)
sub %ymm7 %ymm10 %ymm7;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556f13b *)
add %ymm10 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f140 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556f145 *)
add %ymm3 %ymm11 %ymm8;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556f14a *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f14f *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556f154 *)
add %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f159 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556f15e *)
add %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f163 *)
sub %ymm10 %ymm10 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f168 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f16d *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f172 *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 5 0 ***********)

mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm4[0], %ymm6[0], %ymm10[0], %ymm3[0]])
          [3329, x**4 - (289)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[0], %ymm7[0], %ymm9[0], %ymm11[0]])
          [3329, x**4 - (3040)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[1], %ymm6[1], %ymm10[1], %ymm3[1]])
          [3329, x**4 - (331)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[1], %ymm7[1], %ymm9[1], %ymm11[1]])
          [3329, x**4 - (2998)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[2], %ymm6[2], %ymm10[2], %ymm3[2]])
          [3329, x**4 - (3253)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[2], %ymm7[2], %ymm9[2], %ymm11[2]])
          [3329, x**4 - (76)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[3], %ymm6[3], %ymm10[3], %ymm3[3]])
          [3329, x**4 - (1756)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[3], %ymm7[3], %ymm9[3], %ymm11[3]])
          [3329, x**4 - (1573)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[4], %ymm6[4], %ymm10[4], %ymm3[4]])
          [3329, x**4 - (1197)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[4], %ymm7[4], %ymm9[4], %ymm11[4]])
          [3329, x**4 - (2132)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[5], %ymm6[5], %ymm10[5], %ymm3[5]])
          [3329, x**4 - (2304)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[5], %ymm7[5], %ymm9[5], %ymm11[5]])
          [3329, x**4 - (1025)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[6], %ymm6[6], %ymm10[6], %ymm3[6]])
          [3329, x**4 - (2277)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[6], %ymm7[6], %ymm9[6], %ymm11[6]])
          [3329, x**4 - (1052)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[7], %ymm6[7], %ymm10[7], %ymm3[7]])
          [3329, x**4 - (2055)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[7], %ymm7[7], %ymm9[7], %ymm11[7]])
          [3329, x**4 - (1274)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[8], %ymm6[8], %ymm10[8], %ymm3[8]])
          [3329, x**4 - (650)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[8], %ymm7[8], %ymm9[8], %ymm11[8]])
          [3329, x**4 - (2679)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[9], %ymm6[9], %ymm10[9], %ymm3[9]])
          [3329, x**4 - (1977)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[9], %ymm7[9], %ymm9[9], %ymm11[9]])
          [3329, x**4 - (1352)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[10], %ymm6[10], %ymm10[10], %ymm3[10]])
          [3329, x**4 - (2513)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[10], %ymm7[10], %ymm9[10], %ymm11[10]])
          [3329, x**4 - (816)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[11], %ymm6[11], %ymm10[11], %ymm3[11]])
          [3329, x**4 - (632)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[11], %ymm7[11], %ymm9[11], %ymm11[11]])
          [3329, x**4 - (2697)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[12], %ymm6[12], %ymm10[12], %ymm3[12]])
          [3329, x**4 - (2865)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[12], %ymm7[12], %ymm9[12], %ymm11[12]])
          [3329, x**4 - (464)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[13], %ymm6[13], %ymm10[13], %ymm3[13]])
          [3329, x**4 - (33)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[13], %ymm7[13], %ymm9[13], %ymm11[13]])
          [3329, x**4 - (3296)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[14], %ymm6[14], %ymm10[14], %ymm3[14]])
          [3329, x**4 - (1320)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[14], %ymm7[14], %ymm9[14], %ymm11[14]])
          [3329, x**4 - (2009)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[15], %ymm6[15], %ymm10[15], %ymm3[15]])
          [3329, x**4 - (1915)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[15], %ymm7[15], %ymm9[15], %ymm11[15]])
          [3329, x**4 - (1414)]
&&
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm4 /\ %ymm4 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm6 /\ %ymm6 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm10 /\ %ymm10 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm3 /\ %ymm3 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm5 /\ %ymm5 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm7 /\ %ymm7 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm9 /\ %ymm9 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm11 /\ %ymm11 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16];


(* vmovdqa 0x2a0(%rsi),%ymm14                      #! EA = L0x555555639880; Value = 0x500e821dd32bfeb1; PC = 0x55555556f177 *)
mov %ymm14 [L0x555555639880, L0x555555639882, L0x555555639884, L0x555555639886, L0x555555639888, L0x55555563988a, L0x55555563988c, L0x55555563988e, L0x555555639890, L0x555555639892, L0x555555639894, L0x555555639896, L0x555555639898, L0x55555563989a, L0x55555563989c, L0x55555563989e];
(* vmovdqa 0x2e0(%rsi),%ymm15                      #! EA = L0x5555556398c0; Value = 0xab69c867344b2bae; PC = 0x55555556f17f *)
mov %ymm15 [L0x5555556398c0, L0x5555556398c2, L0x5555556398c4, L0x5555556398c6, L0x5555556398c8, L0x5555556398ca, L0x5555556398cc, L0x5555556398ce, L0x5555556398d0, L0x5555556398d2, L0x5555556398d4, L0x5555556398d6, L0x5555556398d8, L0x5555556398da, L0x5555556398dc, L0x5555556398de];
(* vmovdqa 0x2c0(%rsi),%ymm8                       #! EA = L0x5555556398a0; Value = 0x060efb1d022bfbb1; PC = 0x55555556f187 *)
mov %ymm8 [L0x5555556398a0, L0x5555556398a2, L0x5555556398a4, L0x5555556398a6, L0x5555556398a8, L0x5555556398aa, L0x5555556398ac, L0x5555556398ae, L0x5555556398b0, L0x5555556398b2, L0x5555556398b4, L0x5555556398b6, L0x5555556398b8, L0x5555556398ba, L0x5555556398bc, L0x5555556398be];
(* vmovdqa 0x300(%rsi),%ymm2                       #! EA = L0x5555556398e0; Value = 0x00690367034b01ae; PC = 0x55555556f18f *)
mov %ymm2 [L0x5555556398e0, L0x5555556398e2, L0x5555556398e4, L0x5555556398e6, L0x5555556398e8, L0x5555556398ea, L0x5555556398ec, L0x5555556398ee, L0x5555556398f0, L0x5555556398f2, L0x5555556398f4, L0x5555556398f6, L0x5555556398f8, L0x5555556398fa, L0x5555556398fc, L0x5555556398fe];
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556f197 *)
smull %mulHymm10 %mulL %ymm14 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556f19c *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f1a1 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f1a6 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f1ab *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f1b0 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f1b5 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f1b9 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f1bd *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f1c1 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm3;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f1c5 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f1c9 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f1cd *)
add %ymm8 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f1d2 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f1d7 *)
add %ymm4 %ymm3 %ymm6;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f1db *)
sub %ymm3 %ymm6 %ymm3;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f1df *)
add %ymm6 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f1e4 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f1e9 *)
add %ymm5 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f1ee *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f1f3 *)
sub %ymm8 %ymm8 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f1f8 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f1fd *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f202 *)
add %ymm3 %ymm13 %ymm3;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f207 *)
sub %ymm6 %ymm6 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f20c *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f211 *)
sub %ymm5 %ymm5 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f216 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm8,(%rdi)                            #! EA = L0x7fffffffaf80; PC = 0x55555556f21b *)
mov [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e] %ymm8;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffafa0; PC = 0x55555556f21f *)
mov [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe] %ymm4;
(* vmovdqa %ymm10,0x40(%rdi)                       #! EA = L0x7fffffffafc0; PC = 0x55555556f224 *)
mov [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde] %ymm10;
(* vmovdqa %ymm3,0x60(%rdi)                        #! EA = L0x7fffffffafe0; PC = 0x55555556f229 *)
mov [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe] %ymm3;
(* vmovdqa %ymm6,0x80(%rdi)                        #! EA = L0x7fffffffb000; PC = 0x55555556f22e *)
mov [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e] %ymm6;
(* vmovdqa %ymm5,0xa0(%rdi)                        #! EA = L0x7fffffffb020; PC = 0x55555556f236 *)
mov [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e] %ymm5;
(* vmovdqa %ymm9,0xc0(%rdi)                        #! EA = L0x7fffffffb040; PC = 0x55555556f23e *)
mov [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e] %ymm9;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb060; PC = 0x55555556f246 *)
mov [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e] %ymm11;


(*********** SUMMARY OF LEVEL 6 0 ***********)

cut
and [
eqmod (inp_poly**2)
(L0x7fffffffaf80 + L0x7fffffffafa0*x) [3329, x**2 - (17)],
eqmod (inp_poly**2)
(L0x7fffffffafc0 + L0x7fffffffafe0*x) [3329, x**2 - (3312)],
eqmod (inp_poly**2)
(L0x7fffffffb000 + L0x7fffffffb020*x) [3329, x**2 - (2761)],
eqmod (inp_poly**2)
(L0x7fffffffb040 + L0x7fffffffb060*x) [3329, x**2 - (568)],
eqmod (inp_poly**2)
(L0x7fffffffaf82 + L0x7fffffffafa2*x) [3329, x**2 - (583)],
eqmod (inp_poly**2)
(L0x7fffffffafc2 + L0x7fffffffafe2*x) [3329, x**2 - (2746)],
eqmod (inp_poly**2)
(L0x7fffffffb002 + L0x7fffffffb022*x) [3329, x**2 - (2649)],
eqmod (inp_poly**2)
(L0x7fffffffb042 + L0x7fffffffb062*x) [3329, x**2 - (680)],
eqmod (inp_poly**2)
(L0x7fffffffaf84 + L0x7fffffffafa4*x) [3329, x**2 - (1637)],
eqmod (inp_poly**2)
(L0x7fffffffafc4 + L0x7fffffffafe4*x) [3329, x**2 - (1692)],
eqmod (inp_poly**2)
(L0x7fffffffb004 + L0x7fffffffb024*x) [3329, x**2 - (723)],
eqmod (inp_poly**2)
(L0x7fffffffb044 + L0x7fffffffb064*x) [3329, x**2 - (2606)],
eqmod (inp_poly**2)
(L0x7fffffffaf86 + L0x7fffffffafa6*x) [3329, x**2 - (2288)],
eqmod (inp_poly**2)
(L0x7fffffffafc6 + L0x7fffffffafe6*x) [3329, x**2 - (1041)],
eqmod (inp_poly**2)
(L0x7fffffffb006 + L0x7fffffffb026*x) [3329, x**2 - (1100)],
eqmod (inp_poly**2)
(L0x7fffffffb046 + L0x7fffffffb066*x) [3329, x**2 - (2229)],
eqmod (inp_poly**2)
(L0x7fffffffaf88 + L0x7fffffffafa8*x) [3329, x**2 - (1409)],
eqmod (inp_poly**2)
(L0x7fffffffafc8 + L0x7fffffffafe8*x) [3329, x**2 - (1920)],
eqmod (inp_poly**2)
(L0x7fffffffb008 + L0x7fffffffb028*x) [3329, x**2 - (2662)],
eqmod (inp_poly**2)
(L0x7fffffffb048 + L0x7fffffffb068*x) [3329, x**2 - (667)],
eqmod (inp_poly**2)
(L0x7fffffffaf8a + L0x7fffffffafaa*x) [3329, x**2 - (3281)],
eqmod (inp_poly**2)
(L0x7fffffffafca + L0x7fffffffafea*x) [3329, x**2 - (48)],
eqmod (inp_poly**2)
(L0x7fffffffb00a + L0x7fffffffb02a*x) [3329, x**2 - (233)],
eqmod (inp_poly**2)
(L0x7fffffffb04a + L0x7fffffffb06a*x) [3329, x**2 - (3096)],
eqmod (inp_poly**2)
(L0x7fffffffaf8c + L0x7fffffffafac*x) [3329, x**2 - (756)],
eqmod (inp_poly**2)
(L0x7fffffffafcc + L0x7fffffffafec*x) [3329, x**2 - (2573)],
eqmod (inp_poly**2)
(L0x7fffffffb00c + L0x7fffffffb02c*x) [3329, x**2 - (2156)],
eqmod (inp_poly**2)
(L0x7fffffffb04c + L0x7fffffffb06c*x) [3329, x**2 - (1173)],
eqmod (inp_poly**2)
(L0x7fffffffaf8e + L0x7fffffffafae*x) [3329, x**2 - (3015)],
eqmod (inp_poly**2)
(L0x7fffffffafce + L0x7fffffffafee*x) [3329, x**2 - (314)],
eqmod (inp_poly**2)
(L0x7fffffffb00e + L0x7fffffffb02e*x) [3329, x**2 - (3050)],
eqmod (inp_poly**2)
(L0x7fffffffb04e + L0x7fffffffb06e*x) [3329, x**2 - (279)],
eqmod (inp_poly**2)
(L0x7fffffffaf90 + L0x7fffffffafb0*x) [3329, x**2 - (1703)],
eqmod (inp_poly**2)
(L0x7fffffffafd0 + L0x7fffffffaff0*x) [3329, x**2 - (1626)],
eqmod (inp_poly**2)
(L0x7fffffffb010 + L0x7fffffffb030*x) [3329, x**2 - (1651)],
eqmod (inp_poly**2)
(L0x7fffffffb050 + L0x7fffffffb070*x) [3329, x**2 - (1678)],
eqmod (inp_poly**2)
(L0x7fffffffaf92 + L0x7fffffffafb2*x) [3329, x**2 - (2789)],
eqmod (inp_poly**2)
(L0x7fffffffafd2 + L0x7fffffffaff2*x) [3329, x**2 - (540)],
eqmod (inp_poly**2)
(L0x7fffffffb012 + L0x7fffffffb032*x) [3329, x**2 - (1789)],
eqmod (inp_poly**2)
(L0x7fffffffb052 + L0x7fffffffb072*x) [3329, x**2 - (1540)],
eqmod (inp_poly**2)
(L0x7fffffffaf94 + L0x7fffffffafb4*x) [3329, x**2 - (1847)],
eqmod (inp_poly**2)
(L0x7fffffffafd4 + L0x7fffffffaff4*x) [3329, x**2 - (1482)],
eqmod (inp_poly**2)
(L0x7fffffffb014 + L0x7fffffffb034*x) [3329, x**2 - (952)],
eqmod (inp_poly**2)
(L0x7fffffffb054 + L0x7fffffffb074*x) [3329, x**2 - (2377)],
eqmod (inp_poly**2)
(L0x7fffffffaf96 + L0x7fffffffafb6*x) [3329, x**2 - (1461)],
eqmod (inp_poly**2)
(L0x7fffffffafd6 + L0x7fffffffaff6*x) [3329, x**2 - (1868)],
eqmod (inp_poly**2)
(L0x7fffffffb016 + L0x7fffffffb036*x) [3329, x**2 - (2687)],
eqmod (inp_poly**2)
(L0x7fffffffb056 + L0x7fffffffb076*x) [3329, x**2 - (642)],
eqmod (inp_poly**2)
(L0x7fffffffaf98 + L0x7fffffffafb8*x) [3329, x**2 - (939)],
eqmod (inp_poly**2)
(L0x7fffffffafd8 + L0x7fffffffaff8*x) [3329, x**2 - (2390)],
eqmod (inp_poly**2)
(L0x7fffffffb018 + L0x7fffffffb038*x) [3329, x**2 - (2308)],
eqmod (inp_poly**2)
(L0x7fffffffb058 + L0x7fffffffb078*x) [3329, x**2 - (1021)],
eqmod (inp_poly**2)
(L0x7fffffffaf9a + L0x7fffffffafba*x) [3329, x**2 - (2437)],
eqmod (inp_poly**2)
(L0x7fffffffafda + L0x7fffffffaffa*x) [3329, x**2 - (892)],
eqmod (inp_poly**2)
(L0x7fffffffb01a + L0x7fffffffb03a*x) [3329, x**2 - (2388)],
eqmod (inp_poly**2)
(L0x7fffffffb05a + L0x7fffffffb07a*x) [3329, x**2 - (941)],
eqmod (inp_poly**2)
(L0x7fffffffaf9c + L0x7fffffffafbc*x) [3329, x**2 - (733)],
eqmod (inp_poly**2)
(L0x7fffffffafdc + L0x7fffffffaffc*x) [3329, x**2 - (2596)],
eqmod (inp_poly**2)
(L0x7fffffffb01c + L0x7fffffffb03c*x) [3329, x**2 - (2337)],
eqmod (inp_poly**2)
(L0x7fffffffb05c + L0x7fffffffb07c*x) [3329, x**2 - (992)],
eqmod (inp_poly**2)
(L0x7fffffffaf9e + L0x7fffffffafbe*x) [3329, x**2 - (268)],
eqmod (inp_poly**2)
(L0x7fffffffafde + L0x7fffffffaffe*x) [3329, x**2 - (3061)],
eqmod (inp_poly**2)
(L0x7fffffffb01e + L0x7fffffffb03e*x) [3329, x**2 - (641)],
eqmod (inp_poly**2)
(L0x7fffffffb05e + L0x7fffffffb07e*x) [3329, x**2 - (2688)]]
&&
and [
(-26632)@16 <s L0x7fffffffaf80, L0x7fffffffaf80 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf82, L0x7fffffffaf82 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf84, L0x7fffffffaf84 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf86, L0x7fffffffaf86 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf88, L0x7fffffffaf88 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf8a, L0x7fffffffaf8a <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf8c, L0x7fffffffaf8c <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf8e, L0x7fffffffaf8e <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf90, L0x7fffffffaf90 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf92, L0x7fffffffaf92 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf94, L0x7fffffffaf94 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf96, L0x7fffffffaf96 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf98, L0x7fffffffaf98 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf9a, L0x7fffffffaf9a <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf9c, L0x7fffffffaf9c <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf9e, L0x7fffffffaf9e <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa0, L0x7fffffffafa0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa2, L0x7fffffffafa2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa4, L0x7fffffffafa4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa6, L0x7fffffffafa6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa8, L0x7fffffffafa8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafaa, L0x7fffffffafaa <s (26632)@16,
(-26632)@16 <s L0x7fffffffafac, L0x7fffffffafac <s (26632)@16,
(-26632)@16 <s L0x7fffffffafae, L0x7fffffffafae <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb0, L0x7fffffffafb0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb2, L0x7fffffffafb2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb4, L0x7fffffffafb4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb6, L0x7fffffffafb6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb8, L0x7fffffffafb8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafba, L0x7fffffffafba <s (26632)@16,
(-26632)@16 <s L0x7fffffffafbc, L0x7fffffffafbc <s (26632)@16,
(-26632)@16 <s L0x7fffffffafbe, L0x7fffffffafbe <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc0, L0x7fffffffafc0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc2, L0x7fffffffafc2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc4, L0x7fffffffafc4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc6, L0x7fffffffafc6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc8, L0x7fffffffafc8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafca, L0x7fffffffafca <s (26632)@16,
(-26632)@16 <s L0x7fffffffafcc, L0x7fffffffafcc <s (26632)@16,
(-26632)@16 <s L0x7fffffffafce, L0x7fffffffafce <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd0, L0x7fffffffafd0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd2, L0x7fffffffafd2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd4, L0x7fffffffafd4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd6, L0x7fffffffafd6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd8, L0x7fffffffafd8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafda, L0x7fffffffafda <s (26632)@16,
(-26632)@16 <s L0x7fffffffafdc, L0x7fffffffafdc <s (26632)@16,
(-26632)@16 <s L0x7fffffffafde, L0x7fffffffafde <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe0, L0x7fffffffafe0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe2, L0x7fffffffafe2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe4, L0x7fffffffafe4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe6, L0x7fffffffafe6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe8, L0x7fffffffafe8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafea, L0x7fffffffafea <s (26632)@16,
(-26632)@16 <s L0x7fffffffafec, L0x7fffffffafec <s (26632)@16,
(-26632)@16 <s L0x7fffffffafee, L0x7fffffffafee <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff0, L0x7fffffffaff0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff2, L0x7fffffffaff2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff4, L0x7fffffffaff4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff6, L0x7fffffffaff6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff8, L0x7fffffffaff8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaffa, L0x7fffffffaffa <s (26632)@16,
(-26632)@16 <s L0x7fffffffaffc, L0x7fffffffaffc <s (26632)@16,
(-26632)@16 <s L0x7fffffffaffe, L0x7fffffffaffe <s (26632)@16,
(-26632)@16 <s L0x7fffffffb000, L0x7fffffffb000 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb002, L0x7fffffffb002 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb004, L0x7fffffffb004 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb006, L0x7fffffffb006 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb008, L0x7fffffffb008 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb00a, L0x7fffffffb00a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb00c, L0x7fffffffb00c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb00e, L0x7fffffffb00e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb010, L0x7fffffffb010 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb012, L0x7fffffffb012 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb014, L0x7fffffffb014 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb016, L0x7fffffffb016 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb018, L0x7fffffffb018 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb01a, L0x7fffffffb01a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb01c, L0x7fffffffb01c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb01e, L0x7fffffffb01e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb020, L0x7fffffffb020 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb022, L0x7fffffffb022 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb024, L0x7fffffffb024 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb026, L0x7fffffffb026 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb028, L0x7fffffffb028 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb02a, L0x7fffffffb02a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb02c, L0x7fffffffb02c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb02e, L0x7fffffffb02e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb030, L0x7fffffffb030 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb032, L0x7fffffffb032 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb034, L0x7fffffffb034 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb036, L0x7fffffffb036 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb038, L0x7fffffffb038 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb03a, L0x7fffffffb03a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb03c, L0x7fffffffb03c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb03e, L0x7fffffffb03e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb040, L0x7fffffffb040 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb042, L0x7fffffffb042 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb044, L0x7fffffffb044 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb046, L0x7fffffffb046 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb048, L0x7fffffffb048 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb04a, L0x7fffffffb04a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb04c, L0x7fffffffb04c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb04e, L0x7fffffffb04e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb050, L0x7fffffffb050 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb052, L0x7fffffffb052 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb054, L0x7fffffffb054 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb056, L0x7fffffffb056 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb058, L0x7fffffffb058 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb05a, L0x7fffffffb05a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb05c, L0x7fffffffb05c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb05e, L0x7fffffffb05e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb060, L0x7fffffffb060 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb062, L0x7fffffffb062 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb064, L0x7fffffffb064 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb066, L0x7fffffffb066 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb068, L0x7fffffffb068 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb06a, L0x7fffffffb06a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb06c, L0x7fffffffb06c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb06e, L0x7fffffffb06e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb070, L0x7fffffffb070 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb072, L0x7fffffffb072 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb074, L0x7fffffffb074 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb076, L0x7fffffffb076 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb078, L0x7fffffffb078 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb07a, L0x7fffffffb07a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb07c, L0x7fffffffb07c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb07e, L0x7fffffffb07e <s (26632)@16];


(*********** START LEVEL 1 ***********)

(* 7 *)
cut
eqmod (inp_poly**2)
      (poly x [L0x7fffffffb080,L0x7fffffffb082,L0x7fffffffb084,L0x7fffffffb086,
              L0x7fffffffb088,L0x7fffffffb08a,L0x7fffffffb08c,L0x7fffffffb08e,
              L0x7fffffffb090,L0x7fffffffb092,L0x7fffffffb094,L0x7fffffffb096,
              L0x7fffffffb098,L0x7fffffffb09a,L0x7fffffffb09c,L0x7fffffffb09e,
              L0x7fffffffb0a0,L0x7fffffffb0a2,L0x7fffffffb0a4,L0x7fffffffb0a6,
              L0x7fffffffb0a8,L0x7fffffffb0aa,L0x7fffffffb0ac,L0x7fffffffb0ae,
              L0x7fffffffb0b0,L0x7fffffffb0b2,L0x7fffffffb0b4,L0x7fffffffb0b6,
              L0x7fffffffb0b8,L0x7fffffffb0ba,L0x7fffffffb0bc,L0x7fffffffb0be,
              L0x7fffffffb0c0,L0x7fffffffb0c2,L0x7fffffffb0c4,L0x7fffffffb0c6,
              L0x7fffffffb0c8,L0x7fffffffb0ca,L0x7fffffffb0cc,L0x7fffffffb0ce,
              L0x7fffffffb0d0,L0x7fffffffb0d2,L0x7fffffffb0d4,L0x7fffffffb0d6,
              L0x7fffffffb0d8,L0x7fffffffb0da,L0x7fffffffb0dc,L0x7fffffffb0de,
              L0x7fffffffb0e0,L0x7fffffffb0e2,L0x7fffffffb0e4,L0x7fffffffb0e6,
              L0x7fffffffb0e8,L0x7fffffffb0ea,L0x7fffffffb0ec,L0x7fffffffb0ee,
              L0x7fffffffb0f0,L0x7fffffffb0f2,L0x7fffffffb0f4,L0x7fffffffb0f6,
              L0x7fffffffb0f8,L0x7fffffffb0fa,L0x7fffffffb0fc,L0x7fffffffb0fe,
              L0x7fffffffb100,L0x7fffffffb102,L0x7fffffffb104,L0x7fffffffb106,
              L0x7fffffffb108,L0x7fffffffb10a,L0x7fffffffb10c,L0x7fffffffb10e,
              L0x7fffffffb110,L0x7fffffffb112,L0x7fffffffb114,L0x7fffffffb116,
              L0x7fffffffb118,L0x7fffffffb11a,L0x7fffffffb11c,L0x7fffffffb11e,
              L0x7fffffffb120,L0x7fffffffb122,L0x7fffffffb124,L0x7fffffffb126,
              L0x7fffffffb128,L0x7fffffffb12a,L0x7fffffffb12c,L0x7fffffffb12e,
              L0x7fffffffb130,L0x7fffffffb132,L0x7fffffffb134,L0x7fffffffb136,
              L0x7fffffffb138,L0x7fffffffb13a,L0x7fffffffb13c,L0x7fffffffb13e,
              L0x7fffffffb140,L0x7fffffffb142,L0x7fffffffb144,L0x7fffffffb146,
              L0x7fffffffb148,L0x7fffffffb14a,L0x7fffffffb14c,L0x7fffffffb14e,
              L0x7fffffffb150,L0x7fffffffb152,L0x7fffffffb154,L0x7fffffffb156,
              L0x7fffffffb158,L0x7fffffffb15a,L0x7fffffffb15c,L0x7fffffffb15e,
              L0x7fffffffb160,L0x7fffffffb162,L0x7fffffffb164,L0x7fffffffb166,
              L0x7fffffffb168,L0x7fffffffb16a,L0x7fffffffb16c,L0x7fffffffb16e,
              L0x7fffffffb170,L0x7fffffffb172,L0x7fffffffb174,L0x7fffffffb176,
              L0x7fffffffb178,L0x7fffffffb17a,L0x7fffffffb17c,L0x7fffffffb17e])
      [3329, x**128 - (1600)]
prove with [ cuts [ 0 ] ]
&&
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb080,L0x7fffffffb082] /\
[L0x7fffffffb080,L0x7fffffffb082] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb084,L0x7fffffffb086] /\
[L0x7fffffffb084,L0x7fffffffb086] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb088,L0x7fffffffb08a] /\
[L0x7fffffffb088,L0x7fffffffb08a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb08c,L0x7fffffffb08e] /\
[L0x7fffffffb08c,L0x7fffffffb08e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb090,L0x7fffffffb092] /\
[L0x7fffffffb090,L0x7fffffffb092] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb094,L0x7fffffffb096] /\
[L0x7fffffffb094,L0x7fffffffb096] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb098,L0x7fffffffb09a] /\
[L0x7fffffffb098,L0x7fffffffb09a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb09c,L0x7fffffffb09e] /\
[L0x7fffffffb09c,L0x7fffffffb09e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0a0,L0x7fffffffb0a2] /\
[L0x7fffffffb0a0,L0x7fffffffb0a2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0a4,L0x7fffffffb0a6] /\
[L0x7fffffffb0a4,L0x7fffffffb0a6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0a8,L0x7fffffffb0aa] /\
[L0x7fffffffb0a8,L0x7fffffffb0aa] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0ac,L0x7fffffffb0ae] /\
[L0x7fffffffb0ac,L0x7fffffffb0ae] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0b0,L0x7fffffffb0b2] /\
[L0x7fffffffb0b0,L0x7fffffffb0b2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0b4,L0x7fffffffb0b6] /\
[L0x7fffffffb0b4,L0x7fffffffb0b6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0b8,L0x7fffffffb0ba] /\
[L0x7fffffffb0b8,L0x7fffffffb0ba] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0bc,L0x7fffffffb0be] /\
[L0x7fffffffb0bc,L0x7fffffffb0be] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0c0,L0x7fffffffb0c2] /\
[L0x7fffffffb0c0,L0x7fffffffb0c2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0c4,L0x7fffffffb0c6] /\
[L0x7fffffffb0c4,L0x7fffffffb0c6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0c8,L0x7fffffffb0ca] /\
[L0x7fffffffb0c8,L0x7fffffffb0ca] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0cc,L0x7fffffffb0ce] /\
[L0x7fffffffb0cc,L0x7fffffffb0ce] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0d0,L0x7fffffffb0d2] /\
[L0x7fffffffb0d0,L0x7fffffffb0d2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0d4,L0x7fffffffb0d6] /\
[L0x7fffffffb0d4,L0x7fffffffb0d6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0d8,L0x7fffffffb0da] /\
[L0x7fffffffb0d8,L0x7fffffffb0da] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0dc,L0x7fffffffb0de] /\
[L0x7fffffffb0dc,L0x7fffffffb0de] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0e0,L0x7fffffffb0e2] /\
[L0x7fffffffb0e0,L0x7fffffffb0e2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0e4,L0x7fffffffb0e6] /\
[L0x7fffffffb0e4,L0x7fffffffb0e6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0e8,L0x7fffffffb0ea] /\
[L0x7fffffffb0e8,L0x7fffffffb0ea] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0ec,L0x7fffffffb0ee] /\
[L0x7fffffffb0ec,L0x7fffffffb0ee] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0f0,L0x7fffffffb0f2] /\
[L0x7fffffffb0f0,L0x7fffffffb0f2] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0f4,L0x7fffffffb0f6] /\
[L0x7fffffffb0f4,L0x7fffffffb0f6] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0f8,L0x7fffffffb0fa] /\
[L0x7fffffffb0f8,L0x7fffffffb0fa] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb0fc,L0x7fffffffb0fe] /\
[L0x7fffffffb0fc,L0x7fffffffb0fe] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb100,L0x7fffffffb102] /\
[L0x7fffffffb100,L0x7fffffffb102] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb104,L0x7fffffffb106] /\
[L0x7fffffffb104,L0x7fffffffb106] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb108,L0x7fffffffb10a] /\
[L0x7fffffffb108,L0x7fffffffb10a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb10c,L0x7fffffffb10e] /\
[L0x7fffffffb10c,L0x7fffffffb10e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb110,L0x7fffffffb112] /\
[L0x7fffffffb110,L0x7fffffffb112] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb114,L0x7fffffffb116] /\
[L0x7fffffffb114,L0x7fffffffb116] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb118,L0x7fffffffb11a] /\
[L0x7fffffffb118,L0x7fffffffb11a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb11c,L0x7fffffffb11e] /\
[L0x7fffffffb11c,L0x7fffffffb11e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb120,L0x7fffffffb122] /\
[L0x7fffffffb120,L0x7fffffffb122] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb124,L0x7fffffffb126] /\
[L0x7fffffffb124,L0x7fffffffb126] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb128,L0x7fffffffb12a] /\
[L0x7fffffffb128,L0x7fffffffb12a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb12c,L0x7fffffffb12e] /\
[L0x7fffffffb12c,L0x7fffffffb12e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb130,L0x7fffffffb132] /\
[L0x7fffffffb130,L0x7fffffffb132] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb134,L0x7fffffffb136] /\
[L0x7fffffffb134,L0x7fffffffb136] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb138,L0x7fffffffb13a] /\
[L0x7fffffffb138,L0x7fffffffb13a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb13c,L0x7fffffffb13e] /\
[L0x7fffffffb13c,L0x7fffffffb13e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb140,L0x7fffffffb142] /\
[L0x7fffffffb140,L0x7fffffffb142] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb144,L0x7fffffffb146] /\
[L0x7fffffffb144,L0x7fffffffb146] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb148,L0x7fffffffb14a] /\
[L0x7fffffffb148,L0x7fffffffb14a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb14c,L0x7fffffffb14e] /\
[L0x7fffffffb14c,L0x7fffffffb14e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb150,L0x7fffffffb152] /\
[L0x7fffffffb150,L0x7fffffffb152] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb154,L0x7fffffffb156] /\
[L0x7fffffffb154,L0x7fffffffb156] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb158,L0x7fffffffb15a] /\
[L0x7fffffffb158,L0x7fffffffb15a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb15c,L0x7fffffffb15e] /\
[L0x7fffffffb15c,L0x7fffffffb15e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb160,L0x7fffffffb162] /\
[L0x7fffffffb160,L0x7fffffffb162] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb164,L0x7fffffffb166] /\
[L0x7fffffffb164,L0x7fffffffb166] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb168,L0x7fffffffb16a] /\
[L0x7fffffffb168,L0x7fffffffb16a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb16c,L0x7fffffffb16e] /\
[L0x7fffffffb16c,L0x7fffffffb16e] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb170,L0x7fffffffb172] /\
[L0x7fffffffb170,L0x7fffffffb172] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb174,L0x7fffffffb176] /\
[L0x7fffffffb174,L0x7fffffffb176] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb178,L0x7fffffffb17a] /\
[L0x7fffffffb178,L0x7fffffffb17a] <s [6658@16,6658@16] /\
[(-6658)@16,(-6658)@16] <s [L0x7fffffffb17c,L0x7fffffffb17e] /\
[L0x7fffffffb17c,L0x7fffffffb17e] <s [6658@16,6658@16]
prove with [ cuts [ 0 ] ];

(* vmovdqa 0x320(%rsi),%ymm15                      #! EA = L0x555555639900; Value = 0x0313031303130313; PC = 0x55555556f24e *)
mov %ymm15 [L0x555555639900, L0x555555639902, L0x555555639904, L0x555555639906, L0x555555639908, L0x55555563990a, L0x55555563990c, L0x55555563990e, L0x555555639910, L0x555555639912, L0x555555639914, L0x555555639916, L0x555555639918, L0x55555563991a, L0x55555563991c, L0x55555563991e];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb100; Value = 0xfffe0000f9bff9c0; PC = 0x55555556f256 *)
mov %ymm8 [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb120; Value = 0x063ef9c0f9c1f9c0; PC = 0x55555556f25e *)
mov %ymm9 [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb140; Value = 0x0641063ff9c0ffff; PC = 0x55555556f266 *)
mov %ymm10 [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb160; Value = 0xfffef9bf06400640; PC = 0x55555556f26e *)
mov %ymm11 [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e];
(* vmovdqa 0x340(%rsi),%ymm2                       #! EA = L0x555555639920; Value = 0xfa13fa13fa13fa13; PC = 0x55555556f276 *)
mov %ymm2 [L0x555555639920, L0x555555639922, L0x555555639924, L0x555555639926, L0x555555639928, L0x55555563992a, L0x55555563992c, L0x55555563992e, L0x555555639930, L0x555555639932, L0x555555639934, L0x555555639936, L0x555555639938, L0x55555563993a, L0x55555563993c, L0x55555563993e];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556f27e *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556f283 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556f288 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f28d *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f292 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f296 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f29a *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f29e *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb080; Value = 0xf9c0fffff9c00640; PC = 0x55555556f2a2 *)
mov %ymm4 [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e];
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb0a0; Value = 0x06410641f9bff9bf; PC = 0x55555556f2aa *)
mov %ymm5 [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be];
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb0c0; Value = 0x00010000063f0000; PC = 0x55555556f2b2 *)
mov %ymm6 [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de];
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb0e0; Value = 0x000100820001ffff; PC = 0x55555556f2ba *)
mov %ymm7 [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f2c2 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f2c6 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f2ca *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f2ce *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556f2d2 *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556f2d7 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556f2dc *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f2e1 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556f2e6 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556f2eb *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556f2f0 *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f2f5 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f2fa *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f2ff *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f304 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556f309 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f30e *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f313 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f318 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f31d *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 1 1 ***********)

mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
    (poly x [*%ymm3, *%ymm4, *%ymm5, *%ymm6])
    [3329, x**64 - (3289)] /\
    eqmod (inp_poly**2)
    (poly x [*%ymm8, *%ymm9, *%ymm10, *%ymm11])
    [3329, x**64 - (40)]
&&
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm3 /\ %ymm3 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm4 /\ %ymm4 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm5 /\ %ymm5 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm6 /\ %ymm6 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm8 /\ %ymm8 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm9 /\ %ymm9 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm10 /\ %ymm10 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16] /\
[(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16,
 (-9987)@16,(-9987)@16,(-9987)@16,(-9987)@16] <s %ymm11 /\ %ymm11 <s
[(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,(9987)@16,
 (9987)@16,(9987)@16,(9987)@16,(9987)@16];

(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556f322 *)
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
_, _, _, _] %ymm5;
mov [ymm7_8, ymm7_9, ymm7_a, ymm7_b,
ymm7_c, ymm7_d, ymm7_e, ymm7_f,
_, _, _, _,
_, _, _, _] %ymm10;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556f328 *)
mov [_, _, _, _,
_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
ymm10_4, ymm10_5, ymm10_6, ymm10_7] %ymm5;
mov [_, _, _, _,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556f32e *)
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
_, _, _, _] %ymm6;
mov [ymm5_8, ymm5_9, ymm5_a, ymm5_b,
ymm5_c, ymm5_d, ymm5_e, ymm5_f,
_, _, _, _,
_, _, _, _] %ymm11;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556f334 *)
mov [_, _, _, _,
_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
ymm11_4, ymm11_5, ymm11_6, ymm11_7] %ymm6;
mov [_, _, _, _,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x360(%rsi),%ymm15                      #! EA = L0x555555639940; Value = 0x6e1f6e1f6e1f6e1f; PC = 0x55555556f33a *)
mov %ymm15 [L0x555555639940, L0x555555639942, L0x555555639944, L0x555555639946, L0x555555639948, L0x55555563994a, L0x55555563994c, L0x55555563994e, L0x555555639950, L0x555555639952, L0x555555639954, L0x555555639956, L0x555555639958, L0x55555563995a, L0x55555563995c, L0x55555563995e];
(* vmovdqa 0x380(%rsi),%ymm2                       #! EA = L0x555555639960; Value = 0x011f011f011f011f; PC = 0x55555556f342 *)
mov %ymm2 [L0x555555639960, L0x555555639962, L0x555555639964, L0x555555639966, L0x555555639968, L0x55555563996a, L0x55555563996c, L0x55555563996e, L0x555555639970, L0x555555639972, L0x555555639974, L0x555555639976, L0x555555639978, L0x55555563997a, L0x55555563997c, L0x55555563997e];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556f34a *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556f34f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556f354 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f359 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f35e *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f362 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f366 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f36a *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556f36e *)
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3,
ymm6_4, ymm6_5, ymm6_6, ymm6_7,
_, _, _, _,
_, _, _, _] %ymm3;
mov [ymm6_8, ymm6_9, ymm6_a, ymm6_b,
ymm6_c, ymm6_d, ymm6_e, ymm6_f,
_, _, _, _,
_, _, _, _] %ymm8;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556f374 *)
mov [_, _, _, _,
_, _, _, _,
ymm8_0, ymm8_1, ymm8_2, ymm8_3,
ymm8_4, ymm8_5, ymm8_6, ymm8_7] %ymm3;
mov [_, _, _, _,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556f37a *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
_, _, _, _] %ymm4;
mov [ymm3_8, ymm3_9, ymm3_a, ymm3_b,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _,
_, _, _, _] %ymm9;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556f380 *)
mov [_, _, _, _,
_, _, _, _,
ymm9_0, ymm9_1, ymm9_2, ymm9_3,
ymm9_4, ymm9_5, ymm9_6, ymm9_7] %ymm4;
mov [_, _, _, _,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f386 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm7;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f38a *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f38e *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm5;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f392 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556f396 *)
add %ymm4 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f39a *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556f39e *)
add %ymm6 %ymm10 %ymm8;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556f3a3 *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556f3a8 *)
add %ymm8 %ymm5 %ymm3;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556f3ac *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556f3b0 *)
add %ymm3 %ymm11 %ymm9;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556f3b5 *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f3ba *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556f3bf *)
add %ymm7 %ymm12 %ymm7;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f3c4 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556f3c9 *)
add %ymm10 %ymm13 %ymm10;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f3ce *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f3d3 *)
add %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f3d8 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f3dd *)
add %ymm11 %ymm15 %ymm11;


(*********** SUMMARY OF LEVEL 2 1 ***********)

mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],
                  %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
                  %ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                  %ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                  %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                  %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                  %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                  %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7]])
          [3329, x**32 - (1897)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                  %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                  %ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],
                  %ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
                  %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                  %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                  %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],
                  %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [3329, x**32 - (1432)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],
                  %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
                  %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                  %ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                  %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                  %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                  %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                  %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15]])
          [3329, x**32 - (848)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                  %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                  %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],
                  %ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
                  %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                  %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                  %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],
                  %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [3329, x**32 - (2481)]
prove with [ cuts [ 1 ] ] &&
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm4 /\ %ymm4 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm6 /\ %ymm6 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm8 /\ %ymm8 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm3 /\ %ymm3 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm7 /\ %ymm7 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm10 /\ %ymm10 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16] /\
[(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16,
 (-13316)@16,(-13316)@16,(-13316)@16,(-13316)@16] <s %ymm11 /\ %ymm11 <s
[(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,(13316)@16,
 (13316)@16,(13316)@16,(13316)@16,(13316)@16]
prove with [ cuts [ 1 ] ];

(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556f3e2 *)
mov [ymm9_4, ymm9_5, ymm9_6, ymm9_7,
_, _, _, _,
ymm9_c, ymm9_d, ymm9_e, ymm9_f,
_, _, _, _] %ymm5;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
_, _, _, _] %ymm8;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556f3e6 *)
mov [_, _, _, _,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [_, _, _, _,
ymm5_0, ymm5_1, ymm5_2, ymm5_3,
_, _, _, _,
ymm5_8, ymm5_9, ymm5_a, ymm5_b] %ymm8;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556f3ea *)
mov [ymm8_4, ymm8_5, ymm8_6, ymm8_7,
_, _, _, _,
ymm8_c, ymm8_d, ymm8_e, ymm8_f,
_, _, _, _] %ymm11;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
_, _, _, _] %ymm3;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556f3ef *)
mov [_, _, _, _,
ymm11_4, ymm11_5, ymm11_6, ymm11_7,
_, _, _, _,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov [_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b] %ymm3;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x3a0(%rsi),%ymm15                      #! EA = L0x555555639980; Value = 0x29c229c229c229c2; PC = 0x55555556f3f4 *)
mov %ymm15 [L0x555555639980, L0x555555639982, L0x555555639984, L0x555555639986, L0x555555639988, L0x55555563998a, L0x55555563998c, L0x55555563998e, L0x555555639990, L0x555555639992, L0x555555639994, L0x555555639996, L0x555555639998, L0x55555563999a, L0x55555563999c, L0x55555563999e];
(* vmovdqa 0x3c0(%rsi),%ymm2                       #! EA = L0x5555556399a0; Value = 0x03c203c203c203c2; PC = 0x55555556f3fc *)
mov %ymm2 [L0x5555556399a0, L0x5555556399a2, L0x5555556399a4, L0x5555556399a6, L0x5555556399a8, L0x5555556399aa, L0x5555556399ac, L0x5555556399ae, L0x5555556399b0, L0x5555556399b2, L0x5555556399b4, L0x5555556399b6, L0x5555556399b8, L0x5555556399ba, L0x5555556399bc, L0x5555556399be];
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556f404 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556f409 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556f40e *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f413 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f418 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f41c *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f420 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f424 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556f428 *)
mov [ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _] %ymm7;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
_, _, _, _,
ymm3_8, ymm3_9, ymm3_a, ymm3_b,
_, _, _, _] %ymm4;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556f42c *)
mov [_, _, _, _,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [_, _, _, _,
ymm7_0, ymm7_1, ymm7_2, ymm7_3,
_, _, _, _,
ymm7_8, ymm7_9, ymm7_a, ymm7_b] %ymm4;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556f430 *)
mov [ymm4_4, ymm4_5, ymm4_6, ymm4_7,
_, _, _, _,
ymm4_c, ymm4_d, ymm4_e, ymm4_f,
_, _, _, _] %ymm10;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3,
_, _, _, _,
ymm4_8, ymm4_9, ymm4_a, ymm4_b,
_, _, _, _] %ymm6;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556f435 *)
mov [_, _, _, _,
ymm10_4, ymm10_5, ymm10_6, ymm10_7,
_, _, _, _,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b] %ymm6;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f43a *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f43e *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm5;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f442 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f446 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556f44a *)
add %ymm6 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f44f *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556f454 *)
add %ymm3 %ymm5 %ymm7;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556f458 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556f45c *)
add %ymm7 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556f461 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556f466 *)
add %ymm4 %ymm11 %ymm10;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556f46b *)
sub %ymm11 %ymm10 %ymm11;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556f470 *)
sub %ymm6 %ymm6 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556f475 *)
add %ymm9 %ymm12 %ymm9;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f47a *)
sub %ymm3 %ymm3 %ymm13;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556f47f *)
add %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f484 *)
sub %ymm7 %ymm7 %ymm14;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f489 *)
add %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556f48e *)
sub %ymm4 %ymm4 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f493 *)
add %ymm11 %ymm15 %ymm11;



(*********** SUMMARY OF LEVEL 3 1 ***********)

mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],
                  %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],
                  %ymm7[0],%ymm7[1],%ymm7[2],%ymm7[3],
                  %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3]])
          [3329, x**16 - (2786)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[0],%ymm9[1],%ymm9[2],%ymm9[3],
                  %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],
                  %ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],
                  %ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3]])
          [3329, x**16 - (543)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
                  %ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
                  %ymm7[4],%ymm7[5],%ymm7[6],%ymm7[7],
                  %ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7]])
          [3329, x**16 - (3260)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[4],%ymm9[5],%ymm9[6],%ymm9[7],
                  %ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
                  %ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
                  %ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7]])
          [3329, x**16 - (69)],
    eqmod (inp_poly**2)
          (poly x [%ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],
                  %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],
                  %ymm7[8],%ymm7[9],%ymm7[10],%ymm7[11],
                  %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11]])
          [3329, x**16 - (569)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[8],%ymm9[9],%ymm9[10],%ymm9[11],
                  %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],
                  %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],
                  %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11]])
          [3329, x**16 - (2760)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
                  %ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
                  %ymm7[12],%ymm7[13],%ymm7[14],%ymm7[15],
                  %ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15]])
          [3329, x**16 - (1746)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm9[12],%ymm9[13],%ymm9[14],%ymm9[15],
                  %ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
                  %ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
                  %ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15]])
          [3329, x**16 - (1583)]
prove with [ cuts [ 2 ] ] &&
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm6 /\ %ymm6 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm3 /\ %ymm3 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm7 /\ %ymm7 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm4 /\ %ymm4 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm9 /\ %ymm9 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm5 /\ %ymm5 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm8 /\ %ymm8 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16] /\
[(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16,
 (-16645)@16,(-16645)@16,(-16645)@16,(-16645)@16] <s %ymm11 /\ %ymm11 <s
[(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,(16645)@16,
 (16645)@16,(16645)@16,(16645)@16,(16645)@16]
prove with [ cuts [ 2 ] ];



(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556f498 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm8;
mov %ymm10 [
ymm8_0, ymm8_1, ymm8_0, ymm8_1,
ymm8_4, ymm8_5, ymm8_4, ymm8_5,
ymm8_8, ymm8_9, ymm8_8, ymm8_9,
ymm8_c, ymm8_d, ymm8_c, ymm8_d];
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556f49d *)
mov [ymm10_0, ymm10_1, _, _,
ymm10_4, ymm10_5, _, _,
ymm10_8, ymm10_9, _, _,
ymm10_c, ymm10_d, _, _] %ymm7;
mov [_, _, ymm10_2, ymm10_3,
_, _, ymm10_6, ymm10_7,
_, _, ymm10_a, ymm10_b,
_, _, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556f4a3 *)
mov [_, _, ymm7_0010, ymm7_0011,
_, _, ymm7_0110, ymm7_0111,
_, _, ymm7_1010, ymm7_1011,
_, _, ymm7_1110, ymm7_1111] %ymm7;
mov %ymm7 [ymm7_0010, ymm7_0011, 0@sint16, 0@sint16,
ymm7_0110, ymm7_0111, 0@sint16, 0@sint16,
ymm7_1010, ymm7_1011, 0@sint16, 0@sint16,
ymm7_1110, ymm7_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556f4a8 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm7;
mov [_, _, ymm8_2, ymm8_3,
_, _, ymm8_6, ymm8_7,
_, _, ymm8_a, ymm8_b,
_, _, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556f4ae *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm11;
mov %ymm7 [
ymm11_0, ymm11_1, ymm11_0, ymm11_1,
ymm11_4, ymm11_5, ymm11_4, ymm11_5,
ymm11_8, ymm11_9, ymm11_8, ymm11_9,
ymm11_c, ymm11_d, ymm11_c, ymm11_d];
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556f4b3 *)
mov [ymm7_0, ymm7_1, _, _,
ymm7_4, ymm7_5, _, _,
ymm7_8, ymm7_9, _, _,
ymm7_c, ymm7_d, _, _] %ymm4;
mov [_, _, ymm7_2, ymm7_3,
_, _, ymm7_6, ymm7_7,
_, _, ymm7_a, ymm7_b,
_, _, ymm7_e, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556f4b9 *)
mov [_, _, ymm4_0010, ymm4_0011,
_, _, ymm4_0110, ymm4_0111,
_, _, ymm4_1010, ymm4_1011,
_, _, ymm4_1110, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0010, ymm4_0011, 0@sint16, 0@sint16,
ymm4_0110, ymm4_0111, 0@sint16, 0@sint16,
ymm4_1010, ymm4_1011, 0@sint16, 0@sint16,
ymm4_1110, ymm4_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556f4be *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm4;
mov [_, _, ymm11_2, ymm11_3,
_, _, ymm11_6, ymm11_7,
_, _, ymm11_a, ymm11_b,
_, _, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x3e0(%rsi),%ymm15                      #! EA = L0x5555556399c0; Value = 0x5ef95ef992579257; PC = 0x55555556f4c4 *)
mov %ymm15 [L0x5555556399c0, L0x5555556399c2, L0x5555556399c4, L0x5555556399c6, L0x5555556399c8, L0x5555556399ca, L0x5555556399cc, L0x5555556399ce, L0x5555556399d0, L0x5555556399d2, L0x5555556399d4, L0x5555556399d6, L0x5555556399d8, L0x5555556399da, L0x5555556399dc, L0x5555556399de];
(* vmovdqa 0x400(%rsi),%ymm2                       #! EA = L0x5555556399e0; Value = 0x03f903f9fd57fd57; PC = 0x55555556f4cc *)
mov %ymm2 [L0x5555556399e0, L0x5555556399e2, L0x5555556399e4, L0x5555556399e6, L0x5555556399e8, L0x5555556399ea, L0x5555556399ec, L0x5555556399ee, L0x5555556399f0, L0x5555556399f2, L0x5555556399f4, L0x5555556399f6, L0x5555556399f8, L0x5555556399fa, L0x5555556399fc, L0x5555556399fe];
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556f4d4 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556f4d9 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556f4de *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f4e3 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f4e8 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f4ec *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f4f0 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f4f4 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556f4f8 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm9;
mov %ymm4 [
ymm9_0, ymm9_1, ymm9_0, ymm9_1,
ymm9_4, ymm9_5, ymm9_4, ymm9_5,
ymm9_8, ymm9_9, ymm9_8, ymm9_9,
ymm9_c, ymm9_d, ymm9_c, ymm9_d];
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556f4fd *)
mov [ymm4_0, ymm4_1, _, _,
ymm4_4, ymm4_5, _, _,
ymm4_8, ymm4_9, _, _,
ymm4_c, ymm4_d, _, _] %ymm6;
mov [_, _, ymm4_2, ymm4_3,
_, _, ymm4_6, ymm4_7,
_, _, ymm4_a, ymm4_b,
_, _, ymm4_e, ymm4_f] %ymm4;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556f503 *)
mov [_, _, ymm6_0010, ymm6_0011,
_, _, ymm6_0110, ymm6_0111,
_, _, ymm6_1010, ymm6_1011,
_, _, ymm6_1110, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0010, ymm6_0011, 0@sint16, 0@sint16,
ymm6_0110, ymm6_0111, 0@sint16, 0@sint16,
ymm6_1010, ymm6_1011, 0@sint16, 0@sint16,
ymm6_1110, ymm6_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f508 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm6;
mov [_, _, ymm9_2, ymm9_3,
_, _, ymm9_6, ymm9_7,
_, _, ymm9_a, ymm9_b,
_, _, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556f50e *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm5;
mov %ymm6 [
ymm5_0, ymm5_1, ymm5_0, ymm5_1,
ymm5_4, ymm5_5, ymm5_4, ymm5_5,
ymm5_8, ymm5_9, ymm5_8, ymm5_9,
ymm5_c, ymm5_d, ymm5_c, ymm5_d];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f512 *)
mov [ymm6_0, ymm6_1, _, _,
ymm6_4, ymm6_5, _, _,
ymm6_8, ymm6_9, _, _,
ymm6_c, ymm6_d, _, _] %ymm3;
mov [_, _, ymm6_2, ymm6_3,
_, _, ymm6_6, ymm6_7,
_, _, ymm6_a, ymm6_b,
_, _, ymm6_e, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556f518 *)
mov [_, _, ymm3_0010, ymm3_0011,
_, _, ymm3_0110, ymm3_0111,
_, _, ymm3_1010, ymm3_1011,
_, _, ymm3_1110, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0010, ymm3_0011, 0@sint16, 0@sint16,
ymm3_0110, ymm3_0111, 0@sint16, 0@sint16,
ymm3_1010, ymm3_1011, 0@sint16, 0@sint16,
ymm3_1110, ymm3_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556f51d *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm3;
mov [_, _, ymm5_2, ymm5_3,
_, _, ymm5_6, ymm5_7,
_, _, ymm5_a, ymm5_b,
_, _, ymm5_e, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f523 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f527 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm8;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f52b *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm7;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f52f *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556f533 *)
add %ymm3 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f538 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556f53d *)
add %ymm4 %ymm8 %ymm9;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556f542 *)
sub %ymm8 %ymm9 %ymm8;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556f547 *)
add %ymm9 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f54b *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556f54f *)
add %ymm6 %ymm11 %ymm5;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556f554 *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f559 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f55e *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f563 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556f568 *)
add %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f56d *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f572 *)
add %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f577 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f57c *)
add %ymm11 %ymm15 %ymm11;

(*********** SUMMARY OF LEVEL 4 1 ***********)

mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm3[0],%ymm3[1],%ymm4[0],%ymm4[1],
                  %ymm9[0],%ymm9[1],%ymm6[0],%ymm6[1]])
          [3329, x**8 - (1426)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[0],%ymm10[1],%ymm8[0],%ymm8[1],
                  %ymm7[0],%ymm7[1],%ymm11[0],%ymm11[1]])
          [3329, x**8 - (1903)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[2],%ymm3[3],%ymm4[2],%ymm4[3],
                  %ymm9[2],%ymm9[3],%ymm6[2],%ymm6[3]])
          [3329, x**8 - (2094)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[2],%ymm10[3],%ymm8[2],%ymm8[3],
                  %ymm7[2],%ymm7[3],%ymm11[2],%ymm11[3]])
          [3329, x**8 - (1235)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[4],%ymm3[5],%ymm4[4],%ymm4[5],
                  %ymm9[4],%ymm9[5],%ymm6[4],%ymm6[5]])
          [3329, x**8 - (535)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[4],%ymm10[5],%ymm8[4],%ymm8[5],
                  %ymm7[4],%ymm7[5],%ymm11[4],%ymm11[5]])
          [3329, x**8 - (2794)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[6],%ymm3[7],%ymm4[6],%ymm4[7],
                  %ymm9[6],%ymm9[7],%ymm6[6],%ymm6[7]])
          [3329, x**8 - (2882)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[6],%ymm10[7],%ymm8[6],%ymm8[7],
                  %ymm7[6],%ymm7[7],%ymm11[6],%ymm11[7]])
          [3329, x**8 - (447)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[8],%ymm3[9],%ymm4[8],%ymm4[9],
                  %ymm9[8],%ymm9[9],%ymm6[8],%ymm6[9]])
          [3329, x**8 - (2393)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[8],%ymm10[9],%ymm8[8],%ymm8[9],
                  %ymm7[8],%ymm7[9],%ymm11[8],%ymm11[9]])
          [3329, x**8 - (936)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[10],%ymm3[11],%ymm4[10],%ymm4[11],
                  %ymm9[10],%ymm9[11],%ymm6[10],%ymm6[11]])
          [3329, x**8 - (2879)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[10],%ymm10[11],%ymm8[10],%ymm8[11],
                  %ymm7[10],%ymm7[11],%ymm11[10],%ymm11[11]])
          [3329, x**8 - (450)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[12],%ymm3[13],%ymm4[12],%ymm4[13],
                  %ymm9[12],%ymm9[13],%ymm6[12],%ymm6[13]])
          [3329, x**8 - (1974)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[12],%ymm10[13],%ymm8[12],%ymm8[13],
                  %ymm7[12],%ymm7[13],%ymm11[12],%ymm11[13]])
          [3329, x**8 - (1355)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm3[14],%ymm3[15],%ymm4[14],%ymm4[15],
                  %ymm9[14],%ymm9[15],%ymm6[14],%ymm6[15]])
          [3329, x**8 - (821)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm10[14],%ymm10[15],%ymm8[14],%ymm8[15],
                  %ymm7[14],%ymm7[15],%ymm11[14],%ymm11[15]])
          [3329, x**8 - (2508)]
prove with [ cuts [ 3 ] ] &&
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm3 /\ %ymm3 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm4 /\ %ymm4 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm9 /\ %ymm9 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm6 /\ %ymm6 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm10 /\ %ymm10 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm8 /\ %ymm8 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm7 /\ %ymm7 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16] /\
[(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16,
 (-19974)@16,(-19974)@16,(-19974)@16,(-19974)@16] <s %ymm11 /\ %ymm11 <s
[(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,(19974)@16,
 (19974)@16,(19974)@16,(19974)@16,(19974)@16]
prove with [ cuts [ 3 ] ];

(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556f581 *)
mov [ymm7_0000, _, ymm7_0010, _,
ymm7_0100, _, ymm7_0110, _,
ymm7_1000, _, ymm7_1010, _,
ymm7_1100, _, ymm7_1110, _] %ymm7;
mov %ymm5 [0@sint16, ymm7_0000, 0@sint16, ymm7_0010,
0@sint16, ymm7_0100, 0@sint16, ymm7_0110,
0@sint16, ymm7_1000, 0@sint16, ymm7_1010,
0@sint16, ymm7_1100, 0@sint16, ymm7_1110];
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556f586 *)
mov [ymm5_0, _, ymm5_2, _,
ymm5_4, _, ymm5_6, _,
ymm5_8, _, ymm5_a, _,
ymm5_c, _, ymm5_e, _] %ymm9;
mov [_, ymm5_1, _, ymm5_3,
_, ymm5_5, _, ymm5_7,
_, ymm5_9, _, ymm5_b,
_, ymm5_d, _, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556f58c *)
mov [_, ymm9_0001, _, ymm9_0011,
_, ymm9_0101, _, ymm9_0111,
_, ymm9_1001, _, ymm9_1011,
_, ymm9_1101, _, ymm9_1111] %ymm9;
mov %ymm9 [ymm9_0001, 0@sint16, ymm9_0011, 0@sint16,
ymm9_0101, 0@sint16, ymm9_0111, 0@sint16,
ymm9_1001, 0@sint16, ymm9_1011, 0@sint16,
ymm9_1101, 0@sint16, ymm9_1111, 0@sint16];
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556f592 *)
mov [ymm7_0, _, ymm7_2, _,
ymm7_4, _, ymm7_6, _,
ymm7_8, _, ymm7_a, _,
ymm7_c, _, ymm7_e, _] %ymm9;
mov [_, ymm7_1, _, ymm7_3,
_, ymm7_5, _, ymm7_7,
_, ymm7_9, _, ymm7_b,
_, ymm7_d, _, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556f598 *)
mov [ymm11_0000, _, ymm11_0010, _,
ymm11_0100, _, ymm11_0110, _,
ymm11_1000, _, ymm11_1010, _,
ymm11_1100, _, ymm11_1110, _] %ymm11;
mov %ymm9 [0@sint16, ymm11_0000, 0@sint16, ymm11_0010,
0@sint16, ymm11_0100, 0@sint16, ymm11_0110,
0@sint16, ymm11_1000, 0@sint16, ymm11_1010,
0@sint16, ymm11_1100, 0@sint16, ymm11_1110];
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f59e *)
mov [ymm9_0, _, ymm9_2, _,
ymm9_4, _, ymm9_6, _,
ymm9_8, _, ymm9_a, _,
ymm9_c, _, ymm9_e, _] %ymm6;
mov [_, ymm9_1, _, ymm9_3,
_, ymm9_5, _, ymm9_7,
_, ymm9_9, _, ymm9_b,
_, ymm9_d, _, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556f5a4 *)
mov [_, ymm6_0001, _, ymm6_0011,
_, ymm6_0101, _, ymm6_0111,
_, ymm6_1001, _, ymm6_1011,
_, ymm6_1101, _, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0001, 0@sint16, ymm6_0011, 0@sint16,
ymm6_0101, 0@sint16, ymm6_0111, 0@sint16,
ymm6_1001, 0@sint16, ymm6_1011, 0@sint16,
ymm6_1101, 0@sint16, ymm6_1111, 0@sint16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556f5a9 *)
mov [ymm11_0, _, ymm11_2, _,
ymm11_4, _, ymm11_6, _,
ymm11_8, _, ymm11_a, _,
ymm11_c, _, ymm11_e, _] %ymm6;
mov [_, ymm11_1, _, ymm11_3,
_, ymm11_5, _, ymm11_7,
_, ymm11_9, _, ymm11_b,
_, ymm11_d, _, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x420(%rsi),%ymm15                      #! EA = L0x555555639a00; Value = 0xdd3ec1f191a64dab; PC = 0x55555556f5af *)
mov %ymm15 [L0x555555639a00, L0x555555639a02, L0x555555639a04, L0x555555639a06, L0x555555639a08, L0x555555639a0a, L0x555555639a0c, L0x555555639a0e, L0x555555639a10, L0x555555639a12, L0x555555639a14, L0x555555639a16, L0x555555639a18, L0x555555639a1a, L0x555555639a1c, L0x555555639a1e];
(* vmovdqa 0x440(%rsi),%ymm2                       #! EA = L0x555555639a20; Value = 0x033efef1ffa6fcab; PC = 0x55555556f5b7 *)
mov %ymm2 [L0x555555639a20, L0x555555639a22, L0x555555639a24, L0x555555639a26, L0x555555639a28, L0x555555639a2a, L0x555555639a2c, L0x555555639a2e, L0x555555639a30, L0x555555639a32, L0x555555639a34, L0x555555639a36, L0x555555639a38, L0x555555639a3a, L0x555555639a3c, L0x555555639a3e];
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556f5bf *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556f5c4 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f5c9 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f5ce *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f5d3 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f5d7 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f5db *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f5df *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556f5e3 *)
mov [ymm10_0000, _, ymm10_0010, _,
ymm10_0100, _, ymm10_0110, _,
ymm10_1000, _, ymm10_1010, _,
ymm10_1100, _, ymm10_1110, _] %ymm10;
mov %ymm6 [0@sint16, ymm10_0000, 0@sint16, ymm10_0010,
0@sint16, ymm10_0100, 0@sint16, ymm10_0110,
0@sint16, ymm10_1000, 0@sint16, ymm10_1010,
0@sint16, ymm10_1100, 0@sint16, ymm10_1110];
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f5e9 *)
mov [ymm6_0, _, ymm6_2, _,
ymm6_4, _, ymm6_6, _,
ymm6_8, _, ymm6_a, _,
ymm6_c, _, ymm6_e, _] %ymm3;
mov [_, ymm6_1, _, ymm6_3,
_, ymm6_5, _, ymm6_7,
_, ymm6_9, _, ymm6_b,
_, ymm6_d, _, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556f5ef *)
mov [_, ymm3_0001, _, ymm3_0011,
_, ymm3_0101, _, ymm3_0111,
_, ymm3_1001, _, ymm3_1011,
_, ymm3_1101, _, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0001, 0@sint16, ymm3_0011, 0@sint16,
ymm3_0101, 0@sint16, ymm3_0111, 0@sint16,
ymm3_1001, 0@sint16, ymm3_1011, 0@sint16,
ymm3_1101, 0@sint16, ymm3_1111, 0@sint16];
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556f5f4 *)
mov [ymm10_0, _, ymm10_2, _,
ymm10_4, _, ymm10_6, _,
ymm10_8, _, ymm10_a, _,
ymm10_c, _, ymm10_e, _] %ymm3;
mov [_, ymm10_1, _, ymm10_3,
_, ymm10_5, _, ymm10_7,
_, ymm10_9, _, ymm10_b,
_, ymm10_d, _, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556f5fa *)
mov [ymm8_0000, _, ymm8_0010, _,
ymm8_0100, _, ymm8_0110, _,
ymm8_1000, _, ymm8_1010, _,
ymm8_1100, _, ymm8_1110, _] %ymm8;
mov %ymm3 [0@sint16, ymm8_0000, 0@sint16, ymm8_0010,
0@sint16, ymm8_0100, 0@sint16, ymm8_0110,
0@sint16, ymm8_1000, 0@sint16, ymm8_1010,
0@sint16, ymm8_1100, 0@sint16, ymm8_1110];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556f600 *)
mov [ymm3_0, _, ymm3_2, _,
ymm3_4, _, ymm3_6, _,
ymm3_8, _, ymm3_a, _,
ymm3_c, _, ymm3_e, _] %ymm4;
mov [_, ymm3_1, _, ymm3_3,
_, ymm3_5, _, ymm3_7,
_, ymm3_9, _, ymm3_b,
_, ymm3_d, _, ymm3_f] %ymm3;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556f606 *)
mov [_, ymm4_0001, _, ymm4_0011,
_, ymm4_0101, _, ymm4_0111,
_, ymm4_1001, _, ymm4_1011,
_, ymm4_1101, _, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0001, 0@sint16, ymm4_0011, 0@sint16,
ymm4_0101, 0@sint16, ymm4_0111, 0@sint16,
ymm4_1001, 0@sint16, ymm4_1011, 0@sint16,
ymm4_1101, 0@sint16, ymm4_1111, 0@sint16];
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556f60b *)
mov [ymm8_0, _, ymm8_2, _,
ymm8_4, _, ymm8_6, _,
ymm8_8, _, ymm8_a, _,
ymm8_c, _, ymm8_e, _] %ymm4;
mov [_, ymm8_1, _, ymm8_3,
_, ymm8_5, _, ymm8_7,
_, ymm8_9, _, ymm8_b,
_, ymm8_d, _, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f611 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm5;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f615 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm7;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f619 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f61d *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556f621 *)
add %ymm4 %ymm5 %ymm6;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556f625 *)
sub %ymm5 %ymm6 %ymm5;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556f629 *)
add %ymm6 %ymm7 %ymm10;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556f62d *)
sub %ymm7 %ymm10 %ymm7;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556f631 *)
add %ymm10 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f636 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556f63b *)
add %ymm3 %ymm11 %ymm8;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556f640 *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f645 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556f64a *)
add %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f64f *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556f654 *)
add %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f659 *)
sub %ymm10 %ymm10 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f65e *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f663 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f668 *)
add %ymm11 %ymm15 %ymm11;

(*********** SUMMARY OF LEVEL 5 1 ***********)

mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;

cut eqmod (inp_poly**2)
          (poly x [%ymm4[0], %ymm6[0], %ymm10[0], %ymm3[0]])
          [3329, x**4 - (2319)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[0], %ymm7[0], %ymm9[0], %ymm11[0]])
          [3329, x**4 - (1010)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[1], %ymm6[1], %ymm10[1], %ymm3[1]])
          [3329, x**4 - (1435)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[1], %ymm7[1], %ymm9[1], %ymm11[1]])
          [3329, x**4 - (1894)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[2], %ymm6[2], %ymm10[2], %ymm3[2]])
          [3329, x**4 - (807)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[2], %ymm7[2], %ymm9[2], %ymm11[2]])
          [3329, x**4 - (2522)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[3], %ymm6[3], %ymm10[3], %ymm3[3]])
          [3329, x**4 - (452)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[3], %ymm7[3], %ymm9[3], %ymm11[3]])
          [3329, x**4 - (2877)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[4], %ymm6[4], %ymm10[4], %ymm3[4]])
          [3329, x**4 - (1438)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[4], %ymm7[4], %ymm9[4], %ymm11[4]])
          [3329, x**4 - (1891)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[5], %ymm6[5], %ymm10[5], %ymm3[5]])
          [3329, x**4 - (2868)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[5], %ymm7[5], %ymm9[5], %ymm11[5]])
          [3329, x**4 - (461)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[6], %ymm6[6], %ymm10[6], %ymm3[6]])
          [3329, x**4 - (1534)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[6], %ymm7[6], %ymm9[6], %ymm11[6]])
          [3329, x**4 - (1795)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[7], %ymm6[7], %ymm10[7], %ymm3[7]])
          [3329, x**4 - (2402)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[7], %ymm7[7], %ymm9[7], %ymm11[7]])
          [3329, x**4 - (927)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[8], %ymm6[8], %ymm10[8], %ymm3[8]])
          [3329, x**4 - (2647)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[8], %ymm7[8], %ymm9[8], %ymm11[8]])
          [3329, x**4 - (682)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[9], %ymm6[9], %ymm10[9], %ymm3[9]])
          [3329, x**4 - (2617)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[9], %ymm7[9], %ymm9[9], %ymm11[9]])
          [3329, x**4 - (712)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[10], %ymm6[10], %ymm10[10], %ymm3[10]])
          [3329, x**4 - (1481)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[10], %ymm7[10], %ymm9[10], %ymm11[10]])
          [3329, x**4 - (1848)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[11], %ymm6[11], %ymm10[11], %ymm3[11]])
          [3329, x**4 - (648)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[11], %ymm7[11], %ymm9[11], %ymm11[11]])
          [3329, x**4 - (2681)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[12], %ymm6[12], %ymm10[12], %ymm3[12]])
          [3329, x**4 - (2474)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[12], %ymm7[12], %ymm9[12], %ymm11[12]])
          [3329, x**4 - (855)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[13], %ymm6[13], %ymm10[13], %ymm3[13]])
          [3329, x**4 - (3110)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[13], %ymm7[13], %ymm9[13], %ymm11[13]])
          [3329, x**4 - (219)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[14], %ymm6[14], %ymm10[14], %ymm3[14]])
          [3329, x**4 - (1227)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[14], %ymm7[14], %ymm9[14], %ymm11[14]])
          [3329, x**4 - (2102)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm4[15], %ymm6[15], %ymm10[15], %ymm3[15]])
          [3329, x**4 - (910)] /\
    eqmod (inp_poly**2)
          (poly x [%ymm5[15], %ymm7[15], %ymm9[15], %ymm11[15]])
          [3329, x**4 - (2419)]
prove with [ cuts [ 4 ] ] &&
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm4 /\ %ymm4 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm6 /\ %ymm6 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm10 /\ %ymm10 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm3 /\ %ymm3 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm5 /\ %ymm5 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm7 /\ %ymm7 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm9 /\ %ymm9 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16] /\
[(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16,
 (-23303)@16,(-23303)@16,(-23303)@16,(-23303)@16] <s %ymm11 /\ %ymm11 <s
[(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,(23303)@16,
 (23303)@16,(23303)@16,(23303)@16,(23303)@16]
prove with [ cuts [ 4 ] ] ;

(* vmovdqa 0x460(%rsi),%ymm14                      #! EA = L0x555555639a40; Value = 0x5f47e32a635b8631; PC = 0x55555556f66d *)
mov %ymm14 [L0x555555639a40, L0x555555639a42, L0x555555639a44, L0x555555639a46, L0x555555639a48, L0x555555639a4a, L0x555555639a4c, L0x555555639a4e, L0x555555639a50, L0x555555639a52, L0x555555639a54, L0x555555639a56, L0x555555639a58, L0x555555639a5a, L0x555555639a5c, L0x555555639a5e];
(* vmovdqa 0x4a0(%rsi),%ymm15                      #! EA = L0x555555639a80; Value = 0x81803bfb08624f49; PC = 0x55555556f675 *)
mov %ymm15 [L0x555555639a80, L0x555555639a82, L0x555555639a84, L0x555555639a86, L0x555555639a88, L0x555555639a8a, L0x555555639a8c, L0x555555639a8e, L0x555555639a90, L0x555555639a92, L0x555555639a94, L0x555555639a96, L0x555555639a98, L0x555555639a9a, L0x555555639a9c, L0x555555639a9e];
(* vmovdqa 0x480(%rsi),%ymm8                       #! EA = L0x555555639a60; Value = 0xfa47052a025b0331; PC = 0x55555556f67d *)
mov %ymm8 [L0x555555639a60, L0x555555639a62, L0x555555639a64, L0x555555639a66, L0x555555639a68, L0x555555639a6a, L0x555555639a6c, L0x555555639a6e, L0x555555639a70, L0x555555639a72, L0x555555639a74, L0x555555639a76, L0x555555639a78, L0x555555639a7a, L0x555555639a7c, L0x555555639a7e];
(* vmovdqa 0x4c0(%rsi),%ymm2                       #! EA = L0x555555639aa0; Value = 0x0180fafb02620449; PC = 0x55555556f685 *)
mov %ymm2 [L0x555555639aa0, L0x555555639aa2, L0x555555639aa4, L0x555555639aa6, L0x555555639aa8, L0x555555639aaa, L0x555555639aac, L0x555555639aae, L0x555555639ab0, L0x555555639ab2, L0x555555639ab4, L0x555555639ab6, L0x555555639ab8, L0x555555639aba, L0x555555639abc, L0x555555639abe];
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556f68d *)
smull %mulHymm10 %mulL %ymm14 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556f692 *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f697 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f69c *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f6a1 *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f6a6 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f6ab *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f6af *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f6b3 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm10;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f6b7 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm3;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f6bb *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm9;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f6bf *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm11;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f6c3 *)
add %ymm8 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f6c8 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f6cd *)
add %ymm4 %ymm3 %ymm6;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f6d1 *)
sub %ymm3 %ymm6 %ymm3;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f6d5 *)
add %ymm6 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f6da *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f6df *)
add %ymm5 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f6e4 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f6e9 *)
sub %ymm8 %ymm8 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f6ee *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f6f3 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f6f8 *)
add %ymm3 %ymm13 %ymm3;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f6fd *)
sub %ymm6 %ymm6 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f702 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f707 *)
sub %ymm5 %ymm5 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f70c *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb080; PC = 0x55555556f711 *)
mov [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e] %ymm8;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffffb0a0; PC = 0x55555556f719 *)
mov [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be] %ymm4;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb0c0; PC = 0x55555556f721 *)
mov [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de] %ymm10;
(* vmovdqa %ymm3,0x160(%rdi)                       #! EA = L0x7fffffffb0e0; PC = 0x55555556f729 *)
mov [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe] %ymm3;
(* vmovdqa %ymm6,0x180(%rdi)                       #! EA = L0x7fffffffb100; PC = 0x55555556f731 *)
mov [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e] %ymm6;
(* vmovdqa %ymm5,0x1a0(%rdi)                       #! EA = L0x7fffffffb120; PC = 0x55555556f739 *)
mov [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e] %ymm5;
(* vmovdqa %ymm9,0x1c0(%rdi)                       #! EA = L0x7fffffffb140; PC = 0x55555556f741 *)
mov [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e] %ymm9;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb160; PC = 0x55555556f749 *)
mov [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e] %ymm11;



(*********** SUMMARY OF LEVEL 6 1 ***********)

cut
and [
eqmod (inp_poly**2)
(L0x7fffffffb080 + L0x7fffffffb0a0*x) [3329, x**2 - (1584)],
eqmod (inp_poly**2)
(L0x7fffffffb0c0 + L0x7fffffffb0e0*x) [3329, x**2 - (1745)],
eqmod (inp_poly**2)
(L0x7fffffffb100 + L0x7fffffffb120*x) [3329, x**2 - (2298)],
eqmod (inp_poly**2)
(L0x7fffffffb140 + L0x7fffffffb160*x) [3329, x**2 - (1031)],
eqmod (inp_poly**2)
(L0x7fffffffb082 + L0x7fffffffb0a2*x) [3329, x**2 - (2037)],
eqmod (inp_poly**2)
(L0x7fffffffb0c2 + L0x7fffffffb0e2*x) [3329, x**2 - (1292)],
eqmod (inp_poly**2)
(L0x7fffffffb102 + L0x7fffffffb122*x) [3329, x**2 - (3220)],
eqmod (inp_poly**2)
(L0x7fffffffb142 + L0x7fffffffb162*x) [3329, x**2 - (109)],
eqmod (inp_poly**2)
(L0x7fffffffb084 + L0x7fffffffb0a4*x) [3329, x**2 - (375)],
eqmod (inp_poly**2)
(L0x7fffffffb0c4 + L0x7fffffffb0e4*x) [3329, x**2 - (2954)],
eqmod (inp_poly**2)
(L0x7fffffffb104 + L0x7fffffffb124*x) [3329, x**2 - (2549)],
eqmod (inp_poly**2)
(L0x7fffffffb144 + L0x7fffffffb164*x) [3329, x**2 - (780)],
eqmod (inp_poly**2)
(L0x7fffffffb086 + L0x7fffffffb0a6*x) [3329, x**2 - (2090)],
eqmod (inp_poly**2)
(L0x7fffffffb0c6 + L0x7fffffffb0e6*x) [3329, x**2 - (1239)],
eqmod (inp_poly**2)
(L0x7fffffffb106 + L0x7fffffffb126*x) [3329, x**2 - (1645)],
eqmod (inp_poly**2)
(L0x7fffffffb146 + L0x7fffffffb166*x) [3329, x**2 - (1684)],
eqmod (inp_poly**2)
(L0x7fffffffb088 + L0x7fffffffb0a8*x) [3329, x**2 - (1063)],
eqmod (inp_poly**2)
(L0x7fffffffb0c8 + L0x7fffffffb0e8*x) [3329, x**2 - (2266)],
eqmod (inp_poly**2)
(L0x7fffffffb108 + L0x7fffffffb128*x) [3329, x**2 - (319)],
eqmod (inp_poly**2)
(L0x7fffffffb148 + L0x7fffffffb168*x) [3329, x**2 - (3010)],
eqmod (inp_poly**2)
(L0x7fffffffb08a + L0x7fffffffb0aa*x) [3329, x**2 - (2773)],
eqmod (inp_poly**2)
(L0x7fffffffb0ca + L0x7fffffffb0ea*x) [3329, x**2 - (556)],
eqmod (inp_poly**2)
(L0x7fffffffb10a + L0x7fffffffb12a*x) [3329, x**2 - (757)],
eqmod (inp_poly**2)
(L0x7fffffffb14a + L0x7fffffffb16a*x) [3329, x**2 - (2572)],
eqmod (inp_poly**2)
(L0x7fffffffb08c + L0x7fffffffb0ac*x) [3329, x**2 - (2099)],
eqmod (inp_poly**2)
(L0x7fffffffb0cc + L0x7fffffffb0ec*x) [3329, x**2 - (1230)],
eqmod (inp_poly**2)
(L0x7fffffffb10c + L0x7fffffffb12c*x) [3329, x**2 - (561)],
eqmod (inp_poly**2)
(L0x7fffffffb14c + L0x7fffffffb16c*x) [3329, x**2 - (2768)],
eqmod (inp_poly**2)
(L0x7fffffffb08e + L0x7fffffffb0ae*x) [3329, x**2 - (2466)],
eqmod (inp_poly**2)
(L0x7fffffffb0ce + L0x7fffffffb0ee*x) [3329, x**2 - (863)],
eqmod (inp_poly**2)
(L0x7fffffffb10e + L0x7fffffffb12e*x) [3329, x**2 - (2594)],
eqmod (inp_poly**2)
(L0x7fffffffb14e + L0x7fffffffb16e*x) [3329, x**2 - (735)],
eqmod (inp_poly**2)
(L0x7fffffffb090 + L0x7fffffffb0b0*x) [3329, x**2 - (2804)],
eqmod (inp_poly**2)
(L0x7fffffffb0d0 + L0x7fffffffb0f0*x) [3329, x**2 - (525)],
eqmod (inp_poly**2)
(L0x7fffffffb110 + L0x7fffffffb130*x) [3329, x**2 - (1092)],
eqmod (inp_poly**2)
(L0x7fffffffb150 + L0x7fffffffb170*x) [3329, x**2 - (2237)],
eqmod (inp_poly**2)
(L0x7fffffffb092 + L0x7fffffffb0b2*x) [3329, x**2 - (403)],
eqmod (inp_poly**2)
(L0x7fffffffb0d2 + L0x7fffffffb0f2*x) [3329, x**2 - (2926)],
eqmod (inp_poly**2)
(L0x7fffffffb112 + L0x7fffffffb132*x) [3329, x**2 - (1026)],
eqmod (inp_poly**2)
(L0x7fffffffb152 + L0x7fffffffb172*x) [3329, x**2 - (2303)],
eqmod (inp_poly**2)
(L0x7fffffffb094 + L0x7fffffffb0b4*x) [3329, x**2 - (1143)],
eqmod (inp_poly**2)
(L0x7fffffffb0d4 + L0x7fffffffb0f4*x) [3329, x**2 - (2186)],
eqmod (inp_poly**2)
(L0x7fffffffb114 + L0x7fffffffb134*x) [3329, x**2 - (2150)],
eqmod (inp_poly**2)
(L0x7fffffffb154 + L0x7fffffffb174*x) [3329, x**2 - (1179)],
eqmod (inp_poly**2)
(L0x7fffffffb096 + L0x7fffffffb0b6*x) [3329, x**2 - (2775)],
eqmod (inp_poly**2)
(L0x7fffffffb0d6 + L0x7fffffffb0f6*x) [3329, x**2 - (554)],
eqmod (inp_poly**2)
(L0x7fffffffb116 + L0x7fffffffb136*x) [3329, x**2 - (886)],
eqmod (inp_poly**2)
(L0x7fffffffb156 + L0x7fffffffb176*x) [3329, x**2 - (2443)],
eqmod (inp_poly**2)
(L0x7fffffffb098 + L0x7fffffffb0b8*x) [3329, x**2 - (1722)],
eqmod (inp_poly**2)
(L0x7fffffffb0d8 + L0x7fffffffb0f8*x) [3329, x**2 - (1607)],
eqmod (inp_poly**2)
(L0x7fffffffb118 + L0x7fffffffb138*x) [3329, x**2 - (1212)],
eqmod (inp_poly**2)
(L0x7fffffffb158 + L0x7fffffffb178*x) [3329, x**2 - (2117)],
eqmod (inp_poly**2)
(L0x7fffffffb09a + L0x7fffffffb0ba*x) [3329, x**2 - (1874)],
eqmod (inp_poly**2)
(L0x7fffffffb0da + L0x7fffffffb0fa*x) [3329, x**2 - (1455)],
eqmod (inp_poly**2)
(L0x7fffffffb11a + L0x7fffffffb13a*x) [3329, x**2 - (1029)],
eqmod (inp_poly**2)
(L0x7fffffffb15a + L0x7fffffffb17a*x) [3329, x**2 - (2300)],
eqmod (inp_poly**2)
(L0x7fffffffb09c + L0x7fffffffb0bc*x) [3329, x**2 - (2110)],
eqmod (inp_poly**2)
(L0x7fffffffb0dc + L0x7fffffffb0fc*x) [3329, x**2 - (1219)],
eqmod (inp_poly**2)
(L0x7fffffffb11c + L0x7fffffffb13c*x) [3329, x**2 - (2935)],
eqmod (inp_poly**2)
(L0x7fffffffb15c + L0x7fffffffb17c*x) [3329, x**2 - (394)],
eqmod (inp_poly**2)
(L0x7fffffffb09e + L0x7fffffffb0be*x) [3329, x**2 - (885)],
eqmod (inp_poly**2)
(L0x7fffffffb0de + L0x7fffffffb0fe*x) [3329, x**2 - (2444)],
eqmod (inp_poly**2)
(L0x7fffffffb11e + L0x7fffffffb13e*x) [3329, x**2 - (2154)],
eqmod (inp_poly**2)
(L0x7fffffffb15e + L0x7fffffffb17e*x) [3329, x**2 - (1175)]]
prove with [ cuts [ 5 ] ] &&
and [
(-26632)@16 <s L0x7fffffffb080, L0x7fffffffb080 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb082, L0x7fffffffb082 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb084, L0x7fffffffb084 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb086, L0x7fffffffb086 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb088, L0x7fffffffb088 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb08a, L0x7fffffffb08a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb08c, L0x7fffffffb08c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb08e, L0x7fffffffb08e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb090, L0x7fffffffb090 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb092, L0x7fffffffb092 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb094, L0x7fffffffb094 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb096, L0x7fffffffb096 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb098, L0x7fffffffb098 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb09a, L0x7fffffffb09a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb09c, L0x7fffffffb09c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb09e, L0x7fffffffb09e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a0, L0x7fffffffb0a0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a2, L0x7fffffffb0a2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a4, L0x7fffffffb0a4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a6, L0x7fffffffb0a6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a8, L0x7fffffffb0a8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0aa, L0x7fffffffb0aa <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ac, L0x7fffffffb0ac <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ae, L0x7fffffffb0ae <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b0, L0x7fffffffb0b0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b2, L0x7fffffffb0b2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b4, L0x7fffffffb0b4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b6, L0x7fffffffb0b6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b8, L0x7fffffffb0b8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ba, L0x7fffffffb0ba <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0bc, L0x7fffffffb0bc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0be, L0x7fffffffb0be <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c0, L0x7fffffffb0c0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c2, L0x7fffffffb0c2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c4, L0x7fffffffb0c4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c6, L0x7fffffffb0c6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c8, L0x7fffffffb0c8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ca, L0x7fffffffb0ca <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0cc, L0x7fffffffb0cc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ce, L0x7fffffffb0ce <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d0, L0x7fffffffb0d0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d2, L0x7fffffffb0d2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d4, L0x7fffffffb0d4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d6, L0x7fffffffb0d6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d8, L0x7fffffffb0d8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0da, L0x7fffffffb0da <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0dc, L0x7fffffffb0dc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0de, L0x7fffffffb0de <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e0, L0x7fffffffb0e0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e2, L0x7fffffffb0e2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e4, L0x7fffffffb0e4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e6, L0x7fffffffb0e6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e8, L0x7fffffffb0e8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ea, L0x7fffffffb0ea <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ec, L0x7fffffffb0ec <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ee, L0x7fffffffb0ee <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f0, L0x7fffffffb0f0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f2, L0x7fffffffb0f2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f4, L0x7fffffffb0f4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f6, L0x7fffffffb0f6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f8, L0x7fffffffb0f8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0fa, L0x7fffffffb0fa <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0fc, L0x7fffffffb0fc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0fe, L0x7fffffffb0fe <s (26632)@16,
(-26632)@16 <s L0x7fffffffb100, L0x7fffffffb100 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb102, L0x7fffffffb102 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb104, L0x7fffffffb104 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb106, L0x7fffffffb106 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb108, L0x7fffffffb108 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb10a, L0x7fffffffb10a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb10c, L0x7fffffffb10c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb10e, L0x7fffffffb10e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb110, L0x7fffffffb110 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb112, L0x7fffffffb112 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb114, L0x7fffffffb114 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb116, L0x7fffffffb116 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb118, L0x7fffffffb118 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb11a, L0x7fffffffb11a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb11c, L0x7fffffffb11c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb11e, L0x7fffffffb11e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb120, L0x7fffffffb120 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb122, L0x7fffffffb122 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb124, L0x7fffffffb124 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb126, L0x7fffffffb126 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb128, L0x7fffffffb128 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb12a, L0x7fffffffb12a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb12c, L0x7fffffffb12c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb12e, L0x7fffffffb12e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb130, L0x7fffffffb130 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb132, L0x7fffffffb132 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb134, L0x7fffffffb134 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb136, L0x7fffffffb136 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb138, L0x7fffffffb138 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb13a, L0x7fffffffb13a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb13c, L0x7fffffffb13c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb13e, L0x7fffffffb13e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb140, L0x7fffffffb140 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb142, L0x7fffffffb142 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb144, L0x7fffffffb144 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb146, L0x7fffffffb146 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb148, L0x7fffffffb148 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb14a, L0x7fffffffb14a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb14c, L0x7fffffffb14c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb14e, L0x7fffffffb14e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb150, L0x7fffffffb150 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb152, L0x7fffffffb152 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb154, L0x7fffffffb154 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb156, L0x7fffffffb156 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb158, L0x7fffffffb158 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb15a, L0x7fffffffb15a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb15c, L0x7fffffffb15c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb15e, L0x7fffffffb15e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb160, L0x7fffffffb160 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb162, L0x7fffffffb162 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb164, L0x7fffffffb164 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb166, L0x7fffffffb166 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb168, L0x7fffffffb168 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb16a, L0x7fffffffb16a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb16c, L0x7fffffffb16c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb16e, L0x7fffffffb16e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb170, L0x7fffffffb170 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb172, L0x7fffffffb172 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb174, L0x7fffffffb174 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb176, L0x7fffffffb176 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb178, L0x7fffffffb178 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb17a, L0x7fffffffb17a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb17c, L0x7fffffffb17c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb17e, L0x7fffffffb17e <s (26632)@16]
prove with [ cuts [ 5 ] ];

(* #! <- SP = 0x7fffffffa348 *)
#! 0x7fffffffa348 = 0x7fffffffa348;
(* #retq                                           #! PC = 0x55555556f751 *)
#retq                                           #! 0x55555556f751 = 0x55555556f751;

{
and [
eqmod (inp_poly**2)
(L0x7fffffffaf80 + L0x7fffffffafa0*x) [3329, x**2 - (17)],
eqmod (inp_poly**2)
(L0x7fffffffafc0 + L0x7fffffffafe0*x) [3329, x**2 - (3312)],
eqmod (inp_poly**2)
(L0x7fffffffb000 + L0x7fffffffb020*x) [3329, x**2 - (2761)],
eqmod (inp_poly**2)
(L0x7fffffffb040 + L0x7fffffffb060*x) [3329, x**2 - (568)],
eqmod (inp_poly**2)
(L0x7fffffffaf82 + L0x7fffffffafa2*x) [3329, x**2 - (583)],
eqmod (inp_poly**2)
(L0x7fffffffafc2 + L0x7fffffffafe2*x) [3329, x**2 - (2746)],
eqmod (inp_poly**2)
(L0x7fffffffb002 + L0x7fffffffb022*x) [3329, x**2 - (2649)],
eqmod (inp_poly**2)
(L0x7fffffffb042 + L0x7fffffffb062*x) [3329, x**2 - (680)],
eqmod (inp_poly**2)
(L0x7fffffffaf84 + L0x7fffffffafa4*x) [3329, x**2 - (1637)],
eqmod (inp_poly**2)
(L0x7fffffffafc4 + L0x7fffffffafe4*x) [3329, x**2 - (1692)],
eqmod (inp_poly**2)
(L0x7fffffffb004 + L0x7fffffffb024*x) [3329, x**2 - (723)],
eqmod (inp_poly**2)
(L0x7fffffffb044 + L0x7fffffffb064*x) [3329, x**2 - (2606)],
eqmod (inp_poly**2)
(L0x7fffffffaf86 + L0x7fffffffafa6*x) [3329, x**2 - (2288)],
eqmod (inp_poly**2)
(L0x7fffffffafc6 + L0x7fffffffafe6*x) [3329, x**2 - (1041)],
eqmod (inp_poly**2)
(L0x7fffffffb006 + L0x7fffffffb026*x) [3329, x**2 - (1100)],
eqmod (inp_poly**2)
(L0x7fffffffb046 + L0x7fffffffb066*x) [3329, x**2 - (2229)],
eqmod (inp_poly**2)
(L0x7fffffffaf88 + L0x7fffffffafa8*x) [3329, x**2 - (1409)],
eqmod (inp_poly**2)
(L0x7fffffffafc8 + L0x7fffffffafe8*x) [3329, x**2 - (1920)],
eqmod (inp_poly**2)
(L0x7fffffffb008 + L0x7fffffffb028*x) [3329, x**2 - (2662)],
eqmod (inp_poly**2)
(L0x7fffffffb048 + L0x7fffffffb068*x) [3329, x**2 - (667)],
eqmod (inp_poly**2)
(L0x7fffffffaf8a + L0x7fffffffafaa*x) [3329, x**2 - (3281)],
eqmod (inp_poly**2)
(L0x7fffffffafca + L0x7fffffffafea*x) [3329, x**2 - (48)],
eqmod (inp_poly**2)
(L0x7fffffffb00a + L0x7fffffffb02a*x) [3329, x**2 - (233)],
eqmod (inp_poly**2)
(L0x7fffffffb04a + L0x7fffffffb06a*x) [3329, x**2 - (3096)],
eqmod (inp_poly**2)
(L0x7fffffffaf8c + L0x7fffffffafac*x) [3329, x**2 - (756)],
eqmod (inp_poly**2)
(L0x7fffffffafcc + L0x7fffffffafec*x) [3329, x**2 - (2573)],
eqmod (inp_poly**2)
(L0x7fffffffb00c + L0x7fffffffb02c*x) [3329, x**2 - (2156)],
eqmod (inp_poly**2)
(L0x7fffffffb04c + L0x7fffffffb06c*x) [3329, x**2 - (1173)],
eqmod (inp_poly**2)
(L0x7fffffffaf8e + L0x7fffffffafae*x) [3329, x**2 - (3015)],
eqmod (inp_poly**2)
(L0x7fffffffafce + L0x7fffffffafee*x) [3329, x**2 - (314)],
eqmod (inp_poly**2)
(L0x7fffffffb00e + L0x7fffffffb02e*x) [3329, x**2 - (3050)],
eqmod (inp_poly**2)
(L0x7fffffffb04e + L0x7fffffffb06e*x) [3329, x**2 - (279)],
eqmod (inp_poly**2)
(L0x7fffffffaf90 + L0x7fffffffafb0*x) [3329, x**2 - (1703)],
eqmod (inp_poly**2)
(L0x7fffffffafd0 + L0x7fffffffaff0*x) [3329, x**2 - (1626)],
eqmod (inp_poly**2)
(L0x7fffffffb010 + L0x7fffffffb030*x) [3329, x**2 - (1651)],
eqmod (inp_poly**2)
(L0x7fffffffb050 + L0x7fffffffb070*x) [3329, x**2 - (1678)],
eqmod (inp_poly**2)
(L0x7fffffffaf92 + L0x7fffffffafb2*x) [3329, x**2 - (2789)],
eqmod (inp_poly**2)
(L0x7fffffffafd2 + L0x7fffffffaff2*x) [3329, x**2 - (540)],
eqmod (inp_poly**2)
(L0x7fffffffb012 + L0x7fffffffb032*x) [3329, x**2 - (1789)],
eqmod (inp_poly**2)
(L0x7fffffffb052 + L0x7fffffffb072*x) [3329, x**2 - (1540)],
eqmod (inp_poly**2)
(L0x7fffffffaf94 + L0x7fffffffafb4*x) [3329, x**2 - (1847)],
eqmod (inp_poly**2)
(L0x7fffffffafd4 + L0x7fffffffaff4*x) [3329, x**2 - (1482)],
eqmod (inp_poly**2)
(L0x7fffffffb014 + L0x7fffffffb034*x) [3329, x**2 - (952)],
eqmod (inp_poly**2)
(L0x7fffffffb054 + L0x7fffffffb074*x) [3329, x**2 - (2377)],
eqmod (inp_poly**2)
(L0x7fffffffaf96 + L0x7fffffffafb6*x) [3329, x**2 - (1461)],
eqmod (inp_poly**2)
(L0x7fffffffafd6 + L0x7fffffffaff6*x) [3329, x**2 - (1868)],
eqmod (inp_poly**2)
(L0x7fffffffb016 + L0x7fffffffb036*x) [3329, x**2 - (2687)],
eqmod (inp_poly**2)
(L0x7fffffffb056 + L0x7fffffffb076*x) [3329, x**2 - (642)],
eqmod (inp_poly**2)
(L0x7fffffffaf98 + L0x7fffffffafb8*x) [3329, x**2 - (939)],
eqmod (inp_poly**2)
(L0x7fffffffafd8 + L0x7fffffffaff8*x) [3329, x**2 - (2390)],
eqmod (inp_poly**2)
(L0x7fffffffb018 + L0x7fffffffb038*x) [3329, x**2 - (2308)],
eqmod (inp_poly**2)
(L0x7fffffffb058 + L0x7fffffffb078*x) [3329, x**2 - (1021)],
eqmod (inp_poly**2)
(L0x7fffffffaf9a + L0x7fffffffafba*x) [3329, x**2 - (2437)],
eqmod (inp_poly**2)
(L0x7fffffffafda + L0x7fffffffaffa*x) [3329, x**2 - (892)],
eqmod (inp_poly**2)
(L0x7fffffffb01a + L0x7fffffffb03a*x) [3329, x**2 - (2388)],
eqmod (inp_poly**2)
(L0x7fffffffb05a + L0x7fffffffb07a*x) [3329, x**2 - (941)],
eqmod (inp_poly**2)
(L0x7fffffffaf9c + L0x7fffffffafbc*x) [3329, x**2 - (733)],
eqmod (inp_poly**2)
(L0x7fffffffafdc + L0x7fffffffaffc*x) [3329, x**2 - (2596)],
eqmod (inp_poly**2)
(L0x7fffffffb01c + L0x7fffffffb03c*x) [3329, x**2 - (2337)],
eqmod (inp_poly**2)
(L0x7fffffffb05c + L0x7fffffffb07c*x) [3329, x**2 - (992)],
eqmod (inp_poly**2)
(L0x7fffffffaf9e + L0x7fffffffafbe*x) [3329, x**2 - (268)],
eqmod (inp_poly**2)
(L0x7fffffffafde + L0x7fffffffaffe*x) [3329, x**2 - (3061)],
eqmod (inp_poly**2)
(L0x7fffffffb01e + L0x7fffffffb03e*x) [3329, x**2 - (641)],
eqmod (inp_poly**2)
(L0x7fffffffb05e + L0x7fffffffb07e*x) [3329, x**2 - (2688)],
eqmod (inp_poly**2)
(L0x7fffffffb080 + L0x7fffffffb0a0*x) [3329, x**2 - (1584)],
eqmod (inp_poly**2)
(L0x7fffffffb0c0 + L0x7fffffffb0e0*x) [3329, x**2 - (1745)],
eqmod (inp_poly**2)
(L0x7fffffffb100 + L0x7fffffffb120*x) [3329, x**2 - (2298)],
eqmod (inp_poly**2)
(L0x7fffffffb140 + L0x7fffffffb160*x) [3329, x**2 - (1031)],
eqmod (inp_poly**2)
(L0x7fffffffb082 + L0x7fffffffb0a2*x) [3329, x**2 - (2037)],
eqmod (inp_poly**2)
(L0x7fffffffb0c2 + L0x7fffffffb0e2*x) [3329, x**2 - (1292)],
eqmod (inp_poly**2)
(L0x7fffffffb102 + L0x7fffffffb122*x) [3329, x**2 - (3220)],
eqmod (inp_poly**2)
(L0x7fffffffb142 + L0x7fffffffb162*x) [3329, x**2 - (109)],
eqmod (inp_poly**2)
(L0x7fffffffb084 + L0x7fffffffb0a4*x) [3329, x**2 - (375)],
eqmod (inp_poly**2)
(L0x7fffffffb0c4 + L0x7fffffffb0e4*x) [3329, x**2 - (2954)],
eqmod (inp_poly**2)
(L0x7fffffffb104 + L0x7fffffffb124*x) [3329, x**2 - (2549)],
eqmod (inp_poly**2)
(L0x7fffffffb144 + L0x7fffffffb164*x) [3329, x**2 - (780)],
eqmod (inp_poly**2)
(L0x7fffffffb086 + L0x7fffffffb0a6*x) [3329, x**2 - (2090)],
eqmod (inp_poly**2)
(L0x7fffffffb0c6 + L0x7fffffffb0e6*x) [3329, x**2 - (1239)],
eqmod (inp_poly**2)
(L0x7fffffffb106 + L0x7fffffffb126*x) [3329, x**2 - (1645)],
eqmod (inp_poly**2)
(L0x7fffffffb146 + L0x7fffffffb166*x) [3329, x**2 - (1684)],
eqmod (inp_poly**2)
(L0x7fffffffb088 + L0x7fffffffb0a8*x) [3329, x**2 - (1063)],
eqmod (inp_poly**2)
(L0x7fffffffb0c8 + L0x7fffffffb0e8*x) [3329, x**2 - (2266)],
eqmod (inp_poly**2)
(L0x7fffffffb108 + L0x7fffffffb128*x) [3329, x**2 - (319)],
eqmod (inp_poly**2)
(L0x7fffffffb148 + L0x7fffffffb168*x) [3329, x**2 - (3010)],
eqmod (inp_poly**2)
(L0x7fffffffb08a + L0x7fffffffb0aa*x) [3329, x**2 - (2773)],
eqmod (inp_poly**2)
(L0x7fffffffb0ca + L0x7fffffffb0ea*x) [3329, x**2 - (556)],
eqmod (inp_poly**2)
(L0x7fffffffb10a + L0x7fffffffb12a*x) [3329, x**2 - (757)],
eqmod (inp_poly**2)
(L0x7fffffffb14a + L0x7fffffffb16a*x) [3329, x**2 - (2572)],
eqmod (inp_poly**2)
(L0x7fffffffb08c + L0x7fffffffb0ac*x) [3329, x**2 - (2099)],
eqmod (inp_poly**2)
(L0x7fffffffb0cc + L0x7fffffffb0ec*x) [3329, x**2 - (1230)],
eqmod (inp_poly**2)
(L0x7fffffffb10c + L0x7fffffffb12c*x) [3329, x**2 - (561)],
eqmod (inp_poly**2)
(L0x7fffffffb14c + L0x7fffffffb16c*x) [3329, x**2 - (2768)],
eqmod (inp_poly**2)
(L0x7fffffffb08e + L0x7fffffffb0ae*x) [3329, x**2 - (2466)],
eqmod (inp_poly**2)
(L0x7fffffffb0ce + L0x7fffffffb0ee*x) [3329, x**2 - (863)],
eqmod (inp_poly**2)
(L0x7fffffffb10e + L0x7fffffffb12e*x) [3329, x**2 - (2594)],
eqmod (inp_poly**2)
(L0x7fffffffb14e + L0x7fffffffb16e*x) [3329, x**2 - (735)],
eqmod (inp_poly**2)
(L0x7fffffffb090 + L0x7fffffffb0b0*x) [3329, x**2 - (2804)],
eqmod (inp_poly**2)
(L0x7fffffffb0d0 + L0x7fffffffb0f0*x) [3329, x**2 - (525)],
eqmod (inp_poly**2)
(L0x7fffffffb110 + L0x7fffffffb130*x) [3329, x**2 - (1092)],
eqmod (inp_poly**2)
(L0x7fffffffb150 + L0x7fffffffb170*x) [3329, x**2 - (2237)],
eqmod (inp_poly**2)
(L0x7fffffffb092 + L0x7fffffffb0b2*x) [3329, x**2 - (403)],
eqmod (inp_poly**2)
(L0x7fffffffb0d2 + L0x7fffffffb0f2*x) [3329, x**2 - (2926)],
eqmod (inp_poly**2)
(L0x7fffffffb112 + L0x7fffffffb132*x) [3329, x**2 - (1026)],
eqmod (inp_poly**2)
(L0x7fffffffb152 + L0x7fffffffb172*x) [3329, x**2 - (2303)],
eqmod (inp_poly**2)
(L0x7fffffffb094 + L0x7fffffffb0b4*x) [3329, x**2 - (1143)],
eqmod (inp_poly**2)
(L0x7fffffffb0d4 + L0x7fffffffb0f4*x) [3329, x**2 - (2186)],
eqmod (inp_poly**2)
(L0x7fffffffb114 + L0x7fffffffb134*x) [3329, x**2 - (2150)],
eqmod (inp_poly**2)
(L0x7fffffffb154 + L0x7fffffffb174*x) [3329, x**2 - (1179)],
eqmod (inp_poly**2)
(L0x7fffffffb096 + L0x7fffffffb0b6*x) [3329, x**2 - (2775)],
eqmod (inp_poly**2)
(L0x7fffffffb0d6 + L0x7fffffffb0f6*x) [3329, x**2 - (554)],
eqmod (inp_poly**2)
(L0x7fffffffb116 + L0x7fffffffb136*x) [3329, x**2 - (886)],
eqmod (inp_poly**2)
(L0x7fffffffb156 + L0x7fffffffb176*x) [3329, x**2 - (2443)],
eqmod (inp_poly**2)
(L0x7fffffffb098 + L0x7fffffffb0b8*x) [3329, x**2 - (1722)],
eqmod (inp_poly**2)
(L0x7fffffffb0d8 + L0x7fffffffb0f8*x) [3329, x**2 - (1607)],
eqmod (inp_poly**2)
(L0x7fffffffb118 + L0x7fffffffb138*x) [3329, x**2 - (1212)],
eqmod (inp_poly**2)
(L0x7fffffffb158 + L0x7fffffffb178*x) [3329, x**2 - (2117)],
eqmod (inp_poly**2)
(L0x7fffffffb09a + L0x7fffffffb0ba*x) [3329, x**2 - (1874)],
eqmod (inp_poly**2)
(L0x7fffffffb0da + L0x7fffffffb0fa*x) [3329, x**2 - (1455)],
eqmod (inp_poly**2)
(L0x7fffffffb11a + L0x7fffffffb13a*x) [3329, x**2 - (1029)],
eqmod (inp_poly**2)
(L0x7fffffffb15a + L0x7fffffffb17a*x) [3329, x**2 - (2300)],
eqmod (inp_poly**2)
(L0x7fffffffb09c + L0x7fffffffb0bc*x) [3329, x**2 - (2110)],
eqmod (inp_poly**2)
(L0x7fffffffb0dc + L0x7fffffffb0fc*x) [3329, x**2 - (1219)],
eqmod (inp_poly**2)
(L0x7fffffffb11c + L0x7fffffffb13c*x) [3329, x**2 - (2935)],
eqmod (inp_poly**2)
(L0x7fffffffb15c + L0x7fffffffb17c*x) [3329, x**2 - (394)],
eqmod (inp_poly**2)
(L0x7fffffffb09e + L0x7fffffffb0be*x) [3329, x**2 - (885)],
eqmod (inp_poly**2)
(L0x7fffffffb0de + L0x7fffffffb0fe*x) [3329, x**2 - (2444)],
eqmod (inp_poly**2)
(L0x7fffffffb11e + L0x7fffffffb13e*x) [3329, x**2 - (2154)],
eqmod (inp_poly**2)
(L0x7fffffffb15e + L0x7fffffffb17e*x) [3329, x**2 - (1175)]]
prove with [ cuts [ 6 ] ] &&
and [
(-26632)@16 <s L0x7fffffffaf80, L0x7fffffffaf80 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf82, L0x7fffffffaf82 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf84, L0x7fffffffaf84 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf86, L0x7fffffffaf86 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf88, L0x7fffffffaf88 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf8a, L0x7fffffffaf8a <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf8c, L0x7fffffffaf8c <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf8e, L0x7fffffffaf8e <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf90, L0x7fffffffaf90 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf92, L0x7fffffffaf92 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf94, L0x7fffffffaf94 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf96, L0x7fffffffaf96 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf98, L0x7fffffffaf98 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf9a, L0x7fffffffaf9a <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf9c, L0x7fffffffaf9c <s (26632)@16,
(-26632)@16 <s L0x7fffffffaf9e, L0x7fffffffaf9e <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa0, L0x7fffffffafa0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa2, L0x7fffffffafa2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa4, L0x7fffffffafa4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa6, L0x7fffffffafa6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafa8, L0x7fffffffafa8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafaa, L0x7fffffffafaa <s (26632)@16,
(-26632)@16 <s L0x7fffffffafac, L0x7fffffffafac <s (26632)@16,
(-26632)@16 <s L0x7fffffffafae, L0x7fffffffafae <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb0, L0x7fffffffafb0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb2, L0x7fffffffafb2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb4, L0x7fffffffafb4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb6, L0x7fffffffafb6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafb8, L0x7fffffffafb8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafba, L0x7fffffffafba <s (26632)@16,
(-26632)@16 <s L0x7fffffffafbc, L0x7fffffffafbc <s (26632)@16,
(-26632)@16 <s L0x7fffffffafbe, L0x7fffffffafbe <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc0, L0x7fffffffafc0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc2, L0x7fffffffafc2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc4, L0x7fffffffafc4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc6, L0x7fffffffafc6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafc8, L0x7fffffffafc8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafca, L0x7fffffffafca <s (26632)@16,
(-26632)@16 <s L0x7fffffffafcc, L0x7fffffffafcc <s (26632)@16,
(-26632)@16 <s L0x7fffffffafce, L0x7fffffffafce <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd0, L0x7fffffffafd0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd2, L0x7fffffffafd2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd4, L0x7fffffffafd4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd6, L0x7fffffffafd6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafd8, L0x7fffffffafd8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafda, L0x7fffffffafda <s (26632)@16,
(-26632)@16 <s L0x7fffffffafdc, L0x7fffffffafdc <s (26632)@16,
(-26632)@16 <s L0x7fffffffafde, L0x7fffffffafde <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe0, L0x7fffffffafe0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe2, L0x7fffffffafe2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe4, L0x7fffffffafe4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe6, L0x7fffffffafe6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafe8, L0x7fffffffafe8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffafea, L0x7fffffffafea <s (26632)@16,
(-26632)@16 <s L0x7fffffffafec, L0x7fffffffafec <s (26632)@16,
(-26632)@16 <s L0x7fffffffafee, L0x7fffffffafee <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff0, L0x7fffffffaff0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff2, L0x7fffffffaff2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff4, L0x7fffffffaff4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff6, L0x7fffffffaff6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaff8, L0x7fffffffaff8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffaffa, L0x7fffffffaffa <s (26632)@16,
(-26632)@16 <s L0x7fffffffaffc, L0x7fffffffaffc <s (26632)@16,
(-26632)@16 <s L0x7fffffffaffe, L0x7fffffffaffe <s (26632)@16,
(-26632)@16 <s L0x7fffffffb000, L0x7fffffffb000 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb002, L0x7fffffffb002 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb004, L0x7fffffffb004 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb006, L0x7fffffffb006 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb008, L0x7fffffffb008 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb00a, L0x7fffffffb00a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb00c, L0x7fffffffb00c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb00e, L0x7fffffffb00e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb010, L0x7fffffffb010 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb012, L0x7fffffffb012 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb014, L0x7fffffffb014 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb016, L0x7fffffffb016 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb018, L0x7fffffffb018 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb01a, L0x7fffffffb01a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb01c, L0x7fffffffb01c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb01e, L0x7fffffffb01e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb020, L0x7fffffffb020 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb022, L0x7fffffffb022 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb024, L0x7fffffffb024 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb026, L0x7fffffffb026 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb028, L0x7fffffffb028 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb02a, L0x7fffffffb02a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb02c, L0x7fffffffb02c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb02e, L0x7fffffffb02e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb030, L0x7fffffffb030 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb032, L0x7fffffffb032 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb034, L0x7fffffffb034 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb036, L0x7fffffffb036 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb038, L0x7fffffffb038 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb03a, L0x7fffffffb03a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb03c, L0x7fffffffb03c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb03e, L0x7fffffffb03e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb040, L0x7fffffffb040 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb042, L0x7fffffffb042 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb044, L0x7fffffffb044 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb046, L0x7fffffffb046 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb048, L0x7fffffffb048 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb04a, L0x7fffffffb04a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb04c, L0x7fffffffb04c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb04e, L0x7fffffffb04e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb050, L0x7fffffffb050 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb052, L0x7fffffffb052 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb054, L0x7fffffffb054 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb056, L0x7fffffffb056 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb058, L0x7fffffffb058 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb05a, L0x7fffffffb05a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb05c, L0x7fffffffb05c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb05e, L0x7fffffffb05e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb060, L0x7fffffffb060 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb062, L0x7fffffffb062 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb064, L0x7fffffffb064 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb066, L0x7fffffffb066 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb068, L0x7fffffffb068 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb06a, L0x7fffffffb06a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb06c, L0x7fffffffb06c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb06e, L0x7fffffffb06e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb070, L0x7fffffffb070 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb072, L0x7fffffffb072 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb074, L0x7fffffffb074 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb076, L0x7fffffffb076 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb078, L0x7fffffffb078 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb07a, L0x7fffffffb07a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb07c, L0x7fffffffb07c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb07e, L0x7fffffffb07e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb080, L0x7fffffffb080 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb082, L0x7fffffffb082 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb084, L0x7fffffffb084 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb086, L0x7fffffffb086 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb088, L0x7fffffffb088 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb08a, L0x7fffffffb08a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb08c, L0x7fffffffb08c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb08e, L0x7fffffffb08e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb090, L0x7fffffffb090 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb092, L0x7fffffffb092 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb094, L0x7fffffffb094 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb096, L0x7fffffffb096 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb098, L0x7fffffffb098 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb09a, L0x7fffffffb09a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb09c, L0x7fffffffb09c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb09e, L0x7fffffffb09e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a0, L0x7fffffffb0a0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a2, L0x7fffffffb0a2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a4, L0x7fffffffb0a4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a6, L0x7fffffffb0a6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0a8, L0x7fffffffb0a8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0aa, L0x7fffffffb0aa <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ac, L0x7fffffffb0ac <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ae, L0x7fffffffb0ae <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b0, L0x7fffffffb0b0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b2, L0x7fffffffb0b2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b4, L0x7fffffffb0b4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b6, L0x7fffffffb0b6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0b8, L0x7fffffffb0b8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ba, L0x7fffffffb0ba <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0bc, L0x7fffffffb0bc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0be, L0x7fffffffb0be <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c0, L0x7fffffffb0c0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c2, L0x7fffffffb0c2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c4, L0x7fffffffb0c4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c6, L0x7fffffffb0c6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0c8, L0x7fffffffb0c8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ca, L0x7fffffffb0ca <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0cc, L0x7fffffffb0cc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ce, L0x7fffffffb0ce <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d0, L0x7fffffffb0d0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d2, L0x7fffffffb0d2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d4, L0x7fffffffb0d4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d6, L0x7fffffffb0d6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0d8, L0x7fffffffb0d8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0da, L0x7fffffffb0da <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0dc, L0x7fffffffb0dc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0de, L0x7fffffffb0de <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e0, L0x7fffffffb0e0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e2, L0x7fffffffb0e2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e4, L0x7fffffffb0e4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e6, L0x7fffffffb0e6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0e8, L0x7fffffffb0e8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ea, L0x7fffffffb0ea <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ec, L0x7fffffffb0ec <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0ee, L0x7fffffffb0ee <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f0, L0x7fffffffb0f0 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f2, L0x7fffffffb0f2 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f4, L0x7fffffffb0f4 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f6, L0x7fffffffb0f6 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0f8, L0x7fffffffb0f8 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0fa, L0x7fffffffb0fa <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0fc, L0x7fffffffb0fc <s (26632)@16,
(-26632)@16 <s L0x7fffffffb0fe, L0x7fffffffb0fe <s (26632)@16,
(-26632)@16 <s L0x7fffffffb100, L0x7fffffffb100 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb102, L0x7fffffffb102 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb104, L0x7fffffffb104 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb106, L0x7fffffffb106 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb108, L0x7fffffffb108 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb10a, L0x7fffffffb10a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb10c, L0x7fffffffb10c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb10e, L0x7fffffffb10e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb110, L0x7fffffffb110 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb112, L0x7fffffffb112 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb114, L0x7fffffffb114 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb116, L0x7fffffffb116 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb118, L0x7fffffffb118 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb11a, L0x7fffffffb11a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb11c, L0x7fffffffb11c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb11e, L0x7fffffffb11e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb120, L0x7fffffffb120 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb122, L0x7fffffffb122 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb124, L0x7fffffffb124 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb126, L0x7fffffffb126 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb128, L0x7fffffffb128 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb12a, L0x7fffffffb12a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb12c, L0x7fffffffb12c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb12e, L0x7fffffffb12e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb130, L0x7fffffffb130 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb132, L0x7fffffffb132 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb134, L0x7fffffffb134 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb136, L0x7fffffffb136 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb138, L0x7fffffffb138 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb13a, L0x7fffffffb13a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb13c, L0x7fffffffb13c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb13e, L0x7fffffffb13e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb140, L0x7fffffffb140 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb142, L0x7fffffffb142 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb144, L0x7fffffffb144 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb146, L0x7fffffffb146 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb148, L0x7fffffffb148 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb14a, L0x7fffffffb14a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb14c, L0x7fffffffb14c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb14e, L0x7fffffffb14e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb150, L0x7fffffffb150 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb152, L0x7fffffffb152 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb154, L0x7fffffffb154 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb156, L0x7fffffffb156 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb158, L0x7fffffffb158 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb15a, L0x7fffffffb15a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb15c, L0x7fffffffb15c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb15e, L0x7fffffffb15e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb160, L0x7fffffffb160 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb162, L0x7fffffffb162 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb164, L0x7fffffffb164 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb166, L0x7fffffffb166 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb168, L0x7fffffffb168 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb16a, L0x7fffffffb16a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb16c, L0x7fffffffb16c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb16e, L0x7fffffffb16e <s (26632)@16,
(-26632)@16 <s L0x7fffffffb170, L0x7fffffffb170 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb172, L0x7fffffffb172 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb174, L0x7fffffffb174 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb176, L0x7fffffffb176 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb178, L0x7fffffffb178 <s (26632)@16,
(-26632)@16 <s L0x7fffffffb17a, L0x7fffffffb17a <s (26632)@16,
(-26632)@16 <s L0x7fffffffb17c, L0x7fffffffb17c <s (26632)@16,
(-26632)@16 <s L0x7fffffffb17e, L0x7fffffffb17e <s (26632)@16]
prove with [ cuts [ 6 ] ]
}
