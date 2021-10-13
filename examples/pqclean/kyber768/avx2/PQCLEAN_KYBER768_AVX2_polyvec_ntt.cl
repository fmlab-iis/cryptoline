(* quine: -v -isafety -jobs 24 -slicing -no_carry_constraint PQCLEAN_KYBER768_AVX2_polyvec_ntt.cl
Parsing Cryptoline file:                [OK]            0.107459 seconds
Checking well-formedness:               [OK]            0.037879 seconds
Transforming to SSA form:               [OK]            0.023621 seconds
Rewriting assignments:                  [OK]            0.024425 seconds
Verifying program safety:               [OK]            293.150485 seconds
Verifying range assertions:             [OK]            66.572127 seconds
Verifying range specification:          [OK]            347.299505 seconds
Rewriting value-preserved casting:      [OK]            0.002019 seconds
Verifying algebraic assertions:         [OK]            0.018919 seconds
Verifying algebraic specification:      [OK]            60.018381 seconds
Verification result:                    [OK]            767.267100 seconds
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
true && and [
(-3329)@16 <s f000, f000 <s (3329)@16, (-3329)@16 <s f001, f001 <s (3329)@16,
(-3329)@16 <s f002, f002 <s (3329)@16, (-3329)@16 <s f003, f003 <s (3329)@16,
(-3329)@16 <s f004, f004 <s (3329)@16, (-3329)@16 <s f005, f005 <s (3329)@16,
(-3329)@16 <s f006, f006 <s (3329)@16, (-3329)@16 <s f007, f007 <s (3329)@16,
(-3329)@16 <s f008, f008 <s (3329)@16, (-3329)@16 <s f009, f009 <s (3329)@16,
(-3329)@16 <s f010, f010 <s (3329)@16, (-3329)@16 <s f011, f011 <s (3329)@16,
(-3329)@16 <s f012, f012 <s (3329)@16, (-3329)@16 <s f013, f013 <s (3329)@16,
(-3329)@16 <s f014, f014 <s (3329)@16, (-3329)@16 <s f015, f015 <s (3329)@16,
(-3329)@16 <s f016, f016 <s (3329)@16, (-3329)@16 <s f017, f017 <s (3329)@16,
(-3329)@16 <s f018, f018 <s (3329)@16, (-3329)@16 <s f019, f019 <s (3329)@16,
(-3329)@16 <s f020, f020 <s (3329)@16, (-3329)@16 <s f021, f021 <s (3329)@16,
(-3329)@16 <s f022, f022 <s (3329)@16, (-3329)@16 <s f023, f023 <s (3329)@16,
(-3329)@16 <s f024, f024 <s (3329)@16, (-3329)@16 <s f025, f025 <s (3329)@16,
(-3329)@16 <s f026, f026 <s (3329)@16, (-3329)@16 <s f027, f027 <s (3329)@16,
(-3329)@16 <s f028, f028 <s (3329)@16, (-3329)@16 <s f029, f029 <s (3329)@16,
(-3329)@16 <s f030, f030 <s (3329)@16, (-3329)@16 <s f031, f031 <s (3329)@16,
(-3329)@16 <s f032, f032 <s (3329)@16, (-3329)@16 <s f033, f033 <s (3329)@16,
(-3329)@16 <s f034, f034 <s (3329)@16, (-3329)@16 <s f035, f035 <s (3329)@16,
(-3329)@16 <s f036, f036 <s (3329)@16, (-3329)@16 <s f037, f037 <s (3329)@16,
(-3329)@16 <s f038, f038 <s (3329)@16, (-3329)@16 <s f039, f039 <s (3329)@16,
(-3329)@16 <s f040, f040 <s (3329)@16, (-3329)@16 <s f041, f041 <s (3329)@16,
(-3329)@16 <s f042, f042 <s (3329)@16, (-3329)@16 <s f043, f043 <s (3329)@16,
(-3329)@16 <s f044, f044 <s (3329)@16, (-3329)@16 <s f045, f045 <s (3329)@16,
(-3329)@16 <s f046, f046 <s (3329)@16, (-3329)@16 <s f047, f047 <s (3329)@16,
(-3329)@16 <s f048, f048 <s (3329)@16, (-3329)@16 <s f049, f049 <s (3329)@16,
(-3329)@16 <s f050, f050 <s (3329)@16, (-3329)@16 <s f051, f051 <s (3329)@16,
(-3329)@16 <s f052, f052 <s (3329)@16, (-3329)@16 <s f053, f053 <s (3329)@16,
(-3329)@16 <s f054, f054 <s (3329)@16, (-3329)@16 <s f055, f055 <s (3329)@16,
(-3329)@16 <s f056, f056 <s (3329)@16, (-3329)@16 <s f057, f057 <s (3329)@16,
(-3329)@16 <s f058, f058 <s (3329)@16, (-3329)@16 <s f059, f059 <s (3329)@16,
(-3329)@16 <s f060, f060 <s (3329)@16, (-3329)@16 <s f061, f061 <s (3329)@16,
(-3329)@16 <s f062, f062 <s (3329)@16, (-3329)@16 <s f063, f063 <s (3329)@16,
(-3329)@16 <s f064, f064 <s (3329)@16, (-3329)@16 <s f065, f065 <s (3329)@16,
(-3329)@16 <s f066, f066 <s (3329)@16, (-3329)@16 <s f067, f067 <s (3329)@16,
(-3329)@16 <s f068, f068 <s (3329)@16, (-3329)@16 <s f069, f069 <s (3329)@16,
(-3329)@16 <s f070, f070 <s (3329)@16, (-3329)@16 <s f071, f071 <s (3329)@16,
(-3329)@16 <s f072, f072 <s (3329)@16, (-3329)@16 <s f073, f073 <s (3329)@16,
(-3329)@16 <s f074, f074 <s (3329)@16, (-3329)@16 <s f075, f075 <s (3329)@16,
(-3329)@16 <s f076, f076 <s (3329)@16, (-3329)@16 <s f077, f077 <s (3329)@16,
(-3329)@16 <s f078, f078 <s (3329)@16, (-3329)@16 <s f079, f079 <s (3329)@16,
(-3329)@16 <s f080, f080 <s (3329)@16, (-3329)@16 <s f081, f081 <s (3329)@16,
(-3329)@16 <s f082, f082 <s (3329)@16, (-3329)@16 <s f083, f083 <s (3329)@16,
(-3329)@16 <s f084, f084 <s (3329)@16, (-3329)@16 <s f085, f085 <s (3329)@16,
(-3329)@16 <s f086, f086 <s (3329)@16, (-3329)@16 <s f087, f087 <s (3329)@16,
(-3329)@16 <s f088, f088 <s (3329)@16, (-3329)@16 <s f089, f089 <s (3329)@16,
(-3329)@16 <s f090, f090 <s (3329)@16, (-3329)@16 <s f091, f091 <s (3329)@16,
(-3329)@16 <s f092, f092 <s (3329)@16, (-3329)@16 <s f093, f093 <s (3329)@16,
(-3329)@16 <s f094, f094 <s (3329)@16, (-3329)@16 <s f095, f095 <s (3329)@16,
(-3329)@16 <s f096, f096 <s (3329)@16, (-3329)@16 <s f097, f097 <s (3329)@16,
(-3329)@16 <s f098, f098 <s (3329)@16, (-3329)@16 <s f099, f099 <s (3329)@16,
(-3329)@16 <s f100, f100 <s (3329)@16, (-3329)@16 <s f101, f101 <s (3329)@16,
(-3329)@16 <s f102, f102 <s (3329)@16, (-3329)@16 <s f103, f103 <s (3329)@16,
(-3329)@16 <s f104, f104 <s (3329)@16, (-3329)@16 <s f105, f105 <s (3329)@16,
(-3329)@16 <s f106, f106 <s (3329)@16, (-3329)@16 <s f107, f107 <s (3329)@16,
(-3329)@16 <s f108, f108 <s (3329)@16, (-3329)@16 <s f109, f109 <s (3329)@16,
(-3329)@16 <s f110, f110 <s (3329)@16, (-3329)@16 <s f111, f111 <s (3329)@16,
(-3329)@16 <s f112, f112 <s (3329)@16, (-3329)@16 <s f113, f113 <s (3329)@16,
(-3329)@16 <s f114, f114 <s (3329)@16, (-3329)@16 <s f115, f115 <s (3329)@16,
(-3329)@16 <s f116, f116 <s (3329)@16, (-3329)@16 <s f117, f117 <s (3329)@16,
(-3329)@16 <s f118, f118 <s (3329)@16, (-3329)@16 <s f119, f119 <s (3329)@16,
(-3329)@16 <s f120, f120 <s (3329)@16, (-3329)@16 <s f121, f121 <s (3329)@16,
(-3329)@16 <s f122, f122 <s (3329)@16, (-3329)@16 <s f123, f123 <s (3329)@16,
(-3329)@16 <s f124, f124 <s (3329)@16, (-3329)@16 <s f125, f125 <s (3329)@16,
(-3329)@16 <s f126, f126 <s (3329)@16, (-3329)@16 <s f127, f127 <s (3329)@16,
(-3329)@16 <s f128, f128 <s (3329)@16, (-3329)@16 <s f129, f129 <s (3329)@16,
(-3329)@16 <s f130, f130 <s (3329)@16, (-3329)@16 <s f131, f131 <s (3329)@16,
(-3329)@16 <s f132, f132 <s (3329)@16, (-3329)@16 <s f133, f133 <s (3329)@16,
(-3329)@16 <s f134, f134 <s (3329)@16, (-3329)@16 <s f135, f135 <s (3329)@16,
(-3329)@16 <s f136, f136 <s (3329)@16, (-3329)@16 <s f137, f137 <s (3329)@16,
(-3329)@16 <s f138, f138 <s (3329)@16, (-3329)@16 <s f139, f139 <s (3329)@16,
(-3329)@16 <s f140, f140 <s (3329)@16, (-3329)@16 <s f141, f141 <s (3329)@16,
(-3329)@16 <s f142, f142 <s (3329)@16, (-3329)@16 <s f143, f143 <s (3329)@16,
(-3329)@16 <s f144, f144 <s (3329)@16, (-3329)@16 <s f145, f145 <s (3329)@16,
(-3329)@16 <s f146, f146 <s (3329)@16, (-3329)@16 <s f147, f147 <s (3329)@16,
(-3329)@16 <s f148, f148 <s (3329)@16, (-3329)@16 <s f149, f149 <s (3329)@16,
(-3329)@16 <s f150, f150 <s (3329)@16, (-3329)@16 <s f151, f151 <s (3329)@16,
(-3329)@16 <s f152, f152 <s (3329)@16, (-3329)@16 <s f153, f153 <s (3329)@16,
(-3329)@16 <s f154, f154 <s (3329)@16, (-3329)@16 <s f155, f155 <s (3329)@16,
(-3329)@16 <s f156, f156 <s (3329)@16, (-3329)@16 <s f157, f157 <s (3329)@16,
(-3329)@16 <s f158, f158 <s (3329)@16, (-3329)@16 <s f159, f159 <s (3329)@16,
(-3329)@16 <s f160, f160 <s (3329)@16, (-3329)@16 <s f161, f161 <s (3329)@16,
(-3329)@16 <s f162, f162 <s (3329)@16, (-3329)@16 <s f163, f163 <s (3329)@16,
(-3329)@16 <s f164, f164 <s (3329)@16, (-3329)@16 <s f165, f165 <s (3329)@16,
(-3329)@16 <s f166, f166 <s (3329)@16, (-3329)@16 <s f167, f167 <s (3329)@16,
(-3329)@16 <s f168, f168 <s (3329)@16, (-3329)@16 <s f169, f169 <s (3329)@16,
(-3329)@16 <s f170, f170 <s (3329)@16, (-3329)@16 <s f171, f171 <s (3329)@16,
(-3329)@16 <s f172, f172 <s (3329)@16, (-3329)@16 <s f173, f173 <s (3329)@16,
(-3329)@16 <s f174, f174 <s (3329)@16, (-3329)@16 <s f175, f175 <s (3329)@16,
(-3329)@16 <s f176, f176 <s (3329)@16, (-3329)@16 <s f177, f177 <s (3329)@16,
(-3329)@16 <s f178, f178 <s (3329)@16, (-3329)@16 <s f179, f179 <s (3329)@16,
(-3329)@16 <s f180, f180 <s (3329)@16, (-3329)@16 <s f181, f181 <s (3329)@16,
(-3329)@16 <s f182, f182 <s (3329)@16, (-3329)@16 <s f183, f183 <s (3329)@16,
(-3329)@16 <s f184, f184 <s (3329)@16, (-3329)@16 <s f185, f185 <s (3329)@16,
(-3329)@16 <s f186, f186 <s (3329)@16, (-3329)@16 <s f187, f187 <s (3329)@16,
(-3329)@16 <s f188, f188 <s (3329)@16, (-3329)@16 <s f189, f189 <s (3329)@16,
(-3329)@16 <s f190, f190 <s (3329)@16, (-3329)@16 <s f191, f191 <s (3329)@16,
(-3329)@16 <s f192, f192 <s (3329)@16, (-3329)@16 <s f193, f193 <s (3329)@16,
(-3329)@16 <s f194, f194 <s (3329)@16, (-3329)@16 <s f195, f195 <s (3329)@16,
(-3329)@16 <s f196, f196 <s (3329)@16, (-3329)@16 <s f197, f197 <s (3329)@16,
(-3329)@16 <s f198, f198 <s (3329)@16, (-3329)@16 <s f199, f199 <s (3329)@16,
(-3329)@16 <s f200, f200 <s (3329)@16, (-3329)@16 <s f201, f201 <s (3329)@16,
(-3329)@16 <s f202, f202 <s (3329)@16, (-3329)@16 <s f203, f203 <s (3329)@16,
(-3329)@16 <s f204, f204 <s (3329)@16, (-3329)@16 <s f205, f205 <s (3329)@16,
(-3329)@16 <s f206, f206 <s (3329)@16, (-3329)@16 <s f207, f207 <s (3329)@16,
(-3329)@16 <s f208, f208 <s (3329)@16, (-3329)@16 <s f209, f209 <s (3329)@16,
(-3329)@16 <s f210, f210 <s (3329)@16, (-3329)@16 <s f211, f211 <s (3329)@16,
(-3329)@16 <s f212, f212 <s (3329)@16, (-3329)@16 <s f213, f213 <s (3329)@16,
(-3329)@16 <s f214, f214 <s (3329)@16, (-3329)@16 <s f215, f215 <s (3329)@16,
(-3329)@16 <s f216, f216 <s (3329)@16, (-3329)@16 <s f217, f217 <s (3329)@16,
(-3329)@16 <s f218, f218 <s (3329)@16, (-3329)@16 <s f219, f219 <s (3329)@16,
(-3329)@16 <s f220, f220 <s (3329)@16, (-3329)@16 <s f221, f221 <s (3329)@16,
(-3329)@16 <s f222, f222 <s (3329)@16, (-3329)@16 <s f223, f223 <s (3329)@16,
(-3329)@16 <s f224, f224 <s (3329)@16, (-3329)@16 <s f225, f225 <s (3329)@16,
(-3329)@16 <s f226, f226 <s (3329)@16, (-3329)@16 <s f227, f227 <s (3329)@16,
(-3329)@16 <s f228, f228 <s (3329)@16, (-3329)@16 <s f229, f229 <s (3329)@16,
(-3329)@16 <s f230, f230 <s (3329)@16, (-3329)@16 <s f231, f231 <s (3329)@16,
(-3329)@16 <s f232, f232 <s (3329)@16, (-3329)@16 <s f233, f233 <s (3329)@16,
(-3329)@16 <s f234, f234 <s (3329)@16, (-3329)@16 <s f235, f235 <s (3329)@16,
(-3329)@16 <s f236, f236 <s (3329)@16, (-3329)@16 <s f237, f237 <s (3329)@16,
(-3329)@16 <s f238, f238 <s (3329)@16, (-3329)@16 <s f239, f239 <s (3329)@16,
(-3329)@16 <s f240, f240 <s (3329)@16, (-3329)@16 <s f241, f241 <s (3329)@16,
(-3329)@16 <s f242, f242 <s (3329)@16, (-3329)@16 <s f243, f243 <s (3329)@16,
(-3329)@16 <s f244, f244 <s (3329)@16, (-3329)@16 <s f245, f245 <s (3329)@16,
(-3329)@16 <s f246, f246 <s (3329)@16, (-3329)@16 <s f247, f247 <s (3329)@16,
(-3329)@16 <s f248, f248 <s (3329)@16, (-3329)@16 <s f249, f249 <s (3329)@16,
(-3329)@16 <s f250, f250 <s (3329)@16, (-3329)@16 <s f251, f251 <s (3329)@16,
(-3329)@16 <s f252, f252 <s (3329)@16, (-3329)@16 <s f253, f253 <s (3329)@16,
(-3329)@16 <s f254, f254 <s (3329)@16, (-3329)@16 <s f255, f255 <s (3329)@16
]
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
mov ymm0_0 L0x5555556395e0;
mov ymm0_1 L0x5555556395e2;
mov ymm0_2 L0x5555556395e4;
mov ymm0_3 L0x5555556395e6;
mov ymm0_4 L0x5555556395e8;
mov ymm0_5 L0x5555556395ea;
mov ymm0_6 L0x5555556395ec;
mov ymm0_7 L0x5555556395ee;
mov ymm0_8 L0x5555556395f0;
mov ymm0_9 L0x5555556395f2;
mov ymm0_a L0x5555556395f4;
mov ymm0_b L0x5555556395f6;
mov ymm0_c L0x5555556395f8;
mov ymm0_d L0x5555556395fa;
mov ymm0_e L0x5555556395fc;
mov ymm0_f L0x5555556395fe;
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x555555639720; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556eb53 *)
mov ymm15_0 L0x555555639720;
mov ymm15_1 L0x555555639722;
mov ymm15_2 L0x555555639724;
mov ymm15_3 L0x555555639726;
mov ymm15_4 L0x555555639720;
mov ymm15_5 L0x555555639722;
mov ymm15_6 L0x555555639724;
mov ymm15_7 L0x555555639726;
mov ymm15_8 L0x555555639720;
mov ymm15_9 L0x555555639722;
mov ymm15_a L0x555555639724;
mov ymm15_b L0x555555639726;
mov ymm15_c L0x555555639720;
mov ymm15_d L0x555555639722;
mov ymm15_e L0x555555639724;
mov ymm15_f L0x555555639726;
(* vmovdqa 0x100(%rdi),%ymm8                       #! EA = L0x7fffffffb080; Value = 0xffff0000ffff0001; PC = 0x55555556eb5c *)
mov ymm8_0 L0x7fffffffb080;
mov ymm8_1 L0x7fffffffb082;
mov ymm8_2 L0x7fffffffb084;
mov ymm8_3 L0x7fffffffb086;
mov ymm8_4 L0x7fffffffb088;
mov ymm8_5 L0x7fffffffb08a;
mov ymm8_6 L0x7fffffffb08c;
mov ymm8_7 L0x7fffffffb08e;
mov ymm8_8 L0x7fffffffb090;
mov ymm8_9 L0x7fffffffb092;
mov ymm8_a L0x7fffffffb094;
mov ymm8_b L0x7fffffffb096;
mov ymm8_c L0x7fffffffb098;
mov ymm8_d L0x7fffffffb09a;
mov ymm8_e L0x7fffffffb09c;
mov ymm8_f L0x7fffffffb09e;
(* vmovdqa 0x120(%rdi),%ymm9                       #! EA = L0x7fffffffb0a0; Value = 0x00010001ffffffff; PC = 0x55555556eb64 *)
mov ymm9_0 L0x7fffffffb0a0;
mov ymm9_1 L0x7fffffffb0a2;
mov ymm9_2 L0x7fffffffb0a4;
mov ymm9_3 L0x7fffffffb0a6;
mov ymm9_4 L0x7fffffffb0a8;
mov ymm9_5 L0x7fffffffb0aa;
mov ymm9_6 L0x7fffffffb0ac;
mov ymm9_7 L0x7fffffffb0ae;
mov ymm9_8 L0x7fffffffb0b0;
mov ymm9_9 L0x7fffffffb0b2;
mov ymm9_a L0x7fffffffb0b4;
mov ymm9_b L0x7fffffffb0b6;
mov ymm9_c L0x7fffffffb0b8;
mov ymm9_d L0x7fffffffb0ba;
mov ymm9_e L0x7fffffffb0bc;
mov ymm9_f L0x7fffffffb0be;
(* vmovdqa 0x140(%rdi),%ymm10                      #! EA = L0x7fffffffb0c0; Value = 0x0000000000010000; PC = 0x55555556eb6c *)
mov ymm10_0 L0x7fffffffb0c0;
mov ymm10_1 L0x7fffffffb0c2;
mov ymm10_2 L0x7fffffffb0c4;
mov ymm10_3 L0x7fffffffb0c6;
mov ymm10_4 L0x7fffffffb0c8;
mov ymm10_5 L0x7fffffffb0ca;
mov ymm10_6 L0x7fffffffb0cc;
mov ymm10_7 L0x7fffffffb0ce;
mov ymm10_8 L0x7fffffffb0d0;
mov ymm10_9 L0x7fffffffb0d2;
mov ymm10_a L0x7fffffffb0d4;
mov ymm10_b L0x7fffffffb0d6;
mov ymm10_c L0x7fffffffb0d8;
mov ymm10_d L0x7fffffffb0da;
mov ymm10_e L0x7fffffffb0dc;
mov ymm10_f L0x7fffffffb0de;
(* vmovdqa 0x160(%rdi),%ymm11                      #! EA = L0x7fffffffb0e0; Value = 0x0000fffe00000000; PC = 0x55555556eb74 *)
mov ymm11_0 L0x7fffffffb0e0;
mov ymm11_1 L0x7fffffffb0e2;
mov ymm11_2 L0x7fffffffb0e4;
mov ymm11_3 L0x7fffffffb0e6;
mov ymm11_4 L0x7fffffffb0e8;
mov ymm11_5 L0x7fffffffb0ea;
mov ymm11_6 L0x7fffffffb0ec;
mov ymm11_7 L0x7fffffffb0ee;
mov ymm11_8 L0x7fffffffb0f0;
mov ymm11_9 L0x7fffffffb0f2;
mov ymm11_a L0x7fffffffb0f4;
mov ymm11_b L0x7fffffffb0f6;
mov ymm11_c L0x7fffffffb0f8;
mov ymm11_d L0x7fffffffb0fa;
mov ymm11_e L0x7fffffffb0fc;
mov ymm11_f L0x7fffffffb0fe;
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x555555639728; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556eb7c *)
mov ymm2_0 L0x555555639728;
mov ymm2_1 L0x55555563972a;
mov ymm2_2 L0x55555563972c;
mov ymm2_3 L0x55555563972e;
mov ymm2_4 L0x555555639728;
mov ymm2_5 L0x55555563972a;
mov ymm2_6 L0x55555563972c;
mov ymm2_7 L0x55555563972e;
mov ymm2_8 L0x555555639728;
mov ymm2_9 L0x55555563972a;
mov ymm2_a L0x55555563972c;
mov ymm2_b L0x55555563972e;
mov ymm2_c L0x555555639728;
mov ymm2_d L0x55555563972a;
mov ymm2_e L0x55555563972c;
mov ymm2_f L0x55555563972e;
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556eb85 *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556eb8a *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556eb8f *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eb94 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eb99 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556eb9d *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eba1 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eba5 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffaf80; Value = 0x0000ffff00000000; PC = 0x55555556eba9 *)
mov ymm4_0 L0x7fffffffaf80;
mov ymm4_1 L0x7fffffffaf82;
mov ymm4_2 L0x7fffffffaf84;
mov ymm4_3 L0x7fffffffaf86;
mov ymm4_4 L0x7fffffffaf88;
mov ymm4_5 L0x7fffffffaf8a;
mov ymm4_6 L0x7fffffffaf8c;
mov ymm4_7 L0x7fffffffaf8e;
mov ymm4_8 L0x7fffffffaf90;
mov ymm4_9 L0x7fffffffaf92;
mov ymm4_a L0x7fffffffaf94;
mov ymm4_b L0x7fffffffaf96;
mov ymm4_c L0x7fffffffaf98;
mov ymm4_d L0x7fffffffaf9a;
mov ymm4_e L0x7fffffffaf9c;
mov ymm4_f L0x7fffffffaf9e;
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffafa0; Value = 0x00010001ffffffff; PC = 0x55555556ebad *)
mov ymm5_0 L0x7fffffffafa0;
mov ymm5_1 L0x7fffffffafa2;
mov ymm5_2 L0x7fffffffafa4;
mov ymm5_3 L0x7fffffffafa6;
mov ymm5_4 L0x7fffffffafa8;
mov ymm5_5 L0x7fffffffafaa;
mov ymm5_6 L0x7fffffffafac;
mov ymm5_7 L0x7fffffffafae;
mov ymm5_8 L0x7fffffffafb0;
mov ymm5_9 L0x7fffffffafb2;
mov ymm5_a L0x7fffffffafb4;
mov ymm5_b L0x7fffffffafb6;
mov ymm5_c L0x7fffffffafb8;
mov ymm5_d L0x7fffffffafba;
mov ymm5_e L0x7fffffffafbc;
mov ymm5_f L0x7fffffffafbe;
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffafc0; Value = 0x00010000ffff0000; PC = 0x55555556ebb2 *)
mov ymm6_0 L0x7fffffffafc0;
mov ymm6_1 L0x7fffffffafc2;
mov ymm6_2 L0x7fffffffafc4;
mov ymm6_3 L0x7fffffffafc6;
mov ymm6_4 L0x7fffffffafc8;
mov ymm6_5 L0x7fffffffafca;
mov ymm6_6 L0x7fffffffafcc;
mov ymm6_7 L0x7fffffffafce;
mov ymm6_8 L0x7fffffffafd0;
mov ymm6_9 L0x7fffffffafd2;
mov ymm6_a L0x7fffffffafd4;
mov ymm6_b L0x7fffffffafd6;
mov ymm6_c L0x7fffffffafd8;
mov ymm6_d L0x7fffffffafda;
mov ymm6_e L0x7fffffffafdc;
mov ymm6_f L0x7fffffffafde;
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffafe0; Value = 0x000100010001ffff; PC = 0x55555556ebb7 *)
mov ymm7_0 L0x7fffffffafe0;
mov ymm7_1 L0x7fffffffafe2;
mov ymm7_2 L0x7fffffffafe4;
mov ymm7_3 L0x7fffffffafe6;
mov ymm7_4 L0x7fffffffafe8;
mov ymm7_5 L0x7fffffffafea;
mov ymm7_6 L0x7fffffffafec;
mov ymm7_7 L0x7fffffffafee;
mov ymm7_8 L0x7fffffffaff0;
mov ymm7_9 L0x7fffffffaff2;
mov ymm7_a L0x7fffffffaff4;
mov ymm7_b L0x7fffffffaff6;
mov ymm7_c L0x7fffffffaff8;
mov ymm7_d L0x7fffffffaffa;
mov ymm7_e L0x7fffffffaffc;
mov ymm7_f L0x7fffffffaffe;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ebbc *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ebc0 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ebc4 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ebc8 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ebcc *)
add ymm3_0 ymm4_0 ymm8_0;
add ymm3_1 ymm4_1 ymm8_1;
add ymm3_2 ymm4_2 ymm8_2;
add ymm3_3 ymm4_3 ymm8_3;
add ymm3_4 ymm4_4 ymm8_4;
add ymm3_5 ymm4_5 ymm8_5;
add ymm3_6 ymm4_6 ymm8_6;
add ymm3_7 ymm4_7 ymm8_7;
add ymm3_8 ymm4_8 ymm8_8;
add ymm3_9 ymm4_9 ymm8_9;
add ymm3_a ymm4_a ymm8_a;
add ymm3_b ymm4_b ymm8_b;
add ymm3_c ymm4_c ymm8_c;
add ymm3_d ymm4_d ymm8_d;
add ymm3_e ymm4_e ymm8_e;
add ymm3_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ebd1 *)
sub ymm8_0 ymm4_0 ymm8_0;
sub ymm8_1 ymm4_1 ymm8_1;
sub ymm8_2 ymm4_2 ymm8_2;
sub ymm8_3 ymm4_3 ymm8_3;
sub ymm8_4 ymm4_4 ymm8_4;
sub ymm8_5 ymm4_5 ymm8_5;
sub ymm8_6 ymm4_6 ymm8_6;
sub ymm8_7 ymm4_7 ymm8_7;
sub ymm8_8 ymm4_8 ymm8_8;
sub ymm8_9 ymm4_9 ymm8_9;
sub ymm8_a ymm4_a ymm8_a;
sub ymm8_b ymm4_b ymm8_b;
sub ymm8_c ymm4_c ymm8_c;
sub ymm8_d ymm4_d ymm8_d;
sub ymm8_e ymm4_e ymm8_e;
sub ymm8_f ymm4_f ymm8_f;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ebd6 *)
add ymm4_0 ymm5_0 ymm9_0;
add ymm4_1 ymm5_1 ymm9_1;
add ymm4_2 ymm5_2 ymm9_2;
add ymm4_3 ymm5_3 ymm9_3;
add ymm4_4 ymm5_4 ymm9_4;
add ymm4_5 ymm5_5 ymm9_5;
add ymm4_6 ymm5_6 ymm9_6;
add ymm4_7 ymm5_7 ymm9_7;
add ymm4_8 ymm5_8 ymm9_8;
add ymm4_9 ymm5_9 ymm9_9;
add ymm4_a ymm5_a ymm9_a;
add ymm4_b ymm5_b ymm9_b;
add ymm4_c ymm5_c ymm9_c;
add ymm4_d ymm5_d ymm9_d;
add ymm4_e ymm5_e ymm9_e;
add ymm4_f ymm5_f ymm9_f;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ebdb *)
sub ymm9_0 ymm5_0 ymm9_0;
sub ymm9_1 ymm5_1 ymm9_1;
sub ymm9_2 ymm5_2 ymm9_2;
sub ymm9_3 ymm5_3 ymm9_3;
sub ymm9_4 ymm5_4 ymm9_4;
sub ymm9_5 ymm5_5 ymm9_5;
sub ymm9_6 ymm5_6 ymm9_6;
sub ymm9_7 ymm5_7 ymm9_7;
sub ymm9_8 ymm5_8 ymm9_8;
sub ymm9_9 ymm5_9 ymm9_9;
sub ymm9_a ymm5_a ymm9_a;
sub ymm9_b ymm5_b ymm9_b;
sub ymm9_c ymm5_c ymm9_c;
sub ymm9_d ymm5_d ymm9_d;
sub ymm9_e ymm5_e ymm9_e;
sub ymm9_f ymm5_f ymm9_f;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ebe0 *)
add ymm5_0 ymm6_0 ymm10_0;
add ymm5_1 ymm6_1 ymm10_1;
add ymm5_2 ymm6_2 ymm10_2;
add ymm5_3 ymm6_3 ymm10_3;
add ymm5_4 ymm6_4 ymm10_4;
add ymm5_5 ymm6_5 ymm10_5;
add ymm5_6 ymm6_6 ymm10_6;
add ymm5_7 ymm6_7 ymm10_7;
add ymm5_8 ymm6_8 ymm10_8;
add ymm5_9 ymm6_9 ymm10_9;
add ymm5_a ymm6_a ymm10_a;
add ymm5_b ymm6_b ymm10_b;
add ymm5_c ymm6_c ymm10_c;
add ymm5_d ymm6_d ymm10_d;
add ymm5_e ymm6_e ymm10_e;
add ymm5_f ymm6_f ymm10_f;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ebe5 *)
sub ymm10_0 ymm6_0 ymm10_0;
sub ymm10_1 ymm6_1 ymm10_1;
sub ymm10_2 ymm6_2 ymm10_2;
sub ymm10_3 ymm6_3 ymm10_3;
sub ymm10_4 ymm6_4 ymm10_4;
sub ymm10_5 ymm6_5 ymm10_5;
sub ymm10_6 ymm6_6 ymm10_6;
sub ymm10_7 ymm6_7 ymm10_7;
sub ymm10_8 ymm6_8 ymm10_8;
sub ymm10_9 ymm6_9 ymm10_9;
sub ymm10_a ymm6_a ymm10_a;
sub ymm10_b ymm6_b ymm10_b;
sub ymm10_c ymm6_c ymm10_c;
sub ymm10_d ymm6_d ymm10_d;
sub ymm10_e ymm6_e ymm10_e;
sub ymm10_f ymm6_f ymm10_f;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ebea *)
add ymm6_0 ymm7_0 ymm11_0;
add ymm6_1 ymm7_1 ymm11_1;
add ymm6_2 ymm7_2 ymm11_2;
add ymm6_3 ymm7_3 ymm11_3;
add ymm6_4 ymm7_4 ymm11_4;
add ymm6_5 ymm7_5 ymm11_5;
add ymm6_6 ymm7_6 ymm11_6;
add ymm6_7 ymm7_7 ymm11_7;
add ymm6_8 ymm7_8 ymm11_8;
add ymm6_9 ymm7_9 ymm11_9;
add ymm6_a ymm7_a ymm11_a;
add ymm6_b ymm7_b ymm11_b;
add ymm6_c ymm7_c ymm11_c;
add ymm6_d ymm7_d ymm11_d;
add ymm6_e ymm7_e ymm11_e;
add ymm6_f ymm7_f ymm11_f;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ebef *)
sub ymm11_0 ymm7_0 ymm11_0;
sub ymm11_1 ymm7_1 ymm11_1;
sub ymm11_2 ymm7_2 ymm11_2;
sub ymm11_3 ymm7_3 ymm11_3;
sub ymm11_4 ymm7_4 ymm11_4;
sub ymm11_5 ymm7_5 ymm11_5;
sub ymm11_6 ymm7_6 ymm11_6;
sub ymm11_7 ymm7_7 ymm11_7;
sub ymm11_8 ymm7_8 ymm11_8;
sub ymm11_9 ymm7_9 ymm11_9;
sub ymm11_a ymm7_a ymm11_a;
sub ymm11_b ymm7_b ymm11_b;
sub ymm11_c ymm7_c ymm11_c;
sub ymm11_d ymm7_d ymm11_d;
sub ymm11_e ymm7_e ymm11_e;
sub ymm11_f ymm7_f ymm11_f;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ebf4 *)
sub ymm3_0 ymm3_0 ymm12_0;
sub ymm3_1 ymm3_1 ymm12_1;
sub ymm3_2 ymm3_2 ymm12_2;
sub ymm3_3 ymm3_3 ymm12_3;
sub ymm3_4 ymm3_4 ymm12_4;
sub ymm3_5 ymm3_5 ymm12_5;
sub ymm3_6 ymm3_6 ymm12_6;
sub ymm3_7 ymm3_7 ymm12_7;
sub ymm3_8 ymm3_8 ymm12_8;
sub ymm3_9 ymm3_9 ymm12_9;
sub ymm3_a ymm3_a ymm12_a;
sub ymm3_b ymm3_b ymm12_b;
sub ymm3_c ymm3_c ymm12_c;
sub ymm3_d ymm3_d ymm12_d;
sub ymm3_e ymm3_e ymm12_e;
sub ymm3_f ymm3_f ymm12_f;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ebf9 *)
add ymm8_0 ymm8_0 ymm12_0;
add ymm8_1 ymm8_1 ymm12_1;
add ymm8_2 ymm8_2 ymm12_2;
add ymm8_3 ymm8_3 ymm12_3;
add ymm8_4 ymm8_4 ymm12_4;
add ymm8_5 ymm8_5 ymm12_5;
add ymm8_6 ymm8_6 ymm12_6;
add ymm8_7 ymm8_7 ymm12_7;
add ymm8_8 ymm8_8 ymm12_8;
add ymm8_9 ymm8_9 ymm12_9;
add ymm8_a ymm8_a ymm12_a;
add ymm8_b ymm8_b ymm12_b;
add ymm8_c ymm8_c ymm12_c;
add ymm8_d ymm8_d ymm12_d;
add ymm8_e ymm8_e ymm12_e;
add ymm8_f ymm8_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ebfe *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ec03 *)
add ymm9_0 ymm9_0 ymm13_0;
add ymm9_1 ymm9_1 ymm13_1;
add ymm9_2 ymm9_2 ymm13_2;
add ymm9_3 ymm9_3 ymm13_3;
add ymm9_4 ymm9_4 ymm13_4;
add ymm9_5 ymm9_5 ymm13_5;
add ymm9_6 ymm9_6 ymm13_6;
add ymm9_7 ymm9_7 ymm13_7;
add ymm9_8 ymm9_8 ymm13_8;
add ymm9_9 ymm9_9 ymm13_9;
add ymm9_a ymm9_a ymm13_a;
add ymm9_b ymm9_b ymm13_b;
add ymm9_c ymm9_c ymm13_c;
add ymm9_d ymm9_d ymm13_d;
add ymm9_e ymm9_e ymm13_e;
add ymm9_f ymm9_f ymm13_f;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ec08 *)
sub ymm5_0 ymm5_0 ymm14_0;
sub ymm5_1 ymm5_1 ymm14_1;
sub ymm5_2 ymm5_2 ymm14_2;
sub ymm5_3 ymm5_3 ymm14_3;
sub ymm5_4 ymm5_4 ymm14_4;
sub ymm5_5 ymm5_5 ymm14_5;
sub ymm5_6 ymm5_6 ymm14_6;
sub ymm5_7 ymm5_7 ymm14_7;
sub ymm5_8 ymm5_8 ymm14_8;
sub ymm5_9 ymm5_9 ymm14_9;
sub ymm5_a ymm5_a ymm14_a;
sub ymm5_b ymm5_b ymm14_b;
sub ymm5_c ymm5_c ymm14_c;
sub ymm5_d ymm5_d ymm14_d;
sub ymm5_e ymm5_e ymm14_e;
sub ymm5_f ymm5_f ymm14_f;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ec0d *)
add ymm10_0 ymm10_0 ymm14_0;
add ymm10_1 ymm10_1 ymm14_1;
add ymm10_2 ymm10_2 ymm14_2;
add ymm10_3 ymm10_3 ymm14_3;
add ymm10_4 ymm10_4 ymm14_4;
add ymm10_5 ymm10_5 ymm14_5;
add ymm10_6 ymm10_6 ymm14_6;
add ymm10_7 ymm10_7 ymm14_7;
add ymm10_8 ymm10_8 ymm14_8;
add ymm10_9 ymm10_9 ymm14_9;
add ymm10_a ymm10_a ymm14_a;
add ymm10_b ymm10_b ymm14_b;
add ymm10_c ymm10_c ymm14_c;
add ymm10_d ymm10_d ymm14_d;
add ymm10_e ymm10_e ymm14_e;
add ymm10_f ymm10_f ymm14_f;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ec12 *)
sub ymm6_0 ymm6_0 ymm15_0;
sub ymm6_1 ymm6_1 ymm15_1;
sub ymm6_2 ymm6_2 ymm15_2;
sub ymm6_3 ymm6_3 ymm15_3;
sub ymm6_4 ymm6_4 ymm15_4;
sub ymm6_5 ymm6_5 ymm15_5;
sub ymm6_6 ymm6_6 ymm15_6;
sub ymm6_7 ymm6_7 ymm15_7;
sub ymm6_8 ymm6_8 ymm15_8;
sub ymm6_9 ymm6_9 ymm15_9;
sub ymm6_a ymm6_a ymm15_a;
sub ymm6_b ymm6_b ymm15_b;
sub ymm6_c ymm6_c ymm15_c;
sub ymm6_d ymm6_d ymm15_d;
sub ymm6_e ymm6_e ymm15_e;
sub ymm6_f ymm6_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ec17 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffffaf80; PC = 0x55555556ec1c *)
mov L0x7fffffffaf80 ymm3_0;
mov L0x7fffffffaf82 ymm3_1;
mov L0x7fffffffaf84 ymm3_2;
mov L0x7fffffffaf86 ymm3_3;
mov L0x7fffffffaf88 ymm3_4;
mov L0x7fffffffaf8a ymm3_5;
mov L0x7fffffffaf8c ymm3_6;
mov L0x7fffffffaf8e ymm3_7;
mov L0x7fffffffaf90 ymm3_8;
mov L0x7fffffffaf92 ymm3_9;
mov L0x7fffffffaf94 ymm3_a;
mov L0x7fffffffaf96 ymm3_b;
mov L0x7fffffffaf98 ymm3_c;
mov L0x7fffffffaf9a ymm3_d;
mov L0x7fffffffaf9c ymm3_e;
mov L0x7fffffffaf9e ymm3_f;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffafa0; PC = 0x55555556ec20 *)
mov L0x7fffffffafa0 ymm4_0;
mov L0x7fffffffafa2 ymm4_1;
mov L0x7fffffffafa4 ymm4_2;
mov L0x7fffffffafa6 ymm4_3;
mov L0x7fffffffafa8 ymm4_4;
mov L0x7fffffffafaa ymm4_5;
mov L0x7fffffffafac ymm4_6;
mov L0x7fffffffafae ymm4_7;
mov L0x7fffffffafb0 ymm4_8;
mov L0x7fffffffafb2 ymm4_9;
mov L0x7fffffffafb4 ymm4_a;
mov L0x7fffffffafb6 ymm4_b;
mov L0x7fffffffafb8 ymm4_c;
mov L0x7fffffffafba ymm4_d;
mov L0x7fffffffafbc ymm4_e;
mov L0x7fffffffafbe ymm4_f;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffffafc0; PC = 0x55555556ec25 *)
mov L0x7fffffffafc0 ymm5_0;
mov L0x7fffffffafc2 ymm5_1;
mov L0x7fffffffafc4 ymm5_2;
mov L0x7fffffffafc6 ymm5_3;
mov L0x7fffffffafc8 ymm5_4;
mov L0x7fffffffafca ymm5_5;
mov L0x7fffffffafcc ymm5_6;
mov L0x7fffffffafce ymm5_7;
mov L0x7fffffffafd0 ymm5_8;
mov L0x7fffffffafd2 ymm5_9;
mov L0x7fffffffafd4 ymm5_a;
mov L0x7fffffffafd6 ymm5_b;
mov L0x7fffffffafd8 ymm5_c;
mov L0x7fffffffafda ymm5_d;
mov L0x7fffffffafdc ymm5_e;
mov L0x7fffffffafde ymm5_f;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffffafe0; PC = 0x55555556ec2a *)
mov L0x7fffffffafe0 ymm6_0;
mov L0x7fffffffafe2 ymm6_1;
mov L0x7fffffffafe4 ymm6_2;
mov L0x7fffffffafe6 ymm6_3;
mov L0x7fffffffafe8 ymm6_4;
mov L0x7fffffffafea ymm6_5;
mov L0x7fffffffafec ymm6_6;
mov L0x7fffffffafee ymm6_7;
mov L0x7fffffffaff0 ymm6_8;
mov L0x7fffffffaff2 ymm6_9;
mov L0x7fffffffaff4 ymm6_a;
mov L0x7fffffffaff6 ymm6_b;
mov L0x7fffffffaff8 ymm6_c;
mov L0x7fffffffaffa ymm6_d;
mov L0x7fffffffaffc ymm6_e;
mov L0x7fffffffaffe ymm6_f;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb080; PC = 0x55555556ec2f *)
mov L0x7fffffffb080 ymm8_0;
mov L0x7fffffffb082 ymm8_1;
mov L0x7fffffffb084 ymm8_2;
mov L0x7fffffffb086 ymm8_3;
mov L0x7fffffffb088 ymm8_4;
mov L0x7fffffffb08a ymm8_5;
mov L0x7fffffffb08c ymm8_6;
mov L0x7fffffffb08e ymm8_7;
mov L0x7fffffffb090 ymm8_8;
mov L0x7fffffffb092 ymm8_9;
mov L0x7fffffffb094 ymm8_a;
mov L0x7fffffffb096 ymm8_b;
mov L0x7fffffffb098 ymm8_c;
mov L0x7fffffffb09a ymm8_d;
mov L0x7fffffffb09c ymm8_e;
mov L0x7fffffffb09e ymm8_f;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb0a0; PC = 0x55555556ec37 *)
mov L0x7fffffffb0a0 ymm9_0;
mov L0x7fffffffb0a2 ymm9_1;
mov L0x7fffffffb0a4 ymm9_2;
mov L0x7fffffffb0a6 ymm9_3;
mov L0x7fffffffb0a8 ymm9_4;
mov L0x7fffffffb0aa ymm9_5;
mov L0x7fffffffb0ac ymm9_6;
mov L0x7fffffffb0ae ymm9_7;
mov L0x7fffffffb0b0 ymm9_8;
mov L0x7fffffffb0b2 ymm9_9;
mov L0x7fffffffb0b4 ymm9_a;
mov L0x7fffffffb0b6 ymm9_b;
mov L0x7fffffffb0b8 ymm9_c;
mov L0x7fffffffb0ba ymm9_d;
mov L0x7fffffffb0bc ymm9_e;
mov L0x7fffffffb0be ymm9_f;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb0c0; PC = 0x55555556ec3f *)
mov L0x7fffffffb0c0 ymm10_0;
mov L0x7fffffffb0c2 ymm10_1;
mov L0x7fffffffb0c4 ymm10_2;
mov L0x7fffffffb0c6 ymm10_3;
mov L0x7fffffffb0c8 ymm10_4;
mov L0x7fffffffb0ca ymm10_5;
mov L0x7fffffffb0cc ymm10_6;
mov L0x7fffffffb0ce ymm10_7;
mov L0x7fffffffb0d0 ymm10_8;
mov L0x7fffffffb0d2 ymm10_9;
mov L0x7fffffffb0d4 ymm10_a;
mov L0x7fffffffb0d6 ymm10_b;
mov L0x7fffffffb0d8 ymm10_c;
mov L0x7fffffffb0da ymm10_d;
mov L0x7fffffffb0dc ymm10_e;
mov L0x7fffffffb0de ymm10_f;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb0e0; PC = 0x55555556ec47 *)
mov L0x7fffffffb0e0 ymm11_0;
mov L0x7fffffffb0e2 ymm11_1;
mov L0x7fffffffb0e4 ymm11_2;
mov L0x7fffffffb0e6 ymm11_3;
mov L0x7fffffffb0e8 ymm11_4;
mov L0x7fffffffb0ea ymm11_5;
mov L0x7fffffffb0ec ymm11_6;
mov L0x7fffffffb0ee ymm11_7;
mov L0x7fffffffb0f0 ymm11_8;
mov L0x7fffffffb0f2 ymm11_9;
mov L0x7fffffffb0f4 ymm11_a;
mov L0x7fffffffb0f6 ymm11_b;
mov L0x7fffffffb0f8 ymm11_c;
mov L0x7fffffffb0fa ymm11_d;
mov L0x7fffffffb0fc ymm11_e;
mov L0x7fffffffb0fe ymm11_f;
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x555555639720; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556ec4f *)
mov ymm15_0 L0x555555639720;
mov ymm15_1 L0x555555639722;
mov ymm15_2 L0x555555639724;
mov ymm15_3 L0x555555639726;
mov ymm15_4 L0x555555639720;
mov ymm15_5 L0x555555639722;
mov ymm15_6 L0x555555639724;
mov ymm15_7 L0x555555639726;
mov ymm15_8 L0x555555639720;
mov ymm15_9 L0x555555639722;
mov ymm15_a L0x555555639724;
mov ymm15_b L0x555555639726;
mov ymm15_c L0x555555639720;
mov ymm15_d L0x555555639722;
mov ymm15_e L0x555555639724;
mov ymm15_f L0x555555639726;
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb100; Value = 0x00000000ffffffff; PC = 0x55555556ec58 *)
mov ymm8_0 L0x7fffffffb100;
mov ymm8_1 L0x7fffffffb102;
mov ymm8_2 L0x7fffffffb104;
mov ymm8_3 L0x7fffffffb106;
mov ymm8_4 L0x7fffffffb108;
mov ymm8_5 L0x7fffffffb10a;
mov ymm8_6 L0x7fffffffb10c;
mov ymm8_7 L0x7fffffffb10e;
mov ymm8_8 L0x7fffffffb110;
mov ymm8_9 L0x7fffffffb112;
mov ymm8_a L0x7fffffffb114;
mov ymm8_b L0x7fffffffb116;
mov ymm8_c L0x7fffffffb118;
mov ymm8_d L0x7fffffffb11a;
mov ymm8_e L0x7fffffffb11c;
mov ymm8_f L0x7fffffffb11e;
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb120; Value = 0x0001ffffffffffff; PC = 0x55555556ec60 *)
mov ymm9_0 L0x7fffffffb120;
mov ymm9_1 L0x7fffffffb122;
mov ymm9_2 L0x7fffffffb124;
mov ymm9_3 L0x7fffffffb126;
mov ymm9_4 L0x7fffffffb128;
mov ymm9_5 L0x7fffffffb12a;
mov ymm9_6 L0x7fffffffb12c;
mov ymm9_7 L0x7fffffffb12e;
mov ymm9_8 L0x7fffffffb130;
mov ymm9_9 L0x7fffffffb132;
mov ymm9_a L0x7fffffffb134;
mov ymm9_b L0x7fffffffb136;
mov ymm9_c L0x7fffffffb138;
mov ymm9_d L0x7fffffffb13a;
mov ymm9_e L0x7fffffffb13c;
mov ymm9_f L0x7fffffffb13e;
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb140; Value = 0x00010001ffff0000; PC = 0x55555556ec68 *)
mov ymm10_0 L0x7fffffffb140;
mov ymm10_1 L0x7fffffffb142;
mov ymm10_2 L0x7fffffffb144;
mov ymm10_3 L0x7fffffffb146;
mov ymm10_4 L0x7fffffffb148;
mov ymm10_5 L0x7fffffffb14a;
mov ymm10_6 L0x7fffffffb14c;
mov ymm10_7 L0x7fffffffb14e;
mov ymm10_8 L0x7fffffffb150;
mov ymm10_9 L0x7fffffffb152;
mov ymm10_a L0x7fffffffb154;
mov ymm10_b L0x7fffffffb156;
mov ymm10_c L0x7fffffffb158;
mov ymm10_d L0x7fffffffb15a;
mov ymm10_e L0x7fffffffb15c;
mov ymm10_f L0x7fffffffb15e;
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb160; Value = 0x0000ffff00010001; PC = 0x55555556ec70 *)
mov ymm11_0 L0x7fffffffb160;
mov ymm11_1 L0x7fffffffb162;
mov ymm11_2 L0x7fffffffb164;
mov ymm11_3 L0x7fffffffb166;
mov ymm11_4 L0x7fffffffb168;
mov ymm11_5 L0x7fffffffb16a;
mov ymm11_6 L0x7fffffffb16c;
mov ymm11_7 L0x7fffffffb16e;
mov ymm11_8 L0x7fffffffb170;
mov ymm11_9 L0x7fffffffb172;
mov ymm11_a L0x7fffffffb174;
mov ymm11_b L0x7fffffffb176;
mov ymm11_c L0x7fffffffb178;
mov ymm11_d L0x7fffffffb17a;
mov ymm11_e L0x7fffffffb17c;
mov ymm11_f L0x7fffffffb17e;
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x555555639728; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556ec78 *)
mov ymm2_0 L0x555555639728;
mov ymm2_1 L0x55555563972a;
mov ymm2_2 L0x55555563972c;
mov ymm2_3 L0x55555563972e;
mov ymm2_4 L0x555555639728;
mov ymm2_5 L0x55555563972a;
mov ymm2_6 L0x55555563972c;
mov ymm2_7 L0x55555563972e;
mov ymm2_8 L0x555555639728;
mov ymm2_9 L0x55555563972a;
mov ymm2_a L0x55555563972c;
mov ymm2_b L0x55555563972e;
mov ymm2_c L0x555555639728;
mov ymm2_d L0x55555563972a;
mov ymm2_e L0x55555563972c;
mov ymm2_f L0x55555563972e;
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ec81 *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ec86 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ec8b *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ec90 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ec95 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ec99 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ec9d *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eca1 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vmovdqa 0x80(%rdi),%ymm4                        #! EA = L0x7fffffffb000; Value = 0xfffe0000ffff0000; PC = 0x55555556eca5 *)
mov ymm4_0 L0x7fffffffb000;
mov ymm4_1 L0x7fffffffb002;
mov ymm4_2 L0x7fffffffb004;
mov ymm4_3 L0x7fffffffb006;
mov ymm4_4 L0x7fffffffb008;
mov ymm4_5 L0x7fffffffb00a;
mov ymm4_6 L0x7fffffffb00c;
mov ymm4_7 L0x7fffffffb00e;
mov ymm4_8 L0x7fffffffb010;
mov ymm4_9 L0x7fffffffb012;
mov ymm4_a L0x7fffffffb014;
mov ymm4_b L0x7fffffffb016;
mov ymm4_c L0x7fffffffb018;
mov ymm4_d L0x7fffffffb01a;
mov ymm4_e L0x7fffffffb01c;
mov ymm4_f L0x7fffffffb01e;
(* vmovdqa 0xa0(%rdi),%ymm5                        #! EA = L0x7fffffffb020; Value = 0xfffe000000010000; PC = 0x55555556ecad *)
mov ymm5_0 L0x7fffffffb020;
mov ymm5_1 L0x7fffffffb022;
mov ymm5_2 L0x7fffffffb024;
mov ymm5_3 L0x7fffffffb026;
mov ymm5_4 L0x7fffffffb028;
mov ymm5_5 L0x7fffffffb02a;
mov ymm5_6 L0x7fffffffb02c;
mov ymm5_7 L0x7fffffffb02e;
mov ymm5_8 L0x7fffffffb030;
mov ymm5_9 L0x7fffffffb032;
mov ymm5_a L0x7fffffffb034;
mov ymm5_b L0x7fffffffb036;
mov ymm5_c L0x7fffffffb038;
mov ymm5_d L0x7fffffffb03a;
mov ymm5_e L0x7fffffffb03c;
mov ymm5_f L0x7fffffffb03e;
(* vmovdqa 0xc0(%rdi),%ymm6                        #! EA = L0x7fffffffb040; Value = 0x0001ffff0000ffff; PC = 0x55555556ecb5 *)
mov ymm6_0 L0x7fffffffb040;
mov ymm6_1 L0x7fffffffb042;
mov ymm6_2 L0x7fffffffb044;
mov ymm6_3 L0x7fffffffb046;
mov ymm6_4 L0x7fffffffb048;
mov ymm6_5 L0x7fffffffb04a;
mov ymm6_6 L0x7fffffffb04c;
mov ymm6_7 L0x7fffffffb04e;
mov ymm6_8 L0x7fffffffb050;
mov ymm6_9 L0x7fffffffb052;
mov ymm6_a L0x7fffffffb054;
mov ymm6_b L0x7fffffffb056;
mov ymm6_c L0x7fffffffb058;
mov ymm6_d L0x7fffffffb05a;
mov ymm6_e L0x7fffffffb05c;
mov ymm6_f L0x7fffffffb05e;
(* vmovdqa 0xe0(%rdi),%ymm7                        #! EA = L0x7fffffffb060; Value = 0xfffeffff00000000; PC = 0x55555556ecbd *)
mov ymm7_0 L0x7fffffffb060;
mov ymm7_1 L0x7fffffffb062;
mov ymm7_2 L0x7fffffffb064;
mov ymm7_3 L0x7fffffffb066;
mov ymm7_4 L0x7fffffffb068;
mov ymm7_5 L0x7fffffffb06a;
mov ymm7_6 L0x7fffffffb06c;
mov ymm7_7 L0x7fffffffb06e;
mov ymm7_8 L0x7fffffffb070;
mov ymm7_9 L0x7fffffffb072;
mov ymm7_a L0x7fffffffb074;
mov ymm7_b L0x7fffffffb076;
mov ymm7_c L0x7fffffffb078;
mov ymm7_d L0x7fffffffb07a;
mov ymm7_e L0x7fffffffb07c;
mov ymm7_f L0x7fffffffb07e;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ecc5 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ecc9 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556eccd *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ecd1 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ecd5 *)
add ymm3_0 ymm4_0 ymm8_0;
add ymm3_1 ymm4_1 ymm8_1;
add ymm3_2 ymm4_2 ymm8_2;
add ymm3_3 ymm4_3 ymm8_3;
add ymm3_4 ymm4_4 ymm8_4;
add ymm3_5 ymm4_5 ymm8_5;
add ymm3_6 ymm4_6 ymm8_6;
add ymm3_7 ymm4_7 ymm8_7;
add ymm3_8 ymm4_8 ymm8_8;
add ymm3_9 ymm4_9 ymm8_9;
add ymm3_a ymm4_a ymm8_a;
add ymm3_b ymm4_b ymm8_b;
add ymm3_c ymm4_c ymm8_c;
add ymm3_d ymm4_d ymm8_d;
add ymm3_e ymm4_e ymm8_e;
add ymm3_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ecda *)
sub ymm8_0 ymm4_0 ymm8_0;
sub ymm8_1 ymm4_1 ymm8_1;
sub ymm8_2 ymm4_2 ymm8_2;
sub ymm8_3 ymm4_3 ymm8_3;
sub ymm8_4 ymm4_4 ymm8_4;
sub ymm8_5 ymm4_5 ymm8_5;
sub ymm8_6 ymm4_6 ymm8_6;
sub ymm8_7 ymm4_7 ymm8_7;
sub ymm8_8 ymm4_8 ymm8_8;
sub ymm8_9 ymm4_9 ymm8_9;
sub ymm8_a ymm4_a ymm8_a;
sub ymm8_b ymm4_b ymm8_b;
sub ymm8_c ymm4_c ymm8_c;
sub ymm8_d ymm4_d ymm8_d;
sub ymm8_e ymm4_e ymm8_e;
sub ymm8_f ymm4_f ymm8_f;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ecdf *)
add ymm4_0 ymm5_0 ymm9_0;
add ymm4_1 ymm5_1 ymm9_1;
add ymm4_2 ymm5_2 ymm9_2;
add ymm4_3 ymm5_3 ymm9_3;
add ymm4_4 ymm5_4 ymm9_4;
add ymm4_5 ymm5_5 ymm9_5;
add ymm4_6 ymm5_6 ymm9_6;
add ymm4_7 ymm5_7 ymm9_7;
add ymm4_8 ymm5_8 ymm9_8;
add ymm4_9 ymm5_9 ymm9_9;
add ymm4_a ymm5_a ymm9_a;
add ymm4_b ymm5_b ymm9_b;
add ymm4_c ymm5_c ymm9_c;
add ymm4_d ymm5_d ymm9_d;
add ymm4_e ymm5_e ymm9_e;
add ymm4_f ymm5_f ymm9_f;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ece4 *)
sub ymm9_0 ymm5_0 ymm9_0;
sub ymm9_1 ymm5_1 ymm9_1;
sub ymm9_2 ymm5_2 ymm9_2;
sub ymm9_3 ymm5_3 ymm9_3;
sub ymm9_4 ymm5_4 ymm9_4;
sub ymm9_5 ymm5_5 ymm9_5;
sub ymm9_6 ymm5_6 ymm9_6;
sub ymm9_7 ymm5_7 ymm9_7;
sub ymm9_8 ymm5_8 ymm9_8;
sub ymm9_9 ymm5_9 ymm9_9;
sub ymm9_a ymm5_a ymm9_a;
sub ymm9_b ymm5_b ymm9_b;
sub ymm9_c ymm5_c ymm9_c;
sub ymm9_d ymm5_d ymm9_d;
sub ymm9_e ymm5_e ymm9_e;
sub ymm9_f ymm5_f ymm9_f;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ece9 *)
add ymm5_0 ymm6_0 ymm10_0;
add ymm5_1 ymm6_1 ymm10_1;
add ymm5_2 ymm6_2 ymm10_2;
add ymm5_3 ymm6_3 ymm10_3;
add ymm5_4 ymm6_4 ymm10_4;
add ymm5_5 ymm6_5 ymm10_5;
add ymm5_6 ymm6_6 ymm10_6;
add ymm5_7 ymm6_7 ymm10_7;
add ymm5_8 ymm6_8 ymm10_8;
add ymm5_9 ymm6_9 ymm10_9;
add ymm5_a ymm6_a ymm10_a;
add ymm5_b ymm6_b ymm10_b;
add ymm5_c ymm6_c ymm10_c;
add ymm5_d ymm6_d ymm10_d;
add ymm5_e ymm6_e ymm10_e;
add ymm5_f ymm6_f ymm10_f;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ecee *)
sub ymm10_0 ymm6_0 ymm10_0;
sub ymm10_1 ymm6_1 ymm10_1;
sub ymm10_2 ymm6_2 ymm10_2;
sub ymm10_3 ymm6_3 ymm10_3;
sub ymm10_4 ymm6_4 ymm10_4;
sub ymm10_5 ymm6_5 ymm10_5;
sub ymm10_6 ymm6_6 ymm10_6;
sub ymm10_7 ymm6_7 ymm10_7;
sub ymm10_8 ymm6_8 ymm10_8;
sub ymm10_9 ymm6_9 ymm10_9;
sub ymm10_a ymm6_a ymm10_a;
sub ymm10_b ymm6_b ymm10_b;
sub ymm10_c ymm6_c ymm10_c;
sub ymm10_d ymm6_d ymm10_d;
sub ymm10_e ymm6_e ymm10_e;
sub ymm10_f ymm6_f ymm10_f;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ecf3 *)
add ymm6_0 ymm7_0 ymm11_0;
add ymm6_1 ymm7_1 ymm11_1;
add ymm6_2 ymm7_2 ymm11_2;
add ymm6_3 ymm7_3 ymm11_3;
add ymm6_4 ymm7_4 ymm11_4;
add ymm6_5 ymm7_5 ymm11_5;
add ymm6_6 ymm7_6 ymm11_6;
add ymm6_7 ymm7_7 ymm11_7;
add ymm6_8 ymm7_8 ymm11_8;
add ymm6_9 ymm7_9 ymm11_9;
add ymm6_a ymm7_a ymm11_a;
add ymm6_b ymm7_b ymm11_b;
add ymm6_c ymm7_c ymm11_c;
add ymm6_d ymm7_d ymm11_d;
add ymm6_e ymm7_e ymm11_e;
add ymm6_f ymm7_f ymm11_f;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ecf8 *)
sub ymm11_0 ymm7_0 ymm11_0;
sub ymm11_1 ymm7_1 ymm11_1;
sub ymm11_2 ymm7_2 ymm11_2;
sub ymm11_3 ymm7_3 ymm11_3;
sub ymm11_4 ymm7_4 ymm11_4;
sub ymm11_5 ymm7_5 ymm11_5;
sub ymm11_6 ymm7_6 ymm11_6;
sub ymm11_7 ymm7_7 ymm11_7;
sub ymm11_8 ymm7_8 ymm11_8;
sub ymm11_9 ymm7_9 ymm11_9;
sub ymm11_a ymm7_a ymm11_a;
sub ymm11_b ymm7_b ymm11_b;
sub ymm11_c ymm7_c ymm11_c;
sub ymm11_d ymm7_d ymm11_d;
sub ymm11_e ymm7_e ymm11_e;
sub ymm11_f ymm7_f ymm11_f;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ecfd *)
sub ymm3_0 ymm3_0 ymm12_0;
sub ymm3_1 ymm3_1 ymm12_1;
sub ymm3_2 ymm3_2 ymm12_2;
sub ymm3_3 ymm3_3 ymm12_3;
sub ymm3_4 ymm3_4 ymm12_4;
sub ymm3_5 ymm3_5 ymm12_5;
sub ymm3_6 ymm3_6 ymm12_6;
sub ymm3_7 ymm3_7 ymm12_7;
sub ymm3_8 ymm3_8 ymm12_8;
sub ymm3_9 ymm3_9 ymm12_9;
sub ymm3_a ymm3_a ymm12_a;
sub ymm3_b ymm3_b ymm12_b;
sub ymm3_c ymm3_c ymm12_c;
sub ymm3_d ymm3_d ymm12_d;
sub ymm3_e ymm3_e ymm12_e;
sub ymm3_f ymm3_f ymm12_f;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ed02 *)
add ymm8_0 ymm8_0 ymm12_0;
add ymm8_1 ymm8_1 ymm12_1;
add ymm8_2 ymm8_2 ymm12_2;
add ymm8_3 ymm8_3 ymm12_3;
add ymm8_4 ymm8_4 ymm12_4;
add ymm8_5 ymm8_5 ymm12_5;
add ymm8_6 ymm8_6 ymm12_6;
add ymm8_7 ymm8_7 ymm12_7;
add ymm8_8 ymm8_8 ymm12_8;
add ymm8_9 ymm8_9 ymm12_9;
add ymm8_a ymm8_a ymm12_a;
add ymm8_b ymm8_b ymm12_b;
add ymm8_c ymm8_c ymm12_c;
add ymm8_d ymm8_d ymm12_d;
add ymm8_e ymm8_e ymm12_e;
add ymm8_f ymm8_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ed07 *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ed0c *)
add ymm9_0 ymm9_0 ymm13_0;
add ymm9_1 ymm9_1 ymm13_1;
add ymm9_2 ymm9_2 ymm13_2;
add ymm9_3 ymm9_3 ymm13_3;
add ymm9_4 ymm9_4 ymm13_4;
add ymm9_5 ymm9_5 ymm13_5;
add ymm9_6 ymm9_6 ymm13_6;
add ymm9_7 ymm9_7 ymm13_7;
add ymm9_8 ymm9_8 ymm13_8;
add ymm9_9 ymm9_9 ymm13_9;
add ymm9_a ymm9_a ymm13_a;
add ymm9_b ymm9_b ymm13_b;
add ymm9_c ymm9_c ymm13_c;
add ymm9_d ymm9_d ymm13_d;
add ymm9_e ymm9_e ymm13_e;
add ymm9_f ymm9_f ymm13_f;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ed11 *)
sub ymm5_0 ymm5_0 ymm14_0;
sub ymm5_1 ymm5_1 ymm14_1;
sub ymm5_2 ymm5_2 ymm14_2;
sub ymm5_3 ymm5_3 ymm14_3;
sub ymm5_4 ymm5_4 ymm14_4;
sub ymm5_5 ymm5_5 ymm14_5;
sub ymm5_6 ymm5_6 ymm14_6;
sub ymm5_7 ymm5_7 ymm14_7;
sub ymm5_8 ymm5_8 ymm14_8;
sub ymm5_9 ymm5_9 ymm14_9;
sub ymm5_a ymm5_a ymm14_a;
sub ymm5_b ymm5_b ymm14_b;
sub ymm5_c ymm5_c ymm14_c;
sub ymm5_d ymm5_d ymm14_d;
sub ymm5_e ymm5_e ymm14_e;
sub ymm5_f ymm5_f ymm14_f;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ed16 *)
add ymm10_0 ymm10_0 ymm14_0;
add ymm10_1 ymm10_1 ymm14_1;
add ymm10_2 ymm10_2 ymm14_2;
add ymm10_3 ymm10_3 ymm14_3;
add ymm10_4 ymm10_4 ymm14_4;
add ymm10_5 ymm10_5 ymm14_5;
add ymm10_6 ymm10_6 ymm14_6;
add ymm10_7 ymm10_7 ymm14_7;
add ymm10_8 ymm10_8 ymm14_8;
add ymm10_9 ymm10_9 ymm14_9;
add ymm10_a ymm10_a ymm14_a;
add ymm10_b ymm10_b ymm14_b;
add ymm10_c ymm10_c ymm14_c;
add ymm10_d ymm10_d ymm14_d;
add ymm10_e ymm10_e ymm14_e;
add ymm10_f ymm10_f ymm14_f;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ed1b *)
sub ymm6_0 ymm6_0 ymm15_0;
sub ymm6_1 ymm6_1 ymm15_1;
sub ymm6_2 ymm6_2 ymm15_2;
sub ymm6_3 ymm6_3 ymm15_3;
sub ymm6_4 ymm6_4 ymm15_4;
sub ymm6_5 ymm6_5 ymm15_5;
sub ymm6_6 ymm6_6 ymm15_6;
sub ymm6_7 ymm6_7 ymm15_7;
sub ymm6_8 ymm6_8 ymm15_8;
sub ymm6_9 ymm6_9 ymm15_9;
sub ymm6_a ymm6_a ymm15_a;
sub ymm6_b ymm6_b ymm15_b;
sub ymm6_c ymm6_c ymm15_c;
sub ymm6_d ymm6_d ymm15_d;
sub ymm6_e ymm6_e ymm15_e;
sub ymm6_f ymm6_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ed20 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffffb000; PC = 0x55555556ed25 *)
mov L0x7fffffffb000 ymm3_0;
mov L0x7fffffffb002 ymm3_1;
mov L0x7fffffffb004 ymm3_2;
mov L0x7fffffffb006 ymm3_3;
mov L0x7fffffffb008 ymm3_4;
mov L0x7fffffffb00a ymm3_5;
mov L0x7fffffffb00c ymm3_6;
mov L0x7fffffffb00e ymm3_7;
mov L0x7fffffffb010 ymm3_8;
mov L0x7fffffffb012 ymm3_9;
mov L0x7fffffffb014 ymm3_a;
mov L0x7fffffffb016 ymm3_b;
mov L0x7fffffffb018 ymm3_c;
mov L0x7fffffffb01a ymm3_d;
mov L0x7fffffffb01c ymm3_e;
mov L0x7fffffffb01e ymm3_f;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb020; PC = 0x55555556ed2d *)
mov L0x7fffffffb020 ymm4_0;
mov L0x7fffffffb022 ymm4_1;
mov L0x7fffffffb024 ymm4_2;
mov L0x7fffffffb026 ymm4_3;
mov L0x7fffffffb028 ymm4_4;
mov L0x7fffffffb02a ymm4_5;
mov L0x7fffffffb02c ymm4_6;
mov L0x7fffffffb02e ymm4_7;
mov L0x7fffffffb030 ymm4_8;
mov L0x7fffffffb032 ymm4_9;
mov L0x7fffffffb034 ymm4_a;
mov L0x7fffffffb036 ymm4_b;
mov L0x7fffffffb038 ymm4_c;
mov L0x7fffffffb03a ymm4_d;
mov L0x7fffffffb03c ymm4_e;
mov L0x7fffffffb03e ymm4_f;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb040; PC = 0x55555556ed35 *)
mov L0x7fffffffb040 ymm5_0;
mov L0x7fffffffb042 ymm5_1;
mov L0x7fffffffb044 ymm5_2;
mov L0x7fffffffb046 ymm5_3;
mov L0x7fffffffb048 ymm5_4;
mov L0x7fffffffb04a ymm5_5;
mov L0x7fffffffb04c ymm5_6;
mov L0x7fffffffb04e ymm5_7;
mov L0x7fffffffb050 ymm5_8;
mov L0x7fffffffb052 ymm5_9;
mov L0x7fffffffb054 ymm5_a;
mov L0x7fffffffb056 ymm5_b;
mov L0x7fffffffb058 ymm5_c;
mov L0x7fffffffb05a ymm5_d;
mov L0x7fffffffb05c ymm5_e;
mov L0x7fffffffb05e ymm5_f;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffffb060; PC = 0x55555556ed3d *)
mov L0x7fffffffb060 ymm6_0;
mov L0x7fffffffb062 ymm6_1;
mov L0x7fffffffb064 ymm6_2;
mov L0x7fffffffb066 ymm6_3;
mov L0x7fffffffb068 ymm6_4;
mov L0x7fffffffb06a ymm6_5;
mov L0x7fffffffb06c ymm6_6;
mov L0x7fffffffb06e ymm6_7;
mov L0x7fffffffb070 ymm6_8;
mov L0x7fffffffb072 ymm6_9;
mov L0x7fffffffb074 ymm6_a;
mov L0x7fffffffb076 ymm6_b;
mov L0x7fffffffb078 ymm6_c;
mov L0x7fffffffb07a ymm6_d;
mov L0x7fffffffb07c ymm6_e;
mov L0x7fffffffb07e ymm6_f;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb100; PC = 0x55555556ed45 *)
mov L0x7fffffffb100 ymm8_0;
mov L0x7fffffffb102 ymm8_1;
mov L0x7fffffffb104 ymm8_2;
mov L0x7fffffffb106 ymm8_3;
mov L0x7fffffffb108 ymm8_4;
mov L0x7fffffffb10a ymm8_5;
mov L0x7fffffffb10c ymm8_6;
mov L0x7fffffffb10e ymm8_7;
mov L0x7fffffffb110 ymm8_8;
mov L0x7fffffffb112 ymm8_9;
mov L0x7fffffffb114 ymm8_a;
mov L0x7fffffffb116 ymm8_b;
mov L0x7fffffffb118 ymm8_c;
mov L0x7fffffffb11a ymm8_d;
mov L0x7fffffffb11c ymm8_e;
mov L0x7fffffffb11e ymm8_f;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb120; PC = 0x55555556ed4d *)
mov L0x7fffffffb120 ymm9_0;
mov L0x7fffffffb122 ymm9_1;
mov L0x7fffffffb124 ymm9_2;
mov L0x7fffffffb126 ymm9_3;
mov L0x7fffffffb128 ymm9_4;
mov L0x7fffffffb12a ymm9_5;
mov L0x7fffffffb12c ymm9_6;
mov L0x7fffffffb12e ymm9_7;
mov L0x7fffffffb130 ymm9_8;
mov L0x7fffffffb132 ymm9_9;
mov L0x7fffffffb134 ymm9_a;
mov L0x7fffffffb136 ymm9_b;
mov L0x7fffffffb138 ymm9_c;
mov L0x7fffffffb13a ymm9_d;
mov L0x7fffffffb13c ymm9_e;
mov L0x7fffffffb13e ymm9_f;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb140; PC = 0x55555556ed55 *)
mov L0x7fffffffb140 ymm10_0;
mov L0x7fffffffb142 ymm10_1;
mov L0x7fffffffb144 ymm10_2;
mov L0x7fffffffb146 ymm10_3;
mov L0x7fffffffb148 ymm10_4;
mov L0x7fffffffb14a ymm10_5;
mov L0x7fffffffb14c ymm10_6;
mov L0x7fffffffb14e ymm10_7;
mov L0x7fffffffb150 ymm10_8;
mov L0x7fffffffb152 ymm10_9;
mov L0x7fffffffb154 ymm10_a;
mov L0x7fffffffb156 ymm10_b;
mov L0x7fffffffb158 ymm10_c;
mov L0x7fffffffb15a ymm10_d;
mov L0x7fffffffb15c ymm10_e;
mov L0x7fffffffb15e ymm10_f;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb160; PC = 0x55555556ed5d *)
mov L0x7fffffffb160 ymm11_0;
mov L0x7fffffffb162 ymm11_1;
mov L0x7fffffffb164 ymm11_2;
mov L0x7fffffffb166 ymm11_3;
mov L0x7fffffffb168 ymm11_4;
mov L0x7fffffffb16a ymm11_5;
mov L0x7fffffffb16c ymm11_6;
mov L0x7fffffffb16e ymm11_7;
mov L0x7fffffffb170 ymm11_8;
mov L0x7fffffffb172 ymm11_9;
mov L0x7fffffffb174 ymm11_a;
mov L0x7fffffffb176 ymm11_b;
mov L0x7fffffffb178 ymm11_c;
mov L0x7fffffffb17a ymm11_d;
mov L0x7fffffffb17c ymm11_e;
mov L0x7fffffffb17e ymm11_f;

(*********** SUMMARY OF LEVEL 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(L0x7fffffffaf80*(x**0) + L0x7fffffffaf82*(x**1) + L0x7fffffffaf84*(x**2) +
 L0x7fffffffaf86*(x**3) + L0x7fffffffaf88*(x**4) + L0x7fffffffaf8a*(x**5) +
 L0x7fffffffaf8c*(x**6) + L0x7fffffffaf8e*(x**7) + L0x7fffffffaf90*(x**8) +
 L0x7fffffffaf92*(x**9) + L0x7fffffffaf94*(x**10) + L0x7fffffffaf96*(x**11) +
 L0x7fffffffaf98*(x**12) + L0x7fffffffaf9a*(x**13) + L0x7fffffffaf9c*(x**14) +
 L0x7fffffffaf9e*(x**15) + L0x7fffffffafa0*(x**16) + L0x7fffffffafa2*(x**17) +
 L0x7fffffffafa4*(x**18) + L0x7fffffffafa6*(x**19) + L0x7fffffffafa8*(x**20) +
 L0x7fffffffafaa*(x**21) + L0x7fffffffafac*(x**22) + L0x7fffffffafae*(x**23) +
 L0x7fffffffafb0*(x**24) + L0x7fffffffafb2*(x**25) + L0x7fffffffafb4*(x**26) +
 L0x7fffffffafb6*(x**27) + L0x7fffffffafb8*(x**28) + L0x7fffffffafba*(x**29) +
 L0x7fffffffafbc*(x**30) + L0x7fffffffafbe*(x**31) + L0x7fffffffafc0*(x**32) +
 L0x7fffffffafc2*(x**33) + L0x7fffffffafc4*(x**34) + L0x7fffffffafc6*(x**35) +
 L0x7fffffffafc8*(x**36) + L0x7fffffffafca*(x**37) + L0x7fffffffafcc*(x**38) +
 L0x7fffffffafce*(x**39) + L0x7fffffffafd0*(x**40) + L0x7fffffffafd2*(x**41) +
 L0x7fffffffafd4*(x**42) + L0x7fffffffafd6*(x**43) + L0x7fffffffafd8*(x**44) +
 L0x7fffffffafda*(x**45) + L0x7fffffffafdc*(x**46) + L0x7fffffffafde*(x**47) +
 L0x7fffffffafe0*(x**48) + L0x7fffffffafe2*(x**49) + L0x7fffffffafe4*(x**50) +
 L0x7fffffffafe6*(x**51) + L0x7fffffffafe8*(x**52) + L0x7fffffffafea*(x**53) +
 L0x7fffffffafec*(x**54) + L0x7fffffffafee*(x**55) + L0x7fffffffaff0*(x**56) +
 L0x7fffffffaff2*(x**57) + L0x7fffffffaff4*(x**58) + L0x7fffffffaff6*(x**59) +
 L0x7fffffffaff8*(x**60) + L0x7fffffffaffa*(x**61) + L0x7fffffffaffc*(x**62) +
 L0x7fffffffaffe*(x**63) + L0x7fffffffb000*(x**64) + L0x7fffffffb002*(x**65) +
 L0x7fffffffb004*(x**66) + L0x7fffffffb006*(x**67) + L0x7fffffffb008*(x**68) +
 L0x7fffffffb00a*(x**69) + L0x7fffffffb00c*(x**70) + L0x7fffffffb00e*(x**71) +
 L0x7fffffffb010*(x**72) + L0x7fffffffb012*(x**73) + L0x7fffffffb014*(x**74) +
 L0x7fffffffb016*(x**75) + L0x7fffffffb018*(x**76) + L0x7fffffffb01a*(x**77) +
 L0x7fffffffb01c*(x**78) + L0x7fffffffb01e*(x**79) + L0x7fffffffb020*(x**80) +
 L0x7fffffffb022*(x**81) + L0x7fffffffb024*(x**82) + L0x7fffffffb026*(x**83) +
 L0x7fffffffb028*(x**84) + L0x7fffffffb02a*(x**85) + L0x7fffffffb02c*(x**86) +
 L0x7fffffffb02e*(x**87) + L0x7fffffffb030*(x**88) + L0x7fffffffb032*(x**89) +
 L0x7fffffffb034*(x**90) + L0x7fffffffb036*(x**91) + L0x7fffffffb038*(x**92) +
 L0x7fffffffb03a*(x**93) + L0x7fffffffb03c*(x**94) + L0x7fffffffb03e*(x**95) +
 L0x7fffffffb040*(x**96) + L0x7fffffffb042*(x**97) + L0x7fffffffb044*(x**98) +
 L0x7fffffffb046*(x**99) + L0x7fffffffb048*(x**100) + L0x7fffffffb04a*(x**101) +
 L0x7fffffffb04c*(x**102) + L0x7fffffffb04e*(x**103) + L0x7fffffffb050*(x**104) +
 L0x7fffffffb052*(x**105) + L0x7fffffffb054*(x**106) + L0x7fffffffb056*(x**107) +
 L0x7fffffffb058*(x**108) + L0x7fffffffb05a*(x**109) + L0x7fffffffb05c*(x**110) +
 L0x7fffffffb05e*(x**111) + L0x7fffffffb060*(x**112) + L0x7fffffffb062*(x**113) +
 L0x7fffffffb064*(x**114) + L0x7fffffffb066*(x**115) + L0x7fffffffb068*(x**116) +
 L0x7fffffffb06a*(x**117) + L0x7fffffffb06c*(x**118) + L0x7fffffffb06e*(x**119) +
 L0x7fffffffb070*(x**120) + L0x7fffffffb072*(x**121) + L0x7fffffffb074*(x**122) +
 L0x7fffffffb076*(x**123) + L0x7fffffffb078*(x**124) + L0x7fffffffb07a*(x**125) +
 L0x7fffffffb07c*(x**126) + L0x7fffffffb07e*(x**127))
[3329, x**128 - (1729)],
eqmod (inp_poly**2)
(L0x7fffffffb080*(x**0) + L0x7fffffffb082*(x**1) + L0x7fffffffb084*(x**2) +
 L0x7fffffffb086*(x**3) + L0x7fffffffb088*(x**4) + L0x7fffffffb08a*(x**5) +
 L0x7fffffffb08c*(x**6) + L0x7fffffffb08e*(x**7) + L0x7fffffffb090*(x**8) +
 L0x7fffffffb092*(x**9) + L0x7fffffffb094*(x**10) + L0x7fffffffb096*(x**11) +
 L0x7fffffffb098*(x**12) + L0x7fffffffb09a*(x**13) + L0x7fffffffb09c*(x**14) +
 L0x7fffffffb09e*(x**15) + L0x7fffffffb0a0*(x**16) + L0x7fffffffb0a2*(x**17) +
 L0x7fffffffb0a4*(x**18) + L0x7fffffffb0a6*(x**19) + L0x7fffffffb0a8*(x**20) +
 L0x7fffffffb0aa*(x**21) + L0x7fffffffb0ac*(x**22) + L0x7fffffffb0ae*(x**23) +
 L0x7fffffffb0b0*(x**24) + L0x7fffffffb0b2*(x**25) + L0x7fffffffb0b4*(x**26) +
 L0x7fffffffb0b6*(x**27) + L0x7fffffffb0b8*(x**28) + L0x7fffffffb0ba*(x**29) +
 L0x7fffffffb0bc*(x**30) + L0x7fffffffb0be*(x**31) + L0x7fffffffb0c0*(x**32) +
 L0x7fffffffb0c2*(x**33) + L0x7fffffffb0c4*(x**34) + L0x7fffffffb0c6*(x**35) +
 L0x7fffffffb0c8*(x**36) + L0x7fffffffb0ca*(x**37) + L0x7fffffffb0cc*(x**38) +
 L0x7fffffffb0ce*(x**39) + L0x7fffffffb0d0*(x**40) + L0x7fffffffb0d2*(x**41) +
 L0x7fffffffb0d4*(x**42) + L0x7fffffffb0d6*(x**43) + L0x7fffffffb0d8*(x**44) +
 L0x7fffffffb0da*(x**45) + L0x7fffffffb0dc*(x**46) + L0x7fffffffb0de*(x**47) +
 L0x7fffffffb0e0*(x**48) + L0x7fffffffb0e2*(x**49) + L0x7fffffffb0e4*(x**50) +
 L0x7fffffffb0e6*(x**51) + L0x7fffffffb0e8*(x**52) + L0x7fffffffb0ea*(x**53) +
 L0x7fffffffb0ec*(x**54) + L0x7fffffffb0ee*(x**55) + L0x7fffffffb0f0*(x**56) +
 L0x7fffffffb0f2*(x**57) + L0x7fffffffb0f4*(x**58) + L0x7fffffffb0f6*(x**59) +
 L0x7fffffffb0f8*(x**60) + L0x7fffffffb0fa*(x**61) + L0x7fffffffb0fc*(x**62) +
 L0x7fffffffb0fe*(x**63) + L0x7fffffffb100*(x**64) + L0x7fffffffb102*(x**65) +
 L0x7fffffffb104*(x**66) + L0x7fffffffb106*(x**67) + L0x7fffffffb108*(x**68) +
 L0x7fffffffb10a*(x**69) + L0x7fffffffb10c*(x**70) + L0x7fffffffb10e*(x**71) +
 L0x7fffffffb110*(x**72) + L0x7fffffffb112*(x**73) + L0x7fffffffb114*(x**74) +
 L0x7fffffffb116*(x**75) + L0x7fffffffb118*(x**76) + L0x7fffffffb11a*(x**77) +
 L0x7fffffffb11c*(x**78) + L0x7fffffffb11e*(x**79) + L0x7fffffffb120*(x**80) +
 L0x7fffffffb122*(x**81) + L0x7fffffffb124*(x**82) + L0x7fffffffb126*(x**83) +
 L0x7fffffffb128*(x**84) + L0x7fffffffb12a*(x**85) + L0x7fffffffb12c*(x**86) +
 L0x7fffffffb12e*(x**87) + L0x7fffffffb130*(x**88) + L0x7fffffffb132*(x**89) +
 L0x7fffffffb134*(x**90) + L0x7fffffffb136*(x**91) + L0x7fffffffb138*(x**92) +
 L0x7fffffffb13a*(x**93) + L0x7fffffffb13c*(x**94) + L0x7fffffffb13e*(x**95) +
 L0x7fffffffb140*(x**96) + L0x7fffffffb142*(x**97) + L0x7fffffffb144*(x**98) +
 L0x7fffffffb146*(x**99) + L0x7fffffffb148*(x**100) + L0x7fffffffb14a*(x**101) +
 L0x7fffffffb14c*(x**102) + L0x7fffffffb14e*(x**103) + L0x7fffffffb150*(x**104) +
 L0x7fffffffb152*(x**105) + L0x7fffffffb154*(x**106) + L0x7fffffffb156*(x**107) +
 L0x7fffffffb158*(x**108) + L0x7fffffffb15a*(x**109) + L0x7fffffffb15c*(x**110) +
 L0x7fffffffb15e*(x**111) + L0x7fffffffb160*(x**112) + L0x7fffffffb162*(x**113) +
 L0x7fffffffb164*(x**114) + L0x7fffffffb166*(x**115) + L0x7fffffffb168*(x**116) +
 L0x7fffffffb16a*(x**117) + L0x7fffffffb16c*(x**118) + L0x7fffffffb16e*(x**119) +
 L0x7fffffffb170*(x**120) + L0x7fffffffb172*(x**121) + L0x7fffffffb174*(x**122) +
 L0x7fffffffb176*(x**123) + L0x7fffffffb178*(x**124) + L0x7fffffffb17a*(x**125) +
 L0x7fffffffb17c*(x**126) + L0x7fffffffb17e*(x**127))
[3329, x**128 - (1600)]]
&&
and [
(-6658)@16 <s L0x7fffffffaf80, L0x7fffffffaf80 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf82, L0x7fffffffaf82 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf84, L0x7fffffffaf84 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf86, L0x7fffffffaf86 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf88, L0x7fffffffaf88 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf8a, L0x7fffffffaf8a <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf8c, L0x7fffffffaf8c <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf8e, L0x7fffffffaf8e <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf90, L0x7fffffffaf90 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf92, L0x7fffffffaf92 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf94, L0x7fffffffaf94 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf96, L0x7fffffffaf96 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf98, L0x7fffffffaf98 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf9a, L0x7fffffffaf9a <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf9c, L0x7fffffffaf9c <s (6658)@16,
(-6658)@16 <s L0x7fffffffaf9e, L0x7fffffffaf9e <s (6658)@16,
(-6658)@16 <s L0x7fffffffafa0, L0x7fffffffafa0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafa2, L0x7fffffffafa2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafa4, L0x7fffffffafa4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafa6, L0x7fffffffafa6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafa8, L0x7fffffffafa8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafaa, L0x7fffffffafaa <s (6658)@16,
(-6658)@16 <s L0x7fffffffafac, L0x7fffffffafac <s (6658)@16,
(-6658)@16 <s L0x7fffffffafae, L0x7fffffffafae <s (6658)@16,
(-6658)@16 <s L0x7fffffffafb0, L0x7fffffffafb0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafb2, L0x7fffffffafb2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafb4, L0x7fffffffafb4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafb6, L0x7fffffffafb6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafb8, L0x7fffffffafb8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafba, L0x7fffffffafba <s (6658)@16,
(-6658)@16 <s L0x7fffffffafbc, L0x7fffffffafbc <s (6658)@16,
(-6658)@16 <s L0x7fffffffafbe, L0x7fffffffafbe <s (6658)@16,
(-6658)@16 <s L0x7fffffffafc0, L0x7fffffffafc0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafc2, L0x7fffffffafc2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafc4, L0x7fffffffafc4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafc6, L0x7fffffffafc6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafc8, L0x7fffffffafc8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafca, L0x7fffffffafca <s (6658)@16,
(-6658)@16 <s L0x7fffffffafcc, L0x7fffffffafcc <s (6658)@16,
(-6658)@16 <s L0x7fffffffafce, L0x7fffffffafce <s (6658)@16,
(-6658)@16 <s L0x7fffffffafd0, L0x7fffffffafd0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafd2, L0x7fffffffafd2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafd4, L0x7fffffffafd4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafd6, L0x7fffffffafd6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafd8, L0x7fffffffafd8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafda, L0x7fffffffafda <s (6658)@16,
(-6658)@16 <s L0x7fffffffafdc, L0x7fffffffafdc <s (6658)@16,
(-6658)@16 <s L0x7fffffffafde, L0x7fffffffafde <s (6658)@16,
(-6658)@16 <s L0x7fffffffafe0, L0x7fffffffafe0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafe2, L0x7fffffffafe2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafe4, L0x7fffffffafe4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafe6, L0x7fffffffafe6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafe8, L0x7fffffffafe8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffafea, L0x7fffffffafea <s (6658)@16,
(-6658)@16 <s L0x7fffffffafec, L0x7fffffffafec <s (6658)@16,
(-6658)@16 <s L0x7fffffffafee, L0x7fffffffafee <s (6658)@16,
(-6658)@16 <s L0x7fffffffaff0, L0x7fffffffaff0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaff2, L0x7fffffffaff2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaff4, L0x7fffffffaff4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaff6, L0x7fffffffaff6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaff8, L0x7fffffffaff8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffaffa, L0x7fffffffaffa <s (6658)@16,
(-6658)@16 <s L0x7fffffffaffc, L0x7fffffffaffc <s (6658)@16,
(-6658)@16 <s L0x7fffffffaffe, L0x7fffffffaffe <s (6658)@16,
(-6658)@16 <s L0x7fffffffb000, L0x7fffffffb000 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb002, L0x7fffffffb002 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb004, L0x7fffffffb004 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb006, L0x7fffffffb006 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb008, L0x7fffffffb008 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb00a, L0x7fffffffb00a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb00c, L0x7fffffffb00c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb00e, L0x7fffffffb00e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb010, L0x7fffffffb010 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb012, L0x7fffffffb012 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb014, L0x7fffffffb014 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb016, L0x7fffffffb016 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb018, L0x7fffffffb018 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb01a, L0x7fffffffb01a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb01c, L0x7fffffffb01c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb01e, L0x7fffffffb01e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb020, L0x7fffffffb020 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb022, L0x7fffffffb022 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb024, L0x7fffffffb024 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb026, L0x7fffffffb026 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb028, L0x7fffffffb028 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb02a, L0x7fffffffb02a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb02c, L0x7fffffffb02c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb02e, L0x7fffffffb02e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb030, L0x7fffffffb030 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb032, L0x7fffffffb032 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb034, L0x7fffffffb034 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb036, L0x7fffffffb036 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb038, L0x7fffffffb038 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb03a, L0x7fffffffb03a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb03c, L0x7fffffffb03c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb03e, L0x7fffffffb03e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb040, L0x7fffffffb040 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb042, L0x7fffffffb042 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb044, L0x7fffffffb044 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb046, L0x7fffffffb046 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb048, L0x7fffffffb048 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb04a, L0x7fffffffb04a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb04c, L0x7fffffffb04c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb04e, L0x7fffffffb04e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb050, L0x7fffffffb050 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb052, L0x7fffffffb052 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb054, L0x7fffffffb054 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb056, L0x7fffffffb056 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb058, L0x7fffffffb058 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb05a, L0x7fffffffb05a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb05c, L0x7fffffffb05c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb05e, L0x7fffffffb05e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb060, L0x7fffffffb060 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb062, L0x7fffffffb062 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb064, L0x7fffffffb064 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb066, L0x7fffffffb066 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb068, L0x7fffffffb068 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb06a, L0x7fffffffb06a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb06c, L0x7fffffffb06c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb06e, L0x7fffffffb06e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb070, L0x7fffffffb070 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb072, L0x7fffffffb072 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb074, L0x7fffffffb074 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb076, L0x7fffffffb076 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb078, L0x7fffffffb078 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb07a, L0x7fffffffb07a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb07c, L0x7fffffffb07c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb07e, L0x7fffffffb07e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb080, L0x7fffffffb080 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb082, L0x7fffffffb082 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb084, L0x7fffffffb084 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb086, L0x7fffffffb086 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb088, L0x7fffffffb088 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb08a, L0x7fffffffb08a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb08c, L0x7fffffffb08c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb08e, L0x7fffffffb08e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb090, L0x7fffffffb090 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb092, L0x7fffffffb092 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb094, L0x7fffffffb094 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb096, L0x7fffffffb096 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb098, L0x7fffffffb098 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb09a, L0x7fffffffb09a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb09c, L0x7fffffffb09c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb09e, L0x7fffffffb09e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a0, L0x7fffffffb0a0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a2, L0x7fffffffb0a2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a4, L0x7fffffffb0a4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a6, L0x7fffffffb0a6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a8, L0x7fffffffb0a8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0aa, L0x7fffffffb0aa <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ac, L0x7fffffffb0ac <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ae, L0x7fffffffb0ae <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b0, L0x7fffffffb0b0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b2, L0x7fffffffb0b2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b4, L0x7fffffffb0b4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b6, L0x7fffffffb0b6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b8, L0x7fffffffb0b8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ba, L0x7fffffffb0ba <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0bc, L0x7fffffffb0bc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0be, L0x7fffffffb0be <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c0, L0x7fffffffb0c0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c2, L0x7fffffffb0c2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c4, L0x7fffffffb0c4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c6, L0x7fffffffb0c6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c8, L0x7fffffffb0c8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ca, L0x7fffffffb0ca <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0cc, L0x7fffffffb0cc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ce, L0x7fffffffb0ce <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d0, L0x7fffffffb0d0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d2, L0x7fffffffb0d2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d4, L0x7fffffffb0d4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d6, L0x7fffffffb0d6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d8, L0x7fffffffb0d8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0da, L0x7fffffffb0da <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0dc, L0x7fffffffb0dc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0de, L0x7fffffffb0de <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e0, L0x7fffffffb0e0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e2, L0x7fffffffb0e2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e4, L0x7fffffffb0e4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e6, L0x7fffffffb0e6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e8, L0x7fffffffb0e8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ea, L0x7fffffffb0ea <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ec, L0x7fffffffb0ec <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ee, L0x7fffffffb0ee <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f0, L0x7fffffffb0f0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f2, L0x7fffffffb0f2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f4, L0x7fffffffb0f4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f6, L0x7fffffffb0f6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f8, L0x7fffffffb0f8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0fa, L0x7fffffffb0fa <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0fc, L0x7fffffffb0fc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0fe, L0x7fffffffb0fe <s (6658)@16,
(-6658)@16 <s L0x7fffffffb100, L0x7fffffffb100 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb102, L0x7fffffffb102 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb104, L0x7fffffffb104 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb106, L0x7fffffffb106 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb108, L0x7fffffffb108 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb10a, L0x7fffffffb10a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb10c, L0x7fffffffb10c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb10e, L0x7fffffffb10e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb110, L0x7fffffffb110 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb112, L0x7fffffffb112 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb114, L0x7fffffffb114 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb116, L0x7fffffffb116 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb118, L0x7fffffffb118 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb11a, L0x7fffffffb11a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb11c, L0x7fffffffb11c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb11e, L0x7fffffffb11e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb120, L0x7fffffffb120 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb122, L0x7fffffffb122 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb124, L0x7fffffffb124 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb126, L0x7fffffffb126 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb128, L0x7fffffffb128 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb12a, L0x7fffffffb12a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb12c, L0x7fffffffb12c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb12e, L0x7fffffffb12e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb130, L0x7fffffffb130 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb132, L0x7fffffffb132 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb134, L0x7fffffffb134 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb136, L0x7fffffffb136 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb138, L0x7fffffffb138 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb13a, L0x7fffffffb13a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb13c, L0x7fffffffb13c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb13e, L0x7fffffffb13e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb140, L0x7fffffffb140 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb142, L0x7fffffffb142 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb144, L0x7fffffffb144 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb146, L0x7fffffffb146 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb148, L0x7fffffffb148 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb14a, L0x7fffffffb14a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb14c, L0x7fffffffb14c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb14e, L0x7fffffffb14e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb150, L0x7fffffffb150 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb152, L0x7fffffffb152 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb154, L0x7fffffffb154 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb156, L0x7fffffffb156 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb158, L0x7fffffffb158 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb15a, L0x7fffffffb15a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb15c, L0x7fffffffb15c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb15e, L0x7fffffffb15e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb160, L0x7fffffffb160 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb162, L0x7fffffffb162 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb164, L0x7fffffffb164 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb166, L0x7fffffffb166 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb168, L0x7fffffffb168 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb16a, L0x7fffffffb16a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb16c, L0x7fffffffb16c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb16e, L0x7fffffffb16e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb170, L0x7fffffffb170 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb172, L0x7fffffffb172 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb174, L0x7fffffffb174 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb176, L0x7fffffffb176 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb178, L0x7fffffffb178 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb17a, L0x7fffffffb17a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb17c, L0x7fffffffb17c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb17e, L0x7fffffffb17e <s (6658)@16];


(* vmovdqa 0x160(%rsi),%ymm15                      #! EA = L0x555555639740; Value = 0x3999399939993999; PC = 0x55555556ed65 *)
mov ymm15_0 L0x555555639740;
mov ymm15_1 L0x555555639742;
mov ymm15_2 L0x555555639744;
mov ymm15_3 L0x555555639746;
mov ymm15_4 L0x555555639748;
mov ymm15_5 L0x55555563974a;
mov ymm15_6 L0x55555563974c;
mov ymm15_7 L0x55555563974e;
mov ymm15_8 L0x555555639750;
mov ymm15_9 L0x555555639752;
mov ymm15_a L0x555555639754;
mov ymm15_b L0x555555639756;
mov ymm15_c L0x555555639758;
mov ymm15_d L0x55555563975a;
mov ymm15_e L0x55555563975c;
mov ymm15_f L0x55555563975e;
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb000; Value = 0xfffe0000063f0640; PC = 0x55555556ed6d *)
mov ymm8_0 L0x7fffffffb000;
mov ymm8_1 L0x7fffffffb002;
mov ymm8_2 L0x7fffffffb004;
mov ymm8_3 L0x7fffffffb006;
mov ymm8_4 L0x7fffffffb008;
mov ymm8_5 L0x7fffffffb00a;
mov ymm8_6 L0x7fffffffb00c;
mov ymm8_7 L0x7fffffffb00e;
mov ymm8_8 L0x7fffffffb010;
mov ymm8_9 L0x7fffffffb012;
mov ymm8_a L0x7fffffffb014;
mov ymm8_b L0x7fffffffb016;
mov ymm8_c L0x7fffffffb018;
mov ymm8_d L0x7fffffffb01a;
mov ymm8_e L0x7fffffffb01c;
mov ymm8_f L0x7fffffffb01e;
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb020; Value = 0xf9be064006410640; PC = 0x55555556ed75 *)
mov ymm9_0 L0x7fffffffb020;
mov ymm9_1 L0x7fffffffb022;
mov ymm9_2 L0x7fffffffb024;
mov ymm9_3 L0x7fffffffb026;
mov ymm9_4 L0x7fffffffb028;
mov ymm9_5 L0x7fffffffb02a;
mov ymm9_6 L0x7fffffffb02c;
mov ymm9_7 L0x7fffffffb02e;
mov ymm9_8 L0x7fffffffb030;
mov ymm9_9 L0x7fffffffb032;
mov ymm9_a L0x7fffffffb034;
mov ymm9_b L0x7fffffffb036;
mov ymm9_c L0x7fffffffb038;
mov ymm9_d L0x7fffffffb03a;
mov ymm9_e L0x7fffffffb03c;
mov ymm9_f L0x7fffffffb03e;
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb040; Value = 0xf9c1f9bf0640ffff; PC = 0x55555556ed7d *)
mov ymm10_0 L0x7fffffffb040;
mov ymm10_1 L0x7fffffffb042;
mov ymm10_2 L0x7fffffffb044;
mov ymm10_3 L0x7fffffffb046;
mov ymm10_4 L0x7fffffffb048;
mov ymm10_5 L0x7fffffffb04a;
mov ymm10_6 L0x7fffffffb04c;
mov ymm10_7 L0x7fffffffb04e;
mov ymm10_8 L0x7fffffffb050;
mov ymm10_9 L0x7fffffffb052;
mov ymm10_a L0x7fffffffb054;
mov ymm10_b L0x7fffffffb056;
mov ymm10_c L0x7fffffffb058;
mov ymm10_d L0x7fffffffb05a;
mov ymm10_e L0x7fffffffb05c;
mov ymm10_f L0x7fffffffb05e;
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb060; Value = 0xfffe063ff9c0f9c0; PC = 0x55555556ed85 *)
mov ymm11_0 L0x7fffffffb060;
mov ymm11_1 L0x7fffffffb062;
mov ymm11_2 L0x7fffffffb064;
mov ymm11_3 L0x7fffffffb066;
mov ymm11_4 L0x7fffffffb068;
mov ymm11_5 L0x7fffffffb06a;
mov ymm11_6 L0x7fffffffb06c;
mov ymm11_7 L0x7fffffffb06e;
mov ymm11_8 L0x7fffffffb070;
mov ymm11_9 L0x7fffffffb072;
mov ymm11_a L0x7fffffffb074;
mov ymm11_b L0x7fffffffb076;
mov ymm11_c L0x7fffffffb078;
mov ymm11_d L0x7fffffffb07a;
mov ymm11_e L0x7fffffffb07c;
mov ymm11_f L0x7fffffffb07e;
(* vmovdqa 0x180(%rsi),%ymm2                       #! EA = L0x555555639760; Value = 0xfe99fe99fe99fe99; PC = 0x55555556ed8d *)
mov ymm2_0 L0x555555639760;
mov ymm2_1 L0x555555639762;
mov ymm2_2 L0x555555639764;
mov ymm2_3 L0x555555639766;
mov ymm2_4 L0x555555639768;
mov ymm2_5 L0x55555563976a;
mov ymm2_6 L0x55555563976c;
mov ymm2_7 L0x55555563976e;
mov ymm2_8 L0x555555639770;
mov ymm2_9 L0x555555639772;
mov ymm2_a L0x555555639774;
mov ymm2_b L0x555555639776;
mov ymm2_c L0x555555639778;
mov ymm2_d L0x55555563977a;
mov ymm2_e L0x55555563977c;
mov ymm2_f L0x55555563977e;
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ed95 *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ed9a *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ed9f *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eda4 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eda9 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556edad *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556edb1 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556edb5 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffaf80; Value = 0x0640ffff0640f9c0; PC = 0x55555556edb9 *)
mov ymm4_0 L0x7fffffffaf80;
mov ymm4_1 L0x7fffffffaf82;
mov ymm4_2 L0x7fffffffaf84;
mov ymm4_3 L0x7fffffffaf86;
mov ymm4_4 L0x7fffffffaf88;
mov ymm4_5 L0x7fffffffaf8a;
mov ymm4_6 L0x7fffffffaf8c;
mov ymm4_7 L0x7fffffffaf8e;
mov ymm4_8 L0x7fffffffaf90;
mov ymm4_9 L0x7fffffffaf92;
mov ymm4_a L0x7fffffffaf94;
mov ymm4_b L0x7fffffffaf96;
mov ymm4_c L0x7fffffffaf98;
mov ymm4_d L0x7fffffffaf9a;
mov ymm4_e L0x7fffffffaf9c;
mov ymm4_f L0x7fffffffaf9e;
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffafa0; Value = 0xf9c1f9c1063f063f; PC = 0x55555556edbd *)
mov ymm5_0 L0x7fffffffafa0;
mov ymm5_1 L0x7fffffffafa2;
mov ymm5_2 L0x7fffffffafa4;
mov ymm5_3 L0x7fffffffafa6;
mov ymm5_4 L0x7fffffffafa8;
mov ymm5_5 L0x7fffffffafaa;
mov ymm5_6 L0x7fffffffafac;
mov ymm5_7 L0x7fffffffafae;
mov ymm5_8 L0x7fffffffafb0;
mov ymm5_9 L0x7fffffffafb2;
mov ymm5_a L0x7fffffffafb4;
mov ymm5_b L0x7fffffffafb6;
mov ymm5_c L0x7fffffffafb8;
mov ymm5_d L0x7fffffffafba;
mov ymm5_e L0x7fffffffafbc;
mov ymm5_f L0x7fffffffafbe;
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffafc0; Value = 0x00010000f9bf0000; PC = 0x55555556edc2 *)
mov ymm6_0 L0x7fffffffafc0;
mov ymm6_1 L0x7fffffffafc2;
mov ymm6_2 L0x7fffffffafc4;
mov ymm6_3 L0x7fffffffafc6;
mov ymm6_4 L0x7fffffffafc8;
mov ymm6_5 L0x7fffffffafca;
mov ymm6_6 L0x7fffffffafcc;
mov ymm6_7 L0x7fffffffafce;
mov ymm6_8 L0x7fffffffafd0;
mov ymm6_9 L0x7fffffffafd2;
mov ymm6_a L0x7fffffffafd4;
mov ymm6_b L0x7fffffffafd6;
mov ymm6_c L0x7fffffffafd8;
mov ymm6_d L0x7fffffffafda;
mov ymm6_e L0x7fffffffafdc;
mov ymm6_f L0x7fffffffafde;
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffafe0; Value = 0x0001ff800001ffff; PC = 0x55555556edc7 *)
mov ymm7_0 L0x7fffffffafe0;
mov ymm7_1 L0x7fffffffafe2;
mov ymm7_2 L0x7fffffffafe4;
mov ymm7_3 L0x7fffffffafe6;
mov ymm7_4 L0x7fffffffafe8;
mov ymm7_5 L0x7fffffffafea;
mov ymm7_6 L0x7fffffffafec;
mov ymm7_7 L0x7fffffffafee;
mov ymm7_8 L0x7fffffffaff0;
mov ymm7_9 L0x7fffffffaff2;
mov ymm7_a L0x7fffffffaff4;
mov ymm7_b L0x7fffffffaff6;
mov ymm7_c L0x7fffffffaff8;
mov ymm7_d L0x7fffffffaffa;
mov ymm7_e L0x7fffffffaffc;
mov ymm7_f L0x7fffffffaffe;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556edcc *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556edd0 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556edd4 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556edd8 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556eddc *)
add ymm3_0 ymm4_0 ymm8_0;
add ymm3_1 ymm4_1 ymm8_1;
add ymm3_2 ymm4_2 ymm8_2;
add ymm3_3 ymm4_3 ymm8_3;
add ymm3_4 ymm4_4 ymm8_4;
add ymm3_5 ymm4_5 ymm8_5;
add ymm3_6 ymm4_6 ymm8_6;
add ymm3_7 ymm4_7 ymm8_7;
add ymm3_8 ymm4_8 ymm8_8;
add ymm3_9 ymm4_9 ymm8_9;
add ymm3_a ymm4_a ymm8_a;
add ymm3_b ymm4_b ymm8_b;
add ymm3_c ymm4_c ymm8_c;
add ymm3_d ymm4_d ymm8_d;
add ymm3_e ymm4_e ymm8_e;
add ymm3_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ede1 *)
sub ymm8_0 ymm4_0 ymm8_0;
sub ymm8_1 ymm4_1 ymm8_1;
sub ymm8_2 ymm4_2 ymm8_2;
sub ymm8_3 ymm4_3 ymm8_3;
sub ymm8_4 ymm4_4 ymm8_4;
sub ymm8_5 ymm4_5 ymm8_5;
sub ymm8_6 ymm4_6 ymm8_6;
sub ymm8_7 ymm4_7 ymm8_7;
sub ymm8_8 ymm4_8 ymm8_8;
sub ymm8_9 ymm4_9 ymm8_9;
sub ymm8_a ymm4_a ymm8_a;
sub ymm8_b ymm4_b ymm8_b;
sub ymm8_c ymm4_c ymm8_c;
sub ymm8_d ymm4_d ymm8_d;
sub ymm8_e ymm4_e ymm8_e;
sub ymm8_f ymm4_f ymm8_f;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ede6 *)
add ymm4_0 ymm5_0 ymm9_0;
add ymm4_1 ymm5_1 ymm9_1;
add ymm4_2 ymm5_2 ymm9_2;
add ymm4_3 ymm5_3 ymm9_3;
add ymm4_4 ymm5_4 ymm9_4;
add ymm4_5 ymm5_5 ymm9_5;
add ymm4_6 ymm5_6 ymm9_6;
add ymm4_7 ymm5_7 ymm9_7;
add ymm4_8 ymm5_8 ymm9_8;
add ymm4_9 ymm5_9 ymm9_9;
add ymm4_a ymm5_a ymm9_a;
add ymm4_b ymm5_b ymm9_b;
add ymm4_c ymm5_c ymm9_c;
add ymm4_d ymm5_d ymm9_d;
add ymm4_e ymm5_e ymm9_e;
add ymm4_f ymm5_f ymm9_f;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556edeb *)
sub ymm9_0 ymm5_0 ymm9_0;
sub ymm9_1 ymm5_1 ymm9_1;
sub ymm9_2 ymm5_2 ymm9_2;
sub ymm9_3 ymm5_3 ymm9_3;
sub ymm9_4 ymm5_4 ymm9_4;
sub ymm9_5 ymm5_5 ymm9_5;
sub ymm9_6 ymm5_6 ymm9_6;
sub ymm9_7 ymm5_7 ymm9_7;
sub ymm9_8 ymm5_8 ymm9_8;
sub ymm9_9 ymm5_9 ymm9_9;
sub ymm9_a ymm5_a ymm9_a;
sub ymm9_b ymm5_b ymm9_b;
sub ymm9_c ymm5_c ymm9_c;
sub ymm9_d ymm5_d ymm9_d;
sub ymm9_e ymm5_e ymm9_e;
sub ymm9_f ymm5_f ymm9_f;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556edf0 *)
add ymm5_0 ymm6_0 ymm10_0;
add ymm5_1 ymm6_1 ymm10_1;
add ymm5_2 ymm6_2 ymm10_2;
add ymm5_3 ymm6_3 ymm10_3;
add ymm5_4 ymm6_4 ymm10_4;
add ymm5_5 ymm6_5 ymm10_5;
add ymm5_6 ymm6_6 ymm10_6;
add ymm5_7 ymm6_7 ymm10_7;
add ymm5_8 ymm6_8 ymm10_8;
add ymm5_9 ymm6_9 ymm10_9;
add ymm5_a ymm6_a ymm10_a;
add ymm5_b ymm6_b ymm10_b;
add ymm5_c ymm6_c ymm10_c;
add ymm5_d ymm6_d ymm10_d;
add ymm5_e ymm6_e ymm10_e;
add ymm5_f ymm6_f ymm10_f;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556edf5 *)
sub ymm10_0 ymm6_0 ymm10_0;
sub ymm10_1 ymm6_1 ymm10_1;
sub ymm10_2 ymm6_2 ymm10_2;
sub ymm10_3 ymm6_3 ymm10_3;
sub ymm10_4 ymm6_4 ymm10_4;
sub ymm10_5 ymm6_5 ymm10_5;
sub ymm10_6 ymm6_6 ymm10_6;
sub ymm10_7 ymm6_7 ymm10_7;
sub ymm10_8 ymm6_8 ymm10_8;
sub ymm10_9 ymm6_9 ymm10_9;
sub ymm10_a ymm6_a ymm10_a;
sub ymm10_b ymm6_b ymm10_b;
sub ymm10_c ymm6_c ymm10_c;
sub ymm10_d ymm6_d ymm10_d;
sub ymm10_e ymm6_e ymm10_e;
sub ymm10_f ymm6_f ymm10_f;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556edfa *)
add ymm6_0 ymm7_0 ymm11_0;
add ymm6_1 ymm7_1 ymm11_1;
add ymm6_2 ymm7_2 ymm11_2;
add ymm6_3 ymm7_3 ymm11_3;
add ymm6_4 ymm7_4 ymm11_4;
add ymm6_5 ymm7_5 ymm11_5;
add ymm6_6 ymm7_6 ymm11_6;
add ymm6_7 ymm7_7 ymm11_7;
add ymm6_8 ymm7_8 ymm11_8;
add ymm6_9 ymm7_9 ymm11_9;
add ymm6_a ymm7_a ymm11_a;
add ymm6_b ymm7_b ymm11_b;
add ymm6_c ymm7_c ymm11_c;
add ymm6_d ymm7_d ymm11_d;
add ymm6_e ymm7_e ymm11_e;
add ymm6_f ymm7_f ymm11_f;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556edff *)
sub ymm11_0 ymm7_0 ymm11_0;
sub ymm11_1 ymm7_1 ymm11_1;
sub ymm11_2 ymm7_2 ymm11_2;
sub ymm11_3 ymm7_3 ymm11_3;
sub ymm11_4 ymm7_4 ymm11_4;
sub ymm11_5 ymm7_5 ymm11_5;
sub ymm11_6 ymm7_6 ymm11_6;
sub ymm11_7 ymm7_7 ymm11_7;
sub ymm11_8 ymm7_8 ymm11_8;
sub ymm11_9 ymm7_9 ymm11_9;
sub ymm11_a ymm7_a ymm11_a;
sub ymm11_b ymm7_b ymm11_b;
sub ymm11_c ymm7_c ymm11_c;
sub ymm11_d ymm7_d ymm11_d;
sub ymm11_e ymm7_e ymm11_e;
sub ymm11_f ymm7_f ymm11_f;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ee04 *)
sub ymm3_0 ymm3_0 ymm12_0;
sub ymm3_1 ymm3_1 ymm12_1;
sub ymm3_2 ymm3_2 ymm12_2;
sub ymm3_3 ymm3_3 ymm12_3;
sub ymm3_4 ymm3_4 ymm12_4;
sub ymm3_5 ymm3_5 ymm12_5;
sub ymm3_6 ymm3_6 ymm12_6;
sub ymm3_7 ymm3_7 ymm12_7;
sub ymm3_8 ymm3_8 ymm12_8;
sub ymm3_9 ymm3_9 ymm12_9;
sub ymm3_a ymm3_a ymm12_a;
sub ymm3_b ymm3_b ymm12_b;
sub ymm3_c ymm3_c ymm12_c;
sub ymm3_d ymm3_d ymm12_d;
sub ymm3_e ymm3_e ymm12_e;
sub ymm3_f ymm3_f ymm12_f;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ee09 *)
add ymm8_0 ymm8_0 ymm12_0;
add ymm8_1 ymm8_1 ymm12_1;
add ymm8_2 ymm8_2 ymm12_2;
add ymm8_3 ymm8_3 ymm12_3;
add ymm8_4 ymm8_4 ymm12_4;
add ymm8_5 ymm8_5 ymm12_5;
add ymm8_6 ymm8_6 ymm12_6;
add ymm8_7 ymm8_7 ymm12_7;
add ymm8_8 ymm8_8 ymm12_8;
add ymm8_9 ymm8_9 ymm12_9;
add ymm8_a ymm8_a ymm12_a;
add ymm8_b ymm8_b ymm12_b;
add ymm8_c ymm8_c ymm12_c;
add ymm8_d ymm8_d ymm12_d;
add ymm8_e ymm8_e ymm12_e;
add ymm8_f ymm8_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ee0e *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ee13 *)
add ymm9_0 ymm9_0 ymm13_0;
add ymm9_1 ymm9_1 ymm13_1;
add ymm9_2 ymm9_2 ymm13_2;
add ymm9_3 ymm9_3 ymm13_3;
add ymm9_4 ymm9_4 ymm13_4;
add ymm9_5 ymm9_5 ymm13_5;
add ymm9_6 ymm9_6 ymm13_6;
add ymm9_7 ymm9_7 ymm13_7;
add ymm9_8 ymm9_8 ymm13_8;
add ymm9_9 ymm9_9 ymm13_9;
add ymm9_a ymm9_a ymm13_a;
add ymm9_b ymm9_b ymm13_b;
add ymm9_c ymm9_c ymm13_c;
add ymm9_d ymm9_d ymm13_d;
add ymm9_e ymm9_e ymm13_e;
add ymm9_f ymm9_f ymm13_f;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ee18 *)
sub ymm5_0 ymm5_0 ymm14_0;
sub ymm5_1 ymm5_1 ymm14_1;
sub ymm5_2 ymm5_2 ymm14_2;
sub ymm5_3 ymm5_3 ymm14_3;
sub ymm5_4 ymm5_4 ymm14_4;
sub ymm5_5 ymm5_5 ymm14_5;
sub ymm5_6 ymm5_6 ymm14_6;
sub ymm5_7 ymm5_7 ymm14_7;
sub ymm5_8 ymm5_8 ymm14_8;
sub ymm5_9 ymm5_9 ymm14_9;
sub ymm5_a ymm5_a ymm14_a;
sub ymm5_b ymm5_b ymm14_b;
sub ymm5_c ymm5_c ymm14_c;
sub ymm5_d ymm5_d ymm14_d;
sub ymm5_e ymm5_e ymm14_e;
sub ymm5_f ymm5_f ymm14_f;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ee1d *)
add ymm10_0 ymm10_0 ymm14_0;
add ymm10_1 ymm10_1 ymm14_1;
add ymm10_2 ymm10_2 ymm14_2;
add ymm10_3 ymm10_3 ymm14_3;
add ymm10_4 ymm10_4 ymm14_4;
add ymm10_5 ymm10_5 ymm14_5;
add ymm10_6 ymm10_6 ymm14_6;
add ymm10_7 ymm10_7 ymm14_7;
add ymm10_8 ymm10_8 ymm14_8;
add ymm10_9 ymm10_9 ymm14_9;
add ymm10_a ymm10_a ymm14_a;
add ymm10_b ymm10_b ymm14_b;
add ymm10_c ymm10_c ymm14_c;
add ymm10_d ymm10_d ymm14_d;
add ymm10_e ymm10_e ymm14_e;
add ymm10_f ymm10_f ymm14_f;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ee22 *)
sub ymm6_0 ymm6_0 ymm15_0;
sub ymm6_1 ymm6_1 ymm15_1;
sub ymm6_2 ymm6_2 ymm15_2;
sub ymm6_3 ymm6_3 ymm15_3;
sub ymm6_4 ymm6_4 ymm15_4;
sub ymm6_5 ymm6_5 ymm15_5;
sub ymm6_6 ymm6_6 ymm15_6;
sub ymm6_7 ymm6_7 ymm15_7;
sub ymm6_8 ymm6_8 ymm15_8;
sub ymm6_9 ymm6_9 ymm15_9;
sub ymm6_a ymm6_a ymm15_a;
sub ymm6_b ymm6_b ymm15_b;
sub ymm6_c ymm6_c ymm15_c;
sub ymm6_d ymm6_d ymm15_d;
sub ymm6_e ymm6_e ymm15_e;
sub ymm6_f ymm6_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ee27 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 1 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm3_0*(x**0) + ymm3_1*(x**1) + ymm3_2*(x**2) + ymm3_3*(x**3) +
 ymm3_4*(x**4) + ymm3_5*(x**5) + ymm3_6*(x**6) + ymm3_7*(x**7) +
 ymm3_8*(x**8) + ymm3_9*(x**9) + ymm3_a*(x**10) + ymm3_b*(x**11) +
 ymm3_c*(x**12) + ymm3_d*(x**13) + ymm3_e*(x**14) + ymm3_f*(x**15) +
 ymm4_0*(x**16) + ymm4_1*(x**17) + ymm4_2*(x**18) + ymm4_3*(x**19) +
 ymm4_4*(x**20) + ymm4_5*(x**21) + ymm4_6*(x**22) + ymm4_7*(x**23) +
 ymm4_8*(x**24) + ymm4_9*(x**25) + ymm4_a*(x**26) + ymm4_b*(x**27) +
 ymm4_c*(x**28) + ymm4_d*(x**29) + ymm4_e*(x**30) + ymm4_f*(x**31) +
 ymm5_0*(x**32) + ymm5_1*(x**33) + ymm5_2*(x**34) + ymm5_3*(x**35) +
 ymm5_4*(x**36) + ymm5_5*(x**37) + ymm5_6*(x**38) + ymm5_7*(x**39) +
 ymm5_8*(x**40) + ymm5_9*(x**41) + ymm5_a*(x**42) + ymm5_b*(x**43) +
 ymm5_c*(x**44) + ymm5_d*(x**45) + ymm5_e*(x**46) + ymm5_f*(x**47) +
 ymm6_0*(x**48) + ymm6_1*(x**49) + ymm6_2*(x**50) + ymm6_3*(x**51) +
 ymm6_4*(x**52) + ymm6_5*(x**53) + ymm6_6*(x**54) + ymm6_7*(x**55) +
 ymm6_8*(x**56) + ymm6_9*(x**57) + ymm6_a*(x**58) + ymm6_b*(x**59) +
 ymm6_c*(x**60) + ymm6_d*(x**61) + ymm6_e*(x**62) + ymm6_f*(x**63))
[3329, x**64 - (2580)],
eqmod (inp_poly**2)
(ymm8_0*(x**0) + ymm8_1*(x**1) + ymm8_2*(x**2) + ymm8_3*(x**3) +
 ymm8_4*(x**4) + ymm8_5*(x**5) + ymm8_6*(x**6) + ymm8_7*(x**7) +
 ymm8_8*(x**8) + ymm8_9*(x**9) + ymm8_a*(x**10) + ymm8_b*(x**11) +
 ymm8_c*(x**12) + ymm8_d*(x**13) + ymm8_e*(x**14) + ymm8_f*(x**15) +
 ymm9_0*(x**16) + ymm9_1*(x**17) + ymm9_2*(x**18) + ymm9_3*(x**19) +
 ymm9_4*(x**20) + ymm9_5*(x**21) + ymm9_6*(x**22) + ymm9_7*(x**23) +
 ymm9_8*(x**24) + ymm9_9*(x**25) + ymm9_a*(x**26) + ymm9_b*(x**27) +
 ymm9_c*(x**28) + ymm9_d*(x**29) + ymm9_e*(x**30) + ymm9_f*(x**31) +
 ymm10_0*(x**32) + ymm10_1*(x**33) + ymm10_2*(x**34) + ymm10_3*(x**35) +
 ymm10_4*(x**36) + ymm10_5*(x**37) + ymm10_6*(x**38) + ymm10_7*(x**39) +
 ymm10_8*(x**40) + ymm10_9*(x**41) + ymm10_a*(x**42) + ymm10_b*(x**43) +
 ymm10_c*(x**44) + ymm10_d*(x**45) + ymm10_e*(x**46) + ymm10_f*(x**47) +
 ymm11_0*(x**48) + ymm11_1*(x**49) + ymm11_2*(x**50) + ymm11_3*(x**51) +
 ymm11_4*(x**52) + ymm11_5*(x**53) + ymm11_6*(x**54) + ymm11_7*(x**55) +
 ymm11_8*(x**56) + ymm11_9*(x**57) + ymm11_a*(x**58) + ymm11_b*(x**59) +
 ymm11_c*(x**60) + ymm11_d*(x**61) + ymm11_e*(x**62) + ymm11_f*(x**63))
[3329, x**64 - (749)]]
&&
and [
(-9987)@16 <s ymm3_0, ymm3_0 <s (9987)@16,
(-9987)@16 <s ymm3_1, ymm3_1 <s (9987)@16,
(-9987)@16 <s ymm3_2, ymm3_2 <s (9987)@16,
(-9987)@16 <s ymm3_3, ymm3_3 <s (9987)@16,
(-9987)@16 <s ymm3_4, ymm3_4 <s (9987)@16,
(-9987)@16 <s ymm3_5, ymm3_5 <s (9987)@16,
(-9987)@16 <s ymm3_6, ymm3_6 <s (9987)@16,
(-9987)@16 <s ymm3_7, ymm3_7 <s (9987)@16,
(-9987)@16 <s ymm3_8, ymm3_8 <s (9987)@16,
(-9987)@16 <s ymm3_9, ymm3_9 <s (9987)@16,
(-9987)@16 <s ymm3_a, ymm3_a <s (9987)@16,
(-9987)@16 <s ymm3_b, ymm3_b <s (9987)@16,
(-9987)@16 <s ymm3_c, ymm3_c <s (9987)@16,
(-9987)@16 <s ymm3_d, ymm3_d <s (9987)@16,
(-9987)@16 <s ymm3_e, ymm3_e <s (9987)@16,
(-9987)@16 <s ymm3_f, ymm3_f <s (9987)@16,
(-9987)@16 <s ymm4_0, ymm4_0 <s (9987)@16,
(-9987)@16 <s ymm4_1, ymm4_1 <s (9987)@16,
(-9987)@16 <s ymm4_2, ymm4_2 <s (9987)@16,
(-9987)@16 <s ymm4_3, ymm4_3 <s (9987)@16,
(-9987)@16 <s ymm4_4, ymm4_4 <s (9987)@16,
(-9987)@16 <s ymm4_5, ymm4_5 <s (9987)@16,
(-9987)@16 <s ymm4_6, ymm4_6 <s (9987)@16,
(-9987)@16 <s ymm4_7, ymm4_7 <s (9987)@16,
(-9987)@16 <s ymm4_8, ymm4_8 <s (9987)@16,
(-9987)@16 <s ymm4_9, ymm4_9 <s (9987)@16,
(-9987)@16 <s ymm4_a, ymm4_a <s (9987)@16,
(-9987)@16 <s ymm4_b, ymm4_b <s (9987)@16,
(-9987)@16 <s ymm4_c, ymm4_c <s (9987)@16,
(-9987)@16 <s ymm4_d, ymm4_d <s (9987)@16,
(-9987)@16 <s ymm4_e, ymm4_e <s (9987)@16,
(-9987)@16 <s ymm4_f, ymm4_f <s (9987)@16,
(-9987)@16 <s ymm5_0, ymm5_0 <s (9987)@16,
(-9987)@16 <s ymm5_1, ymm5_1 <s (9987)@16,
(-9987)@16 <s ymm5_2, ymm5_2 <s (9987)@16,
(-9987)@16 <s ymm5_3, ymm5_3 <s (9987)@16,
(-9987)@16 <s ymm5_4, ymm5_4 <s (9987)@16,
(-9987)@16 <s ymm5_5, ymm5_5 <s (9987)@16,
(-9987)@16 <s ymm5_6, ymm5_6 <s (9987)@16,
(-9987)@16 <s ymm5_7, ymm5_7 <s (9987)@16,
(-9987)@16 <s ymm5_8, ymm5_8 <s (9987)@16,
(-9987)@16 <s ymm5_9, ymm5_9 <s (9987)@16,
(-9987)@16 <s ymm5_a, ymm5_a <s (9987)@16,
(-9987)@16 <s ymm5_b, ymm5_b <s (9987)@16,
(-9987)@16 <s ymm5_c, ymm5_c <s (9987)@16,
(-9987)@16 <s ymm5_d, ymm5_d <s (9987)@16,
(-9987)@16 <s ymm5_e, ymm5_e <s (9987)@16,
(-9987)@16 <s ymm5_f, ymm5_f <s (9987)@16,
(-9987)@16 <s ymm6_0, ymm6_0 <s (9987)@16,
(-9987)@16 <s ymm6_1, ymm6_1 <s (9987)@16,
(-9987)@16 <s ymm6_2, ymm6_2 <s (9987)@16,
(-9987)@16 <s ymm6_3, ymm6_3 <s (9987)@16,
(-9987)@16 <s ymm6_4, ymm6_4 <s (9987)@16,
(-9987)@16 <s ymm6_5, ymm6_5 <s (9987)@16,
(-9987)@16 <s ymm6_6, ymm6_6 <s (9987)@16,
(-9987)@16 <s ymm6_7, ymm6_7 <s (9987)@16,
(-9987)@16 <s ymm6_8, ymm6_8 <s (9987)@16,
(-9987)@16 <s ymm6_9, ymm6_9 <s (9987)@16,
(-9987)@16 <s ymm6_a, ymm6_a <s (9987)@16,
(-9987)@16 <s ymm6_b, ymm6_b <s (9987)@16,
(-9987)@16 <s ymm6_c, ymm6_c <s (9987)@16,
(-9987)@16 <s ymm6_d, ymm6_d <s (9987)@16,
(-9987)@16 <s ymm6_e, ymm6_e <s (9987)@16,
(-9987)@16 <s ymm6_f, ymm6_f <s (9987)@16,
(-9987)@16 <s ymm8_0, ymm8_0 <s (9987)@16,
(-9987)@16 <s ymm8_1, ymm8_1 <s (9987)@16,
(-9987)@16 <s ymm8_2, ymm8_2 <s (9987)@16,
(-9987)@16 <s ymm8_3, ymm8_3 <s (9987)@16,
(-9987)@16 <s ymm8_4, ymm8_4 <s (9987)@16,
(-9987)@16 <s ymm8_5, ymm8_5 <s (9987)@16,
(-9987)@16 <s ymm8_6, ymm8_6 <s (9987)@16,
(-9987)@16 <s ymm8_7, ymm8_7 <s (9987)@16,
(-9987)@16 <s ymm8_8, ymm8_8 <s (9987)@16,
(-9987)@16 <s ymm8_9, ymm8_9 <s (9987)@16,
(-9987)@16 <s ymm8_a, ymm8_a <s (9987)@16,
(-9987)@16 <s ymm8_b, ymm8_b <s (9987)@16,
(-9987)@16 <s ymm8_c, ymm8_c <s (9987)@16,
(-9987)@16 <s ymm8_d, ymm8_d <s (9987)@16,
(-9987)@16 <s ymm8_e, ymm8_e <s (9987)@16,
(-9987)@16 <s ymm8_f, ymm8_f <s (9987)@16,
(-9987)@16 <s ymm9_0, ymm9_0 <s (9987)@16,
(-9987)@16 <s ymm9_1, ymm9_1 <s (9987)@16,
(-9987)@16 <s ymm9_2, ymm9_2 <s (9987)@16,
(-9987)@16 <s ymm9_3, ymm9_3 <s (9987)@16,
(-9987)@16 <s ymm9_4, ymm9_4 <s (9987)@16,
(-9987)@16 <s ymm9_5, ymm9_5 <s (9987)@16,
(-9987)@16 <s ymm9_6, ymm9_6 <s (9987)@16,
(-9987)@16 <s ymm9_7, ymm9_7 <s (9987)@16,
(-9987)@16 <s ymm9_8, ymm9_8 <s (9987)@16,
(-9987)@16 <s ymm9_9, ymm9_9 <s (9987)@16,
(-9987)@16 <s ymm9_a, ymm9_a <s (9987)@16,
(-9987)@16 <s ymm9_b, ymm9_b <s (9987)@16,
(-9987)@16 <s ymm9_c, ymm9_c <s (9987)@16,
(-9987)@16 <s ymm9_d, ymm9_d <s (9987)@16,
(-9987)@16 <s ymm9_e, ymm9_e <s (9987)@16,
(-9987)@16 <s ymm9_f, ymm9_f <s (9987)@16,
(-9987)@16 <s ymm10_0, ymm10_0 <s (9987)@16,
(-9987)@16 <s ymm10_1, ymm10_1 <s (9987)@16,
(-9987)@16 <s ymm10_2, ymm10_2 <s (9987)@16,
(-9987)@16 <s ymm10_3, ymm10_3 <s (9987)@16,
(-9987)@16 <s ymm10_4, ymm10_4 <s (9987)@16,
(-9987)@16 <s ymm10_5, ymm10_5 <s (9987)@16,
(-9987)@16 <s ymm10_6, ymm10_6 <s (9987)@16,
(-9987)@16 <s ymm10_7, ymm10_7 <s (9987)@16,
(-9987)@16 <s ymm10_8, ymm10_8 <s (9987)@16,
(-9987)@16 <s ymm10_9, ymm10_9 <s (9987)@16,
(-9987)@16 <s ymm10_a, ymm10_a <s (9987)@16,
(-9987)@16 <s ymm10_b, ymm10_b <s (9987)@16,
(-9987)@16 <s ymm10_c, ymm10_c <s (9987)@16,
(-9987)@16 <s ymm10_d, ymm10_d <s (9987)@16,
(-9987)@16 <s ymm10_e, ymm10_e <s (9987)@16,
(-9987)@16 <s ymm10_f, ymm10_f <s (9987)@16,
(-9987)@16 <s ymm11_0, ymm11_0 <s (9987)@16,
(-9987)@16 <s ymm11_1, ymm11_1 <s (9987)@16,
(-9987)@16 <s ymm11_2, ymm11_2 <s (9987)@16,
(-9987)@16 <s ymm11_3, ymm11_3 <s (9987)@16,
(-9987)@16 <s ymm11_4, ymm11_4 <s (9987)@16,
(-9987)@16 <s ymm11_5, ymm11_5 <s (9987)@16,
(-9987)@16 <s ymm11_6, ymm11_6 <s (9987)@16,
(-9987)@16 <s ymm11_7, ymm11_7 <s (9987)@16,
(-9987)@16 <s ymm11_8, ymm11_8 <s (9987)@16,
(-9987)@16 <s ymm11_9, ymm11_9 <s (9987)@16,
(-9987)@16 <s ymm11_a, ymm11_a <s (9987)@16,
(-9987)@16 <s ymm11_b, ymm11_b <s (9987)@16,
(-9987)@16 <s ymm11_c, ymm11_c <s (9987)@16,
(-9987)@16 <s ymm11_d, ymm11_d <s (9987)@16,
(-9987)@16 <s ymm11_e, ymm11_e <s (9987)@16,
(-9987)@16 <s ymm11_f, ymm11_f <s (9987)@16];

(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556ee2c *)
mov perm_0 ymm5_0;
mov perm_1 ymm5_1;
mov perm_2 ymm5_2;
mov perm_3 ymm5_3;
mov perm_4 ymm5_4;
mov perm_5 ymm5_5;
mov perm_6 ymm5_6;
mov perm_7 ymm5_7;
mov perm_8 ymm10_0;
mov perm_9 ymm10_1;
mov perm_a ymm10_2;
mov perm_b ymm10_3;
mov perm_c ymm10_4;
mov perm_d ymm10_5;
mov perm_e ymm10_6;
mov perm_f ymm10_7;
mov ymm7_0 perm_0;
mov ymm7_1 perm_1;
mov ymm7_2 perm_2;
mov ymm7_3 perm_3;
mov ymm7_4 perm_4;
mov ymm7_5 perm_5;
mov ymm7_6 perm_6;
mov ymm7_7 perm_7;
mov ymm7_8 perm_8;
mov ymm7_9 perm_9;
mov ymm7_a perm_a;
mov ymm7_b perm_b;
mov ymm7_c perm_c;
mov ymm7_d perm_d;
mov ymm7_e perm_e;
mov ymm7_f perm_f;
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556ee32 *)
mov perm_0 ymm5_8;
mov perm_1 ymm5_9;
mov perm_2 ymm5_a;
mov perm_3 ymm5_b;
mov perm_4 ymm5_c;
mov perm_5 ymm5_d;
mov perm_6 ymm5_e;
mov perm_7 ymm5_f;
mov perm_8 ymm10_8;
mov perm_9 ymm10_9;
mov perm_a ymm10_a;
mov perm_b ymm10_b;
mov perm_c ymm10_c;
mov perm_d ymm10_d;
mov perm_e ymm10_e;
mov perm_f ymm10_f;
mov ymm10_0 perm_0;
mov ymm10_1 perm_1;
mov ymm10_2 perm_2;
mov ymm10_3 perm_3;
mov ymm10_4 perm_4;
mov ymm10_5 perm_5;
mov ymm10_6 perm_6;
mov ymm10_7 perm_7;
mov ymm10_8 perm_8;
mov ymm10_9 perm_9;
mov ymm10_a perm_a;
mov ymm10_b perm_b;
mov ymm10_c perm_c;
mov ymm10_d perm_d;
mov ymm10_e perm_e;
mov ymm10_f perm_f;
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556ee38 *)
mov perm_0 ymm6_0;
mov perm_1 ymm6_1;
mov perm_2 ymm6_2;
mov perm_3 ymm6_3;
mov perm_4 ymm6_4;
mov perm_5 ymm6_5;
mov perm_6 ymm6_6;
mov perm_7 ymm6_7;
mov perm_8 ymm11_0;
mov perm_9 ymm11_1;
mov perm_a ymm11_2;
mov perm_b ymm11_3;
mov perm_c ymm11_4;
mov perm_d ymm11_5;
mov perm_e ymm11_6;
mov perm_f ymm11_7;
mov ymm5_0 perm_0;
mov ymm5_1 perm_1;
mov ymm5_2 perm_2;
mov ymm5_3 perm_3;
mov ymm5_4 perm_4;
mov ymm5_5 perm_5;
mov ymm5_6 perm_6;
mov ymm5_7 perm_7;
mov ymm5_8 perm_8;
mov ymm5_9 perm_9;
mov ymm5_a perm_a;
mov ymm5_b perm_b;
mov ymm5_c perm_c;
mov ymm5_d perm_d;
mov ymm5_e perm_e;
mov ymm5_f perm_f;
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556ee3e *)
mov perm_0 ymm6_8;
mov perm_1 ymm6_9;
mov perm_2 ymm6_a;
mov perm_3 ymm6_b;
mov perm_4 ymm6_c;
mov perm_5 ymm6_d;
mov perm_6 ymm6_e;
mov perm_7 ymm6_f;
mov perm_8 ymm11_8;
mov perm_9 ymm11_9;
mov perm_a ymm11_a;
mov perm_b ymm11_b;
mov perm_c ymm11_c;
mov perm_d ymm11_d;
mov perm_e ymm11_e;
mov perm_f ymm11_f;
mov ymm11_0 perm_0;
mov ymm11_1 perm_1;
mov ymm11_2 perm_2;
mov ymm11_3 perm_3;
mov ymm11_4 perm_4;
mov ymm11_5 perm_5;
mov ymm11_6 perm_6;
mov ymm11_7 perm_7;
mov ymm11_8 perm_8;
mov ymm11_9 perm_9;
mov ymm11_a perm_a;
mov ymm11_b perm_b;
mov ymm11_c perm_c;
mov ymm11_d perm_d;
mov ymm11_e perm_e;
mov ymm11_f perm_f;
(* vmovdqa 0x1a0(%rsi),%ymm15                      #! EA = L0x555555639780; Value = 0x34d534d534d534d5; PC = 0x55555556ee44 *)
mov ymm15_0 L0x555555639780;
mov ymm15_1 L0x555555639782;
mov ymm15_2 L0x555555639784;
mov ymm15_3 L0x555555639786;
mov ymm15_4 L0x555555639788;
mov ymm15_5 L0x55555563978a;
mov ymm15_6 L0x55555563978c;
mov ymm15_7 L0x55555563978e;
mov ymm15_8 L0x555555639790;
mov ymm15_9 L0x555555639792;
mov ymm15_a L0x555555639794;
mov ymm15_b L0x555555639796;
mov ymm15_c L0x555555639798;
mov ymm15_d L0x55555563979a;
mov ymm15_e L0x55555563979c;
mov ymm15_f L0x55555563979e;
(* vmovdqa 0x1c0(%rsi),%ymm2                       #! EA = L0x5555556397a0; Value = 0x05d505d505d505d5; PC = 0x55555556ee4c *)
mov ymm2_0 L0x5555556397a0;
mov ymm2_1 L0x5555556397a2;
mov ymm2_2 L0x5555556397a4;
mov ymm2_3 L0x5555556397a6;
mov ymm2_4 L0x5555556397a8;
mov ymm2_5 L0x5555556397aa;
mov ymm2_6 L0x5555556397ac;
mov ymm2_7 L0x5555556397ae;
mov ymm2_8 L0x5555556397b0;
mov ymm2_9 L0x5555556397b2;
mov ymm2_a L0x5555556397b4;
mov ymm2_b L0x5555556397b6;
mov ymm2_c L0x5555556397b8;
mov ymm2_d L0x5555556397ba;
mov ymm2_e L0x5555556397bc;
mov ymm2_f L0x5555556397be;
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556ee54 *)
smull mulHymm7_0 mulL_0 ymm15_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm15_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm15_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm15_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm15_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm15_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm15_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm15_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm15_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm15_9 ymm7_9;
smull mulHymm7_a mulL_a ymm15_a ymm7_a;
smull mulHymm7_b mulL_b ymm15_b ymm7_b;
smull mulHymm7_c mulL_c ymm15_c ymm7_c;
smull mulHymm7_d mulL_d ymm15_d ymm7_d;
smull mulHymm7_e mulL_e ymm15_e ymm7_e;
smull mulHymm7_f mulL_f ymm15_f ymm7_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556ee59 *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556ee5e *)
smull mulHymm5_0 mulL_0 ymm15_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm15_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm15_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm15_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm15_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm15_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm15_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm15_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm15_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm15_9 ymm5_9;
smull mulHymm5_a mulL_a ymm15_a ymm5_a;
smull mulHymm5_b mulL_b ymm15_b ymm5_b;
smull mulHymm5_c mulL_c ymm15_c ymm5_c;
smull mulHymm5_d mulL_d ymm15_d ymm5_d;
smull mulHymm5_e mulL_e ymm15_e ymm5_e;
smull mulHymm5_f mulL_f ymm15_f ymm5_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ee63 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ee68 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm2_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm2_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm2_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm2_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm2_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm2_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm2_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm2_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm2_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm2_9;
smull mulH_a mulLymm7_a ymm7_a ymm2_a;
smull mulH_b mulLymm7_b ymm7_b ymm2_b;
smull mulH_c mulLymm7_c ymm7_c ymm2_c;
smull mulH_d mulLymm7_d ymm7_d ymm2_d;
smull mulH_e mulLymm7_e ymm7_e ymm2_e;
smull mulH_f mulLymm7_f ymm7_f ymm2_f;
mov ymm7_0 mulH_0;
mov ymm7_1 mulH_1;
mov ymm7_2 mulH_2;
mov ymm7_3 mulH_3;
mov ymm7_4 mulH_4;
mov ymm7_5 mulH_5;
mov ymm7_6 mulH_6;
mov ymm7_7 mulH_7;
mov ymm7_8 mulH_8;
mov ymm7_9 mulH_9;
mov ymm7_a mulH_a;
mov ymm7_b mulH_b;
mov ymm7_c mulH_c;
mov ymm7_d mulH_d;
mov ymm7_e mulH_e;
mov ymm7_f mulH_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ee6c *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ee70 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm2_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm2_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm2_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm2_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm2_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm2_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm2_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm2_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm2_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm2_9;
smull mulH_a mulLymm5_a ymm5_a ymm2_a;
smull mulH_b mulLymm5_b ymm5_b ymm2_b;
smull mulH_c mulLymm5_c ymm5_c ymm2_c;
smull mulH_d mulLymm5_d ymm5_d ymm2_d;
smull mulH_e mulLymm5_e ymm5_e ymm2_e;
smull mulH_f mulLymm5_f ymm5_f ymm2_f;
mov ymm5_0 mulH_0;
mov ymm5_1 mulH_1;
mov ymm5_2 mulH_2;
mov ymm5_3 mulH_3;
mov ymm5_4 mulH_4;
mov ymm5_5 mulH_5;
mov ymm5_6 mulH_6;
mov ymm5_7 mulH_7;
mov ymm5_8 mulH_8;
mov ymm5_9 mulH_9;
mov ymm5_a mulH_a;
mov ymm5_b mulH_b;
mov ymm5_c mulH_c;
mov ymm5_d mulH_d;
mov ymm5_e mulH_e;
mov ymm5_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ee74 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556ee78 *)
mov perm_0 ymm3_0;
mov perm_1 ymm3_1;
mov perm_2 ymm3_2;
mov perm_3 ymm3_3;
mov perm_4 ymm3_4;
mov perm_5 ymm3_5;
mov perm_6 ymm3_6;
mov perm_7 ymm3_7;
mov perm_8 ymm8_0;
mov perm_9 ymm8_1;
mov perm_a ymm8_2;
mov perm_b ymm8_3;
mov perm_c ymm8_4;
mov perm_d ymm8_5;
mov perm_e ymm8_6;
mov perm_f ymm8_7;
mov ymm6_0 perm_0;
mov ymm6_1 perm_1;
mov ymm6_2 perm_2;
mov ymm6_3 perm_3;
mov ymm6_4 perm_4;
mov ymm6_5 perm_5;
mov ymm6_6 perm_6;
mov ymm6_7 perm_7;
mov ymm6_8 perm_8;
mov ymm6_9 perm_9;
mov ymm6_a perm_a;
mov ymm6_b perm_b;
mov ymm6_c perm_c;
mov ymm6_d perm_d;
mov ymm6_e perm_e;
mov ymm6_f perm_f;
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556ee7e *)
mov perm_0 ymm3_8;
mov perm_1 ymm3_9;
mov perm_2 ymm3_a;
mov perm_3 ymm3_b;
mov perm_4 ymm3_c;
mov perm_5 ymm3_d;
mov perm_6 ymm3_e;
mov perm_7 ymm3_f;
mov perm_8 ymm8_8;
mov perm_9 ymm8_9;
mov perm_a ymm8_a;
mov perm_b ymm8_b;
mov perm_c ymm8_c;
mov perm_d ymm8_d;
mov perm_e ymm8_e;
mov perm_f ymm8_f;
mov ymm8_0 perm_0;
mov ymm8_1 perm_1;
mov ymm8_2 perm_2;
mov ymm8_3 perm_3;
mov ymm8_4 perm_4;
mov ymm8_5 perm_5;
mov ymm8_6 perm_6;
mov ymm8_7 perm_7;
mov ymm8_8 perm_8;
mov ymm8_9 perm_9;
mov ymm8_a perm_a;
mov ymm8_b perm_b;
mov ymm8_c perm_c;
mov ymm8_d perm_d;
mov ymm8_e perm_e;
mov ymm8_f perm_f;
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556ee84 *)
mov perm_0 ymm4_0;
mov perm_1 ymm4_1;
mov perm_2 ymm4_2;
mov perm_3 ymm4_3;
mov perm_4 ymm4_4;
mov perm_5 ymm4_5;
mov perm_6 ymm4_6;
mov perm_7 ymm4_7;
mov perm_8 ymm9_0;
mov perm_9 ymm9_1;
mov perm_a ymm9_2;
mov perm_b ymm9_3;
mov perm_c ymm9_4;
mov perm_d ymm9_5;
mov perm_e ymm9_6;
mov perm_f ymm9_7;
mov ymm3_0 perm_0;
mov ymm3_1 perm_1;
mov ymm3_2 perm_2;
mov ymm3_3 perm_3;
mov ymm3_4 perm_4;
mov ymm3_5 perm_5;
mov ymm3_6 perm_6;
mov ymm3_7 perm_7;
mov ymm3_8 perm_8;
mov ymm3_9 perm_9;
mov ymm3_a perm_a;
mov ymm3_b perm_b;
mov ymm3_c perm_c;
mov ymm3_d perm_d;
mov ymm3_e perm_e;
mov ymm3_f perm_f;
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556ee8a *)
mov perm_0 ymm4_8;
mov perm_1 ymm4_9;
mov perm_2 ymm4_a;
mov perm_3 ymm4_b;
mov perm_4 ymm4_c;
mov perm_5 ymm4_d;
mov perm_6 ymm4_e;
mov perm_7 ymm4_f;
mov perm_8 ymm9_8;
mov perm_9 ymm9_9;
mov perm_a ymm9_a;
mov perm_b ymm9_b;
mov perm_c ymm9_c;
mov perm_d ymm9_d;
mov perm_e ymm9_e;
mov perm_f ymm9_f;
mov ymm9_0 perm_0;
mov ymm9_1 perm_1;
mov ymm9_2 perm_2;
mov ymm9_3 perm_3;
mov ymm9_4 perm_4;
mov ymm9_5 perm_5;
mov ymm9_6 perm_6;
mov ymm9_7 perm_7;
mov ymm9_8 perm_8;
mov ymm9_9 perm_9;
mov ymm9_a perm_a;
mov ymm9_b perm_b;
mov ymm9_c perm_c;
mov ymm9_d perm_d;
mov ymm9_e perm_e;
mov ymm9_f perm_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ee90 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm7_0;
assume red_0 = mulLymm7_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm7_1;
assume red_1 = mulLymm7_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm7_2;
assume red_2 = mulLymm7_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm7_3;
assume red_3 = mulLymm7_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm7_4;
assume red_4 = mulLymm7_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm7_5;
assume red_5 = mulLymm7_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm7_6;
assume red_6 = mulLymm7_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm7_7;
assume red_7 = mulLymm7_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm7_8;
assume red_8 = mulLymm7_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm7_9;
assume red_9 = mulLymm7_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm7_a;
assume red_a = mulLymm7_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm7_b;
assume red_b = mulLymm7_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm7_c;
assume red_c = mulLymm7_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm7_d;
assume red_d = mulLymm7_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm7_e;
assume red_e = mulLymm7_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm7_f;
assume red_f = mulLymm7_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ee94 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ee98 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm5_0;
assume red_0 = mulLymm5_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm5_1;
assume red_1 = mulLymm5_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm5_2;
assume red_2 = mulLymm5_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm5_3;
assume red_3 = mulLymm5_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm5_4;
assume red_4 = mulLymm5_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm5_5;
assume red_5 = mulLymm5_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm5_6;
assume red_6 = mulLymm5_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm5_7;
assume red_7 = mulLymm5_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm5_8;
assume red_8 = mulLymm5_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm5_9;
assume red_9 = mulLymm5_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm5_a;
assume red_a = mulLymm5_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm5_b;
assume red_b = mulLymm5_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm5_c;
assume red_c = mulLymm5_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm5_d;
assume red_d = mulLymm5_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm5_e;
assume red_e = mulLymm5_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm5_f;
assume red_f = mulLymm5_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ee9c *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556eea0 *)
add ymm4_0 ymm6_0 ymm7_0;
add ymm4_1 ymm6_1 ymm7_1;
add ymm4_2 ymm6_2 ymm7_2;
add ymm4_3 ymm6_3 ymm7_3;
add ymm4_4 ymm6_4 ymm7_4;
add ymm4_5 ymm6_5 ymm7_5;
add ymm4_6 ymm6_6 ymm7_6;
add ymm4_7 ymm6_7 ymm7_7;
add ymm4_8 ymm6_8 ymm7_8;
add ymm4_9 ymm6_9 ymm7_9;
add ymm4_a ymm6_a ymm7_a;
add ymm4_b ymm6_b ymm7_b;
add ymm4_c ymm6_c ymm7_c;
add ymm4_d ymm6_d ymm7_d;
add ymm4_e ymm6_e ymm7_e;
add ymm4_f ymm6_f ymm7_f;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556eea4 *)
sub ymm7_0 ymm6_0 ymm7_0;
sub ymm7_1 ymm6_1 ymm7_1;
sub ymm7_2 ymm6_2 ymm7_2;
sub ymm7_3 ymm6_3 ymm7_3;
sub ymm7_4 ymm6_4 ymm7_4;
sub ymm7_5 ymm6_5 ymm7_5;
sub ymm7_6 ymm6_6 ymm7_6;
sub ymm7_7 ymm6_7 ymm7_7;
sub ymm7_8 ymm6_8 ymm7_8;
sub ymm7_9 ymm6_9 ymm7_9;
sub ymm7_a ymm6_a ymm7_a;
sub ymm7_b ymm6_b ymm7_b;
sub ymm7_c ymm6_c ymm7_c;
sub ymm7_d ymm6_d ymm7_d;
sub ymm7_e ymm6_e ymm7_e;
sub ymm7_f ymm6_f ymm7_f;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556eea8 *)
add ymm6_0 ymm8_0 ymm10_0;
add ymm6_1 ymm8_1 ymm10_1;
add ymm6_2 ymm8_2 ymm10_2;
add ymm6_3 ymm8_3 ymm10_3;
add ymm6_4 ymm8_4 ymm10_4;
add ymm6_5 ymm8_5 ymm10_5;
add ymm6_6 ymm8_6 ymm10_6;
add ymm6_7 ymm8_7 ymm10_7;
add ymm6_8 ymm8_8 ymm10_8;
add ymm6_9 ymm8_9 ymm10_9;
add ymm6_a ymm8_a ymm10_a;
add ymm6_b ymm8_b ymm10_b;
add ymm6_c ymm8_c ymm10_c;
add ymm6_d ymm8_d ymm10_d;
add ymm6_e ymm8_e ymm10_e;
add ymm6_f ymm8_f ymm10_f;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556eead *)
sub ymm10_0 ymm8_0 ymm10_0;
sub ymm10_1 ymm8_1 ymm10_1;
sub ymm10_2 ymm8_2 ymm10_2;
sub ymm10_3 ymm8_3 ymm10_3;
sub ymm10_4 ymm8_4 ymm10_4;
sub ymm10_5 ymm8_5 ymm10_5;
sub ymm10_6 ymm8_6 ymm10_6;
sub ymm10_7 ymm8_7 ymm10_7;
sub ymm10_8 ymm8_8 ymm10_8;
sub ymm10_9 ymm8_9 ymm10_9;
sub ymm10_a ymm8_a ymm10_a;
sub ymm10_b ymm8_b ymm10_b;
sub ymm10_c ymm8_c ymm10_c;
sub ymm10_d ymm8_d ymm10_d;
sub ymm10_e ymm8_e ymm10_e;
sub ymm10_f ymm8_f ymm10_f;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556eeb2 *)
add ymm8_0 ymm3_0 ymm5_0;
add ymm8_1 ymm3_1 ymm5_1;
add ymm8_2 ymm3_2 ymm5_2;
add ymm8_3 ymm3_3 ymm5_3;
add ymm8_4 ymm3_4 ymm5_4;
add ymm8_5 ymm3_5 ymm5_5;
add ymm8_6 ymm3_6 ymm5_6;
add ymm8_7 ymm3_7 ymm5_7;
add ymm8_8 ymm3_8 ymm5_8;
add ymm8_9 ymm3_9 ymm5_9;
add ymm8_a ymm3_a ymm5_a;
add ymm8_b ymm3_b ymm5_b;
add ymm8_c ymm3_c ymm5_c;
add ymm8_d ymm3_d ymm5_d;
add ymm8_e ymm3_e ymm5_e;
add ymm8_f ymm3_f ymm5_f;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556eeb6 *)
sub ymm5_0 ymm3_0 ymm5_0;
sub ymm5_1 ymm3_1 ymm5_1;
sub ymm5_2 ymm3_2 ymm5_2;
sub ymm5_3 ymm3_3 ymm5_3;
sub ymm5_4 ymm3_4 ymm5_4;
sub ymm5_5 ymm3_5 ymm5_5;
sub ymm5_6 ymm3_6 ymm5_6;
sub ymm5_7 ymm3_7 ymm5_7;
sub ymm5_8 ymm3_8 ymm5_8;
sub ymm5_9 ymm3_9 ymm5_9;
sub ymm5_a ymm3_a ymm5_a;
sub ymm5_b ymm3_b ymm5_b;
sub ymm5_c ymm3_c ymm5_c;
sub ymm5_d ymm3_d ymm5_d;
sub ymm5_e ymm3_e ymm5_e;
sub ymm5_f ymm3_f ymm5_f;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556eeba *)
add ymm3_0 ymm9_0 ymm11_0;
add ymm3_1 ymm9_1 ymm11_1;
add ymm3_2 ymm9_2 ymm11_2;
add ymm3_3 ymm9_3 ymm11_3;
add ymm3_4 ymm9_4 ymm11_4;
add ymm3_5 ymm9_5 ymm11_5;
add ymm3_6 ymm9_6 ymm11_6;
add ymm3_7 ymm9_7 ymm11_7;
add ymm3_8 ymm9_8 ymm11_8;
add ymm3_9 ymm9_9 ymm11_9;
add ymm3_a ymm9_a ymm11_a;
add ymm3_b ymm9_b ymm11_b;
add ymm3_c ymm9_c ymm11_c;
add ymm3_d ymm9_d ymm11_d;
add ymm3_e ymm9_e ymm11_e;
add ymm3_f ymm9_f ymm11_f;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556eebf *)
sub ymm11_0 ymm9_0 ymm11_0;
sub ymm11_1 ymm9_1 ymm11_1;
sub ymm11_2 ymm9_2 ymm11_2;
sub ymm11_3 ymm9_3 ymm11_3;
sub ymm11_4 ymm9_4 ymm11_4;
sub ymm11_5 ymm9_5 ymm11_5;
sub ymm11_6 ymm9_6 ymm11_6;
sub ymm11_7 ymm9_7 ymm11_7;
sub ymm11_8 ymm9_8 ymm11_8;
sub ymm11_9 ymm9_9 ymm11_9;
sub ymm11_a ymm9_a ymm11_a;
sub ymm11_b ymm9_b ymm11_b;
sub ymm11_c ymm9_c ymm11_c;
sub ymm11_d ymm9_d ymm11_d;
sub ymm11_e ymm9_e ymm11_e;
sub ymm11_f ymm9_f ymm11_f;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556eec4 *)
sub ymm4_0 ymm4_0 ymm12_0;
sub ymm4_1 ymm4_1 ymm12_1;
sub ymm4_2 ymm4_2 ymm12_2;
sub ymm4_3 ymm4_3 ymm12_3;
sub ymm4_4 ymm4_4 ymm12_4;
sub ymm4_5 ymm4_5 ymm12_5;
sub ymm4_6 ymm4_6 ymm12_6;
sub ymm4_7 ymm4_7 ymm12_7;
sub ymm4_8 ymm4_8 ymm12_8;
sub ymm4_9 ymm4_9 ymm12_9;
sub ymm4_a ymm4_a ymm12_a;
sub ymm4_b ymm4_b ymm12_b;
sub ymm4_c ymm4_c ymm12_c;
sub ymm4_d ymm4_d ymm12_d;
sub ymm4_e ymm4_e ymm12_e;
sub ymm4_f ymm4_f ymm12_f;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556eec9 *)
add ymm7_0 ymm7_0 ymm12_0;
add ymm7_1 ymm7_1 ymm12_1;
add ymm7_2 ymm7_2 ymm12_2;
add ymm7_3 ymm7_3 ymm12_3;
add ymm7_4 ymm7_4 ymm12_4;
add ymm7_5 ymm7_5 ymm12_5;
add ymm7_6 ymm7_6 ymm12_6;
add ymm7_7 ymm7_7 ymm12_7;
add ymm7_8 ymm7_8 ymm12_8;
add ymm7_9 ymm7_9 ymm12_9;
add ymm7_a ymm7_a ymm12_a;
add ymm7_b ymm7_b ymm12_b;
add ymm7_c ymm7_c ymm12_c;
add ymm7_d ymm7_d ymm12_d;
add ymm7_e ymm7_e ymm12_e;
add ymm7_f ymm7_f ymm12_f;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556eece *)
sub ymm6_0 ymm6_0 ymm13_0;
sub ymm6_1 ymm6_1 ymm13_1;
sub ymm6_2 ymm6_2 ymm13_2;
sub ymm6_3 ymm6_3 ymm13_3;
sub ymm6_4 ymm6_4 ymm13_4;
sub ymm6_5 ymm6_5 ymm13_5;
sub ymm6_6 ymm6_6 ymm13_6;
sub ymm6_7 ymm6_7 ymm13_7;
sub ymm6_8 ymm6_8 ymm13_8;
sub ymm6_9 ymm6_9 ymm13_9;
sub ymm6_a ymm6_a ymm13_a;
sub ymm6_b ymm6_b ymm13_b;
sub ymm6_c ymm6_c ymm13_c;
sub ymm6_d ymm6_d ymm13_d;
sub ymm6_e ymm6_e ymm13_e;
sub ymm6_f ymm6_f ymm13_f;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556eed3 *)
add ymm10_0 ymm10_0 ymm13_0;
add ymm10_1 ymm10_1 ymm13_1;
add ymm10_2 ymm10_2 ymm13_2;
add ymm10_3 ymm10_3 ymm13_3;
add ymm10_4 ymm10_4 ymm13_4;
add ymm10_5 ymm10_5 ymm13_5;
add ymm10_6 ymm10_6 ymm13_6;
add ymm10_7 ymm10_7 ymm13_7;
add ymm10_8 ymm10_8 ymm13_8;
add ymm10_9 ymm10_9 ymm13_9;
add ymm10_a ymm10_a ymm13_a;
add ymm10_b ymm10_b ymm13_b;
add ymm10_c ymm10_c ymm13_c;
add ymm10_d ymm10_d ymm13_d;
add ymm10_e ymm10_e ymm13_e;
add ymm10_f ymm10_f ymm13_f;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556eed8 *)
sub ymm8_0 ymm8_0 ymm14_0;
sub ymm8_1 ymm8_1 ymm14_1;
sub ymm8_2 ymm8_2 ymm14_2;
sub ymm8_3 ymm8_3 ymm14_3;
sub ymm8_4 ymm8_4 ymm14_4;
sub ymm8_5 ymm8_5 ymm14_5;
sub ymm8_6 ymm8_6 ymm14_6;
sub ymm8_7 ymm8_7 ymm14_7;
sub ymm8_8 ymm8_8 ymm14_8;
sub ymm8_9 ymm8_9 ymm14_9;
sub ymm8_a ymm8_a ymm14_a;
sub ymm8_b ymm8_b ymm14_b;
sub ymm8_c ymm8_c ymm14_c;
sub ymm8_d ymm8_d ymm14_d;
sub ymm8_e ymm8_e ymm14_e;
sub ymm8_f ymm8_f ymm14_f;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556eedd *)
add ymm5_0 ymm5_0 ymm14_0;
add ymm5_1 ymm5_1 ymm14_1;
add ymm5_2 ymm5_2 ymm14_2;
add ymm5_3 ymm5_3 ymm14_3;
add ymm5_4 ymm5_4 ymm14_4;
add ymm5_5 ymm5_5 ymm14_5;
add ymm5_6 ymm5_6 ymm14_6;
add ymm5_7 ymm5_7 ymm14_7;
add ymm5_8 ymm5_8 ymm14_8;
add ymm5_9 ymm5_9 ymm14_9;
add ymm5_a ymm5_a ymm14_a;
add ymm5_b ymm5_b ymm14_b;
add ymm5_c ymm5_c ymm14_c;
add ymm5_d ymm5_d ymm14_d;
add ymm5_e ymm5_e ymm14_e;
add ymm5_f ymm5_f ymm14_f;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556eee2 *)
sub ymm3_0 ymm3_0 ymm15_0;
sub ymm3_1 ymm3_1 ymm15_1;
sub ymm3_2 ymm3_2 ymm15_2;
sub ymm3_3 ymm3_3 ymm15_3;
sub ymm3_4 ymm3_4 ymm15_4;
sub ymm3_5 ymm3_5 ymm15_5;
sub ymm3_6 ymm3_6 ymm15_6;
sub ymm3_7 ymm3_7 ymm15_7;
sub ymm3_8 ymm3_8 ymm15_8;
sub ymm3_9 ymm3_9 ymm15_9;
sub ymm3_a ymm3_a ymm15_a;
sub ymm3_b ymm3_b ymm15_b;
sub ymm3_c ymm3_c ymm15_c;
sub ymm3_d ymm3_d ymm15_d;
sub ymm3_e ymm3_e ymm15_e;
sub ymm3_f ymm3_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556eee7 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 2 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm4_0*(x**0) + ymm4_1*(x**1) + ymm4_2*(x**2) + ymm4_3*(x**3) +
 ymm4_4*(x**4) + ymm4_5*(x**5) + ymm4_6*(x**6) + ymm4_7*(x**7) +
 ymm6_0*(x**8) + ymm6_1*(x**9) + ymm6_2*(x**10) + ymm6_3*(x**11) +
 ymm6_4*(x**12) + ymm6_5*(x**13) + ymm6_6*(x**14) + ymm6_7*(x**15) +
 ymm8_0*(x**16) + ymm8_1*(x**17) + ymm8_2*(x**18) + ymm8_3*(x**19) +
 ymm8_4*(x**20) + ymm8_5*(x**21) + ymm8_6*(x**22) + ymm8_7*(x**23) +
 ymm3_0*(x**24) + ymm3_1*(x**25) + ymm3_2*(x**26) + ymm3_3*(x**27) +
 ymm3_4*(x**28) + ymm3_5*(x**29) + ymm3_6*(x**30) + ymm3_7*(x**31))
[3329, x**32 - (2642)],
eqmod (inp_poly**2)
(ymm7_0*(x**0) + ymm7_1*(x**1) + ymm7_2*(x**2) + ymm7_3*(x**3) +
 ymm7_4*(x**4) + ymm7_5*(x**5) + ymm7_6*(x**6) + ymm7_7*(x**7) +
 ymm10_0*(x**8) + ymm10_1*(x**9) + ymm10_2*(x**10) + ymm10_3*(x**11) +
 ymm10_4*(x**12) + ymm10_5*(x**13) + ymm10_6*(x**14) + ymm10_7*(x**15) +
 ymm5_0*(x**16) + ymm5_1*(x**17) + ymm5_2*(x**18) + ymm5_3*(x**19) +
 ymm5_4*(x**20) + ymm5_5*(x**21) + ymm5_6*(x**22) + ymm5_7*(x**23) +
 ymm11_0*(x**24) + ymm11_1*(x**25) + ymm11_2*(x**26) + ymm11_3*(x**27) +
 ymm11_4*(x**28) + ymm11_5*(x**29) + ymm11_6*(x**30) + ymm11_7*(x**31))
[3329, x**32 - (687)],
eqmod (inp_poly**2)
(ymm4_8*(x**0) + ymm4_9*(x**1) + ymm4_a*(x**2) + ymm4_b*(x**3) +
 ymm4_c*(x**4) + ymm4_d*(x**5) + ymm4_e*(x**6) + ymm4_f*(x**7) +
 ymm6_8*(x**8) + ymm6_9*(x**9) + ymm6_a*(x**10) + ymm6_b*(x**11) +
 ymm6_c*(x**12) + ymm6_d*(x**13) + ymm6_e*(x**14) + ymm6_f*(x**15) +
 ymm8_8*(x**16) + ymm8_9*(x**17) + ymm8_a*(x**18) + ymm8_b*(x**19) +
 ymm8_c*(x**20) + ymm8_d*(x**21) + ymm8_e*(x**22) + ymm8_f*(x**23) +
 ymm3_8*(x**24) + ymm3_9*(x**25) + ymm3_a*(x**26) + ymm3_b*(x**27) +
 ymm3_c*(x**28) + ymm3_d*(x**29) + ymm3_e*(x**30) + ymm3_f*(x**31))
[3329, x**32 - (630)],
eqmod (inp_poly**2)
(ymm7_8*(x**0) + ymm7_9*(x**1) + ymm7_a*(x**2) + ymm7_b*(x**3) +
 ymm7_c*(x**4) + ymm7_d*(x**5) + ymm7_e*(x**6) + ymm7_f*(x**7) +
 ymm10_8*(x**8) + ymm10_9*(x**9) + ymm10_a*(x**10) + ymm10_b*(x**11) +
 ymm10_c*(x**12) + ymm10_d*(x**13) + ymm10_e*(x**14) + ymm10_f*(x**15) +
 ymm5_8*(x**16) + ymm5_9*(x**17) + ymm5_a*(x**18) + ymm5_b*(x**19) +
 ymm5_c*(x**20) + ymm5_d*(x**21) + ymm5_e*(x**22) + ymm5_f*(x**23) +
 ymm11_8*(x**24) + ymm11_9*(x**25) + ymm11_a*(x**26) + ymm11_b*(x**27) +
 ymm11_c*(x**28) + ymm11_d*(x**29) + ymm11_e*(x**30) + ymm11_f*(x**31))
[3329, x**32 - (2699)]]
&&
and [
(-13316)@16 <s ymm4_0, ymm4_0 <s (13316)@16,
(-13316)@16 <s ymm4_1, ymm4_1 <s (13316)@16,
(-13316)@16 <s ymm4_2, ymm4_2 <s (13316)@16,
(-13316)@16 <s ymm4_3, ymm4_3 <s (13316)@16,
(-13316)@16 <s ymm4_4, ymm4_4 <s (13316)@16,
(-13316)@16 <s ymm4_5, ymm4_5 <s (13316)@16,
(-13316)@16 <s ymm4_6, ymm4_6 <s (13316)@16,
(-13316)@16 <s ymm4_7, ymm4_7 <s (13316)@16,
(-13316)@16 <s ymm6_0, ymm6_0 <s (13316)@16,
(-13316)@16 <s ymm6_1, ymm6_1 <s (13316)@16,
(-13316)@16 <s ymm6_2, ymm6_2 <s (13316)@16,
(-13316)@16 <s ymm6_3, ymm6_3 <s (13316)@16,
(-13316)@16 <s ymm6_4, ymm6_4 <s (13316)@16,
(-13316)@16 <s ymm6_5, ymm6_5 <s (13316)@16,
(-13316)@16 <s ymm6_6, ymm6_6 <s (13316)@16,
(-13316)@16 <s ymm6_7, ymm6_7 <s (13316)@16,
(-13316)@16 <s ymm8_0, ymm8_0 <s (13316)@16,
(-13316)@16 <s ymm8_1, ymm8_1 <s (13316)@16,
(-13316)@16 <s ymm8_2, ymm8_2 <s (13316)@16,
(-13316)@16 <s ymm8_3, ymm8_3 <s (13316)@16,
(-13316)@16 <s ymm8_4, ymm8_4 <s (13316)@16,
(-13316)@16 <s ymm8_5, ymm8_5 <s (13316)@16,
(-13316)@16 <s ymm8_6, ymm8_6 <s (13316)@16,
(-13316)@16 <s ymm8_7, ymm8_7 <s (13316)@16,
(-13316)@16 <s ymm3_0, ymm3_0 <s (13316)@16,
(-13316)@16 <s ymm3_1, ymm3_1 <s (13316)@16,
(-13316)@16 <s ymm3_2, ymm3_2 <s (13316)@16,
(-13316)@16 <s ymm3_3, ymm3_3 <s (13316)@16,
(-13316)@16 <s ymm3_4, ymm3_4 <s (13316)@16,
(-13316)@16 <s ymm3_5, ymm3_5 <s (13316)@16,
(-13316)@16 <s ymm3_6, ymm3_6 <s (13316)@16,
(-13316)@16 <s ymm3_7, ymm3_7 <s (13316)@16,
(-13316)@16 <s ymm7_0, ymm7_0 <s (13316)@16,
(-13316)@16 <s ymm7_1, ymm7_1 <s (13316)@16,
(-13316)@16 <s ymm7_2, ymm7_2 <s (13316)@16,
(-13316)@16 <s ymm7_3, ymm7_3 <s (13316)@16,
(-13316)@16 <s ymm7_4, ymm7_4 <s (13316)@16,
(-13316)@16 <s ymm7_5, ymm7_5 <s (13316)@16,
(-13316)@16 <s ymm7_6, ymm7_6 <s (13316)@16,
(-13316)@16 <s ymm7_7, ymm7_7 <s (13316)@16,
(-13316)@16 <s ymm10_0, ymm10_0 <s (13316)@16,
(-13316)@16 <s ymm10_1, ymm10_1 <s (13316)@16,
(-13316)@16 <s ymm10_2, ymm10_2 <s (13316)@16,
(-13316)@16 <s ymm10_3, ymm10_3 <s (13316)@16,
(-13316)@16 <s ymm10_4, ymm10_4 <s (13316)@16,
(-13316)@16 <s ymm10_5, ymm10_5 <s (13316)@16,
(-13316)@16 <s ymm10_6, ymm10_6 <s (13316)@16,
(-13316)@16 <s ymm10_7, ymm10_7 <s (13316)@16,
(-13316)@16 <s ymm5_0, ymm5_0 <s (13316)@16,
(-13316)@16 <s ymm5_1, ymm5_1 <s (13316)@16,
(-13316)@16 <s ymm5_2, ymm5_2 <s (13316)@16,
(-13316)@16 <s ymm5_3, ymm5_3 <s (13316)@16,
(-13316)@16 <s ymm5_4, ymm5_4 <s (13316)@16,
(-13316)@16 <s ymm5_5, ymm5_5 <s (13316)@16,
(-13316)@16 <s ymm5_6, ymm5_6 <s (13316)@16,
(-13316)@16 <s ymm5_7, ymm5_7 <s (13316)@16,
(-13316)@16 <s ymm11_0, ymm11_0 <s (13316)@16,
(-13316)@16 <s ymm11_1, ymm11_1 <s (13316)@16,
(-13316)@16 <s ymm11_2, ymm11_2 <s (13316)@16,
(-13316)@16 <s ymm11_3, ymm11_3 <s (13316)@16,
(-13316)@16 <s ymm11_4, ymm11_4 <s (13316)@16,
(-13316)@16 <s ymm11_5, ymm11_5 <s (13316)@16,
(-13316)@16 <s ymm11_6, ymm11_6 <s (13316)@16,
(-13316)@16 <s ymm11_7, ymm11_7 <s (13316)@16,
(-13316)@16 <s ymm4_8, ymm4_8 <s (13316)@16,
(-13316)@16 <s ymm4_9, ymm4_9 <s (13316)@16,
(-13316)@16 <s ymm4_a, ymm4_a <s (13316)@16,
(-13316)@16 <s ymm4_b, ymm4_b <s (13316)@16,
(-13316)@16 <s ymm4_c, ymm4_c <s (13316)@16,
(-13316)@16 <s ymm4_d, ymm4_d <s (13316)@16,
(-13316)@16 <s ymm4_e, ymm4_e <s (13316)@16,
(-13316)@16 <s ymm4_f, ymm4_f <s (13316)@16,
(-13316)@16 <s ymm6_8, ymm6_8 <s (13316)@16,
(-13316)@16 <s ymm6_9, ymm6_9 <s (13316)@16,
(-13316)@16 <s ymm6_a, ymm6_a <s (13316)@16,
(-13316)@16 <s ymm6_b, ymm6_b <s (13316)@16,
(-13316)@16 <s ymm6_c, ymm6_c <s (13316)@16,
(-13316)@16 <s ymm6_d, ymm6_d <s (13316)@16,
(-13316)@16 <s ymm6_e, ymm6_e <s (13316)@16,
(-13316)@16 <s ymm6_f, ymm6_f <s (13316)@16,
(-13316)@16 <s ymm8_8, ymm8_8 <s (13316)@16,
(-13316)@16 <s ymm8_9, ymm8_9 <s (13316)@16,
(-13316)@16 <s ymm8_a, ymm8_a <s (13316)@16,
(-13316)@16 <s ymm8_b, ymm8_b <s (13316)@16,
(-13316)@16 <s ymm8_c, ymm8_c <s (13316)@16,
(-13316)@16 <s ymm8_d, ymm8_d <s (13316)@16,
(-13316)@16 <s ymm8_e, ymm8_e <s (13316)@16,
(-13316)@16 <s ymm8_f, ymm8_f <s (13316)@16,
(-13316)@16 <s ymm3_8, ymm3_8 <s (13316)@16,
(-13316)@16 <s ymm3_9, ymm3_9 <s (13316)@16,
(-13316)@16 <s ymm3_a, ymm3_a <s (13316)@16,
(-13316)@16 <s ymm3_b, ymm3_b <s (13316)@16,
(-13316)@16 <s ymm3_c, ymm3_c <s (13316)@16,
(-13316)@16 <s ymm3_d, ymm3_d <s (13316)@16,
(-13316)@16 <s ymm3_e, ymm3_e <s (13316)@16,
(-13316)@16 <s ymm3_f, ymm3_f <s (13316)@16,
(-13316)@16 <s ymm7_8, ymm7_8 <s (13316)@16,
(-13316)@16 <s ymm7_9, ymm7_9 <s (13316)@16,
(-13316)@16 <s ymm7_a, ymm7_a <s (13316)@16,
(-13316)@16 <s ymm7_b, ymm7_b <s (13316)@16,
(-13316)@16 <s ymm7_c, ymm7_c <s (13316)@16,
(-13316)@16 <s ymm7_d, ymm7_d <s (13316)@16,
(-13316)@16 <s ymm7_e, ymm7_e <s (13316)@16,
(-13316)@16 <s ymm7_f, ymm7_f <s (13316)@16,
(-13316)@16 <s ymm10_8, ymm10_8 <s (13316)@16,
(-13316)@16 <s ymm10_9, ymm10_9 <s (13316)@16,
(-13316)@16 <s ymm10_a, ymm10_a <s (13316)@16,
(-13316)@16 <s ymm10_b, ymm10_b <s (13316)@16,
(-13316)@16 <s ymm10_c, ymm10_c <s (13316)@16,
(-13316)@16 <s ymm10_d, ymm10_d <s (13316)@16,
(-13316)@16 <s ymm10_e, ymm10_e <s (13316)@16,
(-13316)@16 <s ymm10_f, ymm10_f <s (13316)@16,
(-13316)@16 <s ymm5_8, ymm5_8 <s (13316)@16,
(-13316)@16 <s ymm5_9, ymm5_9 <s (13316)@16,
(-13316)@16 <s ymm5_a, ymm5_a <s (13316)@16,
(-13316)@16 <s ymm5_b, ymm5_b <s (13316)@16,
(-13316)@16 <s ymm5_c, ymm5_c <s (13316)@16,
(-13316)@16 <s ymm5_d, ymm5_d <s (13316)@16,
(-13316)@16 <s ymm5_e, ymm5_e <s (13316)@16,
(-13316)@16 <s ymm5_f, ymm5_f <s (13316)@16,
(-13316)@16 <s ymm11_8, ymm11_8 <s (13316)@16,
(-13316)@16 <s ymm11_9, ymm11_9 <s (13316)@16,
(-13316)@16 <s ymm11_a, ymm11_a <s (13316)@16,
(-13316)@16 <s ymm11_b, ymm11_b <s (13316)@16,
(-13316)@16 <s ymm11_c, ymm11_c <s (13316)@16,
(-13316)@16 <s ymm11_d, ymm11_d <s (13316)@16,
(-13316)@16 <s ymm11_e, ymm11_e <s (13316)@16,
(-13316)@16 <s ymm11_f, ymm11_f <s (13316)@16];

(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556eeec *)
mov lqdq_0 ymm8_0;
mov lqdq_1 ymm8_1;
mov lqdq_2 ymm8_2;
mov lqdq_3 ymm8_3;
mov lqdq_4 ymm5_0;
mov lqdq_5 ymm5_1;
mov lqdq_6 ymm5_2;
mov lqdq_7 ymm5_3;
mov lqdq_8 ymm8_8;
mov lqdq_9 ymm8_9;
mov lqdq_a ymm8_a;
mov lqdq_b ymm8_b;
mov lqdq_c ymm5_8;
mov lqdq_d ymm5_9;
mov lqdq_e ymm5_a;
mov lqdq_f ymm5_b;
mov ymm9_0 lqdq_0;
mov ymm9_1 lqdq_1;
mov ymm9_2 lqdq_2;
mov ymm9_3 lqdq_3;
mov ymm9_4 lqdq_4;
mov ymm9_5 lqdq_5;
mov ymm9_6 lqdq_6;
mov ymm9_7 lqdq_7;
mov ymm9_8 lqdq_8;
mov ymm9_9 lqdq_9;
mov ymm9_a lqdq_a;
mov ymm9_b lqdq_b;
mov ymm9_c lqdq_c;
mov ymm9_d lqdq_d;
mov ymm9_e lqdq_e;
mov ymm9_f lqdq_f;
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556eef0 *)
mov hqdq_0 ymm8_4;
mov hqdq_1 ymm8_5;
mov hqdq_2 ymm8_6;
mov hqdq_3 ymm8_7;
mov hqdq_4 ymm5_4;
mov hqdq_5 ymm5_5;
mov hqdq_6 ymm5_6;
mov hqdq_7 ymm5_7;
mov hqdq_8 ymm8_c;
mov hqdq_9 ymm8_d;
mov hqdq_a ymm8_e;
mov hqdq_b ymm8_f;
mov hqdq_c ymm5_c;
mov hqdq_d ymm5_d;
mov hqdq_e ymm5_e;
mov hqdq_f ymm5_f;
mov ymm5_0 hqdq_0;
mov ymm5_1 hqdq_1;
mov ymm5_2 hqdq_2;
mov ymm5_3 hqdq_3;
mov ymm5_4 hqdq_4;
mov ymm5_5 hqdq_5;
mov ymm5_6 hqdq_6;
mov ymm5_7 hqdq_7;
mov ymm5_8 hqdq_8;
mov ymm5_9 hqdq_9;
mov ymm5_a hqdq_a;
mov ymm5_b hqdq_b;
mov ymm5_c hqdq_c;
mov ymm5_d hqdq_d;
mov ymm5_e hqdq_e;
mov ymm5_f hqdq_f;
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556eef4 *)
mov lqdq_0 ymm3_0;
mov lqdq_1 ymm3_1;
mov lqdq_2 ymm3_2;
mov lqdq_3 ymm3_3;
mov lqdq_4 ymm11_0;
mov lqdq_5 ymm11_1;
mov lqdq_6 ymm11_2;
mov lqdq_7 ymm11_3;
mov lqdq_8 ymm3_8;
mov lqdq_9 ymm3_9;
mov lqdq_a ymm3_a;
mov lqdq_b ymm3_b;
mov lqdq_c ymm11_8;
mov lqdq_d ymm11_9;
mov lqdq_e ymm11_a;
mov lqdq_f ymm11_b;
mov ymm8_0 lqdq_0;
mov ymm8_1 lqdq_1;
mov ymm8_2 lqdq_2;
mov ymm8_3 lqdq_3;
mov ymm8_4 lqdq_4;
mov ymm8_5 lqdq_5;
mov ymm8_6 lqdq_6;
mov ymm8_7 lqdq_7;
mov ymm8_8 lqdq_8;
mov ymm8_9 lqdq_9;
mov ymm8_a lqdq_a;
mov ymm8_b lqdq_b;
mov ymm8_c lqdq_c;
mov ymm8_d lqdq_d;
mov ymm8_e lqdq_e;
mov ymm8_f lqdq_f;
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556eef9 *)
mov hqdq_0 ymm3_4;
mov hqdq_1 ymm3_5;
mov hqdq_2 ymm3_6;
mov hqdq_3 ymm3_7;
mov hqdq_4 ymm11_4;
mov hqdq_5 ymm11_5;
mov hqdq_6 ymm11_6;
mov hqdq_7 ymm11_7;
mov hqdq_8 ymm3_c;
mov hqdq_9 ymm3_d;
mov hqdq_a ymm3_e;
mov hqdq_b ymm3_f;
mov hqdq_c ymm11_c;
mov hqdq_d ymm11_d;
mov hqdq_e ymm11_e;
mov hqdq_f ymm11_f;
mov ymm11_0 hqdq_0;
mov ymm11_1 hqdq_1;
mov ymm11_2 hqdq_2;
mov ymm11_3 hqdq_3;
mov ymm11_4 hqdq_4;
mov ymm11_5 hqdq_5;
mov ymm11_6 hqdq_6;
mov ymm11_7 hqdq_7;
mov ymm11_8 hqdq_8;
mov ymm11_9 hqdq_9;
mov ymm11_a hqdq_a;
mov ymm11_b hqdq_b;
mov ymm11_c hqdq_c;
mov ymm11_d hqdq_d;
mov ymm11_e hqdq_e;
mov ymm11_f hqdq_f;
(* vmovdqa 0x1e0(%rsi),%ymm15                      #! EA = L0x5555556397c0; Value = 0xae55ae55ae55ae55; PC = 0x55555556eefe *)
mov ymm15_0 L0x5555556397c0;
mov ymm15_1 L0x5555556397c2;
mov ymm15_2 L0x5555556397c4;
mov ymm15_3 L0x5555556397c6;
mov ymm15_4 L0x5555556397c8;
mov ymm15_5 L0x5555556397ca;
mov ymm15_6 L0x5555556397cc;
mov ymm15_7 L0x5555556397ce;
mov ymm15_8 L0x5555556397d0;
mov ymm15_9 L0x5555556397d2;
mov ymm15_a L0x5555556397d4;
mov ymm15_b L0x5555556397d6;
mov ymm15_c L0x5555556397d8;
mov ymm15_d L0x5555556397da;
mov ymm15_e L0x5555556397dc;
mov ymm15_f L0x5555556397de;
(* vmovdqa 0x200(%rsi),%ymm2                       #! EA = L0x5555556397e0; Value = 0xff55ff55ff55ff55; PC = 0x55555556ef06 *)
mov ymm2_0 L0x5555556397e0;
mov ymm2_1 L0x5555556397e2;
mov ymm2_2 L0x5555556397e4;
mov ymm2_3 L0x5555556397e6;
mov ymm2_4 L0x5555556397e8;
mov ymm2_5 L0x5555556397ea;
mov ymm2_6 L0x5555556397ec;
mov ymm2_7 L0x5555556397ee;
mov ymm2_8 L0x5555556397f0;
mov ymm2_9 L0x5555556397f2;
mov ymm2_a L0x5555556397f4;
mov ymm2_b L0x5555556397f6;
mov ymm2_c L0x5555556397f8;
mov ymm2_d L0x5555556397fa;
mov ymm2_e L0x5555556397fc;
mov ymm2_f L0x5555556397fe;
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556ef0e *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556ef13 *)
smull mulHymm5_0 mulL_0 ymm15_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm15_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm15_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm15_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm15_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm15_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm15_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm15_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm15_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm15_9 ymm5_9;
smull mulHymm5_a mulL_a ymm15_a ymm5_a;
smull mulHymm5_b mulL_b ymm15_b ymm5_b;
smull mulHymm5_c mulL_c ymm15_c ymm5_c;
smull mulHymm5_d mulL_d ymm15_d ymm5_d;
smull mulHymm5_e mulL_e ymm15_e ymm5_e;
smull mulHymm5_f mulL_f ymm15_f ymm5_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556ef18 *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ef1d *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ef22 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ef26 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm2_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm2_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm2_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm2_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm2_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm2_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm2_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm2_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm2_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm2_9;
smull mulH_a mulLymm5_a ymm5_a ymm2_a;
smull mulH_b mulLymm5_b ymm5_b ymm2_b;
smull mulH_c mulLymm5_c ymm5_c ymm2_c;
smull mulH_d mulLymm5_d ymm5_d ymm2_d;
smull mulH_e mulLymm5_e ymm5_e ymm2_e;
smull mulH_f mulLymm5_f ymm5_f ymm2_f;
mov ymm5_0 mulH_0;
mov ymm5_1 mulH_1;
mov ymm5_2 mulH_2;
mov ymm5_3 mulH_3;
mov ymm5_4 mulH_4;
mov ymm5_5 mulH_5;
mov ymm5_6 mulH_6;
mov ymm5_7 mulH_7;
mov ymm5_8 mulH_8;
mov ymm5_9 mulH_9;
mov ymm5_a mulH_a;
mov ymm5_b mulH_b;
mov ymm5_c mulH_c;
mov ymm5_d mulH_d;
mov ymm5_e mulH_e;
mov ymm5_f mulH_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ef2a *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ef2e *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556ef32 *)
mov lqdq_0 ymm4_0;
mov lqdq_1 ymm4_1;
mov lqdq_2 ymm4_2;
mov lqdq_3 ymm4_3;
mov lqdq_4 ymm7_0;
mov lqdq_5 ymm7_1;
mov lqdq_6 ymm7_2;
mov lqdq_7 ymm7_3;
mov lqdq_8 ymm4_8;
mov lqdq_9 ymm4_9;
mov lqdq_a ymm4_a;
mov lqdq_b ymm4_b;
mov lqdq_c ymm7_8;
mov lqdq_d ymm7_9;
mov lqdq_e ymm7_a;
mov lqdq_f ymm7_b;
mov ymm3_0 lqdq_0;
mov ymm3_1 lqdq_1;
mov ymm3_2 lqdq_2;
mov ymm3_3 lqdq_3;
mov ymm3_4 lqdq_4;
mov ymm3_5 lqdq_5;
mov ymm3_6 lqdq_6;
mov ymm3_7 lqdq_7;
mov ymm3_8 lqdq_8;
mov ymm3_9 lqdq_9;
mov ymm3_a lqdq_a;
mov ymm3_b lqdq_b;
mov ymm3_c lqdq_c;
mov ymm3_d lqdq_d;
mov ymm3_e lqdq_e;
mov ymm3_f lqdq_f;
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556ef36 *)
mov hqdq_0 ymm4_4;
mov hqdq_1 ymm4_5;
mov hqdq_2 ymm4_6;
mov hqdq_3 ymm4_7;
mov hqdq_4 ymm7_4;
mov hqdq_5 ymm7_5;
mov hqdq_6 ymm7_6;
mov hqdq_7 ymm7_7;
mov hqdq_8 ymm4_c;
mov hqdq_9 ymm4_d;
mov hqdq_a ymm4_e;
mov hqdq_b ymm4_f;
mov hqdq_c ymm7_c;
mov hqdq_d ymm7_d;
mov hqdq_e ymm7_e;
mov hqdq_f ymm7_f;
mov ymm7_0 hqdq_0;
mov ymm7_1 hqdq_1;
mov ymm7_2 hqdq_2;
mov ymm7_3 hqdq_3;
mov ymm7_4 hqdq_4;
mov ymm7_5 hqdq_5;
mov ymm7_6 hqdq_6;
mov ymm7_7 hqdq_7;
mov ymm7_8 hqdq_8;
mov ymm7_9 hqdq_9;
mov ymm7_a hqdq_a;
mov ymm7_b hqdq_b;
mov ymm7_c hqdq_c;
mov ymm7_d hqdq_d;
mov ymm7_e hqdq_e;
mov ymm7_f hqdq_f;
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556ef3a *)
mov lqdq_0 ymm6_0;
mov lqdq_1 ymm6_1;
mov lqdq_2 ymm6_2;
mov lqdq_3 ymm6_3;
mov lqdq_4 ymm10_0;
mov lqdq_5 ymm10_1;
mov lqdq_6 ymm10_2;
mov lqdq_7 ymm10_3;
mov lqdq_8 ymm6_8;
mov lqdq_9 ymm6_9;
mov lqdq_a ymm6_a;
mov lqdq_b ymm6_b;
mov lqdq_c ymm10_8;
mov lqdq_d ymm10_9;
mov lqdq_e ymm10_a;
mov lqdq_f ymm10_b;
mov ymm4_0 lqdq_0;
mov ymm4_1 lqdq_1;
mov ymm4_2 lqdq_2;
mov ymm4_3 lqdq_3;
mov ymm4_4 lqdq_4;
mov ymm4_5 lqdq_5;
mov ymm4_6 lqdq_6;
mov ymm4_7 lqdq_7;
mov ymm4_8 lqdq_8;
mov ymm4_9 lqdq_9;
mov ymm4_a lqdq_a;
mov ymm4_b lqdq_b;
mov ymm4_c lqdq_c;
mov ymm4_d lqdq_d;
mov ymm4_e lqdq_e;
mov ymm4_f lqdq_f;
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556ef3f *)
mov hqdq_0 ymm6_4;
mov hqdq_1 ymm6_5;
mov hqdq_2 ymm6_6;
mov hqdq_3 ymm6_7;
mov hqdq_4 ymm10_4;
mov hqdq_5 ymm10_5;
mov hqdq_6 ymm10_6;
mov hqdq_7 ymm10_7;
mov hqdq_8 ymm6_c;
mov hqdq_9 ymm6_d;
mov hqdq_a ymm6_e;
mov hqdq_b ymm6_f;
mov hqdq_c ymm10_c;
mov hqdq_d ymm10_d;
mov hqdq_e ymm10_e;
mov hqdq_f ymm10_f;
mov ymm10_0 hqdq_0;
mov ymm10_1 hqdq_1;
mov ymm10_2 hqdq_2;
mov ymm10_3 hqdq_3;
mov ymm10_4 hqdq_4;
mov ymm10_5 hqdq_5;
mov ymm10_6 hqdq_6;
mov ymm10_7 hqdq_7;
mov ymm10_8 hqdq_8;
mov ymm10_9 hqdq_9;
mov ymm10_a hqdq_a;
mov ymm10_b hqdq_b;
mov ymm10_c hqdq_c;
mov ymm10_d hqdq_d;
mov ymm10_e hqdq_e;
mov ymm10_f hqdq_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ef44 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ef48 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm5_0;
assume red_0 = mulLymm5_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm5_1;
assume red_1 = mulLymm5_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm5_2;
assume red_2 = mulLymm5_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm5_3;
assume red_3 = mulLymm5_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm5_4;
assume red_4 = mulLymm5_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm5_5;
assume red_5 = mulLymm5_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm5_6;
assume red_6 = mulLymm5_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm5_7;
assume red_7 = mulLymm5_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm5_8;
assume red_8 = mulLymm5_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm5_9;
assume red_9 = mulLymm5_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm5_a;
assume red_a = mulLymm5_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm5_b;
assume red_b = mulLymm5_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm5_c;
assume red_c = mulLymm5_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm5_d;
assume red_d = mulLymm5_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm5_e;
assume red_e = mulLymm5_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm5_f;
assume red_f = mulLymm5_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ef4c *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ef50 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556ef54 *)
add ymm6_0 ymm3_0 ymm9_0;
add ymm6_1 ymm3_1 ymm9_1;
add ymm6_2 ymm3_2 ymm9_2;
add ymm6_3 ymm3_3 ymm9_3;
add ymm6_4 ymm3_4 ymm9_4;
add ymm6_5 ymm3_5 ymm9_5;
add ymm6_6 ymm3_6 ymm9_6;
add ymm6_7 ymm3_7 ymm9_7;
add ymm6_8 ymm3_8 ymm9_8;
add ymm6_9 ymm3_9 ymm9_9;
add ymm6_a ymm3_a ymm9_a;
add ymm6_b ymm3_b ymm9_b;
add ymm6_c ymm3_c ymm9_c;
add ymm6_d ymm3_d ymm9_d;
add ymm6_e ymm3_e ymm9_e;
add ymm6_f ymm3_f ymm9_f;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556ef59 *)
sub ymm9_0 ymm3_0 ymm9_0;
sub ymm9_1 ymm3_1 ymm9_1;
sub ymm9_2 ymm3_2 ymm9_2;
sub ymm9_3 ymm3_3 ymm9_3;
sub ymm9_4 ymm3_4 ymm9_4;
sub ymm9_5 ymm3_5 ymm9_5;
sub ymm9_6 ymm3_6 ymm9_6;
sub ymm9_7 ymm3_7 ymm9_7;
sub ymm9_8 ymm3_8 ymm9_8;
sub ymm9_9 ymm3_9 ymm9_9;
sub ymm9_a ymm3_a ymm9_a;
sub ymm9_b ymm3_b ymm9_b;
sub ymm9_c ymm3_c ymm9_c;
sub ymm9_d ymm3_d ymm9_d;
sub ymm9_e ymm3_e ymm9_e;
sub ymm9_f ymm3_f ymm9_f;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556ef5e *)
add ymm3_0 ymm7_0 ymm5_0;
add ymm3_1 ymm7_1 ymm5_1;
add ymm3_2 ymm7_2 ymm5_2;
add ymm3_3 ymm7_3 ymm5_3;
add ymm3_4 ymm7_4 ymm5_4;
add ymm3_5 ymm7_5 ymm5_5;
add ymm3_6 ymm7_6 ymm5_6;
add ymm3_7 ymm7_7 ymm5_7;
add ymm3_8 ymm7_8 ymm5_8;
add ymm3_9 ymm7_9 ymm5_9;
add ymm3_a ymm7_a ymm5_a;
add ymm3_b ymm7_b ymm5_b;
add ymm3_c ymm7_c ymm5_c;
add ymm3_d ymm7_d ymm5_d;
add ymm3_e ymm7_e ymm5_e;
add ymm3_f ymm7_f ymm5_f;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556ef62 *)
sub ymm5_0 ymm7_0 ymm5_0;
sub ymm5_1 ymm7_1 ymm5_1;
sub ymm5_2 ymm7_2 ymm5_2;
sub ymm5_3 ymm7_3 ymm5_3;
sub ymm5_4 ymm7_4 ymm5_4;
sub ymm5_5 ymm7_5 ymm5_5;
sub ymm5_6 ymm7_6 ymm5_6;
sub ymm5_7 ymm7_7 ymm5_7;
sub ymm5_8 ymm7_8 ymm5_8;
sub ymm5_9 ymm7_9 ymm5_9;
sub ymm5_a ymm7_a ymm5_a;
sub ymm5_b ymm7_b ymm5_b;
sub ymm5_c ymm7_c ymm5_c;
sub ymm5_d ymm7_d ymm5_d;
sub ymm5_e ymm7_e ymm5_e;
sub ymm5_f ymm7_f ymm5_f;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556ef66 *)
add ymm7_0 ymm4_0 ymm8_0;
add ymm7_1 ymm4_1 ymm8_1;
add ymm7_2 ymm4_2 ymm8_2;
add ymm7_3 ymm4_3 ymm8_3;
add ymm7_4 ymm4_4 ymm8_4;
add ymm7_5 ymm4_5 ymm8_5;
add ymm7_6 ymm4_6 ymm8_6;
add ymm7_7 ymm4_7 ymm8_7;
add ymm7_8 ymm4_8 ymm8_8;
add ymm7_9 ymm4_9 ymm8_9;
add ymm7_a ymm4_a ymm8_a;
add ymm7_b ymm4_b ymm8_b;
add ymm7_c ymm4_c ymm8_c;
add ymm7_d ymm4_d ymm8_d;
add ymm7_e ymm4_e ymm8_e;
add ymm7_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ef6b *)
sub ymm8_0 ymm4_0 ymm8_0;
sub ymm8_1 ymm4_1 ymm8_1;
sub ymm8_2 ymm4_2 ymm8_2;
sub ymm8_3 ymm4_3 ymm8_3;
sub ymm8_4 ymm4_4 ymm8_4;
sub ymm8_5 ymm4_5 ymm8_5;
sub ymm8_6 ymm4_6 ymm8_6;
sub ymm8_7 ymm4_7 ymm8_7;
sub ymm8_8 ymm4_8 ymm8_8;
sub ymm8_9 ymm4_9 ymm8_9;
sub ymm8_a ymm4_a ymm8_a;
sub ymm8_b ymm4_b ymm8_b;
sub ymm8_c ymm4_c ymm8_c;
sub ymm8_d ymm4_d ymm8_d;
sub ymm8_e ymm4_e ymm8_e;
sub ymm8_f ymm4_f ymm8_f;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556ef70 *)
add ymm4_0 ymm10_0 ymm11_0;
add ymm4_1 ymm10_1 ymm11_1;
add ymm4_2 ymm10_2 ymm11_2;
add ymm4_3 ymm10_3 ymm11_3;
add ymm4_4 ymm10_4 ymm11_4;
add ymm4_5 ymm10_5 ymm11_5;
add ymm4_6 ymm10_6 ymm11_6;
add ymm4_7 ymm10_7 ymm11_7;
add ymm4_8 ymm10_8 ymm11_8;
add ymm4_9 ymm10_9 ymm11_9;
add ymm4_a ymm10_a ymm11_a;
add ymm4_b ymm10_b ymm11_b;
add ymm4_c ymm10_c ymm11_c;
add ymm4_d ymm10_d ymm11_d;
add ymm4_e ymm10_e ymm11_e;
add ymm4_f ymm10_f ymm11_f;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556ef75 *)
sub ymm11_0 ymm10_0 ymm11_0;
sub ymm11_1 ymm10_1 ymm11_1;
sub ymm11_2 ymm10_2 ymm11_2;
sub ymm11_3 ymm10_3 ymm11_3;
sub ymm11_4 ymm10_4 ymm11_4;
sub ymm11_5 ymm10_5 ymm11_5;
sub ymm11_6 ymm10_6 ymm11_6;
sub ymm11_7 ymm10_7 ymm11_7;
sub ymm11_8 ymm10_8 ymm11_8;
sub ymm11_9 ymm10_9 ymm11_9;
sub ymm11_a ymm10_a ymm11_a;
sub ymm11_b ymm10_b ymm11_b;
sub ymm11_c ymm10_c ymm11_c;
sub ymm11_d ymm10_d ymm11_d;
sub ymm11_e ymm10_e ymm11_e;
sub ymm11_f ymm10_f ymm11_f;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556ef7a *)
sub ymm6_0 ymm6_0 ymm12_0;
sub ymm6_1 ymm6_1 ymm12_1;
sub ymm6_2 ymm6_2 ymm12_2;
sub ymm6_3 ymm6_3 ymm12_3;
sub ymm6_4 ymm6_4 ymm12_4;
sub ymm6_5 ymm6_5 ymm12_5;
sub ymm6_6 ymm6_6 ymm12_6;
sub ymm6_7 ymm6_7 ymm12_7;
sub ymm6_8 ymm6_8 ymm12_8;
sub ymm6_9 ymm6_9 ymm12_9;
sub ymm6_a ymm6_a ymm12_a;
sub ymm6_b ymm6_b ymm12_b;
sub ymm6_c ymm6_c ymm12_c;
sub ymm6_d ymm6_d ymm12_d;
sub ymm6_e ymm6_e ymm12_e;
sub ymm6_f ymm6_f ymm12_f;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556ef7f *)
add ymm9_0 ymm9_0 ymm12_0;
add ymm9_1 ymm9_1 ymm12_1;
add ymm9_2 ymm9_2 ymm12_2;
add ymm9_3 ymm9_3 ymm12_3;
add ymm9_4 ymm9_4 ymm12_4;
add ymm9_5 ymm9_5 ymm12_5;
add ymm9_6 ymm9_6 ymm12_6;
add ymm9_7 ymm9_7 ymm12_7;
add ymm9_8 ymm9_8 ymm12_8;
add ymm9_9 ymm9_9 ymm12_9;
add ymm9_a ymm9_a ymm12_a;
add ymm9_b ymm9_b ymm12_b;
add ymm9_c ymm9_c ymm12_c;
add ymm9_d ymm9_d ymm12_d;
add ymm9_e ymm9_e ymm12_e;
add ymm9_f ymm9_f ymm12_f;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556ef84 *)
sub ymm3_0 ymm3_0 ymm13_0;
sub ymm3_1 ymm3_1 ymm13_1;
sub ymm3_2 ymm3_2 ymm13_2;
sub ymm3_3 ymm3_3 ymm13_3;
sub ymm3_4 ymm3_4 ymm13_4;
sub ymm3_5 ymm3_5 ymm13_5;
sub ymm3_6 ymm3_6 ymm13_6;
sub ymm3_7 ymm3_7 ymm13_7;
sub ymm3_8 ymm3_8 ymm13_8;
sub ymm3_9 ymm3_9 ymm13_9;
sub ymm3_a ymm3_a ymm13_a;
sub ymm3_b ymm3_b ymm13_b;
sub ymm3_c ymm3_c ymm13_c;
sub ymm3_d ymm3_d ymm13_d;
sub ymm3_e ymm3_e ymm13_e;
sub ymm3_f ymm3_f ymm13_f;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556ef89 *)
add ymm5_0 ymm5_0 ymm13_0;
add ymm5_1 ymm5_1 ymm13_1;
add ymm5_2 ymm5_2 ymm13_2;
add ymm5_3 ymm5_3 ymm13_3;
add ymm5_4 ymm5_4 ymm13_4;
add ymm5_5 ymm5_5 ymm13_5;
add ymm5_6 ymm5_6 ymm13_6;
add ymm5_7 ymm5_7 ymm13_7;
add ymm5_8 ymm5_8 ymm13_8;
add ymm5_9 ymm5_9 ymm13_9;
add ymm5_a ymm5_a ymm13_a;
add ymm5_b ymm5_b ymm13_b;
add ymm5_c ymm5_c ymm13_c;
add ymm5_d ymm5_d ymm13_d;
add ymm5_e ymm5_e ymm13_e;
add ymm5_f ymm5_f ymm13_f;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ef8e *)
sub ymm7_0 ymm7_0 ymm14_0;
sub ymm7_1 ymm7_1 ymm14_1;
sub ymm7_2 ymm7_2 ymm14_2;
sub ymm7_3 ymm7_3 ymm14_3;
sub ymm7_4 ymm7_4 ymm14_4;
sub ymm7_5 ymm7_5 ymm14_5;
sub ymm7_6 ymm7_6 ymm14_6;
sub ymm7_7 ymm7_7 ymm14_7;
sub ymm7_8 ymm7_8 ymm14_8;
sub ymm7_9 ymm7_9 ymm14_9;
sub ymm7_a ymm7_a ymm14_a;
sub ymm7_b ymm7_b ymm14_b;
sub ymm7_c ymm7_c ymm14_c;
sub ymm7_d ymm7_d ymm14_d;
sub ymm7_e ymm7_e ymm14_e;
sub ymm7_f ymm7_f ymm14_f;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ef93 *)
add ymm8_0 ymm8_0 ymm14_0;
add ymm8_1 ymm8_1 ymm14_1;
add ymm8_2 ymm8_2 ymm14_2;
add ymm8_3 ymm8_3 ymm14_3;
add ymm8_4 ymm8_4 ymm14_4;
add ymm8_5 ymm8_5 ymm14_5;
add ymm8_6 ymm8_6 ymm14_6;
add ymm8_7 ymm8_7 ymm14_7;
add ymm8_8 ymm8_8 ymm14_8;
add ymm8_9 ymm8_9 ymm14_9;
add ymm8_a ymm8_a ymm14_a;
add ymm8_b ymm8_b ymm14_b;
add ymm8_c ymm8_c ymm14_c;
add ymm8_d ymm8_d ymm14_d;
add ymm8_e ymm8_e ymm14_e;
add ymm8_f ymm8_f ymm14_f;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556ef98 *)
sub ymm4_0 ymm4_0 ymm15_0;
sub ymm4_1 ymm4_1 ymm15_1;
sub ymm4_2 ymm4_2 ymm15_2;
sub ymm4_3 ymm4_3 ymm15_3;
sub ymm4_4 ymm4_4 ymm15_4;
sub ymm4_5 ymm4_5 ymm15_5;
sub ymm4_6 ymm4_6 ymm15_6;
sub ymm4_7 ymm4_7 ymm15_7;
sub ymm4_8 ymm4_8 ymm15_8;
sub ymm4_9 ymm4_9 ymm15_9;
sub ymm4_a ymm4_a ymm15_a;
sub ymm4_b ymm4_b ymm15_b;
sub ymm4_c ymm4_c ymm15_c;
sub ymm4_d ymm4_d ymm15_d;
sub ymm4_e ymm4_e ymm15_e;
sub ymm4_f ymm4_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ef9d *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 3 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm6_0*(x**0) + ymm6_1*(x**1) + ymm6_2*(x**2) + ymm6_3*(x**3) +
 ymm3_0*(x**4) + ymm3_1*(x**5) + ymm3_2*(x**6) + ymm3_3*(x**7) +
 ymm7_0*(x**8) + ymm7_1*(x**9) + ymm7_2*(x**10) + ymm7_3*(x**11) +
 ymm4_0*(x**12) + ymm4_1*(x**13) + ymm4_2*(x**14) + ymm4_3*(x**15))
[3329, x**16 - (1062)],
eqmod (inp_poly**2)
(ymm9_0*(x**0) + ymm9_1*(x**1) + ymm9_2*(x**2) + ymm9_3*(x**3) +
 ymm5_0*(x**4) + ymm5_1*(x**5) + ymm5_2*(x**6) + ymm5_3*(x**7) +
 ymm8_0*(x**8) + ymm8_1*(x**9) + ymm8_2*(x**10) + ymm8_3*(x**11) +
 ymm11_0*(x**12) + ymm11_1*(x**13) + ymm11_2*(x**14) + ymm11_3*(x**15))
[3329, x**16 - (2267)],
eqmod (inp_poly**2)
(ymm6_4*(x**0) + ymm6_5*(x**1) + ymm6_6*(x**2) + ymm6_7*(x**3) +
 ymm3_4*(x**4) + ymm3_5*(x**5) + ymm3_6*(x**6) + ymm3_7*(x**7) +
 ymm7_4*(x**8) + ymm7_5*(x**9) + ymm7_6*(x**10) + ymm7_7*(x**11) +
 ymm4_4*(x**12) + ymm4_5*(x**13) + ymm4_6*(x**14) + ymm4_7*(x**15))
[3329, x**16 - (1919)],
eqmod (inp_poly**2)
(ymm9_4*(x**0) + ymm9_5*(x**1) + ymm9_6*(x**2) + ymm9_7*(x**3) +
 ymm5_4*(x**4) + ymm5_5*(x**5) + ymm5_6*(x**6) + ymm5_7*(x**7) +
 ymm8_4*(x**8) + ymm8_5*(x**9) + ymm8_6*(x**10) + ymm8_7*(x**11) +
 ymm11_4*(x**12) + ymm11_5*(x**13) + ymm11_6*(x**14) + ymm11_7*(x**15))
[3329, x**16 - (1410)],
eqmod (inp_poly**2)
(ymm6_8*(x**0) + ymm6_9*(x**1) + ymm6_a*(x**2) + ymm6_b*(x**3) +
 ymm3_8*(x**4) + ymm3_9*(x**5) + ymm3_a*(x**6) + ymm3_b*(x**7) +
 ymm7_8*(x**8) + ymm7_9*(x**9) + ymm7_a*(x**10) + ymm7_b*(x**11) +
 ymm4_8*(x**12) + ymm4_9*(x**13) + ymm4_a*(x**14) + ymm4_b*(x**15))
[3329, x**16 - (193)],
eqmod (inp_poly**2)
(ymm9_8*(x**0) + ymm9_9*(x**1) + ymm9_a*(x**2) + ymm9_b*(x**3) +
 ymm5_8*(x**4) + ymm5_9*(x**5) + ymm5_a*(x**6) + ymm5_b*(x**7) +
 ymm8_8*(x**8) + ymm8_9*(x**9) + ymm8_a*(x**10) + ymm8_b*(x**11) +
 ymm11_8*(x**12) + ymm11_9*(x**13) + ymm11_a*(x**14) + ymm11_b*(x**15))
[3329, x**16 - (3136)],
eqmod (inp_poly**2)
(ymm6_c*(x**0) + ymm6_d*(x**1) + ymm6_e*(x**2) + ymm6_f*(x**3) +
 ymm3_c*(x**4) + ymm3_d*(x**5) + ymm3_e*(x**6) + ymm3_f*(x**7) +
 ymm7_c*(x**8) + ymm7_d*(x**9) + ymm7_e*(x**10) + ymm7_f*(x**11) +
 ymm4_c*(x**12) + ymm4_d*(x**13) + ymm4_e*(x**14) + ymm4_f*(x**15))
[3329, x**16 - (797)],
eqmod (inp_poly**2)
(ymm9_c*(x**0) + ymm9_d*(x**1) + ymm9_e*(x**2) + ymm9_f*(x**3) +
 ymm5_c*(x**4) + ymm5_d*(x**5) + ymm5_e*(x**6) + ymm5_f*(x**7) +
 ymm8_c*(x**8) + ymm8_d*(x**9) + ymm8_e*(x**10) + ymm8_f*(x**11) +
 ymm11_c*(x**12) + ymm11_d*(x**13) + ymm11_e*(x**14) + ymm11_f*(x**15))
[3329, x**16 - (2532)]]
&&
and [
(-16645)@16 <s ymm6_0, ymm6_0 <s (16645)@16,
(-16645)@16 <s ymm6_1, ymm6_1 <s (16645)@16,
(-16645)@16 <s ymm6_2, ymm6_2 <s (16645)@16,
(-16645)@16 <s ymm6_3, ymm6_3 <s (16645)@16,
(-16645)@16 <s ymm3_0, ymm3_0 <s (16645)@16,
(-16645)@16 <s ymm3_1, ymm3_1 <s (16645)@16,
(-16645)@16 <s ymm3_2, ymm3_2 <s (16645)@16,
(-16645)@16 <s ymm3_3, ymm3_3 <s (16645)@16,
(-16645)@16 <s ymm7_0, ymm7_0 <s (16645)@16,
(-16645)@16 <s ymm7_1, ymm7_1 <s (16645)@16,
(-16645)@16 <s ymm7_2, ymm7_2 <s (16645)@16,
(-16645)@16 <s ymm7_3, ymm7_3 <s (16645)@16,
(-16645)@16 <s ymm4_0, ymm4_0 <s (16645)@16,
(-16645)@16 <s ymm4_1, ymm4_1 <s (16645)@16,
(-16645)@16 <s ymm4_2, ymm4_2 <s (16645)@16,
(-16645)@16 <s ymm4_3, ymm4_3 <s (16645)@16,
(-16645)@16 <s ymm9_0, ymm9_0 <s (16645)@16,
(-16645)@16 <s ymm9_1, ymm9_1 <s (16645)@16,
(-16645)@16 <s ymm9_2, ymm9_2 <s (16645)@16,
(-16645)@16 <s ymm9_3, ymm9_3 <s (16645)@16,
(-16645)@16 <s ymm5_0, ymm5_0 <s (16645)@16,
(-16645)@16 <s ymm5_1, ymm5_1 <s (16645)@16,
(-16645)@16 <s ymm5_2, ymm5_2 <s (16645)@16,
(-16645)@16 <s ymm5_3, ymm5_3 <s (16645)@16,
(-16645)@16 <s ymm8_0, ymm8_0 <s (16645)@16,
(-16645)@16 <s ymm8_1, ymm8_1 <s (16645)@16,
(-16645)@16 <s ymm8_2, ymm8_2 <s (16645)@16,
(-16645)@16 <s ymm8_3, ymm8_3 <s (16645)@16,
(-16645)@16 <s ymm11_0, ymm11_0 <s (16645)@16,
(-16645)@16 <s ymm11_1, ymm11_1 <s (16645)@16,
(-16645)@16 <s ymm11_2, ymm11_2 <s (16645)@16,
(-16645)@16 <s ymm11_3, ymm11_3 <s (16645)@16,
(-16645)@16 <s ymm6_4, ymm6_4 <s (16645)@16,
(-16645)@16 <s ymm6_5, ymm6_5 <s (16645)@16,
(-16645)@16 <s ymm6_6, ymm6_6 <s (16645)@16,
(-16645)@16 <s ymm6_7, ymm6_7 <s (16645)@16,
(-16645)@16 <s ymm3_4, ymm3_4 <s (16645)@16,
(-16645)@16 <s ymm3_5, ymm3_5 <s (16645)@16,
(-16645)@16 <s ymm3_6, ymm3_6 <s (16645)@16,
(-16645)@16 <s ymm3_7, ymm3_7 <s (16645)@16,
(-16645)@16 <s ymm7_4, ymm7_4 <s (16645)@16,
(-16645)@16 <s ymm7_5, ymm7_5 <s (16645)@16,
(-16645)@16 <s ymm7_6, ymm7_6 <s (16645)@16,
(-16645)@16 <s ymm7_7, ymm7_7 <s (16645)@16,
(-16645)@16 <s ymm4_4, ymm4_4 <s (16645)@16,
(-16645)@16 <s ymm4_5, ymm4_5 <s (16645)@16,
(-16645)@16 <s ymm4_6, ymm4_6 <s (16645)@16,
(-16645)@16 <s ymm4_7, ymm4_7 <s (16645)@16,
(-16645)@16 <s ymm9_4, ymm9_4 <s (16645)@16,
(-16645)@16 <s ymm9_5, ymm9_5 <s (16645)@16,
(-16645)@16 <s ymm9_6, ymm9_6 <s (16645)@16,
(-16645)@16 <s ymm9_7, ymm9_7 <s (16645)@16,
(-16645)@16 <s ymm5_4, ymm5_4 <s (16645)@16,
(-16645)@16 <s ymm5_5, ymm5_5 <s (16645)@16,
(-16645)@16 <s ymm5_6, ymm5_6 <s (16645)@16,
(-16645)@16 <s ymm5_7, ymm5_7 <s (16645)@16,
(-16645)@16 <s ymm8_4, ymm8_4 <s (16645)@16,
(-16645)@16 <s ymm8_5, ymm8_5 <s (16645)@16,
(-16645)@16 <s ymm8_6, ymm8_6 <s (16645)@16,
(-16645)@16 <s ymm8_7, ymm8_7 <s (16645)@16,
(-16645)@16 <s ymm11_4, ymm11_4 <s (16645)@16,
(-16645)@16 <s ymm11_5, ymm11_5 <s (16645)@16,
(-16645)@16 <s ymm11_6, ymm11_6 <s (16645)@16,
(-16645)@16 <s ymm11_7, ymm11_7 <s (16645)@16,
(-16645)@16 <s ymm6_8, ymm6_8 <s (16645)@16,
(-16645)@16 <s ymm6_9, ymm6_9 <s (16645)@16,
(-16645)@16 <s ymm6_a, ymm6_a <s (16645)@16,
(-16645)@16 <s ymm6_b, ymm6_b <s (16645)@16,
(-16645)@16 <s ymm3_8, ymm3_8 <s (16645)@16,
(-16645)@16 <s ymm3_9, ymm3_9 <s (16645)@16,
(-16645)@16 <s ymm3_a, ymm3_a <s (16645)@16,
(-16645)@16 <s ymm3_b, ymm3_b <s (16645)@16,
(-16645)@16 <s ymm7_8, ymm7_8 <s (16645)@16,
(-16645)@16 <s ymm7_9, ymm7_9 <s (16645)@16,
(-16645)@16 <s ymm7_a, ymm7_a <s (16645)@16,
(-16645)@16 <s ymm7_b, ymm7_b <s (16645)@16,
(-16645)@16 <s ymm4_8, ymm4_8 <s (16645)@16,
(-16645)@16 <s ymm4_9, ymm4_9 <s (16645)@16,
(-16645)@16 <s ymm4_a, ymm4_a <s (16645)@16,
(-16645)@16 <s ymm4_b, ymm4_b <s (16645)@16,
(-16645)@16 <s ymm9_8, ymm9_8 <s (16645)@16,
(-16645)@16 <s ymm9_9, ymm9_9 <s (16645)@16,
(-16645)@16 <s ymm9_a, ymm9_a <s (16645)@16,
(-16645)@16 <s ymm9_b, ymm9_b <s (16645)@16,
(-16645)@16 <s ymm5_8, ymm5_8 <s (16645)@16,
(-16645)@16 <s ymm5_9, ymm5_9 <s (16645)@16,
(-16645)@16 <s ymm5_a, ymm5_a <s (16645)@16,
(-16645)@16 <s ymm5_b, ymm5_b <s (16645)@16,
(-16645)@16 <s ymm8_8, ymm8_8 <s (16645)@16,
(-16645)@16 <s ymm8_9, ymm8_9 <s (16645)@16,
(-16645)@16 <s ymm8_a, ymm8_a <s (16645)@16,
(-16645)@16 <s ymm8_b, ymm8_b <s (16645)@16,
(-16645)@16 <s ymm11_8, ymm11_8 <s (16645)@16,
(-16645)@16 <s ymm11_9, ymm11_9 <s (16645)@16,
(-16645)@16 <s ymm11_a, ymm11_a <s (16645)@16,
(-16645)@16 <s ymm11_b, ymm11_b <s (16645)@16,
(-16645)@16 <s ymm6_c, ymm6_c <s (16645)@16,
(-16645)@16 <s ymm6_d, ymm6_d <s (16645)@16,
(-16645)@16 <s ymm6_e, ymm6_e <s (16645)@16,
(-16645)@16 <s ymm6_f, ymm6_f <s (16645)@16,
(-16645)@16 <s ymm3_c, ymm3_c <s (16645)@16,
(-16645)@16 <s ymm3_d, ymm3_d <s (16645)@16,
(-16645)@16 <s ymm3_e, ymm3_e <s (16645)@16,
(-16645)@16 <s ymm3_f, ymm3_f <s (16645)@16,
(-16645)@16 <s ymm7_c, ymm7_c <s (16645)@16,
(-16645)@16 <s ymm7_d, ymm7_d <s (16645)@16,
(-16645)@16 <s ymm7_e, ymm7_e <s (16645)@16,
(-16645)@16 <s ymm7_f, ymm7_f <s (16645)@16,
(-16645)@16 <s ymm4_c, ymm4_c <s (16645)@16,
(-16645)@16 <s ymm4_d, ymm4_d <s (16645)@16,
(-16645)@16 <s ymm4_e, ymm4_e <s (16645)@16,
(-16645)@16 <s ymm4_f, ymm4_f <s (16645)@16,
(-16645)@16 <s ymm9_c, ymm9_c <s (16645)@16,
(-16645)@16 <s ymm9_d, ymm9_d <s (16645)@16,
(-16645)@16 <s ymm9_e, ymm9_e <s (16645)@16,
(-16645)@16 <s ymm9_f, ymm9_f <s (16645)@16,
(-16645)@16 <s ymm5_c, ymm5_c <s (16645)@16,
(-16645)@16 <s ymm5_d, ymm5_d <s (16645)@16,
(-16645)@16 <s ymm5_e, ymm5_e <s (16645)@16,
(-16645)@16 <s ymm5_f, ymm5_f <s (16645)@16,
(-16645)@16 <s ymm8_c, ymm8_c <s (16645)@16,
(-16645)@16 <s ymm8_d, ymm8_d <s (16645)@16,
(-16645)@16 <s ymm8_e, ymm8_e <s (16645)@16,
(-16645)@16 <s ymm8_f, ymm8_f <s (16645)@16,
(-16645)@16 <s ymm11_c, ymm11_c <s (16645)@16,
(-16645)@16 <s ymm11_d, ymm11_d <s (16645)@16,
(-16645)@16 <s ymm11_e, ymm11_e <s (16645)@16,
(-16645)@16 <s ymm11_f, ymm11_f <s (16645)@16];

(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556efa2 *)
mov ymm10_0 ymm8_0;
mov ymm10_1 ymm8_1;
mov ymm10_2 ymm8_0;
mov ymm10_3 ymm8_1;
mov ymm10_4 ymm8_4;
mov ymm10_5 ymm8_5;
mov ymm10_6 ymm8_4;
mov ymm10_7 ymm8_5;
mov ymm10_8 ymm8_8;
mov ymm10_9 ymm8_9;
mov ymm10_a ymm8_8;
mov ymm10_b ymm8_9;
mov ymm10_c ymm8_c;
mov ymm10_d ymm8_d;
mov ymm10_e ymm8_c;
mov ymm10_f ymm8_d;
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556efa7 *)
mov bldd_0 ymm7_0;
mov bldd_1 ymm7_1;
mov bldd_2 ymm10_2;
mov bldd_3 ymm10_3;
mov bldd_4 ymm7_4;
mov bldd_5 ymm7_5;
mov bldd_6 ymm10_6;
mov bldd_7 ymm10_7;
mov bldd_8 ymm7_8;
mov bldd_9 ymm7_9;
mov bldd_a ymm10_a;
mov bldd_b ymm10_b;
mov bldd_c ymm7_c;
mov bldd_d ymm7_d;
mov bldd_e ymm10_e;
mov bldd_f ymm10_f;
mov ymm10_0 bldd_0;
mov ymm10_1 bldd_1;
mov ymm10_2 bldd_2;
mov ymm10_3 bldd_3;
mov ymm10_4 bldd_4;
mov ymm10_5 bldd_5;
mov ymm10_6 bldd_6;
mov ymm10_7 bldd_7;
mov ymm10_8 bldd_8;
mov ymm10_9 bldd_9;
mov ymm10_a bldd_a;
mov ymm10_b bldd_b;
mov ymm10_c bldd_c;
mov ymm10_d bldd_d;
mov ymm10_e bldd_e;
mov ymm10_f bldd_f;
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556efad *)
mov srlq_0 ymm7_2;
mov srlq_1 ymm7_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm7_6;
mov srlq_5 ymm7_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm7_a;
mov srlq_9 ymm7_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm7_e;
mov srlq_d ymm7_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm7_0 srlq_0;
mov ymm7_1 srlq_1;
mov ymm7_2 srlq_2;
mov ymm7_3 srlq_3;
mov ymm7_4 srlq_4;
mov ymm7_5 srlq_5;
mov ymm7_6 srlq_6;
mov ymm7_7 srlq_7;
mov ymm7_8 srlq_8;
mov ymm7_9 srlq_9;
mov ymm7_a srlq_a;
mov ymm7_b srlq_b;
mov ymm7_c srlq_c;
mov ymm7_d srlq_d;
mov ymm7_e srlq_e;
mov ymm7_f srlq_f;
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556efb2 *)
mov bldd_0 ymm7_0;
mov bldd_1 ymm7_1;
mov bldd_2 ymm8_2;
mov bldd_3 ymm8_3;
mov bldd_4 ymm7_4;
mov bldd_5 ymm7_5;
mov bldd_6 ymm8_6;
mov bldd_7 ymm8_7;
mov bldd_8 ymm7_8;
mov bldd_9 ymm7_9;
mov bldd_a ymm8_a;
mov bldd_b ymm8_b;
mov bldd_c ymm7_c;
mov bldd_d ymm7_d;
mov bldd_e ymm8_e;
mov bldd_f ymm8_f;
mov ymm8_0 bldd_0;
mov ymm8_1 bldd_1;
mov ymm8_2 bldd_2;
mov ymm8_3 bldd_3;
mov ymm8_4 bldd_4;
mov ymm8_5 bldd_5;
mov ymm8_6 bldd_6;
mov ymm8_7 bldd_7;
mov ymm8_8 bldd_8;
mov ymm8_9 bldd_9;
mov ymm8_a bldd_a;
mov ymm8_b bldd_b;
mov ymm8_c bldd_c;
mov ymm8_d bldd_d;
mov ymm8_e bldd_e;
mov ymm8_f bldd_f;
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556efb8 *)
mov ymm7_0 ymm11_0;
mov ymm7_1 ymm11_1;
mov ymm7_2 ymm11_0;
mov ymm7_3 ymm11_1;
mov ymm7_4 ymm11_4;
mov ymm7_5 ymm11_5;
mov ymm7_6 ymm11_4;
mov ymm7_7 ymm11_5;
mov ymm7_8 ymm11_8;
mov ymm7_9 ymm11_9;
mov ymm7_a ymm11_8;
mov ymm7_b ymm11_9;
mov ymm7_c ymm11_c;
mov ymm7_d ymm11_d;
mov ymm7_e ymm11_c;
mov ymm7_f ymm11_d;
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556efbd *)
mov bldd_0 ymm4_0;
mov bldd_1 ymm4_1;
mov bldd_2 ymm7_2;
mov bldd_3 ymm7_3;
mov bldd_4 ymm4_4;
mov bldd_5 ymm4_5;
mov bldd_6 ymm7_6;
mov bldd_7 ymm7_7;
mov bldd_8 ymm4_8;
mov bldd_9 ymm4_9;
mov bldd_a ymm7_a;
mov bldd_b ymm7_b;
mov bldd_c ymm4_c;
mov bldd_d ymm4_d;
mov bldd_e ymm7_e;
mov bldd_f ymm7_f;
mov ymm7_0 bldd_0;
mov ymm7_1 bldd_1;
mov ymm7_2 bldd_2;
mov ymm7_3 bldd_3;
mov ymm7_4 bldd_4;
mov ymm7_5 bldd_5;
mov ymm7_6 bldd_6;
mov ymm7_7 bldd_7;
mov ymm7_8 bldd_8;
mov ymm7_9 bldd_9;
mov ymm7_a bldd_a;
mov ymm7_b bldd_b;
mov ymm7_c bldd_c;
mov ymm7_d bldd_d;
mov ymm7_e bldd_e;
mov ymm7_f bldd_f;
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556efc3 *)
mov srlq_0 ymm4_2;
mov srlq_1 ymm4_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm4_6;
mov srlq_5 ymm4_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm4_a;
mov srlq_9 ymm4_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm4_e;
mov srlq_d ymm4_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm4_0 srlq_0;
mov ymm4_1 srlq_1;
mov ymm4_2 srlq_2;
mov ymm4_3 srlq_3;
mov ymm4_4 srlq_4;
mov ymm4_5 srlq_5;
mov ymm4_6 srlq_6;
mov ymm4_7 srlq_7;
mov ymm4_8 srlq_8;
mov ymm4_9 srlq_9;
mov ymm4_a srlq_a;
mov ymm4_b srlq_b;
mov ymm4_c srlq_c;
mov ymm4_d srlq_d;
mov ymm4_e srlq_e;
mov ymm4_f srlq_f;
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556efc8 *)
mov bldd_0 ymm4_0;
mov bldd_1 ymm4_1;
mov bldd_2 ymm11_2;
mov bldd_3 ymm11_3;
mov bldd_4 ymm4_4;
mov bldd_5 ymm4_5;
mov bldd_6 ymm11_6;
mov bldd_7 ymm11_7;
mov bldd_8 ymm4_8;
mov bldd_9 ymm4_9;
mov bldd_a ymm11_a;
mov bldd_b ymm11_b;
mov bldd_c ymm4_c;
mov bldd_d ymm4_d;
mov bldd_e ymm11_e;
mov bldd_f ymm11_f;
mov ymm11_0 bldd_0;
mov ymm11_1 bldd_1;
mov ymm11_2 bldd_2;
mov ymm11_3 bldd_3;
mov ymm11_4 bldd_4;
mov ymm11_5 bldd_5;
mov ymm11_6 bldd_6;
mov ymm11_7 bldd_7;
mov ymm11_8 bldd_8;
mov ymm11_9 bldd_9;
mov ymm11_a bldd_a;
mov ymm11_b bldd_b;
mov ymm11_c bldd_c;
mov ymm11_d bldd_d;
mov ymm11_e bldd_e;
mov ymm11_f bldd_f;
(* vmovdqa 0x220(%rsi),%ymm15                      #! EA = L0x555555639800; Value = 0x43d343d3e93de93d; PC = 0x55555556efce *)
mov ymm15_0 L0x555555639800;
mov ymm15_1 L0x555555639802;
mov ymm15_2 L0x555555639804;
mov ymm15_3 L0x555555639806;
mov ymm15_4 L0x555555639808;
mov ymm15_5 L0x55555563980a;
mov ymm15_6 L0x55555563980c;
mov ymm15_7 L0x55555563980e;
mov ymm15_8 L0x555555639810;
mov ymm15_9 L0x555555639812;
mov ymm15_a L0x555555639814;
mov ymm15_b L0x555555639816;
mov ymm15_c L0x555555639818;
mov ymm15_d L0x55555563981a;
mov ymm15_e L0x55555563981c;
mov ymm15_f L0x55555563981e;
(* vmovdqa 0x240(%rsi),%ymm2                       #! EA = L0x555555639820; Value = 0xfad3fad3023d023d; PC = 0x55555556efd6 *)
mov ymm2_0 L0x555555639820;
mov ymm2_1 L0x555555639822;
mov ymm2_2 L0x555555639824;
mov ymm2_3 L0x555555639826;
mov ymm2_4 L0x555555639828;
mov ymm2_5 L0x55555563982a;
mov ymm2_6 L0x55555563982c;
mov ymm2_7 L0x55555563982e;
mov ymm2_8 L0x555555639830;
mov ymm2_9 L0x555555639832;
mov ymm2_a L0x555555639834;
mov ymm2_b L0x555555639836;
mov ymm2_c L0x555555639838;
mov ymm2_d L0x55555563983a;
mov ymm2_e L0x55555563983c;
mov ymm2_f L0x55555563983e;
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556efde *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556efe3 *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556efe8 *)
smull mulHymm7_0 mulL_0 ymm15_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm15_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm15_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm15_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm15_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm15_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm15_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm15_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm15_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm15_9 ymm7_9;
smull mulHymm7_a mulL_a ymm15_a ymm7_a;
smull mulHymm7_b mulL_b ymm15_b ymm7_b;
smull mulHymm7_c mulL_c ymm15_c ymm7_c;
smull mulHymm7_d mulL_d ymm15_d ymm7_d;
smull mulHymm7_e mulL_e ymm15_e ymm7_e;
smull mulHymm7_f mulL_f ymm15_f ymm7_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556efed *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eff2 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eff6 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556effa *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm2_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm2_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm2_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm2_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm2_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm2_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm2_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm2_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm2_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm2_9;
smull mulH_a mulLymm7_a ymm7_a ymm2_a;
smull mulH_b mulLymm7_b ymm7_b ymm2_b;
smull mulH_c mulLymm7_c ymm7_c ymm2_c;
smull mulH_d mulLymm7_d ymm7_d ymm2_d;
smull mulH_e mulLymm7_e ymm7_e ymm2_e;
smull mulH_f mulLymm7_f ymm7_f ymm2_f;
mov ymm7_0 mulH_0;
mov ymm7_1 mulH_1;
mov ymm7_2 mulH_2;
mov ymm7_3 mulH_3;
mov ymm7_4 mulH_4;
mov ymm7_5 mulH_5;
mov ymm7_6 mulH_6;
mov ymm7_7 mulH_7;
mov ymm7_8 mulH_8;
mov ymm7_9 mulH_9;
mov ymm7_a mulH_a;
mov ymm7_b mulH_b;
mov ymm7_c mulH_c;
mov ymm7_d mulH_d;
mov ymm7_e mulH_e;
mov ymm7_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556effe *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556f002 *)
mov ymm4_0 ymm9_0;
mov ymm4_1 ymm9_1;
mov ymm4_2 ymm9_0;
mov ymm4_3 ymm9_1;
mov ymm4_4 ymm9_4;
mov ymm4_5 ymm9_5;
mov ymm4_6 ymm9_4;
mov ymm4_7 ymm9_5;
mov ymm4_8 ymm9_8;
mov ymm4_9 ymm9_9;
mov ymm4_a ymm9_8;
mov ymm4_b ymm9_9;
mov ymm4_c ymm9_c;
mov ymm4_d ymm9_d;
mov ymm4_e ymm9_c;
mov ymm4_f ymm9_d;
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556f007 *)
mov bldd_0 ymm6_0;
mov bldd_1 ymm6_1;
mov bldd_2 ymm4_2;
mov bldd_3 ymm4_3;
mov bldd_4 ymm6_4;
mov bldd_5 ymm6_5;
mov bldd_6 ymm4_6;
mov bldd_7 ymm4_7;
mov bldd_8 ymm6_8;
mov bldd_9 ymm6_9;
mov bldd_a ymm4_a;
mov bldd_b ymm4_b;
mov bldd_c ymm6_c;
mov bldd_d ymm6_d;
mov bldd_e ymm4_e;
mov bldd_f ymm4_f;
mov ymm4_0 bldd_0;
mov ymm4_1 bldd_1;
mov ymm4_2 bldd_2;
mov ymm4_3 bldd_3;
mov ymm4_4 bldd_4;
mov ymm4_5 bldd_5;
mov ymm4_6 bldd_6;
mov ymm4_7 bldd_7;
mov ymm4_8 bldd_8;
mov ymm4_9 bldd_9;
mov ymm4_a bldd_a;
mov ymm4_b bldd_b;
mov ymm4_c bldd_c;
mov ymm4_d bldd_d;
mov ymm4_e bldd_e;
mov ymm4_f bldd_f;
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556f00d *)
mov srlq_0 ymm6_2;
mov srlq_1 ymm6_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm6_6;
mov srlq_5 ymm6_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm6_a;
mov srlq_9 ymm6_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm6_e;
mov srlq_d ymm6_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm6_0 srlq_0;
mov ymm6_1 srlq_1;
mov ymm6_2 srlq_2;
mov ymm6_3 srlq_3;
mov ymm6_4 srlq_4;
mov ymm6_5 srlq_5;
mov ymm6_6 srlq_6;
mov ymm6_7 srlq_7;
mov ymm6_8 srlq_8;
mov ymm6_9 srlq_9;
mov ymm6_a srlq_a;
mov ymm6_b srlq_b;
mov ymm6_c srlq_c;
mov ymm6_d srlq_d;
mov ymm6_e srlq_e;
mov ymm6_f srlq_f;
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f012 *)
mov bldd_0 ymm6_0;
mov bldd_1 ymm6_1;
mov bldd_2 ymm9_2;
mov bldd_3 ymm9_3;
mov bldd_4 ymm6_4;
mov bldd_5 ymm6_5;
mov bldd_6 ymm9_6;
mov bldd_7 ymm9_7;
mov bldd_8 ymm6_8;
mov bldd_9 ymm6_9;
mov bldd_a ymm9_a;
mov bldd_b ymm9_b;
mov bldd_c ymm6_c;
mov bldd_d ymm6_d;
mov bldd_e ymm9_e;
mov bldd_f ymm9_f;
mov ymm9_0 bldd_0;
mov ymm9_1 bldd_1;
mov ymm9_2 bldd_2;
mov ymm9_3 bldd_3;
mov ymm9_4 bldd_4;
mov ymm9_5 bldd_5;
mov ymm9_6 bldd_6;
mov ymm9_7 bldd_7;
mov ymm9_8 bldd_8;
mov ymm9_9 bldd_9;
mov ymm9_a bldd_a;
mov ymm9_b bldd_b;
mov ymm9_c bldd_c;
mov ymm9_d bldd_d;
mov ymm9_e bldd_e;
mov ymm9_f bldd_f;
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556f018 *)
mov ymm6_0 ymm5_0;
mov ymm6_1 ymm5_1;
mov ymm6_2 ymm5_0;
mov ymm6_3 ymm5_1;
mov ymm6_4 ymm5_4;
mov ymm6_5 ymm5_5;
mov ymm6_6 ymm5_4;
mov ymm6_7 ymm5_5;
mov ymm6_8 ymm5_8;
mov ymm6_9 ymm5_9;
mov ymm6_a ymm5_8;
mov ymm6_b ymm5_9;
mov ymm6_c ymm5_c;
mov ymm6_d ymm5_d;
mov ymm6_e ymm5_c;
mov ymm6_f ymm5_d;
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f01c *)
mov bldd_0 ymm3_0;
mov bldd_1 ymm3_1;
mov bldd_2 ymm6_2;
mov bldd_3 ymm6_3;
mov bldd_4 ymm3_4;
mov bldd_5 ymm3_5;
mov bldd_6 ymm6_6;
mov bldd_7 ymm6_7;
mov bldd_8 ymm3_8;
mov bldd_9 ymm3_9;
mov bldd_a ymm6_a;
mov bldd_b ymm6_b;
mov bldd_c ymm3_c;
mov bldd_d ymm3_d;
mov bldd_e ymm6_e;
mov bldd_f ymm6_f;
mov ymm6_0 bldd_0;
mov ymm6_1 bldd_1;
mov ymm6_2 bldd_2;
mov ymm6_3 bldd_3;
mov ymm6_4 bldd_4;
mov ymm6_5 bldd_5;
mov ymm6_6 bldd_6;
mov ymm6_7 bldd_7;
mov ymm6_8 bldd_8;
mov ymm6_9 bldd_9;
mov ymm6_a bldd_a;
mov ymm6_b bldd_b;
mov ymm6_c bldd_c;
mov ymm6_d bldd_d;
mov ymm6_e bldd_e;
mov ymm6_f bldd_f;
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556f022 *)
mov srlq_0 ymm3_2;
mov srlq_1 ymm3_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm3_6;
mov srlq_5 ymm3_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm3_a;
mov srlq_9 ymm3_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm3_e;
mov srlq_d ymm3_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm3_0 srlq_0;
mov ymm3_1 srlq_1;
mov ymm3_2 srlq_2;
mov ymm3_3 srlq_3;
mov ymm3_4 srlq_4;
mov ymm3_5 srlq_5;
mov ymm3_6 srlq_6;
mov ymm3_7 srlq_7;
mov ymm3_8 srlq_8;
mov ymm3_9 srlq_9;
mov ymm3_a srlq_a;
mov ymm3_b srlq_b;
mov ymm3_c srlq_c;
mov ymm3_d srlq_d;
mov ymm3_e srlq_e;
mov ymm3_f srlq_f;
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556f027 *)
mov bldd_0 ymm3_0;
mov bldd_1 ymm3_1;
mov bldd_2 ymm5_2;
mov bldd_3 ymm5_3;
mov bldd_4 ymm3_4;
mov bldd_5 ymm3_5;
mov bldd_6 ymm5_6;
mov bldd_7 ymm5_7;
mov bldd_8 ymm3_8;
mov bldd_9 ymm3_9;
mov bldd_a ymm5_a;
mov bldd_b ymm5_b;
mov bldd_c ymm3_c;
mov bldd_d ymm3_d;
mov bldd_e ymm5_e;
mov bldd_f ymm5_f;
mov ymm5_0 bldd_0;
mov ymm5_1 bldd_1;
mov ymm5_2 bldd_2;
mov ymm5_3 bldd_3;
mov ymm5_4 bldd_4;
mov ymm5_5 bldd_5;
mov ymm5_6 bldd_6;
mov ymm5_7 bldd_7;
mov ymm5_8 bldd_8;
mov ymm5_9 bldd_9;
mov ymm5_a bldd_a;
mov ymm5_b bldd_b;
mov ymm5_c bldd_c;
mov ymm5_d bldd_d;
mov ymm5_e bldd_e;
mov ymm5_f bldd_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f02d *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f031 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f035 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm7_0;
assume red_0 = mulLymm7_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm7_1;
assume red_1 = mulLymm7_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm7_2;
assume red_2 = mulLymm7_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm7_3;
assume red_3 = mulLymm7_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm7_4;
assume red_4 = mulLymm7_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm7_5;
assume red_5 = mulLymm7_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm7_6;
assume red_6 = mulLymm7_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm7_7;
assume red_7 = mulLymm7_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm7_8;
assume red_8 = mulLymm7_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm7_9;
assume red_9 = mulLymm7_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm7_a;
assume red_a = mulLymm7_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm7_b;
assume red_b = mulLymm7_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm7_c;
assume red_c = mulLymm7_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm7_d;
assume red_d = mulLymm7_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm7_e;
assume red_e = mulLymm7_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm7_f;
assume red_f = mulLymm7_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f039 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556f03d *)
add ymm3_0 ymm4_0 ymm10_0;
add ymm3_1 ymm4_1 ymm10_1;
add ymm3_2 ymm4_2 ymm10_2;
add ymm3_3 ymm4_3 ymm10_3;
add ymm3_4 ymm4_4 ymm10_4;
add ymm3_5 ymm4_5 ymm10_5;
add ymm3_6 ymm4_6 ymm10_6;
add ymm3_7 ymm4_7 ymm10_7;
add ymm3_8 ymm4_8 ymm10_8;
add ymm3_9 ymm4_9 ymm10_9;
add ymm3_a ymm4_a ymm10_a;
add ymm3_b ymm4_b ymm10_b;
add ymm3_c ymm4_c ymm10_c;
add ymm3_d ymm4_d ymm10_d;
add ymm3_e ymm4_e ymm10_e;
add ymm3_f ymm4_f ymm10_f;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f042 *)
sub ymm10_0 ymm4_0 ymm10_0;
sub ymm10_1 ymm4_1 ymm10_1;
sub ymm10_2 ymm4_2 ymm10_2;
sub ymm10_3 ymm4_3 ymm10_3;
sub ymm10_4 ymm4_4 ymm10_4;
sub ymm10_5 ymm4_5 ymm10_5;
sub ymm10_6 ymm4_6 ymm10_6;
sub ymm10_7 ymm4_7 ymm10_7;
sub ymm10_8 ymm4_8 ymm10_8;
sub ymm10_9 ymm4_9 ymm10_9;
sub ymm10_a ymm4_a ymm10_a;
sub ymm10_b ymm4_b ymm10_b;
sub ymm10_c ymm4_c ymm10_c;
sub ymm10_d ymm4_d ymm10_d;
sub ymm10_e ymm4_e ymm10_e;
sub ymm10_f ymm4_f ymm10_f;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556f047 *)
add ymm4_0 ymm9_0 ymm8_0;
add ymm4_1 ymm9_1 ymm8_1;
add ymm4_2 ymm9_2 ymm8_2;
add ymm4_3 ymm9_3 ymm8_3;
add ymm4_4 ymm9_4 ymm8_4;
add ymm4_5 ymm9_5 ymm8_5;
add ymm4_6 ymm9_6 ymm8_6;
add ymm4_7 ymm9_7 ymm8_7;
add ymm4_8 ymm9_8 ymm8_8;
add ymm4_9 ymm9_9 ymm8_9;
add ymm4_a ymm9_a ymm8_a;
add ymm4_b ymm9_b ymm8_b;
add ymm4_c ymm9_c ymm8_c;
add ymm4_d ymm9_d ymm8_d;
add ymm4_e ymm9_e ymm8_e;
add ymm4_f ymm9_f ymm8_f;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556f04c *)
sub ymm8_0 ymm9_0 ymm8_0;
sub ymm8_1 ymm9_1 ymm8_1;
sub ymm8_2 ymm9_2 ymm8_2;
sub ymm8_3 ymm9_3 ymm8_3;
sub ymm8_4 ymm9_4 ymm8_4;
sub ymm8_5 ymm9_5 ymm8_5;
sub ymm8_6 ymm9_6 ymm8_6;
sub ymm8_7 ymm9_7 ymm8_7;
sub ymm8_8 ymm9_8 ymm8_8;
sub ymm8_9 ymm9_9 ymm8_9;
sub ymm8_a ymm9_a ymm8_a;
sub ymm8_b ymm9_b ymm8_b;
sub ymm8_c ymm9_c ymm8_c;
sub ymm8_d ymm9_d ymm8_d;
sub ymm8_e ymm9_e ymm8_e;
sub ymm8_f ymm9_f ymm8_f;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556f051 *)
add ymm9_0 ymm6_0 ymm7_0;
add ymm9_1 ymm6_1 ymm7_1;
add ymm9_2 ymm6_2 ymm7_2;
add ymm9_3 ymm6_3 ymm7_3;
add ymm9_4 ymm6_4 ymm7_4;
add ymm9_5 ymm6_5 ymm7_5;
add ymm9_6 ymm6_6 ymm7_6;
add ymm9_7 ymm6_7 ymm7_7;
add ymm9_8 ymm6_8 ymm7_8;
add ymm9_9 ymm6_9 ymm7_9;
add ymm9_a ymm6_a ymm7_a;
add ymm9_b ymm6_b ymm7_b;
add ymm9_c ymm6_c ymm7_c;
add ymm9_d ymm6_d ymm7_d;
add ymm9_e ymm6_e ymm7_e;
add ymm9_f ymm6_f ymm7_f;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f055 *)
sub ymm7_0 ymm6_0 ymm7_0;
sub ymm7_1 ymm6_1 ymm7_1;
sub ymm7_2 ymm6_2 ymm7_2;
sub ymm7_3 ymm6_3 ymm7_3;
sub ymm7_4 ymm6_4 ymm7_4;
sub ymm7_5 ymm6_5 ymm7_5;
sub ymm7_6 ymm6_6 ymm7_6;
sub ymm7_7 ymm6_7 ymm7_7;
sub ymm7_8 ymm6_8 ymm7_8;
sub ymm7_9 ymm6_9 ymm7_9;
sub ymm7_a ymm6_a ymm7_a;
sub ymm7_b ymm6_b ymm7_b;
sub ymm7_c ymm6_c ymm7_c;
sub ymm7_d ymm6_d ymm7_d;
sub ymm7_e ymm6_e ymm7_e;
sub ymm7_f ymm6_f ymm7_f;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556f059 *)
add ymm6_0 ymm5_0 ymm11_0;
add ymm6_1 ymm5_1 ymm11_1;
add ymm6_2 ymm5_2 ymm11_2;
add ymm6_3 ymm5_3 ymm11_3;
add ymm6_4 ymm5_4 ymm11_4;
add ymm6_5 ymm5_5 ymm11_5;
add ymm6_6 ymm5_6 ymm11_6;
add ymm6_7 ymm5_7 ymm11_7;
add ymm6_8 ymm5_8 ymm11_8;
add ymm6_9 ymm5_9 ymm11_9;
add ymm6_a ymm5_a ymm11_a;
add ymm6_b ymm5_b ymm11_b;
add ymm6_c ymm5_c ymm11_c;
add ymm6_d ymm5_d ymm11_d;
add ymm6_e ymm5_e ymm11_e;
add ymm6_f ymm5_f ymm11_f;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556f05e *)
sub ymm11_0 ymm5_0 ymm11_0;
sub ymm11_1 ymm5_1 ymm11_1;
sub ymm11_2 ymm5_2 ymm11_2;
sub ymm11_3 ymm5_3 ymm11_3;
sub ymm11_4 ymm5_4 ymm11_4;
sub ymm11_5 ymm5_5 ymm11_5;
sub ymm11_6 ymm5_6 ymm11_6;
sub ymm11_7 ymm5_7 ymm11_7;
sub ymm11_8 ymm5_8 ymm11_8;
sub ymm11_9 ymm5_9 ymm11_9;
sub ymm11_a ymm5_a ymm11_a;
sub ymm11_b ymm5_b ymm11_b;
sub ymm11_c ymm5_c ymm11_c;
sub ymm11_d ymm5_d ymm11_d;
sub ymm11_e ymm5_e ymm11_e;
sub ymm11_f ymm5_f ymm11_f;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f063 *)
sub ymm3_0 ymm3_0 ymm12_0;
sub ymm3_1 ymm3_1 ymm12_1;
sub ymm3_2 ymm3_2 ymm12_2;
sub ymm3_3 ymm3_3 ymm12_3;
sub ymm3_4 ymm3_4 ymm12_4;
sub ymm3_5 ymm3_5 ymm12_5;
sub ymm3_6 ymm3_6 ymm12_6;
sub ymm3_7 ymm3_7 ymm12_7;
sub ymm3_8 ymm3_8 ymm12_8;
sub ymm3_9 ymm3_9 ymm12_9;
sub ymm3_a ymm3_a ymm12_a;
sub ymm3_b ymm3_b ymm12_b;
sub ymm3_c ymm3_c ymm12_c;
sub ymm3_d ymm3_d ymm12_d;
sub ymm3_e ymm3_e ymm12_e;
sub ymm3_f ymm3_f ymm12_f;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f068 *)
add ymm10_0 ymm10_0 ymm12_0;
add ymm10_1 ymm10_1 ymm12_1;
add ymm10_2 ymm10_2 ymm12_2;
add ymm10_3 ymm10_3 ymm12_3;
add ymm10_4 ymm10_4 ymm12_4;
add ymm10_5 ymm10_5 ymm12_5;
add ymm10_6 ymm10_6 ymm12_6;
add ymm10_7 ymm10_7 ymm12_7;
add ymm10_8 ymm10_8 ymm12_8;
add ymm10_9 ymm10_9 ymm12_9;
add ymm10_a ymm10_a ymm12_a;
add ymm10_b ymm10_b ymm12_b;
add ymm10_c ymm10_c ymm12_c;
add ymm10_d ymm10_d ymm12_d;
add ymm10_e ymm10_e ymm12_e;
add ymm10_f ymm10_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f06d *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556f072 *)
add ymm8_0 ymm8_0 ymm13_0;
add ymm8_1 ymm8_1 ymm13_1;
add ymm8_2 ymm8_2 ymm13_2;
add ymm8_3 ymm8_3 ymm13_3;
add ymm8_4 ymm8_4 ymm13_4;
add ymm8_5 ymm8_5 ymm13_5;
add ymm8_6 ymm8_6 ymm13_6;
add ymm8_7 ymm8_7 ymm13_7;
add ymm8_8 ymm8_8 ymm13_8;
add ymm8_9 ymm8_9 ymm13_9;
add ymm8_a ymm8_a ymm13_a;
add ymm8_b ymm8_b ymm13_b;
add ymm8_c ymm8_c ymm13_c;
add ymm8_d ymm8_d ymm13_d;
add ymm8_e ymm8_e ymm13_e;
add ymm8_f ymm8_f ymm13_f;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f077 *)
sub ymm9_0 ymm9_0 ymm14_0;
sub ymm9_1 ymm9_1 ymm14_1;
sub ymm9_2 ymm9_2 ymm14_2;
sub ymm9_3 ymm9_3 ymm14_3;
sub ymm9_4 ymm9_4 ymm14_4;
sub ymm9_5 ymm9_5 ymm14_5;
sub ymm9_6 ymm9_6 ymm14_6;
sub ymm9_7 ymm9_7 ymm14_7;
sub ymm9_8 ymm9_8 ymm14_8;
sub ymm9_9 ymm9_9 ymm14_9;
sub ymm9_a ymm9_a ymm14_a;
sub ymm9_b ymm9_b ymm14_b;
sub ymm9_c ymm9_c ymm14_c;
sub ymm9_d ymm9_d ymm14_d;
sub ymm9_e ymm9_e ymm14_e;
sub ymm9_f ymm9_f ymm14_f;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f07c *)
add ymm7_0 ymm7_0 ymm14_0;
add ymm7_1 ymm7_1 ymm14_1;
add ymm7_2 ymm7_2 ymm14_2;
add ymm7_3 ymm7_3 ymm14_3;
add ymm7_4 ymm7_4 ymm14_4;
add ymm7_5 ymm7_5 ymm14_5;
add ymm7_6 ymm7_6 ymm14_6;
add ymm7_7 ymm7_7 ymm14_7;
add ymm7_8 ymm7_8 ymm14_8;
add ymm7_9 ymm7_9 ymm14_9;
add ymm7_a ymm7_a ymm14_a;
add ymm7_b ymm7_b ymm14_b;
add ymm7_c ymm7_c ymm14_c;
add ymm7_d ymm7_d ymm14_d;
add ymm7_e ymm7_e ymm14_e;
add ymm7_f ymm7_f ymm14_f;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f081 *)
sub ymm6_0 ymm6_0 ymm15_0;
sub ymm6_1 ymm6_1 ymm15_1;
sub ymm6_2 ymm6_2 ymm15_2;
sub ymm6_3 ymm6_3 ymm15_3;
sub ymm6_4 ymm6_4 ymm15_4;
sub ymm6_5 ymm6_5 ymm15_5;
sub ymm6_6 ymm6_6 ymm15_6;
sub ymm6_7 ymm6_7 ymm15_7;
sub ymm6_8 ymm6_8 ymm15_8;
sub ymm6_9 ymm6_9 ymm15_9;
sub ymm6_a ymm6_a ymm15_a;
sub ymm6_b ymm6_b ymm15_b;
sub ymm6_c ymm6_c ymm15_c;
sub ymm6_d ymm6_d ymm15_d;
sub ymm6_e ymm6_e ymm15_e;
sub ymm6_f ymm6_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f086 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;


(*********** SUMMARY OF LEVEL 4 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm3_0*(x**0) + ymm3_1*(x**1) + ymm4_0*(x**2) + ymm4_1*(x**3) +
 ymm9_0*(x**4) + ymm9_1*(x**5) + ymm6_0*(x**6) + ymm6_1*(x**7))
[3329, x**8 - (296)],
eqmod (inp_poly**2)
(ymm10_0*(x**0) + ymm10_1*(x**1) + ymm8_0*(x**2) + ymm8_1*(x**3) +
 ymm7_0*(x**4) + ymm7_1*(x**5) + ymm11_0*(x**6) + ymm11_1*(x**7))
[3329, x**8 - (3033)],
eqmod (inp_poly**2)
(ymm3_2*(x**0) + ymm3_3*(x**1) + ymm4_2*(x**2) + ymm4_3*(x**3) +
 ymm9_2*(x**4) + ymm9_3*(x**5) + ymm6_2*(x**6) + ymm6_3*(x**7))
[3329, x**8 - (2447)],
eqmod (inp_poly**2)
(ymm10_2*(x**0) + ymm10_3*(x**1) + ymm8_2*(x**2) + ymm8_3*(x**3) +
 ymm7_2*(x**4) + ymm7_3*(x**5) + ymm11_2*(x**6) + ymm11_3*(x**7))
[3329, x**8 - (882)],
eqmod (inp_poly**2)
(ymm3_4*(x**0) + ymm3_5*(x**1) + ymm4_4*(x**2) + ymm4_5*(x**3) +
 ymm9_4*(x**4) + ymm9_5*(x**5) + ymm6_4*(x**6) + ymm6_5*(x**7))
[3329, x**8 - (1339)],
eqmod (inp_poly**2)
(ymm10_4*(x**0) + ymm10_5*(x**1) + ymm8_4*(x**2) + ymm8_5*(x**3) +
 ymm7_4*(x**4) + ymm7_5*(x**5) + ymm11_4*(x**6) + ymm11_5*(x**7))
[3329, x**8 - (1990)],
eqmod (inp_poly**2)
(ymm3_6*(x**0) + ymm3_7*(x**1) + ymm4_6*(x**2) + ymm4_7*(x**3) +
 ymm9_6*(x**4) + ymm9_7*(x**5) + ymm6_6*(x**6) + ymm6_7*(x**7))
[3329, x**8 - (1476)],
eqmod (inp_poly**2)
(ymm10_6*(x**0) + ymm10_7*(x**1) + ymm8_6*(x**2) + ymm8_7*(x**3) +
 ymm7_6*(x**4) + ymm7_7*(x**5) + ymm11_6*(x**6) + ymm11_7*(x**7))
[3329, x**8 - (1853)],
eqmod (inp_poly**2)
(ymm3_8*(x**0) + ymm3_9*(x**1) + ymm4_8*(x**2) + ymm4_9*(x**3) +
 ymm9_8*(x**4) + ymm9_9*(x**5) + ymm6_8*(x**6) + ymm6_9*(x**7))
[3329, x**8 - (3046)],
eqmod (inp_poly**2)
(ymm10_8*(x**0) + ymm10_9*(x**1) + ymm8_8*(x**2) + ymm8_9*(x**3) +
 ymm7_8*(x**4) + ymm7_9*(x**5) + ymm11_8*(x**6) + ymm11_9*(x**7))
[3329, x**8 - (283)],
eqmod (inp_poly**2)
(ymm3_a*(x**0) + ymm3_b*(x**1) + ymm4_a*(x**2) + ymm4_b*(x**3) +
 ymm9_a*(x**4) + ymm9_b*(x**5) + ymm6_a*(x**6) + ymm6_b*(x**7))
[3329, x**8 - (56)],
eqmod (inp_poly**2)
(ymm10_a*(x**0) + ymm10_b*(x**1) + ymm8_a*(x**2) + ymm8_b*(x**3) +
 ymm7_a*(x**4) + ymm7_b*(x**5) + ymm11_a*(x**6) + ymm11_b*(x**7))
[3329, x**8 - (3273)],
eqmod (inp_poly**2)
(ymm3_c*(x**0) + ymm3_d*(x**1) + ymm4_c*(x**2) + ymm4_d*(x**3) +
 ymm9_c*(x**4) + ymm9_d*(x**5) + ymm6_c*(x**6) + ymm6_d*(x**7))
[3329, x**8 - (2240)],
eqmod (inp_poly**2)
(ymm10_c*(x**0) + ymm10_d*(x**1) + ymm8_c*(x**2) + ymm8_d*(x**3) +
 ymm7_c*(x**4) + ymm7_d*(x**5) + ymm11_c*(x**6) + ymm11_d*(x**7))
[3329, x**8 - (1089)],
eqmod (inp_poly**2)
(ymm3_e*(x**0) + ymm3_f*(x**1) + ymm4_e*(x**2) + ymm4_f*(x**3) +
 ymm9_e*(x**4) + ymm9_f*(x**5) + ymm6_e*(x**6) + ymm6_f*(x**7))
[3329, x**8 - (1333)],
eqmod (inp_poly**2)
(ymm10_e*(x**0) + ymm10_f*(x**1) + ymm8_e*(x**2) + ymm8_f*(x**3) +
 ymm7_e*(x**4) + ymm7_f*(x**5) + ymm11_e*(x**6) + ymm11_f*(x**7))
[3329, x**8 - (1996)]]
&&
and [
(-19974)@16 <s ymm3_0, ymm3_0 <s (19974)@16,
(-19974)@16 <s ymm3_1, ymm3_1 <s (19974)@16,
(-19974)@16 <s ymm4_0, ymm4_0 <s (19974)@16,
(-19974)@16 <s ymm4_1, ymm4_1 <s (19974)@16,
(-19974)@16 <s ymm9_0, ymm9_0 <s (19974)@16,
(-19974)@16 <s ymm9_1, ymm9_1 <s (19974)@16,
(-19974)@16 <s ymm6_0, ymm6_0 <s (19974)@16,
(-19974)@16 <s ymm6_1, ymm6_1 <s (19974)@16,
(-19974)@16 <s ymm10_0, ymm10_0 <s (19974)@16,
(-19974)@16 <s ymm10_1, ymm10_1 <s (19974)@16,
(-19974)@16 <s ymm8_0, ymm8_0 <s (19974)@16,
(-19974)@16 <s ymm8_1, ymm8_1 <s (19974)@16,
(-19974)@16 <s ymm7_0, ymm7_0 <s (19974)@16,
(-19974)@16 <s ymm7_1, ymm7_1 <s (19974)@16,
(-19974)@16 <s ymm11_0, ymm11_0 <s (19974)@16,
(-19974)@16 <s ymm11_1, ymm11_1 <s (19974)@16,
(-19974)@16 <s ymm3_2, ymm3_2 <s (19974)@16,
(-19974)@16 <s ymm3_3, ymm3_3 <s (19974)@16,
(-19974)@16 <s ymm4_2, ymm4_2 <s (19974)@16,
(-19974)@16 <s ymm4_3, ymm4_3 <s (19974)@16,
(-19974)@16 <s ymm9_2, ymm9_2 <s (19974)@16,
(-19974)@16 <s ymm9_3, ymm9_3 <s (19974)@16,
(-19974)@16 <s ymm6_2, ymm6_2 <s (19974)@16,
(-19974)@16 <s ymm6_3, ymm6_3 <s (19974)@16,
(-19974)@16 <s ymm10_2, ymm10_2 <s (19974)@16,
(-19974)@16 <s ymm10_3, ymm10_3 <s (19974)@16,
(-19974)@16 <s ymm8_2, ymm8_2 <s (19974)@16,
(-19974)@16 <s ymm8_3, ymm8_3 <s (19974)@16,
(-19974)@16 <s ymm7_2, ymm7_2 <s (19974)@16,
(-19974)@16 <s ymm7_3, ymm7_3 <s (19974)@16,
(-19974)@16 <s ymm11_2, ymm11_2 <s (19974)@16,
(-19974)@16 <s ymm11_3, ymm11_3 <s (19974)@16,
(-19974)@16 <s ymm3_4, ymm3_4 <s (19974)@16,
(-19974)@16 <s ymm3_5, ymm3_5 <s (19974)@16,
(-19974)@16 <s ymm4_4, ymm4_4 <s (19974)@16,
(-19974)@16 <s ymm4_5, ymm4_5 <s (19974)@16,
(-19974)@16 <s ymm9_4, ymm9_4 <s (19974)@16,
(-19974)@16 <s ymm9_5, ymm9_5 <s (19974)@16,
(-19974)@16 <s ymm6_4, ymm6_4 <s (19974)@16,
(-19974)@16 <s ymm6_5, ymm6_5 <s (19974)@16,
(-19974)@16 <s ymm10_4, ymm10_4 <s (19974)@16,
(-19974)@16 <s ymm10_5, ymm10_5 <s (19974)@16,
(-19974)@16 <s ymm8_4, ymm8_4 <s (19974)@16,
(-19974)@16 <s ymm8_5, ymm8_5 <s (19974)@16,
(-19974)@16 <s ymm7_4, ymm7_4 <s (19974)@16,
(-19974)@16 <s ymm7_5, ymm7_5 <s (19974)@16,
(-19974)@16 <s ymm11_4, ymm11_4 <s (19974)@16,
(-19974)@16 <s ymm11_5, ymm11_5 <s (19974)@16,
(-19974)@16 <s ymm3_6, ymm3_6 <s (19974)@16,
(-19974)@16 <s ymm3_7, ymm3_7 <s (19974)@16,
(-19974)@16 <s ymm4_6, ymm4_6 <s (19974)@16,
(-19974)@16 <s ymm4_7, ymm4_7 <s (19974)@16,
(-19974)@16 <s ymm9_6, ymm9_6 <s (19974)@16,
(-19974)@16 <s ymm9_7, ymm9_7 <s (19974)@16,
(-19974)@16 <s ymm6_6, ymm6_6 <s (19974)@16,
(-19974)@16 <s ymm6_7, ymm6_7 <s (19974)@16,
(-19974)@16 <s ymm10_6, ymm10_6 <s (19974)@16,
(-19974)@16 <s ymm10_7, ymm10_7 <s (19974)@16,
(-19974)@16 <s ymm8_6, ymm8_6 <s (19974)@16,
(-19974)@16 <s ymm8_7, ymm8_7 <s (19974)@16,
(-19974)@16 <s ymm7_6, ymm7_6 <s (19974)@16,
(-19974)@16 <s ymm7_7, ymm7_7 <s (19974)@16,
(-19974)@16 <s ymm11_6, ymm11_6 <s (19974)@16,
(-19974)@16 <s ymm11_7, ymm11_7 <s (19974)@16,
(-19974)@16 <s ymm3_8, ymm3_8 <s (19974)@16,
(-19974)@16 <s ymm3_9, ymm3_9 <s (19974)@16,
(-19974)@16 <s ymm4_8, ymm4_8 <s (19974)@16,
(-19974)@16 <s ymm4_9, ymm4_9 <s (19974)@16,
(-19974)@16 <s ymm9_8, ymm9_8 <s (19974)@16,
(-19974)@16 <s ymm9_9, ymm9_9 <s (19974)@16,
(-19974)@16 <s ymm6_8, ymm6_8 <s (19974)@16,
(-19974)@16 <s ymm6_9, ymm6_9 <s (19974)@16,
(-19974)@16 <s ymm10_8, ymm10_8 <s (19974)@16,
(-19974)@16 <s ymm10_9, ymm10_9 <s (19974)@16,
(-19974)@16 <s ymm8_8, ymm8_8 <s (19974)@16,
(-19974)@16 <s ymm8_9, ymm8_9 <s (19974)@16,
(-19974)@16 <s ymm7_8, ymm7_8 <s (19974)@16,
(-19974)@16 <s ymm7_9, ymm7_9 <s (19974)@16,
(-19974)@16 <s ymm11_8, ymm11_8 <s (19974)@16,
(-19974)@16 <s ymm11_9, ymm11_9 <s (19974)@16,
(-19974)@16 <s ymm3_a, ymm3_a <s (19974)@16,
(-19974)@16 <s ymm3_b, ymm3_b <s (19974)@16,
(-19974)@16 <s ymm4_a, ymm4_a <s (19974)@16,
(-19974)@16 <s ymm4_b, ymm4_b <s (19974)@16,
(-19974)@16 <s ymm9_a, ymm9_a <s (19974)@16,
(-19974)@16 <s ymm9_b, ymm9_b <s (19974)@16,
(-19974)@16 <s ymm6_a, ymm6_a <s (19974)@16,
(-19974)@16 <s ymm6_b, ymm6_b <s (19974)@16,
(-19974)@16 <s ymm10_a, ymm10_a <s (19974)@16,
(-19974)@16 <s ymm10_b, ymm10_b <s (19974)@16,
(-19974)@16 <s ymm8_a, ymm8_a <s (19974)@16,
(-19974)@16 <s ymm8_b, ymm8_b <s (19974)@16,
(-19974)@16 <s ymm7_a, ymm7_a <s (19974)@16,
(-19974)@16 <s ymm7_b, ymm7_b <s (19974)@16,
(-19974)@16 <s ymm11_a, ymm11_a <s (19974)@16,
(-19974)@16 <s ymm11_b, ymm11_b <s (19974)@16,
(-19974)@16 <s ymm3_c, ymm3_c <s (19974)@16,
(-19974)@16 <s ymm3_d, ymm3_d <s (19974)@16,
(-19974)@16 <s ymm4_c, ymm4_c <s (19974)@16,
(-19974)@16 <s ymm4_d, ymm4_d <s (19974)@16,
(-19974)@16 <s ymm9_c, ymm9_c <s (19974)@16,
(-19974)@16 <s ymm9_d, ymm9_d <s (19974)@16,
(-19974)@16 <s ymm6_c, ymm6_c <s (19974)@16,
(-19974)@16 <s ymm6_d, ymm6_d <s (19974)@16,
(-19974)@16 <s ymm10_c, ymm10_c <s (19974)@16,
(-19974)@16 <s ymm10_d, ymm10_d <s (19974)@16,
(-19974)@16 <s ymm8_c, ymm8_c <s (19974)@16,
(-19974)@16 <s ymm8_d, ymm8_d <s (19974)@16,
(-19974)@16 <s ymm7_c, ymm7_c <s (19974)@16,
(-19974)@16 <s ymm7_d, ymm7_d <s (19974)@16,
(-19974)@16 <s ymm11_c, ymm11_c <s (19974)@16,
(-19974)@16 <s ymm11_d, ymm11_d <s (19974)@16,
(-19974)@16 <s ymm3_e, ymm3_e <s (19974)@16,
(-19974)@16 <s ymm3_f, ymm3_f <s (19974)@16,
(-19974)@16 <s ymm4_e, ymm4_e <s (19974)@16,
(-19974)@16 <s ymm4_f, ymm4_f <s (19974)@16,
(-19974)@16 <s ymm9_e, ymm9_e <s (19974)@16,
(-19974)@16 <s ymm9_f, ymm9_f <s (19974)@16,
(-19974)@16 <s ymm6_e, ymm6_e <s (19974)@16,
(-19974)@16 <s ymm6_f, ymm6_f <s (19974)@16,
(-19974)@16 <s ymm10_e, ymm10_e <s (19974)@16,
(-19974)@16 <s ymm10_f, ymm10_f <s (19974)@16,
(-19974)@16 <s ymm8_e, ymm8_e <s (19974)@16,
(-19974)@16 <s ymm8_f, ymm8_f <s (19974)@16,
(-19974)@16 <s ymm7_e, ymm7_e <s (19974)@16,
(-19974)@16 <s ymm7_f, ymm7_f <s (19974)@16,
(-19974)@16 <s ymm11_e, ymm11_e <s (19974)@16,
(-19974)@16 <s ymm11_f, ymm11_f <s (19974)@16];


(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556f08b *)
mov slld_0 0@sint16;
mov slld_1 ymm7_0;
mov slld_2 0@sint16;
mov slld_3 ymm7_2;
mov slld_4 0@sint16;
mov slld_5 ymm7_4;
mov slld_6 0@sint16;
mov slld_7 ymm7_6;
mov slld_8 0@sint16;
mov slld_9 ymm7_8;
mov slld_a 0@sint16;
mov slld_b ymm7_a;
mov slld_c 0@sint16;
mov slld_d ymm7_c;
mov slld_e 0@sint16;
mov slld_f ymm7_e;
mov ymm5_0 slld_0;
mov ymm5_1 slld_1;
mov ymm5_2 slld_2;
mov ymm5_3 slld_3;
mov ymm5_4 slld_4;
mov ymm5_5 slld_5;
mov ymm5_6 slld_6;
mov ymm5_7 slld_7;
mov ymm5_8 slld_8;
mov ymm5_9 slld_9;
mov ymm5_a slld_a;
mov ymm5_b slld_b;
mov ymm5_c slld_c;
mov ymm5_d slld_d;
mov ymm5_e slld_e;
mov ymm5_f slld_f;
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556f090 *)
mov bldw_0 ymm9_0;
mov bldw_1 ymm5_1;
mov bldw_2 ymm9_2;
mov bldw_3 ymm5_3;
mov bldw_4 ymm9_4;
mov bldw_5 ymm5_5;
mov bldw_6 ymm9_6;
mov bldw_7 ymm5_7;
mov bldw_8 ymm9_8;
mov bldw_9 ymm5_9;
mov bldw_a ymm9_a;
mov bldw_b ymm5_b;
mov bldw_c ymm9_c;
mov bldw_d ymm5_d;
mov bldw_e ymm9_e;
mov bldw_f ymm5_f;
mov ymm5_0 bldw_0;
mov ymm5_1 bldw_1;
mov ymm5_2 bldw_2;
mov ymm5_3 bldw_3;
mov ymm5_4 bldw_4;
mov ymm5_5 bldw_5;
mov ymm5_6 bldw_6;
mov ymm5_7 bldw_7;
mov ymm5_8 bldw_8;
mov ymm5_9 bldw_9;
mov ymm5_a bldw_a;
mov ymm5_b bldw_b;
mov ymm5_c bldw_c;
mov ymm5_d bldw_d;
mov ymm5_e bldw_e;
mov ymm5_f bldw_f;
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556f096 *)
mov srld_0 ymm9_1;
mov srld_1 0@sint16;
mov srld_2 ymm9_3;
mov srld_3 0@sint16;
mov srld_4 ymm9_5;
mov srld_5 0@sint16;
mov srld_6 ymm9_7;
mov srld_7 0@sint16;
mov srld_8 ymm9_9;
mov srld_9 0@sint16;
mov srld_a ymm9_b;
mov srld_b 0@sint16;
mov srld_c ymm9_d;
mov srld_d 0@sint16;
mov srld_e ymm9_f;
mov srld_f 0@sint16;
mov ymm9_0 srld_0;
mov ymm9_1 srld_1;
mov ymm9_2 srld_2;
mov ymm9_3 srld_3;
mov ymm9_4 srld_4;
mov ymm9_5 srld_5;
mov ymm9_6 srld_6;
mov ymm9_7 srld_7;
mov ymm9_8 srld_8;
mov ymm9_9 srld_9;
mov ymm9_a srld_a;
mov ymm9_b srld_b;
mov ymm9_c srld_c;
mov ymm9_d srld_d;
mov ymm9_e srld_e;
mov ymm9_f srld_f;
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556f09c *)
mov bldw_0 ymm9_0;
mov bldw_1 ymm7_1;
mov bldw_2 ymm9_2;
mov bldw_3 ymm7_3;
mov bldw_4 ymm9_4;
mov bldw_5 ymm7_5;
mov bldw_6 ymm9_6;
mov bldw_7 ymm7_7;
mov bldw_8 ymm9_8;
mov bldw_9 ymm7_9;
mov bldw_a ymm9_a;
mov bldw_b ymm7_b;
mov bldw_c ymm9_c;
mov bldw_d ymm7_d;
mov bldw_e ymm9_e;
mov bldw_f ymm7_f;
mov ymm7_0 bldw_0;
mov ymm7_1 bldw_1;
mov ymm7_2 bldw_2;
mov ymm7_3 bldw_3;
mov ymm7_4 bldw_4;
mov ymm7_5 bldw_5;
mov ymm7_6 bldw_6;
mov ymm7_7 bldw_7;
mov ymm7_8 bldw_8;
mov ymm7_9 bldw_9;
mov ymm7_a bldw_a;
mov ymm7_b bldw_b;
mov ymm7_c bldw_c;
mov ymm7_d bldw_d;
mov ymm7_e bldw_e;
mov ymm7_f bldw_f;
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556f0a2 *)
mov slld_0 0@sint16;
mov slld_1 ymm11_0;
mov slld_2 0@sint16;
mov slld_3 ymm11_2;
mov slld_4 0@sint16;
mov slld_5 ymm11_4;
mov slld_6 0@sint16;
mov slld_7 ymm11_6;
mov slld_8 0@sint16;
mov slld_9 ymm11_8;
mov slld_a 0@sint16;
mov slld_b ymm11_a;
mov slld_c 0@sint16;
mov slld_d ymm11_c;
mov slld_e 0@sint16;
mov slld_f ymm11_e;
mov ymm9_0 slld_0;
mov ymm9_1 slld_1;
mov ymm9_2 slld_2;
mov ymm9_3 slld_3;
mov ymm9_4 slld_4;
mov ymm9_5 slld_5;
mov ymm9_6 slld_6;
mov ymm9_7 slld_7;
mov ymm9_8 slld_8;
mov ymm9_9 slld_9;
mov ymm9_a slld_a;
mov ymm9_b slld_b;
mov ymm9_c slld_c;
mov ymm9_d slld_d;
mov ymm9_e slld_e;
mov ymm9_f slld_f;
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f0a8 *)
mov bldw_0 ymm6_0;
mov bldw_1 ymm9_1;
mov bldw_2 ymm6_2;
mov bldw_3 ymm9_3;
mov bldw_4 ymm6_4;
mov bldw_5 ymm9_5;
mov bldw_6 ymm6_6;
mov bldw_7 ymm9_7;
mov bldw_8 ymm6_8;
mov bldw_9 ymm9_9;
mov bldw_a ymm6_a;
mov bldw_b ymm9_b;
mov bldw_c ymm6_c;
mov bldw_d ymm9_d;
mov bldw_e ymm6_e;
mov bldw_f ymm9_f;
mov ymm9_0 bldw_0;
mov ymm9_1 bldw_1;
mov ymm9_2 bldw_2;
mov ymm9_3 bldw_3;
mov ymm9_4 bldw_4;
mov ymm9_5 bldw_5;
mov ymm9_6 bldw_6;
mov ymm9_7 bldw_7;
mov ymm9_8 bldw_8;
mov ymm9_9 bldw_9;
mov ymm9_a bldw_a;
mov ymm9_b bldw_b;
mov ymm9_c bldw_c;
mov ymm9_d bldw_d;
mov ymm9_e bldw_e;
mov ymm9_f bldw_f;
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556f0ae *)
mov srld_0 ymm6_1;
mov srld_1 0@sint16;
mov srld_2 ymm6_3;
mov srld_3 0@sint16;
mov srld_4 ymm6_5;
mov srld_5 0@sint16;
mov srld_6 ymm6_7;
mov srld_7 0@sint16;
mov srld_8 ymm6_9;
mov srld_9 0@sint16;
mov srld_a ymm6_b;
mov srld_b 0@sint16;
mov srld_c ymm6_d;
mov srld_d 0@sint16;
mov srld_e ymm6_f;
mov srld_f 0@sint16;
mov ymm6_0 srld_0;
mov ymm6_1 srld_1;
mov ymm6_2 srld_2;
mov ymm6_3 srld_3;
mov ymm6_4 srld_4;
mov ymm6_5 srld_5;
mov ymm6_6 srld_6;
mov ymm6_7 srld_7;
mov ymm6_8 srld_8;
mov ymm6_9 srld_9;
mov ymm6_a srld_a;
mov ymm6_b srld_b;
mov ymm6_c srld_c;
mov ymm6_d srld_d;
mov ymm6_e srld_e;
mov ymm6_f srld_f;
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556f0b3 *)
mov bldw_0 ymm6_0;
mov bldw_1 ymm11_1;
mov bldw_2 ymm6_2;
mov bldw_3 ymm11_3;
mov bldw_4 ymm6_4;
mov bldw_5 ymm11_5;
mov bldw_6 ymm6_6;
mov bldw_7 ymm11_7;
mov bldw_8 ymm6_8;
mov bldw_9 ymm11_9;
mov bldw_a ymm6_a;
mov bldw_b ymm11_b;
mov bldw_c ymm6_c;
mov bldw_d ymm11_d;
mov bldw_e ymm6_e;
mov bldw_f ymm11_f;
mov ymm11_0 bldw_0;
mov ymm11_1 bldw_1;
mov ymm11_2 bldw_2;
mov ymm11_3 bldw_3;
mov ymm11_4 bldw_4;
mov ymm11_5 bldw_5;
mov ymm11_6 bldw_6;
mov ymm11_7 bldw_7;
mov ymm11_8 bldw_8;
mov ymm11_9 bldw_9;
mov ymm11_a bldw_a;
mov ymm11_b bldw_b;
mov ymm11_c bldw_c;
mov ymm11_d bldw_d;
mov ymm11_e bldw_e;
mov ymm11_f bldw_f;
(* vmovdqa 0x260(%rsi),%ymm15                      #! EA = L0x555555639840; Value = 0x78f705d8e68ce9c7; PC = 0x55555556f0b9 *)
mov ymm15_0 L0x555555639840;
mov ymm15_1 L0x555555639842;
mov ymm15_2 L0x555555639844;
mov ymm15_3 L0x555555639846;
mov ymm15_4 L0x555555639848;
mov ymm15_5 L0x55555563984a;
mov ymm15_6 L0x55555563984c;
mov ymm15_7 L0x55555563984e;
mov ymm15_8 L0x555555639850;
mov ymm15_9 L0x555555639852;
mov ymm15_a L0x555555639854;
mov ymm15_b L0x555555639856;
mov ymm15_c L0x555555639858;
mov ymm15_d L0x55555563985a;
mov ymm15_e L0x55555563985c;
mov ymm15_f L0x55555563985e;
(* vmovdqa 0x280(%rsi),%ymm2                       #! EA = L0x555555639860; Value = 0x03f7fdd8028c04c7; PC = 0x55555556f0c1 *)
mov ymm2_0 L0x555555639860;
mov ymm2_1 L0x555555639862;
mov ymm2_2 L0x555555639864;
mov ymm2_3 L0x555555639866;
mov ymm2_4 L0x555555639868;
mov ymm2_5 L0x55555563986a;
mov ymm2_6 L0x55555563986c;
mov ymm2_7 L0x55555563986e;
mov ymm2_8 L0x555555639870;
mov ymm2_9 L0x555555639872;
mov ymm2_a L0x555555639874;
mov ymm2_b L0x555555639876;
mov ymm2_c L0x555555639878;
mov ymm2_d L0x55555563987a;
mov ymm2_e L0x55555563987c;
mov ymm2_f L0x55555563987e;
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556f0c9 *)
smull mulHymm5_0 mulL_0 ymm15_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm15_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm15_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm15_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm15_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm15_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm15_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm15_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm15_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm15_9 ymm5_9;
smull mulHymm5_a mulL_a ymm15_a ymm5_a;
smull mulHymm5_b mulL_b ymm15_b ymm5_b;
smull mulHymm5_c mulL_c ymm15_c ymm5_c;
smull mulHymm5_d mulL_d ymm15_d ymm5_d;
smull mulHymm5_e mulL_e ymm15_e ymm5_e;
smull mulHymm5_f mulL_f ymm15_f ymm5_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556f0ce *)
smull mulHymm7_0 mulL_0 ymm15_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm15_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm15_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm15_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm15_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm15_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm15_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm15_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm15_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm15_9 ymm7_9;
smull mulHymm7_a mulL_a ymm15_a ymm7_a;
smull mulHymm7_b mulL_b ymm15_b ymm7_b;
smull mulHymm7_c mulL_c ymm15_c ymm7_c;
smull mulHymm7_d mulL_d ymm15_d ymm7_d;
smull mulHymm7_e mulL_e ymm15_e ymm7_e;
smull mulHymm7_f mulL_f ymm15_f ymm7_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f0d3 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f0d8 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f0dd *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm2_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm2_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm2_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm2_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm2_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm2_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm2_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm2_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm2_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm2_9;
smull mulH_a mulLymm5_a ymm5_a ymm2_a;
smull mulH_b mulLymm5_b ymm5_b ymm2_b;
smull mulH_c mulLymm5_c ymm5_c ymm2_c;
smull mulH_d mulLymm5_d ymm5_d ymm2_d;
smull mulH_e mulLymm5_e ymm5_e ymm2_e;
smull mulH_f mulLymm5_f ymm5_f ymm2_f;
mov ymm5_0 mulH_0;
mov ymm5_1 mulH_1;
mov ymm5_2 mulH_2;
mov ymm5_3 mulH_3;
mov ymm5_4 mulH_4;
mov ymm5_5 mulH_5;
mov ymm5_6 mulH_6;
mov ymm5_7 mulH_7;
mov ymm5_8 mulH_8;
mov ymm5_9 mulH_9;
mov ymm5_a mulH_a;
mov ymm5_b mulH_b;
mov ymm5_c mulH_c;
mov ymm5_d mulH_d;
mov ymm5_e mulH_e;
mov ymm5_f mulH_f;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f0e1 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm2_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm2_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm2_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm2_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm2_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm2_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm2_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm2_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm2_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm2_9;
smull mulH_a mulLymm7_a ymm7_a ymm2_a;
smull mulH_b mulLymm7_b ymm7_b ymm2_b;
smull mulH_c mulLymm7_c ymm7_c ymm2_c;
smull mulH_d mulLymm7_d ymm7_d ymm2_d;
smull mulH_e mulLymm7_e ymm7_e ymm2_e;
smull mulH_f mulLymm7_f ymm7_f ymm2_f;
mov ymm7_0 mulH_0;
mov ymm7_1 mulH_1;
mov ymm7_2 mulH_2;
mov ymm7_3 mulH_3;
mov ymm7_4 mulH_4;
mov ymm7_5 mulH_5;
mov ymm7_6 mulH_6;
mov ymm7_7 mulH_7;
mov ymm7_8 mulH_8;
mov ymm7_9 mulH_9;
mov ymm7_a mulH_a;
mov ymm7_b mulH_b;
mov ymm7_c mulH_c;
mov ymm7_d mulH_d;
mov ymm7_e mulH_e;
mov ymm7_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f0e5 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f0e9 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556f0ed *)
mov slld_0 0@sint16;
mov slld_1 ymm10_0;
mov slld_2 0@sint16;
mov slld_3 ymm10_2;
mov slld_4 0@sint16;
mov slld_5 ymm10_4;
mov slld_6 0@sint16;
mov slld_7 ymm10_6;
mov slld_8 0@sint16;
mov slld_9 ymm10_8;
mov slld_a 0@sint16;
mov slld_b ymm10_a;
mov slld_c 0@sint16;
mov slld_d ymm10_c;
mov slld_e 0@sint16;
mov slld_f ymm10_e;
mov ymm6_0 slld_0;
mov ymm6_1 slld_1;
mov ymm6_2 slld_2;
mov ymm6_3 slld_3;
mov ymm6_4 slld_4;
mov ymm6_5 slld_5;
mov ymm6_6 slld_6;
mov ymm6_7 slld_7;
mov ymm6_8 slld_8;
mov ymm6_9 slld_9;
mov ymm6_a slld_a;
mov ymm6_b slld_b;
mov ymm6_c slld_c;
mov ymm6_d slld_d;
mov ymm6_e slld_e;
mov ymm6_f slld_f;
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f0f3 *)
mov bldw_0 ymm3_0;
mov bldw_1 ymm6_1;
mov bldw_2 ymm3_2;
mov bldw_3 ymm6_3;
mov bldw_4 ymm3_4;
mov bldw_5 ymm6_5;
mov bldw_6 ymm3_6;
mov bldw_7 ymm6_7;
mov bldw_8 ymm3_8;
mov bldw_9 ymm6_9;
mov bldw_a ymm3_a;
mov bldw_b ymm6_b;
mov bldw_c ymm3_c;
mov bldw_d ymm6_d;
mov bldw_e ymm3_e;
mov bldw_f ymm6_f;
mov ymm6_0 bldw_0;
mov ymm6_1 bldw_1;
mov ymm6_2 bldw_2;
mov ymm6_3 bldw_3;
mov ymm6_4 bldw_4;
mov ymm6_5 bldw_5;
mov ymm6_6 bldw_6;
mov ymm6_7 bldw_7;
mov ymm6_8 bldw_8;
mov ymm6_9 bldw_9;
mov ymm6_a bldw_a;
mov ymm6_b bldw_b;
mov ymm6_c bldw_c;
mov ymm6_d bldw_d;
mov ymm6_e bldw_e;
mov ymm6_f bldw_f;
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556f0f9 *)
mov srld_0 ymm3_1;
mov srld_1 0@sint16;
mov srld_2 ymm3_3;
mov srld_3 0@sint16;
mov srld_4 ymm3_5;
mov srld_5 0@sint16;
mov srld_6 ymm3_7;
mov srld_7 0@sint16;
mov srld_8 ymm3_9;
mov srld_9 0@sint16;
mov srld_a ymm3_b;
mov srld_b 0@sint16;
mov srld_c ymm3_d;
mov srld_d 0@sint16;
mov srld_e ymm3_f;
mov srld_f 0@sint16;
mov ymm3_0 srld_0;
mov ymm3_1 srld_1;
mov ymm3_2 srld_2;
mov ymm3_3 srld_3;
mov ymm3_4 srld_4;
mov ymm3_5 srld_5;
mov ymm3_6 srld_6;
mov ymm3_7 srld_7;
mov ymm3_8 srld_8;
mov ymm3_9 srld_9;
mov ymm3_a srld_a;
mov ymm3_b srld_b;
mov ymm3_c srld_c;
mov ymm3_d srld_d;
mov ymm3_e srld_e;
mov ymm3_f srld_f;
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556f0fe *)
mov bldw_0 ymm3_0;
mov bldw_1 ymm10_1;
mov bldw_2 ymm3_2;
mov bldw_3 ymm10_3;
mov bldw_4 ymm3_4;
mov bldw_5 ymm10_5;
mov bldw_6 ymm3_6;
mov bldw_7 ymm10_7;
mov bldw_8 ymm3_8;
mov bldw_9 ymm10_9;
mov bldw_a ymm3_a;
mov bldw_b ymm10_b;
mov bldw_c ymm3_c;
mov bldw_d ymm10_d;
mov bldw_e ymm3_e;
mov bldw_f ymm10_f;
mov ymm10_0 bldw_0;
mov ymm10_1 bldw_1;
mov ymm10_2 bldw_2;
mov ymm10_3 bldw_3;
mov ymm10_4 bldw_4;
mov ymm10_5 bldw_5;
mov ymm10_6 bldw_6;
mov ymm10_7 bldw_7;
mov ymm10_8 bldw_8;
mov ymm10_9 bldw_9;
mov ymm10_a bldw_a;
mov ymm10_b bldw_b;
mov ymm10_c bldw_c;
mov ymm10_d bldw_d;
mov ymm10_e bldw_e;
mov ymm10_f bldw_f;
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556f104 *)
mov slld_0 0@sint16;
mov slld_1 ymm8_0;
mov slld_2 0@sint16;
mov slld_3 ymm8_2;
mov slld_4 0@sint16;
mov slld_5 ymm8_4;
mov slld_6 0@sint16;
mov slld_7 ymm8_6;
mov slld_8 0@sint16;
mov slld_9 ymm8_8;
mov slld_a 0@sint16;
mov slld_b ymm8_a;
mov slld_c 0@sint16;
mov slld_d ymm8_c;
mov slld_e 0@sint16;
mov slld_f ymm8_e;
mov ymm3_0 slld_0;
mov ymm3_1 slld_1;
mov ymm3_2 slld_2;
mov ymm3_3 slld_3;
mov ymm3_4 slld_4;
mov ymm3_5 slld_5;
mov ymm3_6 slld_6;
mov ymm3_7 slld_7;
mov ymm3_8 slld_8;
mov ymm3_9 slld_9;
mov ymm3_a slld_a;
mov ymm3_b slld_b;
mov ymm3_c slld_c;
mov ymm3_d slld_d;
mov ymm3_e slld_e;
mov ymm3_f slld_f;
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556f10a *)
mov bldw_0 ymm4_0;
mov bldw_1 ymm3_1;
mov bldw_2 ymm4_2;
mov bldw_3 ymm3_3;
mov bldw_4 ymm4_4;
mov bldw_5 ymm3_5;
mov bldw_6 ymm4_6;
mov bldw_7 ymm3_7;
mov bldw_8 ymm4_8;
mov bldw_9 ymm3_9;
mov bldw_a ymm4_a;
mov bldw_b ymm3_b;
mov bldw_c ymm4_c;
mov bldw_d ymm3_d;
mov bldw_e ymm4_e;
mov bldw_f ymm3_f;
mov ymm3_0 bldw_0;
mov ymm3_1 bldw_1;
mov ymm3_2 bldw_2;
mov ymm3_3 bldw_3;
mov ymm3_4 bldw_4;
mov ymm3_5 bldw_5;
mov ymm3_6 bldw_6;
mov ymm3_7 bldw_7;
mov ymm3_8 bldw_8;
mov ymm3_9 bldw_9;
mov ymm3_a bldw_a;
mov ymm3_b bldw_b;
mov ymm3_c bldw_c;
mov ymm3_d bldw_d;
mov ymm3_e bldw_e;
mov ymm3_f bldw_f;
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556f110 *)
mov srld_0 ymm4_1;
mov srld_1 0@sint16;
mov srld_2 ymm4_3;
mov srld_3 0@sint16;
mov srld_4 ymm4_5;
mov srld_5 0@sint16;
mov srld_6 ymm4_7;
mov srld_7 0@sint16;
mov srld_8 ymm4_9;
mov srld_9 0@sint16;
mov srld_a ymm4_b;
mov srld_b 0@sint16;
mov srld_c ymm4_d;
mov srld_d 0@sint16;
mov srld_e ymm4_f;
mov srld_f 0@sint16;
mov ymm4_0 srld_0;
mov ymm4_1 srld_1;
mov ymm4_2 srld_2;
mov ymm4_3 srld_3;
mov ymm4_4 srld_4;
mov ymm4_5 srld_5;
mov ymm4_6 srld_6;
mov ymm4_7 srld_7;
mov ymm4_8 srld_8;
mov ymm4_9 srld_9;
mov ymm4_a srld_a;
mov ymm4_b srld_b;
mov ymm4_c srld_c;
mov ymm4_d srld_d;
mov ymm4_e srld_e;
mov ymm4_f srld_f;
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556f115 *)
mov bldw_0 ymm4_0;
mov bldw_1 ymm8_1;
mov bldw_2 ymm4_2;
mov bldw_3 ymm8_3;
mov bldw_4 ymm4_4;
mov bldw_5 ymm8_5;
mov bldw_6 ymm4_6;
mov bldw_7 ymm8_7;
mov bldw_8 ymm4_8;
mov bldw_9 ymm8_9;
mov bldw_a ymm4_a;
mov bldw_b ymm8_b;
mov bldw_c ymm4_c;
mov bldw_d ymm8_d;
mov bldw_e ymm4_e;
mov bldw_f ymm8_f;
mov ymm8_0 bldw_0;
mov ymm8_1 bldw_1;
mov ymm8_2 bldw_2;
mov ymm8_3 bldw_3;
mov ymm8_4 bldw_4;
mov ymm8_5 bldw_5;
mov ymm8_6 bldw_6;
mov ymm8_7 bldw_7;
mov ymm8_8 bldw_8;
mov ymm8_9 bldw_9;
mov ymm8_a bldw_a;
mov ymm8_b bldw_b;
mov ymm8_c bldw_c;
mov ymm8_d bldw_d;
mov ymm8_e bldw_e;
mov ymm8_f bldw_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f11b *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm5_0;
assume red_0 = mulLymm5_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm5_1;
assume red_1 = mulLymm5_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm5_2;
assume red_2 = mulLymm5_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm5_3;
assume red_3 = mulLymm5_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm5_4;
assume red_4 = mulLymm5_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm5_5;
assume red_5 = mulLymm5_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm5_6;
assume red_6 = mulLymm5_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm5_7;
assume red_7 = mulLymm5_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm5_8;
assume red_8 = mulLymm5_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm5_9;
assume red_9 = mulLymm5_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm5_a;
assume red_a = mulLymm5_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm5_b;
assume red_b = mulLymm5_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm5_c;
assume red_c = mulLymm5_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm5_d;
assume red_d = mulLymm5_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm5_e;
assume red_e = mulLymm5_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm5_f;
assume red_f = mulLymm5_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f11f *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm7_0;
assume red_0 = mulLymm7_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm7_1;
assume red_1 = mulLymm7_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm7_2;
assume red_2 = mulLymm7_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm7_3;
assume red_3 = mulLymm7_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm7_4;
assume red_4 = mulLymm7_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm7_5;
assume red_5 = mulLymm7_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm7_6;
assume red_6 = mulLymm7_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm7_7;
assume red_7 = mulLymm7_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm7_8;
assume red_8 = mulLymm7_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm7_9;
assume red_9 = mulLymm7_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm7_a;
assume red_a = mulLymm7_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm7_b;
assume red_b = mulLymm7_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm7_c;
assume red_c = mulLymm7_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm7_d;
assume red_d = mulLymm7_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm7_e;
assume red_e = mulLymm7_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm7_f;
assume red_f = mulLymm7_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f123 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f127 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556f12b *)
add ymm4_0 ymm6_0 ymm5_0;
add ymm4_1 ymm6_1 ymm5_1;
add ymm4_2 ymm6_2 ymm5_2;
add ymm4_3 ymm6_3 ymm5_3;
add ymm4_4 ymm6_4 ymm5_4;
add ymm4_5 ymm6_5 ymm5_5;
add ymm4_6 ymm6_6 ymm5_6;
add ymm4_7 ymm6_7 ymm5_7;
add ymm4_8 ymm6_8 ymm5_8;
add ymm4_9 ymm6_9 ymm5_9;
add ymm4_a ymm6_a ymm5_a;
add ymm4_b ymm6_b ymm5_b;
add ymm4_c ymm6_c ymm5_c;
add ymm4_d ymm6_d ymm5_d;
add ymm4_e ymm6_e ymm5_e;
add ymm4_f ymm6_f ymm5_f;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556f12f *)
sub ymm5_0 ymm6_0 ymm5_0;
sub ymm5_1 ymm6_1 ymm5_1;
sub ymm5_2 ymm6_2 ymm5_2;
sub ymm5_3 ymm6_3 ymm5_3;
sub ymm5_4 ymm6_4 ymm5_4;
sub ymm5_5 ymm6_5 ymm5_5;
sub ymm5_6 ymm6_6 ymm5_6;
sub ymm5_7 ymm6_7 ymm5_7;
sub ymm5_8 ymm6_8 ymm5_8;
sub ymm5_9 ymm6_9 ymm5_9;
sub ymm5_a ymm6_a ymm5_a;
sub ymm5_b ymm6_b ymm5_b;
sub ymm5_c ymm6_c ymm5_c;
sub ymm5_d ymm6_d ymm5_d;
sub ymm5_e ymm6_e ymm5_e;
sub ymm5_f ymm6_f ymm5_f;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556f133 *)
add ymm6_0 ymm10_0 ymm7_0;
add ymm6_1 ymm10_1 ymm7_1;
add ymm6_2 ymm10_2 ymm7_2;
add ymm6_3 ymm10_3 ymm7_3;
add ymm6_4 ymm10_4 ymm7_4;
add ymm6_5 ymm10_5 ymm7_5;
add ymm6_6 ymm10_6 ymm7_6;
add ymm6_7 ymm10_7 ymm7_7;
add ymm6_8 ymm10_8 ymm7_8;
add ymm6_9 ymm10_9 ymm7_9;
add ymm6_a ymm10_a ymm7_a;
add ymm6_b ymm10_b ymm7_b;
add ymm6_c ymm10_c ymm7_c;
add ymm6_d ymm10_d ymm7_d;
add ymm6_e ymm10_e ymm7_e;
add ymm6_f ymm10_f ymm7_f;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556f137 *)
sub ymm7_0 ymm10_0 ymm7_0;
sub ymm7_1 ymm10_1 ymm7_1;
sub ymm7_2 ymm10_2 ymm7_2;
sub ymm7_3 ymm10_3 ymm7_3;
sub ymm7_4 ymm10_4 ymm7_4;
sub ymm7_5 ymm10_5 ymm7_5;
sub ymm7_6 ymm10_6 ymm7_6;
sub ymm7_7 ymm10_7 ymm7_7;
sub ymm7_8 ymm10_8 ymm7_8;
sub ymm7_9 ymm10_9 ymm7_9;
sub ymm7_a ymm10_a ymm7_a;
sub ymm7_b ymm10_b ymm7_b;
sub ymm7_c ymm10_c ymm7_c;
sub ymm7_d ymm10_d ymm7_d;
sub ymm7_e ymm10_e ymm7_e;
sub ymm7_f ymm10_f ymm7_f;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556f13b *)
add ymm10_0 ymm3_0 ymm9_0;
add ymm10_1 ymm3_1 ymm9_1;
add ymm10_2 ymm3_2 ymm9_2;
add ymm10_3 ymm3_3 ymm9_3;
add ymm10_4 ymm3_4 ymm9_4;
add ymm10_5 ymm3_5 ymm9_5;
add ymm10_6 ymm3_6 ymm9_6;
add ymm10_7 ymm3_7 ymm9_7;
add ymm10_8 ymm3_8 ymm9_8;
add ymm10_9 ymm3_9 ymm9_9;
add ymm10_a ymm3_a ymm9_a;
add ymm10_b ymm3_b ymm9_b;
add ymm10_c ymm3_c ymm9_c;
add ymm10_d ymm3_d ymm9_d;
add ymm10_e ymm3_e ymm9_e;
add ymm10_f ymm3_f ymm9_f;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f140 *)
sub ymm9_0 ymm3_0 ymm9_0;
sub ymm9_1 ymm3_1 ymm9_1;
sub ymm9_2 ymm3_2 ymm9_2;
sub ymm9_3 ymm3_3 ymm9_3;
sub ymm9_4 ymm3_4 ymm9_4;
sub ymm9_5 ymm3_5 ymm9_5;
sub ymm9_6 ymm3_6 ymm9_6;
sub ymm9_7 ymm3_7 ymm9_7;
sub ymm9_8 ymm3_8 ymm9_8;
sub ymm9_9 ymm3_9 ymm9_9;
sub ymm9_a ymm3_a ymm9_a;
sub ymm9_b ymm3_b ymm9_b;
sub ymm9_c ymm3_c ymm9_c;
sub ymm9_d ymm3_d ymm9_d;
sub ymm9_e ymm3_e ymm9_e;
sub ymm9_f ymm3_f ymm9_f;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556f145 *)
add ymm3_0 ymm8_0 ymm11_0;
add ymm3_1 ymm8_1 ymm11_1;
add ymm3_2 ymm8_2 ymm11_2;
add ymm3_3 ymm8_3 ymm11_3;
add ymm3_4 ymm8_4 ymm11_4;
add ymm3_5 ymm8_5 ymm11_5;
add ymm3_6 ymm8_6 ymm11_6;
add ymm3_7 ymm8_7 ymm11_7;
add ymm3_8 ymm8_8 ymm11_8;
add ymm3_9 ymm8_9 ymm11_9;
add ymm3_a ymm8_a ymm11_a;
add ymm3_b ymm8_b ymm11_b;
add ymm3_c ymm8_c ymm11_c;
add ymm3_d ymm8_d ymm11_d;
add ymm3_e ymm8_e ymm11_e;
add ymm3_f ymm8_f ymm11_f;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556f14a *)
sub ymm11_0 ymm8_0 ymm11_0;
sub ymm11_1 ymm8_1 ymm11_1;
sub ymm11_2 ymm8_2 ymm11_2;
sub ymm11_3 ymm8_3 ymm11_3;
sub ymm11_4 ymm8_4 ymm11_4;
sub ymm11_5 ymm8_5 ymm11_5;
sub ymm11_6 ymm8_6 ymm11_6;
sub ymm11_7 ymm8_7 ymm11_7;
sub ymm11_8 ymm8_8 ymm11_8;
sub ymm11_9 ymm8_9 ymm11_9;
sub ymm11_a ymm8_a ymm11_a;
sub ymm11_b ymm8_b ymm11_b;
sub ymm11_c ymm8_c ymm11_c;
sub ymm11_d ymm8_d ymm11_d;
sub ymm11_e ymm8_e ymm11_e;
sub ymm11_f ymm8_f ymm11_f;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f14f *)
sub ymm4_0 ymm4_0 ymm12_0;
sub ymm4_1 ymm4_1 ymm12_1;
sub ymm4_2 ymm4_2 ymm12_2;
sub ymm4_3 ymm4_3 ymm12_3;
sub ymm4_4 ymm4_4 ymm12_4;
sub ymm4_5 ymm4_5 ymm12_5;
sub ymm4_6 ymm4_6 ymm12_6;
sub ymm4_7 ymm4_7 ymm12_7;
sub ymm4_8 ymm4_8 ymm12_8;
sub ymm4_9 ymm4_9 ymm12_9;
sub ymm4_a ymm4_a ymm12_a;
sub ymm4_b ymm4_b ymm12_b;
sub ymm4_c ymm4_c ymm12_c;
sub ymm4_d ymm4_d ymm12_d;
sub ymm4_e ymm4_e ymm12_e;
sub ymm4_f ymm4_f ymm12_f;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556f154 *)
add ymm5_0 ymm5_0 ymm12_0;
add ymm5_1 ymm5_1 ymm12_1;
add ymm5_2 ymm5_2 ymm12_2;
add ymm5_3 ymm5_3 ymm12_3;
add ymm5_4 ymm5_4 ymm12_4;
add ymm5_5 ymm5_5 ymm12_5;
add ymm5_6 ymm5_6 ymm12_6;
add ymm5_7 ymm5_7 ymm12_7;
add ymm5_8 ymm5_8 ymm12_8;
add ymm5_9 ymm5_9 ymm12_9;
add ymm5_a ymm5_a ymm12_a;
add ymm5_b ymm5_b ymm12_b;
add ymm5_c ymm5_c ymm12_c;
add ymm5_d ymm5_d ymm12_d;
add ymm5_e ymm5_e ymm12_e;
add ymm5_f ymm5_f ymm12_f;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f159 *)
sub ymm6_0 ymm6_0 ymm13_0;
sub ymm6_1 ymm6_1 ymm13_1;
sub ymm6_2 ymm6_2 ymm13_2;
sub ymm6_3 ymm6_3 ymm13_3;
sub ymm6_4 ymm6_4 ymm13_4;
sub ymm6_5 ymm6_5 ymm13_5;
sub ymm6_6 ymm6_6 ymm13_6;
sub ymm6_7 ymm6_7 ymm13_7;
sub ymm6_8 ymm6_8 ymm13_8;
sub ymm6_9 ymm6_9 ymm13_9;
sub ymm6_a ymm6_a ymm13_a;
sub ymm6_b ymm6_b ymm13_b;
sub ymm6_c ymm6_c ymm13_c;
sub ymm6_d ymm6_d ymm13_d;
sub ymm6_e ymm6_e ymm13_e;
sub ymm6_f ymm6_f ymm13_f;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556f15e *)
add ymm7_0 ymm7_0 ymm13_0;
add ymm7_1 ymm7_1 ymm13_1;
add ymm7_2 ymm7_2 ymm13_2;
add ymm7_3 ymm7_3 ymm13_3;
add ymm7_4 ymm7_4 ymm13_4;
add ymm7_5 ymm7_5 ymm13_5;
add ymm7_6 ymm7_6 ymm13_6;
add ymm7_7 ymm7_7 ymm13_7;
add ymm7_8 ymm7_8 ymm13_8;
add ymm7_9 ymm7_9 ymm13_9;
add ymm7_a ymm7_a ymm13_a;
add ymm7_b ymm7_b ymm13_b;
add ymm7_c ymm7_c ymm13_c;
add ymm7_d ymm7_d ymm13_d;
add ymm7_e ymm7_e ymm13_e;
add ymm7_f ymm7_f ymm13_f;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f163 *)
sub ymm10_0 ymm10_0 ymm14_0;
sub ymm10_1 ymm10_1 ymm14_1;
sub ymm10_2 ymm10_2 ymm14_2;
sub ymm10_3 ymm10_3 ymm14_3;
sub ymm10_4 ymm10_4 ymm14_4;
sub ymm10_5 ymm10_5 ymm14_5;
sub ymm10_6 ymm10_6 ymm14_6;
sub ymm10_7 ymm10_7 ymm14_7;
sub ymm10_8 ymm10_8 ymm14_8;
sub ymm10_9 ymm10_9 ymm14_9;
sub ymm10_a ymm10_a ymm14_a;
sub ymm10_b ymm10_b ymm14_b;
sub ymm10_c ymm10_c ymm14_c;
sub ymm10_d ymm10_d ymm14_d;
sub ymm10_e ymm10_e ymm14_e;
sub ymm10_f ymm10_f ymm14_f;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f168 *)
add ymm9_0 ymm9_0 ymm14_0;
add ymm9_1 ymm9_1 ymm14_1;
add ymm9_2 ymm9_2 ymm14_2;
add ymm9_3 ymm9_3 ymm14_3;
add ymm9_4 ymm9_4 ymm14_4;
add ymm9_5 ymm9_5 ymm14_5;
add ymm9_6 ymm9_6 ymm14_6;
add ymm9_7 ymm9_7 ymm14_7;
add ymm9_8 ymm9_8 ymm14_8;
add ymm9_9 ymm9_9 ymm14_9;
add ymm9_a ymm9_a ymm14_a;
add ymm9_b ymm9_b ymm14_b;
add ymm9_c ymm9_c ymm14_c;
add ymm9_d ymm9_d ymm14_d;
add ymm9_e ymm9_e ymm14_e;
add ymm9_f ymm9_f ymm14_f;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f16d *)
sub ymm3_0 ymm3_0 ymm15_0;
sub ymm3_1 ymm3_1 ymm15_1;
sub ymm3_2 ymm3_2 ymm15_2;
sub ymm3_3 ymm3_3 ymm15_3;
sub ymm3_4 ymm3_4 ymm15_4;
sub ymm3_5 ymm3_5 ymm15_5;
sub ymm3_6 ymm3_6 ymm15_6;
sub ymm3_7 ymm3_7 ymm15_7;
sub ymm3_8 ymm3_8 ymm15_8;
sub ymm3_9 ymm3_9 ymm15_9;
sub ymm3_a ymm3_a ymm15_a;
sub ymm3_b ymm3_b ymm15_b;
sub ymm3_c ymm3_c ymm15_c;
sub ymm3_d ymm3_d ymm15_d;
sub ymm3_e ymm3_e ymm15_e;
sub ymm3_f ymm3_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f172 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 5 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm4_0*(x**0) + ymm6_0*(x**1) + ymm10_0*(x**2) + ymm3_0*(x**3))
[3329, x**4 - (289)],
eqmod (inp_poly**2)
(ymm5_0*(x**0) + ymm7_0*(x**1) + ymm9_0*(x**2) + ymm11_0*(x**3))
[3329, x**4 - (3040)],
eqmod (inp_poly**2)
(ymm4_1*(x**0) + ymm6_1*(x**1) + ymm10_1*(x**2) + ymm3_1*(x**3))
[3329, x**4 - (331)],
eqmod (inp_poly**2)
(ymm5_1*(x**0) + ymm7_1*(x**1) + ymm9_1*(x**2) + ymm11_1*(x**3))
[3329, x**4 - (2998)],
eqmod (inp_poly**2)
(ymm4_2*(x**0) + ymm6_2*(x**1) + ymm10_2*(x**2) + ymm3_2*(x**3))
[3329, x**4 - (3253)],
eqmod (inp_poly**2)
(ymm5_2*(x**0) + ymm7_2*(x**1) + ymm9_2*(x**2) + ymm11_2*(x**3))
[3329, x**4 - (76)],
eqmod (inp_poly**2)
(ymm4_3*(x**0) + ymm6_3*(x**1) + ymm10_3*(x**2) + ymm3_3*(x**3))
[3329, x**4 - (1756)],
eqmod (inp_poly**2)
(ymm5_3*(x**0) + ymm7_3*(x**1) + ymm9_3*(x**2) + ymm11_3*(x**3))
[3329, x**4 - (1573)],
eqmod (inp_poly**2)
(ymm4_4*(x**0) + ymm6_4*(x**1) + ymm10_4*(x**2) + ymm3_4*(x**3))
[3329, x**4 - (1197)],
eqmod (inp_poly**2)
(ymm5_4*(x**0) + ymm7_4*(x**1) + ymm9_4*(x**2) + ymm11_4*(x**3))
[3329, x**4 - (2132)],
eqmod (inp_poly**2)
(ymm4_5*(x**0) + ymm6_5*(x**1) + ymm10_5*(x**2) + ymm3_5*(x**3))
[3329, x**4 - (2304)],
eqmod (inp_poly**2)
(ymm5_5*(x**0) + ymm7_5*(x**1) + ymm9_5*(x**2) + ymm11_5*(x**3))
[3329, x**4 - (1025)],
eqmod (inp_poly**2)
(ymm4_6*(x**0) + ymm6_6*(x**1) + ymm10_6*(x**2) + ymm3_6*(x**3))
[3329, x**4 - (2277)],
eqmod (inp_poly**2)
(ymm5_6*(x**0) + ymm7_6*(x**1) + ymm9_6*(x**2) + ymm11_6*(x**3))
[3329, x**4 - (1052)],
eqmod (inp_poly**2)
(ymm4_7*(x**0) + ymm6_7*(x**1) + ymm10_7*(x**2) + ymm3_7*(x**3))
[3329, x**4 - (2055)],
eqmod (inp_poly**2)
(ymm5_7*(x**0) + ymm7_7*(x**1) + ymm9_7*(x**2) + ymm11_7*(x**3))
[3329, x**4 - (1274)],
eqmod (inp_poly**2)
(ymm4_8*(x**0) + ymm6_8*(x**1) + ymm10_8*(x**2) + ymm3_8*(x**3))
[3329, x**4 - (650)],
eqmod (inp_poly**2)
(ymm5_8*(x**0) + ymm7_8*(x**1) + ymm9_8*(x**2) + ymm11_8*(x**3))
[3329, x**4 - (2679)],
eqmod (inp_poly**2)
(ymm4_9*(x**0) + ymm6_9*(x**1) + ymm10_9*(x**2) + ymm3_9*(x**3))
[3329, x**4 - (1977)],
eqmod (inp_poly**2)
(ymm5_9*(x**0) + ymm7_9*(x**1) + ymm9_9*(x**2) + ymm11_9*(x**3))
[3329, x**4 - (1352)],
eqmod (inp_poly**2)
(ymm4_a*(x**0) + ymm6_a*(x**1) + ymm10_a*(x**2) + ymm3_a*(x**3))
[3329, x**4 - (2513)],
eqmod (inp_poly**2)
(ymm5_a*(x**0) + ymm7_a*(x**1) + ymm9_a*(x**2) + ymm11_a*(x**3))
[3329, x**4 - (816)],
eqmod (inp_poly**2)
(ymm4_b*(x**0) + ymm6_b*(x**1) + ymm10_b*(x**2) + ymm3_b*(x**3))
[3329, x**4 - (632)],
eqmod (inp_poly**2)
(ymm5_b*(x**0) + ymm7_b*(x**1) + ymm9_b*(x**2) + ymm11_b*(x**3))
[3329, x**4 - (2697)],
eqmod (inp_poly**2)
(ymm4_c*(x**0) + ymm6_c*(x**1) + ymm10_c*(x**2) + ymm3_c*(x**3))
[3329, x**4 - (2865)],
eqmod (inp_poly**2)
(ymm5_c*(x**0) + ymm7_c*(x**1) + ymm9_c*(x**2) + ymm11_c*(x**3))
[3329, x**4 - (464)],
eqmod (inp_poly**2)
(ymm4_d*(x**0) + ymm6_d*(x**1) + ymm10_d*(x**2) + ymm3_d*(x**3))
[3329, x**4 - (33)],
eqmod (inp_poly**2)
(ymm5_d*(x**0) + ymm7_d*(x**1) + ymm9_d*(x**2) + ymm11_d*(x**3))
[3329, x**4 - (3296)],
eqmod (inp_poly**2)
(ymm4_e*(x**0) + ymm6_e*(x**1) + ymm10_e*(x**2) + ymm3_e*(x**3))
[3329, x**4 - (1320)],
eqmod (inp_poly**2)
(ymm5_e*(x**0) + ymm7_e*(x**1) + ymm9_e*(x**2) + ymm11_e*(x**3))
[3329, x**4 - (2009)],
eqmod (inp_poly**2)
(ymm4_f*(x**0) + ymm6_f*(x**1) + ymm10_f*(x**2) + ymm3_f*(x**3))
[3329, x**4 - (1915)],
eqmod (inp_poly**2)
(ymm5_f*(x**0) + ymm7_f*(x**1) + ymm9_f*(x**2) + ymm11_f*(x**3))
[3329, x**4 - (1414)]]
&&
and [
(-23303)@16 <s ymm4_0, ymm4_0 <s (23303)@16,
(-23303)@16 <s ymm6_0, ymm6_0 <s (23303)@16,
(-23303)@16 <s ymm10_0, ymm10_0 <s (23303)@16,
(-23303)@16 <s ymm3_0, ymm3_0 <s (23303)@16,
(-23303)@16 <s ymm5_0, ymm5_0 <s (23303)@16,
(-23303)@16 <s ymm7_0, ymm7_0 <s (23303)@16,
(-23303)@16 <s ymm9_0, ymm9_0 <s (23303)@16,
(-23303)@16 <s ymm11_0, ymm11_0 <s (23303)@16,
(-23303)@16 <s ymm4_1, ymm4_1 <s (23303)@16,
(-23303)@16 <s ymm6_1, ymm6_1 <s (23303)@16,
(-23303)@16 <s ymm10_1, ymm10_1 <s (23303)@16,
(-23303)@16 <s ymm3_1, ymm3_1 <s (23303)@16,
(-23303)@16 <s ymm5_1, ymm5_1 <s (23303)@16,
(-23303)@16 <s ymm7_1, ymm7_1 <s (23303)@16,
(-23303)@16 <s ymm9_1, ymm9_1 <s (23303)@16,
(-23303)@16 <s ymm11_1, ymm11_1 <s (23303)@16,
(-23303)@16 <s ymm4_2, ymm4_2 <s (23303)@16,
(-23303)@16 <s ymm6_2, ymm6_2 <s (23303)@16,
(-23303)@16 <s ymm10_2, ymm10_2 <s (23303)@16,
(-23303)@16 <s ymm3_2, ymm3_2 <s (23303)@16,
(-23303)@16 <s ymm5_2, ymm5_2 <s (23303)@16,
(-23303)@16 <s ymm7_2, ymm7_2 <s (23303)@16,
(-23303)@16 <s ymm9_2, ymm9_2 <s (23303)@16,
(-23303)@16 <s ymm11_2, ymm11_2 <s (23303)@16,
(-23303)@16 <s ymm4_3, ymm4_3 <s (23303)@16,
(-23303)@16 <s ymm6_3, ymm6_3 <s (23303)@16,
(-23303)@16 <s ymm10_3, ymm10_3 <s (23303)@16,
(-23303)@16 <s ymm3_3, ymm3_3 <s (23303)@16,
(-23303)@16 <s ymm5_3, ymm5_3 <s (23303)@16,
(-23303)@16 <s ymm7_3, ymm7_3 <s (23303)@16,
(-23303)@16 <s ymm9_3, ymm9_3 <s (23303)@16,
(-23303)@16 <s ymm11_3, ymm11_3 <s (23303)@16,
(-23303)@16 <s ymm4_4, ymm4_4 <s (23303)@16,
(-23303)@16 <s ymm6_4, ymm6_4 <s (23303)@16,
(-23303)@16 <s ymm10_4, ymm10_4 <s (23303)@16,
(-23303)@16 <s ymm3_4, ymm3_4 <s (23303)@16,
(-23303)@16 <s ymm5_4, ymm5_4 <s (23303)@16,
(-23303)@16 <s ymm7_4, ymm7_4 <s (23303)@16,
(-23303)@16 <s ymm9_4, ymm9_4 <s (23303)@16,
(-23303)@16 <s ymm11_4, ymm11_4 <s (23303)@16,
(-23303)@16 <s ymm4_5, ymm4_5 <s (23303)@16,
(-23303)@16 <s ymm6_5, ymm6_5 <s (23303)@16,
(-23303)@16 <s ymm10_5, ymm10_5 <s (23303)@16,
(-23303)@16 <s ymm3_5, ymm3_5 <s (23303)@16,
(-23303)@16 <s ymm5_5, ymm5_5 <s (23303)@16,
(-23303)@16 <s ymm7_5, ymm7_5 <s (23303)@16,
(-23303)@16 <s ymm9_5, ymm9_5 <s (23303)@16,
(-23303)@16 <s ymm11_5, ymm11_5 <s (23303)@16,
(-23303)@16 <s ymm4_6, ymm4_6 <s (23303)@16,
(-23303)@16 <s ymm6_6, ymm6_6 <s (23303)@16,
(-23303)@16 <s ymm10_6, ymm10_6 <s (23303)@16,
(-23303)@16 <s ymm3_6, ymm3_6 <s (23303)@16,
(-23303)@16 <s ymm5_6, ymm5_6 <s (23303)@16,
(-23303)@16 <s ymm7_6, ymm7_6 <s (23303)@16,
(-23303)@16 <s ymm9_6, ymm9_6 <s (23303)@16,
(-23303)@16 <s ymm11_6, ymm11_6 <s (23303)@16,
(-23303)@16 <s ymm4_7, ymm4_7 <s (23303)@16,
(-23303)@16 <s ymm6_7, ymm6_7 <s (23303)@16,
(-23303)@16 <s ymm10_7, ymm10_7 <s (23303)@16,
(-23303)@16 <s ymm3_7, ymm3_7 <s (23303)@16,
(-23303)@16 <s ymm5_7, ymm5_7 <s (23303)@16,
(-23303)@16 <s ymm7_7, ymm7_7 <s (23303)@16,
(-23303)@16 <s ymm9_7, ymm9_7 <s (23303)@16,
(-23303)@16 <s ymm11_7, ymm11_7 <s (23303)@16,
(-23303)@16 <s ymm4_8, ymm4_8 <s (23303)@16,
(-23303)@16 <s ymm6_8, ymm6_8 <s (23303)@16,
(-23303)@16 <s ymm10_8, ymm10_8 <s (23303)@16,
(-23303)@16 <s ymm3_8, ymm3_8 <s (23303)@16,
(-23303)@16 <s ymm5_8, ymm5_8 <s (23303)@16,
(-23303)@16 <s ymm7_8, ymm7_8 <s (23303)@16,
(-23303)@16 <s ymm9_8, ymm9_8 <s (23303)@16,
(-23303)@16 <s ymm11_8, ymm11_8 <s (23303)@16,
(-23303)@16 <s ymm4_9, ymm4_9 <s (23303)@16,
(-23303)@16 <s ymm6_9, ymm6_9 <s (23303)@16,
(-23303)@16 <s ymm10_9, ymm10_9 <s (23303)@16,
(-23303)@16 <s ymm3_9, ymm3_9 <s (23303)@16,
(-23303)@16 <s ymm5_9, ymm5_9 <s (23303)@16,
(-23303)@16 <s ymm7_9, ymm7_9 <s (23303)@16,
(-23303)@16 <s ymm9_9, ymm9_9 <s (23303)@16,
(-23303)@16 <s ymm11_9, ymm11_9 <s (23303)@16,
(-23303)@16 <s ymm4_a, ymm4_a <s (23303)@16,
(-23303)@16 <s ymm6_a, ymm6_a <s (23303)@16,
(-23303)@16 <s ymm10_a, ymm10_a <s (23303)@16,
(-23303)@16 <s ymm3_a, ymm3_a <s (23303)@16,
(-23303)@16 <s ymm5_a, ymm5_a <s (23303)@16,
(-23303)@16 <s ymm7_a, ymm7_a <s (23303)@16,
(-23303)@16 <s ymm9_a, ymm9_a <s (23303)@16,
(-23303)@16 <s ymm11_a, ymm11_a <s (23303)@16,
(-23303)@16 <s ymm4_b, ymm4_b <s (23303)@16,
(-23303)@16 <s ymm6_b, ymm6_b <s (23303)@16,
(-23303)@16 <s ymm10_b, ymm10_b <s (23303)@16,
(-23303)@16 <s ymm3_b, ymm3_b <s (23303)@16,
(-23303)@16 <s ymm5_b, ymm5_b <s (23303)@16,
(-23303)@16 <s ymm7_b, ymm7_b <s (23303)@16,
(-23303)@16 <s ymm9_b, ymm9_b <s (23303)@16,
(-23303)@16 <s ymm11_b, ymm11_b <s (23303)@16,
(-23303)@16 <s ymm4_c, ymm4_c <s (23303)@16,
(-23303)@16 <s ymm6_c, ymm6_c <s (23303)@16,
(-23303)@16 <s ymm10_c, ymm10_c <s (23303)@16,
(-23303)@16 <s ymm3_c, ymm3_c <s (23303)@16,
(-23303)@16 <s ymm5_c, ymm5_c <s (23303)@16,
(-23303)@16 <s ymm7_c, ymm7_c <s (23303)@16,
(-23303)@16 <s ymm9_c, ymm9_c <s (23303)@16,
(-23303)@16 <s ymm11_c, ymm11_c <s (23303)@16,
(-23303)@16 <s ymm4_d, ymm4_d <s (23303)@16,
(-23303)@16 <s ymm6_d, ymm6_d <s (23303)@16,
(-23303)@16 <s ymm10_d, ymm10_d <s (23303)@16,
(-23303)@16 <s ymm3_d, ymm3_d <s (23303)@16,
(-23303)@16 <s ymm5_d, ymm5_d <s (23303)@16,
(-23303)@16 <s ymm7_d, ymm7_d <s (23303)@16,
(-23303)@16 <s ymm9_d, ymm9_d <s (23303)@16,
(-23303)@16 <s ymm11_d, ymm11_d <s (23303)@16,
(-23303)@16 <s ymm4_e, ymm4_e <s (23303)@16,
(-23303)@16 <s ymm6_e, ymm6_e <s (23303)@16,
(-23303)@16 <s ymm10_e, ymm10_e <s (23303)@16,
(-23303)@16 <s ymm3_e, ymm3_e <s (23303)@16,
(-23303)@16 <s ymm5_e, ymm5_e <s (23303)@16,
(-23303)@16 <s ymm7_e, ymm7_e <s (23303)@16,
(-23303)@16 <s ymm9_e, ymm9_e <s (23303)@16,
(-23303)@16 <s ymm11_e, ymm11_e <s (23303)@16,
(-23303)@16 <s ymm4_f, ymm4_f <s (23303)@16,
(-23303)@16 <s ymm6_f, ymm6_f <s (23303)@16,
(-23303)@16 <s ymm10_f, ymm10_f <s (23303)@16,
(-23303)@16 <s ymm3_f, ymm3_f <s (23303)@16,
(-23303)@16 <s ymm5_f, ymm5_f <s (23303)@16,
(-23303)@16 <s ymm7_f, ymm7_f <s (23303)@16,
(-23303)@16 <s ymm9_f, ymm9_f <s (23303)@16,
(-23303)@16 <s ymm11_f, ymm11_f <s (23303)@16];

(* vmovdqa 0x2a0(%rsi),%ymm14                      #! EA = L0x555555639880; Value = 0x500e821dd32bfeb1; PC = 0x55555556f177 *)
mov ymm14_0 L0x555555639880;
mov ymm14_1 L0x555555639882;
mov ymm14_2 L0x555555639884;
mov ymm14_3 L0x555555639886;
mov ymm14_4 L0x555555639888;
mov ymm14_5 L0x55555563988a;
mov ymm14_6 L0x55555563988c;
mov ymm14_7 L0x55555563988e;
mov ymm14_8 L0x555555639890;
mov ymm14_9 L0x555555639892;
mov ymm14_a L0x555555639894;
mov ymm14_b L0x555555639896;
mov ymm14_c L0x555555639898;
mov ymm14_d L0x55555563989a;
mov ymm14_e L0x55555563989c;
mov ymm14_f L0x55555563989e;
(* vmovdqa 0x2e0(%rsi),%ymm15                      #! EA = L0x5555556398c0; Value = 0xab69c867344b2bae; PC = 0x55555556f17f *)
mov ymm15_0 L0x5555556398c0;
mov ymm15_1 L0x5555556398c2;
mov ymm15_2 L0x5555556398c4;
mov ymm15_3 L0x5555556398c6;
mov ymm15_4 L0x5555556398c8;
mov ymm15_5 L0x5555556398ca;
mov ymm15_6 L0x5555556398cc;
mov ymm15_7 L0x5555556398ce;
mov ymm15_8 L0x5555556398d0;
mov ymm15_9 L0x5555556398d2;
mov ymm15_a L0x5555556398d4;
mov ymm15_b L0x5555556398d6;
mov ymm15_c L0x5555556398d8;
mov ymm15_d L0x5555556398da;
mov ymm15_e L0x5555556398dc;
mov ymm15_f L0x5555556398de;
(* vmovdqa 0x2c0(%rsi),%ymm8                       #! EA = L0x5555556398a0; Value = 0x060efb1d022bfbb1; PC = 0x55555556f187 *)
mov ymm8_0 L0x5555556398a0;
mov ymm8_1 L0x5555556398a2;
mov ymm8_2 L0x5555556398a4;
mov ymm8_3 L0x5555556398a6;
mov ymm8_4 L0x5555556398a8;
mov ymm8_5 L0x5555556398aa;
mov ymm8_6 L0x5555556398ac;
mov ymm8_7 L0x5555556398ae;
mov ymm8_8 L0x5555556398b0;
mov ymm8_9 L0x5555556398b2;
mov ymm8_a L0x5555556398b4;
mov ymm8_b L0x5555556398b6;
mov ymm8_c L0x5555556398b8;
mov ymm8_d L0x5555556398ba;
mov ymm8_e L0x5555556398bc;
mov ymm8_f L0x5555556398be;
(* vmovdqa 0x300(%rsi),%ymm2                       #! EA = L0x5555556398e0; Value = 0x00690367034b01ae; PC = 0x55555556f18f *)
mov ymm2_0 L0x5555556398e0;
mov ymm2_1 L0x5555556398e2;
mov ymm2_2 L0x5555556398e4;
mov ymm2_3 L0x5555556398e6;
mov ymm2_4 L0x5555556398e8;
mov ymm2_5 L0x5555556398ea;
mov ymm2_6 L0x5555556398ec;
mov ymm2_7 L0x5555556398ee;
mov ymm2_8 L0x5555556398f0;
mov ymm2_9 L0x5555556398f2;
mov ymm2_a L0x5555556398f4;
mov ymm2_b L0x5555556398f6;
mov ymm2_c L0x5555556398f8;
mov ymm2_d L0x5555556398fa;
mov ymm2_e L0x5555556398fc;
mov ymm2_f L0x5555556398fe;
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556f197 *)
smull mulHymm10_0 mulL_0 ymm14_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm14_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm14_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm14_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm14_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm14_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm14_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm14_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm14_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm14_9 ymm10_9;
smull mulHymm10_a mulL_a ymm14_a ymm10_a;
smull mulHymm10_b mulL_b ymm14_b ymm10_b;
smull mulHymm10_c mulL_c ymm14_c ymm10_c;
smull mulHymm10_d mulL_d ymm14_d ymm10_d;
smull mulHymm10_e mulL_e ymm14_e ymm10_e;
smull mulHymm10_f mulL_f ymm14_f ymm10_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556f19c *)
smull mulHymm3_0 mulL_0 ymm14_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm14_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm14_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm14_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm14_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm14_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm14_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm14_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm14_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm14_9 ymm3_9;
smull mulHymm3_a mulL_a ymm14_a ymm3_a;
smull mulHymm3_b mulL_b ymm14_b ymm3_b;
smull mulHymm3_c mulL_c ymm14_c ymm3_c;
smull mulHymm3_d mulL_d ymm14_d ymm3_d;
smull mulHymm3_e mulL_e ymm14_e ymm3_e;
smull mulHymm3_f mulL_f ymm14_f ymm3_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f1a1 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f1a6 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f1ab *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm8_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm8_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm8_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm8_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm8_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm8_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm8_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm8_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm8_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm8_9;
smull mulH_a mulLymm10_a ymm10_a ymm8_a;
smull mulH_b mulLymm10_b ymm10_b ymm8_b;
smull mulH_c mulLymm10_c ymm10_c ymm8_c;
smull mulH_d mulLymm10_d ymm10_d ymm8_d;
smull mulH_e mulLymm10_e ymm10_e ymm8_e;
smull mulH_f mulLymm10_f ymm10_f ymm8_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f1b0 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm8_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm8_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm8_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm8_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm8_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm8_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm8_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm8_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm8_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm8_9;
smull mulH_a mulLymm3_a ymm3_a ymm8_a;
smull mulH_b mulLymm3_b ymm3_b ymm8_b;
smull mulH_c mulLymm3_c ymm3_c ymm8_c;
smull mulH_d mulLymm3_d ymm3_d ymm8_d;
smull mulH_e mulLymm3_e ymm3_e ymm8_e;
smull mulH_f mulLymm3_f ymm3_f ymm8_f;
mov ymm3_0 mulH_0;
mov ymm3_1 mulH_1;
mov ymm3_2 mulH_2;
mov ymm3_3 mulH_3;
mov ymm3_4 mulH_4;
mov ymm3_5 mulH_5;
mov ymm3_6 mulH_6;
mov ymm3_7 mulH_7;
mov ymm3_8 mulH_8;
mov ymm3_9 mulH_9;
mov ymm3_a mulH_a;
mov ymm3_b mulH_b;
mov ymm3_c mulH_c;
mov ymm3_d mulH_d;
mov ymm3_e mulH_e;
mov ymm3_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f1b5 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f1b9 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f1bd *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f1c1 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm3_0;
assume red_0 = mulLymm3_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm3_1;
assume red_1 = mulLymm3_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm3_2;
assume red_2 = mulLymm3_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm3_3;
assume red_3 = mulLymm3_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm3_4;
assume red_4 = mulLymm3_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm3_5;
assume red_5 = mulLymm3_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm3_6;
assume red_6 = mulLymm3_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm3_7;
assume red_7 = mulLymm3_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm3_8;
assume red_8 = mulLymm3_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm3_9;
assume red_9 = mulLymm3_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm3_a;
assume red_a = mulLymm3_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm3_b;
assume red_b = mulLymm3_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm3_c;
assume red_c = mulLymm3_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm3_d;
assume red_d = mulLymm3_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm3_e;
assume red_e = mulLymm3_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm3_f;
assume red_f = mulLymm3_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f1c5 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f1c9 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f1cd *)
add ymm8_0 ymm4_0 ymm10_0;
add ymm8_1 ymm4_1 ymm10_1;
add ymm8_2 ymm4_2 ymm10_2;
add ymm8_3 ymm4_3 ymm10_3;
add ymm8_4 ymm4_4 ymm10_4;
add ymm8_5 ymm4_5 ymm10_5;
add ymm8_6 ymm4_6 ymm10_6;
add ymm8_7 ymm4_7 ymm10_7;
add ymm8_8 ymm4_8 ymm10_8;
add ymm8_9 ymm4_9 ymm10_9;
add ymm8_a ymm4_a ymm10_a;
add ymm8_b ymm4_b ymm10_b;
add ymm8_c ymm4_c ymm10_c;
add ymm8_d ymm4_d ymm10_d;
add ymm8_e ymm4_e ymm10_e;
add ymm8_f ymm4_f ymm10_f;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f1d2 *)
sub ymm10_0 ymm4_0 ymm10_0;
sub ymm10_1 ymm4_1 ymm10_1;
sub ymm10_2 ymm4_2 ymm10_2;
sub ymm10_3 ymm4_3 ymm10_3;
sub ymm10_4 ymm4_4 ymm10_4;
sub ymm10_5 ymm4_5 ymm10_5;
sub ymm10_6 ymm4_6 ymm10_6;
sub ymm10_7 ymm4_7 ymm10_7;
sub ymm10_8 ymm4_8 ymm10_8;
sub ymm10_9 ymm4_9 ymm10_9;
sub ymm10_a ymm4_a ymm10_a;
sub ymm10_b ymm4_b ymm10_b;
sub ymm10_c ymm4_c ymm10_c;
sub ymm10_d ymm4_d ymm10_d;
sub ymm10_e ymm4_e ymm10_e;
sub ymm10_f ymm4_f ymm10_f;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f1d7 *)
add ymm4_0 ymm6_0 ymm3_0;
add ymm4_1 ymm6_1 ymm3_1;
add ymm4_2 ymm6_2 ymm3_2;
add ymm4_3 ymm6_3 ymm3_3;
add ymm4_4 ymm6_4 ymm3_4;
add ymm4_5 ymm6_5 ymm3_5;
add ymm4_6 ymm6_6 ymm3_6;
add ymm4_7 ymm6_7 ymm3_7;
add ymm4_8 ymm6_8 ymm3_8;
add ymm4_9 ymm6_9 ymm3_9;
add ymm4_a ymm6_a ymm3_a;
add ymm4_b ymm6_b ymm3_b;
add ymm4_c ymm6_c ymm3_c;
add ymm4_d ymm6_d ymm3_d;
add ymm4_e ymm6_e ymm3_e;
add ymm4_f ymm6_f ymm3_f;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f1db *)
sub ymm3_0 ymm6_0 ymm3_0;
sub ymm3_1 ymm6_1 ymm3_1;
sub ymm3_2 ymm6_2 ymm3_2;
sub ymm3_3 ymm6_3 ymm3_3;
sub ymm3_4 ymm6_4 ymm3_4;
sub ymm3_5 ymm6_5 ymm3_5;
sub ymm3_6 ymm6_6 ymm3_6;
sub ymm3_7 ymm6_7 ymm3_7;
sub ymm3_8 ymm6_8 ymm3_8;
sub ymm3_9 ymm6_9 ymm3_9;
sub ymm3_a ymm6_a ymm3_a;
sub ymm3_b ymm6_b ymm3_b;
sub ymm3_c ymm6_c ymm3_c;
sub ymm3_d ymm6_d ymm3_d;
sub ymm3_e ymm6_e ymm3_e;
sub ymm3_f ymm6_f ymm3_f;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f1df *)
add ymm6_0 ymm5_0 ymm9_0;
add ymm6_1 ymm5_1 ymm9_1;
add ymm6_2 ymm5_2 ymm9_2;
add ymm6_3 ymm5_3 ymm9_3;
add ymm6_4 ymm5_4 ymm9_4;
add ymm6_5 ymm5_5 ymm9_5;
add ymm6_6 ymm5_6 ymm9_6;
add ymm6_7 ymm5_7 ymm9_7;
add ymm6_8 ymm5_8 ymm9_8;
add ymm6_9 ymm5_9 ymm9_9;
add ymm6_a ymm5_a ymm9_a;
add ymm6_b ymm5_b ymm9_b;
add ymm6_c ymm5_c ymm9_c;
add ymm6_d ymm5_d ymm9_d;
add ymm6_e ymm5_e ymm9_e;
add ymm6_f ymm5_f ymm9_f;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f1e4 *)
sub ymm9_0 ymm5_0 ymm9_0;
sub ymm9_1 ymm5_1 ymm9_1;
sub ymm9_2 ymm5_2 ymm9_2;
sub ymm9_3 ymm5_3 ymm9_3;
sub ymm9_4 ymm5_4 ymm9_4;
sub ymm9_5 ymm5_5 ymm9_5;
sub ymm9_6 ymm5_6 ymm9_6;
sub ymm9_7 ymm5_7 ymm9_7;
sub ymm9_8 ymm5_8 ymm9_8;
sub ymm9_9 ymm5_9 ymm9_9;
sub ymm9_a ymm5_a ymm9_a;
sub ymm9_b ymm5_b ymm9_b;
sub ymm9_c ymm5_c ymm9_c;
sub ymm9_d ymm5_d ymm9_d;
sub ymm9_e ymm5_e ymm9_e;
sub ymm9_f ymm5_f ymm9_f;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f1e9 *)
add ymm5_0 ymm7_0 ymm11_0;
add ymm5_1 ymm7_1 ymm11_1;
add ymm5_2 ymm7_2 ymm11_2;
add ymm5_3 ymm7_3 ymm11_3;
add ymm5_4 ymm7_4 ymm11_4;
add ymm5_5 ymm7_5 ymm11_5;
add ymm5_6 ymm7_6 ymm11_6;
add ymm5_7 ymm7_7 ymm11_7;
add ymm5_8 ymm7_8 ymm11_8;
add ymm5_9 ymm7_9 ymm11_9;
add ymm5_a ymm7_a ymm11_a;
add ymm5_b ymm7_b ymm11_b;
add ymm5_c ymm7_c ymm11_c;
add ymm5_d ymm7_d ymm11_d;
add ymm5_e ymm7_e ymm11_e;
add ymm5_f ymm7_f ymm11_f;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f1ee *)
sub ymm11_0 ymm7_0 ymm11_0;
sub ymm11_1 ymm7_1 ymm11_1;
sub ymm11_2 ymm7_2 ymm11_2;
sub ymm11_3 ymm7_3 ymm11_3;
sub ymm11_4 ymm7_4 ymm11_4;
sub ymm11_5 ymm7_5 ymm11_5;
sub ymm11_6 ymm7_6 ymm11_6;
sub ymm11_7 ymm7_7 ymm11_7;
sub ymm11_8 ymm7_8 ymm11_8;
sub ymm11_9 ymm7_9 ymm11_9;
sub ymm11_a ymm7_a ymm11_a;
sub ymm11_b ymm7_b ymm11_b;
sub ymm11_c ymm7_c ymm11_c;
sub ymm11_d ymm7_d ymm11_d;
sub ymm11_e ymm7_e ymm11_e;
sub ymm11_f ymm7_f ymm11_f;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f1f3 *)
sub ymm8_0 ymm8_0 ymm12_0;
sub ymm8_1 ymm8_1 ymm12_1;
sub ymm8_2 ymm8_2 ymm12_2;
sub ymm8_3 ymm8_3 ymm12_3;
sub ymm8_4 ymm8_4 ymm12_4;
sub ymm8_5 ymm8_5 ymm12_5;
sub ymm8_6 ymm8_6 ymm12_6;
sub ymm8_7 ymm8_7 ymm12_7;
sub ymm8_8 ymm8_8 ymm12_8;
sub ymm8_9 ymm8_9 ymm12_9;
sub ymm8_a ymm8_a ymm12_a;
sub ymm8_b ymm8_b ymm12_b;
sub ymm8_c ymm8_c ymm12_c;
sub ymm8_d ymm8_d ymm12_d;
sub ymm8_e ymm8_e ymm12_e;
sub ymm8_f ymm8_f ymm12_f;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f1f8 *)
add ymm10_0 ymm10_0 ymm12_0;
add ymm10_1 ymm10_1 ymm12_1;
add ymm10_2 ymm10_2 ymm12_2;
add ymm10_3 ymm10_3 ymm12_3;
add ymm10_4 ymm10_4 ymm12_4;
add ymm10_5 ymm10_5 ymm12_5;
add ymm10_6 ymm10_6 ymm12_6;
add ymm10_7 ymm10_7 ymm12_7;
add ymm10_8 ymm10_8 ymm12_8;
add ymm10_9 ymm10_9 ymm12_9;
add ymm10_a ymm10_a ymm12_a;
add ymm10_b ymm10_b ymm12_b;
add ymm10_c ymm10_c ymm12_c;
add ymm10_d ymm10_d ymm12_d;
add ymm10_e ymm10_e ymm12_e;
add ymm10_f ymm10_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f1fd *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f202 *)
add ymm3_0 ymm3_0 ymm13_0;
add ymm3_1 ymm3_1 ymm13_1;
add ymm3_2 ymm3_2 ymm13_2;
add ymm3_3 ymm3_3 ymm13_3;
add ymm3_4 ymm3_4 ymm13_4;
add ymm3_5 ymm3_5 ymm13_5;
add ymm3_6 ymm3_6 ymm13_6;
add ymm3_7 ymm3_7 ymm13_7;
add ymm3_8 ymm3_8 ymm13_8;
add ymm3_9 ymm3_9 ymm13_9;
add ymm3_a ymm3_a ymm13_a;
add ymm3_b ymm3_b ymm13_b;
add ymm3_c ymm3_c ymm13_c;
add ymm3_d ymm3_d ymm13_d;
add ymm3_e ymm3_e ymm13_e;
add ymm3_f ymm3_f ymm13_f;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f207 *)
sub ymm6_0 ymm6_0 ymm14_0;
sub ymm6_1 ymm6_1 ymm14_1;
sub ymm6_2 ymm6_2 ymm14_2;
sub ymm6_3 ymm6_3 ymm14_3;
sub ymm6_4 ymm6_4 ymm14_4;
sub ymm6_5 ymm6_5 ymm14_5;
sub ymm6_6 ymm6_6 ymm14_6;
sub ymm6_7 ymm6_7 ymm14_7;
sub ymm6_8 ymm6_8 ymm14_8;
sub ymm6_9 ymm6_9 ymm14_9;
sub ymm6_a ymm6_a ymm14_a;
sub ymm6_b ymm6_b ymm14_b;
sub ymm6_c ymm6_c ymm14_c;
sub ymm6_d ymm6_d ymm14_d;
sub ymm6_e ymm6_e ymm14_e;
sub ymm6_f ymm6_f ymm14_f;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f20c *)
add ymm9_0 ymm9_0 ymm14_0;
add ymm9_1 ymm9_1 ymm14_1;
add ymm9_2 ymm9_2 ymm14_2;
add ymm9_3 ymm9_3 ymm14_3;
add ymm9_4 ymm9_4 ymm14_4;
add ymm9_5 ymm9_5 ymm14_5;
add ymm9_6 ymm9_6 ymm14_6;
add ymm9_7 ymm9_7 ymm14_7;
add ymm9_8 ymm9_8 ymm14_8;
add ymm9_9 ymm9_9 ymm14_9;
add ymm9_a ymm9_a ymm14_a;
add ymm9_b ymm9_b ymm14_b;
add ymm9_c ymm9_c ymm14_c;
add ymm9_d ymm9_d ymm14_d;
add ymm9_e ymm9_e ymm14_e;
add ymm9_f ymm9_f ymm14_f;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f211 *)
sub ymm5_0 ymm5_0 ymm15_0;
sub ymm5_1 ymm5_1 ymm15_1;
sub ymm5_2 ymm5_2 ymm15_2;
sub ymm5_3 ymm5_3 ymm15_3;
sub ymm5_4 ymm5_4 ymm15_4;
sub ymm5_5 ymm5_5 ymm15_5;
sub ymm5_6 ymm5_6 ymm15_6;
sub ymm5_7 ymm5_7 ymm15_7;
sub ymm5_8 ymm5_8 ymm15_8;
sub ymm5_9 ymm5_9 ymm15_9;
sub ymm5_a ymm5_a ymm15_a;
sub ymm5_b ymm5_b ymm15_b;
sub ymm5_c ymm5_c ymm15_c;
sub ymm5_d ymm5_d ymm15_d;
sub ymm5_e ymm5_e ymm15_e;
sub ymm5_f ymm5_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f216 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;
(* vmovdqa %ymm8,(%rdi)                            #! EA = L0x7fffffffaf80; PC = 0x55555556f21b *)
mov L0x7fffffffaf80 ymm8_0;
mov L0x7fffffffaf82 ymm8_1;
mov L0x7fffffffaf84 ymm8_2;
mov L0x7fffffffaf86 ymm8_3;
mov L0x7fffffffaf88 ymm8_4;
mov L0x7fffffffaf8a ymm8_5;
mov L0x7fffffffaf8c ymm8_6;
mov L0x7fffffffaf8e ymm8_7;
mov L0x7fffffffaf90 ymm8_8;
mov L0x7fffffffaf92 ymm8_9;
mov L0x7fffffffaf94 ymm8_a;
mov L0x7fffffffaf96 ymm8_b;
mov L0x7fffffffaf98 ymm8_c;
mov L0x7fffffffaf9a ymm8_d;
mov L0x7fffffffaf9c ymm8_e;
mov L0x7fffffffaf9e ymm8_f;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffafa0; PC = 0x55555556f21f *)
mov L0x7fffffffafa0 ymm4_0;
mov L0x7fffffffafa2 ymm4_1;
mov L0x7fffffffafa4 ymm4_2;
mov L0x7fffffffafa6 ymm4_3;
mov L0x7fffffffafa8 ymm4_4;
mov L0x7fffffffafaa ymm4_5;
mov L0x7fffffffafac ymm4_6;
mov L0x7fffffffafae ymm4_7;
mov L0x7fffffffafb0 ymm4_8;
mov L0x7fffffffafb2 ymm4_9;
mov L0x7fffffffafb4 ymm4_a;
mov L0x7fffffffafb6 ymm4_b;
mov L0x7fffffffafb8 ymm4_c;
mov L0x7fffffffafba ymm4_d;
mov L0x7fffffffafbc ymm4_e;
mov L0x7fffffffafbe ymm4_f;
(* vmovdqa %ymm10,0x40(%rdi)                       #! EA = L0x7fffffffafc0; PC = 0x55555556f224 *)
mov L0x7fffffffafc0 ymm10_0;
mov L0x7fffffffafc2 ymm10_1;
mov L0x7fffffffafc4 ymm10_2;
mov L0x7fffffffafc6 ymm10_3;
mov L0x7fffffffafc8 ymm10_4;
mov L0x7fffffffafca ymm10_5;
mov L0x7fffffffafcc ymm10_6;
mov L0x7fffffffafce ymm10_7;
mov L0x7fffffffafd0 ymm10_8;
mov L0x7fffffffafd2 ymm10_9;
mov L0x7fffffffafd4 ymm10_a;
mov L0x7fffffffafd6 ymm10_b;
mov L0x7fffffffafd8 ymm10_c;
mov L0x7fffffffafda ymm10_d;
mov L0x7fffffffafdc ymm10_e;
mov L0x7fffffffafde ymm10_f;
(* vmovdqa %ymm3,0x60(%rdi)                        #! EA = L0x7fffffffafe0; PC = 0x55555556f229 *)
mov L0x7fffffffafe0 ymm3_0;
mov L0x7fffffffafe2 ymm3_1;
mov L0x7fffffffafe4 ymm3_2;
mov L0x7fffffffafe6 ymm3_3;
mov L0x7fffffffafe8 ymm3_4;
mov L0x7fffffffafea ymm3_5;
mov L0x7fffffffafec ymm3_6;
mov L0x7fffffffafee ymm3_7;
mov L0x7fffffffaff0 ymm3_8;
mov L0x7fffffffaff2 ymm3_9;
mov L0x7fffffffaff4 ymm3_a;
mov L0x7fffffffaff6 ymm3_b;
mov L0x7fffffffaff8 ymm3_c;
mov L0x7fffffffaffa ymm3_d;
mov L0x7fffffffaffc ymm3_e;
mov L0x7fffffffaffe ymm3_f;
(* vmovdqa %ymm6,0x80(%rdi)                        #! EA = L0x7fffffffb000; PC = 0x55555556f22e *)
mov L0x7fffffffb000 ymm6_0;
mov L0x7fffffffb002 ymm6_1;
mov L0x7fffffffb004 ymm6_2;
mov L0x7fffffffb006 ymm6_3;
mov L0x7fffffffb008 ymm6_4;
mov L0x7fffffffb00a ymm6_5;
mov L0x7fffffffb00c ymm6_6;
mov L0x7fffffffb00e ymm6_7;
mov L0x7fffffffb010 ymm6_8;
mov L0x7fffffffb012 ymm6_9;
mov L0x7fffffffb014 ymm6_a;
mov L0x7fffffffb016 ymm6_b;
mov L0x7fffffffb018 ymm6_c;
mov L0x7fffffffb01a ymm6_d;
mov L0x7fffffffb01c ymm6_e;
mov L0x7fffffffb01e ymm6_f;
(* vmovdqa %ymm5,0xa0(%rdi)                        #! EA = L0x7fffffffb020; PC = 0x55555556f236 *)
mov L0x7fffffffb020 ymm5_0;
mov L0x7fffffffb022 ymm5_1;
mov L0x7fffffffb024 ymm5_2;
mov L0x7fffffffb026 ymm5_3;
mov L0x7fffffffb028 ymm5_4;
mov L0x7fffffffb02a ymm5_5;
mov L0x7fffffffb02c ymm5_6;
mov L0x7fffffffb02e ymm5_7;
mov L0x7fffffffb030 ymm5_8;
mov L0x7fffffffb032 ymm5_9;
mov L0x7fffffffb034 ymm5_a;
mov L0x7fffffffb036 ymm5_b;
mov L0x7fffffffb038 ymm5_c;
mov L0x7fffffffb03a ymm5_d;
mov L0x7fffffffb03c ymm5_e;
mov L0x7fffffffb03e ymm5_f;
(* vmovdqa %ymm9,0xc0(%rdi)                        #! EA = L0x7fffffffb040; PC = 0x55555556f23e *)
mov L0x7fffffffb040 ymm9_0;
mov L0x7fffffffb042 ymm9_1;
mov L0x7fffffffb044 ymm9_2;
mov L0x7fffffffb046 ymm9_3;
mov L0x7fffffffb048 ymm9_4;
mov L0x7fffffffb04a ymm9_5;
mov L0x7fffffffb04c ymm9_6;
mov L0x7fffffffb04e ymm9_7;
mov L0x7fffffffb050 ymm9_8;
mov L0x7fffffffb052 ymm9_9;
mov L0x7fffffffb054 ymm9_a;
mov L0x7fffffffb056 ymm9_b;
mov L0x7fffffffb058 ymm9_c;
mov L0x7fffffffb05a ymm9_d;
mov L0x7fffffffb05c ymm9_e;
mov L0x7fffffffb05e ymm9_f;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb060; PC = 0x55555556f246 *)
mov L0x7fffffffb060 ymm11_0;
mov L0x7fffffffb062 ymm11_1;
mov L0x7fffffffb064 ymm11_2;
mov L0x7fffffffb066 ymm11_3;
mov L0x7fffffffb068 ymm11_4;
mov L0x7fffffffb06a ymm11_5;
mov L0x7fffffffb06c ymm11_6;
mov L0x7fffffffb06e ymm11_7;
mov L0x7fffffffb070 ymm11_8;
mov L0x7fffffffb072 ymm11_9;
mov L0x7fffffffb074 ymm11_a;
mov L0x7fffffffb076 ymm11_b;
mov L0x7fffffffb078 ymm11_c;
mov L0x7fffffffb07a ymm11_d;
mov L0x7fffffffb07c ymm11_e;
mov L0x7fffffffb07e ymm11_f;


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
and [
eqmod (inp_poly**2)
(L0x7fffffffb080*(x**0) + L0x7fffffffb082*(x**1) + L0x7fffffffb084*(x**2) +
 L0x7fffffffb086*(x**3) + L0x7fffffffb088*(x**4) + L0x7fffffffb08a*(x**5) +
 L0x7fffffffb08c*(x**6) + L0x7fffffffb08e*(x**7) + L0x7fffffffb090*(x**8) +
 L0x7fffffffb092*(x**9) + L0x7fffffffb094*(x**10) + L0x7fffffffb096*(x**11) +
 L0x7fffffffb098*(x**12) + L0x7fffffffb09a*(x**13) + L0x7fffffffb09c*(x**14) +
 L0x7fffffffb09e*(x**15) + L0x7fffffffb0a0*(x**16) + L0x7fffffffb0a2*(x**17) +
 L0x7fffffffb0a4*(x**18) + L0x7fffffffb0a6*(x**19) + L0x7fffffffb0a8*(x**20) +
 L0x7fffffffb0aa*(x**21) + L0x7fffffffb0ac*(x**22) + L0x7fffffffb0ae*(x**23) +
 L0x7fffffffb0b0*(x**24) + L0x7fffffffb0b2*(x**25) + L0x7fffffffb0b4*(x**26) +
 L0x7fffffffb0b6*(x**27) + L0x7fffffffb0b8*(x**28) + L0x7fffffffb0ba*(x**29) +
 L0x7fffffffb0bc*(x**30) + L0x7fffffffb0be*(x**31) + L0x7fffffffb0c0*(x**32) +
 L0x7fffffffb0c2*(x**33) + L0x7fffffffb0c4*(x**34) + L0x7fffffffb0c6*(x**35) +
 L0x7fffffffb0c8*(x**36) + L0x7fffffffb0ca*(x**37) + L0x7fffffffb0cc*(x**38) +
 L0x7fffffffb0ce*(x**39) + L0x7fffffffb0d0*(x**40) + L0x7fffffffb0d2*(x**41) +
 L0x7fffffffb0d4*(x**42) + L0x7fffffffb0d6*(x**43) + L0x7fffffffb0d8*(x**44) +
 L0x7fffffffb0da*(x**45) + L0x7fffffffb0dc*(x**46) + L0x7fffffffb0de*(x**47) +
 L0x7fffffffb0e0*(x**48) + L0x7fffffffb0e2*(x**49) + L0x7fffffffb0e4*(x**50) +
 L0x7fffffffb0e6*(x**51) + L0x7fffffffb0e8*(x**52) + L0x7fffffffb0ea*(x**53) +
 L0x7fffffffb0ec*(x**54) + L0x7fffffffb0ee*(x**55) + L0x7fffffffb0f0*(x**56) +
 L0x7fffffffb0f2*(x**57) + L0x7fffffffb0f4*(x**58) + L0x7fffffffb0f6*(x**59) +
 L0x7fffffffb0f8*(x**60) + L0x7fffffffb0fa*(x**61) + L0x7fffffffb0fc*(x**62) +
 L0x7fffffffb0fe*(x**63) + L0x7fffffffb100*(x**64) + L0x7fffffffb102*(x**65) +
 L0x7fffffffb104*(x**66) + L0x7fffffffb106*(x**67) + L0x7fffffffb108*(x**68) +
 L0x7fffffffb10a*(x**69) + L0x7fffffffb10c*(x**70) + L0x7fffffffb10e*(x**71) +
 L0x7fffffffb110*(x**72) + L0x7fffffffb112*(x**73) + L0x7fffffffb114*(x**74) +
 L0x7fffffffb116*(x**75) + L0x7fffffffb118*(x**76) + L0x7fffffffb11a*(x**77) +
 L0x7fffffffb11c*(x**78) + L0x7fffffffb11e*(x**79) + L0x7fffffffb120*(x**80) +
 L0x7fffffffb122*(x**81) + L0x7fffffffb124*(x**82) + L0x7fffffffb126*(x**83) +
 L0x7fffffffb128*(x**84) + L0x7fffffffb12a*(x**85) + L0x7fffffffb12c*(x**86) +
 L0x7fffffffb12e*(x**87) + L0x7fffffffb130*(x**88) + L0x7fffffffb132*(x**89) +
 L0x7fffffffb134*(x**90) + L0x7fffffffb136*(x**91) + L0x7fffffffb138*(x**92) +
 L0x7fffffffb13a*(x**93) + L0x7fffffffb13c*(x**94) + L0x7fffffffb13e*(x**95) +
 L0x7fffffffb140*(x**96) + L0x7fffffffb142*(x**97) + L0x7fffffffb144*(x**98) +
 L0x7fffffffb146*(x**99) + L0x7fffffffb148*(x**100) + L0x7fffffffb14a*(x**101) +
 L0x7fffffffb14c*(x**102) + L0x7fffffffb14e*(x**103) + L0x7fffffffb150*(x**104) +
 L0x7fffffffb152*(x**105) + L0x7fffffffb154*(x**106) + L0x7fffffffb156*(x**107) +
 L0x7fffffffb158*(x**108) + L0x7fffffffb15a*(x**109) + L0x7fffffffb15c*(x**110) +
 L0x7fffffffb15e*(x**111) + L0x7fffffffb160*(x**112) + L0x7fffffffb162*(x**113) +
 L0x7fffffffb164*(x**114) + L0x7fffffffb166*(x**115) + L0x7fffffffb168*(x**116) +
 L0x7fffffffb16a*(x**117) + L0x7fffffffb16c*(x**118) + L0x7fffffffb16e*(x**119) +
 L0x7fffffffb170*(x**120) + L0x7fffffffb172*(x**121) + L0x7fffffffb174*(x**122) +
 L0x7fffffffb176*(x**123) + L0x7fffffffb178*(x**124) + L0x7fffffffb17a*(x**125) +
 L0x7fffffffb17c*(x**126) + L0x7fffffffb17e*(x**127))
[3329, x**128 - (1600)]]
prove with [ cuts [ 0 ] ]
&&
and [
(-6658)@16 <s L0x7fffffffb080, L0x7fffffffb080 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb082, L0x7fffffffb082 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb084, L0x7fffffffb084 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb086, L0x7fffffffb086 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb088, L0x7fffffffb088 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb08a, L0x7fffffffb08a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb08c, L0x7fffffffb08c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb08e, L0x7fffffffb08e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb090, L0x7fffffffb090 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb092, L0x7fffffffb092 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb094, L0x7fffffffb094 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb096, L0x7fffffffb096 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb098, L0x7fffffffb098 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb09a, L0x7fffffffb09a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb09c, L0x7fffffffb09c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb09e, L0x7fffffffb09e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a0, L0x7fffffffb0a0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a2, L0x7fffffffb0a2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a4, L0x7fffffffb0a4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a6, L0x7fffffffb0a6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0a8, L0x7fffffffb0a8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0aa, L0x7fffffffb0aa <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ac, L0x7fffffffb0ac <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ae, L0x7fffffffb0ae <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b0, L0x7fffffffb0b0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b2, L0x7fffffffb0b2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b4, L0x7fffffffb0b4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b6, L0x7fffffffb0b6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0b8, L0x7fffffffb0b8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ba, L0x7fffffffb0ba <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0bc, L0x7fffffffb0bc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0be, L0x7fffffffb0be <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c0, L0x7fffffffb0c0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c2, L0x7fffffffb0c2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c4, L0x7fffffffb0c4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c6, L0x7fffffffb0c6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0c8, L0x7fffffffb0c8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ca, L0x7fffffffb0ca <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0cc, L0x7fffffffb0cc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ce, L0x7fffffffb0ce <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d0, L0x7fffffffb0d0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d2, L0x7fffffffb0d2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d4, L0x7fffffffb0d4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d6, L0x7fffffffb0d6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0d8, L0x7fffffffb0d8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0da, L0x7fffffffb0da <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0dc, L0x7fffffffb0dc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0de, L0x7fffffffb0de <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e0, L0x7fffffffb0e0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e2, L0x7fffffffb0e2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e4, L0x7fffffffb0e4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e6, L0x7fffffffb0e6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0e8, L0x7fffffffb0e8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ea, L0x7fffffffb0ea <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ec, L0x7fffffffb0ec <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0ee, L0x7fffffffb0ee <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f0, L0x7fffffffb0f0 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f2, L0x7fffffffb0f2 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f4, L0x7fffffffb0f4 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f6, L0x7fffffffb0f6 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0f8, L0x7fffffffb0f8 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0fa, L0x7fffffffb0fa <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0fc, L0x7fffffffb0fc <s (6658)@16,
(-6658)@16 <s L0x7fffffffb0fe, L0x7fffffffb0fe <s (6658)@16,
(-6658)@16 <s L0x7fffffffb100, L0x7fffffffb100 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb102, L0x7fffffffb102 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb104, L0x7fffffffb104 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb106, L0x7fffffffb106 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb108, L0x7fffffffb108 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb10a, L0x7fffffffb10a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb10c, L0x7fffffffb10c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb10e, L0x7fffffffb10e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb110, L0x7fffffffb110 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb112, L0x7fffffffb112 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb114, L0x7fffffffb114 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb116, L0x7fffffffb116 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb118, L0x7fffffffb118 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb11a, L0x7fffffffb11a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb11c, L0x7fffffffb11c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb11e, L0x7fffffffb11e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb120, L0x7fffffffb120 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb122, L0x7fffffffb122 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb124, L0x7fffffffb124 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb126, L0x7fffffffb126 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb128, L0x7fffffffb128 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb12a, L0x7fffffffb12a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb12c, L0x7fffffffb12c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb12e, L0x7fffffffb12e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb130, L0x7fffffffb130 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb132, L0x7fffffffb132 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb134, L0x7fffffffb134 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb136, L0x7fffffffb136 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb138, L0x7fffffffb138 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb13a, L0x7fffffffb13a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb13c, L0x7fffffffb13c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb13e, L0x7fffffffb13e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb140, L0x7fffffffb140 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb142, L0x7fffffffb142 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb144, L0x7fffffffb144 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb146, L0x7fffffffb146 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb148, L0x7fffffffb148 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb14a, L0x7fffffffb14a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb14c, L0x7fffffffb14c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb14e, L0x7fffffffb14e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb150, L0x7fffffffb150 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb152, L0x7fffffffb152 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb154, L0x7fffffffb154 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb156, L0x7fffffffb156 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb158, L0x7fffffffb158 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb15a, L0x7fffffffb15a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb15c, L0x7fffffffb15c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb15e, L0x7fffffffb15e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb160, L0x7fffffffb160 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb162, L0x7fffffffb162 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb164, L0x7fffffffb164 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb166, L0x7fffffffb166 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb168, L0x7fffffffb168 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb16a, L0x7fffffffb16a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb16c, L0x7fffffffb16c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb16e, L0x7fffffffb16e <s (6658)@16,
(-6658)@16 <s L0x7fffffffb170, L0x7fffffffb170 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb172, L0x7fffffffb172 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb174, L0x7fffffffb174 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb176, L0x7fffffffb176 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb178, L0x7fffffffb178 <s (6658)@16,
(-6658)@16 <s L0x7fffffffb17a, L0x7fffffffb17a <s (6658)@16,
(-6658)@16 <s L0x7fffffffb17c, L0x7fffffffb17c <s (6658)@16,
(-6658)@16 <s L0x7fffffffb17e, L0x7fffffffb17e <s (6658)@16]
prove with [ cuts [ 0 ] ];

(* vmovdqa 0x320(%rsi),%ymm15                      #! EA = L0x555555639900; Value = 0x0313031303130313; PC = 0x55555556f24e *)
mov ymm15_0 L0x555555639900;
mov ymm15_1 L0x555555639902;
mov ymm15_2 L0x555555639904;
mov ymm15_3 L0x555555639906;
mov ymm15_4 L0x555555639908;
mov ymm15_5 L0x55555563990a;
mov ymm15_6 L0x55555563990c;
mov ymm15_7 L0x55555563990e;
mov ymm15_8 L0x555555639910;
mov ymm15_9 L0x555555639912;
mov ymm15_a L0x555555639914;
mov ymm15_b L0x555555639916;
mov ymm15_c L0x555555639918;
mov ymm15_d L0x55555563991a;
mov ymm15_e L0x55555563991c;
mov ymm15_f L0x55555563991e;
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb100; Value = 0xfffe0000f9bff9c0; PC = 0x55555556f256 *)
mov ymm8_0 L0x7fffffffb100;
mov ymm8_1 L0x7fffffffb102;
mov ymm8_2 L0x7fffffffb104;
mov ymm8_3 L0x7fffffffb106;
mov ymm8_4 L0x7fffffffb108;
mov ymm8_5 L0x7fffffffb10a;
mov ymm8_6 L0x7fffffffb10c;
mov ymm8_7 L0x7fffffffb10e;
mov ymm8_8 L0x7fffffffb110;
mov ymm8_9 L0x7fffffffb112;
mov ymm8_a L0x7fffffffb114;
mov ymm8_b L0x7fffffffb116;
mov ymm8_c L0x7fffffffb118;
mov ymm8_d L0x7fffffffb11a;
mov ymm8_e L0x7fffffffb11c;
mov ymm8_f L0x7fffffffb11e;
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb120; Value = 0x063ef9c0f9c1f9c0; PC = 0x55555556f25e *)
mov ymm9_0 L0x7fffffffb120;
mov ymm9_1 L0x7fffffffb122;
mov ymm9_2 L0x7fffffffb124;
mov ymm9_3 L0x7fffffffb126;
mov ymm9_4 L0x7fffffffb128;
mov ymm9_5 L0x7fffffffb12a;
mov ymm9_6 L0x7fffffffb12c;
mov ymm9_7 L0x7fffffffb12e;
mov ymm9_8 L0x7fffffffb130;
mov ymm9_9 L0x7fffffffb132;
mov ymm9_a L0x7fffffffb134;
mov ymm9_b L0x7fffffffb136;
mov ymm9_c L0x7fffffffb138;
mov ymm9_d L0x7fffffffb13a;
mov ymm9_e L0x7fffffffb13c;
mov ymm9_f L0x7fffffffb13e;
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb140; Value = 0x0641063ff9c0ffff; PC = 0x55555556f266 *)
mov ymm10_0 L0x7fffffffb140;
mov ymm10_1 L0x7fffffffb142;
mov ymm10_2 L0x7fffffffb144;
mov ymm10_3 L0x7fffffffb146;
mov ymm10_4 L0x7fffffffb148;
mov ymm10_5 L0x7fffffffb14a;
mov ymm10_6 L0x7fffffffb14c;
mov ymm10_7 L0x7fffffffb14e;
mov ymm10_8 L0x7fffffffb150;
mov ymm10_9 L0x7fffffffb152;
mov ymm10_a L0x7fffffffb154;
mov ymm10_b L0x7fffffffb156;
mov ymm10_c L0x7fffffffb158;
mov ymm10_d L0x7fffffffb15a;
mov ymm10_e L0x7fffffffb15c;
mov ymm10_f L0x7fffffffb15e;
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb160; Value = 0xfffef9bf06400640; PC = 0x55555556f26e *)
mov ymm11_0 L0x7fffffffb160;
mov ymm11_1 L0x7fffffffb162;
mov ymm11_2 L0x7fffffffb164;
mov ymm11_3 L0x7fffffffb166;
mov ymm11_4 L0x7fffffffb168;
mov ymm11_5 L0x7fffffffb16a;
mov ymm11_6 L0x7fffffffb16c;
mov ymm11_7 L0x7fffffffb16e;
mov ymm11_8 L0x7fffffffb170;
mov ymm11_9 L0x7fffffffb172;
mov ymm11_a L0x7fffffffb174;
mov ymm11_b L0x7fffffffb176;
mov ymm11_c L0x7fffffffb178;
mov ymm11_d L0x7fffffffb17a;
mov ymm11_e L0x7fffffffb17c;
mov ymm11_f L0x7fffffffb17e;
(* vmovdqa 0x340(%rsi),%ymm2                       #! EA = L0x555555639920; Value = 0xfa13fa13fa13fa13; PC = 0x55555556f276 *)
mov ymm2_0 L0x555555639920;
mov ymm2_1 L0x555555639922;
mov ymm2_2 L0x555555639924;
mov ymm2_3 L0x555555639926;
mov ymm2_4 L0x555555639928;
mov ymm2_5 L0x55555563992a;
mov ymm2_6 L0x55555563992c;
mov ymm2_7 L0x55555563992e;
mov ymm2_8 L0x555555639930;
mov ymm2_9 L0x555555639932;
mov ymm2_a L0x555555639934;
mov ymm2_b L0x555555639936;
mov ymm2_c L0x555555639938;
mov ymm2_d L0x55555563993a;
mov ymm2_e L0x55555563993c;
mov ymm2_f L0x55555563993e;
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556f27e *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556f283 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556f288 *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f28d *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f292 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f296 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f29a *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f29e *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb080; Value = 0xf9c0fffff9c00640; PC = 0x55555556f2a2 *)
mov ymm4_0 L0x7fffffffb080;
mov ymm4_1 L0x7fffffffb082;
mov ymm4_2 L0x7fffffffb084;
mov ymm4_3 L0x7fffffffb086;
mov ymm4_4 L0x7fffffffb088;
mov ymm4_5 L0x7fffffffb08a;
mov ymm4_6 L0x7fffffffb08c;
mov ymm4_7 L0x7fffffffb08e;
mov ymm4_8 L0x7fffffffb090;
mov ymm4_9 L0x7fffffffb092;
mov ymm4_a L0x7fffffffb094;
mov ymm4_b L0x7fffffffb096;
mov ymm4_c L0x7fffffffb098;
mov ymm4_d L0x7fffffffb09a;
mov ymm4_e L0x7fffffffb09c;
mov ymm4_f L0x7fffffffb09e;
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb0a0; Value = 0x06410641f9bff9bf; PC = 0x55555556f2aa *)
mov ymm5_0 L0x7fffffffb0a0;
mov ymm5_1 L0x7fffffffb0a2;
mov ymm5_2 L0x7fffffffb0a4;
mov ymm5_3 L0x7fffffffb0a6;
mov ymm5_4 L0x7fffffffb0a8;
mov ymm5_5 L0x7fffffffb0aa;
mov ymm5_6 L0x7fffffffb0ac;
mov ymm5_7 L0x7fffffffb0ae;
mov ymm5_8 L0x7fffffffb0b0;
mov ymm5_9 L0x7fffffffb0b2;
mov ymm5_a L0x7fffffffb0b4;
mov ymm5_b L0x7fffffffb0b6;
mov ymm5_c L0x7fffffffb0b8;
mov ymm5_d L0x7fffffffb0ba;
mov ymm5_e L0x7fffffffb0bc;
mov ymm5_f L0x7fffffffb0be;
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb0c0; Value = 0x00010000063f0000; PC = 0x55555556f2b2 *)
mov ymm6_0 L0x7fffffffb0c0;
mov ymm6_1 L0x7fffffffb0c2;
mov ymm6_2 L0x7fffffffb0c4;
mov ymm6_3 L0x7fffffffb0c6;
mov ymm6_4 L0x7fffffffb0c8;
mov ymm6_5 L0x7fffffffb0ca;
mov ymm6_6 L0x7fffffffb0cc;
mov ymm6_7 L0x7fffffffb0ce;
mov ymm6_8 L0x7fffffffb0d0;
mov ymm6_9 L0x7fffffffb0d2;
mov ymm6_a L0x7fffffffb0d4;
mov ymm6_b L0x7fffffffb0d6;
mov ymm6_c L0x7fffffffb0d8;
mov ymm6_d L0x7fffffffb0da;
mov ymm6_e L0x7fffffffb0dc;
mov ymm6_f L0x7fffffffb0de;
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb0e0; Value = 0x000100820001ffff; PC = 0x55555556f2ba *)
mov ymm7_0 L0x7fffffffb0e0;
mov ymm7_1 L0x7fffffffb0e2;
mov ymm7_2 L0x7fffffffb0e4;
mov ymm7_3 L0x7fffffffb0e6;
mov ymm7_4 L0x7fffffffb0e8;
mov ymm7_5 L0x7fffffffb0ea;
mov ymm7_6 L0x7fffffffb0ec;
mov ymm7_7 L0x7fffffffb0ee;
mov ymm7_8 L0x7fffffffb0f0;
mov ymm7_9 L0x7fffffffb0f2;
mov ymm7_a L0x7fffffffb0f4;
mov ymm7_b L0x7fffffffb0f6;
mov ymm7_c L0x7fffffffb0f8;
mov ymm7_d L0x7fffffffb0fa;
mov ymm7_e L0x7fffffffb0fc;
mov ymm7_f L0x7fffffffb0fe;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f2c2 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f2c6 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f2ca *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f2ce *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556f2d2 *)
add ymm3_0 ymm4_0 ymm8_0;
add ymm3_1 ymm4_1 ymm8_1;
add ymm3_2 ymm4_2 ymm8_2;
add ymm3_3 ymm4_3 ymm8_3;
add ymm3_4 ymm4_4 ymm8_4;
add ymm3_5 ymm4_5 ymm8_5;
add ymm3_6 ymm4_6 ymm8_6;
add ymm3_7 ymm4_7 ymm8_7;
add ymm3_8 ymm4_8 ymm8_8;
add ymm3_9 ymm4_9 ymm8_9;
add ymm3_a ymm4_a ymm8_a;
add ymm3_b ymm4_b ymm8_b;
add ymm3_c ymm4_c ymm8_c;
add ymm3_d ymm4_d ymm8_d;
add ymm3_e ymm4_e ymm8_e;
add ymm3_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556f2d7 *)
sub ymm8_0 ymm4_0 ymm8_0;
sub ymm8_1 ymm4_1 ymm8_1;
sub ymm8_2 ymm4_2 ymm8_2;
sub ymm8_3 ymm4_3 ymm8_3;
sub ymm8_4 ymm4_4 ymm8_4;
sub ymm8_5 ymm4_5 ymm8_5;
sub ymm8_6 ymm4_6 ymm8_6;
sub ymm8_7 ymm4_7 ymm8_7;
sub ymm8_8 ymm4_8 ymm8_8;
sub ymm8_9 ymm4_9 ymm8_9;
sub ymm8_a ymm4_a ymm8_a;
sub ymm8_b ymm4_b ymm8_b;
sub ymm8_c ymm4_c ymm8_c;
sub ymm8_d ymm4_d ymm8_d;
sub ymm8_e ymm4_e ymm8_e;
sub ymm8_f ymm4_f ymm8_f;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556f2dc *)
add ymm4_0 ymm5_0 ymm9_0;
add ymm4_1 ymm5_1 ymm9_1;
add ymm4_2 ymm5_2 ymm9_2;
add ymm4_3 ymm5_3 ymm9_3;
add ymm4_4 ymm5_4 ymm9_4;
add ymm4_5 ymm5_5 ymm9_5;
add ymm4_6 ymm5_6 ymm9_6;
add ymm4_7 ymm5_7 ymm9_7;
add ymm4_8 ymm5_8 ymm9_8;
add ymm4_9 ymm5_9 ymm9_9;
add ymm4_a ymm5_a ymm9_a;
add ymm4_b ymm5_b ymm9_b;
add ymm4_c ymm5_c ymm9_c;
add ymm4_d ymm5_d ymm9_d;
add ymm4_e ymm5_e ymm9_e;
add ymm4_f ymm5_f ymm9_f;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f2e1 *)
sub ymm9_0 ymm5_0 ymm9_0;
sub ymm9_1 ymm5_1 ymm9_1;
sub ymm9_2 ymm5_2 ymm9_2;
sub ymm9_3 ymm5_3 ymm9_3;
sub ymm9_4 ymm5_4 ymm9_4;
sub ymm9_5 ymm5_5 ymm9_5;
sub ymm9_6 ymm5_6 ymm9_6;
sub ymm9_7 ymm5_7 ymm9_7;
sub ymm9_8 ymm5_8 ymm9_8;
sub ymm9_9 ymm5_9 ymm9_9;
sub ymm9_a ymm5_a ymm9_a;
sub ymm9_b ymm5_b ymm9_b;
sub ymm9_c ymm5_c ymm9_c;
sub ymm9_d ymm5_d ymm9_d;
sub ymm9_e ymm5_e ymm9_e;
sub ymm9_f ymm5_f ymm9_f;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556f2e6 *)
add ymm5_0 ymm6_0 ymm10_0;
add ymm5_1 ymm6_1 ymm10_1;
add ymm5_2 ymm6_2 ymm10_2;
add ymm5_3 ymm6_3 ymm10_3;
add ymm5_4 ymm6_4 ymm10_4;
add ymm5_5 ymm6_5 ymm10_5;
add ymm5_6 ymm6_6 ymm10_6;
add ymm5_7 ymm6_7 ymm10_7;
add ymm5_8 ymm6_8 ymm10_8;
add ymm5_9 ymm6_9 ymm10_9;
add ymm5_a ymm6_a ymm10_a;
add ymm5_b ymm6_b ymm10_b;
add ymm5_c ymm6_c ymm10_c;
add ymm5_d ymm6_d ymm10_d;
add ymm5_e ymm6_e ymm10_e;
add ymm5_f ymm6_f ymm10_f;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556f2eb *)
sub ymm10_0 ymm6_0 ymm10_0;
sub ymm10_1 ymm6_1 ymm10_1;
sub ymm10_2 ymm6_2 ymm10_2;
sub ymm10_3 ymm6_3 ymm10_3;
sub ymm10_4 ymm6_4 ymm10_4;
sub ymm10_5 ymm6_5 ymm10_5;
sub ymm10_6 ymm6_6 ymm10_6;
sub ymm10_7 ymm6_7 ymm10_7;
sub ymm10_8 ymm6_8 ymm10_8;
sub ymm10_9 ymm6_9 ymm10_9;
sub ymm10_a ymm6_a ymm10_a;
sub ymm10_b ymm6_b ymm10_b;
sub ymm10_c ymm6_c ymm10_c;
sub ymm10_d ymm6_d ymm10_d;
sub ymm10_e ymm6_e ymm10_e;
sub ymm10_f ymm6_f ymm10_f;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556f2f0 *)
add ymm6_0 ymm7_0 ymm11_0;
add ymm6_1 ymm7_1 ymm11_1;
add ymm6_2 ymm7_2 ymm11_2;
add ymm6_3 ymm7_3 ymm11_3;
add ymm6_4 ymm7_4 ymm11_4;
add ymm6_5 ymm7_5 ymm11_5;
add ymm6_6 ymm7_6 ymm11_6;
add ymm6_7 ymm7_7 ymm11_7;
add ymm6_8 ymm7_8 ymm11_8;
add ymm6_9 ymm7_9 ymm11_9;
add ymm6_a ymm7_a ymm11_a;
add ymm6_b ymm7_b ymm11_b;
add ymm6_c ymm7_c ymm11_c;
add ymm6_d ymm7_d ymm11_d;
add ymm6_e ymm7_e ymm11_e;
add ymm6_f ymm7_f ymm11_f;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f2f5 *)
sub ymm11_0 ymm7_0 ymm11_0;
sub ymm11_1 ymm7_1 ymm11_1;
sub ymm11_2 ymm7_2 ymm11_2;
sub ymm11_3 ymm7_3 ymm11_3;
sub ymm11_4 ymm7_4 ymm11_4;
sub ymm11_5 ymm7_5 ymm11_5;
sub ymm11_6 ymm7_6 ymm11_6;
sub ymm11_7 ymm7_7 ymm11_7;
sub ymm11_8 ymm7_8 ymm11_8;
sub ymm11_9 ymm7_9 ymm11_9;
sub ymm11_a ymm7_a ymm11_a;
sub ymm11_b ymm7_b ymm11_b;
sub ymm11_c ymm7_c ymm11_c;
sub ymm11_d ymm7_d ymm11_d;
sub ymm11_e ymm7_e ymm11_e;
sub ymm11_f ymm7_f ymm11_f;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f2fa *)
sub ymm3_0 ymm3_0 ymm12_0;
sub ymm3_1 ymm3_1 ymm12_1;
sub ymm3_2 ymm3_2 ymm12_2;
sub ymm3_3 ymm3_3 ymm12_3;
sub ymm3_4 ymm3_4 ymm12_4;
sub ymm3_5 ymm3_5 ymm12_5;
sub ymm3_6 ymm3_6 ymm12_6;
sub ymm3_7 ymm3_7 ymm12_7;
sub ymm3_8 ymm3_8 ymm12_8;
sub ymm3_9 ymm3_9 ymm12_9;
sub ymm3_a ymm3_a ymm12_a;
sub ymm3_b ymm3_b ymm12_b;
sub ymm3_c ymm3_c ymm12_c;
sub ymm3_d ymm3_d ymm12_d;
sub ymm3_e ymm3_e ymm12_e;
sub ymm3_f ymm3_f ymm12_f;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f2ff *)
add ymm8_0 ymm8_0 ymm12_0;
add ymm8_1 ymm8_1 ymm12_1;
add ymm8_2 ymm8_2 ymm12_2;
add ymm8_3 ymm8_3 ymm12_3;
add ymm8_4 ymm8_4 ymm12_4;
add ymm8_5 ymm8_5 ymm12_5;
add ymm8_6 ymm8_6 ymm12_6;
add ymm8_7 ymm8_7 ymm12_7;
add ymm8_8 ymm8_8 ymm12_8;
add ymm8_9 ymm8_9 ymm12_9;
add ymm8_a ymm8_a ymm12_a;
add ymm8_b ymm8_b ymm12_b;
add ymm8_c ymm8_c ymm12_c;
add ymm8_d ymm8_d ymm12_d;
add ymm8_e ymm8_e ymm12_e;
add ymm8_f ymm8_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f304 *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556f309 *)
add ymm9_0 ymm9_0 ymm13_0;
add ymm9_1 ymm9_1 ymm13_1;
add ymm9_2 ymm9_2 ymm13_2;
add ymm9_3 ymm9_3 ymm13_3;
add ymm9_4 ymm9_4 ymm13_4;
add ymm9_5 ymm9_5 ymm13_5;
add ymm9_6 ymm9_6 ymm13_6;
add ymm9_7 ymm9_7 ymm13_7;
add ymm9_8 ymm9_8 ymm13_8;
add ymm9_9 ymm9_9 ymm13_9;
add ymm9_a ymm9_a ymm13_a;
add ymm9_b ymm9_b ymm13_b;
add ymm9_c ymm9_c ymm13_c;
add ymm9_d ymm9_d ymm13_d;
add ymm9_e ymm9_e ymm13_e;
add ymm9_f ymm9_f ymm13_f;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f30e *)
sub ymm5_0 ymm5_0 ymm14_0;
sub ymm5_1 ymm5_1 ymm14_1;
sub ymm5_2 ymm5_2 ymm14_2;
sub ymm5_3 ymm5_3 ymm14_3;
sub ymm5_4 ymm5_4 ymm14_4;
sub ymm5_5 ymm5_5 ymm14_5;
sub ymm5_6 ymm5_6 ymm14_6;
sub ymm5_7 ymm5_7 ymm14_7;
sub ymm5_8 ymm5_8 ymm14_8;
sub ymm5_9 ymm5_9 ymm14_9;
sub ymm5_a ymm5_a ymm14_a;
sub ymm5_b ymm5_b ymm14_b;
sub ymm5_c ymm5_c ymm14_c;
sub ymm5_d ymm5_d ymm14_d;
sub ymm5_e ymm5_e ymm14_e;
sub ymm5_f ymm5_f ymm14_f;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f313 *)
add ymm10_0 ymm10_0 ymm14_0;
add ymm10_1 ymm10_1 ymm14_1;
add ymm10_2 ymm10_2 ymm14_2;
add ymm10_3 ymm10_3 ymm14_3;
add ymm10_4 ymm10_4 ymm14_4;
add ymm10_5 ymm10_5 ymm14_5;
add ymm10_6 ymm10_6 ymm14_6;
add ymm10_7 ymm10_7 ymm14_7;
add ymm10_8 ymm10_8 ymm14_8;
add ymm10_9 ymm10_9 ymm14_9;
add ymm10_a ymm10_a ymm14_a;
add ymm10_b ymm10_b ymm14_b;
add ymm10_c ymm10_c ymm14_c;
add ymm10_d ymm10_d ymm14_d;
add ymm10_e ymm10_e ymm14_e;
add ymm10_f ymm10_f ymm14_f;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f318 *)
sub ymm6_0 ymm6_0 ymm15_0;
sub ymm6_1 ymm6_1 ymm15_1;
sub ymm6_2 ymm6_2 ymm15_2;
sub ymm6_3 ymm6_3 ymm15_3;
sub ymm6_4 ymm6_4 ymm15_4;
sub ymm6_5 ymm6_5 ymm15_5;
sub ymm6_6 ymm6_6 ymm15_6;
sub ymm6_7 ymm6_7 ymm15_7;
sub ymm6_8 ymm6_8 ymm15_8;
sub ymm6_9 ymm6_9 ymm15_9;
sub ymm6_a ymm6_a ymm15_a;
sub ymm6_b ymm6_b ymm15_b;
sub ymm6_c ymm6_c ymm15_c;
sub ymm6_d ymm6_d ymm15_d;
sub ymm6_e ymm6_e ymm15_e;
sub ymm6_f ymm6_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f31d *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 1 1 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm3_0*(x**0) + ymm3_1*(x**1) + ymm3_2*(x**2) + ymm3_3*(x**3) +
 ymm3_4*(x**4) + ymm3_5*(x**5) + ymm3_6*(x**6) + ymm3_7*(x**7) +
 ymm3_8*(x**8) + ymm3_9*(x**9) + ymm3_a*(x**10) + ymm3_b*(x**11) +
 ymm3_c*(x**12) + ymm3_d*(x**13) + ymm3_e*(x**14) + ymm3_f*(x**15) +
 ymm4_0*(x**16) + ymm4_1*(x**17) + ymm4_2*(x**18) + ymm4_3*(x**19) +
 ymm4_4*(x**20) + ymm4_5*(x**21) + ymm4_6*(x**22) + ymm4_7*(x**23) +
 ymm4_8*(x**24) + ymm4_9*(x**25) + ymm4_a*(x**26) + ymm4_b*(x**27) +
 ymm4_c*(x**28) + ymm4_d*(x**29) + ymm4_e*(x**30) + ymm4_f*(x**31) +
 ymm5_0*(x**32) + ymm5_1*(x**33) + ymm5_2*(x**34) + ymm5_3*(x**35) +
 ymm5_4*(x**36) + ymm5_5*(x**37) + ymm5_6*(x**38) + ymm5_7*(x**39) +
 ymm5_8*(x**40) + ymm5_9*(x**41) + ymm5_a*(x**42) + ymm5_b*(x**43) +
 ymm5_c*(x**44) + ymm5_d*(x**45) + ymm5_e*(x**46) + ymm5_f*(x**47) +
 ymm6_0*(x**48) + ymm6_1*(x**49) + ymm6_2*(x**50) + ymm6_3*(x**51) +
 ymm6_4*(x**52) + ymm6_5*(x**53) + ymm6_6*(x**54) + ymm6_7*(x**55) +
 ymm6_8*(x**56) + ymm6_9*(x**57) + ymm6_a*(x**58) + ymm6_b*(x**59) +
 ymm6_c*(x**60) + ymm6_d*(x**61) + ymm6_e*(x**62) + ymm6_f*(x**63))
[3329, x**64 - (3289)],
eqmod (inp_poly**2)
(ymm8_0*(x**0) + ymm8_1*(x**1) + ymm8_2*(x**2) + ymm8_3*(x**3) +
 ymm8_4*(x**4) + ymm8_5*(x**5) + ymm8_6*(x**6) + ymm8_7*(x**7) +
 ymm8_8*(x**8) + ymm8_9*(x**9) + ymm8_a*(x**10) + ymm8_b*(x**11) +
 ymm8_c*(x**12) + ymm8_d*(x**13) + ymm8_e*(x**14) + ymm8_f*(x**15) +
 ymm9_0*(x**16) + ymm9_1*(x**17) + ymm9_2*(x**18) + ymm9_3*(x**19) +
 ymm9_4*(x**20) + ymm9_5*(x**21) + ymm9_6*(x**22) + ymm9_7*(x**23) +
 ymm9_8*(x**24) + ymm9_9*(x**25) + ymm9_a*(x**26) + ymm9_b*(x**27) +
 ymm9_c*(x**28) + ymm9_d*(x**29) + ymm9_e*(x**30) + ymm9_f*(x**31) +
 ymm10_0*(x**32) + ymm10_1*(x**33) + ymm10_2*(x**34) + ymm10_3*(x**35) +
 ymm10_4*(x**36) + ymm10_5*(x**37) + ymm10_6*(x**38) + ymm10_7*(x**39) +
 ymm10_8*(x**40) + ymm10_9*(x**41) + ymm10_a*(x**42) + ymm10_b*(x**43) +
 ymm10_c*(x**44) + ymm10_d*(x**45) + ymm10_e*(x**46) + ymm10_f*(x**47) +
 ymm11_0*(x**48) + ymm11_1*(x**49) + ymm11_2*(x**50) + ymm11_3*(x**51) +
 ymm11_4*(x**52) + ymm11_5*(x**53) + ymm11_6*(x**54) + ymm11_7*(x**55) +
 ymm11_8*(x**56) + ymm11_9*(x**57) + ymm11_a*(x**58) + ymm11_b*(x**59) +
 ymm11_c*(x**60) + ymm11_d*(x**61) + ymm11_e*(x**62) + ymm11_f*(x**63))
[3329, x**64 - (40)]]
&&
and [
(-9987)@16 <s ymm3_0, ymm3_0 <s (9987)@16,
(-9987)@16 <s ymm3_1, ymm3_1 <s (9987)@16,
(-9987)@16 <s ymm3_2, ymm3_2 <s (9987)@16,
(-9987)@16 <s ymm3_3, ymm3_3 <s (9987)@16,
(-9987)@16 <s ymm3_4, ymm3_4 <s (9987)@16,
(-9987)@16 <s ymm3_5, ymm3_5 <s (9987)@16,
(-9987)@16 <s ymm3_6, ymm3_6 <s (9987)@16,
(-9987)@16 <s ymm3_7, ymm3_7 <s (9987)@16,
(-9987)@16 <s ymm3_8, ymm3_8 <s (9987)@16,
(-9987)@16 <s ymm3_9, ymm3_9 <s (9987)@16,
(-9987)@16 <s ymm3_a, ymm3_a <s (9987)@16,
(-9987)@16 <s ymm3_b, ymm3_b <s (9987)@16,
(-9987)@16 <s ymm3_c, ymm3_c <s (9987)@16,
(-9987)@16 <s ymm3_d, ymm3_d <s (9987)@16,
(-9987)@16 <s ymm3_e, ymm3_e <s (9987)@16,
(-9987)@16 <s ymm3_f, ymm3_f <s (9987)@16,
(-9987)@16 <s ymm4_0, ymm4_0 <s (9987)@16,
(-9987)@16 <s ymm4_1, ymm4_1 <s (9987)@16,
(-9987)@16 <s ymm4_2, ymm4_2 <s (9987)@16,
(-9987)@16 <s ymm4_3, ymm4_3 <s (9987)@16,
(-9987)@16 <s ymm4_4, ymm4_4 <s (9987)@16,
(-9987)@16 <s ymm4_5, ymm4_5 <s (9987)@16,
(-9987)@16 <s ymm4_6, ymm4_6 <s (9987)@16,
(-9987)@16 <s ymm4_7, ymm4_7 <s (9987)@16,
(-9987)@16 <s ymm4_8, ymm4_8 <s (9987)@16,
(-9987)@16 <s ymm4_9, ymm4_9 <s (9987)@16,
(-9987)@16 <s ymm4_a, ymm4_a <s (9987)@16,
(-9987)@16 <s ymm4_b, ymm4_b <s (9987)@16,
(-9987)@16 <s ymm4_c, ymm4_c <s (9987)@16,
(-9987)@16 <s ymm4_d, ymm4_d <s (9987)@16,
(-9987)@16 <s ymm4_e, ymm4_e <s (9987)@16,
(-9987)@16 <s ymm4_f, ymm4_f <s (9987)@16,
(-9987)@16 <s ymm5_0, ymm5_0 <s (9987)@16,
(-9987)@16 <s ymm5_1, ymm5_1 <s (9987)@16,
(-9987)@16 <s ymm5_2, ymm5_2 <s (9987)@16,
(-9987)@16 <s ymm5_3, ymm5_3 <s (9987)@16,
(-9987)@16 <s ymm5_4, ymm5_4 <s (9987)@16,
(-9987)@16 <s ymm5_5, ymm5_5 <s (9987)@16,
(-9987)@16 <s ymm5_6, ymm5_6 <s (9987)@16,
(-9987)@16 <s ymm5_7, ymm5_7 <s (9987)@16,
(-9987)@16 <s ymm5_8, ymm5_8 <s (9987)@16,
(-9987)@16 <s ymm5_9, ymm5_9 <s (9987)@16,
(-9987)@16 <s ymm5_a, ymm5_a <s (9987)@16,
(-9987)@16 <s ymm5_b, ymm5_b <s (9987)@16,
(-9987)@16 <s ymm5_c, ymm5_c <s (9987)@16,
(-9987)@16 <s ymm5_d, ymm5_d <s (9987)@16,
(-9987)@16 <s ymm5_e, ymm5_e <s (9987)@16,
(-9987)@16 <s ymm5_f, ymm5_f <s (9987)@16,
(-9987)@16 <s ymm6_0, ymm6_0 <s (9987)@16,
(-9987)@16 <s ymm6_1, ymm6_1 <s (9987)@16,
(-9987)@16 <s ymm6_2, ymm6_2 <s (9987)@16,
(-9987)@16 <s ymm6_3, ymm6_3 <s (9987)@16,
(-9987)@16 <s ymm6_4, ymm6_4 <s (9987)@16,
(-9987)@16 <s ymm6_5, ymm6_5 <s (9987)@16,
(-9987)@16 <s ymm6_6, ymm6_6 <s (9987)@16,
(-9987)@16 <s ymm6_7, ymm6_7 <s (9987)@16,
(-9987)@16 <s ymm6_8, ymm6_8 <s (9987)@16,
(-9987)@16 <s ymm6_9, ymm6_9 <s (9987)@16,
(-9987)@16 <s ymm6_a, ymm6_a <s (9987)@16,
(-9987)@16 <s ymm6_b, ymm6_b <s (9987)@16,
(-9987)@16 <s ymm6_c, ymm6_c <s (9987)@16,
(-9987)@16 <s ymm6_d, ymm6_d <s (9987)@16,
(-9987)@16 <s ymm6_e, ymm6_e <s (9987)@16,
(-9987)@16 <s ymm6_f, ymm6_f <s (9987)@16,
(-9987)@16 <s ymm8_0, ymm8_0 <s (9987)@16,
(-9987)@16 <s ymm8_1, ymm8_1 <s (9987)@16,
(-9987)@16 <s ymm8_2, ymm8_2 <s (9987)@16,
(-9987)@16 <s ymm8_3, ymm8_3 <s (9987)@16,
(-9987)@16 <s ymm8_4, ymm8_4 <s (9987)@16,
(-9987)@16 <s ymm8_5, ymm8_5 <s (9987)@16,
(-9987)@16 <s ymm8_6, ymm8_6 <s (9987)@16,
(-9987)@16 <s ymm8_7, ymm8_7 <s (9987)@16,
(-9987)@16 <s ymm8_8, ymm8_8 <s (9987)@16,
(-9987)@16 <s ymm8_9, ymm8_9 <s (9987)@16,
(-9987)@16 <s ymm8_a, ymm8_a <s (9987)@16,
(-9987)@16 <s ymm8_b, ymm8_b <s (9987)@16,
(-9987)@16 <s ymm8_c, ymm8_c <s (9987)@16,
(-9987)@16 <s ymm8_d, ymm8_d <s (9987)@16,
(-9987)@16 <s ymm8_e, ymm8_e <s (9987)@16,
(-9987)@16 <s ymm8_f, ymm8_f <s (9987)@16,
(-9987)@16 <s ymm9_0, ymm9_0 <s (9987)@16,
(-9987)@16 <s ymm9_1, ymm9_1 <s (9987)@16,
(-9987)@16 <s ymm9_2, ymm9_2 <s (9987)@16,
(-9987)@16 <s ymm9_3, ymm9_3 <s (9987)@16,
(-9987)@16 <s ymm9_4, ymm9_4 <s (9987)@16,
(-9987)@16 <s ymm9_5, ymm9_5 <s (9987)@16,
(-9987)@16 <s ymm9_6, ymm9_6 <s (9987)@16,
(-9987)@16 <s ymm9_7, ymm9_7 <s (9987)@16,
(-9987)@16 <s ymm9_8, ymm9_8 <s (9987)@16,
(-9987)@16 <s ymm9_9, ymm9_9 <s (9987)@16,
(-9987)@16 <s ymm9_a, ymm9_a <s (9987)@16,
(-9987)@16 <s ymm9_b, ymm9_b <s (9987)@16,
(-9987)@16 <s ymm9_c, ymm9_c <s (9987)@16,
(-9987)@16 <s ymm9_d, ymm9_d <s (9987)@16,
(-9987)@16 <s ymm9_e, ymm9_e <s (9987)@16,
(-9987)@16 <s ymm9_f, ymm9_f <s (9987)@16,
(-9987)@16 <s ymm10_0, ymm10_0 <s (9987)@16,
(-9987)@16 <s ymm10_1, ymm10_1 <s (9987)@16,
(-9987)@16 <s ymm10_2, ymm10_2 <s (9987)@16,
(-9987)@16 <s ymm10_3, ymm10_3 <s (9987)@16,
(-9987)@16 <s ymm10_4, ymm10_4 <s (9987)@16,
(-9987)@16 <s ymm10_5, ymm10_5 <s (9987)@16,
(-9987)@16 <s ymm10_6, ymm10_6 <s (9987)@16,
(-9987)@16 <s ymm10_7, ymm10_7 <s (9987)@16,
(-9987)@16 <s ymm10_8, ymm10_8 <s (9987)@16,
(-9987)@16 <s ymm10_9, ymm10_9 <s (9987)@16,
(-9987)@16 <s ymm10_a, ymm10_a <s (9987)@16,
(-9987)@16 <s ymm10_b, ymm10_b <s (9987)@16,
(-9987)@16 <s ymm10_c, ymm10_c <s (9987)@16,
(-9987)@16 <s ymm10_d, ymm10_d <s (9987)@16,
(-9987)@16 <s ymm10_e, ymm10_e <s (9987)@16,
(-9987)@16 <s ymm10_f, ymm10_f <s (9987)@16,
(-9987)@16 <s ymm11_0, ymm11_0 <s (9987)@16,
(-9987)@16 <s ymm11_1, ymm11_1 <s (9987)@16,
(-9987)@16 <s ymm11_2, ymm11_2 <s (9987)@16,
(-9987)@16 <s ymm11_3, ymm11_3 <s (9987)@16,
(-9987)@16 <s ymm11_4, ymm11_4 <s (9987)@16,
(-9987)@16 <s ymm11_5, ymm11_5 <s (9987)@16,
(-9987)@16 <s ymm11_6, ymm11_6 <s (9987)@16,
(-9987)@16 <s ymm11_7, ymm11_7 <s (9987)@16,
(-9987)@16 <s ymm11_8, ymm11_8 <s (9987)@16,
(-9987)@16 <s ymm11_9, ymm11_9 <s (9987)@16,
(-9987)@16 <s ymm11_a, ymm11_a <s (9987)@16,
(-9987)@16 <s ymm11_b, ymm11_b <s (9987)@16,
(-9987)@16 <s ymm11_c, ymm11_c <s (9987)@16,
(-9987)@16 <s ymm11_d, ymm11_d <s (9987)@16,
(-9987)@16 <s ymm11_e, ymm11_e <s (9987)@16,
(-9987)@16 <s ymm11_f, ymm11_f <s (9987)@16]
;

(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556f322 *)
mov perm_0 ymm5_0;
mov perm_1 ymm5_1;
mov perm_2 ymm5_2;
mov perm_3 ymm5_3;
mov perm_4 ymm5_4;
mov perm_5 ymm5_5;
mov perm_6 ymm5_6;
mov perm_7 ymm5_7;
mov perm_8 ymm10_0;
mov perm_9 ymm10_1;
mov perm_a ymm10_2;
mov perm_b ymm10_3;
mov perm_c ymm10_4;
mov perm_d ymm10_5;
mov perm_e ymm10_6;
mov perm_f ymm10_7;
mov ymm7_0 perm_0;
mov ymm7_1 perm_1;
mov ymm7_2 perm_2;
mov ymm7_3 perm_3;
mov ymm7_4 perm_4;
mov ymm7_5 perm_5;
mov ymm7_6 perm_6;
mov ymm7_7 perm_7;
mov ymm7_8 perm_8;
mov ymm7_9 perm_9;
mov ymm7_a perm_a;
mov ymm7_b perm_b;
mov ymm7_c perm_c;
mov ymm7_d perm_d;
mov ymm7_e perm_e;
mov ymm7_f perm_f;
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556f328 *)
mov perm_0 ymm5_8;
mov perm_1 ymm5_9;
mov perm_2 ymm5_a;
mov perm_3 ymm5_b;
mov perm_4 ymm5_c;
mov perm_5 ymm5_d;
mov perm_6 ymm5_e;
mov perm_7 ymm5_f;
mov perm_8 ymm10_8;
mov perm_9 ymm10_9;
mov perm_a ymm10_a;
mov perm_b ymm10_b;
mov perm_c ymm10_c;
mov perm_d ymm10_d;
mov perm_e ymm10_e;
mov perm_f ymm10_f;
mov ymm10_0 perm_0;
mov ymm10_1 perm_1;
mov ymm10_2 perm_2;
mov ymm10_3 perm_3;
mov ymm10_4 perm_4;
mov ymm10_5 perm_5;
mov ymm10_6 perm_6;
mov ymm10_7 perm_7;
mov ymm10_8 perm_8;
mov ymm10_9 perm_9;
mov ymm10_a perm_a;
mov ymm10_b perm_b;
mov ymm10_c perm_c;
mov ymm10_d perm_d;
mov ymm10_e perm_e;
mov ymm10_f perm_f;
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556f32e *)
mov perm_0 ymm6_0;
mov perm_1 ymm6_1;
mov perm_2 ymm6_2;
mov perm_3 ymm6_3;
mov perm_4 ymm6_4;
mov perm_5 ymm6_5;
mov perm_6 ymm6_6;
mov perm_7 ymm6_7;
mov perm_8 ymm11_0;
mov perm_9 ymm11_1;
mov perm_a ymm11_2;
mov perm_b ymm11_3;
mov perm_c ymm11_4;
mov perm_d ymm11_5;
mov perm_e ymm11_6;
mov perm_f ymm11_7;
mov ymm5_0 perm_0;
mov ymm5_1 perm_1;
mov ymm5_2 perm_2;
mov ymm5_3 perm_3;
mov ymm5_4 perm_4;
mov ymm5_5 perm_5;
mov ymm5_6 perm_6;
mov ymm5_7 perm_7;
mov ymm5_8 perm_8;
mov ymm5_9 perm_9;
mov ymm5_a perm_a;
mov ymm5_b perm_b;
mov ymm5_c perm_c;
mov ymm5_d perm_d;
mov ymm5_e perm_e;
mov ymm5_f perm_f;
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556f334 *)
mov perm_0 ymm6_8;
mov perm_1 ymm6_9;
mov perm_2 ymm6_a;
mov perm_3 ymm6_b;
mov perm_4 ymm6_c;
mov perm_5 ymm6_d;
mov perm_6 ymm6_e;
mov perm_7 ymm6_f;
mov perm_8 ymm11_8;
mov perm_9 ymm11_9;
mov perm_a ymm11_a;
mov perm_b ymm11_b;
mov perm_c ymm11_c;
mov perm_d ymm11_d;
mov perm_e ymm11_e;
mov perm_f ymm11_f;
mov ymm11_0 perm_0;
mov ymm11_1 perm_1;
mov ymm11_2 perm_2;
mov ymm11_3 perm_3;
mov ymm11_4 perm_4;
mov ymm11_5 perm_5;
mov ymm11_6 perm_6;
mov ymm11_7 perm_7;
mov ymm11_8 perm_8;
mov ymm11_9 perm_9;
mov ymm11_a perm_a;
mov ymm11_b perm_b;
mov ymm11_c perm_c;
mov ymm11_d perm_d;
mov ymm11_e perm_e;
mov ymm11_f perm_f;
(* vmovdqa 0x360(%rsi),%ymm15                      #! EA = L0x555555639940; Value = 0x6e1f6e1f6e1f6e1f; PC = 0x55555556f33a *)
mov ymm15_0 L0x555555639940;
mov ymm15_1 L0x555555639942;
mov ymm15_2 L0x555555639944;
mov ymm15_3 L0x555555639946;
mov ymm15_4 L0x555555639948;
mov ymm15_5 L0x55555563994a;
mov ymm15_6 L0x55555563994c;
mov ymm15_7 L0x55555563994e;
mov ymm15_8 L0x555555639950;
mov ymm15_9 L0x555555639952;
mov ymm15_a L0x555555639954;
mov ymm15_b L0x555555639956;
mov ymm15_c L0x555555639958;
mov ymm15_d L0x55555563995a;
mov ymm15_e L0x55555563995c;
mov ymm15_f L0x55555563995e;
(* vmovdqa 0x380(%rsi),%ymm2                       #! EA = L0x555555639960; Value = 0x011f011f011f011f; PC = 0x55555556f342 *)
mov ymm2_0 L0x555555639960;
mov ymm2_1 L0x555555639962;
mov ymm2_2 L0x555555639964;
mov ymm2_3 L0x555555639966;
mov ymm2_4 L0x555555639968;
mov ymm2_5 L0x55555563996a;
mov ymm2_6 L0x55555563996c;
mov ymm2_7 L0x55555563996e;
mov ymm2_8 L0x555555639970;
mov ymm2_9 L0x555555639972;
mov ymm2_a L0x555555639974;
mov ymm2_b L0x555555639976;
mov ymm2_c L0x555555639978;
mov ymm2_d L0x55555563997a;
mov ymm2_e L0x55555563997c;
mov ymm2_f L0x55555563997e;
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556f34a *)
smull mulHymm7_0 mulL_0 ymm15_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm15_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm15_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm15_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm15_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm15_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm15_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm15_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm15_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm15_9 ymm7_9;
smull mulHymm7_a mulL_a ymm15_a ymm7_a;
smull mulHymm7_b mulL_b ymm15_b ymm7_b;
smull mulHymm7_c mulL_c ymm15_c ymm7_c;
smull mulHymm7_d mulL_d ymm15_d ymm7_d;
smull mulHymm7_e mulL_e ymm15_e ymm7_e;
smull mulHymm7_f mulL_f ymm15_f ymm7_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556f34f *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556f354 *)
smull mulHymm5_0 mulL_0 ymm15_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm15_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm15_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm15_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm15_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm15_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm15_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm15_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm15_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm15_9 ymm5_9;
smull mulHymm5_a mulL_a ymm15_a ymm5_a;
smull mulHymm5_b mulL_b ymm15_b ymm5_b;
smull mulHymm5_c mulL_c ymm15_c ymm5_c;
smull mulHymm5_d mulL_d ymm15_d ymm5_d;
smull mulHymm5_e mulL_e ymm15_e ymm5_e;
smull mulHymm5_f mulL_f ymm15_f ymm5_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f359 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f35e *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm2_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm2_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm2_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm2_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm2_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm2_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm2_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm2_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm2_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm2_9;
smull mulH_a mulLymm7_a ymm7_a ymm2_a;
smull mulH_b mulLymm7_b ymm7_b ymm2_b;
smull mulH_c mulLymm7_c ymm7_c ymm2_c;
smull mulH_d mulLymm7_d ymm7_d ymm2_d;
smull mulH_e mulLymm7_e ymm7_e ymm2_e;
smull mulH_f mulLymm7_f ymm7_f ymm2_f;
mov ymm7_0 mulH_0;
mov ymm7_1 mulH_1;
mov ymm7_2 mulH_2;
mov ymm7_3 mulH_3;
mov ymm7_4 mulH_4;
mov ymm7_5 mulH_5;
mov ymm7_6 mulH_6;
mov ymm7_7 mulH_7;
mov ymm7_8 mulH_8;
mov ymm7_9 mulH_9;
mov ymm7_a mulH_a;
mov ymm7_b mulH_b;
mov ymm7_c mulH_c;
mov ymm7_d mulH_d;
mov ymm7_e mulH_e;
mov ymm7_f mulH_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f362 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f366 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm2_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm2_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm2_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm2_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm2_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm2_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm2_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm2_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm2_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm2_9;
smull mulH_a mulLymm5_a ymm5_a ymm2_a;
smull mulH_b mulLymm5_b ymm5_b ymm2_b;
smull mulH_c mulLymm5_c ymm5_c ymm2_c;
smull mulH_d mulLymm5_d ymm5_d ymm2_d;
smull mulH_e mulLymm5_e ymm5_e ymm2_e;
smull mulH_f mulLymm5_f ymm5_f ymm2_f;
mov ymm5_0 mulH_0;
mov ymm5_1 mulH_1;
mov ymm5_2 mulH_2;
mov ymm5_3 mulH_3;
mov ymm5_4 mulH_4;
mov ymm5_5 mulH_5;
mov ymm5_6 mulH_6;
mov ymm5_7 mulH_7;
mov ymm5_8 mulH_8;
mov ymm5_9 mulH_9;
mov ymm5_a mulH_a;
mov ymm5_b mulH_b;
mov ymm5_c mulH_c;
mov ymm5_d mulH_d;
mov ymm5_e mulH_e;
mov ymm5_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f36a *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556f36e *)
mov perm_0 ymm3_0;
mov perm_1 ymm3_1;
mov perm_2 ymm3_2;
mov perm_3 ymm3_3;
mov perm_4 ymm3_4;
mov perm_5 ymm3_5;
mov perm_6 ymm3_6;
mov perm_7 ymm3_7;
mov perm_8 ymm8_0;
mov perm_9 ymm8_1;
mov perm_a ymm8_2;
mov perm_b ymm8_3;
mov perm_c ymm8_4;
mov perm_d ymm8_5;
mov perm_e ymm8_6;
mov perm_f ymm8_7;
mov ymm6_0 perm_0;
mov ymm6_1 perm_1;
mov ymm6_2 perm_2;
mov ymm6_3 perm_3;
mov ymm6_4 perm_4;
mov ymm6_5 perm_5;
mov ymm6_6 perm_6;
mov ymm6_7 perm_7;
mov ymm6_8 perm_8;
mov ymm6_9 perm_9;
mov ymm6_a perm_a;
mov ymm6_b perm_b;
mov ymm6_c perm_c;
mov ymm6_d perm_d;
mov ymm6_e perm_e;
mov ymm6_f perm_f;
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556f374 *)
mov perm_0 ymm3_8;
mov perm_1 ymm3_9;
mov perm_2 ymm3_a;
mov perm_3 ymm3_b;
mov perm_4 ymm3_c;
mov perm_5 ymm3_d;
mov perm_6 ymm3_e;
mov perm_7 ymm3_f;
mov perm_8 ymm8_8;
mov perm_9 ymm8_9;
mov perm_a ymm8_a;
mov perm_b ymm8_b;
mov perm_c ymm8_c;
mov perm_d ymm8_d;
mov perm_e ymm8_e;
mov perm_f ymm8_f;
mov ymm8_0 perm_0;
mov ymm8_1 perm_1;
mov ymm8_2 perm_2;
mov ymm8_3 perm_3;
mov ymm8_4 perm_4;
mov ymm8_5 perm_5;
mov ymm8_6 perm_6;
mov ymm8_7 perm_7;
mov ymm8_8 perm_8;
mov ymm8_9 perm_9;
mov ymm8_a perm_a;
mov ymm8_b perm_b;
mov ymm8_c perm_c;
mov ymm8_d perm_d;
mov ymm8_e perm_e;
mov ymm8_f perm_f;
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556f37a *)
mov perm_0 ymm4_0;
mov perm_1 ymm4_1;
mov perm_2 ymm4_2;
mov perm_3 ymm4_3;
mov perm_4 ymm4_4;
mov perm_5 ymm4_5;
mov perm_6 ymm4_6;
mov perm_7 ymm4_7;
mov perm_8 ymm9_0;
mov perm_9 ymm9_1;
mov perm_a ymm9_2;
mov perm_b ymm9_3;
mov perm_c ymm9_4;
mov perm_d ymm9_5;
mov perm_e ymm9_6;
mov perm_f ymm9_7;
mov ymm3_0 perm_0;
mov ymm3_1 perm_1;
mov ymm3_2 perm_2;
mov ymm3_3 perm_3;
mov ymm3_4 perm_4;
mov ymm3_5 perm_5;
mov ymm3_6 perm_6;
mov ymm3_7 perm_7;
mov ymm3_8 perm_8;
mov ymm3_9 perm_9;
mov ymm3_a perm_a;
mov ymm3_b perm_b;
mov ymm3_c perm_c;
mov ymm3_d perm_d;
mov ymm3_e perm_e;
mov ymm3_f perm_f;
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556f380 *)
mov perm_0 ymm4_8;
mov perm_1 ymm4_9;
mov perm_2 ymm4_a;
mov perm_3 ymm4_b;
mov perm_4 ymm4_c;
mov perm_5 ymm4_d;
mov perm_6 ymm4_e;
mov perm_7 ymm4_f;
mov perm_8 ymm9_8;
mov perm_9 ymm9_9;
mov perm_a ymm9_a;
mov perm_b ymm9_b;
mov perm_c ymm9_c;
mov perm_d ymm9_d;
mov perm_e ymm9_e;
mov perm_f ymm9_f;
mov ymm9_0 perm_0;
mov ymm9_1 perm_1;
mov ymm9_2 perm_2;
mov ymm9_3 perm_3;
mov ymm9_4 perm_4;
mov ymm9_5 perm_5;
mov ymm9_6 perm_6;
mov ymm9_7 perm_7;
mov ymm9_8 perm_8;
mov ymm9_9 perm_9;
mov ymm9_a perm_a;
mov ymm9_b perm_b;
mov ymm9_c perm_c;
mov ymm9_d perm_d;
mov ymm9_e perm_e;
mov ymm9_f perm_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f386 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm7_0;
assume red_0 = mulLymm7_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm7_1;
assume red_1 = mulLymm7_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm7_2;
assume red_2 = mulLymm7_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm7_3;
assume red_3 = mulLymm7_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm7_4;
assume red_4 = mulLymm7_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm7_5;
assume red_5 = mulLymm7_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm7_6;
assume red_6 = mulLymm7_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm7_7;
assume red_7 = mulLymm7_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm7_8;
assume red_8 = mulLymm7_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm7_9;
assume red_9 = mulLymm7_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm7_a;
assume red_a = mulLymm7_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm7_b;
assume red_b = mulLymm7_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm7_c;
assume red_c = mulLymm7_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm7_d;
assume red_d = mulLymm7_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm7_e;
assume red_e = mulLymm7_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm7_f;
assume red_f = mulLymm7_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f38a *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f38e *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm5_0;
assume red_0 = mulLymm5_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm5_1;
assume red_1 = mulLymm5_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm5_2;
assume red_2 = mulLymm5_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm5_3;
assume red_3 = mulLymm5_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm5_4;
assume red_4 = mulLymm5_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm5_5;
assume red_5 = mulLymm5_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm5_6;
assume red_6 = mulLymm5_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm5_7;
assume red_7 = mulLymm5_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm5_8;
assume red_8 = mulLymm5_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm5_9;
assume red_9 = mulLymm5_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm5_a;
assume red_a = mulLymm5_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm5_b;
assume red_b = mulLymm5_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm5_c;
assume red_c = mulLymm5_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm5_d;
assume red_d = mulLymm5_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm5_e;
assume red_e = mulLymm5_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm5_f;
assume red_f = mulLymm5_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f392 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556f396 *)
add ymm4_0 ymm6_0 ymm7_0;
add ymm4_1 ymm6_1 ymm7_1;
add ymm4_2 ymm6_2 ymm7_2;
add ymm4_3 ymm6_3 ymm7_3;
add ymm4_4 ymm6_4 ymm7_4;
add ymm4_5 ymm6_5 ymm7_5;
add ymm4_6 ymm6_6 ymm7_6;
add ymm4_7 ymm6_7 ymm7_7;
add ymm4_8 ymm6_8 ymm7_8;
add ymm4_9 ymm6_9 ymm7_9;
add ymm4_a ymm6_a ymm7_a;
add ymm4_b ymm6_b ymm7_b;
add ymm4_c ymm6_c ymm7_c;
add ymm4_d ymm6_d ymm7_d;
add ymm4_e ymm6_e ymm7_e;
add ymm4_f ymm6_f ymm7_f;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f39a *)
sub ymm7_0 ymm6_0 ymm7_0;
sub ymm7_1 ymm6_1 ymm7_1;
sub ymm7_2 ymm6_2 ymm7_2;
sub ymm7_3 ymm6_3 ymm7_3;
sub ymm7_4 ymm6_4 ymm7_4;
sub ymm7_5 ymm6_5 ymm7_5;
sub ymm7_6 ymm6_6 ymm7_6;
sub ymm7_7 ymm6_7 ymm7_7;
sub ymm7_8 ymm6_8 ymm7_8;
sub ymm7_9 ymm6_9 ymm7_9;
sub ymm7_a ymm6_a ymm7_a;
sub ymm7_b ymm6_b ymm7_b;
sub ymm7_c ymm6_c ymm7_c;
sub ymm7_d ymm6_d ymm7_d;
sub ymm7_e ymm6_e ymm7_e;
sub ymm7_f ymm6_f ymm7_f;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556f39e *)
add ymm6_0 ymm8_0 ymm10_0;
add ymm6_1 ymm8_1 ymm10_1;
add ymm6_2 ymm8_2 ymm10_2;
add ymm6_3 ymm8_3 ymm10_3;
add ymm6_4 ymm8_4 ymm10_4;
add ymm6_5 ymm8_5 ymm10_5;
add ymm6_6 ymm8_6 ymm10_6;
add ymm6_7 ymm8_7 ymm10_7;
add ymm6_8 ymm8_8 ymm10_8;
add ymm6_9 ymm8_9 ymm10_9;
add ymm6_a ymm8_a ymm10_a;
add ymm6_b ymm8_b ymm10_b;
add ymm6_c ymm8_c ymm10_c;
add ymm6_d ymm8_d ymm10_d;
add ymm6_e ymm8_e ymm10_e;
add ymm6_f ymm8_f ymm10_f;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556f3a3 *)
sub ymm10_0 ymm8_0 ymm10_0;
sub ymm10_1 ymm8_1 ymm10_1;
sub ymm10_2 ymm8_2 ymm10_2;
sub ymm10_3 ymm8_3 ymm10_3;
sub ymm10_4 ymm8_4 ymm10_4;
sub ymm10_5 ymm8_5 ymm10_5;
sub ymm10_6 ymm8_6 ymm10_6;
sub ymm10_7 ymm8_7 ymm10_7;
sub ymm10_8 ymm8_8 ymm10_8;
sub ymm10_9 ymm8_9 ymm10_9;
sub ymm10_a ymm8_a ymm10_a;
sub ymm10_b ymm8_b ymm10_b;
sub ymm10_c ymm8_c ymm10_c;
sub ymm10_d ymm8_d ymm10_d;
sub ymm10_e ymm8_e ymm10_e;
sub ymm10_f ymm8_f ymm10_f;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556f3a8 *)
add ymm8_0 ymm3_0 ymm5_0;
add ymm8_1 ymm3_1 ymm5_1;
add ymm8_2 ymm3_2 ymm5_2;
add ymm8_3 ymm3_3 ymm5_3;
add ymm8_4 ymm3_4 ymm5_4;
add ymm8_5 ymm3_5 ymm5_5;
add ymm8_6 ymm3_6 ymm5_6;
add ymm8_7 ymm3_7 ymm5_7;
add ymm8_8 ymm3_8 ymm5_8;
add ymm8_9 ymm3_9 ymm5_9;
add ymm8_a ymm3_a ymm5_a;
add ymm8_b ymm3_b ymm5_b;
add ymm8_c ymm3_c ymm5_c;
add ymm8_d ymm3_d ymm5_d;
add ymm8_e ymm3_e ymm5_e;
add ymm8_f ymm3_f ymm5_f;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556f3ac *)
sub ymm5_0 ymm3_0 ymm5_0;
sub ymm5_1 ymm3_1 ymm5_1;
sub ymm5_2 ymm3_2 ymm5_2;
sub ymm5_3 ymm3_3 ymm5_3;
sub ymm5_4 ymm3_4 ymm5_4;
sub ymm5_5 ymm3_5 ymm5_5;
sub ymm5_6 ymm3_6 ymm5_6;
sub ymm5_7 ymm3_7 ymm5_7;
sub ymm5_8 ymm3_8 ymm5_8;
sub ymm5_9 ymm3_9 ymm5_9;
sub ymm5_a ymm3_a ymm5_a;
sub ymm5_b ymm3_b ymm5_b;
sub ymm5_c ymm3_c ymm5_c;
sub ymm5_d ymm3_d ymm5_d;
sub ymm5_e ymm3_e ymm5_e;
sub ymm5_f ymm3_f ymm5_f;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556f3b0 *)
add ymm3_0 ymm9_0 ymm11_0;
add ymm3_1 ymm9_1 ymm11_1;
add ymm3_2 ymm9_2 ymm11_2;
add ymm3_3 ymm9_3 ymm11_3;
add ymm3_4 ymm9_4 ymm11_4;
add ymm3_5 ymm9_5 ymm11_5;
add ymm3_6 ymm9_6 ymm11_6;
add ymm3_7 ymm9_7 ymm11_7;
add ymm3_8 ymm9_8 ymm11_8;
add ymm3_9 ymm9_9 ymm11_9;
add ymm3_a ymm9_a ymm11_a;
add ymm3_b ymm9_b ymm11_b;
add ymm3_c ymm9_c ymm11_c;
add ymm3_d ymm9_d ymm11_d;
add ymm3_e ymm9_e ymm11_e;
add ymm3_f ymm9_f ymm11_f;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556f3b5 *)
sub ymm11_0 ymm9_0 ymm11_0;
sub ymm11_1 ymm9_1 ymm11_1;
sub ymm11_2 ymm9_2 ymm11_2;
sub ymm11_3 ymm9_3 ymm11_3;
sub ymm11_4 ymm9_4 ymm11_4;
sub ymm11_5 ymm9_5 ymm11_5;
sub ymm11_6 ymm9_6 ymm11_6;
sub ymm11_7 ymm9_7 ymm11_7;
sub ymm11_8 ymm9_8 ymm11_8;
sub ymm11_9 ymm9_9 ymm11_9;
sub ymm11_a ymm9_a ymm11_a;
sub ymm11_b ymm9_b ymm11_b;
sub ymm11_c ymm9_c ymm11_c;
sub ymm11_d ymm9_d ymm11_d;
sub ymm11_e ymm9_e ymm11_e;
sub ymm11_f ymm9_f ymm11_f;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f3ba *)
sub ymm4_0 ymm4_0 ymm12_0;
sub ymm4_1 ymm4_1 ymm12_1;
sub ymm4_2 ymm4_2 ymm12_2;
sub ymm4_3 ymm4_3 ymm12_3;
sub ymm4_4 ymm4_4 ymm12_4;
sub ymm4_5 ymm4_5 ymm12_5;
sub ymm4_6 ymm4_6 ymm12_6;
sub ymm4_7 ymm4_7 ymm12_7;
sub ymm4_8 ymm4_8 ymm12_8;
sub ymm4_9 ymm4_9 ymm12_9;
sub ymm4_a ymm4_a ymm12_a;
sub ymm4_b ymm4_b ymm12_b;
sub ymm4_c ymm4_c ymm12_c;
sub ymm4_d ymm4_d ymm12_d;
sub ymm4_e ymm4_e ymm12_e;
sub ymm4_f ymm4_f ymm12_f;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556f3bf *)
add ymm7_0 ymm7_0 ymm12_0;
add ymm7_1 ymm7_1 ymm12_1;
add ymm7_2 ymm7_2 ymm12_2;
add ymm7_3 ymm7_3 ymm12_3;
add ymm7_4 ymm7_4 ymm12_4;
add ymm7_5 ymm7_5 ymm12_5;
add ymm7_6 ymm7_6 ymm12_6;
add ymm7_7 ymm7_7 ymm12_7;
add ymm7_8 ymm7_8 ymm12_8;
add ymm7_9 ymm7_9 ymm12_9;
add ymm7_a ymm7_a ymm12_a;
add ymm7_b ymm7_b ymm12_b;
add ymm7_c ymm7_c ymm12_c;
add ymm7_d ymm7_d ymm12_d;
add ymm7_e ymm7_e ymm12_e;
add ymm7_f ymm7_f ymm12_f;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f3c4 *)
sub ymm6_0 ymm6_0 ymm13_0;
sub ymm6_1 ymm6_1 ymm13_1;
sub ymm6_2 ymm6_2 ymm13_2;
sub ymm6_3 ymm6_3 ymm13_3;
sub ymm6_4 ymm6_4 ymm13_4;
sub ymm6_5 ymm6_5 ymm13_5;
sub ymm6_6 ymm6_6 ymm13_6;
sub ymm6_7 ymm6_7 ymm13_7;
sub ymm6_8 ymm6_8 ymm13_8;
sub ymm6_9 ymm6_9 ymm13_9;
sub ymm6_a ymm6_a ymm13_a;
sub ymm6_b ymm6_b ymm13_b;
sub ymm6_c ymm6_c ymm13_c;
sub ymm6_d ymm6_d ymm13_d;
sub ymm6_e ymm6_e ymm13_e;
sub ymm6_f ymm6_f ymm13_f;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556f3c9 *)
add ymm10_0 ymm10_0 ymm13_0;
add ymm10_1 ymm10_1 ymm13_1;
add ymm10_2 ymm10_2 ymm13_2;
add ymm10_3 ymm10_3 ymm13_3;
add ymm10_4 ymm10_4 ymm13_4;
add ymm10_5 ymm10_5 ymm13_5;
add ymm10_6 ymm10_6 ymm13_6;
add ymm10_7 ymm10_7 ymm13_7;
add ymm10_8 ymm10_8 ymm13_8;
add ymm10_9 ymm10_9 ymm13_9;
add ymm10_a ymm10_a ymm13_a;
add ymm10_b ymm10_b ymm13_b;
add ymm10_c ymm10_c ymm13_c;
add ymm10_d ymm10_d ymm13_d;
add ymm10_e ymm10_e ymm13_e;
add ymm10_f ymm10_f ymm13_f;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f3ce *)
sub ymm8_0 ymm8_0 ymm14_0;
sub ymm8_1 ymm8_1 ymm14_1;
sub ymm8_2 ymm8_2 ymm14_2;
sub ymm8_3 ymm8_3 ymm14_3;
sub ymm8_4 ymm8_4 ymm14_4;
sub ymm8_5 ymm8_5 ymm14_5;
sub ymm8_6 ymm8_6 ymm14_6;
sub ymm8_7 ymm8_7 ymm14_7;
sub ymm8_8 ymm8_8 ymm14_8;
sub ymm8_9 ymm8_9 ymm14_9;
sub ymm8_a ymm8_a ymm14_a;
sub ymm8_b ymm8_b ymm14_b;
sub ymm8_c ymm8_c ymm14_c;
sub ymm8_d ymm8_d ymm14_d;
sub ymm8_e ymm8_e ymm14_e;
sub ymm8_f ymm8_f ymm14_f;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f3d3 *)
add ymm5_0 ymm5_0 ymm14_0;
add ymm5_1 ymm5_1 ymm14_1;
add ymm5_2 ymm5_2 ymm14_2;
add ymm5_3 ymm5_3 ymm14_3;
add ymm5_4 ymm5_4 ymm14_4;
add ymm5_5 ymm5_5 ymm14_5;
add ymm5_6 ymm5_6 ymm14_6;
add ymm5_7 ymm5_7 ymm14_7;
add ymm5_8 ymm5_8 ymm14_8;
add ymm5_9 ymm5_9 ymm14_9;
add ymm5_a ymm5_a ymm14_a;
add ymm5_b ymm5_b ymm14_b;
add ymm5_c ymm5_c ymm14_c;
add ymm5_d ymm5_d ymm14_d;
add ymm5_e ymm5_e ymm14_e;
add ymm5_f ymm5_f ymm14_f;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f3d8 *)
sub ymm3_0 ymm3_0 ymm15_0;
sub ymm3_1 ymm3_1 ymm15_1;
sub ymm3_2 ymm3_2 ymm15_2;
sub ymm3_3 ymm3_3 ymm15_3;
sub ymm3_4 ymm3_4 ymm15_4;
sub ymm3_5 ymm3_5 ymm15_5;
sub ymm3_6 ymm3_6 ymm15_6;
sub ymm3_7 ymm3_7 ymm15_7;
sub ymm3_8 ymm3_8 ymm15_8;
sub ymm3_9 ymm3_9 ymm15_9;
sub ymm3_a ymm3_a ymm15_a;
sub ymm3_b ymm3_b ymm15_b;
sub ymm3_c ymm3_c ymm15_c;
sub ymm3_d ymm3_d ymm15_d;
sub ymm3_e ymm3_e ymm15_e;
sub ymm3_f ymm3_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f3dd *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 2 1 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm4_0*(x**0) + ymm4_1*(x**1) + ymm4_2*(x**2) + ymm4_3*(x**3) +
 ymm4_4*(x**4) + ymm4_5*(x**5) + ymm4_6*(x**6) + ymm4_7*(x**7) +
 ymm6_0*(x**8) + ymm6_1*(x**9) + ymm6_2*(x**10) + ymm6_3*(x**11) +
 ymm6_4*(x**12) + ymm6_5*(x**13) + ymm6_6*(x**14) + ymm6_7*(x**15) +
 ymm8_0*(x**16) + ymm8_1*(x**17) + ymm8_2*(x**18) + ymm8_3*(x**19) +
 ymm8_4*(x**20) + ymm8_5*(x**21) + ymm8_6*(x**22) + ymm8_7*(x**23) +
 ymm3_0*(x**24) + ymm3_1*(x**25) + ymm3_2*(x**26) + ymm3_3*(x**27) +
 ymm3_4*(x**28) + ymm3_5*(x**29) + ymm3_6*(x**30) + ymm3_7*(x**31))
[3329, x**32 - (1897)],
eqmod (inp_poly**2)
(ymm7_0*(x**0) + ymm7_1*(x**1) + ymm7_2*(x**2) + ymm7_3*(x**3) +
 ymm7_4*(x**4) + ymm7_5*(x**5) + ymm7_6*(x**6) + ymm7_7*(x**7) +
 ymm10_0*(x**8) + ymm10_1*(x**9) + ymm10_2*(x**10) + ymm10_3*(x**11) +
 ymm10_4*(x**12) + ymm10_5*(x**13) + ymm10_6*(x**14) + ymm10_7*(x**15) +
 ymm5_0*(x**16) + ymm5_1*(x**17) + ymm5_2*(x**18) + ymm5_3*(x**19) +
 ymm5_4*(x**20) + ymm5_5*(x**21) + ymm5_6*(x**22) + ymm5_7*(x**23) +
 ymm11_0*(x**24) + ymm11_1*(x**25) + ymm11_2*(x**26) + ymm11_3*(x**27) +
 ymm11_4*(x**28) + ymm11_5*(x**29) + ymm11_6*(x**30) + ymm11_7*(x**31))
[3329, x**32 - (1432)],
eqmod (inp_poly**2)
(ymm4_8*(x**0) + ymm4_9*(x**1) + ymm4_a*(x**2) + ymm4_b*(x**3) +
 ymm4_c*(x**4) + ymm4_d*(x**5) + ymm4_e*(x**6) + ymm4_f*(x**7) +
 ymm6_8*(x**8) + ymm6_9*(x**9) + ymm6_a*(x**10) + ymm6_b*(x**11) +
 ymm6_c*(x**12) + ymm6_d*(x**13) + ymm6_e*(x**14) + ymm6_f*(x**15) +
 ymm8_8*(x**16) + ymm8_9*(x**17) + ymm8_a*(x**18) + ymm8_b*(x**19) +
 ymm8_c*(x**20) + ymm8_d*(x**21) + ymm8_e*(x**22) + ymm8_f*(x**23) +
 ymm3_8*(x**24) + ymm3_9*(x**25) + ymm3_a*(x**26) + ymm3_b*(x**27) +
 ymm3_c*(x**28) + ymm3_d*(x**29) + ymm3_e*(x**30) + ymm3_f*(x**31))
[3329, x**32 - (848)],
eqmod (inp_poly**2)
(ymm7_8*(x**0) + ymm7_9*(x**1) + ymm7_a*(x**2) + ymm7_b*(x**3) +
 ymm7_c*(x**4) + ymm7_d*(x**5) + ymm7_e*(x**6) + ymm7_f*(x**7) +
 ymm10_8*(x**8) + ymm10_9*(x**9) + ymm10_a*(x**10) + ymm10_b*(x**11) +
 ymm10_c*(x**12) + ymm10_d*(x**13) + ymm10_e*(x**14) + ymm10_f*(x**15) +
 ymm5_8*(x**16) + ymm5_9*(x**17) + ymm5_a*(x**18) + ymm5_b*(x**19) +
 ymm5_c*(x**20) + ymm5_d*(x**21) + ymm5_e*(x**22) + ymm5_f*(x**23) +
 ymm11_8*(x**24) + ymm11_9*(x**25) + ymm11_a*(x**26) + ymm11_b*(x**27) +
 ymm11_c*(x**28) + ymm11_d*(x**29) + ymm11_e*(x**30) + ymm11_f*(x**31))
[3329, x**32 - (2481)]]
prove with [ cuts [ 1 ] ] &&
and [
(-13316)@16 <s ymm4_0, ymm4_0 <s (13316)@16,
(-13316)@16 <s ymm4_1, ymm4_1 <s (13316)@16,
(-13316)@16 <s ymm4_2, ymm4_2 <s (13316)@16,
(-13316)@16 <s ymm4_3, ymm4_3 <s (13316)@16,
(-13316)@16 <s ymm4_4, ymm4_4 <s (13316)@16,
(-13316)@16 <s ymm4_5, ymm4_5 <s (13316)@16,
(-13316)@16 <s ymm4_6, ymm4_6 <s (13316)@16,
(-13316)@16 <s ymm4_7, ymm4_7 <s (13316)@16,
(-13316)@16 <s ymm6_0, ymm6_0 <s (13316)@16,
(-13316)@16 <s ymm6_1, ymm6_1 <s (13316)@16,
(-13316)@16 <s ymm6_2, ymm6_2 <s (13316)@16,
(-13316)@16 <s ymm6_3, ymm6_3 <s (13316)@16,
(-13316)@16 <s ymm6_4, ymm6_4 <s (13316)@16,
(-13316)@16 <s ymm6_5, ymm6_5 <s (13316)@16,
(-13316)@16 <s ymm6_6, ymm6_6 <s (13316)@16,
(-13316)@16 <s ymm6_7, ymm6_7 <s (13316)@16,
(-13316)@16 <s ymm8_0, ymm8_0 <s (13316)@16,
(-13316)@16 <s ymm8_1, ymm8_1 <s (13316)@16,
(-13316)@16 <s ymm8_2, ymm8_2 <s (13316)@16,
(-13316)@16 <s ymm8_3, ymm8_3 <s (13316)@16,
(-13316)@16 <s ymm8_4, ymm8_4 <s (13316)@16,
(-13316)@16 <s ymm8_5, ymm8_5 <s (13316)@16,
(-13316)@16 <s ymm8_6, ymm8_6 <s (13316)@16,
(-13316)@16 <s ymm8_7, ymm8_7 <s (13316)@16,
(-13316)@16 <s ymm3_0, ymm3_0 <s (13316)@16,
(-13316)@16 <s ymm3_1, ymm3_1 <s (13316)@16,
(-13316)@16 <s ymm3_2, ymm3_2 <s (13316)@16,
(-13316)@16 <s ymm3_3, ymm3_3 <s (13316)@16,
(-13316)@16 <s ymm3_4, ymm3_4 <s (13316)@16,
(-13316)@16 <s ymm3_5, ymm3_5 <s (13316)@16,
(-13316)@16 <s ymm3_6, ymm3_6 <s (13316)@16,
(-13316)@16 <s ymm3_7, ymm3_7 <s (13316)@16,
(-13316)@16 <s ymm7_0, ymm7_0 <s (13316)@16,
(-13316)@16 <s ymm7_1, ymm7_1 <s (13316)@16,
(-13316)@16 <s ymm7_2, ymm7_2 <s (13316)@16,
(-13316)@16 <s ymm7_3, ymm7_3 <s (13316)@16,
(-13316)@16 <s ymm7_4, ymm7_4 <s (13316)@16,
(-13316)@16 <s ymm7_5, ymm7_5 <s (13316)@16,
(-13316)@16 <s ymm7_6, ymm7_6 <s (13316)@16,
(-13316)@16 <s ymm7_7, ymm7_7 <s (13316)@16,
(-13316)@16 <s ymm10_0, ymm10_0 <s (13316)@16,
(-13316)@16 <s ymm10_1, ymm10_1 <s (13316)@16,
(-13316)@16 <s ymm10_2, ymm10_2 <s (13316)@16,
(-13316)@16 <s ymm10_3, ymm10_3 <s (13316)@16,
(-13316)@16 <s ymm10_4, ymm10_4 <s (13316)@16,
(-13316)@16 <s ymm10_5, ymm10_5 <s (13316)@16,
(-13316)@16 <s ymm10_6, ymm10_6 <s (13316)@16,
(-13316)@16 <s ymm10_7, ymm10_7 <s (13316)@16,
(-13316)@16 <s ymm5_0, ymm5_0 <s (13316)@16,
(-13316)@16 <s ymm5_1, ymm5_1 <s (13316)@16,
(-13316)@16 <s ymm5_2, ymm5_2 <s (13316)@16,
(-13316)@16 <s ymm5_3, ymm5_3 <s (13316)@16,
(-13316)@16 <s ymm5_4, ymm5_4 <s (13316)@16,
(-13316)@16 <s ymm5_5, ymm5_5 <s (13316)@16,
(-13316)@16 <s ymm5_6, ymm5_6 <s (13316)@16,
(-13316)@16 <s ymm5_7, ymm5_7 <s (13316)@16,
(-13316)@16 <s ymm11_0, ymm11_0 <s (13316)@16,
(-13316)@16 <s ymm11_1, ymm11_1 <s (13316)@16,
(-13316)@16 <s ymm11_2, ymm11_2 <s (13316)@16,
(-13316)@16 <s ymm11_3, ymm11_3 <s (13316)@16,
(-13316)@16 <s ymm11_4, ymm11_4 <s (13316)@16,
(-13316)@16 <s ymm11_5, ymm11_5 <s (13316)@16,
(-13316)@16 <s ymm11_6, ymm11_6 <s (13316)@16,
(-13316)@16 <s ymm11_7, ymm11_7 <s (13316)@16,
(-13316)@16 <s ymm4_8, ymm4_8 <s (13316)@16,
(-13316)@16 <s ymm4_9, ymm4_9 <s (13316)@16,
(-13316)@16 <s ymm4_a, ymm4_a <s (13316)@16,
(-13316)@16 <s ymm4_b, ymm4_b <s (13316)@16,
(-13316)@16 <s ymm4_c, ymm4_c <s (13316)@16,
(-13316)@16 <s ymm4_d, ymm4_d <s (13316)@16,
(-13316)@16 <s ymm4_e, ymm4_e <s (13316)@16,
(-13316)@16 <s ymm4_f, ymm4_f <s (13316)@16,
(-13316)@16 <s ymm6_8, ymm6_8 <s (13316)@16,
(-13316)@16 <s ymm6_9, ymm6_9 <s (13316)@16,
(-13316)@16 <s ymm6_a, ymm6_a <s (13316)@16,
(-13316)@16 <s ymm6_b, ymm6_b <s (13316)@16,
(-13316)@16 <s ymm6_c, ymm6_c <s (13316)@16,
(-13316)@16 <s ymm6_d, ymm6_d <s (13316)@16,
(-13316)@16 <s ymm6_e, ymm6_e <s (13316)@16,
(-13316)@16 <s ymm6_f, ymm6_f <s (13316)@16,
(-13316)@16 <s ymm8_8, ymm8_8 <s (13316)@16,
(-13316)@16 <s ymm8_9, ymm8_9 <s (13316)@16,
(-13316)@16 <s ymm8_a, ymm8_a <s (13316)@16,
(-13316)@16 <s ymm8_b, ymm8_b <s (13316)@16,
(-13316)@16 <s ymm8_c, ymm8_c <s (13316)@16,
(-13316)@16 <s ymm8_d, ymm8_d <s (13316)@16,
(-13316)@16 <s ymm8_e, ymm8_e <s (13316)@16,
(-13316)@16 <s ymm8_f, ymm8_f <s (13316)@16,
(-13316)@16 <s ymm3_8, ymm3_8 <s (13316)@16,
(-13316)@16 <s ymm3_9, ymm3_9 <s (13316)@16,
(-13316)@16 <s ymm3_a, ymm3_a <s (13316)@16,
(-13316)@16 <s ymm3_b, ymm3_b <s (13316)@16,
(-13316)@16 <s ymm3_c, ymm3_c <s (13316)@16,
(-13316)@16 <s ymm3_d, ymm3_d <s (13316)@16,
(-13316)@16 <s ymm3_e, ymm3_e <s (13316)@16,
(-13316)@16 <s ymm3_f, ymm3_f <s (13316)@16,
(-13316)@16 <s ymm7_8, ymm7_8 <s (13316)@16,
(-13316)@16 <s ymm7_9, ymm7_9 <s (13316)@16,
(-13316)@16 <s ymm7_a, ymm7_a <s (13316)@16,
(-13316)@16 <s ymm7_b, ymm7_b <s (13316)@16,
(-13316)@16 <s ymm7_c, ymm7_c <s (13316)@16,
(-13316)@16 <s ymm7_d, ymm7_d <s (13316)@16,
(-13316)@16 <s ymm7_e, ymm7_e <s (13316)@16,
(-13316)@16 <s ymm7_f, ymm7_f <s (13316)@16,
(-13316)@16 <s ymm10_8, ymm10_8 <s (13316)@16,
(-13316)@16 <s ymm10_9, ymm10_9 <s (13316)@16,
(-13316)@16 <s ymm10_a, ymm10_a <s (13316)@16,
(-13316)@16 <s ymm10_b, ymm10_b <s (13316)@16,
(-13316)@16 <s ymm10_c, ymm10_c <s (13316)@16,
(-13316)@16 <s ymm10_d, ymm10_d <s (13316)@16,
(-13316)@16 <s ymm10_e, ymm10_e <s (13316)@16,
(-13316)@16 <s ymm10_f, ymm10_f <s (13316)@16,
(-13316)@16 <s ymm5_8, ymm5_8 <s (13316)@16,
(-13316)@16 <s ymm5_9, ymm5_9 <s (13316)@16,
(-13316)@16 <s ymm5_a, ymm5_a <s (13316)@16,
(-13316)@16 <s ymm5_b, ymm5_b <s (13316)@16,
(-13316)@16 <s ymm5_c, ymm5_c <s (13316)@16,
(-13316)@16 <s ymm5_d, ymm5_d <s (13316)@16,
(-13316)@16 <s ymm5_e, ymm5_e <s (13316)@16,
(-13316)@16 <s ymm5_f, ymm5_f <s (13316)@16,
(-13316)@16 <s ymm11_8, ymm11_8 <s (13316)@16,
(-13316)@16 <s ymm11_9, ymm11_9 <s (13316)@16,
(-13316)@16 <s ymm11_a, ymm11_a <s (13316)@16,
(-13316)@16 <s ymm11_b, ymm11_b <s (13316)@16,
(-13316)@16 <s ymm11_c, ymm11_c <s (13316)@16,
(-13316)@16 <s ymm11_d, ymm11_d <s (13316)@16,
(-13316)@16 <s ymm11_e, ymm11_e <s (13316)@16,
(-13316)@16 <s ymm11_f, ymm11_f <s (13316)@16]
prove with [ cuts [ 1 ] ];


(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556f3e2 *)
mov lqdq_0 ymm8_0;
mov lqdq_1 ymm8_1;
mov lqdq_2 ymm8_2;
mov lqdq_3 ymm8_3;
mov lqdq_4 ymm5_0;
mov lqdq_5 ymm5_1;
mov lqdq_6 ymm5_2;
mov lqdq_7 ymm5_3;
mov lqdq_8 ymm8_8;
mov lqdq_9 ymm8_9;
mov lqdq_a ymm8_a;
mov lqdq_b ymm8_b;
mov lqdq_c ymm5_8;
mov lqdq_d ymm5_9;
mov lqdq_e ymm5_a;
mov lqdq_f ymm5_b;
mov ymm9_0 lqdq_0;
mov ymm9_1 lqdq_1;
mov ymm9_2 lqdq_2;
mov ymm9_3 lqdq_3;
mov ymm9_4 lqdq_4;
mov ymm9_5 lqdq_5;
mov ymm9_6 lqdq_6;
mov ymm9_7 lqdq_7;
mov ymm9_8 lqdq_8;
mov ymm9_9 lqdq_9;
mov ymm9_a lqdq_a;
mov ymm9_b lqdq_b;
mov ymm9_c lqdq_c;
mov ymm9_d lqdq_d;
mov ymm9_e lqdq_e;
mov ymm9_f lqdq_f;
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556f3e6 *)
mov hqdq_0 ymm8_4;
mov hqdq_1 ymm8_5;
mov hqdq_2 ymm8_6;
mov hqdq_3 ymm8_7;
mov hqdq_4 ymm5_4;
mov hqdq_5 ymm5_5;
mov hqdq_6 ymm5_6;
mov hqdq_7 ymm5_7;
mov hqdq_8 ymm8_c;
mov hqdq_9 ymm8_d;
mov hqdq_a ymm8_e;
mov hqdq_b ymm8_f;
mov hqdq_c ymm5_c;
mov hqdq_d ymm5_d;
mov hqdq_e ymm5_e;
mov hqdq_f ymm5_f;
mov ymm5_0 hqdq_0;
mov ymm5_1 hqdq_1;
mov ymm5_2 hqdq_2;
mov ymm5_3 hqdq_3;
mov ymm5_4 hqdq_4;
mov ymm5_5 hqdq_5;
mov ymm5_6 hqdq_6;
mov ymm5_7 hqdq_7;
mov ymm5_8 hqdq_8;
mov ymm5_9 hqdq_9;
mov ymm5_a hqdq_a;
mov ymm5_b hqdq_b;
mov ymm5_c hqdq_c;
mov ymm5_d hqdq_d;
mov ymm5_e hqdq_e;
mov ymm5_f hqdq_f;
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556f3ea *)
mov lqdq_0 ymm3_0;
mov lqdq_1 ymm3_1;
mov lqdq_2 ymm3_2;
mov lqdq_3 ymm3_3;
mov lqdq_4 ymm11_0;
mov lqdq_5 ymm11_1;
mov lqdq_6 ymm11_2;
mov lqdq_7 ymm11_3;
mov lqdq_8 ymm3_8;
mov lqdq_9 ymm3_9;
mov lqdq_a ymm3_a;
mov lqdq_b ymm3_b;
mov lqdq_c ymm11_8;
mov lqdq_d ymm11_9;
mov lqdq_e ymm11_a;
mov lqdq_f ymm11_b;
mov ymm8_0 lqdq_0;
mov ymm8_1 lqdq_1;
mov ymm8_2 lqdq_2;
mov ymm8_3 lqdq_3;
mov ymm8_4 lqdq_4;
mov ymm8_5 lqdq_5;
mov ymm8_6 lqdq_6;
mov ymm8_7 lqdq_7;
mov ymm8_8 lqdq_8;
mov ymm8_9 lqdq_9;
mov ymm8_a lqdq_a;
mov ymm8_b lqdq_b;
mov ymm8_c lqdq_c;
mov ymm8_d lqdq_d;
mov ymm8_e lqdq_e;
mov ymm8_f lqdq_f;
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556f3ef *)
mov hqdq_0 ymm3_4;
mov hqdq_1 ymm3_5;
mov hqdq_2 ymm3_6;
mov hqdq_3 ymm3_7;
mov hqdq_4 ymm11_4;
mov hqdq_5 ymm11_5;
mov hqdq_6 ymm11_6;
mov hqdq_7 ymm11_7;
mov hqdq_8 ymm3_c;
mov hqdq_9 ymm3_d;
mov hqdq_a ymm3_e;
mov hqdq_b ymm3_f;
mov hqdq_c ymm11_c;
mov hqdq_d ymm11_d;
mov hqdq_e ymm11_e;
mov hqdq_f ymm11_f;
mov ymm11_0 hqdq_0;
mov ymm11_1 hqdq_1;
mov ymm11_2 hqdq_2;
mov ymm11_3 hqdq_3;
mov ymm11_4 hqdq_4;
mov ymm11_5 hqdq_5;
mov ymm11_6 hqdq_6;
mov ymm11_7 hqdq_7;
mov ymm11_8 hqdq_8;
mov ymm11_9 hqdq_9;
mov ymm11_a hqdq_a;
mov ymm11_b hqdq_b;
mov ymm11_c hqdq_c;
mov ymm11_d hqdq_d;
mov ymm11_e hqdq_e;
mov ymm11_f hqdq_f;
(* vmovdqa 0x3a0(%rsi),%ymm15                      #! EA = L0x555555639980; Value = 0x29c229c229c229c2; PC = 0x55555556f3f4 *)
mov ymm15_0 L0x555555639980;
mov ymm15_1 L0x555555639982;
mov ymm15_2 L0x555555639984;
mov ymm15_3 L0x555555639986;
mov ymm15_4 L0x555555639988;
mov ymm15_5 L0x55555563998a;
mov ymm15_6 L0x55555563998c;
mov ymm15_7 L0x55555563998e;
mov ymm15_8 L0x555555639990;
mov ymm15_9 L0x555555639992;
mov ymm15_a L0x555555639994;
mov ymm15_b L0x555555639996;
mov ymm15_c L0x555555639998;
mov ymm15_d L0x55555563999a;
mov ymm15_e L0x55555563999c;
mov ymm15_f L0x55555563999e;
(* vmovdqa 0x3c0(%rsi),%ymm2                       #! EA = L0x5555556399a0; Value = 0x03c203c203c203c2; PC = 0x55555556f3fc *)
mov ymm2_0 L0x5555556399a0;
mov ymm2_1 L0x5555556399a2;
mov ymm2_2 L0x5555556399a4;
mov ymm2_3 L0x5555556399a6;
mov ymm2_4 L0x5555556399a8;
mov ymm2_5 L0x5555556399aa;
mov ymm2_6 L0x5555556399ac;
mov ymm2_7 L0x5555556399ae;
mov ymm2_8 L0x5555556399b0;
mov ymm2_9 L0x5555556399b2;
mov ymm2_a L0x5555556399b4;
mov ymm2_b L0x5555556399b6;
mov ymm2_c L0x5555556399b8;
mov ymm2_d L0x5555556399ba;
mov ymm2_e L0x5555556399bc;
mov ymm2_f L0x5555556399be;
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556f404 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556f409 *)
smull mulHymm5_0 mulL_0 ymm15_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm15_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm15_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm15_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm15_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm15_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm15_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm15_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm15_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm15_9 ymm5_9;
smull mulHymm5_a mulL_a ymm15_a ymm5_a;
smull mulHymm5_b mulL_b ymm15_b ymm5_b;
smull mulHymm5_c mulL_c ymm15_c ymm5_c;
smull mulHymm5_d mulL_d ymm15_d ymm5_d;
smull mulHymm5_e mulL_e ymm15_e ymm5_e;
smull mulHymm5_f mulL_f ymm15_f ymm5_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556f40e *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f413 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f418 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f41c *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm2_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm2_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm2_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm2_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm2_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm2_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm2_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm2_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm2_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm2_9;
smull mulH_a mulLymm5_a ymm5_a ymm2_a;
smull mulH_b mulLymm5_b ymm5_b ymm2_b;
smull mulH_c mulLymm5_c ymm5_c ymm2_c;
smull mulH_d mulLymm5_d ymm5_d ymm2_d;
smull mulH_e mulLymm5_e ymm5_e ymm2_e;
smull mulH_f mulLymm5_f ymm5_f ymm2_f;
mov ymm5_0 mulH_0;
mov ymm5_1 mulH_1;
mov ymm5_2 mulH_2;
mov ymm5_3 mulH_3;
mov ymm5_4 mulH_4;
mov ymm5_5 mulH_5;
mov ymm5_6 mulH_6;
mov ymm5_7 mulH_7;
mov ymm5_8 mulH_8;
mov ymm5_9 mulH_9;
mov ymm5_a mulH_a;
mov ymm5_b mulH_b;
mov ymm5_c mulH_c;
mov ymm5_d mulH_d;
mov ymm5_e mulH_e;
mov ymm5_f mulH_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f420 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f424 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556f428 *)
mov lqdq_0 ymm4_0;
mov lqdq_1 ymm4_1;
mov lqdq_2 ymm4_2;
mov lqdq_3 ymm4_3;
mov lqdq_4 ymm7_0;
mov lqdq_5 ymm7_1;
mov lqdq_6 ymm7_2;
mov lqdq_7 ymm7_3;
mov lqdq_8 ymm4_8;
mov lqdq_9 ymm4_9;
mov lqdq_a ymm4_a;
mov lqdq_b ymm4_b;
mov lqdq_c ymm7_8;
mov lqdq_d ymm7_9;
mov lqdq_e ymm7_a;
mov lqdq_f ymm7_b;
mov ymm3_0 lqdq_0;
mov ymm3_1 lqdq_1;
mov ymm3_2 lqdq_2;
mov ymm3_3 lqdq_3;
mov ymm3_4 lqdq_4;
mov ymm3_5 lqdq_5;
mov ymm3_6 lqdq_6;
mov ymm3_7 lqdq_7;
mov ymm3_8 lqdq_8;
mov ymm3_9 lqdq_9;
mov ymm3_a lqdq_a;
mov ymm3_b lqdq_b;
mov ymm3_c lqdq_c;
mov ymm3_d lqdq_d;
mov ymm3_e lqdq_e;
mov ymm3_f lqdq_f;
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556f42c *)
mov hqdq_0 ymm4_4;
mov hqdq_1 ymm4_5;
mov hqdq_2 ymm4_6;
mov hqdq_3 ymm4_7;
mov hqdq_4 ymm7_4;
mov hqdq_5 ymm7_5;
mov hqdq_6 ymm7_6;
mov hqdq_7 ymm7_7;
mov hqdq_8 ymm4_c;
mov hqdq_9 ymm4_d;
mov hqdq_a ymm4_e;
mov hqdq_b ymm4_f;
mov hqdq_c ymm7_c;
mov hqdq_d ymm7_d;
mov hqdq_e ymm7_e;
mov hqdq_f ymm7_f;
mov ymm7_0 hqdq_0;
mov ymm7_1 hqdq_1;
mov ymm7_2 hqdq_2;
mov ymm7_3 hqdq_3;
mov ymm7_4 hqdq_4;
mov ymm7_5 hqdq_5;
mov ymm7_6 hqdq_6;
mov ymm7_7 hqdq_7;
mov ymm7_8 hqdq_8;
mov ymm7_9 hqdq_9;
mov ymm7_a hqdq_a;
mov ymm7_b hqdq_b;
mov ymm7_c hqdq_c;
mov ymm7_d hqdq_d;
mov ymm7_e hqdq_e;
mov ymm7_f hqdq_f;
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556f430 *)
mov lqdq_0 ymm6_0;
mov lqdq_1 ymm6_1;
mov lqdq_2 ymm6_2;
mov lqdq_3 ymm6_3;
mov lqdq_4 ymm10_0;
mov lqdq_5 ymm10_1;
mov lqdq_6 ymm10_2;
mov lqdq_7 ymm10_3;
mov lqdq_8 ymm6_8;
mov lqdq_9 ymm6_9;
mov lqdq_a ymm6_a;
mov lqdq_b ymm6_b;
mov lqdq_c ymm10_8;
mov lqdq_d ymm10_9;
mov lqdq_e ymm10_a;
mov lqdq_f ymm10_b;
mov ymm4_0 lqdq_0;
mov ymm4_1 lqdq_1;
mov ymm4_2 lqdq_2;
mov ymm4_3 lqdq_3;
mov ymm4_4 lqdq_4;
mov ymm4_5 lqdq_5;
mov ymm4_6 lqdq_6;
mov ymm4_7 lqdq_7;
mov ymm4_8 lqdq_8;
mov ymm4_9 lqdq_9;
mov ymm4_a lqdq_a;
mov ymm4_b lqdq_b;
mov ymm4_c lqdq_c;
mov ymm4_d lqdq_d;
mov ymm4_e lqdq_e;
mov ymm4_f lqdq_f;
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556f435 *)
mov hqdq_0 ymm6_4;
mov hqdq_1 ymm6_5;
mov hqdq_2 ymm6_6;
mov hqdq_3 ymm6_7;
mov hqdq_4 ymm10_4;
mov hqdq_5 ymm10_5;
mov hqdq_6 ymm10_6;
mov hqdq_7 ymm10_7;
mov hqdq_8 ymm6_c;
mov hqdq_9 ymm6_d;
mov hqdq_a ymm6_e;
mov hqdq_b ymm6_f;
mov hqdq_c ymm10_c;
mov hqdq_d ymm10_d;
mov hqdq_e ymm10_e;
mov hqdq_f ymm10_f;
mov ymm10_0 hqdq_0;
mov ymm10_1 hqdq_1;
mov ymm10_2 hqdq_2;
mov ymm10_3 hqdq_3;
mov ymm10_4 hqdq_4;
mov ymm10_5 hqdq_5;
mov ymm10_6 hqdq_6;
mov ymm10_7 hqdq_7;
mov ymm10_8 hqdq_8;
mov ymm10_9 hqdq_9;
mov ymm10_a hqdq_a;
mov ymm10_b hqdq_b;
mov ymm10_c hqdq_c;
mov ymm10_d hqdq_d;
mov ymm10_e hqdq_e;
mov ymm10_f hqdq_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f43a *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f43e *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm5_0;
assume red_0 = mulLymm5_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm5_1;
assume red_1 = mulLymm5_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm5_2;
assume red_2 = mulLymm5_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm5_3;
assume red_3 = mulLymm5_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm5_4;
assume red_4 = mulLymm5_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm5_5;
assume red_5 = mulLymm5_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm5_6;
assume red_6 = mulLymm5_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm5_7;
assume red_7 = mulLymm5_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm5_8;
assume red_8 = mulLymm5_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm5_9;
assume red_9 = mulLymm5_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm5_a;
assume red_a = mulLymm5_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm5_b;
assume red_b = mulLymm5_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm5_c;
assume red_c = mulLymm5_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm5_d;
assume red_d = mulLymm5_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm5_e;
assume red_e = mulLymm5_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm5_f;
assume red_f = mulLymm5_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f442 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f446 *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556f44a *)
add ymm6_0 ymm3_0 ymm9_0;
add ymm6_1 ymm3_1 ymm9_1;
add ymm6_2 ymm3_2 ymm9_2;
add ymm6_3 ymm3_3 ymm9_3;
add ymm6_4 ymm3_4 ymm9_4;
add ymm6_5 ymm3_5 ymm9_5;
add ymm6_6 ymm3_6 ymm9_6;
add ymm6_7 ymm3_7 ymm9_7;
add ymm6_8 ymm3_8 ymm9_8;
add ymm6_9 ymm3_9 ymm9_9;
add ymm6_a ymm3_a ymm9_a;
add ymm6_b ymm3_b ymm9_b;
add ymm6_c ymm3_c ymm9_c;
add ymm6_d ymm3_d ymm9_d;
add ymm6_e ymm3_e ymm9_e;
add ymm6_f ymm3_f ymm9_f;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f44f *)
sub ymm9_0 ymm3_0 ymm9_0;
sub ymm9_1 ymm3_1 ymm9_1;
sub ymm9_2 ymm3_2 ymm9_2;
sub ymm9_3 ymm3_3 ymm9_3;
sub ymm9_4 ymm3_4 ymm9_4;
sub ymm9_5 ymm3_5 ymm9_5;
sub ymm9_6 ymm3_6 ymm9_6;
sub ymm9_7 ymm3_7 ymm9_7;
sub ymm9_8 ymm3_8 ymm9_8;
sub ymm9_9 ymm3_9 ymm9_9;
sub ymm9_a ymm3_a ymm9_a;
sub ymm9_b ymm3_b ymm9_b;
sub ymm9_c ymm3_c ymm9_c;
sub ymm9_d ymm3_d ymm9_d;
sub ymm9_e ymm3_e ymm9_e;
sub ymm9_f ymm3_f ymm9_f;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556f454 *)
add ymm3_0 ymm7_0 ymm5_0;
add ymm3_1 ymm7_1 ymm5_1;
add ymm3_2 ymm7_2 ymm5_2;
add ymm3_3 ymm7_3 ymm5_3;
add ymm3_4 ymm7_4 ymm5_4;
add ymm3_5 ymm7_5 ymm5_5;
add ymm3_6 ymm7_6 ymm5_6;
add ymm3_7 ymm7_7 ymm5_7;
add ymm3_8 ymm7_8 ymm5_8;
add ymm3_9 ymm7_9 ymm5_9;
add ymm3_a ymm7_a ymm5_a;
add ymm3_b ymm7_b ymm5_b;
add ymm3_c ymm7_c ymm5_c;
add ymm3_d ymm7_d ymm5_d;
add ymm3_e ymm7_e ymm5_e;
add ymm3_f ymm7_f ymm5_f;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556f458 *)
sub ymm5_0 ymm7_0 ymm5_0;
sub ymm5_1 ymm7_1 ymm5_1;
sub ymm5_2 ymm7_2 ymm5_2;
sub ymm5_3 ymm7_3 ymm5_3;
sub ymm5_4 ymm7_4 ymm5_4;
sub ymm5_5 ymm7_5 ymm5_5;
sub ymm5_6 ymm7_6 ymm5_6;
sub ymm5_7 ymm7_7 ymm5_7;
sub ymm5_8 ymm7_8 ymm5_8;
sub ymm5_9 ymm7_9 ymm5_9;
sub ymm5_a ymm7_a ymm5_a;
sub ymm5_b ymm7_b ymm5_b;
sub ymm5_c ymm7_c ymm5_c;
sub ymm5_d ymm7_d ymm5_d;
sub ymm5_e ymm7_e ymm5_e;
sub ymm5_f ymm7_f ymm5_f;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556f45c *)
add ymm7_0 ymm4_0 ymm8_0;
add ymm7_1 ymm4_1 ymm8_1;
add ymm7_2 ymm4_2 ymm8_2;
add ymm7_3 ymm4_3 ymm8_3;
add ymm7_4 ymm4_4 ymm8_4;
add ymm7_5 ymm4_5 ymm8_5;
add ymm7_6 ymm4_6 ymm8_6;
add ymm7_7 ymm4_7 ymm8_7;
add ymm7_8 ymm4_8 ymm8_8;
add ymm7_9 ymm4_9 ymm8_9;
add ymm7_a ymm4_a ymm8_a;
add ymm7_b ymm4_b ymm8_b;
add ymm7_c ymm4_c ymm8_c;
add ymm7_d ymm4_d ymm8_d;
add ymm7_e ymm4_e ymm8_e;
add ymm7_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556f461 *)
sub ymm8_0 ymm4_0 ymm8_0;
sub ymm8_1 ymm4_1 ymm8_1;
sub ymm8_2 ymm4_2 ymm8_2;
sub ymm8_3 ymm4_3 ymm8_3;
sub ymm8_4 ymm4_4 ymm8_4;
sub ymm8_5 ymm4_5 ymm8_5;
sub ymm8_6 ymm4_6 ymm8_6;
sub ymm8_7 ymm4_7 ymm8_7;
sub ymm8_8 ymm4_8 ymm8_8;
sub ymm8_9 ymm4_9 ymm8_9;
sub ymm8_a ymm4_a ymm8_a;
sub ymm8_b ymm4_b ymm8_b;
sub ymm8_c ymm4_c ymm8_c;
sub ymm8_d ymm4_d ymm8_d;
sub ymm8_e ymm4_e ymm8_e;
sub ymm8_f ymm4_f ymm8_f;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556f466 *)
add ymm4_0 ymm10_0 ymm11_0;
add ymm4_1 ymm10_1 ymm11_1;
add ymm4_2 ymm10_2 ymm11_2;
add ymm4_3 ymm10_3 ymm11_3;
add ymm4_4 ymm10_4 ymm11_4;
add ymm4_5 ymm10_5 ymm11_5;
add ymm4_6 ymm10_6 ymm11_6;
add ymm4_7 ymm10_7 ymm11_7;
add ymm4_8 ymm10_8 ymm11_8;
add ymm4_9 ymm10_9 ymm11_9;
add ymm4_a ymm10_a ymm11_a;
add ymm4_b ymm10_b ymm11_b;
add ymm4_c ymm10_c ymm11_c;
add ymm4_d ymm10_d ymm11_d;
add ymm4_e ymm10_e ymm11_e;
add ymm4_f ymm10_f ymm11_f;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556f46b *)
sub ymm11_0 ymm10_0 ymm11_0;
sub ymm11_1 ymm10_1 ymm11_1;
sub ymm11_2 ymm10_2 ymm11_2;
sub ymm11_3 ymm10_3 ymm11_3;
sub ymm11_4 ymm10_4 ymm11_4;
sub ymm11_5 ymm10_5 ymm11_5;
sub ymm11_6 ymm10_6 ymm11_6;
sub ymm11_7 ymm10_7 ymm11_7;
sub ymm11_8 ymm10_8 ymm11_8;
sub ymm11_9 ymm10_9 ymm11_9;
sub ymm11_a ymm10_a ymm11_a;
sub ymm11_b ymm10_b ymm11_b;
sub ymm11_c ymm10_c ymm11_c;
sub ymm11_d ymm10_d ymm11_d;
sub ymm11_e ymm10_e ymm11_e;
sub ymm11_f ymm10_f ymm11_f;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556f470 *)
sub ymm6_0 ymm6_0 ymm12_0;
sub ymm6_1 ymm6_1 ymm12_1;
sub ymm6_2 ymm6_2 ymm12_2;
sub ymm6_3 ymm6_3 ymm12_3;
sub ymm6_4 ymm6_4 ymm12_4;
sub ymm6_5 ymm6_5 ymm12_5;
sub ymm6_6 ymm6_6 ymm12_6;
sub ymm6_7 ymm6_7 ymm12_7;
sub ymm6_8 ymm6_8 ymm12_8;
sub ymm6_9 ymm6_9 ymm12_9;
sub ymm6_a ymm6_a ymm12_a;
sub ymm6_b ymm6_b ymm12_b;
sub ymm6_c ymm6_c ymm12_c;
sub ymm6_d ymm6_d ymm12_d;
sub ymm6_e ymm6_e ymm12_e;
sub ymm6_f ymm6_f ymm12_f;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556f475 *)
add ymm9_0 ymm9_0 ymm12_0;
add ymm9_1 ymm9_1 ymm12_1;
add ymm9_2 ymm9_2 ymm12_2;
add ymm9_3 ymm9_3 ymm12_3;
add ymm9_4 ymm9_4 ymm12_4;
add ymm9_5 ymm9_5 ymm12_5;
add ymm9_6 ymm9_6 ymm12_6;
add ymm9_7 ymm9_7 ymm12_7;
add ymm9_8 ymm9_8 ymm12_8;
add ymm9_9 ymm9_9 ymm12_9;
add ymm9_a ymm9_a ymm12_a;
add ymm9_b ymm9_b ymm12_b;
add ymm9_c ymm9_c ymm12_c;
add ymm9_d ymm9_d ymm12_d;
add ymm9_e ymm9_e ymm12_e;
add ymm9_f ymm9_f ymm12_f;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f47a *)
sub ymm3_0 ymm3_0 ymm13_0;
sub ymm3_1 ymm3_1 ymm13_1;
sub ymm3_2 ymm3_2 ymm13_2;
sub ymm3_3 ymm3_3 ymm13_3;
sub ymm3_4 ymm3_4 ymm13_4;
sub ymm3_5 ymm3_5 ymm13_5;
sub ymm3_6 ymm3_6 ymm13_6;
sub ymm3_7 ymm3_7 ymm13_7;
sub ymm3_8 ymm3_8 ymm13_8;
sub ymm3_9 ymm3_9 ymm13_9;
sub ymm3_a ymm3_a ymm13_a;
sub ymm3_b ymm3_b ymm13_b;
sub ymm3_c ymm3_c ymm13_c;
sub ymm3_d ymm3_d ymm13_d;
sub ymm3_e ymm3_e ymm13_e;
sub ymm3_f ymm3_f ymm13_f;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556f47f *)
add ymm5_0 ymm5_0 ymm13_0;
add ymm5_1 ymm5_1 ymm13_1;
add ymm5_2 ymm5_2 ymm13_2;
add ymm5_3 ymm5_3 ymm13_3;
add ymm5_4 ymm5_4 ymm13_4;
add ymm5_5 ymm5_5 ymm13_5;
add ymm5_6 ymm5_6 ymm13_6;
add ymm5_7 ymm5_7 ymm13_7;
add ymm5_8 ymm5_8 ymm13_8;
add ymm5_9 ymm5_9 ymm13_9;
add ymm5_a ymm5_a ymm13_a;
add ymm5_b ymm5_b ymm13_b;
add ymm5_c ymm5_c ymm13_c;
add ymm5_d ymm5_d ymm13_d;
add ymm5_e ymm5_e ymm13_e;
add ymm5_f ymm5_f ymm13_f;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f484 *)
sub ymm7_0 ymm7_0 ymm14_0;
sub ymm7_1 ymm7_1 ymm14_1;
sub ymm7_2 ymm7_2 ymm14_2;
sub ymm7_3 ymm7_3 ymm14_3;
sub ymm7_4 ymm7_4 ymm14_4;
sub ymm7_5 ymm7_5 ymm14_5;
sub ymm7_6 ymm7_6 ymm14_6;
sub ymm7_7 ymm7_7 ymm14_7;
sub ymm7_8 ymm7_8 ymm14_8;
sub ymm7_9 ymm7_9 ymm14_9;
sub ymm7_a ymm7_a ymm14_a;
sub ymm7_b ymm7_b ymm14_b;
sub ymm7_c ymm7_c ymm14_c;
sub ymm7_d ymm7_d ymm14_d;
sub ymm7_e ymm7_e ymm14_e;
sub ymm7_f ymm7_f ymm14_f;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f489 *)
add ymm8_0 ymm8_0 ymm14_0;
add ymm8_1 ymm8_1 ymm14_1;
add ymm8_2 ymm8_2 ymm14_2;
add ymm8_3 ymm8_3 ymm14_3;
add ymm8_4 ymm8_4 ymm14_4;
add ymm8_5 ymm8_5 ymm14_5;
add ymm8_6 ymm8_6 ymm14_6;
add ymm8_7 ymm8_7 ymm14_7;
add ymm8_8 ymm8_8 ymm14_8;
add ymm8_9 ymm8_9 ymm14_9;
add ymm8_a ymm8_a ymm14_a;
add ymm8_b ymm8_b ymm14_b;
add ymm8_c ymm8_c ymm14_c;
add ymm8_d ymm8_d ymm14_d;
add ymm8_e ymm8_e ymm14_e;
add ymm8_f ymm8_f ymm14_f;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556f48e *)
sub ymm4_0 ymm4_0 ymm15_0;
sub ymm4_1 ymm4_1 ymm15_1;
sub ymm4_2 ymm4_2 ymm15_2;
sub ymm4_3 ymm4_3 ymm15_3;
sub ymm4_4 ymm4_4 ymm15_4;
sub ymm4_5 ymm4_5 ymm15_5;
sub ymm4_6 ymm4_6 ymm15_6;
sub ymm4_7 ymm4_7 ymm15_7;
sub ymm4_8 ymm4_8 ymm15_8;
sub ymm4_9 ymm4_9 ymm15_9;
sub ymm4_a ymm4_a ymm15_a;
sub ymm4_b ymm4_b ymm15_b;
sub ymm4_c ymm4_c ymm15_c;
sub ymm4_d ymm4_d ymm15_d;
sub ymm4_e ymm4_e ymm15_e;
sub ymm4_f ymm4_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f493 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 3 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm6_0*(x**0) + ymm6_1*(x**1) + ymm6_2*(x**2) + ymm6_3*(x**3) +
 ymm3_0*(x**4) + ymm3_1*(x**5) + ymm3_2*(x**6) + ymm3_3*(x**7) +
 ymm7_0*(x**8) + ymm7_1*(x**9) + ymm7_2*(x**10) + ymm7_3*(x**11) +
 ymm4_0*(x**12) + ymm4_1*(x**13) + ymm4_2*(x**14) + ymm4_3*(x**15))
[3329, x**16 - (2786)],
eqmod (inp_poly**2)
(ymm9_0*(x**0) + ymm9_1*(x**1) + ymm9_2*(x**2) + ymm9_3*(x**3) +
 ymm5_0*(x**4) + ymm5_1*(x**5) + ymm5_2*(x**6) + ymm5_3*(x**7) +
 ymm8_0*(x**8) + ymm8_1*(x**9) + ymm8_2*(x**10) + ymm8_3*(x**11) +
 ymm11_0*(x**12) + ymm11_1*(x**13) + ymm11_2*(x**14) + ymm11_3*(x**15))
[3329, x**16 - (543)],
eqmod (inp_poly**2)
(ymm6_4*(x**0) + ymm6_5*(x**1) + ymm6_6*(x**2) + ymm6_7*(x**3) +
 ymm3_4*(x**4) + ymm3_5*(x**5) + ymm3_6*(x**6) + ymm3_7*(x**7) +
 ymm7_4*(x**8) + ymm7_5*(x**9) + ymm7_6*(x**10) + ymm7_7*(x**11) +
 ymm4_4*(x**12) + ymm4_5*(x**13) + ymm4_6*(x**14) + ymm4_7*(x**15))
[3329, x**16 - (3260)],
eqmod (inp_poly**2)
(ymm9_4*(x**0) + ymm9_5*(x**1) + ymm9_6*(x**2) + ymm9_7*(x**3) +
 ymm5_4*(x**4) + ymm5_5*(x**5) + ymm5_6*(x**6) + ymm5_7*(x**7) +
 ymm8_4*(x**8) + ymm8_5*(x**9) + ymm8_6*(x**10) + ymm8_7*(x**11) +
 ymm11_4*(x**12) + ymm11_5*(x**13) + ymm11_6*(x**14) + ymm11_7*(x**15))
[3329, x**16 - (69)],
eqmod (inp_poly**2)
(ymm6_8*(x**0) + ymm6_9*(x**1) + ymm6_a*(x**2) + ymm6_b*(x**3) +
 ymm3_8*(x**4) + ymm3_9*(x**5) + ymm3_a*(x**6) + ymm3_b*(x**7) +
 ymm7_8*(x**8) + ymm7_9*(x**9) + ymm7_a*(x**10) + ymm7_b*(x**11) +
 ymm4_8*(x**12) + ymm4_9*(x**13) + ymm4_a*(x**14) + ymm4_b*(x**15))
[3329, x**16 - (569)],
eqmod (inp_poly**2)
(ymm9_8*(x**0) + ymm9_9*(x**1) + ymm9_a*(x**2) + ymm9_b*(x**3) +
 ymm5_8*(x**4) + ymm5_9*(x**5) + ymm5_a*(x**6) + ymm5_b*(x**7) +
 ymm8_8*(x**8) + ymm8_9*(x**9) + ymm8_a*(x**10) + ymm8_b*(x**11) +
 ymm11_8*(x**12) + ymm11_9*(x**13) + ymm11_a*(x**14) + ymm11_b*(x**15))
[3329, x**16 - (2760)],
eqmod (inp_poly**2)
(ymm6_c*(x**0) + ymm6_d*(x**1) + ymm6_e*(x**2) + ymm6_f*(x**3) +
 ymm3_c*(x**4) + ymm3_d*(x**5) + ymm3_e*(x**6) + ymm3_f*(x**7) +
 ymm7_c*(x**8) + ymm7_d*(x**9) + ymm7_e*(x**10) + ymm7_f*(x**11) +
 ymm4_c*(x**12) + ymm4_d*(x**13) + ymm4_e*(x**14) + ymm4_f*(x**15))
[3329, x**16 - (1746)],
eqmod (inp_poly**2)
(ymm9_c*(x**0) + ymm9_d*(x**1) + ymm9_e*(x**2) + ymm9_f*(x**3) +
 ymm5_c*(x**4) + ymm5_d*(x**5) + ymm5_e*(x**6) + ymm5_f*(x**7) +
 ymm8_c*(x**8) + ymm8_d*(x**9) + ymm8_e*(x**10) + ymm8_f*(x**11) +
 ymm11_c*(x**12) + ymm11_d*(x**13) + ymm11_e*(x**14) + ymm11_f*(x**15))
[3329, x**16 - (1583)]]
prove with [ cuts [ 2 ] ] &&
and [
(-16645)@16 <s ymm6_0, ymm6_0 <s (16645)@16,
(-16645)@16 <s ymm6_1, ymm6_1 <s (16645)@16,
(-16645)@16 <s ymm6_2, ymm6_2 <s (16645)@16,
(-16645)@16 <s ymm6_3, ymm6_3 <s (16645)@16,
(-16645)@16 <s ymm3_0, ymm3_0 <s (16645)@16,
(-16645)@16 <s ymm3_1, ymm3_1 <s (16645)@16,
(-16645)@16 <s ymm3_2, ymm3_2 <s (16645)@16,
(-16645)@16 <s ymm3_3, ymm3_3 <s (16645)@16,
(-16645)@16 <s ymm7_0, ymm7_0 <s (16645)@16,
(-16645)@16 <s ymm7_1, ymm7_1 <s (16645)@16,
(-16645)@16 <s ymm7_2, ymm7_2 <s (16645)@16,
(-16645)@16 <s ymm7_3, ymm7_3 <s (16645)@16,
(-16645)@16 <s ymm4_0, ymm4_0 <s (16645)@16,
(-16645)@16 <s ymm4_1, ymm4_1 <s (16645)@16,
(-16645)@16 <s ymm4_2, ymm4_2 <s (16645)@16,
(-16645)@16 <s ymm4_3, ymm4_3 <s (16645)@16,
(-16645)@16 <s ymm9_0, ymm9_0 <s (16645)@16,
(-16645)@16 <s ymm9_1, ymm9_1 <s (16645)@16,
(-16645)@16 <s ymm9_2, ymm9_2 <s (16645)@16,
(-16645)@16 <s ymm9_3, ymm9_3 <s (16645)@16,
(-16645)@16 <s ymm5_0, ymm5_0 <s (16645)@16,
(-16645)@16 <s ymm5_1, ymm5_1 <s (16645)@16,
(-16645)@16 <s ymm5_2, ymm5_2 <s (16645)@16,
(-16645)@16 <s ymm5_3, ymm5_3 <s (16645)@16,
(-16645)@16 <s ymm8_0, ymm8_0 <s (16645)@16,
(-16645)@16 <s ymm8_1, ymm8_1 <s (16645)@16,
(-16645)@16 <s ymm8_2, ymm8_2 <s (16645)@16,
(-16645)@16 <s ymm8_3, ymm8_3 <s (16645)@16,
(-16645)@16 <s ymm11_0, ymm11_0 <s (16645)@16,
(-16645)@16 <s ymm11_1, ymm11_1 <s (16645)@16,
(-16645)@16 <s ymm11_2, ymm11_2 <s (16645)@16,
(-16645)@16 <s ymm11_3, ymm11_3 <s (16645)@16,
(-16645)@16 <s ymm6_4, ymm6_4 <s (16645)@16,
(-16645)@16 <s ymm6_5, ymm6_5 <s (16645)@16,
(-16645)@16 <s ymm6_6, ymm6_6 <s (16645)@16,
(-16645)@16 <s ymm6_7, ymm6_7 <s (16645)@16,
(-16645)@16 <s ymm3_4, ymm3_4 <s (16645)@16,
(-16645)@16 <s ymm3_5, ymm3_5 <s (16645)@16,
(-16645)@16 <s ymm3_6, ymm3_6 <s (16645)@16,
(-16645)@16 <s ymm3_7, ymm3_7 <s (16645)@16,
(-16645)@16 <s ymm7_4, ymm7_4 <s (16645)@16,
(-16645)@16 <s ymm7_5, ymm7_5 <s (16645)@16,
(-16645)@16 <s ymm7_6, ymm7_6 <s (16645)@16,
(-16645)@16 <s ymm7_7, ymm7_7 <s (16645)@16,
(-16645)@16 <s ymm4_4, ymm4_4 <s (16645)@16,
(-16645)@16 <s ymm4_5, ymm4_5 <s (16645)@16,
(-16645)@16 <s ymm4_6, ymm4_6 <s (16645)@16,
(-16645)@16 <s ymm4_7, ymm4_7 <s (16645)@16,
(-16645)@16 <s ymm9_4, ymm9_4 <s (16645)@16,
(-16645)@16 <s ymm9_5, ymm9_5 <s (16645)@16,
(-16645)@16 <s ymm9_6, ymm9_6 <s (16645)@16,
(-16645)@16 <s ymm9_7, ymm9_7 <s (16645)@16,
(-16645)@16 <s ymm5_4, ymm5_4 <s (16645)@16,
(-16645)@16 <s ymm5_5, ymm5_5 <s (16645)@16,
(-16645)@16 <s ymm5_6, ymm5_6 <s (16645)@16,
(-16645)@16 <s ymm5_7, ymm5_7 <s (16645)@16,
(-16645)@16 <s ymm8_4, ymm8_4 <s (16645)@16,
(-16645)@16 <s ymm8_5, ymm8_5 <s (16645)@16,
(-16645)@16 <s ymm8_6, ymm8_6 <s (16645)@16,
(-16645)@16 <s ymm8_7, ymm8_7 <s (16645)@16,
(-16645)@16 <s ymm11_4, ymm11_4 <s (16645)@16,
(-16645)@16 <s ymm11_5, ymm11_5 <s (16645)@16,
(-16645)@16 <s ymm11_6, ymm11_6 <s (16645)@16,
(-16645)@16 <s ymm11_7, ymm11_7 <s (16645)@16,
(-16645)@16 <s ymm6_8, ymm6_8 <s (16645)@16,
(-16645)@16 <s ymm6_9, ymm6_9 <s (16645)@16,
(-16645)@16 <s ymm6_a, ymm6_a <s (16645)@16,
(-16645)@16 <s ymm6_b, ymm6_b <s (16645)@16,
(-16645)@16 <s ymm3_8, ymm3_8 <s (16645)@16,
(-16645)@16 <s ymm3_9, ymm3_9 <s (16645)@16,
(-16645)@16 <s ymm3_a, ymm3_a <s (16645)@16,
(-16645)@16 <s ymm3_b, ymm3_b <s (16645)@16,
(-16645)@16 <s ymm7_8, ymm7_8 <s (16645)@16,
(-16645)@16 <s ymm7_9, ymm7_9 <s (16645)@16,
(-16645)@16 <s ymm7_a, ymm7_a <s (16645)@16,
(-16645)@16 <s ymm7_b, ymm7_b <s (16645)@16,
(-16645)@16 <s ymm4_8, ymm4_8 <s (16645)@16,
(-16645)@16 <s ymm4_9, ymm4_9 <s (16645)@16,
(-16645)@16 <s ymm4_a, ymm4_a <s (16645)@16,
(-16645)@16 <s ymm4_b, ymm4_b <s (16645)@16,
(-16645)@16 <s ymm9_8, ymm9_8 <s (16645)@16,
(-16645)@16 <s ymm9_9, ymm9_9 <s (16645)@16,
(-16645)@16 <s ymm9_a, ymm9_a <s (16645)@16,
(-16645)@16 <s ymm9_b, ymm9_b <s (16645)@16,
(-16645)@16 <s ymm5_8, ymm5_8 <s (16645)@16,
(-16645)@16 <s ymm5_9, ymm5_9 <s (16645)@16,
(-16645)@16 <s ymm5_a, ymm5_a <s (16645)@16,
(-16645)@16 <s ymm5_b, ymm5_b <s (16645)@16,
(-16645)@16 <s ymm8_8, ymm8_8 <s (16645)@16,
(-16645)@16 <s ymm8_9, ymm8_9 <s (16645)@16,
(-16645)@16 <s ymm8_a, ymm8_a <s (16645)@16,
(-16645)@16 <s ymm8_b, ymm8_b <s (16645)@16,
(-16645)@16 <s ymm11_8, ymm11_8 <s (16645)@16,
(-16645)@16 <s ymm11_9, ymm11_9 <s (16645)@16,
(-16645)@16 <s ymm11_a, ymm11_a <s (16645)@16,
(-16645)@16 <s ymm11_b, ymm11_b <s (16645)@16,
(-16645)@16 <s ymm6_c, ymm6_c <s (16645)@16,
(-16645)@16 <s ymm6_d, ymm6_d <s (16645)@16,
(-16645)@16 <s ymm6_e, ymm6_e <s (16645)@16,
(-16645)@16 <s ymm6_f, ymm6_f <s (16645)@16,
(-16645)@16 <s ymm3_c, ymm3_c <s (16645)@16,
(-16645)@16 <s ymm3_d, ymm3_d <s (16645)@16,
(-16645)@16 <s ymm3_e, ymm3_e <s (16645)@16,
(-16645)@16 <s ymm3_f, ymm3_f <s (16645)@16,
(-16645)@16 <s ymm7_c, ymm7_c <s (16645)@16,
(-16645)@16 <s ymm7_d, ymm7_d <s (16645)@16,
(-16645)@16 <s ymm7_e, ymm7_e <s (16645)@16,
(-16645)@16 <s ymm7_f, ymm7_f <s (16645)@16,
(-16645)@16 <s ymm4_c, ymm4_c <s (16645)@16,
(-16645)@16 <s ymm4_d, ymm4_d <s (16645)@16,
(-16645)@16 <s ymm4_e, ymm4_e <s (16645)@16,
(-16645)@16 <s ymm4_f, ymm4_f <s (16645)@16,
(-16645)@16 <s ymm9_c, ymm9_c <s (16645)@16,
(-16645)@16 <s ymm9_d, ymm9_d <s (16645)@16,
(-16645)@16 <s ymm9_e, ymm9_e <s (16645)@16,
(-16645)@16 <s ymm9_f, ymm9_f <s (16645)@16,
(-16645)@16 <s ymm5_c, ymm5_c <s (16645)@16,
(-16645)@16 <s ymm5_d, ymm5_d <s (16645)@16,
(-16645)@16 <s ymm5_e, ymm5_e <s (16645)@16,
(-16645)@16 <s ymm5_f, ymm5_f <s (16645)@16,
(-16645)@16 <s ymm8_c, ymm8_c <s (16645)@16,
(-16645)@16 <s ymm8_d, ymm8_d <s (16645)@16,
(-16645)@16 <s ymm8_e, ymm8_e <s (16645)@16,
(-16645)@16 <s ymm8_f, ymm8_f <s (16645)@16,
(-16645)@16 <s ymm11_c, ymm11_c <s (16645)@16,
(-16645)@16 <s ymm11_d, ymm11_d <s (16645)@16,
(-16645)@16 <s ymm11_e, ymm11_e <s (16645)@16,
(-16645)@16 <s ymm11_f, ymm11_f <s (16645)@16]
prove with [ cuts [ 2 ] ];


(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556f498 *)
mov ymm10_0 ymm8_0;
mov ymm10_1 ymm8_1;
mov ymm10_2 ymm8_0;
mov ymm10_3 ymm8_1;
mov ymm10_4 ymm8_4;
mov ymm10_5 ymm8_5;
mov ymm10_6 ymm8_4;
mov ymm10_7 ymm8_5;
mov ymm10_8 ymm8_8;
mov ymm10_9 ymm8_9;
mov ymm10_a ymm8_8;
mov ymm10_b ymm8_9;
mov ymm10_c ymm8_c;
mov ymm10_d ymm8_d;
mov ymm10_e ymm8_c;
mov ymm10_f ymm8_d;
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556f49d *)
mov bldd_0 ymm7_0;
mov bldd_1 ymm7_1;
mov bldd_2 ymm10_2;
mov bldd_3 ymm10_3;
mov bldd_4 ymm7_4;
mov bldd_5 ymm7_5;
mov bldd_6 ymm10_6;
mov bldd_7 ymm10_7;
mov bldd_8 ymm7_8;
mov bldd_9 ymm7_9;
mov bldd_a ymm10_a;
mov bldd_b ymm10_b;
mov bldd_c ymm7_c;
mov bldd_d ymm7_d;
mov bldd_e ymm10_e;
mov bldd_f ymm10_f;
mov ymm10_0 bldd_0;
mov ymm10_1 bldd_1;
mov ymm10_2 bldd_2;
mov ymm10_3 bldd_3;
mov ymm10_4 bldd_4;
mov ymm10_5 bldd_5;
mov ymm10_6 bldd_6;
mov ymm10_7 bldd_7;
mov ymm10_8 bldd_8;
mov ymm10_9 bldd_9;
mov ymm10_a bldd_a;
mov ymm10_b bldd_b;
mov ymm10_c bldd_c;
mov ymm10_d bldd_d;
mov ymm10_e bldd_e;
mov ymm10_f bldd_f;
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556f4a3 *)
mov srlq_0 ymm7_2;
mov srlq_1 ymm7_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm7_6;
mov srlq_5 ymm7_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm7_a;
mov srlq_9 ymm7_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm7_e;
mov srlq_d ymm7_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm7_0 srlq_0;
mov ymm7_1 srlq_1;
mov ymm7_2 srlq_2;
mov ymm7_3 srlq_3;
mov ymm7_4 srlq_4;
mov ymm7_5 srlq_5;
mov ymm7_6 srlq_6;
mov ymm7_7 srlq_7;
mov ymm7_8 srlq_8;
mov ymm7_9 srlq_9;
mov ymm7_a srlq_a;
mov ymm7_b srlq_b;
mov ymm7_c srlq_c;
mov ymm7_d srlq_d;
mov ymm7_e srlq_e;
mov ymm7_f srlq_f;
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556f4a8 *)
mov bldd_0 ymm7_0;
mov bldd_1 ymm7_1;
mov bldd_2 ymm8_2;
mov bldd_3 ymm8_3;
mov bldd_4 ymm7_4;
mov bldd_5 ymm7_5;
mov bldd_6 ymm8_6;
mov bldd_7 ymm8_7;
mov bldd_8 ymm7_8;
mov bldd_9 ymm7_9;
mov bldd_a ymm8_a;
mov bldd_b ymm8_b;
mov bldd_c ymm7_c;
mov bldd_d ymm7_d;
mov bldd_e ymm8_e;
mov bldd_f ymm8_f;
mov ymm8_0 bldd_0;
mov ymm8_1 bldd_1;
mov ymm8_2 bldd_2;
mov ymm8_3 bldd_3;
mov ymm8_4 bldd_4;
mov ymm8_5 bldd_5;
mov ymm8_6 bldd_6;
mov ymm8_7 bldd_7;
mov ymm8_8 bldd_8;
mov ymm8_9 bldd_9;
mov ymm8_a bldd_a;
mov ymm8_b bldd_b;
mov ymm8_c bldd_c;
mov ymm8_d bldd_d;
mov ymm8_e bldd_e;
mov ymm8_f bldd_f;
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556f4ae *)
mov ymm7_0 ymm11_0;
mov ymm7_1 ymm11_1;
mov ymm7_2 ymm11_0;
mov ymm7_3 ymm11_1;
mov ymm7_4 ymm11_4;
mov ymm7_5 ymm11_5;
mov ymm7_6 ymm11_4;
mov ymm7_7 ymm11_5;
mov ymm7_8 ymm11_8;
mov ymm7_9 ymm11_9;
mov ymm7_a ymm11_8;
mov ymm7_b ymm11_9;
mov ymm7_c ymm11_c;
mov ymm7_d ymm11_d;
mov ymm7_e ymm11_c;
mov ymm7_f ymm11_d;
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556f4b3 *)
mov bldd_0 ymm4_0;
mov bldd_1 ymm4_1;
mov bldd_2 ymm7_2;
mov bldd_3 ymm7_3;
mov bldd_4 ymm4_4;
mov bldd_5 ymm4_5;
mov bldd_6 ymm7_6;
mov bldd_7 ymm7_7;
mov bldd_8 ymm4_8;
mov bldd_9 ymm4_9;
mov bldd_a ymm7_a;
mov bldd_b ymm7_b;
mov bldd_c ymm4_c;
mov bldd_d ymm4_d;
mov bldd_e ymm7_e;
mov bldd_f ymm7_f;
mov ymm7_0 bldd_0;
mov ymm7_1 bldd_1;
mov ymm7_2 bldd_2;
mov ymm7_3 bldd_3;
mov ymm7_4 bldd_4;
mov ymm7_5 bldd_5;
mov ymm7_6 bldd_6;
mov ymm7_7 bldd_7;
mov ymm7_8 bldd_8;
mov ymm7_9 bldd_9;
mov ymm7_a bldd_a;
mov ymm7_b bldd_b;
mov ymm7_c bldd_c;
mov ymm7_d bldd_d;
mov ymm7_e bldd_e;
mov ymm7_f bldd_f;
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556f4b9 *)
mov srlq_0 ymm4_2;
mov srlq_1 ymm4_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm4_6;
mov srlq_5 ymm4_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm4_a;
mov srlq_9 ymm4_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm4_e;
mov srlq_d ymm4_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm4_0 srlq_0;
mov ymm4_1 srlq_1;
mov ymm4_2 srlq_2;
mov ymm4_3 srlq_3;
mov ymm4_4 srlq_4;
mov ymm4_5 srlq_5;
mov ymm4_6 srlq_6;
mov ymm4_7 srlq_7;
mov ymm4_8 srlq_8;
mov ymm4_9 srlq_9;
mov ymm4_a srlq_a;
mov ymm4_b srlq_b;
mov ymm4_c srlq_c;
mov ymm4_d srlq_d;
mov ymm4_e srlq_e;
mov ymm4_f srlq_f;
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556f4be *)
mov bldd_0 ymm4_0;
mov bldd_1 ymm4_1;
mov bldd_2 ymm11_2;
mov bldd_3 ymm11_3;
mov bldd_4 ymm4_4;
mov bldd_5 ymm4_5;
mov bldd_6 ymm11_6;
mov bldd_7 ymm11_7;
mov bldd_8 ymm4_8;
mov bldd_9 ymm4_9;
mov bldd_a ymm11_a;
mov bldd_b ymm11_b;
mov bldd_c ymm4_c;
mov bldd_d ymm4_d;
mov bldd_e ymm11_e;
mov bldd_f ymm11_f;
mov ymm11_0 bldd_0;
mov ymm11_1 bldd_1;
mov ymm11_2 bldd_2;
mov ymm11_3 bldd_3;
mov ymm11_4 bldd_4;
mov ymm11_5 bldd_5;
mov ymm11_6 bldd_6;
mov ymm11_7 bldd_7;
mov ymm11_8 bldd_8;
mov ymm11_9 bldd_9;
mov ymm11_a bldd_a;
mov ymm11_b bldd_b;
mov ymm11_c bldd_c;
mov ymm11_d bldd_d;
mov ymm11_e bldd_e;
mov ymm11_f bldd_f;
(* vmovdqa 0x3e0(%rsi),%ymm15                      #! EA = L0x5555556399c0; Value = 0x5ef95ef992579257; PC = 0x55555556f4c4 *)
mov ymm15_0 L0x5555556399c0;
mov ymm15_1 L0x5555556399c2;
mov ymm15_2 L0x5555556399c4;
mov ymm15_3 L0x5555556399c6;
mov ymm15_4 L0x5555556399c8;
mov ymm15_5 L0x5555556399ca;
mov ymm15_6 L0x5555556399cc;
mov ymm15_7 L0x5555556399ce;
mov ymm15_8 L0x5555556399d0;
mov ymm15_9 L0x5555556399d2;
mov ymm15_a L0x5555556399d4;
mov ymm15_b L0x5555556399d6;
mov ymm15_c L0x5555556399d8;
mov ymm15_d L0x5555556399da;
mov ymm15_e L0x5555556399dc;
mov ymm15_f L0x5555556399de;
(* vmovdqa 0x400(%rsi),%ymm2                       #! EA = L0x5555556399e0; Value = 0x03f903f9fd57fd57; PC = 0x55555556f4cc *)
mov ymm2_0 L0x5555556399e0;
mov ymm2_1 L0x5555556399e2;
mov ymm2_2 L0x5555556399e4;
mov ymm2_3 L0x5555556399e6;
mov ymm2_4 L0x5555556399e8;
mov ymm2_5 L0x5555556399ea;
mov ymm2_6 L0x5555556399ec;
mov ymm2_7 L0x5555556399ee;
mov ymm2_8 L0x5555556399f0;
mov ymm2_9 L0x5555556399f2;
mov ymm2_a L0x5555556399f4;
mov ymm2_b L0x5555556399f6;
mov ymm2_c L0x5555556399f8;
mov ymm2_d L0x5555556399fa;
mov ymm2_e L0x5555556399fc;
mov ymm2_f L0x5555556399fe;
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556f4d4 *)
smull mulHymm10_0 mulL_0 ymm15_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm15_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm15_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm15_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm15_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm15_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm15_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm15_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm15_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm15_9 ymm10_9;
smull mulHymm10_a mulL_a ymm15_a ymm10_a;
smull mulHymm10_b mulL_b ymm15_b ymm10_b;
smull mulHymm10_c mulL_c ymm15_c ymm10_c;
smull mulHymm10_d mulL_d ymm15_d ymm10_d;
smull mulHymm10_e mulL_e ymm15_e ymm10_e;
smull mulHymm10_f mulL_f ymm15_f ymm10_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556f4d9 *)
smull mulHymm8_0 mulL_0 ymm15_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm15_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm15_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm15_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm15_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm15_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm15_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm15_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm15_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm15_9 ymm8_9;
smull mulHymm8_a mulL_a ymm15_a ymm8_a;
smull mulHymm8_b mulL_b ymm15_b ymm8_b;
smull mulHymm8_c mulL_c ymm15_c ymm8_c;
smull mulHymm8_d mulL_d ymm15_d ymm8_d;
smull mulHymm8_e mulL_e ymm15_e ymm8_e;
smull mulHymm8_f mulL_f ymm15_f ymm8_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556f4de *)
smull mulHymm7_0 mulL_0 ymm15_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm15_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm15_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm15_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm15_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm15_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm15_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm15_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm15_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm15_9 ymm7_9;
smull mulHymm7_a mulL_a ymm15_a ymm7_a;
smull mulHymm7_b mulL_b ymm15_b ymm7_b;
smull mulHymm7_c mulL_c ymm15_c ymm7_c;
smull mulHymm7_d mulL_d ymm15_d ymm7_d;
smull mulHymm7_e mulL_e ymm15_e ymm7_e;
smull mulHymm7_f mulL_f ymm15_f ymm7_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f4e3 *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f4e8 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm2_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm2_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm2_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm2_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm2_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm2_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm2_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm2_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm2_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm2_9;
smull mulH_a mulLymm10_a ymm10_a ymm2_a;
smull mulH_b mulLymm10_b ymm10_b ymm2_b;
smull mulH_c mulLymm10_c ymm10_c ymm2_c;
smull mulH_d mulLymm10_d ymm10_d ymm2_d;
smull mulH_e mulLymm10_e ymm10_e ymm2_e;
smull mulH_f mulLymm10_f ymm10_f ymm2_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f4ec *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm2_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm2_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm2_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm2_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm2_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm2_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm2_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm2_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm2_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm2_9;
smull mulH_a mulLymm8_a ymm8_a ymm2_a;
smull mulH_b mulLymm8_b ymm8_b ymm2_b;
smull mulH_c mulLymm8_c ymm8_c ymm2_c;
smull mulH_d mulLymm8_d ymm8_d ymm2_d;
smull mulH_e mulLymm8_e ymm8_e ymm2_e;
smull mulH_f mulLymm8_f ymm8_f ymm2_f;
mov ymm8_0 mulH_0;
mov ymm8_1 mulH_1;
mov ymm8_2 mulH_2;
mov ymm8_3 mulH_3;
mov ymm8_4 mulH_4;
mov ymm8_5 mulH_5;
mov ymm8_6 mulH_6;
mov ymm8_7 mulH_7;
mov ymm8_8 mulH_8;
mov ymm8_9 mulH_9;
mov ymm8_a mulH_a;
mov ymm8_b mulH_b;
mov ymm8_c mulH_c;
mov ymm8_d mulH_d;
mov ymm8_e mulH_e;
mov ymm8_f mulH_f;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f4f0 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm2_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm2_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm2_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm2_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm2_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm2_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm2_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm2_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm2_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm2_9;
smull mulH_a mulLymm7_a ymm7_a ymm2_a;
smull mulH_b mulLymm7_b ymm7_b ymm2_b;
smull mulH_c mulLymm7_c ymm7_c ymm2_c;
smull mulH_d mulLymm7_d ymm7_d ymm2_d;
smull mulH_e mulLymm7_e ymm7_e ymm2_e;
smull mulH_f mulLymm7_f ymm7_f ymm2_f;
mov ymm7_0 mulH_0;
mov ymm7_1 mulH_1;
mov ymm7_2 mulH_2;
mov ymm7_3 mulH_3;
mov ymm7_4 mulH_4;
mov ymm7_5 mulH_5;
mov ymm7_6 mulH_6;
mov ymm7_7 mulH_7;
mov ymm7_8 mulH_8;
mov ymm7_9 mulH_9;
mov ymm7_a mulH_a;
mov ymm7_b mulH_b;
mov ymm7_c mulH_c;
mov ymm7_d mulH_d;
mov ymm7_e mulH_e;
mov ymm7_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f4f4 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556f4f8 *)
mov ymm4_0 ymm9_0;
mov ymm4_1 ymm9_1;
mov ymm4_2 ymm9_0;
mov ymm4_3 ymm9_1;
mov ymm4_4 ymm9_4;
mov ymm4_5 ymm9_5;
mov ymm4_6 ymm9_4;
mov ymm4_7 ymm9_5;
mov ymm4_8 ymm9_8;
mov ymm4_9 ymm9_9;
mov ymm4_a ymm9_8;
mov ymm4_b ymm9_9;
mov ymm4_c ymm9_c;
mov ymm4_d ymm9_d;
mov ymm4_e ymm9_c;
mov ymm4_f ymm9_d;
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556f4fd *)
mov bldd_0 ymm6_0;
mov bldd_1 ymm6_1;
mov bldd_2 ymm4_2;
mov bldd_3 ymm4_3;
mov bldd_4 ymm6_4;
mov bldd_5 ymm6_5;
mov bldd_6 ymm4_6;
mov bldd_7 ymm4_7;
mov bldd_8 ymm6_8;
mov bldd_9 ymm6_9;
mov bldd_a ymm4_a;
mov bldd_b ymm4_b;
mov bldd_c ymm6_c;
mov bldd_d ymm6_d;
mov bldd_e ymm4_e;
mov bldd_f ymm4_f;
mov ymm4_0 bldd_0;
mov ymm4_1 bldd_1;
mov ymm4_2 bldd_2;
mov ymm4_3 bldd_3;
mov ymm4_4 bldd_4;
mov ymm4_5 bldd_5;
mov ymm4_6 bldd_6;
mov ymm4_7 bldd_7;
mov ymm4_8 bldd_8;
mov ymm4_9 bldd_9;
mov ymm4_a bldd_a;
mov ymm4_b bldd_b;
mov ymm4_c bldd_c;
mov ymm4_d bldd_d;
mov ymm4_e bldd_e;
mov ymm4_f bldd_f;
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556f503 *)
mov srlq_0 ymm6_2;
mov srlq_1 ymm6_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm6_6;
mov srlq_5 ymm6_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm6_a;
mov srlq_9 ymm6_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm6_e;
mov srlq_d ymm6_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm6_0 srlq_0;
mov ymm6_1 srlq_1;
mov ymm6_2 srlq_2;
mov ymm6_3 srlq_3;
mov ymm6_4 srlq_4;
mov ymm6_5 srlq_5;
mov ymm6_6 srlq_6;
mov ymm6_7 srlq_7;
mov ymm6_8 srlq_8;
mov ymm6_9 srlq_9;
mov ymm6_a srlq_a;
mov ymm6_b srlq_b;
mov ymm6_c srlq_c;
mov ymm6_d srlq_d;
mov ymm6_e srlq_e;
mov ymm6_f srlq_f;
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f508 *)
mov bldd_0 ymm6_0;
mov bldd_1 ymm6_1;
mov bldd_2 ymm9_2;
mov bldd_3 ymm9_3;
mov bldd_4 ymm6_4;
mov bldd_5 ymm6_5;
mov bldd_6 ymm9_6;
mov bldd_7 ymm9_7;
mov bldd_8 ymm6_8;
mov bldd_9 ymm6_9;
mov bldd_a ymm9_a;
mov bldd_b ymm9_b;
mov bldd_c ymm6_c;
mov bldd_d ymm6_d;
mov bldd_e ymm9_e;
mov bldd_f ymm9_f;
mov ymm9_0 bldd_0;
mov ymm9_1 bldd_1;
mov ymm9_2 bldd_2;
mov ymm9_3 bldd_3;
mov ymm9_4 bldd_4;
mov ymm9_5 bldd_5;
mov ymm9_6 bldd_6;
mov ymm9_7 bldd_7;
mov ymm9_8 bldd_8;
mov ymm9_9 bldd_9;
mov ymm9_a bldd_a;
mov ymm9_b bldd_b;
mov ymm9_c bldd_c;
mov ymm9_d bldd_d;
mov ymm9_e bldd_e;
mov ymm9_f bldd_f;
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556f50e *)
mov ymm6_0 ymm5_0;
mov ymm6_1 ymm5_1;
mov ymm6_2 ymm5_0;
mov ymm6_3 ymm5_1;
mov ymm6_4 ymm5_4;
mov ymm6_5 ymm5_5;
mov ymm6_6 ymm5_4;
mov ymm6_7 ymm5_5;
mov ymm6_8 ymm5_8;
mov ymm6_9 ymm5_9;
mov ymm6_a ymm5_8;
mov ymm6_b ymm5_9;
mov ymm6_c ymm5_c;
mov ymm6_d ymm5_d;
mov ymm6_e ymm5_c;
mov ymm6_f ymm5_d;
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f512 *)
mov bldd_0 ymm3_0;
mov bldd_1 ymm3_1;
mov bldd_2 ymm6_2;
mov bldd_3 ymm6_3;
mov bldd_4 ymm3_4;
mov bldd_5 ymm3_5;
mov bldd_6 ymm6_6;
mov bldd_7 ymm6_7;
mov bldd_8 ymm3_8;
mov bldd_9 ymm3_9;
mov bldd_a ymm6_a;
mov bldd_b ymm6_b;
mov bldd_c ymm3_c;
mov bldd_d ymm3_d;
mov bldd_e ymm6_e;
mov bldd_f ymm6_f;
mov ymm6_0 bldd_0;
mov ymm6_1 bldd_1;
mov ymm6_2 bldd_2;
mov ymm6_3 bldd_3;
mov ymm6_4 bldd_4;
mov ymm6_5 bldd_5;
mov ymm6_6 bldd_6;
mov ymm6_7 bldd_7;
mov ymm6_8 bldd_8;
mov ymm6_9 bldd_9;
mov ymm6_a bldd_a;
mov ymm6_b bldd_b;
mov ymm6_c bldd_c;
mov ymm6_d bldd_d;
mov ymm6_e bldd_e;
mov ymm6_f bldd_f;
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556f518 *)
mov srlq_0 ymm3_2;
mov srlq_1 ymm3_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm3_6;
mov srlq_5 ymm3_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm3_a;
mov srlq_9 ymm3_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm3_e;
mov srlq_d ymm3_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm3_0 srlq_0;
mov ymm3_1 srlq_1;
mov ymm3_2 srlq_2;
mov ymm3_3 srlq_3;
mov ymm3_4 srlq_4;
mov ymm3_5 srlq_5;
mov ymm3_6 srlq_6;
mov ymm3_7 srlq_7;
mov ymm3_8 srlq_8;
mov ymm3_9 srlq_9;
mov ymm3_a srlq_a;
mov ymm3_b srlq_b;
mov ymm3_c srlq_c;
mov ymm3_d srlq_d;
mov ymm3_e srlq_e;
mov ymm3_f srlq_f;
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556f51d *)
mov bldd_0 ymm3_0;
mov bldd_1 ymm3_1;
mov bldd_2 ymm5_2;
mov bldd_3 ymm5_3;
mov bldd_4 ymm3_4;
mov bldd_5 ymm3_5;
mov bldd_6 ymm5_6;
mov bldd_7 ymm5_7;
mov bldd_8 ymm3_8;
mov bldd_9 ymm3_9;
mov bldd_a ymm5_a;
mov bldd_b ymm5_b;
mov bldd_c ymm3_c;
mov bldd_d ymm3_d;
mov bldd_e ymm5_e;
mov bldd_f ymm5_f;
mov ymm5_0 bldd_0;
mov ymm5_1 bldd_1;
mov ymm5_2 bldd_2;
mov ymm5_3 bldd_3;
mov ymm5_4 bldd_4;
mov ymm5_5 bldd_5;
mov ymm5_6 bldd_6;
mov ymm5_7 bldd_7;
mov ymm5_8 bldd_8;
mov ymm5_9 bldd_9;
mov ymm5_a bldd_a;
mov ymm5_b bldd_b;
mov ymm5_c bldd_c;
mov ymm5_d bldd_d;
mov ymm5_e bldd_e;
mov ymm5_f bldd_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f523 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f527 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm8_0;
assume red_0 = mulLymm8_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm8_1;
assume red_1 = mulLymm8_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm8_2;
assume red_2 = mulLymm8_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm8_3;
assume red_3 = mulLymm8_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm8_4;
assume red_4 = mulLymm8_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm8_5;
assume red_5 = mulLymm8_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm8_6;
assume red_6 = mulLymm8_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm8_7;
assume red_7 = mulLymm8_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm8_8;
assume red_8 = mulLymm8_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm8_9;
assume red_9 = mulLymm8_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm8_a;
assume red_a = mulLymm8_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm8_b;
assume red_b = mulLymm8_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm8_c;
assume red_c = mulLymm8_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm8_d;
assume red_d = mulLymm8_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm8_e;
assume red_e = mulLymm8_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm8_f;
assume red_f = mulLymm8_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f52b *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm7_0;
assume red_0 = mulLymm7_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm7_1;
assume red_1 = mulLymm7_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm7_2;
assume red_2 = mulLymm7_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm7_3;
assume red_3 = mulLymm7_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm7_4;
assume red_4 = mulLymm7_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm7_5;
assume red_5 = mulLymm7_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm7_6;
assume red_6 = mulLymm7_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm7_7;
assume red_7 = mulLymm7_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm7_8;
assume red_8 = mulLymm7_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm7_9;
assume red_9 = mulLymm7_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm7_a;
assume red_a = mulLymm7_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm7_b;
assume red_b = mulLymm7_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm7_c;
assume red_c = mulLymm7_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm7_d;
assume red_d = mulLymm7_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm7_e;
assume red_e = mulLymm7_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm7_f;
assume red_f = mulLymm7_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f52f *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556f533 *)
add ymm3_0 ymm4_0 ymm10_0;
add ymm3_1 ymm4_1 ymm10_1;
add ymm3_2 ymm4_2 ymm10_2;
add ymm3_3 ymm4_3 ymm10_3;
add ymm3_4 ymm4_4 ymm10_4;
add ymm3_5 ymm4_5 ymm10_5;
add ymm3_6 ymm4_6 ymm10_6;
add ymm3_7 ymm4_7 ymm10_7;
add ymm3_8 ymm4_8 ymm10_8;
add ymm3_9 ymm4_9 ymm10_9;
add ymm3_a ymm4_a ymm10_a;
add ymm3_b ymm4_b ymm10_b;
add ymm3_c ymm4_c ymm10_c;
add ymm3_d ymm4_d ymm10_d;
add ymm3_e ymm4_e ymm10_e;
add ymm3_f ymm4_f ymm10_f;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f538 *)
sub ymm10_0 ymm4_0 ymm10_0;
sub ymm10_1 ymm4_1 ymm10_1;
sub ymm10_2 ymm4_2 ymm10_2;
sub ymm10_3 ymm4_3 ymm10_3;
sub ymm10_4 ymm4_4 ymm10_4;
sub ymm10_5 ymm4_5 ymm10_5;
sub ymm10_6 ymm4_6 ymm10_6;
sub ymm10_7 ymm4_7 ymm10_7;
sub ymm10_8 ymm4_8 ymm10_8;
sub ymm10_9 ymm4_9 ymm10_9;
sub ymm10_a ymm4_a ymm10_a;
sub ymm10_b ymm4_b ymm10_b;
sub ymm10_c ymm4_c ymm10_c;
sub ymm10_d ymm4_d ymm10_d;
sub ymm10_e ymm4_e ymm10_e;
sub ymm10_f ymm4_f ymm10_f;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556f53d *)
add ymm4_0 ymm9_0 ymm8_0;
add ymm4_1 ymm9_1 ymm8_1;
add ymm4_2 ymm9_2 ymm8_2;
add ymm4_3 ymm9_3 ymm8_3;
add ymm4_4 ymm9_4 ymm8_4;
add ymm4_5 ymm9_5 ymm8_5;
add ymm4_6 ymm9_6 ymm8_6;
add ymm4_7 ymm9_7 ymm8_7;
add ymm4_8 ymm9_8 ymm8_8;
add ymm4_9 ymm9_9 ymm8_9;
add ymm4_a ymm9_a ymm8_a;
add ymm4_b ymm9_b ymm8_b;
add ymm4_c ymm9_c ymm8_c;
add ymm4_d ymm9_d ymm8_d;
add ymm4_e ymm9_e ymm8_e;
add ymm4_f ymm9_f ymm8_f;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556f542 *)
sub ymm8_0 ymm9_0 ymm8_0;
sub ymm8_1 ymm9_1 ymm8_1;
sub ymm8_2 ymm9_2 ymm8_2;
sub ymm8_3 ymm9_3 ymm8_3;
sub ymm8_4 ymm9_4 ymm8_4;
sub ymm8_5 ymm9_5 ymm8_5;
sub ymm8_6 ymm9_6 ymm8_6;
sub ymm8_7 ymm9_7 ymm8_7;
sub ymm8_8 ymm9_8 ymm8_8;
sub ymm8_9 ymm9_9 ymm8_9;
sub ymm8_a ymm9_a ymm8_a;
sub ymm8_b ymm9_b ymm8_b;
sub ymm8_c ymm9_c ymm8_c;
sub ymm8_d ymm9_d ymm8_d;
sub ymm8_e ymm9_e ymm8_e;
sub ymm8_f ymm9_f ymm8_f;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556f547 *)
add ymm9_0 ymm6_0 ymm7_0;
add ymm9_1 ymm6_1 ymm7_1;
add ymm9_2 ymm6_2 ymm7_2;
add ymm9_3 ymm6_3 ymm7_3;
add ymm9_4 ymm6_4 ymm7_4;
add ymm9_5 ymm6_5 ymm7_5;
add ymm9_6 ymm6_6 ymm7_6;
add ymm9_7 ymm6_7 ymm7_7;
add ymm9_8 ymm6_8 ymm7_8;
add ymm9_9 ymm6_9 ymm7_9;
add ymm9_a ymm6_a ymm7_a;
add ymm9_b ymm6_b ymm7_b;
add ymm9_c ymm6_c ymm7_c;
add ymm9_d ymm6_d ymm7_d;
add ymm9_e ymm6_e ymm7_e;
add ymm9_f ymm6_f ymm7_f;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f54b *)
sub ymm7_0 ymm6_0 ymm7_0;
sub ymm7_1 ymm6_1 ymm7_1;
sub ymm7_2 ymm6_2 ymm7_2;
sub ymm7_3 ymm6_3 ymm7_3;
sub ymm7_4 ymm6_4 ymm7_4;
sub ymm7_5 ymm6_5 ymm7_5;
sub ymm7_6 ymm6_6 ymm7_6;
sub ymm7_7 ymm6_7 ymm7_7;
sub ymm7_8 ymm6_8 ymm7_8;
sub ymm7_9 ymm6_9 ymm7_9;
sub ymm7_a ymm6_a ymm7_a;
sub ymm7_b ymm6_b ymm7_b;
sub ymm7_c ymm6_c ymm7_c;
sub ymm7_d ymm6_d ymm7_d;
sub ymm7_e ymm6_e ymm7_e;
sub ymm7_f ymm6_f ymm7_f;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556f54f *)
add ymm6_0 ymm5_0 ymm11_0;
add ymm6_1 ymm5_1 ymm11_1;
add ymm6_2 ymm5_2 ymm11_2;
add ymm6_3 ymm5_3 ymm11_3;
add ymm6_4 ymm5_4 ymm11_4;
add ymm6_5 ymm5_5 ymm11_5;
add ymm6_6 ymm5_6 ymm11_6;
add ymm6_7 ymm5_7 ymm11_7;
add ymm6_8 ymm5_8 ymm11_8;
add ymm6_9 ymm5_9 ymm11_9;
add ymm6_a ymm5_a ymm11_a;
add ymm6_b ymm5_b ymm11_b;
add ymm6_c ymm5_c ymm11_c;
add ymm6_d ymm5_d ymm11_d;
add ymm6_e ymm5_e ymm11_e;
add ymm6_f ymm5_f ymm11_f;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556f554 *)
sub ymm11_0 ymm5_0 ymm11_0;
sub ymm11_1 ymm5_1 ymm11_1;
sub ymm11_2 ymm5_2 ymm11_2;
sub ymm11_3 ymm5_3 ymm11_3;
sub ymm11_4 ymm5_4 ymm11_4;
sub ymm11_5 ymm5_5 ymm11_5;
sub ymm11_6 ymm5_6 ymm11_6;
sub ymm11_7 ymm5_7 ymm11_7;
sub ymm11_8 ymm5_8 ymm11_8;
sub ymm11_9 ymm5_9 ymm11_9;
sub ymm11_a ymm5_a ymm11_a;
sub ymm11_b ymm5_b ymm11_b;
sub ymm11_c ymm5_c ymm11_c;
sub ymm11_d ymm5_d ymm11_d;
sub ymm11_e ymm5_e ymm11_e;
sub ymm11_f ymm5_f ymm11_f;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f559 *)
sub ymm3_0 ymm3_0 ymm12_0;
sub ymm3_1 ymm3_1 ymm12_1;
sub ymm3_2 ymm3_2 ymm12_2;
sub ymm3_3 ymm3_3 ymm12_3;
sub ymm3_4 ymm3_4 ymm12_4;
sub ymm3_5 ymm3_5 ymm12_5;
sub ymm3_6 ymm3_6 ymm12_6;
sub ymm3_7 ymm3_7 ymm12_7;
sub ymm3_8 ymm3_8 ymm12_8;
sub ymm3_9 ymm3_9 ymm12_9;
sub ymm3_a ymm3_a ymm12_a;
sub ymm3_b ymm3_b ymm12_b;
sub ymm3_c ymm3_c ymm12_c;
sub ymm3_d ymm3_d ymm12_d;
sub ymm3_e ymm3_e ymm12_e;
sub ymm3_f ymm3_f ymm12_f;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f55e *)
add ymm10_0 ymm10_0 ymm12_0;
add ymm10_1 ymm10_1 ymm12_1;
add ymm10_2 ymm10_2 ymm12_2;
add ymm10_3 ymm10_3 ymm12_3;
add ymm10_4 ymm10_4 ymm12_4;
add ymm10_5 ymm10_5 ymm12_5;
add ymm10_6 ymm10_6 ymm12_6;
add ymm10_7 ymm10_7 ymm12_7;
add ymm10_8 ymm10_8 ymm12_8;
add ymm10_9 ymm10_9 ymm12_9;
add ymm10_a ymm10_a ymm12_a;
add ymm10_b ymm10_b ymm12_b;
add ymm10_c ymm10_c ymm12_c;
add ymm10_d ymm10_d ymm12_d;
add ymm10_e ymm10_e ymm12_e;
add ymm10_f ymm10_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f563 *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556f568 *)
add ymm8_0 ymm8_0 ymm13_0;
add ymm8_1 ymm8_1 ymm13_1;
add ymm8_2 ymm8_2 ymm13_2;
add ymm8_3 ymm8_3 ymm13_3;
add ymm8_4 ymm8_4 ymm13_4;
add ymm8_5 ymm8_5 ymm13_5;
add ymm8_6 ymm8_6 ymm13_6;
add ymm8_7 ymm8_7 ymm13_7;
add ymm8_8 ymm8_8 ymm13_8;
add ymm8_9 ymm8_9 ymm13_9;
add ymm8_a ymm8_a ymm13_a;
add ymm8_b ymm8_b ymm13_b;
add ymm8_c ymm8_c ymm13_c;
add ymm8_d ymm8_d ymm13_d;
add ymm8_e ymm8_e ymm13_e;
add ymm8_f ymm8_f ymm13_f;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f56d *)
sub ymm9_0 ymm9_0 ymm14_0;
sub ymm9_1 ymm9_1 ymm14_1;
sub ymm9_2 ymm9_2 ymm14_2;
sub ymm9_3 ymm9_3 ymm14_3;
sub ymm9_4 ymm9_4 ymm14_4;
sub ymm9_5 ymm9_5 ymm14_5;
sub ymm9_6 ymm9_6 ymm14_6;
sub ymm9_7 ymm9_7 ymm14_7;
sub ymm9_8 ymm9_8 ymm14_8;
sub ymm9_9 ymm9_9 ymm14_9;
sub ymm9_a ymm9_a ymm14_a;
sub ymm9_b ymm9_b ymm14_b;
sub ymm9_c ymm9_c ymm14_c;
sub ymm9_d ymm9_d ymm14_d;
sub ymm9_e ymm9_e ymm14_e;
sub ymm9_f ymm9_f ymm14_f;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f572 *)
add ymm7_0 ymm7_0 ymm14_0;
add ymm7_1 ymm7_1 ymm14_1;
add ymm7_2 ymm7_2 ymm14_2;
add ymm7_3 ymm7_3 ymm14_3;
add ymm7_4 ymm7_4 ymm14_4;
add ymm7_5 ymm7_5 ymm14_5;
add ymm7_6 ymm7_6 ymm14_6;
add ymm7_7 ymm7_7 ymm14_7;
add ymm7_8 ymm7_8 ymm14_8;
add ymm7_9 ymm7_9 ymm14_9;
add ymm7_a ymm7_a ymm14_a;
add ymm7_b ymm7_b ymm14_b;
add ymm7_c ymm7_c ymm14_c;
add ymm7_d ymm7_d ymm14_d;
add ymm7_e ymm7_e ymm14_e;
add ymm7_f ymm7_f ymm14_f;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f577 *)
sub ymm6_0 ymm6_0 ymm15_0;
sub ymm6_1 ymm6_1 ymm15_1;
sub ymm6_2 ymm6_2 ymm15_2;
sub ymm6_3 ymm6_3 ymm15_3;
sub ymm6_4 ymm6_4 ymm15_4;
sub ymm6_5 ymm6_5 ymm15_5;
sub ymm6_6 ymm6_6 ymm15_6;
sub ymm6_7 ymm6_7 ymm15_7;
sub ymm6_8 ymm6_8 ymm15_8;
sub ymm6_9 ymm6_9 ymm15_9;
sub ymm6_a ymm6_a ymm15_a;
sub ymm6_b ymm6_b ymm15_b;
sub ymm6_c ymm6_c ymm15_c;
sub ymm6_d ymm6_d ymm15_d;
sub ymm6_e ymm6_e ymm15_e;
sub ymm6_f ymm6_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f57c *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 4 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm3_0*(x**0) + ymm3_1*(x**1) + ymm4_0*(x**2) + ymm4_1*(x**3) +
 ymm9_0*(x**4) + ymm9_1*(x**5) + ymm6_0*(x**6) + ymm6_1*(x**7))
[3329, x**8 - (1426)],
eqmod (inp_poly**2)
(ymm10_0*(x**0) + ymm10_1*(x**1) + ymm8_0*(x**2) + ymm8_1*(x**3) +
 ymm7_0*(x**4) + ymm7_1*(x**5) + ymm11_0*(x**6) + ymm11_1*(x**7))
[3329, x**8 - (1903)],
eqmod (inp_poly**2)
(ymm3_2*(x**0) + ymm3_3*(x**1) + ymm4_2*(x**2) + ymm4_3*(x**3) +
 ymm9_2*(x**4) + ymm9_3*(x**5) + ymm6_2*(x**6) + ymm6_3*(x**7))
[3329, x**8 - (2094)],
eqmod (inp_poly**2)
(ymm10_2*(x**0) + ymm10_3*(x**1) + ymm8_2*(x**2) + ymm8_3*(x**3) +
 ymm7_2*(x**4) + ymm7_3*(x**5) + ymm11_2*(x**6) + ymm11_3*(x**7))
[3329, x**8 - (1235)],
eqmod (inp_poly**2)
(ymm3_4*(x**0) + ymm3_5*(x**1) + ymm4_4*(x**2) + ymm4_5*(x**3) +
 ymm9_4*(x**4) + ymm9_5*(x**5) + ymm6_4*(x**6) + ymm6_5*(x**7))
[3329, x**8 - (535)],
eqmod (inp_poly**2)
(ymm10_4*(x**0) + ymm10_5*(x**1) + ymm8_4*(x**2) + ymm8_5*(x**3) +
 ymm7_4*(x**4) + ymm7_5*(x**5) + ymm11_4*(x**6) + ymm11_5*(x**7))
[3329, x**8 - (2794)],
eqmod (inp_poly**2)
(ymm3_6*(x**0) + ymm3_7*(x**1) + ymm4_6*(x**2) + ymm4_7*(x**3) +
 ymm9_6*(x**4) + ymm9_7*(x**5) + ymm6_6*(x**6) + ymm6_7*(x**7))
[3329, x**8 - (2882)],
eqmod (inp_poly**2)
(ymm10_6*(x**0) + ymm10_7*(x**1) + ymm8_6*(x**2) + ymm8_7*(x**3) +
 ymm7_6*(x**4) + ymm7_7*(x**5) + ymm11_6*(x**6) + ymm11_7*(x**7))
[3329, x**8 - (447)],
eqmod (inp_poly**2)
(ymm3_8*(x**0) + ymm3_9*(x**1) + ymm4_8*(x**2) + ymm4_9*(x**3) +
 ymm9_8*(x**4) + ymm9_9*(x**5) + ymm6_8*(x**6) + ymm6_9*(x**7))
[3329, x**8 - (2393)],
eqmod (inp_poly**2)
(ymm10_8*(x**0) + ymm10_9*(x**1) + ymm8_8*(x**2) + ymm8_9*(x**3) +
 ymm7_8*(x**4) + ymm7_9*(x**5) + ymm11_8*(x**6) + ymm11_9*(x**7))
[3329, x**8 - (936)],
eqmod (inp_poly**2)
(ymm3_a*(x**0) + ymm3_b*(x**1) + ymm4_a*(x**2) + ymm4_b*(x**3) +
 ymm9_a*(x**4) + ymm9_b*(x**5) + ymm6_a*(x**6) + ymm6_b*(x**7))
[3329, x**8 - (2879)],
eqmod (inp_poly**2)
(ymm10_a*(x**0) + ymm10_b*(x**1) + ymm8_a*(x**2) + ymm8_b*(x**3) +
 ymm7_a*(x**4) + ymm7_b*(x**5) + ymm11_a*(x**6) + ymm11_b*(x**7))
[3329, x**8 - (450)],
eqmod (inp_poly**2)
(ymm3_c*(x**0) + ymm3_d*(x**1) + ymm4_c*(x**2) + ymm4_d*(x**3) +
 ymm9_c*(x**4) + ymm9_d*(x**5) + ymm6_c*(x**6) + ymm6_d*(x**7))
[3329, x**8 - (1974)],
eqmod (inp_poly**2)
(ymm10_c*(x**0) + ymm10_d*(x**1) + ymm8_c*(x**2) + ymm8_d*(x**3) +
 ymm7_c*(x**4) + ymm7_d*(x**5) + ymm11_c*(x**6) + ymm11_d*(x**7))
[3329, x**8 - (1355)],
eqmod (inp_poly**2)
(ymm3_e*(x**0) + ymm3_f*(x**1) + ymm4_e*(x**2) + ymm4_f*(x**3) +
 ymm9_e*(x**4) + ymm9_f*(x**5) + ymm6_e*(x**6) + ymm6_f*(x**7))
[3329, x**8 - (821)],
eqmod (inp_poly**2)
(ymm10_e*(x**0) + ymm10_f*(x**1) + ymm8_e*(x**2) + ymm8_f*(x**3) +
 ymm7_e*(x**4) + ymm7_f*(x**5) + ymm11_e*(x**6) + ymm11_f*(x**7))
[3329, x**8 - (2508)]]
prove with [ cuts [ 3 ] ] &&
and [
(-19974)@16 <s ymm3_0, ymm3_0 <s (19974)@16,
(-19974)@16 <s ymm3_1, ymm3_1 <s (19974)@16,
(-19974)@16 <s ymm4_0, ymm4_0 <s (19974)@16,
(-19974)@16 <s ymm4_1, ymm4_1 <s (19974)@16,
(-19974)@16 <s ymm9_0, ymm9_0 <s (19974)@16,
(-19974)@16 <s ymm9_1, ymm9_1 <s (19974)@16,
(-19974)@16 <s ymm6_0, ymm6_0 <s (19974)@16,
(-19974)@16 <s ymm6_1, ymm6_1 <s (19974)@16,
(-19974)@16 <s ymm10_0, ymm10_0 <s (19974)@16,
(-19974)@16 <s ymm10_1, ymm10_1 <s (19974)@16,
(-19974)@16 <s ymm8_0, ymm8_0 <s (19974)@16,
(-19974)@16 <s ymm8_1, ymm8_1 <s (19974)@16,
(-19974)@16 <s ymm7_0, ymm7_0 <s (19974)@16,
(-19974)@16 <s ymm7_1, ymm7_1 <s (19974)@16,
(-19974)@16 <s ymm11_0, ymm11_0 <s (19974)@16,
(-19974)@16 <s ymm11_1, ymm11_1 <s (19974)@16,
(-19974)@16 <s ymm3_2, ymm3_2 <s (19974)@16,
(-19974)@16 <s ymm3_3, ymm3_3 <s (19974)@16,
(-19974)@16 <s ymm4_2, ymm4_2 <s (19974)@16,
(-19974)@16 <s ymm4_3, ymm4_3 <s (19974)@16,
(-19974)@16 <s ymm9_2, ymm9_2 <s (19974)@16,
(-19974)@16 <s ymm9_3, ymm9_3 <s (19974)@16,
(-19974)@16 <s ymm6_2, ymm6_2 <s (19974)@16,
(-19974)@16 <s ymm6_3, ymm6_3 <s (19974)@16,
(-19974)@16 <s ymm10_2, ymm10_2 <s (19974)@16,
(-19974)@16 <s ymm10_3, ymm10_3 <s (19974)@16,
(-19974)@16 <s ymm8_2, ymm8_2 <s (19974)@16,
(-19974)@16 <s ymm8_3, ymm8_3 <s (19974)@16,
(-19974)@16 <s ymm7_2, ymm7_2 <s (19974)@16,
(-19974)@16 <s ymm7_3, ymm7_3 <s (19974)@16,
(-19974)@16 <s ymm11_2, ymm11_2 <s (19974)@16,
(-19974)@16 <s ymm11_3, ymm11_3 <s (19974)@16,
(-19974)@16 <s ymm3_4, ymm3_4 <s (19974)@16,
(-19974)@16 <s ymm3_5, ymm3_5 <s (19974)@16,
(-19974)@16 <s ymm4_4, ymm4_4 <s (19974)@16,
(-19974)@16 <s ymm4_5, ymm4_5 <s (19974)@16,
(-19974)@16 <s ymm9_4, ymm9_4 <s (19974)@16,
(-19974)@16 <s ymm9_5, ymm9_5 <s (19974)@16,
(-19974)@16 <s ymm6_4, ymm6_4 <s (19974)@16,
(-19974)@16 <s ymm6_5, ymm6_5 <s (19974)@16,
(-19974)@16 <s ymm10_4, ymm10_4 <s (19974)@16,
(-19974)@16 <s ymm10_5, ymm10_5 <s (19974)@16,
(-19974)@16 <s ymm8_4, ymm8_4 <s (19974)@16,
(-19974)@16 <s ymm8_5, ymm8_5 <s (19974)@16,
(-19974)@16 <s ymm7_4, ymm7_4 <s (19974)@16,
(-19974)@16 <s ymm7_5, ymm7_5 <s (19974)@16,
(-19974)@16 <s ymm11_4, ymm11_4 <s (19974)@16,
(-19974)@16 <s ymm11_5, ymm11_5 <s (19974)@16,
(-19974)@16 <s ymm3_6, ymm3_6 <s (19974)@16,
(-19974)@16 <s ymm3_7, ymm3_7 <s (19974)@16,
(-19974)@16 <s ymm4_6, ymm4_6 <s (19974)@16,
(-19974)@16 <s ymm4_7, ymm4_7 <s (19974)@16,
(-19974)@16 <s ymm9_6, ymm9_6 <s (19974)@16,
(-19974)@16 <s ymm9_7, ymm9_7 <s (19974)@16,
(-19974)@16 <s ymm6_6, ymm6_6 <s (19974)@16,
(-19974)@16 <s ymm6_7, ymm6_7 <s (19974)@16,
(-19974)@16 <s ymm10_6, ymm10_6 <s (19974)@16,
(-19974)@16 <s ymm10_7, ymm10_7 <s (19974)@16,
(-19974)@16 <s ymm8_6, ymm8_6 <s (19974)@16,
(-19974)@16 <s ymm8_7, ymm8_7 <s (19974)@16,
(-19974)@16 <s ymm7_6, ymm7_6 <s (19974)@16,
(-19974)@16 <s ymm7_7, ymm7_7 <s (19974)@16,
(-19974)@16 <s ymm11_6, ymm11_6 <s (19974)@16,
(-19974)@16 <s ymm11_7, ymm11_7 <s (19974)@16,
(-19974)@16 <s ymm3_8, ymm3_8 <s (19974)@16,
(-19974)@16 <s ymm3_9, ymm3_9 <s (19974)@16,
(-19974)@16 <s ymm4_8, ymm4_8 <s (19974)@16,
(-19974)@16 <s ymm4_9, ymm4_9 <s (19974)@16,
(-19974)@16 <s ymm9_8, ymm9_8 <s (19974)@16,
(-19974)@16 <s ymm9_9, ymm9_9 <s (19974)@16,
(-19974)@16 <s ymm6_8, ymm6_8 <s (19974)@16,
(-19974)@16 <s ymm6_9, ymm6_9 <s (19974)@16,
(-19974)@16 <s ymm10_8, ymm10_8 <s (19974)@16,
(-19974)@16 <s ymm10_9, ymm10_9 <s (19974)@16,
(-19974)@16 <s ymm8_8, ymm8_8 <s (19974)@16,
(-19974)@16 <s ymm8_9, ymm8_9 <s (19974)@16,
(-19974)@16 <s ymm7_8, ymm7_8 <s (19974)@16,
(-19974)@16 <s ymm7_9, ymm7_9 <s (19974)@16,
(-19974)@16 <s ymm11_8, ymm11_8 <s (19974)@16,
(-19974)@16 <s ymm11_9, ymm11_9 <s (19974)@16,
(-19974)@16 <s ymm3_a, ymm3_a <s (19974)@16,
(-19974)@16 <s ymm3_b, ymm3_b <s (19974)@16,
(-19974)@16 <s ymm4_a, ymm4_a <s (19974)@16,
(-19974)@16 <s ymm4_b, ymm4_b <s (19974)@16,
(-19974)@16 <s ymm9_a, ymm9_a <s (19974)@16,
(-19974)@16 <s ymm9_b, ymm9_b <s (19974)@16,
(-19974)@16 <s ymm6_a, ymm6_a <s (19974)@16,
(-19974)@16 <s ymm6_b, ymm6_b <s (19974)@16,
(-19974)@16 <s ymm10_a, ymm10_a <s (19974)@16,
(-19974)@16 <s ymm10_b, ymm10_b <s (19974)@16,
(-19974)@16 <s ymm8_a, ymm8_a <s (19974)@16,
(-19974)@16 <s ymm8_b, ymm8_b <s (19974)@16,
(-19974)@16 <s ymm7_a, ymm7_a <s (19974)@16,
(-19974)@16 <s ymm7_b, ymm7_b <s (19974)@16,
(-19974)@16 <s ymm11_a, ymm11_a <s (19974)@16,
(-19974)@16 <s ymm11_b, ymm11_b <s (19974)@16,
(-19974)@16 <s ymm3_c, ymm3_c <s (19974)@16,
(-19974)@16 <s ymm3_d, ymm3_d <s (19974)@16,
(-19974)@16 <s ymm4_c, ymm4_c <s (19974)@16,
(-19974)@16 <s ymm4_d, ymm4_d <s (19974)@16,
(-19974)@16 <s ymm9_c, ymm9_c <s (19974)@16,
(-19974)@16 <s ymm9_d, ymm9_d <s (19974)@16,
(-19974)@16 <s ymm6_c, ymm6_c <s (19974)@16,
(-19974)@16 <s ymm6_d, ymm6_d <s (19974)@16,
(-19974)@16 <s ymm10_c, ymm10_c <s (19974)@16,
(-19974)@16 <s ymm10_d, ymm10_d <s (19974)@16,
(-19974)@16 <s ymm8_c, ymm8_c <s (19974)@16,
(-19974)@16 <s ymm8_d, ymm8_d <s (19974)@16,
(-19974)@16 <s ymm7_c, ymm7_c <s (19974)@16,
(-19974)@16 <s ymm7_d, ymm7_d <s (19974)@16,
(-19974)@16 <s ymm11_c, ymm11_c <s (19974)@16,
(-19974)@16 <s ymm11_d, ymm11_d <s (19974)@16,
(-19974)@16 <s ymm3_e, ymm3_e <s (19974)@16,
(-19974)@16 <s ymm3_f, ymm3_f <s (19974)@16,
(-19974)@16 <s ymm4_e, ymm4_e <s (19974)@16,
(-19974)@16 <s ymm4_f, ymm4_f <s (19974)@16,
(-19974)@16 <s ymm9_e, ymm9_e <s (19974)@16,
(-19974)@16 <s ymm9_f, ymm9_f <s (19974)@16,
(-19974)@16 <s ymm6_e, ymm6_e <s (19974)@16,
(-19974)@16 <s ymm6_f, ymm6_f <s (19974)@16,
(-19974)@16 <s ymm10_e, ymm10_e <s (19974)@16,
(-19974)@16 <s ymm10_f, ymm10_f <s (19974)@16,
(-19974)@16 <s ymm8_e, ymm8_e <s (19974)@16,
(-19974)@16 <s ymm8_f, ymm8_f <s (19974)@16,
(-19974)@16 <s ymm7_e, ymm7_e <s (19974)@16,
(-19974)@16 <s ymm7_f, ymm7_f <s (19974)@16,
(-19974)@16 <s ymm11_e, ymm11_e <s (19974)@16,
(-19974)@16 <s ymm11_f, ymm11_f <s (19974)@16]
prove with [ cuts [ 3 ] ];


(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556f581 *)
mov slld_0 0@sint16;
mov slld_1 ymm7_0;
mov slld_2 0@sint16;
mov slld_3 ymm7_2;
mov slld_4 0@sint16;
mov slld_5 ymm7_4;
mov slld_6 0@sint16;
mov slld_7 ymm7_6;
mov slld_8 0@sint16;
mov slld_9 ymm7_8;
mov slld_a 0@sint16;
mov slld_b ymm7_a;
mov slld_c 0@sint16;
mov slld_d ymm7_c;
mov slld_e 0@sint16;
mov slld_f ymm7_e;
mov ymm5_0 slld_0;
mov ymm5_1 slld_1;
mov ymm5_2 slld_2;
mov ymm5_3 slld_3;
mov ymm5_4 slld_4;
mov ymm5_5 slld_5;
mov ymm5_6 slld_6;
mov ymm5_7 slld_7;
mov ymm5_8 slld_8;
mov ymm5_9 slld_9;
mov ymm5_a slld_a;
mov ymm5_b slld_b;
mov ymm5_c slld_c;
mov ymm5_d slld_d;
mov ymm5_e slld_e;
mov ymm5_f slld_f;
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556f586 *)
mov bldw_0 ymm9_0;
mov bldw_1 ymm5_1;
mov bldw_2 ymm9_2;
mov bldw_3 ymm5_3;
mov bldw_4 ymm9_4;
mov bldw_5 ymm5_5;
mov bldw_6 ymm9_6;
mov bldw_7 ymm5_7;
mov bldw_8 ymm9_8;
mov bldw_9 ymm5_9;
mov bldw_a ymm9_a;
mov bldw_b ymm5_b;
mov bldw_c ymm9_c;
mov bldw_d ymm5_d;
mov bldw_e ymm9_e;
mov bldw_f ymm5_f;
mov ymm5_0 bldw_0;
mov ymm5_1 bldw_1;
mov ymm5_2 bldw_2;
mov ymm5_3 bldw_3;
mov ymm5_4 bldw_4;
mov ymm5_5 bldw_5;
mov ymm5_6 bldw_6;
mov ymm5_7 bldw_7;
mov ymm5_8 bldw_8;
mov ymm5_9 bldw_9;
mov ymm5_a bldw_a;
mov ymm5_b bldw_b;
mov ymm5_c bldw_c;
mov ymm5_d bldw_d;
mov ymm5_e bldw_e;
mov ymm5_f bldw_f;
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556f58c *)
mov srld_0 ymm9_1;
mov srld_1 0@sint16;
mov srld_2 ymm9_3;
mov srld_3 0@sint16;
mov srld_4 ymm9_5;
mov srld_5 0@sint16;
mov srld_6 ymm9_7;
mov srld_7 0@sint16;
mov srld_8 ymm9_9;
mov srld_9 0@sint16;
mov srld_a ymm9_b;
mov srld_b 0@sint16;
mov srld_c ymm9_d;
mov srld_d 0@sint16;
mov srld_e ymm9_f;
mov srld_f 0@sint16;
mov ymm9_0 srld_0;
mov ymm9_1 srld_1;
mov ymm9_2 srld_2;
mov ymm9_3 srld_3;
mov ymm9_4 srld_4;
mov ymm9_5 srld_5;
mov ymm9_6 srld_6;
mov ymm9_7 srld_7;
mov ymm9_8 srld_8;
mov ymm9_9 srld_9;
mov ymm9_a srld_a;
mov ymm9_b srld_b;
mov ymm9_c srld_c;
mov ymm9_d srld_d;
mov ymm9_e srld_e;
mov ymm9_f srld_f;
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556f592 *)
mov bldw_0 ymm9_0;
mov bldw_1 ymm7_1;
mov bldw_2 ymm9_2;
mov bldw_3 ymm7_3;
mov bldw_4 ymm9_4;
mov bldw_5 ymm7_5;
mov bldw_6 ymm9_6;
mov bldw_7 ymm7_7;
mov bldw_8 ymm9_8;
mov bldw_9 ymm7_9;
mov bldw_a ymm9_a;
mov bldw_b ymm7_b;
mov bldw_c ymm9_c;
mov bldw_d ymm7_d;
mov bldw_e ymm9_e;
mov bldw_f ymm7_f;
mov ymm7_0 bldw_0;
mov ymm7_1 bldw_1;
mov ymm7_2 bldw_2;
mov ymm7_3 bldw_3;
mov ymm7_4 bldw_4;
mov ymm7_5 bldw_5;
mov ymm7_6 bldw_6;
mov ymm7_7 bldw_7;
mov ymm7_8 bldw_8;
mov ymm7_9 bldw_9;
mov ymm7_a bldw_a;
mov ymm7_b bldw_b;
mov ymm7_c bldw_c;
mov ymm7_d bldw_d;
mov ymm7_e bldw_e;
mov ymm7_f bldw_f;
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556f598 *)
mov slld_0 0@sint16;
mov slld_1 ymm11_0;
mov slld_2 0@sint16;
mov slld_3 ymm11_2;
mov slld_4 0@sint16;
mov slld_5 ymm11_4;
mov slld_6 0@sint16;
mov slld_7 ymm11_6;
mov slld_8 0@sint16;
mov slld_9 ymm11_8;
mov slld_a 0@sint16;
mov slld_b ymm11_a;
mov slld_c 0@sint16;
mov slld_d ymm11_c;
mov slld_e 0@sint16;
mov slld_f ymm11_e;
mov ymm9_0 slld_0;
mov ymm9_1 slld_1;
mov ymm9_2 slld_2;
mov ymm9_3 slld_3;
mov ymm9_4 slld_4;
mov ymm9_5 slld_5;
mov ymm9_6 slld_6;
mov ymm9_7 slld_7;
mov ymm9_8 slld_8;
mov ymm9_9 slld_9;
mov ymm9_a slld_a;
mov ymm9_b slld_b;
mov ymm9_c slld_c;
mov ymm9_d slld_d;
mov ymm9_e slld_e;
mov ymm9_f slld_f;
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f59e *)
mov bldw_0 ymm6_0;
mov bldw_1 ymm9_1;
mov bldw_2 ymm6_2;
mov bldw_3 ymm9_3;
mov bldw_4 ymm6_4;
mov bldw_5 ymm9_5;
mov bldw_6 ymm6_6;
mov bldw_7 ymm9_7;
mov bldw_8 ymm6_8;
mov bldw_9 ymm9_9;
mov bldw_a ymm6_a;
mov bldw_b ymm9_b;
mov bldw_c ymm6_c;
mov bldw_d ymm9_d;
mov bldw_e ymm6_e;
mov bldw_f ymm9_f;
mov ymm9_0 bldw_0;
mov ymm9_1 bldw_1;
mov ymm9_2 bldw_2;
mov ymm9_3 bldw_3;
mov ymm9_4 bldw_4;
mov ymm9_5 bldw_5;
mov ymm9_6 bldw_6;
mov ymm9_7 bldw_7;
mov ymm9_8 bldw_8;
mov ymm9_9 bldw_9;
mov ymm9_a bldw_a;
mov ymm9_b bldw_b;
mov ymm9_c bldw_c;
mov ymm9_d bldw_d;
mov ymm9_e bldw_e;
mov ymm9_f bldw_f;
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556f5a4 *)
mov srld_0 ymm6_1;
mov srld_1 0@sint16;
mov srld_2 ymm6_3;
mov srld_3 0@sint16;
mov srld_4 ymm6_5;
mov srld_5 0@sint16;
mov srld_6 ymm6_7;
mov srld_7 0@sint16;
mov srld_8 ymm6_9;
mov srld_9 0@sint16;
mov srld_a ymm6_b;
mov srld_b 0@sint16;
mov srld_c ymm6_d;
mov srld_d 0@sint16;
mov srld_e ymm6_f;
mov srld_f 0@sint16;
mov ymm6_0 srld_0;
mov ymm6_1 srld_1;
mov ymm6_2 srld_2;
mov ymm6_3 srld_3;
mov ymm6_4 srld_4;
mov ymm6_5 srld_5;
mov ymm6_6 srld_6;
mov ymm6_7 srld_7;
mov ymm6_8 srld_8;
mov ymm6_9 srld_9;
mov ymm6_a srld_a;
mov ymm6_b srld_b;
mov ymm6_c srld_c;
mov ymm6_d srld_d;
mov ymm6_e srld_e;
mov ymm6_f srld_f;
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556f5a9 *)
mov bldw_0 ymm6_0;
mov bldw_1 ymm11_1;
mov bldw_2 ymm6_2;
mov bldw_3 ymm11_3;
mov bldw_4 ymm6_4;
mov bldw_5 ymm11_5;
mov bldw_6 ymm6_6;
mov bldw_7 ymm11_7;
mov bldw_8 ymm6_8;
mov bldw_9 ymm11_9;
mov bldw_a ymm6_a;
mov bldw_b ymm11_b;
mov bldw_c ymm6_c;
mov bldw_d ymm11_d;
mov bldw_e ymm6_e;
mov bldw_f ymm11_f;
mov ymm11_0 bldw_0;
mov ymm11_1 bldw_1;
mov ymm11_2 bldw_2;
mov ymm11_3 bldw_3;
mov ymm11_4 bldw_4;
mov ymm11_5 bldw_5;
mov ymm11_6 bldw_6;
mov ymm11_7 bldw_7;
mov ymm11_8 bldw_8;
mov ymm11_9 bldw_9;
mov ymm11_a bldw_a;
mov ymm11_b bldw_b;
mov ymm11_c bldw_c;
mov ymm11_d bldw_d;
mov ymm11_e bldw_e;
mov ymm11_f bldw_f;
(* vmovdqa 0x420(%rsi),%ymm15                      #! EA = L0x555555639a00; Value = 0xdd3ec1f191a64dab; PC = 0x55555556f5af *)
mov ymm15_0 L0x555555639a00;
mov ymm15_1 L0x555555639a02;
mov ymm15_2 L0x555555639a04;
mov ymm15_3 L0x555555639a06;
mov ymm15_4 L0x555555639a08;
mov ymm15_5 L0x555555639a0a;
mov ymm15_6 L0x555555639a0c;
mov ymm15_7 L0x555555639a0e;
mov ymm15_8 L0x555555639a10;
mov ymm15_9 L0x555555639a12;
mov ymm15_a L0x555555639a14;
mov ymm15_b L0x555555639a16;
mov ymm15_c L0x555555639a18;
mov ymm15_d L0x555555639a1a;
mov ymm15_e L0x555555639a1c;
mov ymm15_f L0x555555639a1e;
(* vmovdqa 0x440(%rsi),%ymm2                       #! EA = L0x555555639a20; Value = 0x033efef1ffa6fcab; PC = 0x55555556f5b7 *)
mov ymm2_0 L0x555555639a20;
mov ymm2_1 L0x555555639a22;
mov ymm2_2 L0x555555639a24;
mov ymm2_3 L0x555555639a26;
mov ymm2_4 L0x555555639a28;
mov ymm2_5 L0x555555639a2a;
mov ymm2_6 L0x555555639a2c;
mov ymm2_7 L0x555555639a2e;
mov ymm2_8 L0x555555639a30;
mov ymm2_9 L0x555555639a32;
mov ymm2_a L0x555555639a34;
mov ymm2_b L0x555555639a36;
mov ymm2_c L0x555555639a38;
mov ymm2_d L0x555555639a3a;
mov ymm2_e L0x555555639a3c;
mov ymm2_f L0x555555639a3e;
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556f5bf *)
smull mulHymm5_0 mulL_0 ymm15_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm15_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm15_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm15_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm15_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm15_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm15_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm15_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm15_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm15_9 ymm5_9;
smull mulHymm5_a mulL_a ymm15_a ymm5_a;
smull mulHymm5_b mulL_b ymm15_b ymm5_b;
smull mulHymm5_c mulL_c ymm15_c ymm5_c;
smull mulHymm5_d mulL_d ymm15_d ymm5_d;
smull mulHymm5_e mulL_e ymm15_e ymm5_e;
smull mulHymm5_f mulL_f ymm15_f ymm5_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556f5c4 *)
smull mulHymm7_0 mulL_0 ymm15_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm15_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm15_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm15_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm15_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm15_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm15_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm15_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm15_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm15_9 ymm7_9;
smull mulHymm7_a mulL_a ymm15_a ymm7_a;
smull mulHymm7_b mulL_b ymm15_b ymm7_b;
smull mulHymm7_c mulL_c ymm15_c ymm7_c;
smull mulHymm7_d mulL_d ymm15_d ymm7_d;
smull mulHymm7_e mulL_e ymm15_e ymm7_e;
smull mulHymm7_f mulL_f ymm15_f ymm7_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f5c9 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f5ce *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f5d3 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm2_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm2_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm2_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm2_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm2_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm2_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm2_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm2_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm2_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm2_9;
smull mulH_a mulLymm5_a ymm5_a ymm2_a;
smull mulH_b mulLymm5_b ymm5_b ymm2_b;
smull mulH_c mulLymm5_c ymm5_c ymm2_c;
smull mulH_d mulLymm5_d ymm5_d ymm2_d;
smull mulH_e mulLymm5_e ymm5_e ymm2_e;
smull mulH_f mulLymm5_f ymm5_f ymm2_f;
mov ymm5_0 mulH_0;
mov ymm5_1 mulH_1;
mov ymm5_2 mulH_2;
mov ymm5_3 mulH_3;
mov ymm5_4 mulH_4;
mov ymm5_5 mulH_5;
mov ymm5_6 mulH_6;
mov ymm5_7 mulH_7;
mov ymm5_8 mulH_8;
mov ymm5_9 mulH_9;
mov ymm5_a mulH_a;
mov ymm5_b mulH_b;
mov ymm5_c mulH_c;
mov ymm5_d mulH_d;
mov ymm5_e mulH_e;
mov ymm5_f mulH_f;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f5d7 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm2_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm2_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm2_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm2_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm2_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm2_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm2_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm2_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm2_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm2_9;
smull mulH_a mulLymm7_a ymm7_a ymm2_a;
smull mulH_b mulLymm7_b ymm7_b ymm2_b;
smull mulH_c mulLymm7_c ymm7_c ymm2_c;
smull mulH_d mulLymm7_d ymm7_d ymm2_d;
smull mulH_e mulLymm7_e ymm7_e ymm2_e;
smull mulH_f mulLymm7_f ymm7_f ymm2_f;
mov ymm7_0 mulH_0;
mov ymm7_1 mulH_1;
mov ymm7_2 mulH_2;
mov ymm7_3 mulH_3;
mov ymm7_4 mulH_4;
mov ymm7_5 mulH_5;
mov ymm7_6 mulH_6;
mov ymm7_7 mulH_7;
mov ymm7_8 mulH_8;
mov ymm7_9 mulH_9;
mov ymm7_a mulH_a;
mov ymm7_b mulH_b;
mov ymm7_c mulH_c;
mov ymm7_d mulH_d;
mov ymm7_e mulH_e;
mov ymm7_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f5db *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f5df *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556f5e3 *)
mov slld_0 0@sint16;
mov slld_1 ymm10_0;
mov slld_2 0@sint16;
mov slld_3 ymm10_2;
mov slld_4 0@sint16;
mov slld_5 ymm10_4;
mov slld_6 0@sint16;
mov slld_7 ymm10_6;
mov slld_8 0@sint16;
mov slld_9 ymm10_8;
mov slld_a 0@sint16;
mov slld_b ymm10_a;
mov slld_c 0@sint16;
mov slld_d ymm10_c;
mov slld_e 0@sint16;
mov slld_f ymm10_e;
mov ymm6_0 slld_0;
mov ymm6_1 slld_1;
mov ymm6_2 slld_2;
mov ymm6_3 slld_3;
mov ymm6_4 slld_4;
mov ymm6_5 slld_5;
mov ymm6_6 slld_6;
mov ymm6_7 slld_7;
mov ymm6_8 slld_8;
mov ymm6_9 slld_9;
mov ymm6_a slld_a;
mov ymm6_b slld_b;
mov ymm6_c slld_c;
mov ymm6_d slld_d;
mov ymm6_e slld_e;
mov ymm6_f slld_f;
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f5e9 *)
mov bldw_0 ymm3_0;
mov bldw_1 ymm6_1;
mov bldw_2 ymm3_2;
mov bldw_3 ymm6_3;
mov bldw_4 ymm3_4;
mov bldw_5 ymm6_5;
mov bldw_6 ymm3_6;
mov bldw_7 ymm6_7;
mov bldw_8 ymm3_8;
mov bldw_9 ymm6_9;
mov bldw_a ymm3_a;
mov bldw_b ymm6_b;
mov bldw_c ymm3_c;
mov bldw_d ymm6_d;
mov bldw_e ymm3_e;
mov bldw_f ymm6_f;
mov ymm6_0 bldw_0;
mov ymm6_1 bldw_1;
mov ymm6_2 bldw_2;
mov ymm6_3 bldw_3;
mov ymm6_4 bldw_4;
mov ymm6_5 bldw_5;
mov ymm6_6 bldw_6;
mov ymm6_7 bldw_7;
mov ymm6_8 bldw_8;
mov ymm6_9 bldw_9;
mov ymm6_a bldw_a;
mov ymm6_b bldw_b;
mov ymm6_c bldw_c;
mov ymm6_d bldw_d;
mov ymm6_e bldw_e;
mov ymm6_f bldw_f;
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556f5ef *)
mov srld_0 ymm3_1;
mov srld_1 0@sint16;
mov srld_2 ymm3_3;
mov srld_3 0@sint16;
mov srld_4 ymm3_5;
mov srld_5 0@sint16;
mov srld_6 ymm3_7;
mov srld_7 0@sint16;
mov srld_8 ymm3_9;
mov srld_9 0@sint16;
mov srld_a ymm3_b;
mov srld_b 0@sint16;
mov srld_c ymm3_d;
mov srld_d 0@sint16;
mov srld_e ymm3_f;
mov srld_f 0@sint16;
mov ymm3_0 srld_0;
mov ymm3_1 srld_1;
mov ymm3_2 srld_2;
mov ymm3_3 srld_3;
mov ymm3_4 srld_4;
mov ymm3_5 srld_5;
mov ymm3_6 srld_6;
mov ymm3_7 srld_7;
mov ymm3_8 srld_8;
mov ymm3_9 srld_9;
mov ymm3_a srld_a;
mov ymm3_b srld_b;
mov ymm3_c srld_c;
mov ymm3_d srld_d;
mov ymm3_e srld_e;
mov ymm3_f srld_f;
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556f5f4 *)
mov bldw_0 ymm3_0;
mov bldw_1 ymm10_1;
mov bldw_2 ymm3_2;
mov bldw_3 ymm10_3;
mov bldw_4 ymm3_4;
mov bldw_5 ymm10_5;
mov bldw_6 ymm3_6;
mov bldw_7 ymm10_7;
mov bldw_8 ymm3_8;
mov bldw_9 ymm10_9;
mov bldw_a ymm3_a;
mov bldw_b ymm10_b;
mov bldw_c ymm3_c;
mov bldw_d ymm10_d;
mov bldw_e ymm3_e;
mov bldw_f ymm10_f;
mov ymm10_0 bldw_0;
mov ymm10_1 bldw_1;
mov ymm10_2 bldw_2;
mov ymm10_3 bldw_3;
mov ymm10_4 bldw_4;
mov ymm10_5 bldw_5;
mov ymm10_6 bldw_6;
mov ymm10_7 bldw_7;
mov ymm10_8 bldw_8;
mov ymm10_9 bldw_9;
mov ymm10_a bldw_a;
mov ymm10_b bldw_b;
mov ymm10_c bldw_c;
mov ymm10_d bldw_d;
mov ymm10_e bldw_e;
mov ymm10_f bldw_f;
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556f5fa *)
mov slld_0 0@sint16;
mov slld_1 ymm8_0;
mov slld_2 0@sint16;
mov slld_3 ymm8_2;
mov slld_4 0@sint16;
mov slld_5 ymm8_4;
mov slld_6 0@sint16;
mov slld_7 ymm8_6;
mov slld_8 0@sint16;
mov slld_9 ymm8_8;
mov slld_a 0@sint16;
mov slld_b ymm8_a;
mov slld_c 0@sint16;
mov slld_d ymm8_c;
mov slld_e 0@sint16;
mov slld_f ymm8_e;
mov ymm3_0 slld_0;
mov ymm3_1 slld_1;
mov ymm3_2 slld_2;
mov ymm3_3 slld_3;
mov ymm3_4 slld_4;
mov ymm3_5 slld_5;
mov ymm3_6 slld_6;
mov ymm3_7 slld_7;
mov ymm3_8 slld_8;
mov ymm3_9 slld_9;
mov ymm3_a slld_a;
mov ymm3_b slld_b;
mov ymm3_c slld_c;
mov ymm3_d slld_d;
mov ymm3_e slld_e;
mov ymm3_f slld_f;
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556f600 *)
mov bldw_0 ymm4_0;
mov bldw_1 ymm3_1;
mov bldw_2 ymm4_2;
mov bldw_3 ymm3_3;
mov bldw_4 ymm4_4;
mov bldw_5 ymm3_5;
mov bldw_6 ymm4_6;
mov bldw_7 ymm3_7;
mov bldw_8 ymm4_8;
mov bldw_9 ymm3_9;
mov bldw_a ymm4_a;
mov bldw_b ymm3_b;
mov bldw_c ymm4_c;
mov bldw_d ymm3_d;
mov bldw_e ymm4_e;
mov bldw_f ymm3_f;
mov ymm3_0 bldw_0;
mov ymm3_1 bldw_1;
mov ymm3_2 bldw_2;
mov ymm3_3 bldw_3;
mov ymm3_4 bldw_4;
mov ymm3_5 bldw_5;
mov ymm3_6 bldw_6;
mov ymm3_7 bldw_7;
mov ymm3_8 bldw_8;
mov ymm3_9 bldw_9;
mov ymm3_a bldw_a;
mov ymm3_b bldw_b;
mov ymm3_c bldw_c;
mov ymm3_d bldw_d;
mov ymm3_e bldw_e;
mov ymm3_f bldw_f;
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556f606 *)
mov srld_0 ymm4_1;
mov srld_1 0@sint16;
mov srld_2 ymm4_3;
mov srld_3 0@sint16;
mov srld_4 ymm4_5;
mov srld_5 0@sint16;
mov srld_6 ymm4_7;
mov srld_7 0@sint16;
mov srld_8 ymm4_9;
mov srld_9 0@sint16;
mov srld_a ymm4_b;
mov srld_b 0@sint16;
mov srld_c ymm4_d;
mov srld_d 0@sint16;
mov srld_e ymm4_f;
mov srld_f 0@sint16;
mov ymm4_0 srld_0;
mov ymm4_1 srld_1;
mov ymm4_2 srld_2;
mov ymm4_3 srld_3;
mov ymm4_4 srld_4;
mov ymm4_5 srld_5;
mov ymm4_6 srld_6;
mov ymm4_7 srld_7;
mov ymm4_8 srld_8;
mov ymm4_9 srld_9;
mov ymm4_a srld_a;
mov ymm4_b srld_b;
mov ymm4_c srld_c;
mov ymm4_d srld_d;
mov ymm4_e srld_e;
mov ymm4_f srld_f;
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556f60b *)
mov bldw_0 ymm4_0;
mov bldw_1 ymm8_1;
mov bldw_2 ymm4_2;
mov bldw_3 ymm8_3;
mov bldw_4 ymm4_4;
mov bldw_5 ymm8_5;
mov bldw_6 ymm4_6;
mov bldw_7 ymm8_7;
mov bldw_8 ymm4_8;
mov bldw_9 ymm8_9;
mov bldw_a ymm4_a;
mov bldw_b ymm8_b;
mov bldw_c ymm4_c;
mov bldw_d ymm8_d;
mov bldw_e ymm4_e;
mov bldw_f ymm8_f;
mov ymm8_0 bldw_0;
mov ymm8_1 bldw_1;
mov ymm8_2 bldw_2;
mov ymm8_3 bldw_3;
mov ymm8_4 bldw_4;
mov ymm8_5 bldw_5;
mov ymm8_6 bldw_6;
mov ymm8_7 bldw_7;
mov ymm8_8 bldw_8;
mov ymm8_9 bldw_9;
mov ymm8_a bldw_a;
mov ymm8_b bldw_b;
mov ymm8_c bldw_c;
mov ymm8_d bldw_d;
mov ymm8_e bldw_e;
mov ymm8_f bldw_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f611 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm5_0;
assume red_0 = mulLymm5_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm5_1;
assume red_1 = mulLymm5_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm5_2;
assume red_2 = mulLymm5_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm5_3;
assume red_3 = mulLymm5_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm5_4;
assume red_4 = mulLymm5_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm5_5;
assume red_5 = mulLymm5_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm5_6;
assume red_6 = mulLymm5_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm5_7;
assume red_7 = mulLymm5_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm5_8;
assume red_8 = mulLymm5_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm5_9;
assume red_9 = mulLymm5_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm5_a;
assume red_a = mulLymm5_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm5_b;
assume red_b = mulLymm5_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm5_c;
assume red_c = mulLymm5_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm5_d;
assume red_d = mulLymm5_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm5_e;
assume red_e = mulLymm5_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm5_f;
assume red_f = mulLymm5_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f615 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm7_0;
assume red_0 = mulLymm7_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm7_1;
assume red_1 = mulLymm7_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm7_2;
assume red_2 = mulLymm7_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm7_3;
assume red_3 = mulLymm7_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm7_4;
assume red_4 = mulLymm7_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm7_5;
assume red_5 = mulLymm7_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm7_6;
assume red_6 = mulLymm7_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm7_7;
assume red_7 = mulLymm7_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm7_8;
assume red_8 = mulLymm7_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm7_9;
assume red_9 = mulLymm7_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm7_a;
assume red_a = mulLymm7_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm7_b;
assume red_b = mulLymm7_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm7_c;
assume red_c = mulLymm7_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm7_d;
assume red_d = mulLymm7_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm7_e;
assume red_e = mulLymm7_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm7_f;
assume red_f = mulLymm7_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f619 *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f61d *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556f621 *)
add ymm4_0 ymm6_0 ymm5_0;
add ymm4_1 ymm6_1 ymm5_1;
add ymm4_2 ymm6_2 ymm5_2;
add ymm4_3 ymm6_3 ymm5_3;
add ymm4_4 ymm6_4 ymm5_4;
add ymm4_5 ymm6_5 ymm5_5;
add ymm4_6 ymm6_6 ymm5_6;
add ymm4_7 ymm6_7 ymm5_7;
add ymm4_8 ymm6_8 ymm5_8;
add ymm4_9 ymm6_9 ymm5_9;
add ymm4_a ymm6_a ymm5_a;
add ymm4_b ymm6_b ymm5_b;
add ymm4_c ymm6_c ymm5_c;
add ymm4_d ymm6_d ymm5_d;
add ymm4_e ymm6_e ymm5_e;
add ymm4_f ymm6_f ymm5_f;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556f625 *)
sub ymm5_0 ymm6_0 ymm5_0;
sub ymm5_1 ymm6_1 ymm5_1;
sub ymm5_2 ymm6_2 ymm5_2;
sub ymm5_3 ymm6_3 ymm5_3;
sub ymm5_4 ymm6_4 ymm5_4;
sub ymm5_5 ymm6_5 ymm5_5;
sub ymm5_6 ymm6_6 ymm5_6;
sub ymm5_7 ymm6_7 ymm5_7;
sub ymm5_8 ymm6_8 ymm5_8;
sub ymm5_9 ymm6_9 ymm5_9;
sub ymm5_a ymm6_a ymm5_a;
sub ymm5_b ymm6_b ymm5_b;
sub ymm5_c ymm6_c ymm5_c;
sub ymm5_d ymm6_d ymm5_d;
sub ymm5_e ymm6_e ymm5_e;
sub ymm5_f ymm6_f ymm5_f;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556f629 *)
add ymm6_0 ymm10_0 ymm7_0;
add ymm6_1 ymm10_1 ymm7_1;
add ymm6_2 ymm10_2 ymm7_2;
add ymm6_3 ymm10_3 ymm7_3;
add ymm6_4 ymm10_4 ymm7_4;
add ymm6_5 ymm10_5 ymm7_5;
add ymm6_6 ymm10_6 ymm7_6;
add ymm6_7 ymm10_7 ymm7_7;
add ymm6_8 ymm10_8 ymm7_8;
add ymm6_9 ymm10_9 ymm7_9;
add ymm6_a ymm10_a ymm7_a;
add ymm6_b ymm10_b ymm7_b;
add ymm6_c ymm10_c ymm7_c;
add ymm6_d ymm10_d ymm7_d;
add ymm6_e ymm10_e ymm7_e;
add ymm6_f ymm10_f ymm7_f;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556f62d *)
sub ymm7_0 ymm10_0 ymm7_0;
sub ymm7_1 ymm10_1 ymm7_1;
sub ymm7_2 ymm10_2 ymm7_2;
sub ymm7_3 ymm10_3 ymm7_3;
sub ymm7_4 ymm10_4 ymm7_4;
sub ymm7_5 ymm10_5 ymm7_5;
sub ymm7_6 ymm10_6 ymm7_6;
sub ymm7_7 ymm10_7 ymm7_7;
sub ymm7_8 ymm10_8 ymm7_8;
sub ymm7_9 ymm10_9 ymm7_9;
sub ymm7_a ymm10_a ymm7_a;
sub ymm7_b ymm10_b ymm7_b;
sub ymm7_c ymm10_c ymm7_c;
sub ymm7_d ymm10_d ymm7_d;
sub ymm7_e ymm10_e ymm7_e;
sub ymm7_f ymm10_f ymm7_f;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556f631 *)
add ymm10_0 ymm3_0 ymm9_0;
add ymm10_1 ymm3_1 ymm9_1;
add ymm10_2 ymm3_2 ymm9_2;
add ymm10_3 ymm3_3 ymm9_3;
add ymm10_4 ymm3_4 ymm9_4;
add ymm10_5 ymm3_5 ymm9_5;
add ymm10_6 ymm3_6 ymm9_6;
add ymm10_7 ymm3_7 ymm9_7;
add ymm10_8 ymm3_8 ymm9_8;
add ymm10_9 ymm3_9 ymm9_9;
add ymm10_a ymm3_a ymm9_a;
add ymm10_b ymm3_b ymm9_b;
add ymm10_c ymm3_c ymm9_c;
add ymm10_d ymm3_d ymm9_d;
add ymm10_e ymm3_e ymm9_e;
add ymm10_f ymm3_f ymm9_f;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f636 *)
sub ymm9_0 ymm3_0 ymm9_0;
sub ymm9_1 ymm3_1 ymm9_1;
sub ymm9_2 ymm3_2 ymm9_2;
sub ymm9_3 ymm3_3 ymm9_3;
sub ymm9_4 ymm3_4 ymm9_4;
sub ymm9_5 ymm3_5 ymm9_5;
sub ymm9_6 ymm3_6 ymm9_6;
sub ymm9_7 ymm3_7 ymm9_7;
sub ymm9_8 ymm3_8 ymm9_8;
sub ymm9_9 ymm3_9 ymm9_9;
sub ymm9_a ymm3_a ymm9_a;
sub ymm9_b ymm3_b ymm9_b;
sub ymm9_c ymm3_c ymm9_c;
sub ymm9_d ymm3_d ymm9_d;
sub ymm9_e ymm3_e ymm9_e;
sub ymm9_f ymm3_f ymm9_f;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556f63b *)
add ymm3_0 ymm8_0 ymm11_0;
add ymm3_1 ymm8_1 ymm11_1;
add ymm3_2 ymm8_2 ymm11_2;
add ymm3_3 ymm8_3 ymm11_3;
add ymm3_4 ymm8_4 ymm11_4;
add ymm3_5 ymm8_5 ymm11_5;
add ymm3_6 ymm8_6 ymm11_6;
add ymm3_7 ymm8_7 ymm11_7;
add ymm3_8 ymm8_8 ymm11_8;
add ymm3_9 ymm8_9 ymm11_9;
add ymm3_a ymm8_a ymm11_a;
add ymm3_b ymm8_b ymm11_b;
add ymm3_c ymm8_c ymm11_c;
add ymm3_d ymm8_d ymm11_d;
add ymm3_e ymm8_e ymm11_e;
add ymm3_f ymm8_f ymm11_f;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556f640 *)
sub ymm11_0 ymm8_0 ymm11_0;
sub ymm11_1 ymm8_1 ymm11_1;
sub ymm11_2 ymm8_2 ymm11_2;
sub ymm11_3 ymm8_3 ymm11_3;
sub ymm11_4 ymm8_4 ymm11_4;
sub ymm11_5 ymm8_5 ymm11_5;
sub ymm11_6 ymm8_6 ymm11_6;
sub ymm11_7 ymm8_7 ymm11_7;
sub ymm11_8 ymm8_8 ymm11_8;
sub ymm11_9 ymm8_9 ymm11_9;
sub ymm11_a ymm8_a ymm11_a;
sub ymm11_b ymm8_b ymm11_b;
sub ymm11_c ymm8_c ymm11_c;
sub ymm11_d ymm8_d ymm11_d;
sub ymm11_e ymm8_e ymm11_e;
sub ymm11_f ymm8_f ymm11_f;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f645 *)
sub ymm4_0 ymm4_0 ymm12_0;
sub ymm4_1 ymm4_1 ymm12_1;
sub ymm4_2 ymm4_2 ymm12_2;
sub ymm4_3 ymm4_3 ymm12_3;
sub ymm4_4 ymm4_4 ymm12_4;
sub ymm4_5 ymm4_5 ymm12_5;
sub ymm4_6 ymm4_6 ymm12_6;
sub ymm4_7 ymm4_7 ymm12_7;
sub ymm4_8 ymm4_8 ymm12_8;
sub ymm4_9 ymm4_9 ymm12_9;
sub ymm4_a ymm4_a ymm12_a;
sub ymm4_b ymm4_b ymm12_b;
sub ymm4_c ymm4_c ymm12_c;
sub ymm4_d ymm4_d ymm12_d;
sub ymm4_e ymm4_e ymm12_e;
sub ymm4_f ymm4_f ymm12_f;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556f64a *)
add ymm5_0 ymm5_0 ymm12_0;
add ymm5_1 ymm5_1 ymm12_1;
add ymm5_2 ymm5_2 ymm12_2;
add ymm5_3 ymm5_3 ymm12_3;
add ymm5_4 ymm5_4 ymm12_4;
add ymm5_5 ymm5_5 ymm12_5;
add ymm5_6 ymm5_6 ymm12_6;
add ymm5_7 ymm5_7 ymm12_7;
add ymm5_8 ymm5_8 ymm12_8;
add ymm5_9 ymm5_9 ymm12_9;
add ymm5_a ymm5_a ymm12_a;
add ymm5_b ymm5_b ymm12_b;
add ymm5_c ymm5_c ymm12_c;
add ymm5_d ymm5_d ymm12_d;
add ymm5_e ymm5_e ymm12_e;
add ymm5_f ymm5_f ymm12_f;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f64f *)
sub ymm6_0 ymm6_0 ymm13_0;
sub ymm6_1 ymm6_1 ymm13_1;
sub ymm6_2 ymm6_2 ymm13_2;
sub ymm6_3 ymm6_3 ymm13_3;
sub ymm6_4 ymm6_4 ymm13_4;
sub ymm6_5 ymm6_5 ymm13_5;
sub ymm6_6 ymm6_6 ymm13_6;
sub ymm6_7 ymm6_7 ymm13_7;
sub ymm6_8 ymm6_8 ymm13_8;
sub ymm6_9 ymm6_9 ymm13_9;
sub ymm6_a ymm6_a ymm13_a;
sub ymm6_b ymm6_b ymm13_b;
sub ymm6_c ymm6_c ymm13_c;
sub ymm6_d ymm6_d ymm13_d;
sub ymm6_e ymm6_e ymm13_e;
sub ymm6_f ymm6_f ymm13_f;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556f654 *)
add ymm7_0 ymm7_0 ymm13_0;
add ymm7_1 ymm7_1 ymm13_1;
add ymm7_2 ymm7_2 ymm13_2;
add ymm7_3 ymm7_3 ymm13_3;
add ymm7_4 ymm7_4 ymm13_4;
add ymm7_5 ymm7_5 ymm13_5;
add ymm7_6 ymm7_6 ymm13_6;
add ymm7_7 ymm7_7 ymm13_7;
add ymm7_8 ymm7_8 ymm13_8;
add ymm7_9 ymm7_9 ymm13_9;
add ymm7_a ymm7_a ymm13_a;
add ymm7_b ymm7_b ymm13_b;
add ymm7_c ymm7_c ymm13_c;
add ymm7_d ymm7_d ymm13_d;
add ymm7_e ymm7_e ymm13_e;
add ymm7_f ymm7_f ymm13_f;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f659 *)
sub ymm10_0 ymm10_0 ymm14_0;
sub ymm10_1 ymm10_1 ymm14_1;
sub ymm10_2 ymm10_2 ymm14_2;
sub ymm10_3 ymm10_3 ymm14_3;
sub ymm10_4 ymm10_4 ymm14_4;
sub ymm10_5 ymm10_5 ymm14_5;
sub ymm10_6 ymm10_6 ymm14_6;
sub ymm10_7 ymm10_7 ymm14_7;
sub ymm10_8 ymm10_8 ymm14_8;
sub ymm10_9 ymm10_9 ymm14_9;
sub ymm10_a ymm10_a ymm14_a;
sub ymm10_b ymm10_b ymm14_b;
sub ymm10_c ymm10_c ymm14_c;
sub ymm10_d ymm10_d ymm14_d;
sub ymm10_e ymm10_e ymm14_e;
sub ymm10_f ymm10_f ymm14_f;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f65e *)
add ymm9_0 ymm9_0 ymm14_0;
add ymm9_1 ymm9_1 ymm14_1;
add ymm9_2 ymm9_2 ymm14_2;
add ymm9_3 ymm9_3 ymm14_3;
add ymm9_4 ymm9_4 ymm14_4;
add ymm9_5 ymm9_5 ymm14_5;
add ymm9_6 ymm9_6 ymm14_6;
add ymm9_7 ymm9_7 ymm14_7;
add ymm9_8 ymm9_8 ymm14_8;
add ymm9_9 ymm9_9 ymm14_9;
add ymm9_a ymm9_a ymm14_a;
add ymm9_b ymm9_b ymm14_b;
add ymm9_c ymm9_c ymm14_c;
add ymm9_d ymm9_d ymm14_d;
add ymm9_e ymm9_e ymm14_e;
add ymm9_f ymm9_f ymm14_f;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f663 *)
sub ymm3_0 ymm3_0 ymm15_0;
sub ymm3_1 ymm3_1 ymm15_1;
sub ymm3_2 ymm3_2 ymm15_2;
sub ymm3_3 ymm3_3 ymm15_3;
sub ymm3_4 ymm3_4 ymm15_4;
sub ymm3_5 ymm3_5 ymm15_5;
sub ymm3_6 ymm3_6 ymm15_6;
sub ymm3_7 ymm3_7 ymm15_7;
sub ymm3_8 ymm3_8 ymm15_8;
sub ymm3_9 ymm3_9 ymm15_9;
sub ymm3_a ymm3_a ymm15_a;
sub ymm3_b ymm3_b ymm15_b;
sub ymm3_c ymm3_c ymm15_c;
sub ymm3_d ymm3_d ymm15_d;
sub ymm3_e ymm3_e ymm15_e;
sub ymm3_f ymm3_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f668 *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;

(*********** SUMMARY OF LEVEL 5 0 ***********)



cut 
and [
eqmod (inp_poly**2)
(ymm4_0*(x**0) + ymm6_0*(x**1) + ymm10_0*(x**2) + ymm3_0*(x**3))
[3329, x**4 - (2319)],
eqmod (inp_poly**2)
(ymm5_0*(x**0) + ymm7_0*(x**1) + ymm9_0*(x**2) + ymm11_0*(x**3))
[3329, x**4 - (1010)],
eqmod (inp_poly**2)
(ymm4_1*(x**0) + ymm6_1*(x**1) + ymm10_1*(x**2) + ymm3_1*(x**3))
[3329, x**4 - (1435)],
eqmod (inp_poly**2)
(ymm5_1*(x**0) + ymm7_1*(x**1) + ymm9_1*(x**2) + ymm11_1*(x**3))
[3329, x**4 - (1894)],
eqmod (inp_poly**2)
(ymm4_2*(x**0) + ymm6_2*(x**1) + ymm10_2*(x**2) + ymm3_2*(x**3))
[3329, x**4 - (807)],
eqmod (inp_poly**2)
(ymm5_2*(x**0) + ymm7_2*(x**1) + ymm9_2*(x**2) + ymm11_2*(x**3))
[3329, x**4 - (2522)],
eqmod (inp_poly**2)
(ymm4_3*(x**0) + ymm6_3*(x**1) + ymm10_3*(x**2) + ymm3_3*(x**3))
[3329, x**4 - (452)],
eqmod (inp_poly**2)
(ymm5_3*(x**0) + ymm7_3*(x**1) + ymm9_3*(x**2) + ymm11_3*(x**3))
[3329, x**4 - (2877)],
eqmod (inp_poly**2)
(ymm4_4*(x**0) + ymm6_4*(x**1) + ymm10_4*(x**2) + ymm3_4*(x**3))
[3329, x**4 - (1438)],
eqmod (inp_poly**2)
(ymm5_4*(x**0) + ymm7_4*(x**1) + ymm9_4*(x**2) + ymm11_4*(x**3))
[3329, x**4 - (1891)],
eqmod (inp_poly**2)
(ymm4_5*(x**0) + ymm6_5*(x**1) + ymm10_5*(x**2) + ymm3_5*(x**3))
[3329, x**4 - (2868)],
eqmod (inp_poly**2)
(ymm5_5*(x**0) + ymm7_5*(x**1) + ymm9_5*(x**2) + ymm11_5*(x**3))
[3329, x**4 - (461)],
eqmod (inp_poly**2)
(ymm4_6*(x**0) + ymm6_6*(x**1) + ymm10_6*(x**2) + ymm3_6*(x**3))
[3329, x**4 - (1534)],
eqmod (inp_poly**2)
(ymm5_6*(x**0) + ymm7_6*(x**1) + ymm9_6*(x**2) + ymm11_6*(x**3))
[3329, x**4 - (1795)],
eqmod (inp_poly**2)
(ymm4_7*(x**0) + ymm6_7*(x**1) + ymm10_7*(x**2) + ymm3_7*(x**3))
[3329, x**4 - (2402)],
eqmod (inp_poly**2)
(ymm5_7*(x**0) + ymm7_7*(x**1) + ymm9_7*(x**2) + ymm11_7*(x**3))
[3329, x**4 - (927)],
eqmod (inp_poly**2)
(ymm4_8*(x**0) + ymm6_8*(x**1) + ymm10_8*(x**2) + ymm3_8*(x**3))
[3329, x**4 - (2647)],
eqmod (inp_poly**2)
(ymm5_8*(x**0) + ymm7_8*(x**1) + ymm9_8*(x**2) + ymm11_8*(x**3))
[3329, x**4 - (682)],
eqmod (inp_poly**2)
(ymm4_9*(x**0) + ymm6_9*(x**1) + ymm10_9*(x**2) + ymm3_9*(x**3))
[3329, x**4 - (2617)],
eqmod (inp_poly**2)
(ymm5_9*(x**0) + ymm7_9*(x**1) + ymm9_9*(x**2) + ymm11_9*(x**3))
[3329, x**4 - (712)],
eqmod (inp_poly**2)
(ymm4_a*(x**0) + ymm6_a*(x**1) + ymm10_a*(x**2) + ymm3_a*(x**3))
[3329, x**4 - (1481)],
eqmod (inp_poly**2)
(ymm5_a*(x**0) + ymm7_a*(x**1) + ymm9_a*(x**2) + ymm11_a*(x**3))
[3329, x**4 - (1848)],
eqmod (inp_poly**2)
(ymm4_b*(x**0) + ymm6_b*(x**1) + ymm10_b*(x**2) + ymm3_b*(x**3))
[3329, x**4 - (648)],
eqmod (inp_poly**2)
(ymm5_b*(x**0) + ymm7_b*(x**1) + ymm9_b*(x**2) + ymm11_b*(x**3))
[3329, x**4 - (2681)],
eqmod (inp_poly**2)
(ymm4_c*(x**0) + ymm6_c*(x**1) + ymm10_c*(x**2) + ymm3_c*(x**3))
[3329, x**4 - (2474)],
eqmod (inp_poly**2)
(ymm5_c*(x**0) + ymm7_c*(x**1) + ymm9_c*(x**2) + ymm11_c*(x**3))
[3329, x**4 - (855)],
eqmod (inp_poly**2)
(ymm4_d*(x**0) + ymm6_d*(x**1) + ymm10_d*(x**2) + ymm3_d*(x**3))
[3329, x**4 - (3110)],
eqmod (inp_poly**2)
(ymm5_d*(x**0) + ymm7_d*(x**1) + ymm9_d*(x**2) + ymm11_d*(x**3))
[3329, x**4 - (219)],
eqmod (inp_poly**2)
(ymm4_e*(x**0) + ymm6_e*(x**1) + ymm10_e*(x**2) + ymm3_e*(x**3))
[3329, x**4 - (1227)],
eqmod (inp_poly**2)
(ymm5_e*(x**0) + ymm7_e*(x**1) + ymm9_e*(x**2) + ymm11_e*(x**3))
[3329, x**4 - (2102)],
eqmod (inp_poly**2)
(ymm4_f*(x**0) + ymm6_f*(x**1) + ymm10_f*(x**2) + ymm3_f*(x**3))
[3329, x**4 - (910)],
eqmod (inp_poly**2)
(ymm5_f*(x**0) + ymm7_f*(x**1) + ymm9_f*(x**2) + ymm11_f*(x**3))
[3329, x**4 - (2419)]]
prove with [ cuts [ 4 ] ] &&
and [
(-23303)@16 <s ymm4_0, ymm4_0 <s (23303)@16,
(-23303)@16 <s ymm6_0, ymm6_0 <s (23303)@16,
(-23303)@16 <s ymm10_0, ymm10_0 <s (23303)@16,
(-23303)@16 <s ymm3_0, ymm3_0 <s (23303)@16,
(-23303)@16 <s ymm5_0, ymm5_0 <s (23303)@16,
(-23303)@16 <s ymm7_0, ymm7_0 <s (23303)@16,
(-23303)@16 <s ymm9_0, ymm9_0 <s (23303)@16,
(-23303)@16 <s ymm11_0, ymm11_0 <s (23303)@16,
(-23303)@16 <s ymm4_1, ymm4_1 <s (23303)@16,
(-23303)@16 <s ymm6_1, ymm6_1 <s (23303)@16,
(-23303)@16 <s ymm10_1, ymm10_1 <s (23303)@16,
(-23303)@16 <s ymm3_1, ymm3_1 <s (23303)@16,
(-23303)@16 <s ymm5_1, ymm5_1 <s (23303)@16,
(-23303)@16 <s ymm7_1, ymm7_1 <s (23303)@16,
(-23303)@16 <s ymm9_1, ymm9_1 <s (23303)@16,
(-23303)@16 <s ymm11_1, ymm11_1 <s (23303)@16,
(-23303)@16 <s ymm4_2, ymm4_2 <s (23303)@16,
(-23303)@16 <s ymm6_2, ymm6_2 <s (23303)@16,
(-23303)@16 <s ymm10_2, ymm10_2 <s (23303)@16,
(-23303)@16 <s ymm3_2, ymm3_2 <s (23303)@16,
(-23303)@16 <s ymm5_2, ymm5_2 <s (23303)@16,
(-23303)@16 <s ymm7_2, ymm7_2 <s (23303)@16,
(-23303)@16 <s ymm9_2, ymm9_2 <s (23303)@16,
(-23303)@16 <s ymm11_2, ymm11_2 <s (23303)@16,
(-23303)@16 <s ymm4_3, ymm4_3 <s (23303)@16,
(-23303)@16 <s ymm6_3, ymm6_3 <s (23303)@16,
(-23303)@16 <s ymm10_3, ymm10_3 <s (23303)@16,
(-23303)@16 <s ymm3_3, ymm3_3 <s (23303)@16,
(-23303)@16 <s ymm5_3, ymm5_3 <s (23303)@16,
(-23303)@16 <s ymm7_3, ymm7_3 <s (23303)@16,
(-23303)@16 <s ymm9_3, ymm9_3 <s (23303)@16,
(-23303)@16 <s ymm11_3, ymm11_3 <s (23303)@16,
(-23303)@16 <s ymm4_4, ymm4_4 <s (23303)@16,
(-23303)@16 <s ymm6_4, ymm6_4 <s (23303)@16,
(-23303)@16 <s ymm10_4, ymm10_4 <s (23303)@16,
(-23303)@16 <s ymm3_4, ymm3_4 <s (23303)@16,
(-23303)@16 <s ymm5_4, ymm5_4 <s (23303)@16,
(-23303)@16 <s ymm7_4, ymm7_4 <s (23303)@16,
(-23303)@16 <s ymm9_4, ymm9_4 <s (23303)@16,
(-23303)@16 <s ymm11_4, ymm11_4 <s (23303)@16,
(-23303)@16 <s ymm4_5, ymm4_5 <s (23303)@16,
(-23303)@16 <s ymm6_5, ymm6_5 <s (23303)@16,
(-23303)@16 <s ymm10_5, ymm10_5 <s (23303)@16,
(-23303)@16 <s ymm3_5, ymm3_5 <s (23303)@16,
(-23303)@16 <s ymm5_5, ymm5_5 <s (23303)@16,
(-23303)@16 <s ymm7_5, ymm7_5 <s (23303)@16,
(-23303)@16 <s ymm9_5, ymm9_5 <s (23303)@16,
(-23303)@16 <s ymm11_5, ymm11_5 <s (23303)@16,
(-23303)@16 <s ymm4_6, ymm4_6 <s (23303)@16,
(-23303)@16 <s ymm6_6, ymm6_6 <s (23303)@16,
(-23303)@16 <s ymm10_6, ymm10_6 <s (23303)@16,
(-23303)@16 <s ymm3_6, ymm3_6 <s (23303)@16,
(-23303)@16 <s ymm5_6, ymm5_6 <s (23303)@16,
(-23303)@16 <s ymm7_6, ymm7_6 <s (23303)@16,
(-23303)@16 <s ymm9_6, ymm9_6 <s (23303)@16,
(-23303)@16 <s ymm11_6, ymm11_6 <s (23303)@16,
(-23303)@16 <s ymm4_7, ymm4_7 <s (23303)@16,
(-23303)@16 <s ymm6_7, ymm6_7 <s (23303)@16,
(-23303)@16 <s ymm10_7, ymm10_7 <s (23303)@16,
(-23303)@16 <s ymm3_7, ymm3_7 <s (23303)@16,
(-23303)@16 <s ymm5_7, ymm5_7 <s (23303)@16,
(-23303)@16 <s ymm7_7, ymm7_7 <s (23303)@16,
(-23303)@16 <s ymm9_7, ymm9_7 <s (23303)@16,
(-23303)@16 <s ymm11_7, ymm11_7 <s (23303)@16,
(-23303)@16 <s ymm4_8, ymm4_8 <s (23303)@16,
(-23303)@16 <s ymm6_8, ymm6_8 <s (23303)@16,
(-23303)@16 <s ymm10_8, ymm10_8 <s (23303)@16,
(-23303)@16 <s ymm3_8, ymm3_8 <s (23303)@16,
(-23303)@16 <s ymm5_8, ymm5_8 <s (23303)@16,
(-23303)@16 <s ymm7_8, ymm7_8 <s (23303)@16,
(-23303)@16 <s ymm9_8, ymm9_8 <s (23303)@16,
(-23303)@16 <s ymm11_8, ymm11_8 <s (23303)@16,
(-23303)@16 <s ymm4_9, ymm4_9 <s (23303)@16,
(-23303)@16 <s ymm6_9, ymm6_9 <s (23303)@16,
(-23303)@16 <s ymm10_9, ymm10_9 <s (23303)@16,
(-23303)@16 <s ymm3_9, ymm3_9 <s (23303)@16,
(-23303)@16 <s ymm5_9, ymm5_9 <s (23303)@16,
(-23303)@16 <s ymm7_9, ymm7_9 <s (23303)@16,
(-23303)@16 <s ymm9_9, ymm9_9 <s (23303)@16,
(-23303)@16 <s ymm11_9, ymm11_9 <s (23303)@16,
(-23303)@16 <s ymm4_a, ymm4_a <s (23303)@16,
(-23303)@16 <s ymm6_a, ymm6_a <s (23303)@16,
(-23303)@16 <s ymm10_a, ymm10_a <s (23303)@16,
(-23303)@16 <s ymm3_a, ymm3_a <s (23303)@16,
(-23303)@16 <s ymm5_a, ymm5_a <s (23303)@16,
(-23303)@16 <s ymm7_a, ymm7_a <s (23303)@16,
(-23303)@16 <s ymm9_a, ymm9_a <s (23303)@16,
(-23303)@16 <s ymm11_a, ymm11_a <s (23303)@16,
(-23303)@16 <s ymm4_b, ymm4_b <s (23303)@16,
(-23303)@16 <s ymm6_b, ymm6_b <s (23303)@16,
(-23303)@16 <s ymm10_b, ymm10_b <s (23303)@16,
(-23303)@16 <s ymm3_b, ymm3_b <s (23303)@16,
(-23303)@16 <s ymm5_b, ymm5_b <s (23303)@16,
(-23303)@16 <s ymm7_b, ymm7_b <s (23303)@16,
(-23303)@16 <s ymm9_b, ymm9_b <s (23303)@16,
(-23303)@16 <s ymm11_b, ymm11_b <s (23303)@16,
(-23303)@16 <s ymm4_c, ymm4_c <s (23303)@16,
(-23303)@16 <s ymm6_c, ymm6_c <s (23303)@16,
(-23303)@16 <s ymm10_c, ymm10_c <s (23303)@16,
(-23303)@16 <s ymm3_c, ymm3_c <s (23303)@16,
(-23303)@16 <s ymm5_c, ymm5_c <s (23303)@16,
(-23303)@16 <s ymm7_c, ymm7_c <s (23303)@16,
(-23303)@16 <s ymm9_c, ymm9_c <s (23303)@16,
(-23303)@16 <s ymm11_c, ymm11_c <s (23303)@16,
(-23303)@16 <s ymm4_d, ymm4_d <s (23303)@16,
(-23303)@16 <s ymm6_d, ymm6_d <s (23303)@16,
(-23303)@16 <s ymm10_d, ymm10_d <s (23303)@16,
(-23303)@16 <s ymm3_d, ymm3_d <s (23303)@16,
(-23303)@16 <s ymm5_d, ymm5_d <s (23303)@16,
(-23303)@16 <s ymm7_d, ymm7_d <s (23303)@16,
(-23303)@16 <s ymm9_d, ymm9_d <s (23303)@16,
(-23303)@16 <s ymm11_d, ymm11_d <s (23303)@16,
(-23303)@16 <s ymm4_e, ymm4_e <s (23303)@16,
(-23303)@16 <s ymm6_e, ymm6_e <s (23303)@16,
(-23303)@16 <s ymm10_e, ymm10_e <s (23303)@16,
(-23303)@16 <s ymm3_e, ymm3_e <s (23303)@16,
(-23303)@16 <s ymm5_e, ymm5_e <s (23303)@16,
(-23303)@16 <s ymm7_e, ymm7_e <s (23303)@16,
(-23303)@16 <s ymm9_e, ymm9_e <s (23303)@16,
(-23303)@16 <s ymm11_e, ymm11_e <s (23303)@16,
(-23303)@16 <s ymm4_f, ymm4_f <s (23303)@16,
(-23303)@16 <s ymm6_f, ymm6_f <s (23303)@16,
(-23303)@16 <s ymm10_f, ymm10_f <s (23303)@16,
(-23303)@16 <s ymm3_f, ymm3_f <s (23303)@16,
(-23303)@16 <s ymm5_f, ymm5_f <s (23303)@16,
(-23303)@16 <s ymm7_f, ymm7_f <s (23303)@16,
(-23303)@16 <s ymm9_f, ymm9_f <s (23303)@16,
(-23303)@16 <s ymm11_f, ymm11_f <s (23303)@16]
prove with [ cuts [ 4 ] ] ;


(* vmovdqa 0x460(%rsi),%ymm14                      #! EA = L0x555555639a40; Value = 0x5f47e32a635b8631; PC = 0x55555556f66d *)
mov ymm14_0 L0x555555639a40;
mov ymm14_1 L0x555555639a42;
mov ymm14_2 L0x555555639a44;
mov ymm14_3 L0x555555639a46;
mov ymm14_4 L0x555555639a48;
mov ymm14_5 L0x555555639a4a;
mov ymm14_6 L0x555555639a4c;
mov ymm14_7 L0x555555639a4e;
mov ymm14_8 L0x555555639a50;
mov ymm14_9 L0x555555639a52;
mov ymm14_a L0x555555639a54;
mov ymm14_b L0x555555639a56;
mov ymm14_c L0x555555639a58;
mov ymm14_d L0x555555639a5a;
mov ymm14_e L0x555555639a5c;
mov ymm14_f L0x555555639a5e;
(* vmovdqa 0x4a0(%rsi),%ymm15                      #! EA = L0x555555639a80; Value = 0x81803bfb08624f49; PC = 0x55555556f675 *)
mov ymm15_0 L0x555555639a80;
mov ymm15_1 L0x555555639a82;
mov ymm15_2 L0x555555639a84;
mov ymm15_3 L0x555555639a86;
mov ymm15_4 L0x555555639a88;
mov ymm15_5 L0x555555639a8a;
mov ymm15_6 L0x555555639a8c;
mov ymm15_7 L0x555555639a8e;
mov ymm15_8 L0x555555639a90;
mov ymm15_9 L0x555555639a92;
mov ymm15_a L0x555555639a94;
mov ymm15_b L0x555555639a96;
mov ymm15_c L0x555555639a98;
mov ymm15_d L0x555555639a9a;
mov ymm15_e L0x555555639a9c;
mov ymm15_f L0x555555639a9e;
(* vmovdqa 0x480(%rsi),%ymm8                       #! EA = L0x555555639a60; Value = 0xfa47052a025b0331; PC = 0x55555556f67d *)
mov ymm8_0 L0x555555639a60;
mov ymm8_1 L0x555555639a62;
mov ymm8_2 L0x555555639a64;
mov ymm8_3 L0x555555639a66;
mov ymm8_4 L0x555555639a68;
mov ymm8_5 L0x555555639a6a;
mov ymm8_6 L0x555555639a6c;
mov ymm8_7 L0x555555639a6e;
mov ymm8_8 L0x555555639a70;
mov ymm8_9 L0x555555639a72;
mov ymm8_a L0x555555639a74;
mov ymm8_b L0x555555639a76;
mov ymm8_c L0x555555639a78;
mov ymm8_d L0x555555639a7a;
mov ymm8_e L0x555555639a7c;
mov ymm8_f L0x555555639a7e;
(* vmovdqa 0x4c0(%rsi),%ymm2                       #! EA = L0x555555639aa0; Value = 0x0180fafb02620449; PC = 0x55555556f685 *)
mov ymm2_0 L0x555555639aa0;
mov ymm2_1 L0x555555639aa2;
mov ymm2_2 L0x555555639aa4;
mov ymm2_3 L0x555555639aa6;
mov ymm2_4 L0x555555639aa8;
mov ymm2_5 L0x555555639aaa;
mov ymm2_6 L0x555555639aac;
mov ymm2_7 L0x555555639aae;
mov ymm2_8 L0x555555639ab0;
mov ymm2_9 L0x555555639ab2;
mov ymm2_a L0x555555639ab4;
mov ymm2_b L0x555555639ab6;
mov ymm2_c L0x555555639ab8;
mov ymm2_d L0x555555639aba;
mov ymm2_e L0x555555639abc;
mov ymm2_f L0x555555639abe;
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556f68d *)
smull mulHymm10_0 mulL_0 ymm14_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm14_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm14_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm14_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm14_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm14_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm14_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm14_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm14_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm14_9 ymm10_9;
smull mulHymm10_a mulL_a ymm14_a ymm10_a;
smull mulHymm10_b mulL_b ymm14_b ymm10_b;
smull mulHymm10_c mulL_c ymm14_c ymm10_c;
smull mulHymm10_d mulL_d ymm14_d ymm10_d;
smull mulHymm10_e mulL_e ymm14_e ymm10_e;
smull mulHymm10_f mulL_f ymm14_f ymm10_f;
cast ymm12_0@sint16 mulL_0;
cast ymm12_1@sint16 mulL_1;
cast ymm12_2@sint16 mulL_2;
cast ymm12_3@sint16 mulL_3;
cast ymm12_4@sint16 mulL_4;
cast ymm12_5@sint16 mulL_5;
cast ymm12_6@sint16 mulL_6;
cast ymm12_7@sint16 mulL_7;
cast ymm12_8@sint16 mulL_8;
cast ymm12_9@sint16 mulL_9;
cast ymm12_a@sint16 mulL_a;
cast ymm12_b@sint16 mulL_b;
cast ymm12_c@sint16 mulL_c;
cast ymm12_d@sint16 mulL_d;
cast ymm12_e@sint16 mulL_e;
cast ymm12_f@sint16 mulL_f;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556f692 *)
smull mulHymm3_0 mulL_0 ymm14_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm14_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm14_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm14_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm14_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm14_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm14_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm14_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm14_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm14_9 ymm3_9;
smull mulHymm3_a mulL_a ymm14_a ymm3_a;
smull mulHymm3_b mulL_b ymm14_b ymm3_b;
smull mulHymm3_c mulL_c ymm14_c ymm3_c;
smull mulHymm3_d mulL_d ymm14_d ymm3_d;
smull mulHymm3_e mulL_e ymm14_e ymm3_e;
smull mulHymm3_f mulL_f ymm14_f ymm3_f;
cast ymm13_0@sint16 mulL_0;
cast ymm13_1@sint16 mulL_1;
cast ymm13_2@sint16 mulL_2;
cast ymm13_3@sint16 mulL_3;
cast ymm13_4@sint16 mulL_4;
cast ymm13_5@sint16 mulL_5;
cast ymm13_6@sint16 mulL_6;
cast ymm13_7@sint16 mulL_7;
cast ymm13_8@sint16 mulL_8;
cast ymm13_9@sint16 mulL_9;
cast ymm13_a@sint16 mulL_a;
cast ymm13_b@sint16 mulL_b;
cast ymm13_c@sint16 mulL_c;
cast ymm13_d@sint16 mulL_d;
cast ymm13_e@sint16 mulL_e;
cast ymm13_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f697 *)
smull mulHymm9_0 mulL_0 ymm15_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm15_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm15_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm15_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm15_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm15_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm15_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm15_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm15_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm15_9 ymm9_9;
smull mulHymm9_a mulL_a ymm15_a ymm9_a;
smull mulHymm9_b mulL_b ymm15_b ymm9_b;
smull mulHymm9_c mulL_c ymm15_c ymm9_c;
smull mulHymm9_d mulL_d ymm15_d ymm9_d;
smull mulHymm9_e mulL_e ymm15_e ymm9_e;
smull mulHymm9_f mulL_f ymm15_f ymm9_f;
cast ymm14_0@sint16 mulL_0;
cast ymm14_1@sint16 mulL_1;
cast ymm14_2@sint16 mulL_2;
cast ymm14_3@sint16 mulL_3;
cast ymm14_4@sint16 mulL_4;
cast ymm14_5@sint16 mulL_5;
cast ymm14_6@sint16 mulL_6;
cast ymm14_7@sint16 mulL_7;
cast ymm14_8@sint16 mulL_8;
cast ymm14_9@sint16 mulL_9;
cast ymm14_a@sint16 mulL_a;
cast ymm14_b@sint16 mulL_b;
cast ymm14_c@sint16 mulL_c;
cast ymm14_d@sint16 mulL_d;
cast ymm14_e@sint16 mulL_e;
cast ymm14_f@sint16 mulL_f;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f69c *)
smull mulHymm11_0 mulL_0 ymm15_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm15_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm15_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm15_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm15_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm15_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm15_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm15_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm15_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm15_9 ymm11_9;
smull mulHymm11_a mulL_a ymm15_a ymm11_a;
smull mulHymm11_b mulL_b ymm15_b ymm11_b;
smull mulHymm11_c mulL_c ymm15_c ymm11_c;
smull mulHymm11_d mulL_d ymm15_d ymm11_d;
smull mulHymm11_e mulL_e ymm15_e ymm11_e;
smull mulHymm11_f mulL_f ymm15_f ymm11_f;
cast ymm15_0@sint16 mulL_0;
cast ymm15_1@sint16 mulL_1;
cast ymm15_2@sint16 mulL_2;
cast ymm15_3@sint16 mulL_3;
cast ymm15_4@sint16 mulL_4;
cast ymm15_5@sint16 mulL_5;
cast ymm15_6@sint16 mulL_6;
cast ymm15_7@sint16 mulL_7;
cast ymm15_8@sint16 mulL_8;
cast ymm15_9@sint16 mulL_9;
cast ymm15_a@sint16 mulL_a;
cast ymm15_b@sint16 mulL_b;
cast ymm15_c@sint16 mulL_c;
cast ymm15_d@sint16 mulL_d;
cast ymm15_e@sint16 mulL_e;
cast ymm15_f@sint16 mulL_f;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f6a1 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm8_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm8_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm8_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm8_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm8_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm8_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm8_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm8_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm8_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm8_9;
smull mulH_a mulLymm10_a ymm10_a ymm8_a;
smull mulH_b mulLymm10_b ymm10_b ymm8_b;
smull mulH_c mulLymm10_c ymm10_c ymm8_c;
smull mulH_d mulLymm10_d ymm10_d ymm8_d;
smull mulH_e mulLymm10_e ymm10_e ymm8_e;
smull mulH_f mulLymm10_f ymm10_f ymm8_f;
mov ymm10_0 mulH_0;
mov ymm10_1 mulH_1;
mov ymm10_2 mulH_2;
mov ymm10_3 mulH_3;
mov ymm10_4 mulH_4;
mov ymm10_5 mulH_5;
mov ymm10_6 mulH_6;
mov ymm10_7 mulH_7;
mov ymm10_8 mulH_8;
mov ymm10_9 mulH_9;
mov ymm10_a mulH_a;
mov ymm10_b mulH_b;
mov ymm10_c mulH_c;
mov ymm10_d mulH_d;
mov ymm10_e mulH_e;
mov ymm10_f mulH_f;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f6a6 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm8_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm8_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm8_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm8_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm8_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm8_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm8_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm8_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm8_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm8_9;
smull mulH_a mulLymm3_a ymm3_a ymm8_a;
smull mulH_b mulLymm3_b ymm3_b ymm8_b;
smull mulH_c mulLymm3_c ymm3_c ymm8_c;
smull mulH_d mulLymm3_d ymm3_d ymm8_d;
smull mulH_e mulLymm3_e ymm3_e ymm8_e;
smull mulH_f mulLymm3_f ymm3_f ymm8_f;
mov ymm3_0 mulH_0;
mov ymm3_1 mulH_1;
mov ymm3_2 mulH_2;
mov ymm3_3 mulH_3;
mov ymm3_4 mulH_4;
mov ymm3_5 mulH_5;
mov ymm3_6 mulH_6;
mov ymm3_7 mulH_7;
mov ymm3_8 mulH_8;
mov ymm3_9 mulH_9;
mov ymm3_a mulH_a;
mov ymm3_b mulH_b;
mov ymm3_c mulH_c;
mov ymm3_d mulH_d;
mov ymm3_e mulH_e;
mov ymm3_f mulH_f;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f6ab *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm2_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm2_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm2_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm2_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm2_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm2_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm2_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm2_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm2_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm2_9;
smull mulH_a mulLymm9_a ymm9_a ymm2_a;
smull mulH_b mulLymm9_b ymm9_b ymm2_b;
smull mulH_c mulLymm9_c ymm9_c ymm2_c;
smull mulH_d mulLymm9_d ymm9_d ymm2_d;
smull mulH_e mulLymm9_e ymm9_e ymm2_e;
smull mulH_f mulLymm9_f ymm9_f ymm2_f;
mov ymm9_0 mulH_0;
mov ymm9_1 mulH_1;
mov ymm9_2 mulH_2;
mov ymm9_3 mulH_3;
mov ymm9_4 mulH_4;
mov ymm9_5 mulH_5;
mov ymm9_6 mulH_6;
mov ymm9_7 mulH_7;
mov ymm9_8 mulH_8;
mov ymm9_9 mulH_9;
mov ymm9_a mulH_a;
mov ymm9_b mulH_b;
mov ymm9_c mulH_c;
mov ymm9_d mulH_d;
mov ymm9_e mulH_e;
mov ymm9_f mulH_f;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f6af *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm2_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm2_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm2_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm2_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm2_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm2_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm2_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm2_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm2_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm2_9;
smull mulH_a mulLymm11_a ymm11_a ymm2_a;
smull mulH_b mulLymm11_b ymm11_b ymm2_b;
smull mulH_c mulLymm11_c ymm11_c ymm2_c;
smull mulH_d mulLymm11_d ymm11_d ymm2_d;
smull mulH_e mulLymm11_e ymm11_e ymm2_e;
smull mulH_f mulLymm11_f ymm11_f ymm2_f;
mov ymm11_0 mulH_0;
mov ymm11_1 mulH_1;
mov ymm11_2 mulH_2;
mov ymm11_3 mulH_3;
mov ymm11_4 mulH_4;
mov ymm11_5 mulH_5;
mov ymm11_6 mulH_6;
mov ymm11_7 mulH_7;
mov ymm11_8 mulH_8;
mov ymm11_9 mulH_9;
mov ymm11_a mulH_a;
mov ymm11_b mulH_b;
mov ymm11_c mulH_c;
mov ymm11_d mulH_d;
mov ymm11_e mulH_e;
mov ymm11_f mulH_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f6b3 *)
smull mulH_0 red_0 ymm12_0 ymm0_0;
assert true && red_0 = mulLymm10_0;
assume red_0 = mulLymm10_0 && true;
smull mulH_1 red_1 ymm12_1 ymm0_1;
assert true && red_1 = mulLymm10_1;
assume red_1 = mulLymm10_1 && true;
smull mulH_2 red_2 ymm12_2 ymm0_2;
assert true && red_2 = mulLymm10_2;
assume red_2 = mulLymm10_2 && true;
smull mulH_3 red_3 ymm12_3 ymm0_3;
assert true && red_3 = mulLymm10_3;
assume red_3 = mulLymm10_3 && true;
smull mulH_4 red_4 ymm12_4 ymm0_4;
assert true && red_4 = mulLymm10_4;
assume red_4 = mulLymm10_4 && true;
smull mulH_5 red_5 ymm12_5 ymm0_5;
assert true && red_5 = mulLymm10_5;
assume red_5 = mulLymm10_5 && true;
smull mulH_6 red_6 ymm12_6 ymm0_6;
assert true && red_6 = mulLymm10_6;
assume red_6 = mulLymm10_6 && true;
smull mulH_7 red_7 ymm12_7 ymm0_7;
assert true && red_7 = mulLymm10_7;
assume red_7 = mulLymm10_7 && true;
smull mulH_8 red_8 ymm12_8 ymm0_8;
assert true && red_8 = mulLymm10_8;
assume red_8 = mulLymm10_8 && true;
smull mulH_9 red_9 ymm12_9 ymm0_9;
assert true && red_9 = mulLymm10_9;
assume red_9 = mulLymm10_9 && true;
smull mulH_a red_a ymm12_a ymm0_a;
assert true && red_a = mulLymm10_a;
assume red_a = mulLymm10_a && true;
smull mulH_b red_b ymm12_b ymm0_b;
assert true && red_b = mulLymm10_b;
assume red_b = mulLymm10_b && true;
smull mulH_c red_c ymm12_c ymm0_c;
assert true && red_c = mulLymm10_c;
assume red_c = mulLymm10_c && true;
smull mulH_d red_d ymm12_d ymm0_d;
assert true && red_d = mulLymm10_d;
assume red_d = mulLymm10_d && true;
smull mulH_e red_e ymm12_e ymm0_e;
assert true && red_e = mulLymm10_e;
assume red_e = mulLymm10_e && true;
smull mulH_f red_f ymm12_f ymm0_f;
assert true && red_f = mulLymm10_f;
assume red_f = mulLymm10_f && true;
mov ymm12_0 mulH_0;
mov ymm12_1 mulH_1;
mov ymm12_2 mulH_2;
mov ymm12_3 mulH_3;
mov ymm12_4 mulH_4;
mov ymm12_5 mulH_5;
mov ymm12_6 mulH_6;
mov ymm12_7 mulH_7;
mov ymm12_8 mulH_8;
mov ymm12_9 mulH_9;
mov ymm12_a mulH_a;
mov ymm12_b mulH_b;
mov ymm12_c mulH_c;
mov ymm12_d mulH_d;
mov ymm12_e mulH_e;
mov ymm12_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f6b7 *)
smull mulH_0 red_0 ymm13_0 ymm0_0;
assert true && red_0 = mulLymm3_0;
assume red_0 = mulLymm3_0 && true;
smull mulH_1 red_1 ymm13_1 ymm0_1;
assert true && red_1 = mulLymm3_1;
assume red_1 = mulLymm3_1 && true;
smull mulH_2 red_2 ymm13_2 ymm0_2;
assert true && red_2 = mulLymm3_2;
assume red_2 = mulLymm3_2 && true;
smull mulH_3 red_3 ymm13_3 ymm0_3;
assert true && red_3 = mulLymm3_3;
assume red_3 = mulLymm3_3 && true;
smull mulH_4 red_4 ymm13_4 ymm0_4;
assert true && red_4 = mulLymm3_4;
assume red_4 = mulLymm3_4 && true;
smull mulH_5 red_5 ymm13_5 ymm0_5;
assert true && red_5 = mulLymm3_5;
assume red_5 = mulLymm3_5 && true;
smull mulH_6 red_6 ymm13_6 ymm0_6;
assert true && red_6 = mulLymm3_6;
assume red_6 = mulLymm3_6 && true;
smull mulH_7 red_7 ymm13_7 ymm0_7;
assert true && red_7 = mulLymm3_7;
assume red_7 = mulLymm3_7 && true;
smull mulH_8 red_8 ymm13_8 ymm0_8;
assert true && red_8 = mulLymm3_8;
assume red_8 = mulLymm3_8 && true;
smull mulH_9 red_9 ymm13_9 ymm0_9;
assert true && red_9 = mulLymm3_9;
assume red_9 = mulLymm3_9 && true;
smull mulH_a red_a ymm13_a ymm0_a;
assert true && red_a = mulLymm3_a;
assume red_a = mulLymm3_a && true;
smull mulH_b red_b ymm13_b ymm0_b;
assert true && red_b = mulLymm3_b;
assume red_b = mulLymm3_b && true;
smull mulH_c red_c ymm13_c ymm0_c;
assert true && red_c = mulLymm3_c;
assume red_c = mulLymm3_c && true;
smull mulH_d red_d ymm13_d ymm0_d;
assert true && red_d = mulLymm3_d;
assume red_d = mulLymm3_d && true;
smull mulH_e red_e ymm13_e ymm0_e;
assert true && red_e = mulLymm3_e;
assume red_e = mulLymm3_e && true;
smull mulH_f red_f ymm13_f ymm0_f;
assert true && red_f = mulLymm3_f;
assume red_f = mulLymm3_f && true;
mov ymm13_0 mulH_0;
mov ymm13_1 mulH_1;
mov ymm13_2 mulH_2;
mov ymm13_3 mulH_3;
mov ymm13_4 mulH_4;
mov ymm13_5 mulH_5;
mov ymm13_6 mulH_6;
mov ymm13_7 mulH_7;
mov ymm13_8 mulH_8;
mov ymm13_9 mulH_9;
mov ymm13_a mulH_a;
mov ymm13_b mulH_b;
mov ymm13_c mulH_c;
mov ymm13_d mulH_d;
mov ymm13_e mulH_e;
mov ymm13_f mulH_f;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f6bb *)
smull mulH_0 red_0 ymm14_0 ymm0_0;
assert true && red_0 = mulLymm9_0;
assume red_0 = mulLymm9_0 && true;
smull mulH_1 red_1 ymm14_1 ymm0_1;
assert true && red_1 = mulLymm9_1;
assume red_1 = mulLymm9_1 && true;
smull mulH_2 red_2 ymm14_2 ymm0_2;
assert true && red_2 = mulLymm9_2;
assume red_2 = mulLymm9_2 && true;
smull mulH_3 red_3 ymm14_3 ymm0_3;
assert true && red_3 = mulLymm9_3;
assume red_3 = mulLymm9_3 && true;
smull mulH_4 red_4 ymm14_4 ymm0_4;
assert true && red_4 = mulLymm9_4;
assume red_4 = mulLymm9_4 && true;
smull mulH_5 red_5 ymm14_5 ymm0_5;
assert true && red_5 = mulLymm9_5;
assume red_5 = mulLymm9_5 && true;
smull mulH_6 red_6 ymm14_6 ymm0_6;
assert true && red_6 = mulLymm9_6;
assume red_6 = mulLymm9_6 && true;
smull mulH_7 red_7 ymm14_7 ymm0_7;
assert true && red_7 = mulLymm9_7;
assume red_7 = mulLymm9_7 && true;
smull mulH_8 red_8 ymm14_8 ymm0_8;
assert true && red_8 = mulLymm9_8;
assume red_8 = mulLymm9_8 && true;
smull mulH_9 red_9 ymm14_9 ymm0_9;
assert true && red_9 = mulLymm9_9;
assume red_9 = mulLymm9_9 && true;
smull mulH_a red_a ymm14_a ymm0_a;
assert true && red_a = mulLymm9_a;
assume red_a = mulLymm9_a && true;
smull mulH_b red_b ymm14_b ymm0_b;
assert true && red_b = mulLymm9_b;
assume red_b = mulLymm9_b && true;
smull mulH_c red_c ymm14_c ymm0_c;
assert true && red_c = mulLymm9_c;
assume red_c = mulLymm9_c && true;
smull mulH_d red_d ymm14_d ymm0_d;
assert true && red_d = mulLymm9_d;
assume red_d = mulLymm9_d && true;
smull mulH_e red_e ymm14_e ymm0_e;
assert true && red_e = mulLymm9_e;
assume red_e = mulLymm9_e && true;
smull mulH_f red_f ymm14_f ymm0_f;
assert true && red_f = mulLymm9_f;
assume red_f = mulLymm9_f && true;
mov ymm14_0 mulH_0;
mov ymm14_1 mulH_1;
mov ymm14_2 mulH_2;
mov ymm14_3 mulH_3;
mov ymm14_4 mulH_4;
mov ymm14_5 mulH_5;
mov ymm14_6 mulH_6;
mov ymm14_7 mulH_7;
mov ymm14_8 mulH_8;
mov ymm14_9 mulH_9;
mov ymm14_a mulH_a;
mov ymm14_b mulH_b;
mov ymm14_c mulH_c;
mov ymm14_d mulH_d;
mov ymm14_e mulH_e;
mov ymm14_f mulH_f;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f6bf *)
smull mulH_0 red_0 ymm15_0 ymm0_0;
assert true && red_0 = mulLymm11_0;
assume red_0 = mulLymm11_0 && true;
smull mulH_1 red_1 ymm15_1 ymm0_1;
assert true && red_1 = mulLymm11_1;
assume red_1 = mulLymm11_1 && true;
smull mulH_2 red_2 ymm15_2 ymm0_2;
assert true && red_2 = mulLymm11_2;
assume red_2 = mulLymm11_2 && true;
smull mulH_3 red_3 ymm15_3 ymm0_3;
assert true && red_3 = mulLymm11_3;
assume red_3 = mulLymm11_3 && true;
smull mulH_4 red_4 ymm15_4 ymm0_4;
assert true && red_4 = mulLymm11_4;
assume red_4 = mulLymm11_4 && true;
smull mulH_5 red_5 ymm15_5 ymm0_5;
assert true && red_5 = mulLymm11_5;
assume red_5 = mulLymm11_5 && true;
smull mulH_6 red_6 ymm15_6 ymm0_6;
assert true && red_6 = mulLymm11_6;
assume red_6 = mulLymm11_6 && true;
smull mulH_7 red_7 ymm15_7 ymm0_7;
assert true && red_7 = mulLymm11_7;
assume red_7 = mulLymm11_7 && true;
smull mulH_8 red_8 ymm15_8 ymm0_8;
assert true && red_8 = mulLymm11_8;
assume red_8 = mulLymm11_8 && true;
smull mulH_9 red_9 ymm15_9 ymm0_9;
assert true && red_9 = mulLymm11_9;
assume red_9 = mulLymm11_9 && true;
smull mulH_a red_a ymm15_a ymm0_a;
assert true && red_a = mulLymm11_a;
assume red_a = mulLymm11_a && true;
smull mulH_b red_b ymm15_b ymm0_b;
assert true && red_b = mulLymm11_b;
assume red_b = mulLymm11_b && true;
smull mulH_c red_c ymm15_c ymm0_c;
assert true && red_c = mulLymm11_c;
assume red_c = mulLymm11_c && true;
smull mulH_d red_d ymm15_d ymm0_d;
assert true && red_d = mulLymm11_d;
assume red_d = mulLymm11_d && true;
smull mulH_e red_e ymm15_e ymm0_e;
assert true && red_e = mulLymm11_e;
assume red_e = mulLymm11_e && true;
smull mulH_f red_f ymm15_f ymm0_f;
assert true && red_f = mulLymm11_f;
assume red_f = mulLymm11_f && true;
mov ymm15_0 mulH_0;
mov ymm15_1 mulH_1;
mov ymm15_2 mulH_2;
mov ymm15_3 mulH_3;
mov ymm15_4 mulH_4;
mov ymm15_5 mulH_5;
mov ymm15_6 mulH_6;
mov ymm15_7 mulH_7;
mov ymm15_8 mulH_8;
mov ymm15_9 mulH_9;
mov ymm15_a mulH_a;
mov ymm15_b mulH_b;
mov ymm15_c mulH_c;
mov ymm15_d mulH_d;
mov ymm15_e mulH_e;
mov ymm15_f mulH_f;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f6c3 *)
add ymm8_0 ymm4_0 ymm10_0;
add ymm8_1 ymm4_1 ymm10_1;
add ymm8_2 ymm4_2 ymm10_2;
add ymm8_3 ymm4_3 ymm10_3;
add ymm8_4 ymm4_4 ymm10_4;
add ymm8_5 ymm4_5 ymm10_5;
add ymm8_6 ymm4_6 ymm10_6;
add ymm8_7 ymm4_7 ymm10_7;
add ymm8_8 ymm4_8 ymm10_8;
add ymm8_9 ymm4_9 ymm10_9;
add ymm8_a ymm4_a ymm10_a;
add ymm8_b ymm4_b ymm10_b;
add ymm8_c ymm4_c ymm10_c;
add ymm8_d ymm4_d ymm10_d;
add ymm8_e ymm4_e ymm10_e;
add ymm8_f ymm4_f ymm10_f;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f6c8 *)
sub ymm10_0 ymm4_0 ymm10_0;
sub ymm10_1 ymm4_1 ymm10_1;
sub ymm10_2 ymm4_2 ymm10_2;
sub ymm10_3 ymm4_3 ymm10_3;
sub ymm10_4 ymm4_4 ymm10_4;
sub ymm10_5 ymm4_5 ymm10_5;
sub ymm10_6 ymm4_6 ymm10_6;
sub ymm10_7 ymm4_7 ymm10_7;
sub ymm10_8 ymm4_8 ymm10_8;
sub ymm10_9 ymm4_9 ymm10_9;
sub ymm10_a ymm4_a ymm10_a;
sub ymm10_b ymm4_b ymm10_b;
sub ymm10_c ymm4_c ymm10_c;
sub ymm10_d ymm4_d ymm10_d;
sub ymm10_e ymm4_e ymm10_e;
sub ymm10_f ymm4_f ymm10_f;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f6cd *)
add ymm4_0 ymm6_0 ymm3_0;
add ymm4_1 ymm6_1 ymm3_1;
add ymm4_2 ymm6_2 ymm3_2;
add ymm4_3 ymm6_3 ymm3_3;
add ymm4_4 ymm6_4 ymm3_4;
add ymm4_5 ymm6_5 ymm3_5;
add ymm4_6 ymm6_6 ymm3_6;
add ymm4_7 ymm6_7 ymm3_7;
add ymm4_8 ymm6_8 ymm3_8;
add ymm4_9 ymm6_9 ymm3_9;
add ymm4_a ymm6_a ymm3_a;
add ymm4_b ymm6_b ymm3_b;
add ymm4_c ymm6_c ymm3_c;
add ymm4_d ymm6_d ymm3_d;
add ymm4_e ymm6_e ymm3_e;
add ymm4_f ymm6_f ymm3_f;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f6d1 *)
sub ymm3_0 ymm6_0 ymm3_0;
sub ymm3_1 ymm6_1 ymm3_1;
sub ymm3_2 ymm6_2 ymm3_2;
sub ymm3_3 ymm6_3 ymm3_3;
sub ymm3_4 ymm6_4 ymm3_4;
sub ymm3_5 ymm6_5 ymm3_5;
sub ymm3_6 ymm6_6 ymm3_6;
sub ymm3_7 ymm6_7 ymm3_7;
sub ymm3_8 ymm6_8 ymm3_8;
sub ymm3_9 ymm6_9 ymm3_9;
sub ymm3_a ymm6_a ymm3_a;
sub ymm3_b ymm6_b ymm3_b;
sub ymm3_c ymm6_c ymm3_c;
sub ymm3_d ymm6_d ymm3_d;
sub ymm3_e ymm6_e ymm3_e;
sub ymm3_f ymm6_f ymm3_f;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f6d5 *)
add ymm6_0 ymm5_0 ymm9_0;
add ymm6_1 ymm5_1 ymm9_1;
add ymm6_2 ymm5_2 ymm9_2;
add ymm6_3 ymm5_3 ymm9_3;
add ymm6_4 ymm5_4 ymm9_4;
add ymm6_5 ymm5_5 ymm9_5;
add ymm6_6 ymm5_6 ymm9_6;
add ymm6_7 ymm5_7 ymm9_7;
add ymm6_8 ymm5_8 ymm9_8;
add ymm6_9 ymm5_9 ymm9_9;
add ymm6_a ymm5_a ymm9_a;
add ymm6_b ymm5_b ymm9_b;
add ymm6_c ymm5_c ymm9_c;
add ymm6_d ymm5_d ymm9_d;
add ymm6_e ymm5_e ymm9_e;
add ymm6_f ymm5_f ymm9_f;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f6da *)
sub ymm9_0 ymm5_0 ymm9_0;
sub ymm9_1 ymm5_1 ymm9_1;
sub ymm9_2 ymm5_2 ymm9_2;
sub ymm9_3 ymm5_3 ymm9_3;
sub ymm9_4 ymm5_4 ymm9_4;
sub ymm9_5 ymm5_5 ymm9_5;
sub ymm9_6 ymm5_6 ymm9_6;
sub ymm9_7 ymm5_7 ymm9_7;
sub ymm9_8 ymm5_8 ymm9_8;
sub ymm9_9 ymm5_9 ymm9_9;
sub ymm9_a ymm5_a ymm9_a;
sub ymm9_b ymm5_b ymm9_b;
sub ymm9_c ymm5_c ymm9_c;
sub ymm9_d ymm5_d ymm9_d;
sub ymm9_e ymm5_e ymm9_e;
sub ymm9_f ymm5_f ymm9_f;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f6df *)
add ymm5_0 ymm7_0 ymm11_0;
add ymm5_1 ymm7_1 ymm11_1;
add ymm5_2 ymm7_2 ymm11_2;
add ymm5_3 ymm7_3 ymm11_3;
add ymm5_4 ymm7_4 ymm11_4;
add ymm5_5 ymm7_5 ymm11_5;
add ymm5_6 ymm7_6 ymm11_6;
add ymm5_7 ymm7_7 ymm11_7;
add ymm5_8 ymm7_8 ymm11_8;
add ymm5_9 ymm7_9 ymm11_9;
add ymm5_a ymm7_a ymm11_a;
add ymm5_b ymm7_b ymm11_b;
add ymm5_c ymm7_c ymm11_c;
add ymm5_d ymm7_d ymm11_d;
add ymm5_e ymm7_e ymm11_e;
add ymm5_f ymm7_f ymm11_f;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f6e4 *)
sub ymm11_0 ymm7_0 ymm11_0;
sub ymm11_1 ymm7_1 ymm11_1;
sub ymm11_2 ymm7_2 ymm11_2;
sub ymm11_3 ymm7_3 ymm11_3;
sub ymm11_4 ymm7_4 ymm11_4;
sub ymm11_5 ymm7_5 ymm11_5;
sub ymm11_6 ymm7_6 ymm11_6;
sub ymm11_7 ymm7_7 ymm11_7;
sub ymm11_8 ymm7_8 ymm11_8;
sub ymm11_9 ymm7_9 ymm11_9;
sub ymm11_a ymm7_a ymm11_a;
sub ymm11_b ymm7_b ymm11_b;
sub ymm11_c ymm7_c ymm11_c;
sub ymm11_d ymm7_d ymm11_d;
sub ymm11_e ymm7_e ymm11_e;
sub ymm11_f ymm7_f ymm11_f;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f6e9 *)
sub ymm8_0 ymm8_0 ymm12_0;
sub ymm8_1 ymm8_1 ymm12_1;
sub ymm8_2 ymm8_2 ymm12_2;
sub ymm8_3 ymm8_3 ymm12_3;
sub ymm8_4 ymm8_4 ymm12_4;
sub ymm8_5 ymm8_5 ymm12_5;
sub ymm8_6 ymm8_6 ymm12_6;
sub ymm8_7 ymm8_7 ymm12_7;
sub ymm8_8 ymm8_8 ymm12_8;
sub ymm8_9 ymm8_9 ymm12_9;
sub ymm8_a ymm8_a ymm12_a;
sub ymm8_b ymm8_b ymm12_b;
sub ymm8_c ymm8_c ymm12_c;
sub ymm8_d ymm8_d ymm12_d;
sub ymm8_e ymm8_e ymm12_e;
sub ymm8_f ymm8_f ymm12_f;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f6ee *)
add ymm10_0 ymm10_0 ymm12_0;
add ymm10_1 ymm10_1 ymm12_1;
add ymm10_2 ymm10_2 ymm12_2;
add ymm10_3 ymm10_3 ymm12_3;
add ymm10_4 ymm10_4 ymm12_4;
add ymm10_5 ymm10_5 ymm12_5;
add ymm10_6 ymm10_6 ymm12_6;
add ymm10_7 ymm10_7 ymm12_7;
add ymm10_8 ymm10_8 ymm12_8;
add ymm10_9 ymm10_9 ymm12_9;
add ymm10_a ymm10_a ymm12_a;
add ymm10_b ymm10_b ymm12_b;
add ymm10_c ymm10_c ymm12_c;
add ymm10_d ymm10_d ymm12_d;
add ymm10_e ymm10_e ymm12_e;
add ymm10_f ymm10_f ymm12_f;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f6f3 *)
sub ymm4_0 ymm4_0 ymm13_0;
sub ymm4_1 ymm4_1 ymm13_1;
sub ymm4_2 ymm4_2 ymm13_2;
sub ymm4_3 ymm4_3 ymm13_3;
sub ymm4_4 ymm4_4 ymm13_4;
sub ymm4_5 ymm4_5 ymm13_5;
sub ymm4_6 ymm4_6 ymm13_6;
sub ymm4_7 ymm4_7 ymm13_7;
sub ymm4_8 ymm4_8 ymm13_8;
sub ymm4_9 ymm4_9 ymm13_9;
sub ymm4_a ymm4_a ymm13_a;
sub ymm4_b ymm4_b ymm13_b;
sub ymm4_c ymm4_c ymm13_c;
sub ymm4_d ymm4_d ymm13_d;
sub ymm4_e ymm4_e ymm13_e;
sub ymm4_f ymm4_f ymm13_f;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f6f8 *)
add ymm3_0 ymm3_0 ymm13_0;
add ymm3_1 ymm3_1 ymm13_1;
add ymm3_2 ymm3_2 ymm13_2;
add ymm3_3 ymm3_3 ymm13_3;
add ymm3_4 ymm3_4 ymm13_4;
add ymm3_5 ymm3_5 ymm13_5;
add ymm3_6 ymm3_6 ymm13_6;
add ymm3_7 ymm3_7 ymm13_7;
add ymm3_8 ymm3_8 ymm13_8;
add ymm3_9 ymm3_9 ymm13_9;
add ymm3_a ymm3_a ymm13_a;
add ymm3_b ymm3_b ymm13_b;
add ymm3_c ymm3_c ymm13_c;
add ymm3_d ymm3_d ymm13_d;
add ymm3_e ymm3_e ymm13_e;
add ymm3_f ymm3_f ymm13_f;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f6fd *)
sub ymm6_0 ymm6_0 ymm14_0;
sub ymm6_1 ymm6_1 ymm14_1;
sub ymm6_2 ymm6_2 ymm14_2;
sub ymm6_3 ymm6_3 ymm14_3;
sub ymm6_4 ymm6_4 ymm14_4;
sub ymm6_5 ymm6_5 ymm14_5;
sub ymm6_6 ymm6_6 ymm14_6;
sub ymm6_7 ymm6_7 ymm14_7;
sub ymm6_8 ymm6_8 ymm14_8;
sub ymm6_9 ymm6_9 ymm14_9;
sub ymm6_a ymm6_a ymm14_a;
sub ymm6_b ymm6_b ymm14_b;
sub ymm6_c ymm6_c ymm14_c;
sub ymm6_d ymm6_d ymm14_d;
sub ymm6_e ymm6_e ymm14_e;
sub ymm6_f ymm6_f ymm14_f;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f702 *)
add ymm9_0 ymm9_0 ymm14_0;
add ymm9_1 ymm9_1 ymm14_1;
add ymm9_2 ymm9_2 ymm14_2;
add ymm9_3 ymm9_3 ymm14_3;
add ymm9_4 ymm9_4 ymm14_4;
add ymm9_5 ymm9_5 ymm14_5;
add ymm9_6 ymm9_6 ymm14_6;
add ymm9_7 ymm9_7 ymm14_7;
add ymm9_8 ymm9_8 ymm14_8;
add ymm9_9 ymm9_9 ymm14_9;
add ymm9_a ymm9_a ymm14_a;
add ymm9_b ymm9_b ymm14_b;
add ymm9_c ymm9_c ymm14_c;
add ymm9_d ymm9_d ymm14_d;
add ymm9_e ymm9_e ymm14_e;
add ymm9_f ymm9_f ymm14_f;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f707 *)
sub ymm5_0 ymm5_0 ymm15_0;
sub ymm5_1 ymm5_1 ymm15_1;
sub ymm5_2 ymm5_2 ymm15_2;
sub ymm5_3 ymm5_3 ymm15_3;
sub ymm5_4 ymm5_4 ymm15_4;
sub ymm5_5 ymm5_5 ymm15_5;
sub ymm5_6 ymm5_6 ymm15_6;
sub ymm5_7 ymm5_7 ymm15_7;
sub ymm5_8 ymm5_8 ymm15_8;
sub ymm5_9 ymm5_9 ymm15_9;
sub ymm5_a ymm5_a ymm15_a;
sub ymm5_b ymm5_b ymm15_b;
sub ymm5_c ymm5_c ymm15_c;
sub ymm5_d ymm5_d ymm15_d;
sub ymm5_e ymm5_e ymm15_e;
sub ymm5_f ymm5_f ymm15_f;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f70c *)
add ymm11_0 ymm11_0 ymm15_0;
add ymm11_1 ymm11_1 ymm15_1;
add ymm11_2 ymm11_2 ymm15_2;
add ymm11_3 ymm11_3 ymm15_3;
add ymm11_4 ymm11_4 ymm15_4;
add ymm11_5 ymm11_5 ymm15_5;
add ymm11_6 ymm11_6 ymm15_6;
add ymm11_7 ymm11_7 ymm15_7;
add ymm11_8 ymm11_8 ymm15_8;
add ymm11_9 ymm11_9 ymm15_9;
add ymm11_a ymm11_a ymm15_a;
add ymm11_b ymm11_b ymm15_b;
add ymm11_c ymm11_c ymm15_c;
add ymm11_d ymm11_d ymm15_d;
add ymm11_e ymm11_e ymm15_e;
add ymm11_f ymm11_f ymm15_f;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb080; PC = 0x55555556f711 *)
mov L0x7fffffffb080 ymm8_0;
mov L0x7fffffffb082 ymm8_1;
mov L0x7fffffffb084 ymm8_2;
mov L0x7fffffffb086 ymm8_3;
mov L0x7fffffffb088 ymm8_4;
mov L0x7fffffffb08a ymm8_5;
mov L0x7fffffffb08c ymm8_6;
mov L0x7fffffffb08e ymm8_7;
mov L0x7fffffffb090 ymm8_8;
mov L0x7fffffffb092 ymm8_9;
mov L0x7fffffffb094 ymm8_a;
mov L0x7fffffffb096 ymm8_b;
mov L0x7fffffffb098 ymm8_c;
mov L0x7fffffffb09a ymm8_d;
mov L0x7fffffffb09c ymm8_e;
mov L0x7fffffffb09e ymm8_f;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffffb0a0; PC = 0x55555556f719 *)
mov L0x7fffffffb0a0 ymm4_0;
mov L0x7fffffffb0a2 ymm4_1;
mov L0x7fffffffb0a4 ymm4_2;
mov L0x7fffffffb0a6 ymm4_3;
mov L0x7fffffffb0a8 ymm4_4;
mov L0x7fffffffb0aa ymm4_5;
mov L0x7fffffffb0ac ymm4_6;
mov L0x7fffffffb0ae ymm4_7;
mov L0x7fffffffb0b0 ymm4_8;
mov L0x7fffffffb0b2 ymm4_9;
mov L0x7fffffffb0b4 ymm4_a;
mov L0x7fffffffb0b6 ymm4_b;
mov L0x7fffffffb0b8 ymm4_c;
mov L0x7fffffffb0ba ymm4_d;
mov L0x7fffffffb0bc ymm4_e;
mov L0x7fffffffb0be ymm4_f;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb0c0; PC = 0x55555556f721 *)
mov L0x7fffffffb0c0 ymm10_0;
mov L0x7fffffffb0c2 ymm10_1;
mov L0x7fffffffb0c4 ymm10_2;
mov L0x7fffffffb0c6 ymm10_3;
mov L0x7fffffffb0c8 ymm10_4;
mov L0x7fffffffb0ca ymm10_5;
mov L0x7fffffffb0cc ymm10_6;
mov L0x7fffffffb0ce ymm10_7;
mov L0x7fffffffb0d0 ymm10_8;
mov L0x7fffffffb0d2 ymm10_9;
mov L0x7fffffffb0d4 ymm10_a;
mov L0x7fffffffb0d6 ymm10_b;
mov L0x7fffffffb0d8 ymm10_c;
mov L0x7fffffffb0da ymm10_d;
mov L0x7fffffffb0dc ymm10_e;
mov L0x7fffffffb0de ymm10_f;
(* vmovdqa %ymm3,0x160(%rdi)                       #! EA = L0x7fffffffb0e0; PC = 0x55555556f729 *)
mov L0x7fffffffb0e0 ymm3_0;
mov L0x7fffffffb0e2 ymm3_1;
mov L0x7fffffffb0e4 ymm3_2;
mov L0x7fffffffb0e6 ymm3_3;
mov L0x7fffffffb0e8 ymm3_4;
mov L0x7fffffffb0ea ymm3_5;
mov L0x7fffffffb0ec ymm3_6;
mov L0x7fffffffb0ee ymm3_7;
mov L0x7fffffffb0f0 ymm3_8;
mov L0x7fffffffb0f2 ymm3_9;
mov L0x7fffffffb0f4 ymm3_a;
mov L0x7fffffffb0f6 ymm3_b;
mov L0x7fffffffb0f8 ymm3_c;
mov L0x7fffffffb0fa ymm3_d;
mov L0x7fffffffb0fc ymm3_e;
mov L0x7fffffffb0fe ymm3_f;
(* vmovdqa %ymm6,0x180(%rdi)                       #! EA = L0x7fffffffb100; PC = 0x55555556f731 *)
mov L0x7fffffffb100 ymm6_0;
mov L0x7fffffffb102 ymm6_1;
mov L0x7fffffffb104 ymm6_2;
mov L0x7fffffffb106 ymm6_3;
mov L0x7fffffffb108 ymm6_4;
mov L0x7fffffffb10a ymm6_5;
mov L0x7fffffffb10c ymm6_6;
mov L0x7fffffffb10e ymm6_7;
mov L0x7fffffffb110 ymm6_8;
mov L0x7fffffffb112 ymm6_9;
mov L0x7fffffffb114 ymm6_a;
mov L0x7fffffffb116 ymm6_b;
mov L0x7fffffffb118 ymm6_c;
mov L0x7fffffffb11a ymm6_d;
mov L0x7fffffffb11c ymm6_e;
mov L0x7fffffffb11e ymm6_f;
(* vmovdqa %ymm5,0x1a0(%rdi)                       #! EA = L0x7fffffffb120; PC = 0x55555556f739 *)
mov L0x7fffffffb120 ymm5_0;
mov L0x7fffffffb122 ymm5_1;
mov L0x7fffffffb124 ymm5_2;
mov L0x7fffffffb126 ymm5_3;
mov L0x7fffffffb128 ymm5_4;
mov L0x7fffffffb12a ymm5_5;
mov L0x7fffffffb12c ymm5_6;
mov L0x7fffffffb12e ymm5_7;
mov L0x7fffffffb130 ymm5_8;
mov L0x7fffffffb132 ymm5_9;
mov L0x7fffffffb134 ymm5_a;
mov L0x7fffffffb136 ymm5_b;
mov L0x7fffffffb138 ymm5_c;
mov L0x7fffffffb13a ymm5_d;
mov L0x7fffffffb13c ymm5_e;
mov L0x7fffffffb13e ymm5_f;
(* vmovdqa %ymm9,0x1c0(%rdi)                       #! EA = L0x7fffffffb140; PC = 0x55555556f741 *)
mov L0x7fffffffb140 ymm9_0;
mov L0x7fffffffb142 ymm9_1;
mov L0x7fffffffb144 ymm9_2;
mov L0x7fffffffb146 ymm9_3;
mov L0x7fffffffb148 ymm9_4;
mov L0x7fffffffb14a ymm9_5;
mov L0x7fffffffb14c ymm9_6;
mov L0x7fffffffb14e ymm9_7;
mov L0x7fffffffb150 ymm9_8;
mov L0x7fffffffb152 ymm9_9;
mov L0x7fffffffb154 ymm9_a;
mov L0x7fffffffb156 ymm9_b;
mov L0x7fffffffb158 ymm9_c;
mov L0x7fffffffb15a ymm9_d;
mov L0x7fffffffb15c ymm9_e;
mov L0x7fffffffb15e ymm9_f;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb160; PC = 0x55555556f749 *)
mov L0x7fffffffb160 ymm11_0;
mov L0x7fffffffb162 ymm11_1;
mov L0x7fffffffb164 ymm11_2;
mov L0x7fffffffb166 ymm11_3;
mov L0x7fffffffb168 ymm11_4;
mov L0x7fffffffb16a ymm11_5;
mov L0x7fffffffb16c ymm11_6;
mov L0x7fffffffb16e ymm11_7;
mov L0x7fffffffb170 ymm11_8;
mov L0x7fffffffb172 ymm11_9;
mov L0x7fffffffb174 ymm11_a;
mov L0x7fffffffb176 ymm11_b;
mov L0x7fffffffb178 ymm11_c;
mov L0x7fffffffb17a ymm11_d;
mov L0x7fffffffb17c ymm11_e;
mov L0x7fffffffb17e ymm11_f;

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

