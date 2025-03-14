(*
on frege
Arguments: -v -jobs 20 -isafety -no_carry_constraint -slicing test_sabermul_nttmul_poly_ntt10753.cl
Parsing Cryptoline file:                [OK]            0.112388 seconds
Checking well-formedness:               [OK]            0.033524 seconds
Transforming to SSA form:               [OK]            0.024163 seconds
Rewriting assignments:                  [OK]            0.025270 seconds
Verifying program safety:
         Overall                        [OK]            200.114704 seconds
Verifying range assertions:             [OK]            80.105953 seconds
Verifying range specification:          [OK]            196.013108 seconds
Rewriting value-preserved casting:      [OK]            0.000301 seconds
Verifying algebraic assertions:         [OK]            0.003517 seconds
Verifying algebraic specification:      [OK]            58.475302 seconds
Verification result:                    [OK]            534.923599 seconds
*)
proc main(

(* parameters *)

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

(* algebraic precondition *)

true

&&

(* range precondition *)

and [
(-4096)@16 <s f000, f000 <s 4096@16, (-4096)@16 <s f001, f001 <s 4096@16, (-4096)@16 <s f002, f002 <s 4096@16, (-4096)@16 <s f003, f003 <s 4096@16,
(-4096)@16 <s f004, f004 <s 4096@16, (-4096)@16 <s f005, f005 <s 4096@16, (-4096)@16 <s f006, f006 <s 4096@16, (-4096)@16 <s f007, f007 <s 4096@16,
(-4096)@16 <s f008, f008 <s 4096@16, (-4096)@16 <s f009, f009 <s 4096@16, (-4096)@16 <s f010, f010 <s 4096@16, (-4096)@16 <s f011, f011 <s 4096@16,
(-4096)@16 <s f012, f012 <s 4096@16, (-4096)@16 <s f013, f013 <s 4096@16, (-4096)@16 <s f014, f014 <s 4096@16, (-4096)@16 <s f015, f015 <s 4096@16,
(-4096)@16 <s f016, f016 <s 4096@16, (-4096)@16 <s f017, f017 <s 4096@16, (-4096)@16 <s f018, f018 <s 4096@16, (-4096)@16 <s f019, f019 <s 4096@16,
(-4096)@16 <s f020, f020 <s 4096@16, (-4096)@16 <s f021, f021 <s 4096@16, (-4096)@16 <s f022, f022 <s 4096@16, (-4096)@16 <s f023, f023 <s 4096@16,
(-4096)@16 <s f024, f024 <s 4096@16, (-4096)@16 <s f025, f025 <s 4096@16, (-4096)@16 <s f026, f026 <s 4096@16, (-4096)@16 <s f027, f027 <s 4096@16,
(-4096)@16 <s f028, f028 <s 4096@16, (-4096)@16 <s f029, f029 <s 4096@16, (-4096)@16 <s f030, f030 <s 4096@16, (-4096)@16 <s f031, f031 <s 4096@16,
(-4096)@16 <s f032, f032 <s 4096@16, (-4096)@16 <s f033, f033 <s 4096@16, (-4096)@16 <s f034, f034 <s 4096@16, (-4096)@16 <s f035, f035 <s 4096@16,
(-4096)@16 <s f036, f036 <s 4096@16, (-4096)@16 <s f037, f037 <s 4096@16, (-4096)@16 <s f038, f038 <s 4096@16, (-4096)@16 <s f039, f039 <s 4096@16,
(-4096)@16 <s f040, f040 <s 4096@16, (-4096)@16 <s f041, f041 <s 4096@16, (-4096)@16 <s f042, f042 <s 4096@16, (-4096)@16 <s f043, f043 <s 4096@16,
(-4096)@16 <s f044, f044 <s 4096@16, (-4096)@16 <s f045, f045 <s 4096@16, (-4096)@16 <s f046, f046 <s 4096@16, (-4096)@16 <s f047, f047 <s 4096@16,
(-4096)@16 <s f048, f048 <s 4096@16, (-4096)@16 <s f049, f049 <s 4096@16, (-4096)@16 <s f050, f050 <s 4096@16, (-4096)@16 <s f051, f051 <s 4096@16,
(-4096)@16 <s f052, f052 <s 4096@16, (-4096)@16 <s f053, f053 <s 4096@16, (-4096)@16 <s f054, f054 <s 4096@16, (-4096)@16 <s f055, f055 <s 4096@16,
(-4096)@16 <s f056, f056 <s 4096@16, (-4096)@16 <s f057, f057 <s 4096@16, (-4096)@16 <s f058, f058 <s 4096@16, (-4096)@16 <s f059, f059 <s 4096@16,
(-4096)@16 <s f060, f060 <s 4096@16, (-4096)@16 <s f061, f061 <s 4096@16, (-4096)@16 <s f062, f062 <s 4096@16, (-4096)@16 <s f063, f063 <s 4096@16,
(-4096)@16 <s f064, f064 <s 4096@16, (-4096)@16 <s f065, f065 <s 4096@16, (-4096)@16 <s f066, f066 <s 4096@16, (-4096)@16 <s f067, f067 <s 4096@16,
(-4096)@16 <s f068, f068 <s 4096@16, (-4096)@16 <s f069, f069 <s 4096@16, (-4096)@16 <s f070, f070 <s 4096@16, (-4096)@16 <s f071, f071 <s 4096@16,
(-4096)@16 <s f072, f072 <s 4096@16, (-4096)@16 <s f073, f073 <s 4096@16, (-4096)@16 <s f074, f074 <s 4096@16, (-4096)@16 <s f075, f075 <s 4096@16,
(-4096)@16 <s f076, f076 <s 4096@16, (-4096)@16 <s f077, f077 <s 4096@16, (-4096)@16 <s f078, f078 <s 4096@16, (-4096)@16 <s f079, f079 <s 4096@16,
(-4096)@16 <s f080, f080 <s 4096@16, (-4096)@16 <s f081, f081 <s 4096@16, (-4096)@16 <s f082, f082 <s 4096@16, (-4096)@16 <s f083, f083 <s 4096@16,
(-4096)@16 <s f084, f084 <s 4096@16, (-4096)@16 <s f085, f085 <s 4096@16, (-4096)@16 <s f086, f086 <s 4096@16, (-4096)@16 <s f087, f087 <s 4096@16,
(-4096)@16 <s f088, f088 <s 4096@16, (-4096)@16 <s f089, f089 <s 4096@16, (-4096)@16 <s f090, f090 <s 4096@16, (-4096)@16 <s f091, f091 <s 4096@16,
(-4096)@16 <s f092, f092 <s 4096@16, (-4096)@16 <s f093, f093 <s 4096@16, (-4096)@16 <s f094, f094 <s 4096@16, (-4096)@16 <s f095, f095 <s 4096@16,
(-4096)@16 <s f096, f096 <s 4096@16, (-4096)@16 <s f097, f097 <s 4096@16, (-4096)@16 <s f098, f098 <s 4096@16, (-4096)@16 <s f099, f099 <s 4096@16,
(-4096)@16 <s f100, f100 <s 4096@16, (-4096)@16 <s f101, f101 <s 4096@16, (-4096)@16 <s f102, f102 <s 4096@16, (-4096)@16 <s f103, f103 <s 4096@16,
(-4096)@16 <s f104, f104 <s 4096@16, (-4096)@16 <s f105, f105 <s 4096@16, (-4096)@16 <s f106, f106 <s 4096@16, (-4096)@16 <s f107, f107 <s 4096@16,
(-4096)@16 <s f108, f108 <s 4096@16, (-4096)@16 <s f109, f109 <s 4096@16, (-4096)@16 <s f110, f110 <s 4096@16, (-4096)@16 <s f111, f111 <s 4096@16,
(-4096)@16 <s f112, f112 <s 4096@16, (-4096)@16 <s f113, f113 <s 4096@16, (-4096)@16 <s f114, f114 <s 4096@16, (-4096)@16 <s f115, f115 <s 4096@16,
(-4096)@16 <s f116, f116 <s 4096@16, (-4096)@16 <s f117, f117 <s 4096@16, (-4096)@16 <s f118, f118 <s 4096@16, (-4096)@16 <s f119, f119 <s 4096@16,
(-4096)@16 <s f120, f120 <s 4096@16, (-4096)@16 <s f121, f121 <s 4096@16, (-4096)@16 <s f122, f122 <s 4096@16, (-4096)@16 <s f123, f123 <s 4096@16,
(-4096)@16 <s f124, f124 <s 4096@16, (-4096)@16 <s f125, f125 <s 4096@16, (-4096)@16 <s f126, f126 <s 4096@16, (-4096)@16 <s f127, f127 <s 4096@16,
(-4096)@16 <s f128, f128 <s 4096@16, (-4096)@16 <s f129, f129 <s 4096@16, (-4096)@16 <s f130, f130 <s 4096@16, (-4096)@16 <s f131, f131 <s 4096@16,
(-4096)@16 <s f132, f132 <s 4096@16, (-4096)@16 <s f133, f133 <s 4096@16, (-4096)@16 <s f134, f134 <s 4096@16, (-4096)@16 <s f135, f135 <s 4096@16,
(-4096)@16 <s f136, f136 <s 4096@16, (-4096)@16 <s f137, f137 <s 4096@16, (-4096)@16 <s f138, f138 <s 4096@16, (-4096)@16 <s f139, f139 <s 4096@16,
(-4096)@16 <s f140, f140 <s 4096@16, (-4096)@16 <s f141, f141 <s 4096@16, (-4096)@16 <s f142, f142 <s 4096@16, (-4096)@16 <s f143, f143 <s 4096@16,
(-4096)@16 <s f144, f144 <s 4096@16, (-4096)@16 <s f145, f145 <s 4096@16, (-4096)@16 <s f146, f146 <s 4096@16, (-4096)@16 <s f147, f147 <s 4096@16,
(-4096)@16 <s f148, f148 <s 4096@16, (-4096)@16 <s f149, f149 <s 4096@16, (-4096)@16 <s f150, f150 <s 4096@16, (-4096)@16 <s f151, f151 <s 4096@16,
(-4096)@16 <s f152, f152 <s 4096@16, (-4096)@16 <s f153, f153 <s 4096@16, (-4096)@16 <s f154, f154 <s 4096@16, (-4096)@16 <s f155, f155 <s 4096@16,
(-4096)@16 <s f156, f156 <s 4096@16, (-4096)@16 <s f157, f157 <s 4096@16, (-4096)@16 <s f158, f158 <s 4096@16, (-4096)@16 <s f159, f159 <s 4096@16,
(-4096)@16 <s f160, f160 <s 4096@16, (-4096)@16 <s f161, f161 <s 4096@16, (-4096)@16 <s f162, f162 <s 4096@16, (-4096)@16 <s f163, f163 <s 4096@16,
(-4096)@16 <s f164, f164 <s 4096@16, (-4096)@16 <s f165, f165 <s 4096@16, (-4096)@16 <s f166, f166 <s 4096@16, (-4096)@16 <s f167, f167 <s 4096@16,
(-4096)@16 <s f168, f168 <s 4096@16, (-4096)@16 <s f169, f169 <s 4096@16, (-4096)@16 <s f170, f170 <s 4096@16, (-4096)@16 <s f171, f171 <s 4096@16,
(-4096)@16 <s f172, f172 <s 4096@16, (-4096)@16 <s f173, f173 <s 4096@16, (-4096)@16 <s f174, f174 <s 4096@16, (-4096)@16 <s f175, f175 <s 4096@16,
(-4096)@16 <s f176, f176 <s 4096@16, (-4096)@16 <s f177, f177 <s 4096@16, (-4096)@16 <s f178, f178 <s 4096@16, (-4096)@16 <s f179, f179 <s 4096@16,
(-4096)@16 <s f180, f180 <s 4096@16, (-4096)@16 <s f181, f181 <s 4096@16, (-4096)@16 <s f182, f182 <s 4096@16, (-4096)@16 <s f183, f183 <s 4096@16,
(-4096)@16 <s f184, f184 <s 4096@16, (-4096)@16 <s f185, f185 <s 4096@16, (-4096)@16 <s f186, f186 <s 4096@16, (-4096)@16 <s f187, f187 <s 4096@16,
(-4096)@16 <s f188, f188 <s 4096@16, (-4096)@16 <s f189, f189 <s 4096@16, (-4096)@16 <s f190, f190 <s 4096@16, (-4096)@16 <s f191, f191 <s 4096@16,
(-4096)@16 <s f192, f192 <s 4096@16, (-4096)@16 <s f193, f193 <s 4096@16, (-4096)@16 <s f194, f194 <s 4096@16, (-4096)@16 <s f195, f195 <s 4096@16,
(-4096)@16 <s f196, f196 <s 4096@16, (-4096)@16 <s f197, f197 <s 4096@16, (-4096)@16 <s f198, f198 <s 4096@16, (-4096)@16 <s f199, f199 <s 4096@16,
(-4096)@16 <s f200, f200 <s 4096@16, (-4096)@16 <s f201, f201 <s 4096@16, (-4096)@16 <s f202, f202 <s 4096@16, (-4096)@16 <s f203, f203 <s 4096@16,
(-4096)@16 <s f204, f204 <s 4096@16, (-4096)@16 <s f205, f205 <s 4096@16, (-4096)@16 <s f206, f206 <s 4096@16, (-4096)@16 <s f207, f207 <s 4096@16,
(-4096)@16 <s f208, f208 <s 4096@16, (-4096)@16 <s f209, f209 <s 4096@16, (-4096)@16 <s f210, f210 <s 4096@16, (-4096)@16 <s f211, f211 <s 4096@16,
(-4096)@16 <s f212, f212 <s 4096@16, (-4096)@16 <s f213, f213 <s 4096@16, (-4096)@16 <s f214, f214 <s 4096@16, (-4096)@16 <s f215, f215 <s 4096@16,
(-4096)@16 <s f216, f216 <s 4096@16, (-4096)@16 <s f217, f217 <s 4096@16, (-4096)@16 <s f218, f218 <s 4096@16, (-4096)@16 <s f219, f219 <s 4096@16,
(-4096)@16 <s f220, f220 <s 4096@16, (-4096)@16 <s f221, f221 <s 4096@16, (-4096)@16 <s f222, f222 <s 4096@16, (-4096)@16 <s f223, f223 <s 4096@16,
(-4096)@16 <s f224, f224 <s 4096@16, (-4096)@16 <s f225, f225 <s 4096@16, (-4096)@16 <s f226, f226 <s 4096@16, (-4096)@16 <s f227, f227 <s 4096@16,
(-4096)@16 <s f228, f228 <s 4096@16, (-4096)@16 <s f229, f229 <s 4096@16, (-4096)@16 <s f230, f230 <s 4096@16, (-4096)@16 <s f231, f231 <s 4096@16,
(-4096)@16 <s f232, f232 <s 4096@16, (-4096)@16 <s f233, f233 <s 4096@16, (-4096)@16 <s f234, f234 <s 4096@16, (-4096)@16 <s f235, f235 <s 4096@16,
(-4096)@16 <s f236, f236 <s 4096@16, (-4096)@16 <s f237, f237 <s 4096@16, (-4096)@16 <s f238, f238 <s 4096@16, (-4096)@16 <s f239, f239 <s 4096@16,
(-4096)@16 <s f240, f240 <s 4096@16, (-4096)@16 <s f241, f241 <s 4096@16, (-4096)@16 <s f242, f242 <s 4096@16, (-4096)@16 <s f243, f243 <s 4096@16,
(-4096)@16 <s f244, f244 <s 4096@16, (-4096)@16 <s f245, f245 <s 4096@16, (-4096)@16 <s f246, f246 <s 4096@16, (-4096)@16 <s f247, f247 <s 4096@16,
(-4096)@16 <s f248, f248 <s 4096@16, (-4096)@16 <s f249, f249 <s 4096@16, (-4096)@16 <s f250, f250 <s 4096@16, (-4096)@16 <s f251, f251 <s 4096@16,
(-4096)@16 <s f252, f252 <s 4096@16, (-4096)@16 <s f253, f253 <s 4096@16, (-4096)@16 <s f254, f254 <s 4096@16, (-4096)@16 <s f255, f255 <s 4096@16
]

}

(* inits *)

mov L0x7fffffffaee0 f000; mov L0x7fffffffaee2 f001; mov L0x7fffffffaee4 f002; mov L0x7fffffffaee6 f003;
mov L0x7fffffffaee8 f004; mov L0x7fffffffaeea f005; mov L0x7fffffffaeec f006; mov L0x7fffffffaeee f007;
mov L0x7fffffffaef0 f008; mov L0x7fffffffaef2 f009; mov L0x7fffffffaef4 f010; mov L0x7fffffffaef6 f011;
mov L0x7fffffffaef8 f012; mov L0x7fffffffaefa f013; mov L0x7fffffffaefc f014; mov L0x7fffffffaefe f015;
mov L0x7fffffffaf00 f016; mov L0x7fffffffaf02 f017; mov L0x7fffffffaf04 f018; mov L0x7fffffffaf06 f019;
mov L0x7fffffffaf08 f020; mov L0x7fffffffaf0a f021; mov L0x7fffffffaf0c f022; mov L0x7fffffffaf0e f023;
mov L0x7fffffffaf10 f024; mov L0x7fffffffaf12 f025; mov L0x7fffffffaf14 f026; mov L0x7fffffffaf16 f027;
mov L0x7fffffffaf18 f028; mov L0x7fffffffaf1a f029; mov L0x7fffffffaf1c f030; mov L0x7fffffffaf1e f031;
mov L0x7fffffffaf20 f032; mov L0x7fffffffaf22 f033; mov L0x7fffffffaf24 f034; mov L0x7fffffffaf26 f035;
mov L0x7fffffffaf28 f036; mov L0x7fffffffaf2a f037; mov L0x7fffffffaf2c f038; mov L0x7fffffffaf2e f039;
mov L0x7fffffffaf30 f040; mov L0x7fffffffaf32 f041; mov L0x7fffffffaf34 f042; mov L0x7fffffffaf36 f043;
mov L0x7fffffffaf38 f044; mov L0x7fffffffaf3a f045; mov L0x7fffffffaf3c f046; mov L0x7fffffffaf3e f047;
mov L0x7fffffffaf40 f048; mov L0x7fffffffaf42 f049; mov L0x7fffffffaf44 f050; mov L0x7fffffffaf46 f051;
mov L0x7fffffffaf48 f052; mov L0x7fffffffaf4a f053; mov L0x7fffffffaf4c f054; mov L0x7fffffffaf4e f055;
mov L0x7fffffffaf50 f056; mov L0x7fffffffaf52 f057; mov L0x7fffffffaf54 f058; mov L0x7fffffffaf56 f059;
mov L0x7fffffffaf58 f060; mov L0x7fffffffaf5a f061; mov L0x7fffffffaf5c f062; mov L0x7fffffffaf5e f063;
mov L0x7fffffffaf60 f064; mov L0x7fffffffaf62 f065; mov L0x7fffffffaf64 f066; mov L0x7fffffffaf66 f067;
mov L0x7fffffffaf68 f068; mov L0x7fffffffaf6a f069; mov L0x7fffffffaf6c f070; mov L0x7fffffffaf6e f071;
mov L0x7fffffffaf70 f072; mov L0x7fffffffaf72 f073; mov L0x7fffffffaf74 f074; mov L0x7fffffffaf76 f075;
mov L0x7fffffffaf78 f076; mov L0x7fffffffaf7a f077; mov L0x7fffffffaf7c f078; mov L0x7fffffffaf7e f079;
mov L0x7fffffffaf80 f080; mov L0x7fffffffaf82 f081; mov L0x7fffffffaf84 f082; mov L0x7fffffffaf86 f083;
mov L0x7fffffffaf88 f084; mov L0x7fffffffaf8a f085; mov L0x7fffffffaf8c f086; mov L0x7fffffffaf8e f087;
mov L0x7fffffffaf90 f088; mov L0x7fffffffaf92 f089; mov L0x7fffffffaf94 f090; mov L0x7fffffffaf96 f091;
mov L0x7fffffffaf98 f092; mov L0x7fffffffaf9a f093; mov L0x7fffffffaf9c f094; mov L0x7fffffffaf9e f095;
mov L0x7fffffffafa0 f096; mov L0x7fffffffafa2 f097; mov L0x7fffffffafa4 f098; mov L0x7fffffffafa6 f099;
mov L0x7fffffffafa8 f100; mov L0x7fffffffafaa f101; mov L0x7fffffffafac f102; mov L0x7fffffffafae f103;
mov L0x7fffffffafb0 f104; mov L0x7fffffffafb2 f105; mov L0x7fffffffafb4 f106; mov L0x7fffffffafb6 f107;
mov L0x7fffffffafb8 f108; mov L0x7fffffffafba f109; mov L0x7fffffffafbc f110; mov L0x7fffffffafbe f111;
mov L0x7fffffffafc0 f112; mov L0x7fffffffafc2 f113; mov L0x7fffffffafc4 f114; mov L0x7fffffffafc6 f115;
mov L0x7fffffffafc8 f116; mov L0x7fffffffafca f117; mov L0x7fffffffafcc f118; mov L0x7fffffffafce f119;
mov L0x7fffffffafd0 f120; mov L0x7fffffffafd2 f121; mov L0x7fffffffafd4 f122; mov L0x7fffffffafd6 f123;
mov L0x7fffffffafd8 f124; mov L0x7fffffffafda f125; mov L0x7fffffffafdc f126; mov L0x7fffffffafde f127;
mov L0x7fffffffafe0 f128; mov L0x7fffffffafe2 f129; mov L0x7fffffffafe4 f130; mov L0x7fffffffafe6 f131;
mov L0x7fffffffafe8 f132; mov L0x7fffffffafea f133; mov L0x7fffffffafec f134; mov L0x7fffffffafee f135;
mov L0x7fffffffaff0 f136; mov L0x7fffffffaff2 f137; mov L0x7fffffffaff4 f138; mov L0x7fffffffaff6 f139;
mov L0x7fffffffaff8 f140; mov L0x7fffffffaffa f141; mov L0x7fffffffaffc f142; mov L0x7fffffffaffe f143;
mov L0x7fffffffb000 f144; mov L0x7fffffffb002 f145; mov L0x7fffffffb004 f146; mov L0x7fffffffb006 f147;
mov L0x7fffffffb008 f148; mov L0x7fffffffb00a f149; mov L0x7fffffffb00c f150; mov L0x7fffffffb00e f151;
mov L0x7fffffffb010 f152; mov L0x7fffffffb012 f153; mov L0x7fffffffb014 f154; mov L0x7fffffffb016 f155;
mov L0x7fffffffb018 f156; mov L0x7fffffffb01a f157; mov L0x7fffffffb01c f158; mov L0x7fffffffb01e f159;
mov L0x7fffffffb020 f160; mov L0x7fffffffb022 f161; mov L0x7fffffffb024 f162; mov L0x7fffffffb026 f163;
mov L0x7fffffffb028 f164; mov L0x7fffffffb02a f165; mov L0x7fffffffb02c f166; mov L0x7fffffffb02e f167;
mov L0x7fffffffb030 f168; mov L0x7fffffffb032 f169; mov L0x7fffffffb034 f170; mov L0x7fffffffb036 f171;
mov L0x7fffffffb038 f172; mov L0x7fffffffb03a f173; mov L0x7fffffffb03c f174; mov L0x7fffffffb03e f175;
mov L0x7fffffffb040 f176; mov L0x7fffffffb042 f177; mov L0x7fffffffb044 f178; mov L0x7fffffffb046 f179;
mov L0x7fffffffb048 f180; mov L0x7fffffffb04a f181; mov L0x7fffffffb04c f182; mov L0x7fffffffb04e f183;
mov L0x7fffffffb050 f184; mov L0x7fffffffb052 f185; mov L0x7fffffffb054 f186; mov L0x7fffffffb056 f187;
mov L0x7fffffffb058 f188; mov L0x7fffffffb05a f189; mov L0x7fffffffb05c f190; mov L0x7fffffffb05e f191;
mov L0x7fffffffb060 f192; mov L0x7fffffffb062 f193; mov L0x7fffffffb064 f194; mov L0x7fffffffb066 f195;
mov L0x7fffffffb068 f196; mov L0x7fffffffb06a f197; mov L0x7fffffffb06c f198; mov L0x7fffffffb06e f199;
mov L0x7fffffffb070 f200; mov L0x7fffffffb072 f201; mov L0x7fffffffb074 f202; mov L0x7fffffffb076 f203;
mov L0x7fffffffb078 f204; mov L0x7fffffffb07a f205; mov L0x7fffffffb07c f206; mov L0x7fffffffb07e f207;
mov L0x7fffffffb080 f208; mov L0x7fffffffb082 f209; mov L0x7fffffffb084 f210; mov L0x7fffffffb086 f211;
mov L0x7fffffffb088 f212; mov L0x7fffffffb08a f213; mov L0x7fffffffb08c f214; mov L0x7fffffffb08e f215;
mov L0x7fffffffb090 f216; mov L0x7fffffffb092 f217; mov L0x7fffffffb094 f218; mov L0x7fffffffb096 f219;
mov L0x7fffffffb098 f220; mov L0x7fffffffb09a f221; mov L0x7fffffffb09c f222; mov L0x7fffffffb09e f223;
mov L0x7fffffffb0a0 f224; mov L0x7fffffffb0a2 f225; mov L0x7fffffffb0a4 f226; mov L0x7fffffffb0a6 f227;
mov L0x7fffffffb0a8 f228; mov L0x7fffffffb0aa f229; mov L0x7fffffffb0ac f230; mov L0x7fffffffb0ae f231;
mov L0x7fffffffb0b0 f232; mov L0x7fffffffb0b2 f233; mov L0x7fffffffb0b4 f234; mov L0x7fffffffb0b6 f235;
mov L0x7fffffffb0b8 f236; mov L0x7fffffffb0ba f237; mov L0x7fffffffb0bc f238; mov L0x7fffffffb0be f239;
mov L0x7fffffffb0c0 f240; mov L0x7fffffffb0c2 f241; mov L0x7fffffffb0c4 f242; mov L0x7fffffffb0c6 f243;
mov L0x7fffffffb0c8 f244; mov L0x7fffffffb0ca f245; mov L0x7fffffffb0cc f246; mov L0x7fffffffb0ce f247;
mov L0x7fffffffb0d0 f248; mov L0x7fffffffb0d2 f249; mov L0x7fffffffb0d4 f250; mov L0x7fffffffb0d6 f251;
mov L0x7fffffffb0d8 f252; mov L0x7fffffffb0da f253; mov L0x7fffffffb0dc f254; mov L0x7fffffffb0de f255;

(* _16XP *)

mov L0x555555560700 ( 10753)@sint16; mov L0x555555560702 ( 10753)@sint16; mov L0x555555560704 ( 10753)@sint16; mov L0x555555560706 ( 10753)@sint16;
mov L0x555555560708 ( 10753)@sint16; mov L0x55555556070a ( 10753)@sint16; mov L0x55555556070c ( 10753)@sint16; mov L0x55555556070e ( 10753)@sint16;
mov L0x555555560710 ( 10753)@sint16; mov L0x555555560712 ( 10753)@sint16; mov L0x555555560714 ( 10753)@sint16; mov L0x555555560716 ( 10753)@sint16;
mov L0x555555560718 ( 10753)@sint16; mov L0x55555556071a ( 10753)@sint16; mov L0x55555556071c ( 10753)@sint16; mov L0x55555556071e ( 10753)@sint16;

(* _16XMONT_PINV *)

mov L0x555555560780 (    -6)@sint16; mov L0x555555560782 (    -6)@sint16; mov L0x555555560784 (    -6)@sint16; mov L0x555555560786 (    -6)@sint16;
mov L0x555555560788 (    -6)@sint16; mov L0x55555556078a (    -6)@sint16; mov L0x55555556078c (    -6)@sint16; mov L0x55555556078e (    -6)@sint16;
mov L0x555555560790 (    -6)@sint16; mov L0x555555560792 (    -6)@sint16; mov L0x555555560794 (    -6)@sint16; mov L0x555555560796 (    -6)@sint16;
mov L0x555555560798 (    -6)@sint16; mov L0x55555556079a (    -6)@sint16; mov L0x55555556079c (    -6)@sint16; mov L0x55555556079e (    -6)@sint16;

(* _16XMONT *)

mov L0x5555555607a0 (  1018)@sint16; mov L0x5555555607a2 (  1018)@sint16; mov L0x5555555607a4 (  1018)@sint16; mov L0x5555555607a6 (  1018)@sint16;
mov L0x5555555607a8 (  1018)@sint16; mov L0x5555555607aa (  1018)@sint16; mov L0x5555555607ac (  1018)@sint16; mov L0x5555555607ae (  1018)@sint16;
mov L0x5555555607b0 (  1018)@sint16; mov L0x5555555607b2 (  1018)@sint16; mov L0x5555555607b4 (  1018)@sint16; mov L0x5555555607b6 (  1018)@sint16;
mov L0x5555555607b8 (  1018)@sint16; mov L0x5555555607ba (  1018)@sint16; mov L0x5555555607bc (  1018)@sint16; mov L0x5555555607be (  1018)@sint16;

(* _ZETAS *)

mov L0x555555560800 ( 27359)@sint16; mov L0x555555560802 ( 27359)@sint16; mov L0x555555560804 ( 27359)@sint16; mov L0x555555560806 ( 27359)@sint16;
mov L0x555555560808 ( 27359)@sint16; mov L0x55555556080a ( 27359)@sint16; mov L0x55555556080c ( 27359)@sint16; mov L0x55555556080e ( 27359)@sint16;
mov L0x555555560810 ( 27359)@sint16; mov L0x555555560812 ( 27359)@sint16; mov L0x555555560814 ( 27359)@sint16; mov L0x555555560816 ( 27359)@sint16;
mov L0x555555560818 ( 27359)@sint16; mov L0x55555556081a ( 27359)@sint16; mov L0x55555556081c ( 27359)@sint16; mov L0x55555556081e ( 27359)@sint16;
mov L0x555555560820 (   223)@sint16; mov L0x555555560822 (   223)@sint16; mov L0x555555560824 (   223)@sint16; mov L0x555555560826 (   223)@sint16;
mov L0x555555560828 (   223)@sint16; mov L0x55555556082a (   223)@sint16; mov L0x55555556082c (   223)@sint16; mov L0x55555556082e (   223)@sint16;
mov L0x555555560830 (   223)@sint16; mov L0x555555560832 (   223)@sint16; mov L0x555555560834 (   223)@sint16; mov L0x555555560836 (   223)@sint16;
mov L0x555555560838 (   223)@sint16; mov L0x55555556083a (   223)@sint16; mov L0x55555556083c (   223)@sint16; mov L0x55555556083e (   223)@sint16;
mov L0x555555560840 ( -1956)@sint16; mov L0x555555560842 ( -1956)@sint16; mov L0x555555560844 ( -1956)@sint16; mov L0x555555560846 ( -1956)@sint16;
mov L0x555555560848 ( -1956)@sint16; mov L0x55555556084a ( -1956)@sint16; mov L0x55555556084c ( -1956)@sint16; mov L0x55555556084e ( -1956)@sint16;
mov L0x555555560850 ( -1956)@sint16; mov L0x555555560852 ( -1956)@sint16; mov L0x555555560854 ( -1956)@sint16; mov L0x555555560856 ( -1956)@sint16;
mov L0x555555560858 ( -1956)@sint16; mov L0x55555556085a ( -1956)@sint16; mov L0x55555556085c ( -1956)@sint16; mov L0x55555556085e ( -1956)@sint16;
mov L0x555555560860 (  4188)@sint16; mov L0x555555560862 (  4188)@sint16; mov L0x555555560864 (  4188)@sint16; mov L0x555555560866 (  4188)@sint16;
mov L0x555555560868 (  4188)@sint16; mov L0x55555556086a (  4188)@sint16; mov L0x55555556086c (  4188)@sint16; mov L0x55555556086e (  4188)@sint16;
mov L0x555555560870 (  4188)@sint16; mov L0x555555560872 (  4188)@sint16; mov L0x555555560874 (  4188)@sint16; mov L0x555555560876 (  4188)@sint16;
mov L0x555555560878 (  4188)@sint16; mov L0x55555556087a (  4188)@sint16; mov L0x55555556087c (  4188)@sint16; mov L0x55555556087e (  4188)@sint16;
mov L0x555555560880 ( 10093)@sint16; mov L0x555555560882 ( 10093)@sint16; mov L0x555555560884 ( 10093)@sint16; mov L0x555555560886 ( 10093)@sint16;
mov L0x555555560888 ( 10093)@sint16; mov L0x55555556088a ( 10093)@sint16; mov L0x55555556088c ( 10093)@sint16; mov L0x55555556088e ( 10093)@sint16;
mov L0x555555560890 (-21094)@sint16; mov L0x555555560892 (-21094)@sint16; mov L0x555555560894 (-21094)@sint16; mov L0x555555560896 (-21094)@sint16;
mov L0x555555560898 (-21094)@sint16; mov L0x55555556089a (-21094)@sint16; mov L0x55555556089c (-21094)@sint16; mov L0x55555556089e (-21094)@sint16;
mov L0x5555555608a0 (  2413)@sint16; mov L0x5555555608a2 (  2413)@sint16; mov L0x5555555608a4 (  2413)@sint16; mov L0x5555555608a6 (  2413)@sint16;
mov L0x5555555608a8 (  2413)@sint16; mov L0x5555555608aa (  2413)@sint16; mov L0x5555555608ac (  2413)@sint16; mov L0x5555555608ae (  2413)@sint16;
mov L0x5555555608b0 ( -3686)@sint16; mov L0x5555555608b2 ( -3686)@sint16; mov L0x5555555608b4 ( -3686)@sint16; mov L0x5555555608b6 ( -3686)@sint16;
mov L0x5555555608b8 ( -3686)@sint16; mov L0x5555555608ba ( -3686)@sint16; mov L0x5555555608bc ( -3686)@sint16; mov L0x5555555608be ( -3686)@sint16;
mov L0x5555555608c0 (   408)@sint16; mov L0x5555555608c2 (   408)@sint16; mov L0x5555555608c4 (   408)@sint16; mov L0x5555555608c6 (   408)@sint16;
mov L0x5555555608c8 (   408)@sint16; mov L0x5555555608ca (   408)@sint16; mov L0x5555555608cc (   408)@sint16; mov L0x5555555608ce (   408)@sint16;
mov L0x5555555608d0 (   408)@sint16; mov L0x5555555608d2 (   408)@sint16; mov L0x5555555608d4 (   408)@sint16; mov L0x5555555608d6 (   408)@sint16;
mov L0x5555555608d8 (   408)@sint16; mov L0x5555555608da (   408)@sint16; mov L0x5555555608dc (   408)@sint16; mov L0x5555555608de (   408)@sint16;
mov L0x5555555608e0 ( -3688)@sint16; mov L0x5555555608e2 ( -3688)@sint16; mov L0x5555555608e4 ( -3688)@sint16; mov L0x5555555608e6 ( -3688)@sint16;
mov L0x5555555608e8 ( -3688)@sint16; mov L0x5555555608ea ( -3688)@sint16; mov L0x5555555608ec ( -3688)@sint16; mov L0x5555555608ee ( -3688)@sint16;
mov L0x5555555608f0 ( -3688)@sint16; mov L0x5555555608f2 ( -3688)@sint16; mov L0x5555555608f4 ( -3688)@sint16; mov L0x5555555608f6 ( -3688)@sint16;
mov L0x5555555608f8 ( -3688)@sint16; mov L0x5555555608fa ( -3688)@sint16; mov L0x5555555608fc ( -3688)@sint16; mov L0x5555555608fe ( -3688)@sint16;
mov L0x555555560900 ( 28517)@sint16; mov L0x555555560902 ( 28517)@sint16; mov L0x555555560904 ( 28517)@sint16; mov L0x555555560906 ( 28517)@sint16;
mov L0x555555560908 ( 28517)@sint16; mov L0x55555556090a ( 28517)@sint16; mov L0x55555556090c ( 28517)@sint16; mov L0x55555556090e ( 28517)@sint16;
mov L0x555555560910 (-20856)@sint16; mov L0x555555560912 (-20856)@sint16; mov L0x555555560914 (-20856)@sint16; mov L0x555555560916 (-20856)@sint16;
mov L0x555555560918 (-20856)@sint16; mov L0x55555556091a (-20856)@sint16; mov L0x55555556091c (-20856)@sint16; mov L0x55555556091e (-20856)@sint16;
mov L0x555555560920 (   357)@sint16; mov L0x555555560922 (   357)@sint16; mov L0x555555560924 (   357)@sint16; mov L0x555555560926 (   357)@sint16;
mov L0x555555560928 (   357)@sint16; mov L0x55555556092a (   357)@sint16; mov L0x55555556092c (   357)@sint16; mov L0x55555556092e (   357)@sint16;
mov L0x555555560930 (  -376)@sint16; mov L0x555555560932 (  -376)@sint16; mov L0x555555560934 (  -376)@sint16; mov L0x555555560936 (  -376)@sint16;
mov L0x555555560938 (  -376)@sint16; mov L0x55555556093a (  -376)@sint16; mov L0x55555556093c (  -376)@sint16; mov L0x55555556093e (  -376)@sint16;

(* _TWIST32 *)

mov L0x555555560940 (    -6)@sint16; mov L0x555555560942 (   -61)@sint16; mov L0x555555560944 (  -609)@sint16; mov L0x555555560946 ( -6095)@sint16;
mov L0x555555560948 (    -6)@sint16; mov L0x55555556094a ( 14237)@sint16; mov L0x55555556094c (-31235)@sint16; mov L0x55555556094e ( 23836)@sint16;
mov L0x555555560950 (    -6)@sint16; mov L0x555555560952 (-19643)@sint16; mov L0x555555560954 ( -2017)@sint16; mov L0x555555560956 (-13811)@sint16;
mov L0x555555560958 (    -6)@sint16; mov L0x55555556095a ( 27329)@sint16; mov L0x55555556095c ( 11300)@sint16; mov L0x55555556095e ( -7722)@sint16;
mov L0x555555560960 (  1018)@sint16; mov L0x555555560962 (  -573)@sint16; mov L0x555555560964 (  5023)@sint16; mov L0x555555560966 ( -3535)@sint16;
mov L0x555555560968 (  1018)@sint16; mov L0x55555556096a ( -1635)@sint16; mov L0x55555556096c (  2045)@sint16; mov L0x55555556096e ( -2788)@sint16;
mov L0x555555560970 (  1018)@sint16; mov L0x555555560972 (  1349)@sint16; mov L0x555555560974 (  3615)@sint16; mov L0x555555560976 ( -5107)@sint16;
mov L0x555555560978 (  1018)@sint16; mov L0x55555556097a (  5313)@sint16; mov L0x55555556097c (  5156)@sint16; mov L0x55555556097e (  -554)@sint16;
mov L0x555555560980 (  4589)@sint16; mov L0x555555560982 (-19643)@sint16; mov L0x555555560984 (   177)@sint16; mov L0x555555560986 (  1767)@sint16;
mov L0x555555560988 ( 24098)@sint16; mov L0x55555556098a (  1725)@sint16; mov L0x55555556098c (-31418)@sint16; mov L0x55555556098e ( -7801)@sint16;
mov L0x555555560990 (-12378)@sint16; mov L0x555555560992 ( 16236)@sint16; mov L0x555555560994 ( 31558)@sint16; mov L0x555555560996 (   232)@sint16;
mov L0x555555560998 ( 22209)@sint16; mov L0x55555556099a ( 29644)@sint16; mov L0x55555556099c (-18845)@sint16; mov L0x55555556099e ( 23836)@sint16;
mov L0x5555555609a0 ( -3091)@sint16; mov L0x5555555609a2 (  1349)@sint16; mov L0x5555555609a4 (  2737)@sint16; mov L0x5555555609a6 ( -4889)@sint16;
mov L0x5555555609a8 ( -3550)@sint16; mov L0x5555555609aa (  2237)@sint16; mov L0x5555555609ac (   326)@sint16; mov L0x5555555609ae (  1927)@sint16;
mov L0x5555555609b0 (  2982)@sint16; mov L0x5555555609b2 ( -2196)@sint16; mov L0x5555555609b4 ( -2234)@sint16; mov L0x5555555609b6 (  4328)@sint16;
mov L0x5555555609b8 (   193)@sint16; mov L0x5555555609ba ( -5172)@sint16; mov L0x5555555609bc ( -2973)@sint16; mov L0x5555555609be ( -2788)@sint16;
mov L0x5555555609c0 ( 17675)@sint16; mov L0x5555555609c2 (-19863)@sint16; mov L0x5555555609c4 ( -2017)@sint16; mov L0x5555555609c6 (-20173)@sint16;
mov L0x5555555609c8 (  4547)@sint16; mov L0x5555555609ca ( -4083)@sint16; mov L0x5555555609cc (-29364)@sint16; mov L0x5555555609ce (-21593)@sint16;
mov L0x5555555609d0 ( 25543)@sint16; mov L0x5555555609d2 ( 11123)@sint16; mov L0x5555555609d4 (   512)@sint16; mov L0x5555555609d6 ( 11623)@sint16;
mov L0x5555555609d8 (  7429)@sint16; mov L0x5555555609da (-21161)@sint16; mov L0x5555555609dc (-11555)@sint16; mov L0x5555555609de (-24129)@sint16;
mov L0x5555555609e0 (  4875)@sint16; mov L0x5555555609e2 ( -5015)@sint16; mov L0x5555555609e4 (  3615)@sint16; mov L0x5555555609e6 (  3891)@sint16;
mov L0x5555555609e8 (  4035)@sint16; mov L0x5555555609ea (  4621)@sint16; mov L0x5555555609ec (  1356)@sint16; mov L0x5555555609ee (  4519)@sint16;
mov L0x5555555609f0 (  2503)@sint16; mov L0x5555555609f2 (  2419)@sint16; mov L0x5555555609f4 (   512)@sint16; mov L0x5555555609f6 (  4967)@sint16;
mov L0x5555555609f8 ( -4347)@sint16; mov L0x5555555609fa ( -3241)@sint16; mov L0x5555555609fc (  5341)@sint16; mov L0x5555555609fe ( -2113)@sint16;
mov L0x555555560a00 ( -5126)@sint16; mov L0x555555560a02 ( 14280)@sint16; mov L0x555555560a04 ( 11726)@sint16; mov L0x555555560a06 (-13811)@sint16;
mov L0x555555560a08 (-20490)@sint16; mov L0x555555560a0a ( 24025)@sint16; mov L0x555555560a0c (-24037)@sint16; mov L0x555555560a0e (-13024)@sint16;
mov L0x555555560a10 (-27152)@sint16; mov L0x555555560a12 (-19564)@sint16; mov L0x555555560a14 ( -8801)@sint16; mov L0x555555560a16 ( 12415)@sint16;
mov L0x555555560a18 ( -6381)@sint16; mov L0x555555560a1a (-26286)@sint16; mov L0x555555560a1c (-31418)@sint16; mov L0x555555560a1e (-23952)@sint16;
mov L0x555555560a20 ( -4102)@sint16; mov L0x555555560a22 (  1992)@sint16; mov L0x555555560a24 ( -1586)@sint16; mov L0x555555560a26 ( -5107)@sint16;
mov L0x555555560a28 (  3062)@sint16; mov L0x555555560a2a ( -2087)@sint16; mov L0x555555560a2c (  4123)@sint16; mov L0x555555560a2e (  3360)@sint16;
mov L0x555555560a30 ( -2576)@sint16; mov L0x555555560a32 ( -1132)@sint16; mov L0x555555560a34 ( -3169)@sint16; mov L0x555555560a36 (  1663)@sint16;
mov L0x555555560a38 (  1299)@sint16; mov L0x555555560a3a (  3410)@sint16; mov L0x555555560a3c (   326)@sint16; mov L0x555555560a3e (   624)@sint16;
mov L0x555555560a40 ( -7033)@sint16; mov L0x555555560a42 ( -4797)@sint16; mov L0x555555560a44 ( 17571)@sint16; mov L0x555555560a46 (-20899)@sint16;
mov L0x555555560a48 ( 16090)@sint16; mov L0x555555560a4a ( 31583)@sint16; mov L0x555555560a4c ( 16614)@sint16; mov L0x555555560a4e (-13164)@sint16;
mov L0x555555560a50 (-29449)@sint16; mov L0x555555560a52 (-19454)@sint16; mov L0x555555560a54 ( 17096)@sint16; mov L0x555555560a56 (-16809)@sint16;
mov L0x555555560a58 (-12476)@sint16; mov L0x555555560a5a (-26292)@sint16; mov L0x555555560a5c ( -4090)@sint16; mov L0x555555560a5e (-12653)@sint16;
mov L0x555555560a60 (  2695)@sint16; mov L0x555555560a62 ( -5309)@sint16; mov L0x555555560a64 (   675)@sint16; mov L0x555555560a66 ( -4003)@sint16;
mov L0x555555560a68 (   730)@sint16; mov L0x555555560a6a (  4447)@sint16; mov L0x555555560a6c (  -794)@sint16; mov L0x555555560a6e (  5268)@sint16;
mov L0x555555560a70 (  4855)@sint16; mov L0x555555560a72 (  2050)@sint16; mov L0x555555560a74 (  4808)@sint16; mov L0x555555560a76 (  1111)@sint16;
mov L0x555555560a78 ( -2236)@sint16; mov L0x555555560a7a (  4428)@sint16; mov L0x555555560a7c ( -5114)@sint16; mov L0x555555560a7e ( -4973)@sint16;
mov L0x555555560a80 (-12378)@sint16; mov L0x555555560a82 (  7289)@sint16; mov L0x555555560a84 (  7356)@sint16; mov L0x555555560a86 (  8027)@sint16;
mov L0x555555560a88 ( 15864)@sint16; mov L0x555555560a8a (-31467)@sint16; mov L0x555555560a8c (-24976)@sint16; mov L0x555555560a8e ( 16809)@sint16;
mov L0x555555560a90 ( 22532)@sint16; mov L0x555555560a92 (  6747)@sint16; mov L0x555555560a94 (-13012)@sint16; mov L0x555555560a96 (  4967)@sint16;
mov L0x555555560a98 (-20198)@sint16; mov L0x555555560a9a ( -4083)@sint16; mov L0x555555560a9c ( 25555)@sint16; mov L0x555555560a9e (-31497)@sint16;
mov L0x555555560aa0 (  2982)@sint16; mov L0x555555560aa2 ( -2439)@sint16; mov L0x555555560aa4 ( -2884)@sint16; mov L0x555555560aa6 (  3419)@sint16;
mov L0x555555560aa8 ( -4616)@sint16; mov L0x555555560aaa ( -2283)@sint16; mov L0x555555560aac (  -400)@sint16; mov L0x555555560aae ( -1111)@sint16;
mov L0x555555560ab0 (     4)@sint16; mov L0x555555560ab2 (  2139)@sint16; mov L0x555555560ab4 (  1324)@sint16; mov L0x555555560ab6 ( -1689)@sint16;
mov L0x555555560ab8 ( -2790)@sint16; mov L0x555555560aba (  4621)@sint16; mov L0x555555560abc (   467)@sint16; mov L0x555555560abe (  2807)@sint16;
mov L0x555555560ac0 ( 14731)@sint16; mov L0x555555560ac2 ( 16236)@sint16; mov L0x555555560ac4 ( 31290)@sint16; mov L0x555555560ac6 (-14780)@sint16;
mov L0x555555560ac8 (-10001)@sint16; mov L0x555555560aca ( 32351)@sint16; mov L0x555555560acc ( -7795)@sint16; mov L0x555555560ace ( -9691)@sint16;
mov L0x555555560ad0 ( 18363)@sint16; mov L0x555555560ad2 (  5729)@sint16; mov L0x555555560ad4 (-16614)@sint16; mov L0x555555560ad6 ( -4248)@sint16;
mov L0x555555560ad8 (  3639)@sint16; mov L0x555555560ada (  3346)@sint16; mov L0x555555560adc (  4394)@sint16; mov L0x555555560ade ( 22483)@sint16;
mov L0x555555560ae0 (  1931)@sint16; mov L0x555555560ae2 ( -2196)@sint16; mov L0x555555560ae4 (  -454)@sint16; mov L0x555555560ae6 ( -4540)@sint16;
mov L0x555555560ae8 (  3823)@sint16; mov L0x555555560aea (  5215)@sint16; mov L0x555555560aec (   909)@sint16; mov L0x555555560aee ( -5083)@sint16;
mov L0x555555560af0 ( -2629)@sint16; mov L0x555555560af2 (    97)@sint16; mov L0x555555560af4 (   794)@sint16; mov L0x555555560af6 (  -152)@sint16;
mov L0x555555560af8 (  5175)@sint16; mov L0x555555560afa (   274)@sint16; mov L0x555555560afc ( -2774)@sint16; mov L0x555555560afe ( -2605)@sint16;
mov L0x555555560b00 (-16724)@sint16; mov L0x555555560b02 ( 29370)@sint16; mov L0x555555560b04 ( 31558)@sint16; mov L0x555555560b06 (-12098)@sint16;
mov L0x555555560b08 ( 27152)@sint16; mov L0x555555560b0a ( 12336)@sint16; mov L0x555555560b0c ( 19844)@sint16; mov L0x555555560b0e (-22215)@sint16;
mov L0x555555560b10 (  5766)@sint16; mov L0x555555560b12 (-29827)@sint16; mov L0x555555560b14 (  7856)@sint16; mov L0x555555560b16 ( 23093)@sint16;
mov L0x555555560b18 (-20490)@sint16; mov L0x555555560b1a ( -3035)@sint16; mov L0x555555560b1c (-21892)@sint16; mov L0x555555560b1e ( -8935)@sint16;
mov L0x555555560b20 ( -2388)@sint16; mov L0x555555560b22 ( -2374)@sint16; mov L0x555555560b24 ( -2234)@sint16; mov L0x555555560b26 (  -834)@sint16;
mov L0x555555560b28 (  2576)@sint16; mov L0x555555560b2a (  4144)@sint16; mov L0x555555560b2c ( -2684)@sint16; mov L0x555555560b2e (   825)@sint16;
mov L0x555555560b30 (  4742)@sint16; mov L0x555555560b32 (  3453)@sint16; mov L0x555555560b34 (  -336)@sint16; mov L0x555555560b36 (  3125)@sint16;
mov L0x555555560b38 (  3062)@sint16; mov L0x555555560b3a (  1573)@sint16; mov L0x555555560b3c (   636)@sint16; mov L0x555555560b3e ( -2279)@sint16;
mov L0x555555560b40 (    -6)@sint16; mov L0x555555560b42 ( -6095)@sint16; mov L0x555555560b44 (   177)@sint16; mov L0x555555560b46 (-19863)@sint16;
mov L0x555555560b48 (    -6)@sint16; mov L0x555555560b4a (-18077)@sint16; mov L0x555555560b4c ( -7326)@sint16; mov L0x555555560b4e ( 29644)@sint16;
mov L0x555555560b50 (    -6)@sint16; mov L0x555555560b52 (  1767)@sint16; mov L0x555555560b54 ( 11726)@sint16; mov L0x555555560b56 (  7289)@sint16;
mov L0x555555560b58 (    -6)@sint16; mov L0x555555560b5a (-19661)@sint16; mov L0x555555560b5c ( 11141)@sint16; mov L0x555555560b5e ( 27329)@sint16;
mov L0x555555560b60 (  1018)@sint16; mov L0x555555560b62 ( -3535)@sint16; mov L0x555555560b64 (  2737)@sint16; mov L0x555555560b66 ( -5015)@sint16;
mov L0x555555560b68 (  1018)@sint16; mov L0x555555560b6a ( -2205)@sint16; mov L0x555555560b6c ( -2206)@sint16; mov L0x555555560b6e ( -5172)@sint16;
mov L0x555555560b70 (  1018)@sint16; mov L0x555555560b72 ( -4889)@sint16; mov L0x555555560b74 ( -1586)@sint16; mov L0x555555560b76 ( -2439)@sint16;
mov L0x555555560b78 (  1018)@sint16; mov L0x555555560b7a (  4403)@sint16; mov L0x555555560b7c (  -635)@sint16; mov L0x555555560b7e (  5313)@sint16;
mov L0x555555560b80 ( -5126)@sint16; mov L0x555555560b82 (-13811)@sint16; mov L0x555555560b84 ( 17571)@sint16; mov L0x555555560b86 (  7289)@sint16;
mov L0x555555560b88 (-23781)@sint16; mov L0x555555560b8a (-18918)@sint16; mov L0x555555560b8c (-11555)@sint16; mov L0x555555560b8e (  1725)@sint16;
mov L0x555555560b90 (-16724)@sint16; mov L0x555555560b92 (   232)@sint16; mov L0x555555560b94 ( -1627)@sint16; mov L0x555555560b96 ( 13158)@sint16;
mov L0x555555560b98 ( 15840)@sint16; mov L0x555555560b9a (-18077)@sint16; mov L0x555555560b9c ( 11300)@sint16; mov L0x555555560b9e ( 14237)@sint16;
mov L0x555555560ba0 ( -4102)@sint16; mov L0x555555560ba2 ( -5107)@sint16; mov L0x555555560ba4 (   675)@sint16; mov L0x555555560ba6 ( -2439)@sint16;
mov L0x555555560ba8 (  4379)@sint16; mov L0x555555560baa ( -1510)@sint16; mov L0x555555560bac (  5341)@sint16; mov L0x555555560bae (  2237)@sint16;
mov L0x555555560bb0 ( -2388)@sint16; mov L0x555555560bb2 (  4328)@sint16; mov L0x555555560bb4 (  2981)@sint16; mov L0x555555560bb6 ( -4250)@sint16;
mov L0x555555560bb8 (  -544)@sint16; mov L0x555555560bba ( -2205)@sint16; mov L0x555555560bbc (  5156)@sint16; mov L0x555555560bbe ( -1635)@sint16;
mov L0x555555560bc0 ( 14731)@sint16; mov L0x555555560bc2 (-14780)@sint16; mov L0x555555560bc4 ( 31558)@sint16; mov L0x555555560bc6 (-30144)@sint16;
mov L0x555555560bc8 (  3925)@sint16; mov L0x555555560bca (-23952)@sint16; mov L0x555555560bcc (  -780)@sint16; mov L0x555555560bce (-20070)@sint16;
mov L0x555555560bd0 (-14847)@sint16; mov L0x555555560bd2 (-19856)@sint16; mov L0x555555560bd4 ( -8801)@sint16; mov L0x555555560bd6 ( -3699)@sint16;
mov L0x555555560bd8 (-11683)@sint16; mov L0x555555560bda ( -7722)@sint16; mov L0x555555560bdc ( -7326)@sint16; mov L0x555555560bde ( 25482)@sint16;
mov L0x555555560be0 (  1931)@sint16; mov L0x555555560be2 ( -4540)@sint16; mov L0x555555560be4 ( -2234)@sint16; mov L0x555555560be6 (  2624)@sint16;
mov L0x555555560be8 (   341)@sint16; mov L0x555555560bea (   624)@sint16; mov L0x555555560bec (  1268)@sint16; mov L0x555555560bee ( -2662)@sint16;
mov L0x555555560bf0 ( -4095)@sint16; mov L0x555555560bf2 (  4720)@sint16; mov L0x555555560bf4 ( -3169)@sint16; mov L0x555555560bf6 (  5005)@sint16;
mov L0x555555560bf8 (  5213)@sint16; mov L0x555555560bfa (  -554)@sint16; mov L0x555555560bfc ( -2206)@sint16; mov L0x555555560bfe (  1930)@sint16;
mov L0x555555560c00 (  2316)@sint16; mov L0x555555560c02 ( 22215)@sint16; mov L0x555555560c04 ( -1627)@sint16; mov L0x555555560c06 ( 11123)@sint16;
mov L0x555555560c08 (-20198)@sint16; mov L0x555555560c0a ( -6594)@sint16; mov L0x555555560c0c (-29364)@sint16; mov L0x555555560c0e (  3346)@sint16;
mov L0x555555560c10 ( 24269)@sint16; mov L0x555555560c12 (-25652)@sint16; mov L0x555555560c14 (-31887)@sint16; mov L0x555555560c16 (  6747)@sint16;
mov L0x555555560c18 ( 22209)@sint16; mov L0x555555560c1a ( 15328)@sint16; mov L0x555555560c1c (-31235)@sint16; mov L0x555555560c1e ( 29644)@sint16;
mov L0x555555560c20 (   268)@sint16; mov L0x555555560c22 (  -825)@sint16; mov L0x555555560c24 (  2981)@sint16; mov L0x555555560c26 (  2419)@sint16;
mov L0x555555560c28 ( -2790)@sint16; mov L0x555555560c2a (  4670)@sint16; mov L0x555555560c2c (  1356)@sint16; mov L0x555555560c2e (   274)@sint16;
mov L0x555555560c30 (   205)@sint16; mov L0x555555560c32 (  5068)@sint16; mov L0x555555560c34 (  3441)@sint16; mov L0x555555560c36 (  2139)@sint16;
mov L0x555555560c38 (   193)@sint16; mov L0x555555560c3a ( -1056)@sint16; mov L0x555555560c3c (  2045)@sint16; mov L0x555555560c3e ( -5172)@sint16;
mov L0x555555560c40 (-18345)@sint16; mov L0x555555560c42 (  5120)@sint16; mov L0x555555560c44 (  7716)@sint16; mov L0x555555560c46 (-17394)@sint16;
mov L0x555555560c48 ( 28224)@sint16; mov L0x555555560c4a ( 24165)@sint16; mov L0x555555560c4c (-21892)@sint16; mov L0x555555560c4e ( 14329)@sint16;
mov L0x555555560c50 (  9508)@sint16; mov L0x555555560c52 ( -4717)@sint16; mov L0x555555560c54 ( -8246)@sint16; mov L0x555555560c56 ( 32070)@sint16;
mov L0x555555560c58 ( 16072)@sint16; mov L0x555555560c5a (  8161)@sint16; mov L0x555555560c5c (-18845)@sint16; mov L0x555555560c5e ( 24330)@sint16;
mov L0x555555560c60 (  -425)@sint16; mov L0x555555560c62 (  5120)@sint16; mov L0x555555560c64 (  1572)@sint16; mov L0x555555560c66 (  2062)@sint16;
mov L0x555555560c68 ( -4544)@sint16; mov L0x555555560c6a ( -3995)@sint16; mov L0x555555560c6c (   636)@sint16; mov L0x555555560c6e (  4601)@sint16;
mov L0x555555560c70 (  3364)@sint16; mov L0x555555560c72 (  2963)@sint16; mov L0x555555560c74 (   970)@sint16; mov L0x555555560c76 ( -1722)@sint16;
mov L0x555555560c78 (  3784)@sint16; mov L0x555555560c7a (  2529)@sint16; mov L0x555555560c7c ( -2973)@sint16; mov L0x555555560c7e (   778)@sint16;
mov L0x555555560c80 (-27152)@sint16; mov L0x555555560c82 (-19856)@sint16; mov L0x555555560c84 (   969)@sint16; mov L0x555555560c86 (-13987)@sint16;
mov L0x555555560c88 ( 31217)@sint16; mov L0x555555560c8a (-13024)@sint16; mov L0x555555560c8c (-29407)@sint16; mov L0x555555560c8e (  7880)@sint16;
mov L0x555555560c90 (  5766)@sint16; mov L0x555555560c92 ( 31924)@sint16; mov L0x555555560c94 (-17352)@sint16; mov L0x555555560c96 (-14329)@sint16;
mov L0x555555560c98 (-23781)@sint16; mov L0x555555560c9a ( 23836)@sint16; mov L0x555555560c9c ( 22044)@sint16; mov L0x555555560c9e (  8758)@sint16;
mov L0x555555560ca0 ( -2576)@sint16; mov L0x555555560ca2 (  4720)@sint16; mov L0x555555560ca4 (  -567)@sint16; mov L0x555555560ca6 (  2909)@sint16;
mov L0x555555560ca8 (  1009)@sint16; mov L0x555555560caa (  3360)@sint16; mov L0x555555560cac ( -2271)@sint16; mov L0x555555560cae ( -4408)@sint16;
mov L0x555555560cb0 (  4742)@sint16; mov L0x555555560cb2 (  1204)@sint16; mov L0x555555560cb4 ( -5064)@sint16; mov L0x555555560cb6 ( -4601)@sint16;
mov L0x555555560cb8 (  4379)@sint16; mov L0x555555560cba ( -2788)@sint16; mov L0x555555560cbc ( -4580)@sint16; mov L0x555555560cbe (  -458)@sint16;
mov L0x555555560cc0 (-28103)@sint16; mov L0x555555560cc2 ( 12415)@sint16; mov L0x555555560cc4 ( 28541)@sint16; mov L0x555555560cc6 (-32351)@sint16;
mov L0x555555560cc8 (-23056)@sint16; mov L0x555555560cca (-30467)@sint16; mov L0x555555560ccc (  8246)@sint16; mov L0x555555560cce ( 12976)@sint16;
mov L0x555555560cd0 ( 26518)@sint16; mov L0x555555560cd2 (-22483)@sint16; mov L0x555555560cd4 ( 32076)@sint16; mov L0x555555560cd6 (  3998)@sint16;
mov L0x555555560cd8 (  7429)@sint16; mov L0x555555560cda (-18918)@sint16; mov L0x555555560cdc (-14999)@sint16; mov L0x555555560cde (-21161)@sint16;
mov L0x555555560ce0 ( -5063)@sint16; mov L0x555555560ce2 (  1663)@sint16; mov L0x555555560ce4 ( -3715)@sint16; mov L0x555555560ce6 ( -5215)@sint16;
mov L0x555555560ce8 (  1520)@sint16; mov L0x555555560cea (  2813)@sint16; mov L0x555555560cec (  -970)@sint16; mov L0x555555560cee (  4784)@sint16;
mov L0x555555560cf0 (   918)@sint16; mov L0x555555560cf2 (  2605)@sint16; mov L0x555555560cf4 ( -2740)@sint16; mov L0x555555560cf6 ( -1122)@sint16;
mov L0x555555560cf8 ( -4347)@sint16; mov L0x555555560cfa ( -1510)@sint16; mov L0x555555560cfc (  -151)@sint16; mov L0x555555560cfe ( -3241)@sint16;
mov L0x555555560d00 ( 24269)@sint16; mov L0x555555560d02 ( 20661)@sint16; mov L0x555555560d04 ( 17096)@sint16; mov L0x555555560d06 ( -9343)@sint16;
mov L0x555555560d08 ( 15864)@sint16; mov L0x555555560d0a (  -951)@sint16; mov L0x555555560d0c ( -1932)@sint16; mov L0x555555560d0e (-28712)@sint16;
mov L0x555555560d10 ( 20198)@sint16; mov L0x555555560d12 (-24641)@sint16; mov L0x555555560d14 (  2395)@sint16; mov L0x555555560d16 ( 26286)@sint16;
mov L0x555555560d18 ( 24098)@sint16; mov L0x555555560d1a ( 15517)@sint16; mov L0x555555560d1c (-11555)@sint16; mov L0x555555560d1e ( 11952)@sint16;
mov L0x555555560d20 (   205)@sint16; mov L0x555555560d22 (   693)@sint16; mov L0x555555560d24 (  4808)@sint16; mov L0x555555560d26 (  1409)@sint16;
mov L0x555555560d28 ( -4616)@sint16; mov L0x555555560d2a ( -2487)@sint16; mov L0x555555560d2c (   116)@sint16; mov L0x555555560d2e (   -40)@sint16;
mov L0x555555560d30 (  2790)@sint16; mov L0x555555560d32 ( -2625)@sint16; mov L0x555555560d34 ( -2213)@sint16; mov L0x555555560d36 ( -3410)@sint16;
mov L0x555555560d38 ( -3550)@sint16; mov L0x555555560d3a (  -355)@sint16; mov L0x555555560d3c (  5341)@sint16; mov L0x555555560d3e (  3760)@sint16;

(* _TWISTS4 *)

mov L0x555555560d40 (    -6)@sint16; mov L0x555555560d42 (  -408)@sint16; mov L0x555555560d44 (-27359)@sint16; mov L0x555555560d46 (  1956)@sint16;
mov L0x555555560d48 (  1018)@sint16; mov L0x555555560d4a (  3688)@sint16; mov L0x555555560d4c (  -223)@sint16; mov L0x555555560d4e ( -4188)@sint16;
mov L0x555555560d50 (    -6)@sint16; mov L0x555555560d52 ( -1956)@sint16; mov L0x555555560d54 ( 27359)@sint16; mov L0x555555560d56 (   408)@sint16;
mov L0x555555560d58 (  1018)@sint16; mov L0x555555560d5a (  4188)@sint16; mov L0x555555560d5c (   223)@sint16; mov L0x555555560d5e ( -3688)@sint16;
mov L0x555555560d60 (    -6)@sint16; mov L0x555555560d62 ( 10093)@sint16; mov L0x555555560d64 ( -1956)@sint16; mov L0x555555560d66 ( 28517)@sint16;
mov L0x555555560d68 (  1018)@sint16; mov L0x555555560d6a (  2413)@sint16; mov L0x555555560d6c (  4188)@sint16; mov L0x555555560d6e (   357)@sint16;
mov L0x555555560d70 (    -6)@sint16; mov L0x555555560d72 ( 20856)@sint16; mov L0x555555560d74 (  -408)@sint16; mov L0x555555560d76 ( 21094)@sint16;
mov L0x555555560d78 (  1018)@sint16; mov L0x555555560d7a (   376)@sint16; mov L0x555555560d7c (  3688)@sint16; mov L0x555555560d7e (  3686)@sint16;
mov L0x555555560d80 (    -6)@sint16; mov L0x555555560d82 ( -7033)@sint16; mov L0x555555560d84 ( 10093)@sint16; mov L0x555555560d86 (-18345)@sint16;
mov L0x555555560d88 (  1018)@sint16; mov L0x555555560d8a (  2695)@sint16; mov L0x555555560d8c (  2413)@sint16; mov L0x555555560d8e (  -425)@sint16;
mov L0x555555560d90 (    -6)@sint16; mov L0x555555560d92 (-12476)@sint16; mov L0x555555560d94 ( 21094)@sint16; mov L0x555555560d96 ( -9508)@sint16;
mov L0x555555560d98 (  1018)@sint16; mov L0x555555560d9a ( -2236)@sint16; mov L0x555555560d9c (  3686)@sint16; mov L0x555555560d9e ( -3364)@sint16;
mov L0x555555560da0 (    -6)@sint16; mov L0x555555560da2 (-18345)@sint16; mov L0x555555560da4 ( 28517)@sint16; mov L0x555555560da6 (-16090)@sint16;
mov L0x555555560da8 (  1018)@sint16; mov L0x555555560daa (  -425)@sint16; mov L0x555555560dac (   357)@sint16; mov L0x555555560dae (  -730)@sint16;
mov L0x555555560db0 (    -6)@sint16; mov L0x555555560db2 ( 16072)@sint16; mov L0x555555560db4 ( 20856)@sint16; mov L0x555555560db6 (-12476)@sint16;
mov L0x555555560db8 (  1018)@sint16; mov L0x555555560dba (  3784)@sint16; mov L0x555555560dbc (   376)@sint16; mov L0x555555560dbe ( -2236)@sint16;

ghost x@sint16 : true && true;
(* inp_poly *)

ghost inp_poly@bit :
inp_poly * inp_poly =
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
f252*(x**252) + f253*(x**253) + f254*(x**254) + f255*(x**255) && true;


#===== program start =====


(* #! -> SP = 0x7fffffffa038 *)
#! 0x7fffffffa038 = 0x7fffffffa038;
(* vmovdqa (%rdx),%ymm0                            #! EA = L0x555555560700; Value = 0x1e011e011e011e01; PC = 0x555555557bdb *)
mov ymm0_0 L0x555555560700;
mov ymm0_1 L0x555555560702;
mov ymm0_2 L0x555555560704;
mov ymm0_3 L0x555555560706;
mov ymm0_4 L0x555555560708;
mov ymm0_5 L0x55555556070a;
mov ymm0_6 L0x55555556070c;
mov ymm0_7 L0x55555556070e;
mov ymm0_8 L0x555555560710;
mov ymm0_9 L0x555555560712;
mov ymm0_a L0x555555560714;
mov ymm0_b L0x555555560716;
mov ymm0_c L0x555555560718;
mov ymm0_d L0x55555556071a;
mov ymm0_e L0x55555556071c;
mov ymm0_f L0x55555556071e;
(* vmovdqa 0x100(%rdx),%ymm1                       #! EA = L0x555555560800; Value = 0x70c170c170c170c1; PC = 0x555555557bdf *)
mov ymm1_0 L0x555555560800;
mov ymm1_1 L0x555555560802;
mov ymm1_2 L0x555555560804;
mov ymm1_3 L0x555555560806;
mov ymm1_4 L0x555555560808;
mov ymm1_5 L0x55555556080a;
mov ymm1_6 L0x55555556080c;
mov ymm1_7 L0x55555556080e;
mov ymm1_8 L0x555555560810;
mov ymm1_9 L0x555555560812;
mov ymm1_a L0x555555560814;
mov ymm1_b L0x555555560816;
mov ymm1_c L0x555555560818;
mov ymm1_d L0x55555556081a;
mov ymm1_e L0x55555556081c;
mov ymm1_f L0x55555556081e;
(* vmovdqa 0x120(%rdx),%ymm2                       #! EA = L0x555555560820; Value = 0x0ec10ec10ec10ec1; PC = 0x555555557be7 *)
mov ymm2_0 L0x555555560820;
mov ymm2_1 L0x555555560822;
mov ymm2_2 L0x555555560824;
mov ymm2_3 L0x555555560826;
mov ymm2_4 L0x555555560828;
mov ymm2_5 L0x55555556082a;
mov ymm2_6 L0x55555556082c;
mov ymm2_7 L0x55555556082e;
mov ymm2_8 L0x555555560830;
mov ymm2_9 L0x555555560832;
mov ymm2_a L0x555555560834;
mov ymm2_b L0x555555560836;
mov ymm2_c L0x555555560838;
mov ymm2_d L0x55555556083a;
mov ymm2_e L0x55555556083c;
mov ymm2_f L0x55555556083e;
(* ===== Start of level 0 ===== *)
(* vmovdqa 0x100(%rsi),%ymm8                       #! EA = L0x7fffffffafe0; Value = 0x00000000ffffffff; PC = 0x555555557bef *)
mov ymm8_0 L0x7fffffffafe0;
mov ymm8_1 L0x7fffffffafe2;
mov ymm8_2 L0x7fffffffafe4;
mov ymm8_3 L0x7fffffffafe6;
mov ymm8_4 L0x7fffffffafe8;
mov ymm8_5 L0x7fffffffafea;
mov ymm8_6 L0x7fffffffafec;
mov ymm8_7 L0x7fffffffafee;
mov ymm8_8 L0x7fffffffaff0;
mov ymm8_9 L0x7fffffffaff2;
mov ymm8_a L0x7fffffffaff4;
mov ymm8_b L0x7fffffffaff6;
mov ymm8_c L0x7fffffffaff8;
mov ymm8_d L0x7fffffffaffa;
mov ymm8_e L0x7fffffffaffc;
mov ymm8_f L0x7fffffffaffe;
(* vmovdqa 0x120(%rsi),%ymm9                       #! EA = L0x7fffffffb000; Value = 0x00010000fffe0002; PC = 0x555555557bf7 *)
mov ymm9_0 L0x7fffffffb000;
mov ymm9_1 L0x7fffffffb002;
mov ymm9_2 L0x7fffffffb004;
mov ymm9_3 L0x7fffffffb006;
mov ymm9_4 L0x7fffffffb008;
mov ymm9_5 L0x7fffffffb00a;
mov ymm9_6 L0x7fffffffb00c;
mov ymm9_7 L0x7fffffffb00e;
mov ymm9_8 L0x7fffffffb010;
mov ymm9_9 L0x7fffffffb012;
mov ymm9_a L0x7fffffffb014;
mov ymm9_b L0x7fffffffb016;
mov ymm9_c L0x7fffffffb018;
mov ymm9_d L0x7fffffffb01a;
mov ymm9_e L0x7fffffffb01c;
mov ymm9_f L0x7fffffffb01e;
(* vmovdqa 0x140(%rsi),%ymm10                      #! EA = L0x7fffffffb020; Value = 0x0001fffdfffe0002; PC = 0x555555557bff *)
mov ymm10_0 L0x7fffffffb020;
mov ymm10_1 L0x7fffffffb022;
mov ymm10_2 L0x7fffffffb024;
mov ymm10_3 L0x7fffffffb026;
mov ymm10_4 L0x7fffffffb028;
mov ymm10_5 L0x7fffffffb02a;
mov ymm10_6 L0x7fffffffb02c;
mov ymm10_7 L0x7fffffffb02e;
mov ymm10_8 L0x7fffffffb030;
mov ymm10_9 L0x7fffffffb032;
mov ymm10_a L0x7fffffffb034;
mov ymm10_b L0x7fffffffb036;
mov ymm10_c L0x7fffffffb038;
mov ymm10_d L0x7fffffffb03a;
mov ymm10_e L0x7fffffffb03c;
mov ymm10_f L0x7fffffffb03e;
(* vmovdqa 0x160(%rsi),%ymm11                      #! EA = L0x7fffffffb040; Value = 0x00020003ffffffff; PC = 0x555555557c07 *)
mov ymm11_0 L0x7fffffffb040;
mov ymm11_1 L0x7fffffffb042;
mov ymm11_2 L0x7fffffffb044;
mov ymm11_3 L0x7fffffffb046;
mov ymm11_4 L0x7fffffffb048;
mov ymm11_5 L0x7fffffffb04a;
mov ymm11_6 L0x7fffffffb04c;
mov ymm11_7 L0x7fffffffb04e;
mov ymm11_8 L0x7fffffffb050;
mov ymm11_9 L0x7fffffffb052;
mov ymm11_a L0x7fffffffb054;
mov ymm11_b L0x7fffffffb056;
mov ymm11_c L0x7fffffffb058;
mov ymm11_d L0x7fffffffb05a;
mov ymm11_e L0x7fffffffb05c;
mov ymm11_f L0x7fffffffb05e;
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x555555557c0f *)
smull mulHymm8_0 mulL_0 ymm1_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm1_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm1_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm1_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm1_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm1_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm1_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm1_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm1_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm1_9 ymm8_9;
smull mulHymm8_a mulL_a ymm1_a ymm8_a;
smull mulHymm8_b mulL_b ymm1_b ymm8_b;
smull mulHymm8_c mulL_c ymm1_c ymm8_c;
smull mulHymm8_d mulL_d ymm1_d ymm8_d;
smull mulHymm8_e mulL_e ymm1_e ymm8_e;
smull mulHymm8_f mulL_f ymm1_f ymm8_f;
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
(* vpmullw %ymm1,%ymm9,%ymm13                      #! PC = 0x555555557c13 *)
smull mulHymm9_0 mulL_0 ymm1_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm1_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm1_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm1_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm1_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm1_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm1_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm1_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm1_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm1_9 ymm9_9;
smull mulHymm9_a mulL_a ymm1_a ymm9_a;
smull mulHymm9_b mulL_b ymm1_b ymm9_b;
smull mulHymm9_c mulL_c ymm1_c ymm9_c;
smull mulHymm9_d mulL_d ymm1_d ymm9_d;
smull mulHymm9_e mulL_e ymm1_e ymm9_e;
smull mulHymm9_f mulL_f ymm1_f ymm9_f;
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
(* vpmullw %ymm1,%ymm10,%ymm14                     #! PC = 0x555555557c17 *)
smull mulHymm10_0 mulL_0 ymm1_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm1_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm1_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm1_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm1_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm1_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm1_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm1_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm1_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm1_9 ymm10_9;
smull mulHymm10_a mulL_a ymm1_a ymm10_a;
smull mulHymm10_b mulL_b ymm1_b ymm10_b;
smull mulHymm10_c mulL_c ymm1_c ymm10_c;
smull mulHymm10_d mulL_d ymm1_d ymm10_d;
smull mulHymm10_e mulL_e ymm1_e ymm10_e;
smull mulHymm10_f mulL_f ymm1_f ymm10_f;
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
(* vpmullw %ymm1,%ymm11,%ymm15                     #! PC = 0x555555557c1b *)
smull mulHymm11_0 mulL_0 ymm1_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm1_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm1_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm1_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm1_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm1_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm1_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm1_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm1_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm1_9 ymm11_9;
smull mulHymm11_a mulL_a ymm1_a ymm11_a;
smull mulHymm11_b mulL_b ymm1_b ymm11_b;
smull mulHymm11_c mulL_c ymm1_c ymm11_c;
smull mulHymm11_d mulL_d ymm1_d ymm11_d;
smull mulHymm11_e mulL_e ymm1_e ymm11_e;
smull mulHymm11_f mulL_f ymm1_f ymm11_f;
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
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x555555557c1f *)
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
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x555555557c23 *)
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
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x555555557c27 *)
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
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x555555557c2b *)
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
(* vmovdqa (%rsi),%ymm4                            #! EA = L0x7fffffffaee0; Value = 0xfffe000000010002; PC = 0x555555557c2f *)
mov ymm4_0 L0x7fffffffaee0;
mov ymm4_1 L0x7fffffffaee2;
mov ymm4_2 L0x7fffffffaee4;
mov ymm4_3 L0x7fffffffaee6;
mov ymm4_4 L0x7fffffffaee8;
mov ymm4_5 L0x7fffffffaeea;
mov ymm4_6 L0x7fffffffaeec;
mov ymm4_7 L0x7fffffffaeee;
mov ymm4_8 L0x7fffffffaef0;
mov ymm4_9 L0x7fffffffaef2;
mov ymm4_a L0x7fffffffaef4;
mov ymm4_b L0x7fffffffaef6;
mov ymm4_c L0x7fffffffaef8;
mov ymm4_d L0x7fffffffaefa;
mov ymm4_e L0x7fffffffaefc;
mov ymm4_f L0x7fffffffaefe;
(* vmovdqa 0x20(%rsi),%ymm5                        #! EA = L0x7fffffffaf00; Value = 0x0000ffff00010000; PC = 0x555555557c33 *)
mov ymm5_0 L0x7fffffffaf00;
mov ymm5_1 L0x7fffffffaf02;
mov ymm5_2 L0x7fffffffaf04;
mov ymm5_3 L0x7fffffffaf06;
mov ymm5_4 L0x7fffffffaf08;
mov ymm5_5 L0x7fffffffaf0a;
mov ymm5_6 L0x7fffffffaf0c;
mov ymm5_7 L0x7fffffffaf0e;
mov ymm5_8 L0x7fffffffaf10;
mov ymm5_9 L0x7fffffffaf12;
mov ymm5_a L0x7fffffffaf14;
mov ymm5_b L0x7fffffffaf16;
mov ymm5_c L0x7fffffffaf18;
mov ymm5_d L0x7fffffffaf1a;
mov ymm5_e L0x7fffffffaf1c;
mov ymm5_f L0x7fffffffaf1e;
(* vmovdqa 0x40(%rsi),%ymm6                        #! EA = L0x7fffffffaf20; Value = 0x00000000fffeffff; PC = 0x555555557c38 *)
mov ymm6_0 L0x7fffffffaf20;
mov ymm6_1 L0x7fffffffaf22;
mov ymm6_2 L0x7fffffffaf24;
mov ymm6_3 L0x7fffffffaf26;
mov ymm6_4 L0x7fffffffaf28;
mov ymm6_5 L0x7fffffffaf2a;
mov ymm6_6 L0x7fffffffaf2c;
mov ymm6_7 L0x7fffffffaf2e;
mov ymm6_8 L0x7fffffffaf30;
mov ymm6_9 L0x7fffffffaf32;
mov ymm6_a L0x7fffffffaf34;
mov ymm6_b L0x7fffffffaf36;
mov ymm6_c L0x7fffffffaf38;
mov ymm6_d L0x7fffffffaf3a;
mov ymm6_e L0x7fffffffaf3c;
mov ymm6_f L0x7fffffffaf3e;
(* vmovdqa 0x60(%rsi),%ymm7                        #! EA = L0x7fffffffaf40; Value = 0xfffffffefffdffff; PC = 0x555555557c3d *)
mov ymm7_0 L0x7fffffffaf40;
mov ymm7_1 L0x7fffffffaf42;
mov ymm7_2 L0x7fffffffaf44;
mov ymm7_3 L0x7fffffffaf46;
mov ymm7_4 L0x7fffffffaf48;
mov ymm7_5 L0x7fffffffaf4a;
mov ymm7_6 L0x7fffffffaf4c;
mov ymm7_7 L0x7fffffffaf4e;
mov ymm7_8 L0x7fffffffaf50;
mov ymm7_9 L0x7fffffffaf52;
mov ymm7_a L0x7fffffffaf54;
mov ymm7_b L0x7fffffffaf56;
mov ymm7_c L0x7fffffffaf58;
mov ymm7_d L0x7fffffffaf5a;
mov ymm7_e L0x7fffffffaf5c;
mov ymm7_f L0x7fffffffaf5e;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557c42 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557c46 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557c4a *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557c4e *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
assert true && and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x555555557c52 *)
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
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555557c57 *)
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
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x555555557c5c *)
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
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555557c61 *)
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
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555557c66 *)
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
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x555555557c6b *)
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
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555557c70 *)
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
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555557c75 *)
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
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x555555557c7a *)
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
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x555555557c7f *)
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
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x555555557c84 *)
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
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x555555557c89 *)
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
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557c8e *)
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
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x555555557c93 *)
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
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x555555557c98 *)
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
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557c9d *)
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
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffffb4e0; PC = 0x555555557ca2 *)
mov L0x7fffffffb4e0 ymm3_0;
mov L0x7fffffffb4e2 ymm3_1;
mov L0x7fffffffb4e4 ymm3_2;
mov L0x7fffffffb4e6 ymm3_3;
mov L0x7fffffffb4e8 ymm3_4;
mov L0x7fffffffb4ea ymm3_5;
mov L0x7fffffffb4ec ymm3_6;
mov L0x7fffffffb4ee ymm3_7;
mov L0x7fffffffb4f0 ymm3_8;
mov L0x7fffffffb4f2 ymm3_9;
mov L0x7fffffffb4f4 ymm3_a;
mov L0x7fffffffb4f6 ymm3_b;
mov L0x7fffffffb4f8 ymm3_c;
mov L0x7fffffffb4fa ymm3_d;
mov L0x7fffffffb4fc ymm3_e;
mov L0x7fffffffb4fe ymm3_f;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffb500; PC = 0x555555557ca6 *)
mov L0x7fffffffb500 ymm4_0;
mov L0x7fffffffb502 ymm4_1;
mov L0x7fffffffb504 ymm4_2;
mov L0x7fffffffb506 ymm4_3;
mov L0x7fffffffb508 ymm4_4;
mov L0x7fffffffb50a ymm4_5;
mov L0x7fffffffb50c ymm4_6;
mov L0x7fffffffb50e ymm4_7;
mov L0x7fffffffb510 ymm4_8;
mov L0x7fffffffb512 ymm4_9;
mov L0x7fffffffb514 ymm4_a;
mov L0x7fffffffb516 ymm4_b;
mov L0x7fffffffb518 ymm4_c;
mov L0x7fffffffb51a ymm4_d;
mov L0x7fffffffb51c ymm4_e;
mov L0x7fffffffb51e ymm4_f;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffffb520; PC = 0x555555557cab *)
mov L0x7fffffffb520 ymm5_0;
mov L0x7fffffffb522 ymm5_1;
mov L0x7fffffffb524 ymm5_2;
mov L0x7fffffffb526 ymm5_3;
mov L0x7fffffffb528 ymm5_4;
mov L0x7fffffffb52a ymm5_5;
mov L0x7fffffffb52c ymm5_6;
mov L0x7fffffffb52e ymm5_7;
mov L0x7fffffffb530 ymm5_8;
mov L0x7fffffffb532 ymm5_9;
mov L0x7fffffffb534 ymm5_a;
mov L0x7fffffffb536 ymm5_b;
mov L0x7fffffffb538 ymm5_c;
mov L0x7fffffffb53a ymm5_d;
mov L0x7fffffffb53c ymm5_e;
mov L0x7fffffffb53e ymm5_f;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffffb540; PC = 0x555555557cb0 *)
mov L0x7fffffffb540 ymm6_0;
mov L0x7fffffffb542 ymm6_1;
mov L0x7fffffffb544 ymm6_2;
mov L0x7fffffffb546 ymm6_3;
mov L0x7fffffffb548 ymm6_4;
mov L0x7fffffffb54a ymm6_5;
mov L0x7fffffffb54c ymm6_6;
mov L0x7fffffffb54e ymm6_7;
mov L0x7fffffffb550 ymm6_8;
mov L0x7fffffffb552 ymm6_9;
mov L0x7fffffffb554 ymm6_a;
mov L0x7fffffffb556 ymm6_b;
mov L0x7fffffffb558 ymm6_c;
mov L0x7fffffffb55a ymm6_d;
mov L0x7fffffffb55c ymm6_e;
mov L0x7fffffffb55e ymm6_f;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb5e0; PC = 0x555555557cb5 *)
mov L0x7fffffffb5e0 ymm8_0;
mov L0x7fffffffb5e2 ymm8_1;
mov L0x7fffffffb5e4 ymm8_2;
mov L0x7fffffffb5e6 ymm8_3;
mov L0x7fffffffb5e8 ymm8_4;
mov L0x7fffffffb5ea ymm8_5;
mov L0x7fffffffb5ec ymm8_6;
mov L0x7fffffffb5ee ymm8_7;
mov L0x7fffffffb5f0 ymm8_8;
mov L0x7fffffffb5f2 ymm8_9;
mov L0x7fffffffb5f4 ymm8_a;
mov L0x7fffffffb5f6 ymm8_b;
mov L0x7fffffffb5f8 ymm8_c;
mov L0x7fffffffb5fa ymm8_d;
mov L0x7fffffffb5fc ymm8_e;
mov L0x7fffffffb5fe ymm8_f;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb600; PC = 0x555555557cbd *)
mov L0x7fffffffb600 ymm9_0;
mov L0x7fffffffb602 ymm9_1;
mov L0x7fffffffb604 ymm9_2;
mov L0x7fffffffb606 ymm9_3;
mov L0x7fffffffb608 ymm9_4;
mov L0x7fffffffb60a ymm9_5;
mov L0x7fffffffb60c ymm9_6;
mov L0x7fffffffb60e ymm9_7;
mov L0x7fffffffb610 ymm9_8;
mov L0x7fffffffb612 ymm9_9;
mov L0x7fffffffb614 ymm9_a;
mov L0x7fffffffb616 ymm9_b;
mov L0x7fffffffb618 ymm9_c;
mov L0x7fffffffb61a ymm9_d;
mov L0x7fffffffb61c ymm9_e;
mov L0x7fffffffb61e ymm9_f;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb620; PC = 0x555555557cc5 *)
mov L0x7fffffffb620 ymm10_0;
mov L0x7fffffffb622 ymm10_1;
mov L0x7fffffffb624 ymm10_2;
mov L0x7fffffffb626 ymm10_3;
mov L0x7fffffffb628 ymm10_4;
mov L0x7fffffffb62a ymm10_5;
mov L0x7fffffffb62c ymm10_6;
mov L0x7fffffffb62e ymm10_7;
mov L0x7fffffffb630 ymm10_8;
mov L0x7fffffffb632 ymm10_9;
mov L0x7fffffffb634 ymm10_a;
mov L0x7fffffffb636 ymm10_b;
mov L0x7fffffffb638 ymm10_c;
mov L0x7fffffffb63a ymm10_d;
mov L0x7fffffffb63c ymm10_e;
mov L0x7fffffffb63e ymm10_f;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb640; PC = 0x555555557ccd *)
mov L0x7fffffffb640 ymm11_0;
mov L0x7fffffffb642 ymm11_1;
mov L0x7fffffffb644 ymm11_2;
mov L0x7fffffffb646 ymm11_3;
mov L0x7fffffffb648 ymm11_4;
mov L0x7fffffffb64a ymm11_5;
mov L0x7fffffffb64c ymm11_6;
mov L0x7fffffffb64e ymm11_7;
mov L0x7fffffffb650 ymm11_8;
mov L0x7fffffffb652 ymm11_9;
mov L0x7fffffffb654 ymm11_a;
mov L0x7fffffffb656 ymm11_b;
mov L0x7fffffffb658 ymm11_c;
mov L0x7fffffffb65a ymm11_d;
mov L0x7fffffffb65c ymm11_e;
mov L0x7fffffffb65e ymm11_f;
(* vmovdqa 0x180(%rsi),%ymm8                       #! EA = L0x7fffffffb060; Value = 0x0000000400000000; PC = 0x555555557cd5 *)
mov ymm8_0 L0x7fffffffb060;
mov ymm8_1 L0x7fffffffb062;
mov ymm8_2 L0x7fffffffb064;
mov ymm8_3 L0x7fffffffb066;
mov ymm8_4 L0x7fffffffb068;
mov ymm8_5 L0x7fffffffb06a;
mov ymm8_6 L0x7fffffffb06c;
mov ymm8_7 L0x7fffffffb06e;
mov ymm8_8 L0x7fffffffb070;
mov ymm8_9 L0x7fffffffb072;
mov ymm8_a L0x7fffffffb074;
mov ymm8_b L0x7fffffffb076;
mov ymm8_c L0x7fffffffb078;
mov ymm8_d L0x7fffffffb07a;
mov ymm8_e L0x7fffffffb07c;
mov ymm8_f L0x7fffffffb07e;
(* vmovdqa 0x1a0(%rsi),%ymm9                       #! EA = L0x7fffffffb080; Value = 0x00010000fffe0000; PC = 0x555555557cdd *)
mov ymm9_0 L0x7fffffffb080;
mov ymm9_1 L0x7fffffffb082;
mov ymm9_2 L0x7fffffffb084;
mov ymm9_3 L0x7fffffffb086;
mov ymm9_4 L0x7fffffffb088;
mov ymm9_5 L0x7fffffffb08a;
mov ymm9_6 L0x7fffffffb08c;
mov ymm9_7 L0x7fffffffb08e;
mov ymm9_8 L0x7fffffffb090;
mov ymm9_9 L0x7fffffffb092;
mov ymm9_a L0x7fffffffb094;
mov ymm9_b L0x7fffffffb096;
mov ymm9_c L0x7fffffffb098;
mov ymm9_d L0x7fffffffb09a;
mov ymm9_e L0x7fffffffb09c;
mov ymm9_f L0x7fffffffb09e;
(* vmovdqa 0x1c0(%rsi),%ymm10                      #! EA = L0x7fffffffb0a0; Value = 0x0000000000000001; PC = 0x555555557ce5 *)
mov ymm10_0 L0x7fffffffb0a0;
mov ymm10_1 L0x7fffffffb0a2;
mov ymm10_2 L0x7fffffffb0a4;
mov ymm10_3 L0x7fffffffb0a6;
mov ymm10_4 L0x7fffffffb0a8;
mov ymm10_5 L0x7fffffffb0aa;
mov ymm10_6 L0x7fffffffb0ac;
mov ymm10_7 L0x7fffffffb0ae;
mov ymm10_8 L0x7fffffffb0b0;
mov ymm10_9 L0x7fffffffb0b2;
mov ymm10_a L0x7fffffffb0b4;
mov ymm10_b L0x7fffffffb0b6;
mov ymm10_c L0x7fffffffb0b8;
mov ymm10_d L0x7fffffffb0ba;
mov ymm10_e L0x7fffffffb0bc;
mov ymm10_f L0x7fffffffb0be;
(* vmovdqa 0x1e0(%rsi),%ymm11                      #! EA = L0x7fffffffb0c0; Value = 0x0000000000000000; PC = 0x555555557ced *)
mov ymm11_0 L0x7fffffffb0c0;
mov ymm11_1 L0x7fffffffb0c2;
mov ymm11_2 L0x7fffffffb0c4;
mov ymm11_3 L0x7fffffffb0c6;
mov ymm11_4 L0x7fffffffb0c8;
mov ymm11_5 L0x7fffffffb0ca;
mov ymm11_6 L0x7fffffffb0cc;
mov ymm11_7 L0x7fffffffb0ce;
mov ymm11_8 L0x7fffffffb0d0;
mov ymm11_9 L0x7fffffffb0d2;
mov ymm11_a L0x7fffffffb0d4;
mov ymm11_b L0x7fffffffb0d6;
mov ymm11_c L0x7fffffffb0d8;
mov ymm11_d L0x7fffffffb0da;
mov ymm11_e L0x7fffffffb0dc;
mov ymm11_f L0x7fffffffb0de;
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x555555557cf5 *)
smull mulHymm8_0 mulL_0 ymm1_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm1_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm1_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm1_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm1_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm1_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm1_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm1_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm1_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm1_9 ymm8_9;
smull mulHymm8_a mulL_a ymm1_a ymm8_a;
smull mulHymm8_b mulL_b ymm1_b ymm8_b;
smull mulHymm8_c mulL_c ymm1_c ymm8_c;
smull mulHymm8_d mulL_d ymm1_d ymm8_d;
smull mulHymm8_e mulL_e ymm1_e ymm8_e;
smull mulHymm8_f mulL_f ymm1_f ymm8_f;
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
(* vpmullw %ymm1,%ymm9,%ymm13                      #! PC = 0x555555557cf9 *)
smull mulHymm9_0 mulL_0 ymm1_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm1_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm1_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm1_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm1_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm1_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm1_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm1_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm1_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm1_9 ymm9_9;
smull mulHymm9_a mulL_a ymm1_a ymm9_a;
smull mulHymm9_b mulL_b ymm1_b ymm9_b;
smull mulHymm9_c mulL_c ymm1_c ymm9_c;
smull mulHymm9_d mulL_d ymm1_d ymm9_d;
smull mulHymm9_e mulL_e ymm1_e ymm9_e;
smull mulHymm9_f mulL_f ymm1_f ymm9_f;
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
(* vpmullw %ymm1,%ymm10,%ymm14                     #! PC = 0x555555557cfd *)
smull mulHymm10_0 mulL_0 ymm1_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm1_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm1_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm1_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm1_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm1_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm1_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm1_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm1_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm1_9 ymm10_9;
smull mulHymm10_a mulL_a ymm1_a ymm10_a;
smull mulHymm10_b mulL_b ymm1_b ymm10_b;
smull mulHymm10_c mulL_c ymm1_c ymm10_c;
smull mulHymm10_d mulL_d ymm1_d ymm10_d;
smull mulHymm10_e mulL_e ymm1_e ymm10_e;
smull mulHymm10_f mulL_f ymm1_f ymm10_f;
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
(* vpmullw %ymm1,%ymm11,%ymm15                     #! PC = 0x555555557d01 *)
smull mulHymm11_0 mulL_0 ymm1_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm1_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm1_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm1_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm1_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm1_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm1_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm1_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm1_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm1_9 ymm11_9;
smull mulHymm11_a mulL_a ymm1_a ymm11_a;
smull mulHymm11_b mulL_b ymm1_b ymm11_b;
smull mulHymm11_c mulL_c ymm1_c ymm11_c;
smull mulHymm11_d mulL_d ymm1_d ymm11_d;
smull mulHymm11_e mulL_e ymm1_e ymm11_e;
smull mulHymm11_f mulL_f ymm1_f ymm11_f;
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
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x555555557d05 *)
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
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x555555557d09 *)
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
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x555555557d0d *)
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
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x555555557d11 *)
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
(* vmovdqa 0x80(%rsi),%ymm4                        #! EA = L0x7fffffffaf60; Value = 0x0000000100020001; PC = 0x555555557d15 *)
mov ymm4_0 L0x7fffffffaf60;
mov ymm4_1 L0x7fffffffaf62;
mov ymm4_2 L0x7fffffffaf64;
mov ymm4_3 L0x7fffffffaf66;
mov ymm4_4 L0x7fffffffaf68;
mov ymm4_5 L0x7fffffffaf6a;
mov ymm4_6 L0x7fffffffaf6c;
mov ymm4_7 L0x7fffffffaf6e;
mov ymm4_8 L0x7fffffffaf70;
mov ymm4_9 L0x7fffffffaf72;
mov ymm4_a L0x7fffffffaf74;
mov ymm4_b L0x7fffffffaf76;
mov ymm4_c L0x7fffffffaf78;
mov ymm4_d L0x7fffffffaf7a;
mov ymm4_e L0x7fffffffaf7c;
mov ymm4_f L0x7fffffffaf7e;
(* vmovdqa 0xa0(%rsi),%ymm5                        #! EA = L0x7fffffffaf80; Value = 0x000000010000ffff; PC = 0x555555557d1d *)
mov ymm5_0 L0x7fffffffaf80;
mov ymm5_1 L0x7fffffffaf82;
mov ymm5_2 L0x7fffffffaf84;
mov ymm5_3 L0x7fffffffaf86;
mov ymm5_4 L0x7fffffffaf88;
mov ymm5_5 L0x7fffffffaf8a;
mov ymm5_6 L0x7fffffffaf8c;
mov ymm5_7 L0x7fffffffaf8e;
mov ymm5_8 L0x7fffffffaf90;
mov ymm5_9 L0x7fffffffaf92;
mov ymm5_a L0x7fffffffaf94;
mov ymm5_b L0x7fffffffaf96;
mov ymm5_c L0x7fffffffaf98;
mov ymm5_d L0x7fffffffaf9a;
mov ymm5_e L0x7fffffffaf9c;
mov ymm5_f L0x7fffffffaf9e;
(* vmovdqa 0xc0(%rsi),%ymm6                        #! EA = L0x7fffffffafa0; Value = 0xfffe0000ffff0003; PC = 0x555555557d25 *)
mov ymm6_0 L0x7fffffffafa0;
mov ymm6_1 L0x7fffffffafa2;
mov ymm6_2 L0x7fffffffafa4;
mov ymm6_3 L0x7fffffffafa6;
mov ymm6_4 L0x7fffffffafa8;
mov ymm6_5 L0x7fffffffafaa;
mov ymm6_6 L0x7fffffffafac;
mov ymm6_7 L0x7fffffffafae;
mov ymm6_8 L0x7fffffffafb0;
mov ymm6_9 L0x7fffffffafb2;
mov ymm6_a L0x7fffffffafb4;
mov ymm6_b L0x7fffffffafb6;
mov ymm6_c L0x7fffffffafb8;
mov ymm6_d L0x7fffffffafba;
mov ymm6_e L0x7fffffffafbc;
mov ymm6_f L0x7fffffffafbe;
(* vmovdqa 0xe0(%rsi),%ymm7                        #! EA = L0x7fffffffafc0; Value = 0xfffe000100000002; PC = 0x555555557d2d *)
mov ymm7_0 L0x7fffffffafc0;
mov ymm7_1 L0x7fffffffafc2;
mov ymm7_2 L0x7fffffffafc4;
mov ymm7_3 L0x7fffffffafc6;
mov ymm7_4 L0x7fffffffafc8;
mov ymm7_5 L0x7fffffffafca;
mov ymm7_6 L0x7fffffffafcc;
mov ymm7_7 L0x7fffffffafce;
mov ymm7_8 L0x7fffffffafd0;
mov ymm7_9 L0x7fffffffafd2;
mov ymm7_a L0x7fffffffafd4;
mov ymm7_b L0x7fffffffafd6;
mov ymm7_c L0x7fffffffafd8;
mov ymm7_d L0x7fffffffafda;
mov ymm7_e L0x7fffffffafdc;
mov ymm7_f L0x7fffffffafde;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557d35 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557d39 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557d3d *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557d41 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
assert true && and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x555555557d45 *)
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
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555557d4a *)
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
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x555555557d4f *)
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
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555557d54 *)
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
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555557d59 *)
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
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x555555557d5e *)
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
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555557d63 *)
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
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555557d68 *)
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
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x555555557d6d *)
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
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x555555557d72 *)
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
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x555555557d77 *)
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
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x555555557d7c *)
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
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557d81 *)
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
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x555555557d86 *)
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
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x555555557d8b *)
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
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557d90 *)
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
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffffb560; PC = 0x555555557d95 *)
mov L0x7fffffffb560 ymm3_0;
mov L0x7fffffffb562 ymm3_1;
mov L0x7fffffffb564 ymm3_2;
mov L0x7fffffffb566 ymm3_3;
mov L0x7fffffffb568 ymm3_4;
mov L0x7fffffffb56a ymm3_5;
mov L0x7fffffffb56c ymm3_6;
mov L0x7fffffffb56e ymm3_7;
mov L0x7fffffffb570 ymm3_8;
mov L0x7fffffffb572 ymm3_9;
mov L0x7fffffffb574 ymm3_a;
mov L0x7fffffffb576 ymm3_b;
mov L0x7fffffffb578 ymm3_c;
mov L0x7fffffffb57a ymm3_d;
mov L0x7fffffffb57c ymm3_e;
mov L0x7fffffffb57e ymm3_f;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb580; PC = 0x555555557d9d *)
mov L0x7fffffffb580 ymm4_0;
mov L0x7fffffffb582 ymm4_1;
mov L0x7fffffffb584 ymm4_2;
mov L0x7fffffffb586 ymm4_3;
mov L0x7fffffffb588 ymm4_4;
mov L0x7fffffffb58a ymm4_5;
mov L0x7fffffffb58c ymm4_6;
mov L0x7fffffffb58e ymm4_7;
mov L0x7fffffffb590 ymm4_8;
mov L0x7fffffffb592 ymm4_9;
mov L0x7fffffffb594 ymm4_a;
mov L0x7fffffffb596 ymm4_b;
mov L0x7fffffffb598 ymm4_c;
mov L0x7fffffffb59a ymm4_d;
mov L0x7fffffffb59c ymm4_e;
mov L0x7fffffffb59e ymm4_f;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb5a0; PC = 0x555555557da5 *)
mov L0x7fffffffb5a0 ymm5_0;
mov L0x7fffffffb5a2 ymm5_1;
mov L0x7fffffffb5a4 ymm5_2;
mov L0x7fffffffb5a6 ymm5_3;
mov L0x7fffffffb5a8 ymm5_4;
mov L0x7fffffffb5aa ymm5_5;
mov L0x7fffffffb5ac ymm5_6;
mov L0x7fffffffb5ae ymm5_7;
mov L0x7fffffffb5b0 ymm5_8;
mov L0x7fffffffb5b2 ymm5_9;
mov L0x7fffffffb5b4 ymm5_a;
mov L0x7fffffffb5b6 ymm5_b;
mov L0x7fffffffb5b8 ymm5_c;
mov L0x7fffffffb5ba ymm5_d;
mov L0x7fffffffb5bc ymm5_e;
mov L0x7fffffffb5be ymm5_f;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffffb5c0; PC = 0x555555557dad *)
mov L0x7fffffffb5c0 ymm6_0;
mov L0x7fffffffb5c2 ymm6_1;
mov L0x7fffffffb5c4 ymm6_2;
mov L0x7fffffffb5c6 ymm6_3;
mov L0x7fffffffb5c8 ymm6_4;
mov L0x7fffffffb5ca ymm6_5;
mov L0x7fffffffb5cc ymm6_6;
mov L0x7fffffffb5ce ymm6_7;
mov L0x7fffffffb5d0 ymm6_8;
mov L0x7fffffffb5d2 ymm6_9;
mov L0x7fffffffb5d4 ymm6_a;
mov L0x7fffffffb5d6 ymm6_b;
mov L0x7fffffffb5d8 ymm6_c;
mov L0x7fffffffb5da ymm6_d;
mov L0x7fffffffb5dc ymm6_e;
mov L0x7fffffffb5de ymm6_f;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb660; PC = 0x555555557db5 *)
mov L0x7fffffffb660 ymm8_0;
mov L0x7fffffffb662 ymm8_1;
mov L0x7fffffffb664 ymm8_2;
mov L0x7fffffffb666 ymm8_3;
mov L0x7fffffffb668 ymm8_4;
mov L0x7fffffffb66a ymm8_5;
mov L0x7fffffffb66c ymm8_6;
mov L0x7fffffffb66e ymm8_7;
mov L0x7fffffffb670 ymm8_8;
mov L0x7fffffffb672 ymm8_9;
mov L0x7fffffffb674 ymm8_a;
mov L0x7fffffffb676 ymm8_b;
mov L0x7fffffffb678 ymm8_c;
mov L0x7fffffffb67a ymm8_d;
mov L0x7fffffffb67c ymm8_e;
mov L0x7fffffffb67e ymm8_f;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb680; PC = 0x555555557dbd *)
mov L0x7fffffffb680 ymm9_0;
mov L0x7fffffffb682 ymm9_1;
mov L0x7fffffffb684 ymm9_2;
mov L0x7fffffffb686 ymm9_3;
mov L0x7fffffffb688 ymm9_4;
mov L0x7fffffffb68a ymm9_5;
mov L0x7fffffffb68c ymm9_6;
mov L0x7fffffffb68e ymm9_7;
mov L0x7fffffffb690 ymm9_8;
mov L0x7fffffffb692 ymm9_9;
mov L0x7fffffffb694 ymm9_a;
mov L0x7fffffffb696 ymm9_b;
mov L0x7fffffffb698 ymm9_c;
mov L0x7fffffffb69a ymm9_d;
mov L0x7fffffffb69c ymm9_e;
mov L0x7fffffffb69e ymm9_f;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb6a0; PC = 0x555555557dc5 *)
mov L0x7fffffffb6a0 ymm10_0;
mov L0x7fffffffb6a2 ymm10_1;
mov L0x7fffffffb6a4 ymm10_2;
mov L0x7fffffffb6a6 ymm10_3;
mov L0x7fffffffb6a8 ymm10_4;
mov L0x7fffffffb6aa ymm10_5;
mov L0x7fffffffb6ac ymm10_6;
mov L0x7fffffffb6ae ymm10_7;
mov L0x7fffffffb6b0 ymm10_8;
mov L0x7fffffffb6b2 ymm10_9;
mov L0x7fffffffb6b4 ymm10_a;
mov L0x7fffffffb6b6 ymm10_b;
mov L0x7fffffffb6b8 ymm10_c;
mov L0x7fffffffb6ba ymm10_d;
mov L0x7fffffffb6bc ymm10_e;
mov L0x7fffffffb6be ymm10_f;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb6c0; PC = 0x555555557dcd *)
mov L0x7fffffffb6c0 ymm11_0;
mov L0x7fffffffb6c2 ymm11_1;
mov L0x7fffffffb6c4 ymm11_2;
mov L0x7fffffffb6c6 ymm11_3;
mov L0x7fffffffb6c8 ymm11_4;
mov L0x7fffffffb6ca ymm11_5;
mov L0x7fffffffb6cc ymm11_6;
mov L0x7fffffffb6ce ymm11_7;
mov L0x7fffffffb6d0 ymm11_8;
mov L0x7fffffffb6d2 ymm11_9;
mov L0x7fffffffb6d4 ymm11_a;
mov L0x7fffffffb6d6 ymm11_b;
mov L0x7fffffffb6d8 ymm11_c;
mov L0x7fffffffb6da ymm11_d;
mov L0x7fffffffb6dc ymm11_e;
mov L0x7fffffffb6de ymm11_f;
(* ===== End of level 0 ===== *)

(* ecut 0, rcut 0 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e0 + L0x7fffffffb4e2*(x**1) + L0x7fffffffb4e4*(x**2) + L0x7fffffffb4e6*(x**3) +
    L0x7fffffffb4e8*(x**4) + L0x7fffffffb4ea*(x**5) + L0x7fffffffb4ec*(x**6) + L0x7fffffffb4ee*(x**7) +
    L0x7fffffffb4f0*(x**8) + L0x7fffffffb4f2*(x**9) + L0x7fffffffb4f4*(x**10) + L0x7fffffffb4f6*(x**11) +
    L0x7fffffffb4f8*(x**12) + L0x7fffffffb4fa*(x**13) + L0x7fffffffb4fc*(x**14) + L0x7fffffffb4fe*(x**15) +
    L0x7fffffffb500*(x**16) + L0x7fffffffb502*(x**17) + L0x7fffffffb504*(x**18) + L0x7fffffffb506*(x**19) +
    L0x7fffffffb508*(x**20) + L0x7fffffffb50a*(x**21) + L0x7fffffffb50c*(x**22) + L0x7fffffffb50e*(x**23) +
    L0x7fffffffb510*(x**24) + L0x7fffffffb512*(x**25) + L0x7fffffffb514*(x**26) + L0x7fffffffb516*(x**27) +
    L0x7fffffffb518*(x**28) + L0x7fffffffb51a*(x**29) + L0x7fffffffb51c*(x**30) + L0x7fffffffb51e*(x**31) +
    L0x7fffffffb520*(x**32) + L0x7fffffffb522*(x**33) + L0x7fffffffb524*(x**34) + L0x7fffffffb526*(x**35) +
    L0x7fffffffb528*(x**36) + L0x7fffffffb52a*(x**37) + L0x7fffffffb52c*(x**38) + L0x7fffffffb52e*(x**39) +
    L0x7fffffffb530*(x**40) + L0x7fffffffb532*(x**41) + L0x7fffffffb534*(x**42) + L0x7fffffffb536*(x**43) +
    L0x7fffffffb538*(x**44) + L0x7fffffffb53a*(x**45) + L0x7fffffffb53c*(x**46) + L0x7fffffffb53e*(x**47) +
    L0x7fffffffb540*(x**48) + L0x7fffffffb542*(x**49) + L0x7fffffffb544*(x**50) + L0x7fffffffb546*(x**51) +
    L0x7fffffffb548*(x**52) + L0x7fffffffb54a*(x**53) + L0x7fffffffb54c*(x**54) + L0x7fffffffb54e*(x**55) +
    L0x7fffffffb550*(x**56) + L0x7fffffffb552*(x**57) + L0x7fffffffb554*(x**58) + L0x7fffffffb556*(x**59) +
    L0x7fffffffb558*(x**60) + L0x7fffffffb55a*(x**61) + L0x7fffffffb55c*(x**62) + L0x7fffffffb55e*(x**63) +
    L0x7fffffffb560*(x**64) + L0x7fffffffb562*(x**65) + L0x7fffffffb564*(x**66) + L0x7fffffffb566*(x**67) +
    L0x7fffffffb568*(x**68) + L0x7fffffffb56a*(x**69) + L0x7fffffffb56c*(x**70) + L0x7fffffffb56e*(x**71) +
    L0x7fffffffb570*(x**72) + L0x7fffffffb572*(x**73) + L0x7fffffffb574*(x**74) + L0x7fffffffb576*(x**75) +
    L0x7fffffffb578*(x**76) + L0x7fffffffb57a*(x**77) + L0x7fffffffb57c*(x**78) + L0x7fffffffb57e*(x**79) +
    L0x7fffffffb580*(x**80) + L0x7fffffffb582*(x**81) + L0x7fffffffb584*(x**82) + L0x7fffffffb586*(x**83) +
    L0x7fffffffb588*(x**84) + L0x7fffffffb58a*(x**85) + L0x7fffffffb58c*(x**86) + L0x7fffffffb58e*(x**87) +
    L0x7fffffffb590*(x**88) + L0x7fffffffb592*(x**89) + L0x7fffffffb594*(x**90) + L0x7fffffffb596*(x**91) +
    L0x7fffffffb598*(x**92) + L0x7fffffffb59a*(x**93) + L0x7fffffffb59c*(x**94) + L0x7fffffffb59e*(x**95) +
    L0x7fffffffb5a0*(x**96) + L0x7fffffffb5a2*(x**97) + L0x7fffffffb5a4*(x**98) + L0x7fffffffb5a6*(x**99) +
    L0x7fffffffb5a8*(x**100) + L0x7fffffffb5aa*(x**101) + L0x7fffffffb5ac*(x**102) + L0x7fffffffb5ae*(x**103) +
    L0x7fffffffb5b0*(x**104) + L0x7fffffffb5b2*(x**105) + L0x7fffffffb5b4*(x**106) + L0x7fffffffb5b6*(x**107) +
    L0x7fffffffb5b8*(x**108) + L0x7fffffffb5ba*(x**109) + L0x7fffffffb5bc*(x**110) + L0x7fffffffb5be*(x**111) +
    L0x7fffffffb5c0*(x**112) + L0x7fffffffb5c2*(x**113) + L0x7fffffffb5c4*(x**114) + L0x7fffffffb5c6*(x**115) +
    L0x7fffffffb5c8*(x**116) + L0x7fffffffb5ca*(x**117) + L0x7fffffffb5cc*(x**118) + L0x7fffffffb5ce*(x**119) +
    L0x7fffffffb5d0*(x**120) + L0x7fffffffb5d2*(x**121) + L0x7fffffffb5d4*(x**122) + L0x7fffffffb5d6*(x**123) +
    L0x7fffffffb5d8*(x**124) + L0x7fffffffb5da*(x**125) + L0x7fffffffb5dc*(x**126) + L0x7fffffffb5de*(x**127)
  )
  [10753, x**128 - (-4489)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e0 + L0x7fffffffb5e2*(x**1) + L0x7fffffffb5e4*(x**2) + L0x7fffffffb5e6*(x**3) +
    L0x7fffffffb5e8*(x**4) + L0x7fffffffb5ea*(x**5) + L0x7fffffffb5ec*(x**6) + L0x7fffffffb5ee*(x**7) +
    L0x7fffffffb5f0*(x**8) + L0x7fffffffb5f2*(x**9) + L0x7fffffffb5f4*(x**10) + L0x7fffffffb5f6*(x**11) +
    L0x7fffffffb5f8*(x**12) + L0x7fffffffb5fa*(x**13) + L0x7fffffffb5fc*(x**14) + L0x7fffffffb5fe*(x**15) +
    L0x7fffffffb600*(x**16) + L0x7fffffffb602*(x**17) + L0x7fffffffb604*(x**18) + L0x7fffffffb606*(x**19) +
    L0x7fffffffb608*(x**20) + L0x7fffffffb60a*(x**21) + L0x7fffffffb60c*(x**22) + L0x7fffffffb60e*(x**23) +
    L0x7fffffffb610*(x**24) + L0x7fffffffb612*(x**25) + L0x7fffffffb614*(x**26) + L0x7fffffffb616*(x**27) +
    L0x7fffffffb618*(x**28) + L0x7fffffffb61a*(x**29) + L0x7fffffffb61c*(x**30) + L0x7fffffffb61e*(x**31) +
    L0x7fffffffb620*(x**32) + L0x7fffffffb622*(x**33) + L0x7fffffffb624*(x**34) + L0x7fffffffb626*(x**35) +
    L0x7fffffffb628*(x**36) + L0x7fffffffb62a*(x**37) + L0x7fffffffb62c*(x**38) + L0x7fffffffb62e*(x**39) +
    L0x7fffffffb630*(x**40) + L0x7fffffffb632*(x**41) + L0x7fffffffb634*(x**42) + L0x7fffffffb636*(x**43) +
    L0x7fffffffb638*(x**44) + L0x7fffffffb63a*(x**45) + L0x7fffffffb63c*(x**46) + L0x7fffffffb63e*(x**47) +
    L0x7fffffffb640*(x**48) + L0x7fffffffb642*(x**49) + L0x7fffffffb644*(x**50) + L0x7fffffffb646*(x**51) +
    L0x7fffffffb648*(x**52) + L0x7fffffffb64a*(x**53) + L0x7fffffffb64c*(x**54) + L0x7fffffffb64e*(x**55) +
    L0x7fffffffb650*(x**56) + L0x7fffffffb652*(x**57) + L0x7fffffffb654*(x**58) + L0x7fffffffb656*(x**59) +
    L0x7fffffffb658*(x**60) + L0x7fffffffb65a*(x**61) + L0x7fffffffb65c*(x**62) + L0x7fffffffb65e*(x**63) +
    L0x7fffffffb660*(x**64) + L0x7fffffffb662*(x**65) + L0x7fffffffb664*(x**66) + L0x7fffffffb666*(x**67) +
    L0x7fffffffb668*(x**68) + L0x7fffffffb66a*(x**69) + L0x7fffffffb66c*(x**70) + L0x7fffffffb66e*(x**71) +
    L0x7fffffffb670*(x**72) + L0x7fffffffb672*(x**73) + L0x7fffffffb674*(x**74) + L0x7fffffffb676*(x**75) +
    L0x7fffffffb678*(x**76) + L0x7fffffffb67a*(x**77) + L0x7fffffffb67c*(x**78) + L0x7fffffffb67e*(x**79) +
    L0x7fffffffb680*(x**80) + L0x7fffffffb682*(x**81) + L0x7fffffffb684*(x**82) + L0x7fffffffb686*(x**83) +
    L0x7fffffffb688*(x**84) + L0x7fffffffb68a*(x**85) + L0x7fffffffb68c*(x**86) + L0x7fffffffb68e*(x**87) +
    L0x7fffffffb690*(x**88) + L0x7fffffffb692*(x**89) + L0x7fffffffb694*(x**90) + L0x7fffffffb696*(x**91) +
    L0x7fffffffb698*(x**92) + L0x7fffffffb69a*(x**93) + L0x7fffffffb69c*(x**94) + L0x7fffffffb69e*(x**95) +
    L0x7fffffffb6a0*(x**96) + L0x7fffffffb6a2*(x**97) + L0x7fffffffb6a4*(x**98) + L0x7fffffffb6a6*(x**99) +
    L0x7fffffffb6a8*(x**100) + L0x7fffffffb6aa*(x**101) + L0x7fffffffb6ac*(x**102) + L0x7fffffffb6ae*(x**103) +
    L0x7fffffffb6b0*(x**104) + L0x7fffffffb6b2*(x**105) + L0x7fffffffb6b4*(x**106) + L0x7fffffffb6b6*(x**107) +
    L0x7fffffffb6b8*(x**108) + L0x7fffffffb6ba*(x**109) + L0x7fffffffb6bc*(x**110) + L0x7fffffffb6be*(x**111) +
    L0x7fffffffb6c0*(x**112) + L0x7fffffffb6c2*(x**113) + L0x7fffffffb6c4*(x**114) + L0x7fffffffb6c6*(x**115) +
    L0x7fffffffb6c8*(x**116) + L0x7fffffffb6ca*(x**117) + L0x7fffffffb6cc*(x**118) + L0x7fffffffb6ce*(x**119) +
    L0x7fffffffb6d0*(x**120) + L0x7fffffffb6d2*(x**121) + L0x7fffffffb6d4*(x**122) + L0x7fffffffb6d6*(x**123) +
    L0x7fffffffb6d8*(x**124) + L0x7fffffffb6da*(x**125) + L0x7fffffffb6dc*(x**126) + L0x7fffffffb6de*(x**127)
  )
  [10753, x**128 - (4489)]
] && and [
  (-(9479))@16 <s L0x7fffffffb4e0, L0x7fffffffb4e0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4e2, L0x7fffffffb4e2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4e4, L0x7fffffffb4e4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4e6, L0x7fffffffb4e6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4e8, L0x7fffffffb4e8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4ea, L0x7fffffffb4ea <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4ec, L0x7fffffffb4ec <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4ee, L0x7fffffffb4ee <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4f0, L0x7fffffffb4f0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4f2, L0x7fffffffb4f2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4f4, L0x7fffffffb4f4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4f6, L0x7fffffffb4f6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4f8, L0x7fffffffb4f8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4fa, L0x7fffffffb4fa <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb4fc, L0x7fffffffb4fc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb4fe, L0x7fffffffb4fe <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb500, L0x7fffffffb500 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb502, L0x7fffffffb502 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb504, L0x7fffffffb504 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb506, L0x7fffffffb506 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb508, L0x7fffffffb508 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb50a, L0x7fffffffb50a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb50c, L0x7fffffffb50c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb50e, L0x7fffffffb50e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb510, L0x7fffffffb510 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb512, L0x7fffffffb512 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb514, L0x7fffffffb514 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb516, L0x7fffffffb516 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb518, L0x7fffffffb518 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb51a, L0x7fffffffb51a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb51c, L0x7fffffffb51c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb51e, L0x7fffffffb51e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb520, L0x7fffffffb520 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb522, L0x7fffffffb522 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb524, L0x7fffffffb524 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb526, L0x7fffffffb526 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb528, L0x7fffffffb528 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb52a, L0x7fffffffb52a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb52c, L0x7fffffffb52c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb52e, L0x7fffffffb52e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb530, L0x7fffffffb530 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb532, L0x7fffffffb532 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb534, L0x7fffffffb534 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb536, L0x7fffffffb536 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb538, L0x7fffffffb538 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb53a, L0x7fffffffb53a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb53c, L0x7fffffffb53c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb53e, L0x7fffffffb53e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb540, L0x7fffffffb540 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb542, L0x7fffffffb542 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb544, L0x7fffffffb544 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb546, L0x7fffffffb546 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb548, L0x7fffffffb548 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb54a, L0x7fffffffb54a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb54c, L0x7fffffffb54c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb54e, L0x7fffffffb54e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb550, L0x7fffffffb550 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb552, L0x7fffffffb552 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb554, L0x7fffffffb554 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb556, L0x7fffffffb556 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb558, L0x7fffffffb558 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb55a, L0x7fffffffb55a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb55c, L0x7fffffffb55c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb55e, L0x7fffffffb55e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb560, L0x7fffffffb560 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb562, L0x7fffffffb562 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb564, L0x7fffffffb564 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb566, L0x7fffffffb566 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb568, L0x7fffffffb568 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb56a, L0x7fffffffb56a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb56c, L0x7fffffffb56c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb56e, L0x7fffffffb56e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb570, L0x7fffffffb570 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb572, L0x7fffffffb572 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb574, L0x7fffffffb574 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb576, L0x7fffffffb576 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb578, L0x7fffffffb578 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb57a, L0x7fffffffb57a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb57c, L0x7fffffffb57c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb57e, L0x7fffffffb57e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb580, L0x7fffffffb580 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb582, L0x7fffffffb582 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb584, L0x7fffffffb584 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb586, L0x7fffffffb586 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb588, L0x7fffffffb588 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb58a, L0x7fffffffb58a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb58c, L0x7fffffffb58c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb58e, L0x7fffffffb58e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb590, L0x7fffffffb590 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb592, L0x7fffffffb592 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb594, L0x7fffffffb594 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb596, L0x7fffffffb596 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb598, L0x7fffffffb598 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb59a, L0x7fffffffb59a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb59c, L0x7fffffffb59c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb59e, L0x7fffffffb59e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5a0, L0x7fffffffb5a0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5a2, L0x7fffffffb5a2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5a4, L0x7fffffffb5a4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5a6, L0x7fffffffb5a6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5a8, L0x7fffffffb5a8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5aa, L0x7fffffffb5aa <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5ac, L0x7fffffffb5ac <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ae, L0x7fffffffb5ae <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5b0, L0x7fffffffb5b0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5b2, L0x7fffffffb5b2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5b4, L0x7fffffffb5b4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5b6, L0x7fffffffb5b6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5b8, L0x7fffffffb5b8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ba, L0x7fffffffb5ba <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5bc, L0x7fffffffb5bc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5be, L0x7fffffffb5be <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5c0, L0x7fffffffb5c0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5c2, L0x7fffffffb5c2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5c4, L0x7fffffffb5c4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5c6, L0x7fffffffb5c6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5c8, L0x7fffffffb5c8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ca, L0x7fffffffb5ca <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5cc, L0x7fffffffb5cc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ce, L0x7fffffffb5ce <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5d0, L0x7fffffffb5d0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5d2, L0x7fffffffb5d2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5d4, L0x7fffffffb5d4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5d6, L0x7fffffffb5d6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5d8, L0x7fffffffb5d8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5da, L0x7fffffffb5da <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5dc, L0x7fffffffb5dc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5de, L0x7fffffffb5de <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5e0, L0x7fffffffb5e0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5e2, L0x7fffffffb5e2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5e4, L0x7fffffffb5e4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5e6, L0x7fffffffb5e6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5e8, L0x7fffffffb5e8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ea, L0x7fffffffb5ea <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5ec, L0x7fffffffb5ec <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ee, L0x7fffffffb5ee <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5f0, L0x7fffffffb5f0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5f2, L0x7fffffffb5f2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5f4, L0x7fffffffb5f4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5f6, L0x7fffffffb5f6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5f8, L0x7fffffffb5f8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5fa, L0x7fffffffb5fa <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5fc, L0x7fffffffb5fc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5fe, L0x7fffffffb5fe <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb600, L0x7fffffffb600 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb602, L0x7fffffffb602 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb604, L0x7fffffffb604 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb606, L0x7fffffffb606 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb608, L0x7fffffffb608 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb60a, L0x7fffffffb60a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb60c, L0x7fffffffb60c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb60e, L0x7fffffffb60e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb610, L0x7fffffffb610 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb612, L0x7fffffffb612 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb614, L0x7fffffffb614 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb616, L0x7fffffffb616 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb618, L0x7fffffffb618 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb61a, L0x7fffffffb61a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb61c, L0x7fffffffb61c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb61e, L0x7fffffffb61e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb620, L0x7fffffffb620 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb622, L0x7fffffffb622 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb624, L0x7fffffffb624 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb626, L0x7fffffffb626 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb628, L0x7fffffffb628 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb62a, L0x7fffffffb62a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb62c, L0x7fffffffb62c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb62e, L0x7fffffffb62e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb630, L0x7fffffffb630 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb632, L0x7fffffffb632 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb634, L0x7fffffffb634 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb636, L0x7fffffffb636 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb638, L0x7fffffffb638 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb63a, L0x7fffffffb63a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb63c, L0x7fffffffb63c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb63e, L0x7fffffffb63e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb640, L0x7fffffffb640 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb642, L0x7fffffffb642 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb644, L0x7fffffffb644 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb646, L0x7fffffffb646 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb648, L0x7fffffffb648 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb64a, L0x7fffffffb64a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb64c, L0x7fffffffb64c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb64e, L0x7fffffffb64e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb650, L0x7fffffffb650 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb652, L0x7fffffffb652 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb654, L0x7fffffffb654 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb656, L0x7fffffffb656 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb658, L0x7fffffffb658 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb65a, L0x7fffffffb65a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb65c, L0x7fffffffb65c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb65e, L0x7fffffffb65e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb660, L0x7fffffffb660 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb662, L0x7fffffffb662 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb664, L0x7fffffffb664 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb666, L0x7fffffffb666 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb668, L0x7fffffffb668 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb66a, L0x7fffffffb66a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb66c, L0x7fffffffb66c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb66e, L0x7fffffffb66e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb670, L0x7fffffffb670 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb672, L0x7fffffffb672 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb674, L0x7fffffffb674 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb676, L0x7fffffffb676 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb678, L0x7fffffffb678 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb67a, L0x7fffffffb67a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb67c, L0x7fffffffb67c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb67e, L0x7fffffffb67e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb680, L0x7fffffffb680 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb682, L0x7fffffffb682 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb684, L0x7fffffffb684 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb686, L0x7fffffffb686 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb688, L0x7fffffffb688 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb68a, L0x7fffffffb68a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb68c, L0x7fffffffb68c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb68e, L0x7fffffffb68e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb690, L0x7fffffffb690 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb692, L0x7fffffffb692 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb694, L0x7fffffffb694 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb696, L0x7fffffffb696 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb698, L0x7fffffffb698 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb69a, L0x7fffffffb69a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb69c, L0x7fffffffb69c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb69e, L0x7fffffffb69e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6a0, L0x7fffffffb6a0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6a2, L0x7fffffffb6a2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6a4, L0x7fffffffb6a4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6a6, L0x7fffffffb6a6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6a8, L0x7fffffffb6a8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6aa, L0x7fffffffb6aa <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6ac, L0x7fffffffb6ac <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ae, L0x7fffffffb6ae <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6b0, L0x7fffffffb6b0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6b2, L0x7fffffffb6b2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6b4, L0x7fffffffb6b4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6b6, L0x7fffffffb6b6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6b8, L0x7fffffffb6b8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ba, L0x7fffffffb6ba <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6bc, L0x7fffffffb6bc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6be, L0x7fffffffb6be <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6c0, L0x7fffffffb6c0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6c2, L0x7fffffffb6c2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6c4, L0x7fffffffb6c4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6c6, L0x7fffffffb6c6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6c8, L0x7fffffffb6c8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ca, L0x7fffffffb6ca <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6cc, L0x7fffffffb6cc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ce, L0x7fffffffb6ce <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6d0, L0x7fffffffb6d0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6d2, L0x7fffffffb6d2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6d4, L0x7fffffffb6d4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6d6, L0x7fffffffb6d6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6d8, L0x7fffffffb6d8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6da, L0x7fffffffb6da <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6dc, L0x7fffffffb6dc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6de, L0x7fffffffb6de <s (9479)@16
];

(* ===== Start of level 1, off 0 ===== *)
(* vmovdqa 0x140(%rdx),%ymm15                      #! EA = L0x555555560840; Value = 0xd792d792d792d792; PC = 0x555555557dd5 *)
mov ymm15_0 L0x555555560840;
mov ymm15_1 L0x555555560842;
mov ymm15_2 L0x555555560844;
mov ymm15_3 L0x555555560846;
mov ymm15_4 L0x555555560848;
mov ymm15_5 L0x55555556084a;
mov ymm15_6 L0x55555556084c;
mov ymm15_7 L0x55555556084e;
mov ymm15_8 L0x555555560850;
mov ymm15_9 L0x555555560852;
mov ymm15_a L0x555555560854;
mov ymm15_b L0x555555560856;
mov ymm15_c L0x555555560858;
mov ymm15_d L0x55555556085a;
mov ymm15_e L0x55555556085c;
mov ymm15_f L0x55555556085e;
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb560; Value = 0x0000072700020001; PC = 0x555555557ddd *)
mov ymm8_0 L0x7fffffffb560;
mov ymm8_1 L0x7fffffffb562;
mov ymm8_2 L0x7fffffffb564;
mov ymm8_3 L0x7fffffffb566;
mov ymm8_4 L0x7fffffffb568;
mov ymm8_5 L0x7fffffffb56a;
mov ymm8_6 L0x7fffffffb56c;
mov ymm8_7 L0x7fffffffb56e;
mov ymm8_8 L0x7fffffffb570;
mov ymm8_9 L0x7fffffffb572;
mov ymm8_a L0x7fffffffb574;
mov ymm8_b L0x7fffffffb576;
mov ymm8_c L0x7fffffffb578;
mov ymm8_d L0x7fffffffb57a;
mov ymm8_e L0x7fffffffb57c;
mov ymm8_f L0x7fffffffb57e;
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb580; Value = 0xf2c90001fc6dffff; PC = 0x555555557de5 *)
mov ymm9_0 L0x7fffffffb580;
mov ymm9_1 L0x7fffffffb582;
mov ymm9_2 L0x7fffffffb584;
mov ymm9_3 L0x7fffffffb586;
mov ymm9_4 L0x7fffffffb588;
mov ymm9_5 L0x7fffffffb58a;
mov ymm9_6 L0x7fffffffb58c;
mov ymm9_7 L0x7fffffffb58e;
mov ymm9_8 L0x7fffffffb590;
mov ymm9_9 L0x7fffffffb592;
mov ymm9_a L0x7fffffffb594;
mov ymm9_b L0x7fffffffb596;
mov ymm9_c L0x7fffffffb598;
mov ymm9_d L0x7fffffffb59a;
mov ymm9_e L0x7fffffffb59c;
mov ymm9_f L0x7fffffffb59e;
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb5a0; Value = 0xfffe0000fffff2cc; PC = 0x555555557ded *)
mov ymm10_0 L0x7fffffffb5a0;
mov ymm10_1 L0x7fffffffb5a2;
mov ymm10_2 L0x7fffffffb5a4;
mov ymm10_3 L0x7fffffffb5a6;
mov ymm10_4 L0x7fffffffb5a8;
mov ymm10_5 L0x7fffffffb5aa;
mov ymm10_6 L0x7fffffffb5ac;
mov ymm10_7 L0x7fffffffb5ae;
mov ymm10_8 L0x7fffffffb5b0;
mov ymm10_9 L0x7fffffffb5b2;
mov ymm10_a L0x7fffffffb5b4;
mov ymm10_b L0x7fffffffb5b6;
mov ymm10_c L0x7fffffffb5b8;
mov ymm10_d L0x7fffffffb5ba;
mov ymm10_e L0x7fffffffb5bc;
mov ymm10_f L0x7fffffffb5be;
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb5c0; Value = 0xfffe000100000002; PC = 0x555555557df5 *)
mov ymm11_0 L0x7fffffffb5c0;
mov ymm11_1 L0x7fffffffb5c2;
mov ymm11_2 L0x7fffffffb5c4;
mov ymm11_3 L0x7fffffffb5c6;
mov ymm11_4 L0x7fffffffb5c8;
mov ymm11_5 L0x7fffffffb5ca;
mov ymm11_6 L0x7fffffffb5cc;
mov ymm11_7 L0x7fffffffb5ce;
mov ymm11_8 L0x7fffffffb5d0;
mov ymm11_9 L0x7fffffffb5d2;
mov ymm11_a L0x7fffffffb5d4;
mov ymm11_b L0x7fffffffb5d6;
mov ymm11_c L0x7fffffffb5d8;
mov ymm11_d L0x7fffffffb5da;
mov ymm11_e L0x7fffffffb5dc;
mov ymm11_f L0x7fffffffb5de;
(* vmovdqa 0x160(%rdx),%ymm3                       #! EA = L0x555555560860; Value = 0xf392f392f392f392; PC = 0x555555557dfd *)
mov ymm3_0 L0x555555560860;
mov ymm3_1 L0x555555560862;
mov ymm3_2 L0x555555560864;
mov ymm3_3 L0x555555560866;
mov ymm3_4 L0x555555560868;
mov ymm3_5 L0x55555556086a;
mov ymm3_6 L0x55555556086c;
mov ymm3_7 L0x55555556086e;
mov ymm3_8 L0x555555560870;
mov ymm3_9 L0x555555560872;
mov ymm3_a L0x555555560874;
mov ymm3_b L0x555555560876;
mov ymm3_c L0x555555560878;
mov ymm3_d L0x55555556087a;
mov ymm3_e L0x55555556087c;
mov ymm3_f L0x55555556087e;
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x555555557e05 *)
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
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x555555557e0a *)
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
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x555555557e0f *)
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
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x555555557e14 *)
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
(* vpmulhw %ymm3,%ymm8,%ymm8                       #! PC = 0x555555557e19 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm3_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm3_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm3_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm3_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm3_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm3_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm3_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm3_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm3_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm3_9;
smull mulH_a mulLymm8_a ymm8_a ymm3_a;
smull mulH_b mulLymm8_b ymm8_b ymm3_b;
smull mulH_c mulLymm8_c ymm8_c ymm3_c;
smull mulH_d mulLymm8_d ymm8_d ymm3_d;
smull mulH_e mulLymm8_e ymm8_e ymm3_e;
smull mulH_f mulLymm8_f ymm8_f ymm3_f;
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
(* vpmulhw %ymm3,%ymm9,%ymm9                       #! PC = 0x555555557e1d *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm3_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm3_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm3_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm3_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm3_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm3_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm3_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm3_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm3_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm3_9;
smull mulH_a mulLymm9_a ymm9_a ymm3_a;
smull mulH_b mulLymm9_b ymm9_b ymm3_b;
smull mulH_c mulLymm9_c ymm9_c ymm3_c;
smull mulH_d mulLymm9_d ymm9_d ymm3_d;
smull mulH_e mulLymm9_e ymm9_e ymm3_e;
smull mulH_f mulLymm9_f ymm9_f ymm3_f;
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
(* vpmulhw %ymm3,%ymm10,%ymm10                     #! PC = 0x555555557e21 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm3_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm3_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm3_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm3_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm3_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm3_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm3_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm3_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm3_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm3_9;
smull mulH_a mulLymm10_a ymm10_a ymm3_a;
smull mulH_b mulLymm10_b ymm10_b ymm3_b;
smull mulH_c mulLymm10_c ymm10_c ymm3_c;
smull mulH_d mulLymm10_d ymm10_d ymm3_d;
smull mulH_e mulLymm10_e ymm10_e ymm3_e;
smull mulH_f mulLymm10_f ymm10_f ymm3_f;
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
(* vpmulhw %ymm3,%ymm11,%ymm11                     #! PC = 0x555555557e25 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm3_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm3_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm3_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm3_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm3_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm3_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm3_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm3_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm3_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm3_9;
smull mulH_a mulLymm11_a ymm11_a ymm3_a;
smull mulH_b mulLymm11_b ymm11_b ymm3_b;
smull mulH_c mulLymm11_c ymm11_c ymm3_c;
smull mulH_d mulLymm11_d ymm11_d ymm3_d;
smull mulH_e mulLymm11_e ymm11_e ymm3_e;
smull mulH_f mulLymm11_f ymm11_f ymm3_f;
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
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb4e0; Value = 0xfffe00000d380d39; PC = 0x555555557e29 *)
mov ymm4_0 L0x7fffffffb4e0;
mov ymm4_1 L0x7fffffffb4e2;
mov ymm4_2 L0x7fffffffb4e4;
mov ymm4_3 L0x7fffffffb4e6;
mov ymm4_4 L0x7fffffffb4e8;
mov ymm4_5 L0x7fffffffb4ea;
mov ymm4_6 L0x7fffffffb4ec;
mov ymm4_7 L0x7fffffffb4ee;
mov ymm4_8 L0x7fffffffb4f0;
mov ymm4_9 L0x7fffffffb4f2;
mov ymm4_a L0x7fffffffb4f4;
mov ymm4_b L0x7fffffffb4f6;
mov ymm4_c L0x7fffffffb4f8;
mov ymm4_d L0x7fffffffb4fa;
mov ymm4_e L0x7fffffffb4fc;
mov ymm4_f L0x7fffffffb4fe;
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb500; Value = 0xf2c9fffffc6e0393; PC = 0x555555557e2d *)
mov ymm5_0 L0x7fffffffb500;
mov ymm5_1 L0x7fffffffb502;
mov ymm5_2 L0x7fffffffb504;
mov ymm5_3 L0x7fffffffb506;
mov ymm5_4 L0x7fffffffb508;
mov ymm5_5 L0x7fffffffb50a;
mov ymm5_6 L0x7fffffffb50c;
mov ymm5_7 L0x7fffffffb50e;
mov ymm5_8 L0x7fffffffb510;
mov ymm5_9 L0x7fffffffb512;
mov ymm5_a L0x7fffffffb514;
mov ymm5_b L0x7fffffffb516;
mov ymm5_c L0x7fffffffb518;
mov ymm5_d L0x7fffffffb51a;
mov ymm5_e L0x7fffffffb51c;
mov ymm5_f L0x7fffffffb51e;
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb520; Value = 0xf2c909a4fc6b0392; PC = 0x555555557e32 *)
mov ymm6_0 L0x7fffffffb520;
mov ymm6_1 L0x7fffffffb522;
mov ymm6_2 L0x7fffffffb524;
mov ymm6_3 L0x7fffffffb526;
mov ymm6_4 L0x7fffffffb528;
mov ymm6_5 L0x7fffffffb52a;
mov ymm6_6 L0x7fffffffb52c;
mov ymm6_7 L0x7fffffffb52e;
mov ymm6_8 L0x7fffffffb530;
mov ymm6_9 L0x7fffffffb532;
mov ymm6_a L0x7fffffffb534;
mov ymm6_b L0x7fffffffb536;
mov ymm6_c L0x7fffffffb538;
mov ymm6_d L0x7fffffffb53a;
mov ymm6_e L0x7fffffffb53c;
mov ymm6_f L0x7fffffffb53e;
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb540; Value = 0x0392f65a0d340d36; PC = 0x555555557e37 *)
mov ymm7_0 L0x7fffffffb540;
mov ymm7_1 L0x7fffffffb542;
mov ymm7_2 L0x7fffffffb544;
mov ymm7_3 L0x7fffffffb546;
mov ymm7_4 L0x7fffffffb548;
mov ymm7_5 L0x7fffffffb54a;
mov ymm7_6 L0x7fffffffb54c;
mov ymm7_7 L0x7fffffffb54e;
mov ymm7_8 L0x7fffffffb550;
mov ymm7_9 L0x7fffffffb552;
mov ymm7_a L0x7fffffffb554;
mov ymm7_b L0x7fffffffb556;
mov ymm7_c L0x7fffffffb558;
mov ymm7_d L0x7fffffffb55a;
mov ymm7_e L0x7fffffffb55c;
mov ymm7_f L0x7fffffffb55e;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557e3c *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557e40 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557e44 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557e48 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
assert true && and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x555555557e4c *)
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
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555557e51 *)
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
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x555555557e56 *)
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
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555557e5b *)
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
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555557e60 *)
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
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x555555557e65 *)
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
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555557e6a *)
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
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555557e6f *)
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
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x555555557e74 *)
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
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x555555557e79 *)
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
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x555555557e7e *)
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
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x555555557e83 *)
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
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557e88 *)
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
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x555555557e8d *)
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
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x555555557e92 *)
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
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557e97 *)
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
(* ===== End of level 1, off 0 ===== *)

(* ecut 1, rcut 1 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*(x**1) + ymm3_2*(x**2) + ymm3_3*(x**3) +
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
    ymm6_c*(x**60) + ymm6_d*(x**61) + ymm6_e*(x**62) + ymm6_f*(x**63)
  )
  [10753, x**64 - (321)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm8_1*(x**1) + ymm8_2*(x**2) + ymm8_3*(x**3) +
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
    ymm11_c*(x**60) + ymm11_d*(x**61) + ymm11_e*(x**62) + ymm11_f*(x**63)
  )
  [10753, x**64 - (-321)]
] && and [
  (-(15398))@16 <s ymm3_0, ymm3_0 <s (15398)@16, (-(15398))@16 <s ymm3_1, ymm3_1 <s (15398)@16,
  (-(15398))@16 <s ymm3_2, ymm3_2 <s (15398)@16, (-(15398))@16 <s ymm3_3, ymm3_3 <s (15398)@16,
  (-(15398))@16 <s ymm3_4, ymm3_4 <s (15398)@16, (-(15398))@16 <s ymm3_5, ymm3_5 <s (15398)@16,
  (-(15398))@16 <s ymm3_6, ymm3_6 <s (15398)@16, (-(15398))@16 <s ymm3_7, ymm3_7 <s (15398)@16,
  (-(15398))@16 <s ymm3_8, ymm3_8 <s (15398)@16, (-(15398))@16 <s ymm3_9, ymm3_9 <s (15398)@16,
  (-(15398))@16 <s ymm3_a, ymm3_a <s (15398)@16, (-(15398))@16 <s ymm3_b, ymm3_b <s (15398)@16,
  (-(15398))@16 <s ymm3_c, ymm3_c <s (15398)@16, (-(15398))@16 <s ymm3_d, ymm3_d <s (15398)@16,
  (-(15398))@16 <s ymm3_e, ymm3_e <s (15398)@16, (-(15398))@16 <s ymm3_f, ymm3_f <s (15398)@16,
  (-(15398))@16 <s ymm4_0, ymm4_0 <s (15398)@16, (-(15398))@16 <s ymm4_1, ymm4_1 <s (15398)@16,
  (-(15398))@16 <s ymm4_2, ymm4_2 <s (15398)@16, (-(15398))@16 <s ymm4_3, ymm4_3 <s (15398)@16,
  (-(15398))@16 <s ymm4_4, ymm4_4 <s (15398)@16, (-(15398))@16 <s ymm4_5, ymm4_5 <s (15398)@16,
  (-(15398))@16 <s ymm4_6, ymm4_6 <s (15398)@16, (-(15398))@16 <s ymm4_7, ymm4_7 <s (15398)@16,
  (-(15398))@16 <s ymm4_8, ymm4_8 <s (15398)@16, (-(15398))@16 <s ymm4_9, ymm4_9 <s (15398)@16,
  (-(15398))@16 <s ymm4_a, ymm4_a <s (15398)@16, (-(15398))@16 <s ymm4_b, ymm4_b <s (15398)@16,
  (-(15398))@16 <s ymm4_c, ymm4_c <s (15398)@16, (-(15398))@16 <s ymm4_d, ymm4_d <s (15398)@16,
  (-(15398))@16 <s ymm4_e, ymm4_e <s (15398)@16, (-(15398))@16 <s ymm4_f, ymm4_f <s (15398)@16,
  (-(15398))@16 <s ymm5_0, ymm5_0 <s (15398)@16, (-(15398))@16 <s ymm5_1, ymm5_1 <s (15398)@16,
  (-(15398))@16 <s ymm5_2, ymm5_2 <s (15398)@16, (-(15398))@16 <s ymm5_3, ymm5_3 <s (15398)@16,
  (-(15398))@16 <s ymm5_4, ymm5_4 <s (15398)@16, (-(15398))@16 <s ymm5_5, ymm5_5 <s (15398)@16,
  (-(15398))@16 <s ymm5_6, ymm5_6 <s (15398)@16, (-(15398))@16 <s ymm5_7, ymm5_7 <s (15398)@16,
  (-(15398))@16 <s ymm5_8, ymm5_8 <s (15398)@16, (-(15398))@16 <s ymm5_9, ymm5_9 <s (15398)@16,
  (-(15398))@16 <s ymm5_a, ymm5_a <s (15398)@16, (-(15398))@16 <s ymm5_b, ymm5_b <s (15398)@16,
  (-(15398))@16 <s ymm5_c, ymm5_c <s (15398)@16, (-(15398))@16 <s ymm5_d, ymm5_d <s (15398)@16,
  (-(15398))@16 <s ymm5_e, ymm5_e <s (15398)@16, (-(15398))@16 <s ymm5_f, ymm5_f <s (15398)@16,
  (-(15398))@16 <s ymm6_0, ymm6_0 <s (15398)@16, (-(15398))@16 <s ymm6_1, ymm6_1 <s (15398)@16,
  (-(15398))@16 <s ymm6_2, ymm6_2 <s (15398)@16, (-(15398))@16 <s ymm6_3, ymm6_3 <s (15398)@16,
  (-(15398))@16 <s ymm6_4, ymm6_4 <s (15398)@16, (-(15398))@16 <s ymm6_5, ymm6_5 <s (15398)@16,
  (-(15398))@16 <s ymm6_6, ymm6_6 <s (15398)@16, (-(15398))@16 <s ymm6_7, ymm6_7 <s (15398)@16,
  (-(15398))@16 <s ymm6_8, ymm6_8 <s (15398)@16, (-(15398))@16 <s ymm6_9, ymm6_9 <s (15398)@16,
  (-(15398))@16 <s ymm6_a, ymm6_a <s (15398)@16, (-(15398))@16 <s ymm6_b, ymm6_b <s (15398)@16,
  (-(15398))@16 <s ymm6_c, ymm6_c <s (15398)@16, (-(15398))@16 <s ymm6_d, ymm6_d <s (15398)@16,
  (-(15398))@16 <s ymm6_e, ymm6_e <s (15398)@16, (-(15398))@16 <s ymm6_f, ymm6_f <s (15398)@16,
  (-(15398))@16 <s ymm8_0, ymm8_0 <s (15398)@16, (-(15398))@16 <s ymm8_1, ymm8_1 <s (15398)@16,
  (-(15398))@16 <s ymm8_2, ymm8_2 <s (15398)@16, (-(15398))@16 <s ymm8_3, ymm8_3 <s (15398)@16,
  (-(15398))@16 <s ymm8_4, ymm8_4 <s (15398)@16, (-(15398))@16 <s ymm8_5, ymm8_5 <s (15398)@16,
  (-(15398))@16 <s ymm8_6, ymm8_6 <s (15398)@16, (-(15398))@16 <s ymm8_7, ymm8_7 <s (15398)@16,
  (-(15398))@16 <s ymm8_8, ymm8_8 <s (15398)@16, (-(15398))@16 <s ymm8_9, ymm8_9 <s (15398)@16,
  (-(15398))@16 <s ymm8_a, ymm8_a <s (15398)@16, (-(15398))@16 <s ymm8_b, ymm8_b <s (15398)@16,
  (-(15398))@16 <s ymm8_c, ymm8_c <s (15398)@16, (-(15398))@16 <s ymm8_d, ymm8_d <s (15398)@16,
  (-(15398))@16 <s ymm8_e, ymm8_e <s (15398)@16, (-(15398))@16 <s ymm8_f, ymm8_f <s (15398)@16,
  (-(15398))@16 <s ymm9_0, ymm9_0 <s (15398)@16, (-(15398))@16 <s ymm9_1, ymm9_1 <s (15398)@16,
  (-(15398))@16 <s ymm9_2, ymm9_2 <s (15398)@16, (-(15398))@16 <s ymm9_3, ymm9_3 <s (15398)@16,
  (-(15398))@16 <s ymm9_4, ymm9_4 <s (15398)@16, (-(15398))@16 <s ymm9_5, ymm9_5 <s (15398)@16,
  (-(15398))@16 <s ymm9_6, ymm9_6 <s (15398)@16, (-(15398))@16 <s ymm9_7, ymm9_7 <s (15398)@16,
  (-(15398))@16 <s ymm9_8, ymm9_8 <s (15398)@16, (-(15398))@16 <s ymm9_9, ymm9_9 <s (15398)@16,
  (-(15398))@16 <s ymm9_a, ymm9_a <s (15398)@16, (-(15398))@16 <s ymm9_b, ymm9_b <s (15398)@16,
  (-(15398))@16 <s ymm9_c, ymm9_c <s (15398)@16, (-(15398))@16 <s ymm9_d, ymm9_d <s (15398)@16,
  (-(15398))@16 <s ymm9_e, ymm9_e <s (15398)@16, (-(15398))@16 <s ymm9_f, ymm9_f <s (15398)@16,
  (-(15398))@16 <s ymm10_0, ymm10_0 <s (15398)@16, (-(15398))@16 <s ymm10_1, ymm10_1 <s (15398)@16,
  (-(15398))@16 <s ymm10_2, ymm10_2 <s (15398)@16, (-(15398))@16 <s ymm10_3, ymm10_3 <s (15398)@16,
  (-(15398))@16 <s ymm10_4, ymm10_4 <s (15398)@16, (-(15398))@16 <s ymm10_5, ymm10_5 <s (15398)@16,
  (-(15398))@16 <s ymm10_6, ymm10_6 <s (15398)@16, (-(15398))@16 <s ymm10_7, ymm10_7 <s (15398)@16,
  (-(15398))@16 <s ymm10_8, ymm10_8 <s (15398)@16, (-(15398))@16 <s ymm10_9, ymm10_9 <s (15398)@16,
  (-(15398))@16 <s ymm10_a, ymm10_a <s (15398)@16, (-(15398))@16 <s ymm10_b, ymm10_b <s (15398)@16,
  (-(15398))@16 <s ymm10_c, ymm10_c <s (15398)@16, (-(15398))@16 <s ymm10_d, ymm10_d <s (15398)@16,
  (-(15398))@16 <s ymm10_e, ymm10_e <s (15398)@16, (-(15398))@16 <s ymm10_f, ymm10_f <s (15398)@16,
  (-(15398))@16 <s ymm11_0, ymm11_0 <s (15398)@16, (-(15398))@16 <s ymm11_1, ymm11_1 <s (15398)@16,
  (-(15398))@16 <s ymm11_2, ymm11_2 <s (15398)@16, (-(15398))@16 <s ymm11_3, ymm11_3 <s (15398)@16,
  (-(15398))@16 <s ymm11_4, ymm11_4 <s (15398)@16, (-(15398))@16 <s ymm11_5, ymm11_5 <s (15398)@16,
  (-(15398))@16 <s ymm11_6, ymm11_6 <s (15398)@16, (-(15398))@16 <s ymm11_7, ymm11_7 <s (15398)@16,
  (-(15398))@16 <s ymm11_8, ymm11_8 <s (15398)@16, (-(15398))@16 <s ymm11_9, ymm11_9 <s (15398)@16,
  (-(15398))@16 <s ymm11_a, ymm11_a <s (15398)@16, (-(15398))@16 <s ymm11_b, ymm11_b <s (15398)@16,
  (-(15398))@16 <s ymm11_c, ymm11_c <s (15398)@16, (-(15398))@16 <s ymm11_d, ymm11_d <s (15398)@16,
  (-(15398))@16 <s ymm11_e, ymm11_e <s (15398)@16, (-(15398))@16 <s ymm11_f, ymm11_f <s (15398)@16
];

(* ===== Start of level 2, off 0 ===== *)
(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x555555557e9c *)
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
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x555555557ea2 *)
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
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x555555557ea8 *)
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
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x555555557eae *)
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
(* vmovdqa 0x180(%rdx),%ymm15                      #! EA = L0x555555560880; Value = 0x1190119011901190; PC = 0x555555557eb4 *)
mov ymm15_0 L0x555555560880;
mov ymm15_1 L0x555555560882;
mov ymm15_2 L0x555555560884;
mov ymm15_3 L0x555555560886;
mov ymm15_4 L0x555555560888;
mov ymm15_5 L0x55555556088a;
mov ymm15_6 L0x55555556088c;
mov ymm15_7 L0x55555556088e;
mov ymm15_8 L0x555555560890;
mov ymm15_9 L0x555555560892;
mov ymm15_a L0x555555560894;
mov ymm15_b L0x555555560896;
mov ymm15_c L0x555555560898;
mov ymm15_d L0x55555556089a;
mov ymm15_e L0x55555556089c;
mov ymm15_f L0x55555556089e;
(* vmovdqa 0x1a0(%rdx),%ymm6                       #! EA = L0x5555555608a0; Value = 0xf190f190f190f190; PC = 0x555555557ebc *)
mov ymm6_0 L0x5555555608a0;
mov ymm6_1 L0x5555555608a2;
mov ymm6_2 L0x5555555608a4;
mov ymm6_3 L0x5555555608a6;
mov ymm6_4 L0x5555555608a8;
mov ymm6_5 L0x5555555608aa;
mov ymm6_6 L0x5555555608ac;
mov ymm6_7 L0x5555555608ae;
mov ymm6_8 L0x5555555608b0;
mov ymm6_9 L0x5555555608b2;
mov ymm6_a L0x5555555608b4;
mov ymm6_b L0x5555555608b6;
mov ymm6_c L0x5555555608b8;
mov ymm6_d L0x5555555608ba;
mov ymm6_e L0x5555555608bc;
mov ymm6_f L0x5555555608be;
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x555555557ec4 *)
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
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x555555557ec9 *)
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
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x555555557ece *)
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
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x555555557ed3 *)
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
(* vpmulhw %ymm6,%ymm7,%ymm7                       #! PC = 0x555555557ed8 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm6_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm6_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm6_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm6_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm6_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm6_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm6_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm6_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm6_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm6_9;
smull mulH_a mulLymm7_a ymm7_a ymm6_a;
smull mulH_b mulLymm7_b ymm7_b ymm6_b;
smull mulH_c mulLymm7_c ymm7_c ymm6_c;
smull mulH_d mulLymm7_d ymm7_d ymm6_d;
smull mulH_e mulLymm7_e ymm7_e ymm6_e;
smull mulH_f mulLymm7_f ymm7_f ymm6_f;
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
(* vpmulhw %ymm6,%ymm10,%ymm10                     #! PC = 0x555555557edc *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm6_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm6_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm6_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm6_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm6_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm6_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm6_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm6_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm6_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm6_9;
smull mulH_a mulLymm10_a ymm10_a ymm6_a;
smull mulH_b mulLymm10_b ymm10_b ymm6_b;
smull mulH_c mulLymm10_c ymm10_c ymm6_c;
smull mulH_d mulLymm10_d ymm10_d ymm6_d;
smull mulH_e mulLymm10_e ymm10_e ymm6_e;
smull mulH_f mulLymm10_f ymm10_f ymm6_f;
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
(* vpmulhw %ymm6,%ymm5,%ymm5                       #! PC = 0x555555557ee0 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm6_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm6_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm6_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm6_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm6_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm6_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm6_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm6_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm6_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm6_9;
smull mulH_a mulLymm5_a ymm5_a ymm6_a;
smull mulH_b mulLymm5_b ymm5_b ymm6_b;
smull mulH_c mulLymm5_c ymm5_c ymm6_c;
smull mulH_d mulLymm5_d ymm5_d ymm6_d;
smull mulH_e mulLymm5_e ymm5_e ymm6_e;
smull mulH_f mulLymm5_f ymm5_f ymm6_f;
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
(* vpmulhw %ymm6,%ymm11,%ymm11                     #! PC = 0x555555557ee4 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm6_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm6_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm6_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm6_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm6_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm6_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm6_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm6_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm6_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm6_9;
smull mulH_a mulLymm11_a ymm11_a ymm6_a;
smull mulH_b mulLymm11_b ymm11_b ymm6_b;
smull mulH_c mulLymm11_c ymm11_c ymm6_c;
smull mulH_d mulLymm11_d ymm11_d ymm6_d;
smull mulH_e mulLymm11_e ymm11_e ymm6_e;
smull mulH_f mulLymm11_f ymm11_f ymm6_f;
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
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x555555557ee8 *)
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
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x555555557eee *)
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
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x555555557ef4 *)
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
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x555555557efa *)
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557f00 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557f04 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557f08 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557f0c *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f,
mulLymm10_0 = mulLymm13_0, mulLymm10_1 = mulLymm13_1,
mulLymm10_2 = mulLymm13_2, mulLymm10_3 = mulLymm13_3,
mulLymm10_4 = mulLymm13_4, mulLymm10_5 = mulLymm13_5,
mulLymm10_6 = mulLymm13_6, mulLymm10_7 = mulLymm13_7,
mulLymm10_8 = mulLymm13_8, mulLymm10_9 = mulLymm13_9,
mulLymm10_a = mulLymm13_a, mulLymm10_b = mulLymm13_b,
mulLymm10_c = mulLymm13_c, mulLymm10_d = mulLymm13_d,
mulLymm10_e = mulLymm13_e, mulLymm10_f = mulLymm13_f,
mulLymm5_0 = mulLymm14_0, mulLymm5_1 = mulLymm14_1,
mulLymm5_2 = mulLymm14_2, mulLymm5_3 = mulLymm14_3,
mulLymm5_4 = mulLymm14_4, mulLymm5_5 = mulLymm14_5,
mulLymm5_6 = mulLymm14_6, mulLymm5_7 = mulLymm14_7,
mulLymm5_8 = mulLymm14_8, mulLymm5_9 = mulLymm14_9,
mulLymm5_a = mulLymm14_a, mulLymm5_b = mulLymm14_b,
mulLymm5_c = mulLymm14_c, mulLymm5_d = mulLymm14_d,
mulLymm5_e = mulLymm14_e, mulLymm5_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f,
mulLymm10_0 = mulLymm13_0, mulLymm10_1 = mulLymm13_1,
mulLymm10_2 = mulLymm13_2, mulLymm10_3 = mulLymm13_3,
mulLymm10_4 = mulLymm13_4, mulLymm10_5 = mulLymm13_5,
mulLymm10_6 = mulLymm13_6, mulLymm10_7 = mulLymm13_7,
mulLymm10_8 = mulLymm13_8, mulLymm10_9 = mulLymm13_9,
mulLymm10_a = mulLymm13_a, mulLymm10_b = mulLymm13_b,
mulLymm10_c = mulLymm13_c, mulLymm10_d = mulLymm13_d,
mulLymm10_e = mulLymm13_e, mulLymm10_f = mulLymm13_f,
mulLymm5_0 = mulLymm14_0, mulLymm5_1 = mulLymm14_1,
mulLymm5_2 = mulLymm14_2, mulLymm5_3 = mulLymm14_3,
mulLymm5_4 = mulLymm14_4, mulLymm5_5 = mulLymm14_5,
mulLymm5_6 = mulLymm14_6, mulLymm5_7 = mulLymm14_7,
mulLymm5_8 = mulLymm14_8, mulLymm5_9 = mulLymm14_9,
mulLymm5_a = mulLymm14_a, mulLymm5_b = mulLymm14_b,
mulLymm5_c = mulLymm14_c, mulLymm5_d = mulLymm14_d,
mulLymm5_e = mulLymm14_e, mulLymm5_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x555555557f10 *)
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
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x555555557f14 *)
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
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x555555557f18 *)
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
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x555555557f1d *)
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
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x555555557f22 *)
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
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x555555557f26 *)
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
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x555555557f2a *)
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
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x555555557f2f *)
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
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555557f34 *)
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
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x555555557f39 *)
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
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555557f3e *)
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
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x555555557f43 *)
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
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x555555557f48 *)
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
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557f4d *)
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
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x555555557f52 *)
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
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557f57 *)
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
(* ===== End of level 2, off 0 ===== *)

(* ecut 2, rcut 2 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_0 + ymm4_1*(x**1) + ymm4_2*(x**2) + ymm4_3*(x**3) +
    ymm4_4*(x**4) + ymm4_5*(x**5) + ymm4_6*(x**6) + ymm4_7*(x**7) +
    ymm6_0*(x**8) + ymm6_1*(x**9) + ymm6_2*(x**10) + ymm6_3*(x**11) +
    ymm6_4*(x**12) + ymm6_5*(x**13) + ymm6_6*(x**14) + ymm6_7*(x**15) +
    ymm8_0*(x**16) + ymm8_1*(x**17) + ymm8_2*(x**18) + ymm8_3*(x**19) +
    ymm8_4*(x**20) + ymm8_5*(x**21) + ymm8_6*(x**22) + ymm8_7*(x**23) +
    ymm3_0*(x**24) + ymm3_1*(x**25) + ymm3_2*(x**26) + ymm3_3*(x**27) +
    ymm3_4*(x**28) + ymm3_5*(x**29) + ymm3_6*(x**30) + ymm3_7*(x**31)
  )
  [10753, x**32 - (-1656)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*(x**1) + ymm7_2*(x**2) + ymm7_3*(x**3) +
    ymm7_4*(x**4) + ymm7_5*(x**5) + ymm7_6*(x**6) + ymm7_7*(x**7) +
    ymm10_0*(x**8) + ymm10_1*(x**9) + ymm10_2*(x**10) + ymm10_3*(x**11) +
    ymm10_4*(x**12) + ymm10_5*(x**13) + ymm10_6*(x**14) + ymm10_7*(x**15) +
    ymm5_0*(x**16) + ymm5_1*(x**17) + ymm5_2*(x**18) + ymm5_3*(x**19) +
    ymm5_4*(x**20) + ymm5_5*(x**21) + ymm5_6*(x**22) + ymm5_7*(x**23) +
    ymm11_0*(x**24) + ymm11_1*(x**25) + ymm11_2*(x**26) + ymm11_3*(x**27) +
    ymm11_4*(x**28) + ymm11_5*(x**29) + ymm11_6*(x**30) + ymm11_7*(x**31)
  )
  [10753, x**32 - (1656)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_8 + ymm4_9*(x**1) + ymm4_a*(x**2) + ymm4_b*(x**3) +
    ymm4_c*(x**4) + ymm4_d*(x**5) + ymm4_e*(x**6) + ymm4_f*(x**7) +
    ymm6_8*(x**8) + ymm6_9*(x**9) + ymm6_a*(x**10) + ymm6_b*(x**11) +
    ymm6_c*(x**12) + ymm6_d*(x**13) + ymm6_e*(x**14) + ymm6_f*(x**15) +
    ymm8_8*(x**16) + ymm8_9*(x**17) + ymm8_a*(x**18) + ymm8_b*(x**19) +
    ymm8_c*(x**20) + ymm8_d*(x**21) + ymm8_e*(x**22) + ymm8_f*(x**23) +
    ymm3_8*(x**24) + ymm3_9*(x**25) + ymm3_a*(x**26) + ymm3_b*(x**27) +
    ymm3_c*(x**28) + ymm3_d*(x**29) + ymm3_e*(x**30) + ymm3_f*(x**31)
  )
  [10753, x**32 - (3461)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*(x**1) + ymm7_a*(x**2) + ymm7_b*(x**3) +
    ymm7_c*(x**4) + ymm7_d*(x**5) + ymm7_e*(x**6) + ymm7_f*(x**7) +
    ymm10_8*(x**8) + ymm10_9*(x**9) + ymm10_a*(x**10) + ymm10_b*(x**11) +
    ymm10_c*(x**12) + ymm10_d*(x**13) + ymm10_e*(x**14) + ymm10_f*(x**15) +
    ymm5_8*(x**16) + ymm5_9*(x**17) + ymm5_a*(x**18) + ymm5_b*(x**19) +
    ymm5_c*(x**20) + ymm5_d*(x**21) + ymm5_e*(x**22) + ymm5_f*(x**23) +
    ymm11_8*(x**24) + ymm11_9*(x**25) + ymm11_a*(x**26) + ymm11_b*(x**27) +
    ymm11_c*(x**28) + ymm11_d*(x**29) + ymm11_e*(x**30) + ymm11_f*(x**31)
  )
  [10753, x**32 - (-3461)]
] && and [
  (-(21320))@16 <s ymm4_0, ymm4_0 <s (21320)@16, (-(21320))@16 <s ymm4_1, ymm4_1 <s (21320)@16,
  (-(21320))@16 <s ymm4_2, ymm4_2 <s (21320)@16, (-(21320))@16 <s ymm4_3, ymm4_3 <s (21320)@16,
  (-(21320))@16 <s ymm4_4, ymm4_4 <s (21320)@16, (-(21320))@16 <s ymm4_5, ymm4_5 <s (21320)@16,
  (-(21320))@16 <s ymm4_6, ymm4_6 <s (21320)@16, (-(21320))@16 <s ymm4_7, ymm4_7 <s (21320)@16,
  (-(21320))@16 <s ymm6_0, ymm6_0 <s (21320)@16, (-(21320))@16 <s ymm6_1, ymm6_1 <s (21320)@16,
  (-(21320))@16 <s ymm6_2, ymm6_2 <s (21320)@16, (-(21320))@16 <s ymm6_3, ymm6_3 <s (21320)@16,
  (-(21320))@16 <s ymm6_4, ymm6_4 <s (21320)@16, (-(21320))@16 <s ymm6_5, ymm6_5 <s (21320)@16,
  (-(21320))@16 <s ymm6_6, ymm6_6 <s (21320)@16, (-(21320))@16 <s ymm6_7, ymm6_7 <s (21320)@16,
  (-(21320))@16 <s ymm8_0, ymm8_0 <s (21320)@16, (-(21320))@16 <s ymm8_1, ymm8_1 <s (21320)@16,
  (-(21320))@16 <s ymm8_2, ymm8_2 <s (21320)@16, (-(21320))@16 <s ymm8_3, ymm8_3 <s (21320)@16,
  (-(21320))@16 <s ymm8_4, ymm8_4 <s (21320)@16, (-(21320))@16 <s ymm8_5, ymm8_5 <s (21320)@16,
  (-(21320))@16 <s ymm8_6, ymm8_6 <s (21320)@16, (-(21320))@16 <s ymm8_7, ymm8_7 <s (21320)@16,
  (-(21320))@16 <s ymm3_0, ymm3_0 <s (21320)@16, (-(21320))@16 <s ymm3_1, ymm3_1 <s (21320)@16,
  (-(21320))@16 <s ymm3_2, ymm3_2 <s (21320)@16, (-(21320))@16 <s ymm3_3, ymm3_3 <s (21320)@16,
  (-(21320))@16 <s ymm3_4, ymm3_4 <s (21320)@16, (-(21320))@16 <s ymm3_5, ymm3_5 <s (21320)@16,
  (-(21320))@16 <s ymm3_6, ymm3_6 <s (21320)@16, (-(21320))@16 <s ymm3_7, ymm3_7 <s (21320)@16,
  (-(21320))@16 <s ymm7_0, ymm7_0 <s (21320)@16, (-(21320))@16 <s ymm7_1, ymm7_1 <s (21320)@16,
  (-(21320))@16 <s ymm7_2, ymm7_2 <s (21320)@16, (-(21320))@16 <s ymm7_3, ymm7_3 <s (21320)@16,
  (-(21320))@16 <s ymm7_4, ymm7_4 <s (21320)@16, (-(21320))@16 <s ymm7_5, ymm7_5 <s (21320)@16,
  (-(21320))@16 <s ymm7_6, ymm7_6 <s (21320)@16, (-(21320))@16 <s ymm7_7, ymm7_7 <s (21320)@16,
  (-(21320))@16 <s ymm10_0, ymm10_0 <s (21320)@16, (-(21320))@16 <s ymm10_1, ymm10_1 <s (21320)@16,
  (-(21320))@16 <s ymm10_2, ymm10_2 <s (21320)@16, (-(21320))@16 <s ymm10_3, ymm10_3 <s (21320)@16,
  (-(21320))@16 <s ymm10_4, ymm10_4 <s (21320)@16, (-(21320))@16 <s ymm10_5, ymm10_5 <s (21320)@16,
  (-(21320))@16 <s ymm10_6, ymm10_6 <s (21320)@16, (-(21320))@16 <s ymm10_7, ymm10_7 <s (21320)@16,
  (-(21320))@16 <s ymm5_0, ymm5_0 <s (21320)@16, (-(21320))@16 <s ymm5_1, ymm5_1 <s (21320)@16,
  (-(21320))@16 <s ymm5_2, ymm5_2 <s (21320)@16, (-(21320))@16 <s ymm5_3, ymm5_3 <s (21320)@16,
  (-(21320))@16 <s ymm5_4, ymm5_4 <s (21320)@16, (-(21320))@16 <s ymm5_5, ymm5_5 <s (21320)@16,
  (-(21320))@16 <s ymm5_6, ymm5_6 <s (21320)@16, (-(21320))@16 <s ymm5_7, ymm5_7 <s (21320)@16,
  (-(21320))@16 <s ymm11_0, ymm11_0 <s (21320)@16, (-(21320))@16 <s ymm11_1, ymm11_1 <s (21320)@16,
  (-(21320))@16 <s ymm11_2, ymm11_2 <s (21320)@16, (-(21320))@16 <s ymm11_3, ymm11_3 <s (21320)@16,
  (-(21320))@16 <s ymm11_4, ymm11_4 <s (21320)@16, (-(21320))@16 <s ymm11_5, ymm11_5 <s (21320)@16,
  (-(21320))@16 <s ymm11_6, ymm11_6 <s (21320)@16, (-(21320))@16 <s ymm11_7, ymm11_7 <s (21320)@16,
  (-(21625))@16 <s ymm4_8, ymm4_8 <s (21625)@16, (-(21625))@16 <s ymm4_9, ymm4_9 <s (21625)@16,
  (-(21625))@16 <s ymm4_a, ymm4_a <s (21625)@16, (-(21625))@16 <s ymm4_b, ymm4_b <s (21625)@16,
  (-(21625))@16 <s ymm4_c, ymm4_c <s (21625)@16, (-(21625))@16 <s ymm4_d, ymm4_d <s (21625)@16,
  (-(21625))@16 <s ymm4_e, ymm4_e <s (21625)@16, (-(21625))@16 <s ymm4_f, ymm4_f <s (21625)@16,
  (-(21625))@16 <s ymm6_8, ymm6_8 <s (21625)@16, (-(21625))@16 <s ymm6_9, ymm6_9 <s (21625)@16,
  (-(21625))@16 <s ymm6_a, ymm6_a <s (21625)@16, (-(21625))@16 <s ymm6_b, ymm6_b <s (21625)@16,
  (-(21625))@16 <s ymm6_c, ymm6_c <s (21625)@16, (-(21625))@16 <s ymm6_d, ymm6_d <s (21625)@16,
  (-(21625))@16 <s ymm6_e, ymm6_e <s (21625)@16, (-(21625))@16 <s ymm6_f, ymm6_f <s (21625)@16,
  (-(21625))@16 <s ymm8_8, ymm8_8 <s (21625)@16, (-(21625))@16 <s ymm8_9, ymm8_9 <s (21625)@16,
  (-(21625))@16 <s ymm8_a, ymm8_a <s (21625)@16, (-(21625))@16 <s ymm8_b, ymm8_b <s (21625)@16,
  (-(21625))@16 <s ymm8_c, ymm8_c <s (21625)@16, (-(21625))@16 <s ymm8_d, ymm8_d <s (21625)@16,
  (-(21625))@16 <s ymm8_e, ymm8_e <s (21625)@16, (-(21625))@16 <s ymm8_f, ymm8_f <s (21625)@16,
  (-(21625))@16 <s ymm3_8, ymm3_8 <s (21625)@16, (-(21625))@16 <s ymm3_9, ymm3_9 <s (21625)@16,
  (-(21625))@16 <s ymm3_a, ymm3_a <s (21625)@16, (-(21625))@16 <s ymm3_b, ymm3_b <s (21625)@16,
  (-(21625))@16 <s ymm3_c, ymm3_c <s (21625)@16, (-(21625))@16 <s ymm3_d, ymm3_d <s (21625)@16,
  (-(21625))@16 <s ymm3_e, ymm3_e <s (21625)@16, (-(21625))@16 <s ymm3_f, ymm3_f <s (21625)@16,
  (-(21625))@16 <s ymm7_8, ymm7_8 <s (21625)@16, (-(21625))@16 <s ymm7_9, ymm7_9 <s (21625)@16,
  (-(21625))@16 <s ymm7_a, ymm7_a <s (21625)@16, (-(21625))@16 <s ymm7_b, ymm7_b <s (21625)@16,
  (-(21625))@16 <s ymm7_c, ymm7_c <s (21625)@16, (-(21625))@16 <s ymm7_d, ymm7_d <s (21625)@16,
  (-(21625))@16 <s ymm7_e, ymm7_e <s (21625)@16, (-(21625))@16 <s ymm7_f, ymm7_f <s (21625)@16,
  (-(21625))@16 <s ymm10_8, ymm10_8 <s (21625)@16, (-(21625))@16 <s ymm10_9, ymm10_9 <s (21625)@16,
  (-(21625))@16 <s ymm10_a, ymm10_a <s (21625)@16, (-(21625))@16 <s ymm10_b, ymm10_b <s (21625)@16,
  (-(21625))@16 <s ymm10_c, ymm10_c <s (21625)@16, (-(21625))@16 <s ymm10_d, ymm10_d <s (21625)@16,
  (-(21625))@16 <s ymm10_e, ymm10_e <s (21625)@16, (-(21625))@16 <s ymm10_f, ymm10_f <s (21625)@16,
  (-(21625))@16 <s ymm5_8, ymm5_8 <s (21625)@16, (-(21625))@16 <s ymm5_9, ymm5_9 <s (21625)@16,
  (-(21625))@16 <s ymm5_a, ymm5_a <s (21625)@16, (-(21625))@16 <s ymm5_b, ymm5_b <s (21625)@16,
  (-(21625))@16 <s ymm5_c, ymm5_c <s (21625)@16, (-(21625))@16 <s ymm5_d, ymm5_d <s (21625)@16,
  (-(21625))@16 <s ymm5_e, ymm5_e <s (21625)@16, (-(21625))@16 <s ymm5_f, ymm5_f <s (21625)@16,
  (-(21625))@16 <s ymm11_8, ymm11_8 <s (21625)@16, (-(21625))@16 <s ymm11_9, ymm11_9 <s (21625)@16,
  (-(21625))@16 <s ymm11_a, ymm11_a <s (21625)@16, (-(21625))@16 <s ymm11_b, ymm11_b <s (21625)@16,
  (-(21625))@16 <s ymm11_c, ymm11_c <s (21625)@16, (-(21625))@16 <s ymm11_d, ymm11_d <s (21625)@16,
  (-(21625))@16 <s ymm11_e, ymm11_e <s (21625)@16, (-(21625))@16 <s ymm11_f, ymm11_f <s (21625)@16
];

(* ===== Start of level 3, off 0 ===== *)
(* vpunpcklqdq %ymm7,%ymm4,%ymm9                   #! PC = 0x555555557f5c *)
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
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x555555557f60 *)
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
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x555555557f64 *)
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
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x555555557f69 *)
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
(* vpunpcklqdq %ymm5,%ymm8,%ymm6                   #! PC = 0x555555557f6e *)
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
mov ymm6_0 lqdq_0;
mov ymm6_1 lqdq_1;
mov ymm6_2 lqdq_2;
mov ymm6_3 lqdq_3;
mov ymm6_4 lqdq_4;
mov ymm6_5 lqdq_5;
mov ymm6_6 lqdq_6;
mov ymm6_7 lqdq_7;
mov ymm6_8 lqdq_8;
mov ymm6_9 lqdq_9;
mov ymm6_a lqdq_a;
mov ymm6_b lqdq_b;
mov ymm6_c lqdq_c;
mov ymm6_d lqdq_d;
mov ymm6_e lqdq_e;
mov ymm6_f lqdq_f;
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x555555557f72 *)
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
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x555555557f76 *)
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
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x555555557f7b *)
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
(* vpmullw 0x240(%rdx),%ymm9,%ymm12                #! EA = L0x555555560940; Value = 0xf8c57fe2fdeffff7; PC = 0x555555557f80 *)
smull mulHymm9_0 mulL_0 L0x555555560940 ymm9_0;
smull mulHymm9_1 mulL_1 L0x555555560942 ymm9_1;
smull mulHymm9_2 mulL_2 L0x555555560944 ymm9_2;
smull mulHymm9_3 mulL_3 L0x555555560946 ymm9_3;
smull mulHymm9_4 mulL_4 L0x555555560948 ymm9_4;
smull mulHymm9_5 mulL_5 L0x55555556094a ymm9_5;
smull mulHymm9_6 mulL_6 L0x55555556094c ymm9_6;
smull mulHymm9_7 mulL_7 L0x55555556094e ymm9_7;
smull mulHymm9_8 mulL_8 L0x555555560950 ymm9_8;
smull mulHymm9_9 mulL_9 L0x555555560952 ymm9_9;
smull mulHymm9_a mulL_a L0x555555560954 ymm9_a;
smull mulHymm9_b mulL_b L0x555555560956 ymm9_b;
smull mulHymm9_c mulL_c L0x555555560958 ymm9_c;
smull mulHymm9_d mulL_d L0x55555556095a ymm9_d;
smull mulHymm9_e mulL_e L0x55555556095c ymm9_e;
smull mulHymm9_f mulL_f L0x55555556095e ymm9_f;
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
(* vpmullw 0x280(%rdx),%ymm7,%ymm13                #! EA = L0x555555560980; Value = 0xe767de9266b03f97; PC = 0x555555557f88 *)
smull mulHymm7_0 mulL_0 L0x555555560980 ymm7_0;
smull mulHymm7_1 mulL_1 L0x555555560982 ymm7_1;
smull mulHymm7_2 mulL_2 L0x555555560984 ymm7_2;
smull mulHymm7_3 mulL_3 L0x555555560986 ymm7_3;
smull mulHymm7_4 mulL_4 L0x555555560988 ymm7_4;
smull mulHymm7_5 mulL_5 L0x55555556098a ymm7_5;
smull mulHymm7_6 mulL_6 L0x55555556098c ymm7_6;
smull mulHymm7_7 mulL_7 L0x55555556098e ymm7_7;
smull mulHymm7_8 mulL_8 L0x555555560990 ymm7_8;
smull mulHymm7_9 mulL_9 L0x555555560992 ymm7_9;
smull mulHymm7_a mulL_a L0x555555560994 ymm7_a;
smull mulHymm7_b mulL_b L0x555555560996 ymm7_b;
smull mulHymm7_c mulL_c L0x555555560998 ymm7_c;
smull mulHymm7_d mulL_d L0x55555556099a ymm7_d;
smull mulHymm7_e mulL_e L0x55555556099c ymm7_e;
smull mulHymm7_f mulL_f L0x55555556099e ymm7_f;
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
(* vpmullw 0x2c0(%rdx),%ymm4,%ymm14                #! EA = L0x5555555609c0; Value = 0x52b0267fa9e90b00; PC = 0x555555557f90 *)
smull mulHymm4_0 mulL_0 L0x5555555609c0 ymm4_0;
smull mulHymm4_1 mulL_1 L0x5555555609c2 ymm4_1;
smull mulHymm4_2 mulL_2 L0x5555555609c4 ymm4_2;
smull mulHymm4_3 mulL_3 L0x5555555609c6 ymm4_3;
smull mulHymm4_4 mulL_4 L0x5555555609c8 ymm4_4;
smull mulHymm4_5 mulL_5 L0x5555555609ca ymm4_5;
smull mulHymm4_6 mulL_6 L0x5555555609cc ymm4_6;
smull mulHymm4_7 mulL_7 L0x5555555609ce ymm4_7;
smull mulHymm4_8 mulL_8 L0x5555555609d0 ymm4_8;
smull mulHymm4_9 mulL_9 L0x5555555609d2 ymm4_9;
smull mulHymm4_a mulL_a L0x5555555609d4 ymm4_a;
smull mulHymm4_b mulL_b L0x5555555609d6 ymm4_b;
smull mulHymm4_c mulL_c L0x5555555609d8 ymm4_c;
smull mulHymm4_d mulL_d L0x5555555609da ymm4_d;
smull mulHymm4_e mulL_e L0x5555555609dc ymm4_e;
smull mulHymm4_f mulL_f L0x5555555609de ymm4_f;
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
(* vpmullw 0x300(%rdx),%ymm10,%ymm15               #! EA = L0x555555560a00; Value = 0xb4f11790a16a06bc; PC = 0x555555557f98 *)
smull mulHymm10_0 mulL_0 L0x555555560a00 ymm10_0;
smull mulHymm10_1 mulL_1 L0x555555560a02 ymm10_1;
smull mulHymm10_2 mulL_2 L0x555555560a04 ymm10_2;
smull mulHymm10_3 mulL_3 L0x555555560a06 ymm10_3;
smull mulHymm10_4 mulL_4 L0x555555560a08 ymm10_4;
smull mulHymm10_5 mulL_5 L0x555555560a0a ymm10_5;
smull mulHymm10_6 mulL_6 L0x555555560a0c ymm10_6;
smull mulHymm10_7 mulL_7 L0x555555560a0e ymm10_7;
smull mulHymm10_8 mulL_8 L0x555555560a10 ymm10_8;
smull mulHymm10_9 mulL_9 L0x555555560a12 ymm10_9;
smull mulHymm10_a mulL_a L0x555555560a14 ymm10_a;
smull mulHymm10_b mulL_b L0x555555560a16 ymm10_b;
smull mulHymm10_c mulL_c L0x555555560a18 ymm10_c;
smull mulHymm10_d mulL_d L0x555555560a1a ymm10_d;
smull mulHymm10_e mulL_e L0x555555560a1c ymm10_e;
smull mulHymm10_f mulL_f L0x555555560a1e ymm10_f;
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
(* vpmulhw 0x260(%rdx),%ymm9,%ymm9                 #! EA = L0x555555560960; Value = 0x0ec5fbe2ffeff1f7; PC = 0x555555557fa0 *)
smull mulH_0 mulLymm9_0 ymm9_0 L0x555555560960;
smull mulH_1 mulLymm9_1 ymm9_1 L0x555555560962;
smull mulH_2 mulLymm9_2 ymm9_2 L0x555555560964;
smull mulH_3 mulLymm9_3 ymm9_3 L0x555555560966;
smull mulH_4 mulLymm9_4 ymm9_4 L0x555555560968;
smull mulH_5 mulLymm9_5 ymm9_5 L0x55555556096a;
smull mulH_6 mulLymm9_6 ymm9_6 L0x55555556096c;
smull mulH_7 mulLymm9_7 ymm9_7 L0x55555556096e;
smull mulH_8 mulLymm9_8 ymm9_8 L0x555555560970;
smull mulH_9 mulLymm9_9 ymm9_9 L0x555555560972;
smull mulH_a mulLymm9_a ymm9_a L0x555555560974;
smull mulH_b mulLymm9_b ymm9_b L0x555555560976;
smull mulH_c mulLymm9_c ymm9_c L0x555555560978;
smull mulH_d mulLymm9_d ymm9_d L0x55555556097a;
smull mulH_e mulLymm9_e ymm9_e L0x55555556097c;
smull mulH_f mulLymm9_f ymm9_f L0x55555556097e;
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
(* vpmulhw 0x2a0(%rdx),%ymm7,%ymm7                 #! EA = L0x5555555609a0; Value = 0xf967fa9206b0f197; PC = 0x555555557fa8 *)
smull mulH_0 mulLymm7_0 ymm7_0 L0x5555555609a0;
smull mulH_1 mulLymm7_1 ymm7_1 L0x5555555609a2;
smull mulH_2 mulLymm7_2 ymm7_2 L0x5555555609a4;
smull mulH_3 mulLymm7_3 ymm7_3 L0x5555555609a6;
smull mulH_4 mulLymm7_4 ymm7_4 L0x5555555609a8;
smull mulH_5 mulLymm7_5 ymm7_5 L0x5555555609aa;
smull mulH_6 mulLymm7_6 ymm7_6 L0x5555555609ac;
smull mulH_7 mulLymm7_7 ymm7_7 L0x5555555609ae;
smull mulH_8 mulLymm7_8 ymm7_8 L0x5555555609b0;
smull mulH_9 mulLymm7_9 ymm7_9 L0x5555555609b2;
smull mulH_a mulLymm7_a ymm7_a L0x5555555609b4;
smull mulH_b mulLymm7_b ymm7_b L0x5555555609b6;
smull mulH_c mulLymm7_c ymm7_c L0x5555555609b8;
smull mulH_d mulLymm7_d ymm7_d L0x5555555609ba;
smull mulH_e mulLymm7_e ymm7_e L0x5555555609bc;
smull mulH_f mulLymm7_f ymm7_f L0x5555555609be;
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
(* vpmulhw 0x2e0(%rdx),%ymm4,%ymm4                 #! EA = L0x5555555609e0; Value = 0xf2b0087ff7e90b00; PC = 0x555555557fb0 *)
smull mulH_0 mulLymm4_0 ymm4_0 L0x5555555609e0;
smull mulH_1 mulLymm4_1 ymm4_1 L0x5555555609e2;
smull mulH_2 mulLymm4_2 ymm4_2 L0x5555555609e4;
smull mulH_3 mulLymm4_3 ymm4_3 L0x5555555609e6;
smull mulH_4 mulLymm4_4 ymm4_4 L0x5555555609e8;
smull mulH_5 mulLymm4_5 ymm4_5 L0x5555555609ea;
smull mulH_6 mulLymm4_6 ymm4_6 L0x5555555609ec;
smull mulH_7 mulLymm4_7 ymm4_7 L0x5555555609ee;
smull mulH_8 mulLymm4_8 ymm4_8 L0x5555555609f0;
smull mulH_9 mulLymm4_9 ymm4_9 L0x5555555609f2;
smull mulH_a mulLymm4_a ymm4_a L0x5555555609f4;
smull mulH_b mulLymm4_b ymm4_b L0x5555555609f6;
smull mulH_c mulLymm4_c ymm4_c L0x5555555609f8;
smull mulH_d mulLymm4_d ymm4_d L0x5555555609fa;
smull mulH_e mulLymm4_e ymm4_e L0x5555555609fc;
smull mulH_f mulLymm4_f ymm4_f L0x5555555609fe;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw 0x320(%rdx),%ymm10,%ymm10               #! EA = L0x555555560a20; Value = 0xf2f1f7900d6a0ebc; PC = 0x555555557fb8 *)
smull mulH_0 mulLymm10_0 ymm10_0 L0x555555560a20;
smull mulH_1 mulLymm10_1 ymm10_1 L0x555555560a22;
smull mulH_2 mulLymm10_2 ymm10_2 L0x555555560a24;
smull mulH_3 mulLymm10_3 ymm10_3 L0x555555560a26;
smull mulH_4 mulLymm10_4 ymm10_4 L0x555555560a28;
smull mulH_5 mulLymm10_5 ymm10_5 L0x555555560a2a;
smull mulH_6 mulLymm10_6 ymm10_6 L0x555555560a2c;
smull mulH_7 mulLymm10_7 ymm10_7 L0x555555560a2e;
smull mulH_8 mulLymm10_8 ymm10_8 L0x555555560a30;
smull mulH_9 mulLymm10_9 ymm10_9 L0x555555560a32;
smull mulH_a mulLymm10_a ymm10_a L0x555555560a34;
smull mulH_b mulLymm10_b ymm10_b L0x555555560a36;
smull mulH_c mulLymm10_c ymm10_c L0x555555560a38;
smull mulH_d mulLymm10_d ymm10_d L0x555555560a3a;
smull mulH_e mulLymm10_e ymm10_e L0x555555560a3c;
smull mulH_f mulLymm10_f ymm10_f L0x555555560a3e;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557fc0 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557fc4 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557fc8 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557fcc *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x555555557fd0 *)
sub ymm9_0 ymm9_0 ymm12_0;
sub ymm9_1 ymm9_1 ymm12_1;
sub ymm9_2 ymm9_2 ymm12_2;
sub ymm9_3 ymm9_3 ymm12_3;
sub ymm9_4 ymm9_4 ymm12_4;
sub ymm9_5 ymm9_5 ymm12_5;
sub ymm9_6 ymm9_6 ymm12_6;
sub ymm9_7 ymm9_7 ymm12_7;
sub ymm9_8 ymm9_8 ymm12_8;
sub ymm9_9 ymm9_9 ymm12_9;
sub ymm9_a ymm9_a ymm12_a;
sub ymm9_b ymm9_b ymm12_b;
sub ymm9_c ymm9_c ymm12_c;
sub ymm9_d ymm9_d ymm12_d;
sub ymm9_e ymm9_e ymm12_e;
sub ymm9_f ymm9_f ymm12_f;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x555555557fd5 *)
sub ymm7_0 ymm7_0 ymm13_0;
sub ymm7_1 ymm7_1 ymm13_1;
sub ymm7_2 ymm7_2 ymm13_2;
sub ymm7_3 ymm7_3 ymm13_3;
sub ymm7_4 ymm7_4 ymm13_4;
sub ymm7_5 ymm7_5 ymm13_5;
sub ymm7_6 ymm7_6 ymm13_6;
sub ymm7_7 ymm7_7 ymm13_7;
sub ymm7_8 ymm7_8 ymm13_8;
sub ymm7_9 ymm7_9 ymm13_9;
sub ymm7_a ymm7_a ymm13_a;
sub ymm7_b ymm7_b ymm13_b;
sub ymm7_c ymm7_c ymm13_c;
sub ymm7_d ymm7_d ymm13_d;
sub ymm7_e ymm7_e ymm13_e;
sub ymm7_f ymm7_f ymm13_f;
(* vpsubw %ymm14,%ymm4,%ymm4                       #! PC = 0x555555557fda *)
sub ymm4_0 ymm4_0 ymm14_0;
sub ymm4_1 ymm4_1 ymm14_1;
sub ymm4_2 ymm4_2 ymm14_2;
sub ymm4_3 ymm4_3 ymm14_3;
sub ymm4_4 ymm4_4 ymm14_4;
sub ymm4_5 ymm4_5 ymm14_5;
sub ymm4_6 ymm4_6 ymm14_6;
sub ymm4_7 ymm4_7 ymm14_7;
sub ymm4_8 ymm4_8 ymm14_8;
sub ymm4_9 ymm4_9 ymm14_9;
sub ymm4_a ymm4_a ymm14_a;
sub ymm4_b ymm4_b ymm14_b;
sub ymm4_c ymm4_c ymm14_c;
sub ymm4_d ymm4_d ymm14_d;
sub ymm4_e ymm4_e ymm14_e;
sub ymm4_f ymm4_f ymm14_f;
(* vpsubw %ymm15,%ymm10,%ymm10                     #! PC = 0x555555557fdf *)
sub ymm10_0 ymm10_0 ymm15_0;
sub ymm10_1 ymm10_1 ymm15_1;
sub ymm10_2 ymm10_2 ymm15_2;
sub ymm10_3 ymm10_3 ymm15_3;
sub ymm10_4 ymm10_4 ymm15_4;
sub ymm10_5 ymm10_5 ymm15_5;
sub ymm10_6 ymm10_6 ymm15_6;
sub ymm10_7 ymm10_7 ymm15_7;
sub ymm10_8 ymm10_8 ymm15_8;
sub ymm10_9 ymm10_9 ymm15_9;
sub ymm10_a ymm10_a ymm15_a;
sub ymm10_b ymm10_b ymm15_b;
sub ymm10_c ymm10_c ymm15_c;
sub ymm10_d ymm10_d ymm15_d;
sub ymm10_e ymm10_e ymm15_e;
sub ymm10_f ymm10_f ymm15_f;
assert true && and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f,
mulLymm4_0 = mulLymm14_0, mulLymm4_1 = mulLymm14_1,
mulLymm4_2 = mulLymm14_2, mulLymm4_3 = mulLymm14_3,
mulLymm4_4 = mulLymm14_4, mulLymm4_5 = mulLymm14_5,
mulLymm4_6 = mulLymm14_6, mulLymm4_7 = mulLymm14_7,
mulLymm4_8 = mulLymm14_8, mulLymm4_9 = mulLymm14_9,
mulLymm4_a = mulLymm14_a, mulLymm4_b = mulLymm14_b,
mulLymm4_c = mulLymm14_c, mulLymm4_d = mulLymm14_d,
mulLymm4_e = mulLymm14_e, mulLymm4_f = mulLymm14_f,
mulLymm10_0 = mulLymm15_0, mulLymm10_1 = mulLymm15_1,
mulLymm10_2 = mulLymm15_2, mulLymm10_3 = mulLymm15_3,
mulLymm10_4 = mulLymm15_4, mulLymm10_5 = mulLymm15_5,
mulLymm10_6 = mulLymm15_6, mulLymm10_7 = mulLymm15_7,
mulLymm10_8 = mulLymm15_8, mulLymm10_9 = mulLymm15_9,
mulLymm10_a = mulLymm15_a, mulLymm10_b = mulLymm15_b,
mulLymm10_c = mulLymm15_c, mulLymm10_d = mulLymm15_d,
mulLymm10_e = mulLymm15_e, mulLymm10_f = mulLymm15_f
];
assume and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f,
mulLymm4_0 = mulLymm14_0, mulLymm4_1 = mulLymm14_1,
mulLymm4_2 = mulLymm14_2, mulLymm4_3 = mulLymm14_3,
mulLymm4_4 = mulLymm14_4, mulLymm4_5 = mulLymm14_5,
mulLymm4_6 = mulLymm14_6, mulLymm4_7 = mulLymm14_7,
mulLymm4_8 = mulLymm14_8, mulLymm4_9 = mulLymm14_9,
mulLymm4_a = mulLymm14_a, mulLymm4_b = mulLymm14_b,
mulLymm4_c = mulLymm14_c, mulLymm4_d = mulLymm14_d,
mulLymm4_e = mulLymm14_e, mulLymm4_f = mulLymm14_f,
mulLymm10_0 = mulLymm15_0, mulLymm10_1 = mulLymm15_1,
mulLymm10_2 = mulLymm15_2, mulLymm10_3 = mulLymm15_3,
mulLymm10_4 = mulLymm15_4, mulLymm10_5 = mulLymm15_5,
mulLymm10_6 = mulLymm15_6, mulLymm10_7 = mulLymm15_7,
mulLymm10_8 = mulLymm15_8, mulLymm10_9 = mulLymm15_9,
mulLymm10_a = mulLymm15_a, mulLymm10_b = mulLymm15_b,
mulLymm10_c = mulLymm15_c, mulLymm10_d = mulLymm15_d,
mulLymm10_e = mulLymm15_e, mulLymm10_f = mulLymm15_f
] && true;
(* vpmullw 0x340(%rdx),%ymm6,%ymm12                #! EA = L0x555555560a40; Value = 0x688e60a7f94dd279; PC = 0x555555557fe4 *)
smull mulHymm6_0 mulL_0 L0x555555560a40 ymm6_0;
smull mulHymm6_1 mulL_1 L0x555555560a42 ymm6_1;
smull mulHymm6_2 mulL_2 L0x555555560a44 ymm6_2;
smull mulHymm6_3 mulL_3 L0x555555560a46 ymm6_3;
smull mulHymm6_4 mulL_4 L0x555555560a48 ymm6_4;
smull mulHymm6_5 mulL_5 L0x555555560a4a ymm6_5;
smull mulHymm6_6 mulL_6 L0x555555560a4c ymm6_6;
smull mulHymm6_7 mulL_7 L0x555555560a4e ymm6_7;
smull mulHymm6_8 mulL_8 L0x555555560a50 ymm6_8;
smull mulHymm6_9 mulL_9 L0x555555560a52 ymm6_9;
smull mulHymm6_a mulL_a L0x555555560a54 ymm6_a;
smull mulHymm6_b mulL_b L0x555555560a56 ymm6_b;
smull mulHymm6_c mulL_c L0x555555560a58 ymm6_c;
smull mulHymm6_d mulL_d L0x555555560a5a ymm6_d;
smull mulHymm6_e mulL_e L0x555555560a5c ymm6_e;
smull mulHymm6_f mulL_f L0x555555560a5e ymm6_f;
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
(* vpmullw 0x380(%rdx),%ymm5,%ymm13                #! EA = L0x555555560a80; Value = 0xc0c6a003edf0524a; PC = 0x555555557fec *)
smull mulHymm5_0 mulL_0 L0x555555560a80 ymm5_0;
smull mulHymm5_1 mulL_1 L0x555555560a82 ymm5_1;
smull mulHymm5_2 mulL_2 L0x555555560a84 ymm5_2;
smull mulHymm5_3 mulL_3 L0x555555560a86 ymm5_3;
smull mulHymm5_4 mulL_4 L0x555555560a88 ymm5_4;
smull mulHymm5_5 mulL_5 L0x555555560a8a ymm5_5;
smull mulHymm5_6 mulL_6 L0x555555560a8c ymm5_6;
smull mulHymm5_7 mulL_7 L0x555555560a8e ymm5_7;
smull mulHymm5_8 mulL_8 L0x555555560a90 ymm5_8;
smull mulHymm5_9 mulL_9 L0x555555560a92 ymm5_9;
smull mulHymm5_a mulL_a L0x555555560a94 ymm5_a;
smull mulHymm5_b mulL_b L0x555555560a96 ymm5_b;
smull mulHymm5_c mulL_c L0x555555560a98 ymm5_c;
smull mulHymm5_d mulL_d L0x555555560a9a ymm5_d;
smull mulHymm5_e mulL_e L0x555555560a9c ymm5_e;
smull mulHymm5_f mulL_f L0x555555560a9e ymm5_f;
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
(* vpmullw 0x3c0(%rdx),%ymm8,%ymm14                #! EA = L0x555555560ac0; Value = 0x397e6827a2b6b00b; PC = 0x555555557ff4 *)
smull mulHymm8_0 mulL_0 L0x555555560ac0 ymm8_0;
smull mulHymm8_1 mulL_1 L0x555555560ac2 ymm8_1;
smull mulHymm8_2 mulL_2 L0x555555560ac4 ymm8_2;
smull mulHymm8_3 mulL_3 L0x555555560ac6 ymm8_3;
smull mulHymm8_4 mulL_4 L0x555555560ac8 ymm8_4;
smull mulHymm8_5 mulL_5 L0x555555560aca ymm8_5;
smull mulHymm8_6 mulL_6 L0x555555560acc ymm8_6;
smull mulHymm8_7 mulL_7 L0x555555560ace ymm8_7;
smull mulHymm8_8 mulL_8 L0x555555560ad0 ymm8_8;
smull mulHymm8_9 mulL_9 L0x555555560ad2 ymm8_9;
smull mulHymm8_a mulL_a L0x555555560ad4 ymm8_a;
smull mulHymm8_b mulL_b L0x555555560ad6 ymm8_b;
smull mulHymm8_c mulL_c L0x555555560ad8 ymm8_c;
smull mulHymm8_d mulL_d L0x555555560ada ymm8_d;
smull mulHymm8_e mulL_e L0x555555560adc ymm8_e;
smull mulHymm8_f mulL_f L0x555555560ade ymm8_f;
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
(* vpmullw 0x400(%rdx),%ymm11,%ymm15               #! EA = L0x555555560b00; Value = 0x8049bbe04939ec89; PC = 0x555555557ffc *)
smull mulHymm11_0 mulL_0 L0x555555560b00 ymm11_0;
smull mulHymm11_1 mulL_1 L0x555555560b02 ymm11_1;
smull mulHymm11_2 mulL_2 L0x555555560b04 ymm11_2;
smull mulHymm11_3 mulL_3 L0x555555560b06 ymm11_3;
smull mulHymm11_4 mulL_4 L0x555555560b08 ymm11_4;
smull mulHymm11_5 mulL_5 L0x555555560b0a ymm11_5;
smull mulHymm11_6 mulL_6 L0x555555560b0c ymm11_6;
smull mulHymm11_7 mulL_7 L0x555555560b0e ymm11_7;
smull mulHymm11_8 mulL_8 L0x555555560b10 ymm11_8;
smull mulHymm11_9 mulL_9 L0x555555560b12 ymm11_9;
smull mulHymm11_a mulL_a L0x555555560b14 ymm11_a;
smull mulHymm11_b mulL_b L0x555555560b16 ymm11_b;
smull mulHymm11_c mulL_c L0x555555560b18 ymm11_c;
smull mulHymm11_d mulL_d L0x555555560b1a ymm11_d;
smull mulHymm11_e mulL_e L0x555555560b1c ymm11_e;
smull mulHymm11_f mulL_f L0x555555560b1e ymm11_f;
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
(* vpmulhw 0x360(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560a60; Value = 0x0c8ef2a7ff4d0079; PC = 0x555555558004 *)
smull mulH_0 mulLymm6_0 ymm6_0 L0x555555560a60;
smull mulH_1 mulLymm6_1 ymm6_1 L0x555555560a62;
smull mulH_2 mulLymm6_2 ymm6_2 L0x555555560a64;
smull mulH_3 mulLymm6_3 ymm6_3 L0x555555560a66;
smull mulH_4 mulLymm6_4 ymm6_4 L0x555555560a68;
smull mulH_5 mulLymm6_5 ymm6_5 L0x555555560a6a;
smull mulH_6 mulLymm6_6 ymm6_6 L0x555555560a6c;
smull mulH_7 mulLymm6_7 ymm6_7 L0x555555560a6e;
smull mulH_8 mulLymm6_8 ymm6_8 L0x555555560a70;
smull mulH_9 mulLymm6_9 ymm6_9 L0x555555560a72;
smull mulH_a mulLymm6_a ymm6_a L0x555555560a74;
smull mulH_b mulLymm6_b ymm6_b L0x555555560a76;
smull mulH_c mulLymm6_c ymm6_c L0x555555560a78;
smull mulH_d mulLymm6_d ymm6_d L0x555555560a7a;
smull mulH_e mulLymm6_e ymm6_e L0x555555560a7c;
smull mulH_f mulLymm6_f ymm6_f L0x555555560a7e;
mov ymm6_0 mulH_0;
mov ymm6_1 mulH_1;
mov ymm6_2 mulH_2;
mov ymm6_3 mulH_3;
mov ymm6_4 mulH_4;
mov ymm6_5 mulH_5;
mov ymm6_6 mulH_6;
mov ymm6_7 mulH_7;
mov ymm6_8 mulH_8;
mov ymm6_9 mulH_9;
mov ymm6_a mulH_a;
mov ymm6_b mulH_b;
mov ymm6_c mulH_c;
mov ymm6_d mulH_d;
mov ymm6_e mulH_e;
mov ymm6_f mulH_f;
(* vpmulhw 0x3a0(%rdx),%ymm5,%ymm5                 #! EA = L0x555555560aa0; Value = 0xf4c6fa030df0fe4a; PC = 0x55555555800c *)
smull mulH_0 mulLymm5_0 ymm5_0 L0x555555560aa0;
smull mulH_1 mulLymm5_1 ymm5_1 L0x555555560aa2;
smull mulH_2 mulLymm5_2 ymm5_2 L0x555555560aa4;
smull mulH_3 mulLymm5_3 ymm5_3 L0x555555560aa6;
smull mulH_4 mulLymm5_4 ymm5_4 L0x555555560aa8;
smull mulH_5 mulLymm5_5 ymm5_5 L0x555555560aaa;
smull mulH_6 mulLymm5_6 ymm5_6 L0x555555560aac;
smull mulH_7 mulLymm5_7 ymm5_7 L0x555555560aae;
smull mulH_8 mulLymm5_8 ymm5_8 L0x555555560ab0;
smull mulH_9 mulLymm5_9 ymm5_9 L0x555555560ab2;
smull mulH_a mulLymm5_a ymm5_a L0x555555560ab4;
smull mulH_b mulLymm5_b ymm5_b L0x555555560ab6;
smull mulH_c mulLymm5_c ymm5_c L0x555555560ab8;
smull mulH_d mulLymm5_d ymm5_d L0x555555560aba;
smull mulH_e mulLymm5_e ymm5_e L0x555555560abc;
smull mulH_f mulLymm5_f ymm5_f L0x555555560abe;
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
(* vpmulhw 0x3e0(%rdx),%ymm8,%ymm8                 #! EA = L0x555555560ae0; Value = 0xfd7efa27f6b6fa0b; PC = 0x555555558014 *)
smull mulH_0 mulLymm8_0 ymm8_0 L0x555555560ae0;
smull mulH_1 mulLymm8_1 ymm8_1 L0x555555560ae2;
smull mulH_2 mulLymm8_2 ymm8_2 L0x555555560ae4;
smull mulH_3 mulLymm8_3 ymm8_3 L0x555555560ae6;
smull mulH_4 mulLymm8_4 ymm8_4 L0x555555560ae8;
smull mulH_5 mulLymm8_5 ymm8_5 L0x555555560aea;
smull mulH_6 mulLymm8_6 ymm8_6 L0x555555560aec;
smull mulH_7 mulLymm8_7 ymm8_7 L0x555555560aee;
smull mulH_8 mulLymm8_8 ymm8_8 L0x555555560af0;
smull mulH_9 mulLymm8_9 ymm8_9 L0x555555560af2;
smull mulH_a mulLymm8_a ymm8_a L0x555555560af4;
smull mulH_b mulLymm8_b ymm8_b L0x555555560af6;
smull mulH_c mulLymm8_c ymm8_c L0x555555560af8;
smull mulH_d mulLymm8_d ymm8_d L0x555555560afa;
smull mulH_e mulLymm8_e ymm8_e L0x555555560afc;
smull mulH_f mulLymm8_f ymm8_f L0x555555560afe;
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
(* vpmulhw 0x420(%rdx),%ymm11,%ymm11               #! EA = L0x555555560b20; Value = 0x0e49fbe0f739fa89; PC = 0x55555555801c *)
smull mulH_0 mulLymm11_0 ymm11_0 L0x555555560b20;
smull mulH_1 mulLymm11_1 ymm11_1 L0x555555560b22;
smull mulH_2 mulLymm11_2 ymm11_2 L0x555555560b24;
smull mulH_3 mulLymm11_3 ymm11_3 L0x555555560b26;
smull mulH_4 mulLymm11_4 ymm11_4 L0x555555560b28;
smull mulH_5 mulLymm11_5 ymm11_5 L0x555555560b2a;
smull mulH_6 mulLymm11_6 ymm11_6 L0x555555560b2c;
smull mulH_7 mulLymm11_7 ymm11_7 L0x555555560b2e;
smull mulH_8 mulLymm11_8 ymm11_8 L0x555555560b30;
smull mulH_9 mulLymm11_9 ymm11_9 L0x555555560b32;
smull mulH_a mulLymm11_a ymm11_a L0x555555560b34;
smull mulH_b mulLymm11_b ymm11_b L0x555555560b36;
smull mulH_c mulLymm11_c ymm11_c L0x555555560b38;
smull mulH_d mulLymm11_d ymm11_d L0x555555560b3a;
smull mulH_e mulLymm11_e ymm11_e L0x555555560b3c;
smull mulH_f mulLymm11_f ymm11_f L0x555555560b3e;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558024 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558028 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555555802c *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558030 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x555555558034 *)
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
(* vpsubw %ymm13,%ymm5,%ymm5                       #! PC = 0x555555558039 *)
sub ymm5_0 ymm5_0 ymm13_0;
sub ymm5_1 ymm5_1 ymm13_1;
sub ymm5_2 ymm5_2 ymm13_2;
sub ymm5_3 ymm5_3 ymm13_3;
sub ymm5_4 ymm5_4 ymm13_4;
sub ymm5_5 ymm5_5 ymm13_5;
sub ymm5_6 ymm5_6 ymm13_6;
sub ymm5_7 ymm5_7 ymm13_7;
sub ymm5_8 ymm5_8 ymm13_8;
sub ymm5_9 ymm5_9 ymm13_9;
sub ymm5_a ymm5_a ymm13_a;
sub ymm5_b ymm5_b ymm13_b;
sub ymm5_c ymm5_c ymm13_c;
sub ymm5_d ymm5_d ymm13_d;
sub ymm5_e ymm5_e ymm13_e;
sub ymm5_f ymm5_f ymm13_f;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555555803e *)
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
(* vpsubw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555558043 *)
sub ymm11_0 ymm11_0 ymm15_0;
sub ymm11_1 ymm11_1 ymm15_1;
sub ymm11_2 ymm11_2 ymm15_2;
sub ymm11_3 ymm11_3 ymm15_3;
sub ymm11_4 ymm11_4 ymm15_4;
sub ymm11_5 ymm11_5 ymm15_5;
sub ymm11_6 ymm11_6 ymm15_6;
sub ymm11_7 ymm11_7 ymm15_7;
sub ymm11_8 ymm11_8 ymm15_8;
sub ymm11_9 ymm11_9 ymm15_9;
sub ymm11_a ymm11_a ymm15_a;
sub ymm11_b ymm11_b ymm15_b;
sub ymm11_c ymm11_c ymm15_c;
sub ymm11_d ymm11_d ymm15_d;
sub ymm11_e ymm11_e ymm15_e;
sub ymm11_f ymm11_f ymm15_f;
assert true && and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f,
mulLymm5_0 = mulLymm13_0, mulLymm5_1 = mulLymm13_1,
mulLymm5_2 = mulLymm13_2, mulLymm5_3 = mulLymm13_3,
mulLymm5_4 = mulLymm13_4, mulLymm5_5 = mulLymm13_5,
mulLymm5_6 = mulLymm13_6, mulLymm5_7 = mulLymm13_7,
mulLymm5_8 = mulLymm13_8, mulLymm5_9 = mulLymm13_9,
mulLymm5_a = mulLymm13_a, mulLymm5_b = mulLymm13_b,
mulLymm5_c = mulLymm13_c, mulLymm5_d = mulLymm13_d,
mulLymm5_e = mulLymm13_e, mulLymm5_f = mulLymm13_f,
mulLymm8_0 = mulLymm14_0, mulLymm8_1 = mulLymm14_1,
mulLymm8_2 = mulLymm14_2, mulLymm8_3 = mulLymm14_3,
mulLymm8_4 = mulLymm14_4, mulLymm8_5 = mulLymm14_5,
mulLymm8_6 = mulLymm14_6, mulLymm8_7 = mulLymm14_7,
mulLymm8_8 = mulLymm14_8, mulLymm8_9 = mulLymm14_9,
mulLymm8_a = mulLymm14_a, mulLymm8_b = mulLymm14_b,
mulLymm8_c = mulLymm14_c, mulLymm8_d = mulLymm14_d,
mulLymm8_e = mulLymm14_e, mulLymm8_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f,
mulLymm5_0 = mulLymm13_0, mulLymm5_1 = mulLymm13_1,
mulLymm5_2 = mulLymm13_2, mulLymm5_3 = mulLymm13_3,
mulLymm5_4 = mulLymm13_4, mulLymm5_5 = mulLymm13_5,
mulLymm5_6 = mulLymm13_6, mulLymm5_7 = mulLymm13_7,
mulLymm5_8 = mulLymm13_8, mulLymm5_9 = mulLymm13_9,
mulLymm5_a = mulLymm13_a, mulLymm5_b = mulLymm13_b,
mulLymm5_c = mulLymm13_c, mulLymm5_d = mulLymm13_d,
mulLymm5_e = mulLymm13_e, mulLymm5_f = mulLymm13_f,
mulLymm8_0 = mulLymm14_0, mulLymm8_1 = mulLymm14_1,
mulLymm8_2 = mulLymm14_2, mulLymm8_3 = mulLymm14_3,
mulLymm8_4 = mulLymm14_4, mulLymm8_5 = mulLymm14_5,
mulLymm8_6 = mulLymm14_6, mulLymm8_7 = mulLymm14_7,
mulLymm8_8 = mulLymm14_8, mulLymm8_9 = mulLymm14_9,
mulLymm8_a = mulLymm14_a, mulLymm8_b = mulLymm14_b,
mulLymm8_c = mulLymm14_c, mulLymm8_d = mulLymm14_d,
mulLymm8_e = mulLymm14_e, mulLymm8_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm6,%ymm9,%ymm3                        #! PC = 0x555555558048 *)
add ymm3_0 ymm9_0 ymm6_0;
add ymm3_1 ymm9_1 ymm6_1;
add ymm3_2 ymm9_2 ymm6_2;
add ymm3_3 ymm9_3 ymm6_3;
add ymm3_4 ymm9_4 ymm6_4;
add ymm3_5 ymm9_5 ymm6_5;
add ymm3_6 ymm9_6 ymm6_6;
add ymm3_7 ymm9_7 ymm6_7;
add ymm3_8 ymm9_8 ymm6_8;
add ymm3_9 ymm9_9 ymm6_9;
add ymm3_a ymm9_a ymm6_a;
add ymm3_b ymm9_b ymm6_b;
add ymm3_c ymm9_c ymm6_c;
add ymm3_d ymm9_d ymm6_d;
add ymm3_e ymm9_e ymm6_e;
add ymm3_f ymm9_f ymm6_f;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x55555555804c *)
sub ymm6_0 ymm9_0 ymm6_0;
sub ymm6_1 ymm9_1 ymm6_1;
sub ymm6_2 ymm9_2 ymm6_2;
sub ymm6_3 ymm9_3 ymm6_3;
sub ymm6_4 ymm9_4 ymm6_4;
sub ymm6_5 ymm9_5 ymm6_5;
sub ymm6_6 ymm9_6 ymm6_6;
sub ymm6_7 ymm9_7 ymm6_7;
sub ymm6_8 ymm9_8 ymm6_8;
sub ymm6_9 ymm9_9 ymm6_9;
sub ymm6_a ymm9_a ymm6_a;
sub ymm6_b ymm9_b ymm6_b;
sub ymm6_c ymm9_c ymm6_c;
sub ymm6_d ymm9_d ymm6_d;
sub ymm6_e ymm9_e ymm6_e;
sub ymm6_f ymm9_f ymm6_f;
(* vpaddw %ymm5,%ymm7,%ymm9                        #! PC = 0x555555558050 *)
add ymm9_0 ymm7_0 ymm5_0;
add ymm9_1 ymm7_1 ymm5_1;
add ymm9_2 ymm7_2 ymm5_2;
add ymm9_3 ymm7_3 ymm5_3;
add ymm9_4 ymm7_4 ymm5_4;
add ymm9_5 ymm7_5 ymm5_5;
add ymm9_6 ymm7_6 ymm5_6;
add ymm9_7 ymm7_7 ymm5_7;
add ymm9_8 ymm7_8 ymm5_8;
add ymm9_9 ymm7_9 ymm5_9;
add ymm9_a ymm7_a ymm5_a;
add ymm9_b ymm7_b ymm5_b;
add ymm9_c ymm7_c ymm5_c;
add ymm9_d ymm7_d ymm5_d;
add ymm9_e ymm7_e ymm5_e;
add ymm9_f ymm7_f ymm5_f;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x555555558054 *)
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
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x555555558058 *)
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
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555555805d *)
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
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x555555558062 *)
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
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558067 *)
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
(* ===== End of level 3, off 0 ===== *)

(* ecut 3, rcut 3 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((3226*x)**1) + ymm3_2*((3226*x)**2) + ymm3_3*((3226*x)**3) +
    ymm9_0*((3226*x)**4) + ymm9_1*((3226*x)**5) + ymm9_2*((3226*x)**6) + ymm9_3*((3226*x)**7) +
    ymm7_0*((3226*x)**8) + ymm7_1*((3226*x)**9) + ymm7_2*((3226*x)**10) + ymm7_3*((3226*x)**11) +
    ymm4_0*((3226*x)**12) + ymm4_1*((3226*x)**13) + ymm4_2*((3226*x)**14) + ymm4_3*((3226*x)**15)
  )
  [10753, x**16 - (1154)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((3226*x)**1) + ymm6_2*((3226*x)**2) + ymm6_3*((3226*x)**3) +
    ymm5_0*((3226*x)**4) + ymm5_1*((3226*x)**5) + ymm5_2*((3226*x)**6) + ymm5_3*((3226*x)**7) +
    ymm8_0*((3226*x)**8) + ymm8_1*((3226*x)**9) + ymm8_2*((3226*x)**10) + ymm8_3*((3226*x)**11) +
    ymm11_0*((3226*x)**12) + ymm11_1*((3226*x)**13) + ymm11_2*((3226*x)**14) + ymm11_3*((3226*x)**15)
  )
  [10753, x**16 - (-1154)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((10463*x)**1) + ymm3_6*((10463*x)**2) + ymm3_7*((10463*x)**3) +
    ymm9_4*((10463*x)**4) + ymm9_5*((10463*x)**5) + ymm9_6*((10463*x)**6) + ymm9_7*((10463*x)**7) +
    ymm7_4*((10463*x)**8) + ymm7_5*((10463*x)**9) + ymm7_6*((10463*x)**10) + ymm7_7*((10463*x)**11) +
    ymm4_4*((10463*x)**12) + ymm4_5*((10463*x)**13) + ymm4_6*((10463*x)**14) + ymm4_7*((10463*x)**15)
  )
  [10753, x**16 - (-2640)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((10463*x)**1) + ymm6_6*((10463*x)**2) + ymm6_7*((10463*x)**3) +
    ymm5_4*((10463*x)**4) + ymm5_5*((10463*x)**5) + ymm5_6*((10463*x)**6) + ymm5_7*((10463*x)**7) +
    ymm8_4*((10463*x)**8) + ymm8_5*((10463*x)**9) + ymm8_6*((10463*x)**10) + ymm8_7*((10463*x)**11) +
    ymm11_4*((10463*x)**12) + ymm11_5*((10463*x)**13) + ymm11_6*((10463*x)**14) + ymm11_7*((10463*x)**15)
  )
  [10753, x**16 - (2640)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((2966*x)**1) + ymm3_a*((2966*x)**2) + ymm3_b*((2966*x)**3) +
    ymm9_8*((2966*x)**4) + ymm9_9*((2966*x)**5) + ymm9_a*((2966*x)**6) + ymm9_b*((2966*x)**7) +
    ymm7_8*((2966*x)**8) + ymm7_9*((2966*x)**9) + ymm7_a*((2966*x)**10) + ymm7_b*((2966*x)**11) +
    ymm4_8*((2966*x)**12) + ymm4_9*((2966*x)**13) + ymm4_a*((2966*x)**14) + ymm4_b*((2966*x)**15)
  )
  [10753, x**16 - (4832)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((2966*x)**1) + ymm6_a*((2966*x)**2) + ymm6_b*((2966*x)**3) +
    ymm5_8*((2966*x)**4) + ymm5_9*((2966*x)**5) + ymm5_a*((2966*x)**6) + ymm5_b*((2966*x)**7) +
    ymm8_8*((2966*x)**8) + ymm8_9*((2966*x)**9) + ymm8_a*((2966*x)**10) + ymm8_b*((2966*x)**11) +
    ymm11_8*((2966*x)**12) + ymm11_9*((2966*x)**13) + ymm11_a*((2966*x)**14) + ymm11_b*((2966*x)**15)
  )
  [10753, x**16 - (-4832)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((1000*x)**1) + ymm3_e*((1000*x)**2) + ymm3_f*((1000*x)**3) +
    ymm9_c*((1000*x)**4) + ymm9_d*((1000*x)**5) + ymm9_e*((1000*x)**6) + ymm9_f*((1000*x)**7) +
    ymm7_c*((1000*x)**8) + ymm7_d*((1000*x)**9) + ymm7_e*((1000*x)**10) + ymm7_f*((1000*x)**11) +
    ymm4_c*((1000*x)**12) + ymm4_d*((1000*x)**13) + ymm4_e*((1000*x)**14) + ymm4_f*((1000*x)**15)
  )
  [10753, x**16 - (2047)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((1000*x)**1) + ymm6_e*((1000*x)**2) + ymm6_f*((1000*x)**3) +
    ymm5_c*((1000*x)**4) + ymm5_d*((1000*x)**5) + ymm5_e*((1000*x)**6) + ymm5_f*((1000*x)**7) +
    ymm8_c*((1000*x)**8) + ymm8_d*((1000*x)**9) + ymm8_e*((1000*x)**10) + ymm8_f*((1000*x)**11) +
    ymm11_c*((1000*x)**12) + ymm11_d*((1000*x)**13) + ymm11_e*((1000*x)**14) + ymm11_f*((1000*x)**15)
  )
  [10753, x**16 - (-2047)]
] && and [
  (-(11866))@16 <=s ymm3_0, ymm3_0 <=s (11866)@16, (-(12576))@16 <=s ymm3_1, ymm3_1 <=s (12576)@16,
  (-(12563))@16 <=s ymm3_2, ymm3_2 <=s (12563)@16, (-(13141))@16 <=s ymm3_3, ymm3_3 <=s (13141)@16,
  (-(12675))@16 <=s ymm9_0, ymm9_0 <=s (12675)@16, (-(11935))@16 <=s ymm9_1, ymm9_1 <=s (11935)@16,
  (-(12510))@16 <=s ymm9_2, ymm9_2 <=s (12510)@16, (-(13419))@16 <=s ymm9_3, ymm9_3 <=s (13419)@16,
  (-(12906))@16 <=s ymm7_0, ymm7_0 <=s (12906)@16, (-(13058))@16 <=s ymm7_1, ymm7_1 <=s (13058)@16,
  (-(12044))@16 <=s ymm7_2, ymm7_2 <=s (12044)@16, (-(13441))@16 <=s ymm7_3, ymm7_3 <=s (13441)@16,
  (-(12790))@16 <=s ymm4_0, ymm4_0 <=s (12790)@16, (-(12131))@16 <=s ymm4_1, ymm4_1 <=s (12131)@16,
  (-(11957))@16 <=s ymm4_2, ymm4_2 <=s (11957)@16, (-(12650))@16 <=s ymm4_3, ymm4_3 <=s (12650)@16,
  (-(11866))@16 <=s ymm6_0, ymm6_0 <=s (11866)@16, (-(12576))@16 <=s ymm6_1, ymm6_1 <=s (12576)@16,
  (-(12563))@16 <=s ymm6_2, ymm6_2 <=s (12563)@16, (-(13141))@16 <=s ymm6_3, ymm6_3 <=s (13141)@16,
  (-(12675))@16 <=s ymm5_0, ymm5_0 <=s (12675)@16, (-(11935))@16 <=s ymm5_1, ymm5_1 <=s (11935)@16,
  (-(12510))@16 <=s ymm5_2, ymm5_2 <=s (12510)@16, (-(13419))@16 <=s ymm5_3, ymm5_3 <=s (13419)@16,
  (-(12906))@16 <=s ymm8_0, ymm8_0 <=s (12906)@16, (-(13058))@16 <=s ymm8_1, ymm8_1 <=s (13058)@16,
  (-(12044))@16 <=s ymm8_2, ymm8_2 <=s (12044)@16, (-(13441))@16 <=s ymm8_3, ymm8_3 <=s (13441)@16,
  (-(12790))@16 <=s ymm11_0, ymm11_0 <=s (12790)@16, (-(12131))@16 <=s ymm11_1, ymm11_1 <=s (12131)@16,
  (-(11957))@16 <=s ymm11_2, ymm11_2 <=s (11957)@16, (-(12650))@16 <=s ymm11_3, ymm11_3 <=s (12650)@16,
  (-(11242))@16 <=s ymm3_4, ymm3_4 <=s (11242)@16, (-(12701))@16 <=s ymm3_5, ymm3_5 <=s (12701)@16,
  (-(11652))@16 <=s ymm3_6, ymm3_6 <=s (11652)@16, (-(13297))@16 <=s ymm3_7, ymm3_7 <=s (13297)@16,
  (-(13348))@16 <=s ymm9_4, ymm9_4 <=s (13348)@16, (-(12114))@16 <=s ymm9_5, ymm9_5 <=s (12114)@16,
  (-(10972))@16 <=s ymm9_6, ymm9_6 <=s (10972)@16, (-(11704))@16 <=s ymm9_7, ymm9_7 <=s (11704)@16,
  (-(13294))@16 <=s ymm7_4, ymm7_4 <=s (13294)@16, (-(13906))@16 <=s ymm7_5, ymm7_5 <=s (13906)@16,
  (-(11443))@16 <=s ymm7_6, ymm7_6 <=s (11443)@16, (-(13801))@16 <=s ymm7_7, ymm7_7 <=s (13801)@16,
  (-(12550))@16 <=s ymm4_4, ymm4_4 <=s (12550)@16, (-(12718))@16 <=s ymm4_5, ymm4_5 <=s (12718)@16,
  (-(12910))@16 <=s ymm4_6, ymm4_6 <=s (12910)@16, (-(12051))@16 <=s ymm4_7, ymm4_7 <=s (12051)@16,
  (-(11242))@16 <=s ymm6_4, ymm6_4 <=s (11242)@16, (-(12701))@16 <=s ymm6_5, ymm6_5 <=s (12701)@16,
  (-(11652))@16 <=s ymm6_6, ymm6_6 <=s (11652)@16, (-(13297))@16 <=s ymm6_7, ymm6_7 <=s (13297)@16,
  (-(13348))@16 <=s ymm5_4, ymm5_4 <=s (13348)@16, (-(12114))@16 <=s ymm5_5, ymm5_5 <=s (12114)@16,
  (-(10972))@16 <=s ymm5_6, ymm5_6 <=s (10972)@16, (-(11704))@16 <=s ymm5_7, ymm5_7 <=s (11704)@16,
  (-(13294))@16 <=s ymm8_4, ymm8_4 <=s (13294)@16, (-(13906))@16 <=s ymm8_5, ymm8_5 <=s (13906)@16,
  (-(11443))@16 <=s ymm8_6, ymm8_6 <=s (11443)@16, (-(13801))@16 <=s ymm8_7, ymm8_7 <=s (13801)@16,
  (-(12550))@16 <=s ymm11_4, ymm11_4 <=s (12550)@16, (-(12718))@16 <=s ymm11_5, ymm11_5 <=s (12718)@16,
  (-(12910))@16 <=s ymm11_6, ymm11_6 <=s (12910)@16, (-(12051))@16 <=s ymm11_7, ymm11_7 <=s (12051)@16,
  (-(12583))@16 <=s ymm3_8, ymm3_8 <=s (12583)@16, (-(11842))@16 <=s ymm3_9, ymm3_9 <=s (11842)@16,
  (-(13400))@16 <=s ymm3_a, ymm3_a <=s (13400)@16, (-(12750))@16 <=s ymm3_b, ymm3_b <=s (12750)@16,
  (-(11718))@16 <=s ymm9_8, ymm9_8 <=s (11718)@16, (-(12126))@16 <=s ymm9_9, ymm9_9 <=s (12126)@16,
  (-(11881))@16 <=s ymm9_a, ymm9_a <=s (11881)@16, (-(12722))@16 <=s ymm9_b, ymm9_b <=s (12722)@16,
  (-(12420))@16 <=s ymm7_8, ymm7_8 <=s (12420)@16, (-(11573))@16 <=s ymm7_9, ymm7_9 <=s (11573)@16,
  (-(11172))@16 <=s ymm7_a, ymm7_a <=s (11172)@16, (-(12412))@16 <=s ymm7_b, ymm7_b <=s (12412)@16,
  (-(13111))@16 <=s ymm4_8, ymm4_8 <=s (13111)@16, (-(12205))@16 <=s ymm4_9, ymm4_9 <=s (12205)@16,
  (-(11863))@16 <=s ymm4_a, ymm4_a <=s (11863)@16, (-(12290))@16 <=s ymm4_b, ymm4_b <=s (12290)@16,
  (-(12583))@16 <=s ymm6_8, ymm6_8 <=s (12583)@16, (-(11842))@16 <=s ymm6_9, ymm6_9 <=s (11842)@16,
  (-(13400))@16 <=s ymm6_a, ymm6_a <=s (13400)@16, (-(12750))@16 <=s ymm6_b, ymm6_b <=s (12750)@16,
  (-(11718))@16 <=s ymm5_8, ymm5_8 <=s (11718)@16, (-(12126))@16 <=s ymm5_9, ymm5_9 <=s (12126)@16,
  (-(11881))@16 <=s ymm5_a, ymm5_a <=s (11881)@16, (-(12722))@16 <=s ymm5_b, ymm5_b <=s (12722)@16,
  (-(12420))@16 <=s ymm8_8, ymm8_8 <=s (12420)@16, (-(11573))@16 <=s ymm8_9, ymm8_9 <=s (11573)@16,
  (-(11172))@16 <=s ymm8_a, ymm8_a <=s (11172)@16, (-(12412))@16 <=s ymm8_b, ymm8_b <=s (12412)@16,
  (-(13111))@16 <=s ymm11_8, ymm11_8 <=s (13111)@16, (-(12205))@16 <=s ymm11_9, ymm11_9 <=s (12205)@16,
  (-(11863))@16 <=s ymm11_a, ymm11_a <=s (11863)@16, (-(12290))@16 <=s ymm11_b, ymm11_b <=s (12290)@16,
  (-(11722))@16 <=s ymm3_c, ymm3_c <=s (11722)@16, (-(13920))@16 <=s ymm3_d, ymm3_d <=s (13920)@16,
  (-(14076))@16 <=s ymm3_e, ymm3_e <=s (14076)@16, (-(12527))@16 <=s ymm3_f, ymm3_f <=s (12527)@16,
  (-(11712))@16 <=s ymm9_c, ymm9_c <=s (11712)@16, (-(13912))@16 <=s ymm9_d, ymm9_d <=s (13912)@16,
  (-(11824))@16 <=s ymm9_e, ymm9_e <=s (11824)@16, (-(12540))@16 <=s ymm9_f, ymm9_f <=s (12540)@16,
  (-(13834))@16 <=s ymm7_c, ymm7_c <=s (13834)@16, (-(11871))@16 <=s ymm7_d, ymm7_d <=s (11871)@16,
  (-(13353))@16 <=s ymm7_e, ymm7_e <=s (13353)@16, (-(12258))@16 <=s ymm7_f, ymm7_f <=s (12258)@16,
  (-(12147))@16 <=s ymm4_c, ymm4_c <=s (12147)@16, (-(12336))@16 <=s ymm4_d, ymm4_d <=s (12336)@16,
  (-(11055))@16 <=s ymm4_e, ymm4_e <=s (11055)@16, (-(11670))@16 <=s ymm4_f, ymm4_f <=s (11670)@16,
  (-(11722))@16 <=s ymm6_c, ymm6_c <=s (11722)@16, (-(13920))@16 <=s ymm6_d, ymm6_d <=s (13920)@16,
  (-(14076))@16 <=s ymm6_e, ymm6_e <=s (14076)@16, (-(12527))@16 <=s ymm6_f, ymm6_f <=s (12527)@16,
  (-(11712))@16 <=s ymm5_c, ymm5_c <=s (11712)@16, (-(13912))@16 <=s ymm5_d, ymm5_d <=s (13912)@16,
  (-(11824))@16 <=s ymm5_e, ymm5_e <=s (11824)@16, (-(12540))@16 <=s ymm5_f, ymm5_f <=s (12540)@16,
  (-(13834))@16 <=s ymm8_c, ymm8_c <=s (13834)@16, (-(11871))@16 <=s ymm8_d, ymm8_d <=s (11871)@16,
  (-(13353))@16 <=s ymm8_e, ymm8_e <=s (13353)@16, (-(12258))@16 <=s ymm8_f, ymm8_f <=s (12258)@16,
  (-(12147))@16 <=s ymm11_c, ymm11_c <=s (12147)@16, (-(12336))@16 <=s ymm11_d, ymm11_d <=s (12336)@16,
  (-(11055))@16 <=s ymm11_e, ymm11_e <=s (11055)@16, (-(11670))@16 <=s ymm11_f, ymm11_f <=s (11670)@16
];

(* ===== Start of level 4, off 0 ===== *)
(* vmovdqa 0x80(%rdx),%ymm14                       #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x55555555806c *)
mov ymm14_0 L0x555555560780;
mov ymm14_1 L0x555555560782;
mov ymm14_2 L0x555555560784;
mov ymm14_3 L0x555555560786;
mov ymm14_4 L0x555555560788;
mov ymm14_5 L0x55555556078a;
mov ymm14_6 L0x55555556078c;
mov ymm14_7 L0x55555556078e;
mov ymm14_8 L0x555555560790;
mov ymm14_9 L0x555555560792;
mov ymm14_a L0x555555560794;
mov ymm14_b L0x555555560796;
mov ymm14_c L0x555555560798;
mov ymm14_d L0x55555556079a;
mov ymm14_e L0x55555556079c;
mov ymm14_f L0x55555556079e;
(* vmovdqa 0xa0(%rdx),%ymm15                       #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x555555558074 *)
mov ymm15_0 L0x5555555607a0;
mov ymm15_1 L0x5555555607a2;
mov ymm15_2 L0x5555555607a4;
mov ymm15_3 L0x5555555607a6;
mov ymm15_4 L0x5555555607a8;
mov ymm15_5 L0x5555555607aa;
mov ymm15_6 L0x5555555607ac;
mov ymm15_7 L0x5555555607ae;
mov ymm15_8 L0x5555555607b0;
mov ymm15_9 L0x5555555607b2;
mov ymm15_a L0x5555555607b4;
mov ymm15_b L0x5555555607b6;
mov ymm15_c L0x5555555607b8;
mov ymm15_d L0x5555555607ba;
mov ymm15_e L0x5555555607bc;
mov ymm15_f L0x5555555607be;
(* vpmullw %ymm14,%ymm7,%ymm13                     #! PC = 0x55555555807c *)
smull mulHymm7_0 mulL_0 ymm14_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm14_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm14_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm14_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm14_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm14_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm14_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm14_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm14_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm14_9 ymm7_9;
smull mulHymm7_a mulL_a ymm14_a ymm7_a;
smull mulHymm7_b mulL_b ymm14_b ymm7_b;
smull mulHymm7_c mulL_c ymm14_c ymm7_c;
smull mulHymm7_d mulL_d ymm14_d ymm7_d;
smull mulHymm7_e mulL_e ymm14_e ymm7_e;
smull mulHymm7_f mulL_f ymm14_f ymm7_f;
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
(* vpmulhw %ymm15,%ymm7,%ymm7                      #! PC = 0x555555558081 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm15_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm15_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm15_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm15_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm15_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm15_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm15_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm15_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm15_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm15_9;
smull mulH_a mulLymm7_a ymm7_a ymm15_a;
smull mulH_b mulLymm7_b ymm7_b ymm15_b;
smull mulH_c mulLymm7_c ymm7_c ymm15_c;
smull mulH_d mulLymm7_d ymm7_d ymm15_d;
smull mulH_e mulLymm7_e ymm7_e ymm15_e;
smull mulH_f mulLymm7_f ymm7_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558086 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f
];
assume and [
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f
] && true;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555555808a *)
sub ymm7_0 ymm7_0 ymm13_0;
sub ymm7_1 ymm7_1 ymm13_1;
sub ymm7_2 ymm7_2 ymm13_2;
sub ymm7_3 ymm7_3 ymm13_3;
sub ymm7_4 ymm7_4 ymm13_4;
sub ymm7_5 ymm7_5 ymm13_5;
sub ymm7_6 ymm7_6 ymm13_6;
sub ymm7_7 ymm7_7 ymm13_7;
sub ymm7_8 ymm7_8 ymm13_8;
sub ymm7_9 ymm7_9 ymm13_9;
sub ymm7_a ymm7_a ymm13_a;
sub ymm7_b ymm7_b ymm13_b;
sub ymm7_c ymm7_c ymm13_c;
sub ymm7_d ymm7_d ymm13_d;
sub ymm7_e ymm7_e ymm13_e;
sub ymm7_f ymm7_f ymm13_f;
(* vpmullw %ymm14,%ymm4,%ymm13                     #! PC = 0x55555555808f *)
smull mulHymm4_0 mulL_0 ymm14_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm14_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm14_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm14_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm14_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm14_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm14_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm14_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm14_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm14_9 ymm4_9;
smull mulHymm4_a mulL_a ymm14_a ymm4_a;
smull mulHymm4_b mulL_b ymm14_b ymm4_b;
smull mulHymm4_c mulL_c ymm14_c ymm4_c;
smull mulHymm4_d mulL_d ymm14_d ymm4_d;
smull mulHymm4_e mulL_e ymm14_e ymm4_e;
smull mulHymm4_f mulL_f ymm14_f ymm4_f;
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
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x555555558094 *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm15_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm15_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm15_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm15_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm15_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm15_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm15_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm15_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm15_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm15_9;
smull mulH_a mulLymm4_a ymm4_a ymm15_a;
smull mulH_b mulLymm4_b ymm4_b ymm15_b;
smull mulH_c mulLymm4_c ymm4_c ymm15_c;
smull mulH_d mulLymm4_d ymm4_d ymm15_d;
smull mulH_e mulLymm4_e ymm4_e ymm15_e;
smull mulH_f mulLymm4_f ymm4_f ymm15_f;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558099 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm4_0 = mulLymm13_0, mulLymm4_1 = mulLymm13_1,
mulLymm4_2 = mulLymm13_2, mulLymm4_3 = mulLymm13_3,
mulLymm4_4 = mulLymm13_4, mulLymm4_5 = mulLymm13_5,
mulLymm4_6 = mulLymm13_6, mulLymm4_7 = mulLymm13_7,
mulLymm4_8 = mulLymm13_8, mulLymm4_9 = mulLymm13_9,
mulLymm4_a = mulLymm13_a, mulLymm4_b = mulLymm13_b,
mulLymm4_c = mulLymm13_c, mulLymm4_d = mulLymm13_d,
mulLymm4_e = mulLymm13_e, mulLymm4_f = mulLymm13_f
];
assume and [
mulLymm4_0 = mulLymm13_0, mulLymm4_1 = mulLymm13_1,
mulLymm4_2 = mulLymm13_2, mulLymm4_3 = mulLymm13_3,
mulLymm4_4 = mulLymm13_4, mulLymm4_5 = mulLymm13_5,
mulLymm4_6 = mulLymm13_6, mulLymm4_7 = mulLymm13_7,
mulLymm4_8 = mulLymm13_8, mulLymm4_9 = mulLymm13_9,
mulLymm4_a = mulLymm13_a, mulLymm4_b = mulLymm13_b,
mulLymm4_c = mulLymm13_c, mulLymm4_d = mulLymm13_d,
mulLymm4_e = mulLymm13_e, mulLymm4_f = mulLymm13_f
] && true;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555555809d *)
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
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x5555555580a2 *)
smull mulHymm8_0 mulL_0 ymm1_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm1_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm1_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm1_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm1_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm1_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm1_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm1_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm1_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm1_9 ymm8_9;
smull mulHymm8_a mulL_a ymm1_a ymm8_a;
smull mulHymm8_b mulL_b ymm1_b ymm8_b;
smull mulHymm8_c mulL_c ymm1_c ymm8_c;
smull mulHymm8_d mulL_d ymm1_d ymm8_d;
smull mulHymm8_e mulL_e ymm1_e ymm8_e;
smull mulHymm8_f mulL_f ymm1_f ymm8_f;
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
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x5555555580a6 *)
smull mulHymm11_0 mulL_0 ymm1_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm1_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm1_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm1_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm1_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm1_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm1_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm1_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm1_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm1_9 ymm11_9;
smull mulHymm11_a mulL_a ymm1_a ymm11_a;
smull mulHymm11_b mulL_b ymm1_b ymm11_b;
smull mulHymm11_c mulL_c ymm1_c ymm11_c;
smull mulHymm11_d mulL_d ymm1_d ymm11_d;
smull mulHymm11_e mulL_e ymm1_e ymm11_e;
smull mulHymm11_f mulL_f ymm1_f ymm11_f;
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
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x5555555580aa *)
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
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x5555555580ae *)
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
(* vpaddw %ymm7,%ymm3,%ymm10                       #! PC = 0x5555555580b2 *)
add ymm10_0 ymm3_0 ymm7_0;
add ymm10_1 ymm3_1 ymm7_1;
add ymm10_2 ymm3_2 ymm7_2;
add ymm10_3 ymm3_3 ymm7_3;
add ymm10_4 ymm3_4 ymm7_4;
add ymm10_5 ymm3_5 ymm7_5;
add ymm10_6 ymm3_6 ymm7_6;
add ymm10_7 ymm3_7 ymm7_7;
add ymm10_8 ymm3_8 ymm7_8;
add ymm10_9 ymm3_9 ymm7_9;
add ymm10_a ymm3_a ymm7_a;
add ymm10_b ymm3_b ymm7_b;
add ymm10_c ymm3_c ymm7_c;
add ymm10_d ymm3_d ymm7_d;
add ymm10_e ymm3_e ymm7_e;
add ymm10_f ymm3_f ymm7_f;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x5555555580b6 *)
sub ymm7_0 ymm3_0 ymm7_0;
sub ymm7_1 ymm3_1 ymm7_1;
sub ymm7_2 ymm3_2 ymm7_2;
sub ymm7_3 ymm3_3 ymm7_3;
sub ymm7_4 ymm3_4 ymm7_4;
sub ymm7_5 ymm3_5 ymm7_5;
sub ymm7_6 ymm3_6 ymm7_6;
sub ymm7_7 ymm3_7 ymm7_7;
sub ymm7_8 ymm3_8 ymm7_8;
sub ymm7_9 ymm3_9 ymm7_9;
sub ymm7_a ymm3_a ymm7_a;
sub ymm7_b ymm3_b ymm7_b;
sub ymm7_c ymm3_c ymm7_c;
sub ymm7_d ymm3_d ymm7_d;
sub ymm7_e ymm3_e ymm7_e;
sub ymm7_f ymm3_f ymm7_f;
(* vpaddw %ymm4,%ymm9,%ymm3                        #! PC = 0x5555555580ba *)
add ymm3_0 ymm9_0 ymm4_0;
add ymm3_1 ymm9_1 ymm4_1;
add ymm3_2 ymm9_2 ymm4_2;
add ymm3_3 ymm9_3 ymm4_3;
add ymm3_4 ymm9_4 ymm4_4;
add ymm3_5 ymm9_5 ymm4_5;
add ymm3_6 ymm9_6 ymm4_6;
add ymm3_7 ymm9_7 ymm4_7;
add ymm3_8 ymm9_8 ymm4_8;
add ymm3_9 ymm9_9 ymm4_9;
add ymm3_a ymm9_a ymm4_a;
add ymm3_b ymm9_b ymm4_b;
add ymm3_c ymm9_c ymm4_c;
add ymm3_d ymm9_d ymm4_d;
add ymm3_e ymm9_e ymm4_e;
add ymm3_f ymm9_f ymm4_f;
(* vpsubw %ymm4,%ymm9,%ymm4                        #! PC = 0x5555555580be *)
sub ymm4_0 ymm9_0 ymm4_0;
sub ymm4_1 ymm9_1 ymm4_1;
sub ymm4_2 ymm9_2 ymm4_2;
sub ymm4_3 ymm9_3 ymm4_3;
sub ymm4_4 ymm9_4 ymm4_4;
sub ymm4_5 ymm9_5 ymm4_5;
sub ymm4_6 ymm9_6 ymm4_6;
sub ymm4_7 ymm9_7 ymm4_7;
sub ymm4_8 ymm9_8 ymm4_8;
sub ymm4_9 ymm9_9 ymm4_9;
sub ymm4_a ymm9_a ymm4_a;
sub ymm4_b ymm9_b ymm4_b;
sub ymm4_c ymm9_c ymm4_c;
sub ymm4_d ymm9_d ymm4_d;
sub ymm4_e ymm9_e ymm4_e;
sub ymm4_f ymm9_f ymm4_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555580c2 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555580c6 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
];
assume and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
] && true;
(* vpaddw %ymm8,%ymm6,%ymm9                        #! PC = 0x5555555580ca *)
add ymm9_0 ymm6_0 ymm8_0;
add ymm9_1 ymm6_1 ymm8_1;
add ymm9_2 ymm6_2 ymm8_2;
add ymm9_3 ymm6_3 ymm8_3;
add ymm9_4 ymm6_4 ymm8_4;
add ymm9_5 ymm6_5 ymm8_5;
add ymm9_6 ymm6_6 ymm8_6;
add ymm9_7 ymm6_7 ymm8_7;
add ymm9_8 ymm6_8 ymm8_8;
add ymm9_9 ymm6_9 ymm8_9;
add ymm9_a ymm6_a ymm8_a;
add ymm9_b ymm6_b ymm8_b;
add ymm9_c ymm6_c ymm8_c;
add ymm9_d ymm6_d ymm8_d;
add ymm9_e ymm6_e ymm8_e;
add ymm9_f ymm6_f ymm8_f;
(* vpsubw %ymm8,%ymm6,%ymm8                        #! PC = 0x5555555580cf *)
sub ymm8_0 ymm6_0 ymm8_0;
sub ymm8_1 ymm6_1 ymm8_1;
sub ymm8_2 ymm6_2 ymm8_2;
sub ymm8_3 ymm6_3 ymm8_3;
sub ymm8_4 ymm6_4 ymm8_4;
sub ymm8_5 ymm6_5 ymm8_5;
sub ymm8_6 ymm6_6 ymm8_6;
sub ymm8_7 ymm6_7 ymm8_7;
sub ymm8_8 ymm6_8 ymm8_8;
sub ymm8_9 ymm6_9 ymm8_9;
sub ymm8_a ymm6_a ymm8_a;
sub ymm8_b ymm6_b ymm8_b;
sub ymm8_c ymm6_c ymm8_c;
sub ymm8_d ymm6_d ymm8_d;
sub ymm8_e ymm6_e ymm8_e;
sub ymm8_f ymm6_f ymm8_f;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x5555555580d4 *)
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
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x5555555580d9 *)
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
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555580de *)
sub ymm9_0 ymm9_0 ymm12_0;
sub ymm9_1 ymm9_1 ymm12_1;
sub ymm9_2 ymm9_2 ymm12_2;
sub ymm9_3 ymm9_3 ymm12_3;
sub ymm9_4 ymm9_4 ymm12_4;
sub ymm9_5 ymm9_5 ymm12_5;
sub ymm9_6 ymm9_6 ymm12_6;
sub ymm9_7 ymm9_7 ymm12_7;
sub ymm9_8 ymm9_8 ymm12_8;
sub ymm9_9 ymm9_9 ymm12_9;
sub ymm9_a ymm9_a ymm12_a;
sub ymm9_b ymm9_b ymm12_b;
sub ymm9_c ymm9_c ymm12_c;
sub ymm9_d ymm9_d ymm12_d;
sub ymm9_e ymm9_e ymm12_e;
sub ymm9_f ymm9_f ymm12_f;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x5555555580e3 *)
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
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555580e8 *)
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
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x5555555580ed *)
add ymm11_0 ymm11_0 ymm13_0;
add ymm11_1 ymm11_1 ymm13_1;
add ymm11_2 ymm11_2 ymm13_2;
add ymm11_3 ymm11_3 ymm13_3;
add ymm11_4 ymm11_4 ymm13_4;
add ymm11_5 ymm11_5 ymm13_5;
add ymm11_6 ymm11_6 ymm13_6;
add ymm11_7 ymm11_7 ymm13_7;
add ymm11_8 ymm11_8 ymm13_8;
add ymm11_9 ymm11_9 ymm13_9;
add ymm11_a ymm11_a ymm13_a;
add ymm11_b ymm11_b ymm13_b;
add ymm11_c ymm11_c ymm13_c;
add ymm11_d ymm11_d ymm13_d;
add ymm11_e ymm11_e ymm13_e;
add ymm11_f ymm11_f ymm13_f;
(* ===== End of level 4, off 0 ===== *)

(* ecut 4, rcut 4 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((3226*x)**1) + ymm10_2*((3226*x)**2) + ymm10_3*((3226*x)**3) +
    ymm3_0*((3226*x)**4) + ymm3_1*((3226*x)**5) + ymm3_2*((3226*x)**6) + ymm3_3*((3226*x)**7)
  )
  [10753, x**8 - (-2900)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((3226*x)**1) + ymm7_2*((3226*x)**2) + ymm7_3*((3226*x)**3) +
    ymm4_0*((3226*x)**4) + ymm4_1*((3226*x)**5) + ymm4_2*((3226*x)**6) + ymm4_3*((3226*x)**7)
  )
  [10753, x**8 - (2900)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((3226*x)**1) + ymm9_2*((3226*x)**2) + ymm9_3*((3226*x)**3) +
    ymm6_0*((3226*x)**4) + ymm6_1*((3226*x)**5) + ymm6_2*((3226*x)**6) + ymm6_3*((3226*x)**7)
  )
  [10753, x**8 - (-3783)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm8_1*((3226*x)**1) + ymm8_2*((3226*x)**2) + ymm8_3*((3226*x)**3) +
    ymm11_0*((3226*x)**4) + ymm11_1*((3226*x)**5) + ymm11_2*((3226*x)**6) + ymm11_3*((3226*x)**7)
  )
  [10753, x**8 - (3783)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((10463*x)**1) + ymm10_6*((10463*x)**2) + ymm10_7*((10463*x)**3) +
    ymm3_4*((10463*x)**4) + ymm3_5*((10463*x)**5) + ymm3_6*((10463*x)**6) + ymm3_7*((10463*x)**7)
  )
  [10753, x**8 - (-746)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((10463*x)**1) + ymm7_6*((10463*x)**2) + ymm7_7*((10463*x)**3) +
    ymm4_4*((10463*x)**4) + ymm4_5*((10463*x)**5) + ymm4_6*((10463*x)**6) + ymm4_7*((10463*x)**7)
  )
  [10753, x**8 - (746)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((10463*x)**1) + ymm9_6*((10463*x)**2) + ymm9_7*((10463*x)**3) +
    ymm6_4*((10463*x)**4) + ymm6_5*((10463*x)**5) + ymm6_6*((10463*x)**6) + ymm6_7*((10463*x)**7)
  )
  [10753, x**8 - (4611)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm8_5*((10463*x)**1) + ymm8_6*((10463*x)**2) + ymm8_7*((10463*x)**3) +
    ymm11_4*((10463*x)**4) + ymm11_5*((10463*x)**5) + ymm11_6*((10463*x)**6) + ymm11_7*((10463*x)**7)
  )
  [10753, x**8 - (-4611)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((2966*x)**1) + ymm10_a*((2966*x)**2) + ymm10_b*((2966*x)**3) +
    ymm3_8*((2966*x)**4) + ymm3_9*((2966*x)**5) + ymm3_a*((2966*x)**6) + ymm3_b*((2966*x)**7)
  )
  [10753, x**8 - (-4191)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((2966*x)**1) + ymm7_a*((2966*x)**2) + ymm7_b*((2966*x)**3) +
    ymm4_8*((2966*x)**4) + ymm4_9*((2966*x)**5) + ymm4_a*((2966*x)**6) + ymm4_b*((2966*x)**7)
  )
  [10753, x**8 - (4191)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((2966*x)**1) + ymm9_a*((2966*x)**2) + ymm9_b*((2966*x)**3) +
    ymm6_8*((2966*x)**4) + ymm6_9*((2966*x)**5) + ymm6_a*((2966*x)**6) + ymm6_b*((2966*x)**7)
  )
  [10753, x**8 - (-4351)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm8_9*((2966*x)**1) + ymm8_a*((2966*x)**2) + ymm8_b*((2966*x)**3) +
    ymm11_8*((2966*x)**4) + ymm11_9*((2966*x)**5) + ymm11_a*((2966*x)**6) + ymm11_b*((2966*x)**7)
  )
  [10753, x**8 - (4351)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((1000*x)**1) + ymm10_e*((1000*x)**2) + ymm10_f*((1000*x)**3) +
    ymm3_c*((1000*x)**4) + ymm3_d*((1000*x)**5) + ymm3_e*((1000*x)**6) + ymm3_f*((1000*x)**7)
  )
  [10753, x**8 - (-1219)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((1000*x)**1) + ymm7_e*((1000*x)**2) + ymm7_f*((1000*x)**3) +
    ymm4_c*((1000*x)**4) + ymm4_d*((1000*x)**5) + ymm4_e*((1000*x)**6) + ymm4_f*((1000*x)**7)
  )
  [10753, x**8 - (1219)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((1000*x)**1) + ymm9_e*((1000*x)**2) + ymm9_f*((1000*x)**3) +
    ymm6_c*((1000*x)**4) + ymm6_d*((1000*x)**5) + ymm6_e*((1000*x)**6) + ymm6_f*((1000*x)**7)
  )
  [10753, x**8 - (-1186)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm8_d*((1000*x)**1) + ymm8_e*((1000*x)**2) + ymm8_f*((1000*x)**3) +
    ymm11_c*((1000*x)**4) + ymm11_d*((1000*x)**5) + ymm11_e*((1000*x)**6) + ymm11_f*((1000*x)**7)
  )
  [10753, x**8 - (1186)]
] && and [
  (-(17327))@16 <=s ymm10_0, ymm10_0 <=s (17327)@16, (-(18037))@16 <=s ymm10_1, ymm10_1 <=s (18037)@16,
  (-(18024))@16 <=s ymm10_2, ymm10_2 <=s (18024)@16, (-(18602))@16 <=s ymm10_3, ymm10_3 <=s (18602)@16,
  (-(18136))@16 <=s ymm3_0, ymm3_0 <=s (18136)@16, (-(17396))@16 <=s ymm3_1, ymm3_1 <=s (17396)@16,
  (-(17971))@16 <=s ymm3_2, ymm3_2 <=s (17971)@16, (-(18880))@16 <=s ymm3_3, ymm3_3 <=s (18880)@16,
  (-(17327))@16 <=s ymm7_0, ymm7_0 <=s (17327)@16, (-(18037))@16 <=s ymm7_1, ymm7_1 <=s (18037)@16,
  (-(18024))@16 <=s ymm7_2, ymm7_2 <=s (18024)@16, (-(18602))@16 <=s ymm7_3, ymm7_3 <=s (18602)@16,
  (-(18136))@16 <=s ymm4_0, ymm4_0 <=s (18136)@16, (-(17396))@16 <=s ymm4_1, ymm4_1 <=s (17396)@16,
  (-(17971))@16 <=s ymm4_2, ymm4_2 <=s (17971)@16, (-(18880))@16 <=s ymm4_3, ymm4_3 <=s (18880)@16,
  (-(17280))@16 <=s ymm9_0, ymm9_0 <=s (17280)@16, (-(17990))@16 <=s ymm9_1, ymm9_1 <=s (17990)@16,
  (-(17972))@16 <=s ymm9_2, ymm9_2 <=s (17972)@16, (-(18560))@16 <=s ymm9_3, ymm9_3 <=s (18560)@16,
  (-(18089))@16 <=s ymm6_0, ymm6_0 <=s (18089)@16, (-(17344))@16 <=s ymm6_1, ymm6_1 <=s (17344)@16,
  (-(17919))@16 <=s ymm6_2, ymm6_2 <=s (17919)@16, (-(18833))@16 <=s ymm6_3, ymm6_3 <=s (18833)@16,
  (-(17280))@16 <=s ymm8_0, ymm8_0 <=s (17280)@16, (-(17990))@16 <=s ymm8_1, ymm8_1 <=s (17990)@16,
  (-(17972))@16 <=s ymm8_2, ymm8_2 <=s (17972)@16, (-(18560))@16 <=s ymm8_3, ymm8_3 <=s (18560)@16,
  (-(18089))@16 <=s ymm11_0, ymm11_0 <=s (18089)@16, (-(17344))@16 <=s ymm11_1, ymm11_1 <=s (17344)@16,
  (-(17919))@16 <=s ymm11_2, ymm11_2 <=s (17919)@16, (-(18833))@16 <=s ymm11_3, ymm11_3 <=s (18833)@16,
  (-(16703))@16 <=s ymm10_4, ymm10_4 <=s (16703)@16, (-(18162))@16 <=s ymm10_5, ymm10_5 <=s (18162)@16,
  (-(17113))@16 <=s ymm10_6, ymm10_6 <=s (17113)@16, (-(18758))@16 <=s ymm10_7, ymm10_7 <=s (18758)@16,
  (-(18809))@16 <=s ymm3_4, ymm3_4 <=s (18809)@16, (-(17575))@16 <=s ymm3_5, ymm3_5 <=s (17575)@16,
  (-(16433))@16 <=s ymm3_6, ymm3_6 <=s (16433)@16, (-(17165))@16 <=s ymm3_7, ymm3_7 <=s (17165)@16,
  (-(16703))@16 <=s ymm7_4, ymm7_4 <=s (16703)@16, (-(18162))@16 <=s ymm7_5, ymm7_5 <=s (18162)@16,
  (-(17113))@16 <=s ymm7_6, ymm7_6 <=s (17113)@16, (-(18758))@16 <=s ymm7_7, ymm7_7 <=s (18758)@16,
  (-(18809))@16 <=s ymm4_4, ymm4_4 <=s (18809)@16, (-(17575))@16 <=s ymm4_5, ymm4_5 <=s (17575)@16,
  (-(16433))@16 <=s ymm4_6, ymm4_6 <=s (16433)@16, (-(17165))@16 <=s ymm4_7, ymm4_7 <=s (17165)@16,
  (-(16656))@16 <=s ymm9_4, ymm9_4 <=s (16656)@16, (-(18120))@16 <=s ymm9_5, ymm9_5 <=s (18120)@16,
  (-(17058))@16 <=s ymm9_6, ymm9_6 <=s (17058)@16, (-(18716))@16 <=s ymm9_7, ymm9_7 <=s (18716)@16,
  (-(18762))@16 <=s ymm6_4, ymm6_4 <=s (18762)@16, (-(17528))@16 <=s ymm6_5, ymm6_5 <=s (17528)@16,
  (-(16386))@16 <=s ymm6_6, ymm6_6 <=s (16386)@16, (-(17113))@16 <=s ymm6_7, ymm6_7 <=s (17113)@16,
  (-(16656))@16 <=s ymm8_4, ymm8_4 <=s (16656)@16, (-(18120))@16 <=s ymm8_5, ymm8_5 <=s (18120)@16,
  (-(17058))@16 <=s ymm8_6, ymm8_6 <=s (17058)@16, (-(18716))@16 <=s ymm8_7, ymm8_7 <=s (18716)@16,
  (-(18762))@16 <=s ymm11_4, ymm11_4 <=s (18762)@16, (-(17528))@16 <=s ymm11_5, ymm11_5 <=s (17528)@16,
  (-(16386))@16 <=s ymm11_6, ymm11_6 <=s (16386)@16, (-(17113))@16 <=s ymm11_7, ymm11_7 <=s (17113)@16,
  (-(18044))@16 <=s ymm10_8, ymm10_8 <=s (18044)@16, (-(17303))@16 <=s ymm10_9, ymm10_9 <=s (17303)@16,
  (-(18861))@16 <=s ymm10_a, ymm10_a <=s (18861)@16, (-(18211))@16 <=s ymm10_b, ymm10_b <=s (18211)@16,
  (-(17179))@16 <=s ymm3_8, ymm3_8 <=s (17179)@16, (-(17587))@16 <=s ymm3_9, ymm3_9 <=s (17587)@16,
  (-(17342))@16 <=s ymm3_a, ymm3_a <=s (17342)@16, (-(18183))@16 <=s ymm3_b, ymm3_b <=s (18183)@16,
  (-(18044))@16 <=s ymm7_8, ymm7_8 <=s (18044)@16, (-(17303))@16 <=s ymm7_9, ymm7_9 <=s (17303)@16,
  (-(18861))@16 <=s ymm7_a, ymm7_a <=s (18861)@16, (-(18211))@16 <=s ymm7_b, ymm7_b <=s (18211)@16,
  (-(17179))@16 <=s ymm4_8, ymm4_8 <=s (17179)@16, (-(17587))@16 <=s ymm4_9, ymm4_9 <=s (17587)@16,
  (-(17342))@16 <=s ymm4_a, ymm4_a <=s (17342)@16, (-(18183))@16 <=s ymm4_b, ymm4_b <=s (18183)@16,
  (-(17997))@16 <=s ymm9_8, ymm9_8 <=s (17997)@16, (-(17251))@16 <=s ymm9_9, ymm9_9 <=s (17251)@16,
  (-(18806))@16 <=s ymm9_a, ymm9_a <=s (18806)@16, (-(18159))@16 <=s ymm9_b, ymm9_b <=s (18159)@16,
  (-(17132))@16 <=s ymm6_8, ymm6_8 <=s (17132)@16, (-(17535))@16 <=s ymm6_9, ymm6_9 <=s (17535)@16,
  (-(17290))@16 <=s ymm6_a, ymm6_a <=s (17290)@16, (-(18131))@16 <=s ymm6_b, ymm6_b <=s (18131)@16,
  (-(17997))@16 <=s ymm8_8, ymm8_8 <=s (17997)@16, (-(17251))@16 <=s ymm8_9, ymm8_9 <=s (17251)@16,
  (-(18806))@16 <=s ymm8_a, ymm8_a <=s (18806)@16, (-(18159))@16 <=s ymm8_b, ymm8_b <=s (18159)@16,
  (-(17132))@16 <=s ymm11_8, ymm11_8 <=s (17132)@16, (-(17535))@16 <=s ymm11_9, ymm11_9 <=s (17535)@16,
  (-(17290))@16 <=s ymm11_a, ymm11_a <=s (17290)@16, (-(18131))@16 <=s ymm11_b, ymm11_b <=s (18131)@16,
  (-(17183))@16 <=s ymm10_c, ymm10_c <=s (17183)@16, (-(19381))@16 <=s ymm10_d, ymm10_d <=s (19381)@16,
  (-(19537))@16 <=s ymm10_e, ymm10_e <=s (19537)@16, (-(17988))@16 <=s ymm10_f, ymm10_f <=s (17988)@16,
  (-(17173))@16 <=s ymm3_c, ymm3_c <=s (17173)@16, (-(19373))@16 <=s ymm3_d, ymm3_d <=s (19373)@16,
  (-(17285))@16 <=s ymm3_e, ymm3_e <=s (17285)@16, (-(18001))@16 <=s ymm3_f, ymm3_f <=s (18001)@16,
  (-(17183))@16 <=s ymm7_c, ymm7_c <=s (17183)@16, (-(19381))@16 <=s ymm7_d, ymm7_d <=s (19381)@16,
  (-(19537))@16 <=s ymm7_e, ymm7_e <=s (19537)@16, (-(17988))@16 <=s ymm7_f, ymm7_f <=s (17988)@16,
  (-(17173))@16 <=s ymm4_c, ymm4_c <=s (17173)@16, (-(19373))@16 <=s ymm4_d, ymm4_d <=s (19373)@16,
  (-(17285))@16 <=s ymm4_e, ymm4_e <=s (17285)@16, (-(18001))@16 <=s ymm4_f, ymm4_f <=s (18001)@16,
  (-(17141))@16 <=s ymm9_c, ymm9_c <=s (17141)@16, (-(19329))@16 <=s ymm9_d, ymm9_d <=s (19329)@16,
  (-(19490))@16 <=s ymm9_e, ymm9_e <=s (19490)@16, (-(17936))@16 <=s ymm9_f, ymm9_f <=s (17936)@16,
  (-(17121))@16 <=s ymm6_c, ymm6_c <=s (17121)@16, (-(19321))@16 <=s ymm6_d, ymm6_d <=s (19321)@16,
  (-(17230))@16 <=s ymm6_e, ymm6_e <=s (17230)@16, (-(17949))@16 <=s ymm6_f, ymm6_f <=s (17949)@16,
  (-(17141))@16 <=s ymm8_c, ymm8_c <=s (17141)@16, (-(19329))@16 <=s ymm8_d, ymm8_d <=s (19329)@16,
  (-(19490))@16 <=s ymm8_e, ymm8_e <=s (19490)@16, (-(17936))@16 <=s ymm8_f, ymm8_f <=s (17936)@16,
  (-(17121))@16 <=s ymm11_c, ymm11_c <=s (17121)@16, (-(19321))@16 <=s ymm11_d, ymm11_d <=s (19321)@16,
  (-(17230))@16 <=s ymm11_e, ymm11_e <=s (17230)@16, (-(17949))@16 <=s ymm11_f, ymm11_f <=s (17949)@16
];

(* ===== Start of level 5, off 0 ===== *)
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x5555555580f2 *)
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
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x5555555580f7 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm15_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm15_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm15_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm15_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm15_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm15_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm15_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm15_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm15_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm15_9;
smull mulH_a mulLymm3_a ymm3_a ymm15_a;
smull mulH_b mulLymm3_b ymm3_b ymm15_b;
smull mulH_c mulLymm3_c ymm3_c ymm15_c;
smull mulH_d mulLymm3_d ymm3_d ymm15_d;
smull mulH_e mulLymm3_e ymm3_e ymm15_e;
smull mulH_f mulLymm3_f ymm3_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555580fc *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm13_0, mulLymm3_1 = mulLymm13_1,
mulLymm3_2 = mulLymm13_2, mulLymm3_3 = mulLymm13_3,
mulLymm3_4 = mulLymm13_4, mulLymm3_5 = mulLymm13_5,
mulLymm3_6 = mulLymm13_6, mulLymm3_7 = mulLymm13_7,
mulLymm3_8 = mulLymm13_8, mulLymm3_9 = mulLymm13_9,
mulLymm3_a = mulLymm13_a, mulLymm3_b = mulLymm13_b,
mulLymm3_c = mulLymm13_c, mulLymm3_d = mulLymm13_d,
mulLymm3_e = mulLymm13_e, mulLymm3_f = mulLymm13_f
];
assume and [
mulLymm3_0 = mulLymm13_0, mulLymm3_1 = mulLymm13_1,
mulLymm3_2 = mulLymm13_2, mulLymm3_3 = mulLymm13_3,
mulLymm3_4 = mulLymm13_4, mulLymm3_5 = mulLymm13_5,
mulLymm3_6 = mulLymm13_6, mulLymm3_7 = mulLymm13_7,
mulLymm3_8 = mulLymm13_8, mulLymm3_9 = mulLymm13_9,
mulLymm3_a = mulLymm13_a, mulLymm3_b = mulLymm13_b,
mulLymm3_c = mulLymm13_c, mulLymm3_d = mulLymm13_d,
mulLymm3_e = mulLymm13_e, mulLymm3_f = mulLymm13_f
] && true;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x555555558100 *)
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
(* vpmullw %ymm1,%ymm4,%ymm12                      #! PC = 0x555555558105 *)
smull mulHymm4_0 mulL_0 ymm1_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm1_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm1_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm1_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm1_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm1_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm1_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm1_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm1_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm1_9 ymm4_9;
smull mulHymm4_a mulL_a ymm1_a ymm4_a;
smull mulHymm4_b mulL_b ymm1_b ymm4_b;
smull mulHymm4_c mulL_c ymm1_c ymm4_c;
smull mulHymm4_d mulL_d ymm1_d ymm4_d;
smull mulHymm4_e mulL_e ymm1_e ymm4_e;
smull mulHymm4_f mulL_f ymm1_f ymm4_f;
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
(* vpmullw 0x140(%rdx),%ymm6,%ymm13                #! EA = L0x555555560840; Value = 0xd792d792d792d792; PC = 0x555555558109 *)
smull mulHymm6_0 mulL_0 L0x555555560840 ymm6_0;
smull mulHymm6_1 mulL_1 L0x555555560842 ymm6_1;
smull mulHymm6_2 mulL_2 L0x555555560844 ymm6_2;
smull mulHymm6_3 mulL_3 L0x555555560846 ymm6_3;
smull mulHymm6_4 mulL_4 L0x555555560848 ymm6_4;
smull mulHymm6_5 mulL_5 L0x55555556084a ymm6_5;
smull mulHymm6_6 mulL_6 L0x55555556084c ymm6_6;
smull mulHymm6_7 mulL_7 L0x55555556084e ymm6_7;
smull mulHymm6_8 mulL_8 L0x555555560850 ymm6_8;
smull mulHymm6_9 mulL_9 L0x555555560852 ymm6_9;
smull mulHymm6_a mulL_a L0x555555560854 ymm6_a;
smull mulHymm6_b mulL_b L0x555555560856 ymm6_b;
smull mulHymm6_c mulL_c L0x555555560858 ymm6_c;
smull mulHymm6_d mulL_d L0x55555556085a ymm6_d;
smull mulHymm6_e mulL_e L0x55555556085c ymm6_e;
smull mulHymm6_f mulL_f L0x55555556085e ymm6_f;
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
(* vpmullw 0x1c0(%rdx),%ymm11,%ymm14               #! EA = L0x5555555608c0; Value = 0x4029402940294029; PC = 0x555555558111 *)
smull mulHymm11_0 mulL_0 L0x5555555608c0 ymm11_0;
smull mulHymm11_1 mulL_1 L0x5555555608c2 ymm11_1;
smull mulHymm11_2 mulL_2 L0x5555555608c4 ymm11_2;
smull mulHymm11_3 mulL_3 L0x5555555608c6 ymm11_3;
smull mulHymm11_4 mulL_4 L0x5555555608c8 ymm11_4;
smull mulHymm11_5 mulL_5 L0x5555555608ca ymm11_5;
smull mulHymm11_6 mulL_6 L0x5555555608cc ymm11_6;
smull mulHymm11_7 mulL_7 L0x5555555608ce ymm11_7;
smull mulHymm11_8 mulL_8 L0x5555555608d0 ymm11_8;
smull mulHymm11_9 mulL_9 L0x5555555608d2 ymm11_9;
smull mulHymm11_a mulL_a L0x5555555608d4 ymm11_a;
smull mulHymm11_b mulL_b L0x5555555608d6 ymm11_b;
smull mulHymm11_c mulL_c L0x5555555608d8 ymm11_c;
smull mulHymm11_d mulL_d L0x5555555608da ymm11_d;
smull mulHymm11_e mulL_e L0x5555555608dc ymm11_e;
smull mulHymm11_f mulL_f L0x5555555608de ymm11_f;
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
(* vpmulhw %ymm2,%ymm4,%ymm4                       #! PC = 0x555555558119 *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm2_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm2_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm2_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm2_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm2_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm2_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm2_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm2_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm2_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm2_9;
smull mulH_a mulLymm4_a ymm4_a ymm2_a;
smull mulH_b mulLymm4_b ymm4_b ymm2_b;
smull mulH_c mulLymm4_c ymm4_c ymm2_c;
smull mulH_d mulLymm4_d ymm4_d ymm2_d;
smull mulH_e mulLymm4_e ymm4_e ymm2_e;
smull mulH_f mulLymm4_f ymm4_f ymm2_f;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw 0x160(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560860; Value = 0xf392f392f392f392; PC = 0x55555555811d *)
smull mulH_0 mulLymm6_0 ymm6_0 L0x555555560860;
smull mulH_1 mulLymm6_1 ymm6_1 L0x555555560862;
smull mulH_2 mulLymm6_2 ymm6_2 L0x555555560864;
smull mulH_3 mulLymm6_3 ymm6_3 L0x555555560866;
smull mulH_4 mulLymm6_4 ymm6_4 L0x555555560868;
smull mulH_5 mulLymm6_5 ymm6_5 L0x55555556086a;
smull mulH_6 mulLymm6_6 ymm6_6 L0x55555556086c;
smull mulH_7 mulLymm6_7 ymm6_7 L0x55555556086e;
smull mulH_8 mulLymm6_8 ymm6_8 L0x555555560870;
smull mulH_9 mulLymm6_9 ymm6_9 L0x555555560872;
smull mulH_a mulLymm6_a ymm6_a L0x555555560874;
smull mulH_b mulLymm6_b ymm6_b L0x555555560876;
smull mulH_c mulLymm6_c ymm6_c L0x555555560878;
smull mulH_d mulLymm6_d ymm6_d L0x55555556087a;
smull mulH_e mulLymm6_e ymm6_e L0x55555556087c;
smull mulH_f mulLymm6_f ymm6_f L0x55555556087e;
mov ymm6_0 mulH_0;
mov ymm6_1 mulH_1;
mov ymm6_2 mulH_2;
mov ymm6_3 mulH_3;
mov ymm6_4 mulH_4;
mov ymm6_5 mulH_5;
mov ymm6_6 mulH_6;
mov ymm6_7 mulH_7;
mov ymm6_8 mulH_8;
mov ymm6_9 mulH_9;
mov ymm6_a mulH_a;
mov ymm6_b mulH_b;
mov ymm6_c mulH_c;
mov ymm6_d mulH_d;
mov ymm6_e mulH_e;
mov ymm6_f mulH_f;
(* vpmulhw 0x1e0(%rdx),%ymm11,%ymm11               #! EA = L0x5555555608e0; Value = 0x0e290e290e290e29; PC = 0x555555558125 *)
smull mulH_0 mulLymm11_0 ymm11_0 L0x5555555608e0;
smull mulH_1 mulLymm11_1 ymm11_1 L0x5555555608e2;
smull mulH_2 mulLymm11_2 ymm11_2 L0x5555555608e4;
smull mulH_3 mulLymm11_3 ymm11_3 L0x5555555608e6;
smull mulH_4 mulLymm11_4 ymm11_4 L0x5555555608e8;
smull mulH_5 mulLymm11_5 ymm11_5 L0x5555555608ea;
smull mulH_6 mulLymm11_6 ymm11_6 L0x5555555608ec;
smull mulH_7 mulLymm11_7 ymm11_7 L0x5555555608ee;
smull mulH_8 mulLymm11_8 ymm11_8 L0x5555555608f0;
smull mulH_9 mulLymm11_9 ymm11_9 L0x5555555608f2;
smull mulH_a mulLymm11_a ymm11_a L0x5555555608f4;
smull mulH_b mulLymm11_b ymm11_b L0x5555555608f6;
smull mulH_c mulLymm11_c ymm11_c L0x5555555608f8;
smull mulH_d mulLymm11_d ymm11_d L0x5555555608fa;
smull mulH_e mulLymm11_e ymm11_e L0x5555555608fc;
smull mulH_f mulLymm11_f ymm11_f L0x5555555608fe;
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
(* vpaddw %ymm3,%ymm10,%ymm5                       #! PC = 0x55555555812d *)
add ymm5_0 ymm10_0 ymm3_0;
add ymm5_1 ymm10_1 ymm3_1;
add ymm5_2 ymm10_2 ymm3_2;
add ymm5_3 ymm10_3 ymm3_3;
add ymm5_4 ymm10_4 ymm3_4;
add ymm5_5 ymm10_5 ymm3_5;
add ymm5_6 ymm10_6 ymm3_6;
add ymm5_7 ymm10_7 ymm3_7;
add ymm5_8 ymm10_8 ymm3_8;
add ymm5_9 ymm10_9 ymm3_9;
add ymm5_a ymm10_a ymm3_a;
add ymm5_b ymm10_b ymm3_b;
add ymm5_c ymm10_c ymm3_c;
add ymm5_d ymm10_d ymm3_d;
add ymm5_e ymm10_e ymm3_e;
add ymm5_f ymm10_f ymm3_f;
(* vpsubw %ymm3,%ymm10,%ymm3                       #! PC = 0x555555558131 *)
sub ymm3_0 ymm10_0 ymm3_0;
sub ymm3_1 ymm10_1 ymm3_1;
sub ymm3_2 ymm10_2 ymm3_2;
sub ymm3_3 ymm10_3 ymm3_3;
sub ymm3_4 ymm10_4 ymm3_4;
sub ymm3_5 ymm10_5 ymm3_5;
sub ymm3_6 ymm10_6 ymm3_6;
sub ymm3_7 ymm10_7 ymm3_7;
sub ymm3_8 ymm10_8 ymm3_8;
sub ymm3_9 ymm10_9 ymm3_9;
sub ymm3_a ymm10_a ymm3_a;
sub ymm3_b ymm10_b ymm3_b;
sub ymm3_c ymm10_c ymm3_c;
sub ymm3_d ymm10_d ymm3_d;
sub ymm3_e ymm10_e ymm3_e;
sub ymm3_f ymm10_f ymm3_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558135 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558139 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555555813d *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
assert true && and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f,
mulLymm6_0 = mulLymm13_0, mulLymm6_1 = mulLymm13_1,
mulLymm6_2 = mulLymm13_2, mulLymm6_3 = mulLymm13_3,
mulLymm6_4 = mulLymm13_4, mulLymm6_5 = mulLymm13_5,
mulLymm6_6 = mulLymm13_6, mulLymm6_7 = mulLymm13_7,
mulLymm6_8 = mulLymm13_8, mulLymm6_9 = mulLymm13_9,
mulLymm6_a = mulLymm13_a, mulLymm6_b = mulLymm13_b,
mulLymm6_c = mulLymm13_c, mulLymm6_d = mulLymm13_d,
mulLymm6_e = mulLymm13_e, mulLymm6_f = mulLymm13_f,
mulLymm11_0 = mulLymm14_0, mulLymm11_1 = mulLymm14_1,
mulLymm11_2 = mulLymm14_2, mulLymm11_3 = mulLymm14_3,
mulLymm11_4 = mulLymm14_4, mulLymm11_5 = mulLymm14_5,
mulLymm11_6 = mulLymm14_6, mulLymm11_7 = mulLymm14_7,
mulLymm11_8 = mulLymm14_8, mulLymm11_9 = mulLymm14_9,
mulLymm11_a = mulLymm14_a, mulLymm11_b = mulLymm14_b,
mulLymm11_c = mulLymm14_c, mulLymm11_d = mulLymm14_d,
mulLymm11_e = mulLymm14_e, mulLymm11_f = mulLymm14_f
];
assume and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f,
mulLymm6_0 = mulLymm13_0, mulLymm6_1 = mulLymm13_1,
mulLymm6_2 = mulLymm13_2, mulLymm6_3 = mulLymm13_3,
mulLymm6_4 = mulLymm13_4, mulLymm6_5 = mulLymm13_5,
mulLymm6_6 = mulLymm13_6, mulLymm6_7 = mulLymm13_7,
mulLymm6_8 = mulLymm13_8, mulLymm6_9 = mulLymm13_9,
mulLymm6_a = mulLymm13_a, mulLymm6_b = mulLymm13_b,
mulLymm6_c = mulLymm13_c, mulLymm6_d = mulLymm13_d,
mulLymm6_e = mulLymm13_e, mulLymm6_f = mulLymm13_f,
mulLymm11_0 = mulLymm14_0, mulLymm11_1 = mulLymm14_1,
mulLymm11_2 = mulLymm14_2, mulLymm11_3 = mulLymm14_3,
mulLymm11_4 = mulLymm14_4, mulLymm11_5 = mulLymm14_5,
mulLymm11_6 = mulLymm14_6, mulLymm11_7 = mulLymm14_7,
mulLymm11_8 = mulLymm14_8, mulLymm11_9 = mulLymm14_9,
mulLymm11_a = mulLymm14_a, mulLymm11_b = mulLymm14_b,
mulLymm11_c = mulLymm14_c, mulLymm11_d = mulLymm14_d,
mulLymm11_e = mulLymm14_e, mulLymm11_f = mulLymm14_f
] && true;
(* vpaddw %ymm4,%ymm7,%ymm10                       #! PC = 0x555555558141 *)
add ymm10_0 ymm7_0 ymm4_0;
add ymm10_1 ymm7_1 ymm4_1;
add ymm10_2 ymm7_2 ymm4_2;
add ymm10_3 ymm7_3 ymm4_3;
add ymm10_4 ymm7_4 ymm4_4;
add ymm10_5 ymm7_5 ymm4_5;
add ymm10_6 ymm7_6 ymm4_6;
add ymm10_7 ymm7_7 ymm4_7;
add ymm10_8 ymm7_8 ymm4_8;
add ymm10_9 ymm7_9 ymm4_9;
add ymm10_a ymm7_a ymm4_a;
add ymm10_b ymm7_b ymm4_b;
add ymm10_c ymm7_c ymm4_c;
add ymm10_d ymm7_d ymm4_d;
add ymm10_e ymm7_e ymm4_e;
add ymm10_f ymm7_f ymm4_f;
(* vpsubw %ymm4,%ymm7,%ymm4                        #! PC = 0x555555558145 *)
sub ymm4_0 ymm7_0 ymm4_0;
sub ymm4_1 ymm7_1 ymm4_1;
sub ymm4_2 ymm7_2 ymm4_2;
sub ymm4_3 ymm7_3 ymm4_3;
sub ymm4_4 ymm7_4 ymm4_4;
sub ymm4_5 ymm7_5 ymm4_5;
sub ymm4_6 ymm7_6 ymm4_6;
sub ymm4_7 ymm7_7 ymm4_7;
sub ymm4_8 ymm7_8 ymm4_8;
sub ymm4_9 ymm7_9 ymm4_9;
sub ymm4_a ymm7_a ymm4_a;
sub ymm4_b ymm7_b ymm4_b;
sub ymm4_c ymm7_c ymm4_c;
sub ymm4_d ymm7_d ymm4_d;
sub ymm4_e ymm7_e ymm4_e;
sub ymm4_f ymm7_f ymm4_f;
(* vpaddw %ymm6,%ymm9,%ymm7                        #! PC = 0x555555558149 *)
add ymm7_0 ymm9_0 ymm6_0;
add ymm7_1 ymm9_1 ymm6_1;
add ymm7_2 ymm9_2 ymm6_2;
add ymm7_3 ymm9_3 ymm6_3;
add ymm7_4 ymm9_4 ymm6_4;
add ymm7_5 ymm9_5 ymm6_5;
add ymm7_6 ymm9_6 ymm6_6;
add ymm7_7 ymm9_7 ymm6_7;
add ymm7_8 ymm9_8 ymm6_8;
add ymm7_9 ymm9_9 ymm6_9;
add ymm7_a ymm9_a ymm6_a;
add ymm7_b ymm9_b ymm6_b;
add ymm7_c ymm9_c ymm6_c;
add ymm7_d ymm9_d ymm6_d;
add ymm7_e ymm9_e ymm6_e;
add ymm7_f ymm9_f ymm6_f;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x55555555814d *)
sub ymm6_0 ymm9_0 ymm6_0;
sub ymm6_1 ymm9_1 ymm6_1;
sub ymm6_2 ymm9_2 ymm6_2;
sub ymm6_3 ymm9_3 ymm6_3;
sub ymm6_4 ymm9_4 ymm6_4;
sub ymm6_5 ymm9_5 ymm6_5;
sub ymm6_6 ymm9_6 ymm6_6;
sub ymm6_7 ymm9_7 ymm6_7;
sub ymm6_8 ymm9_8 ymm6_8;
sub ymm6_9 ymm9_9 ymm6_9;
sub ymm6_a ymm9_a ymm6_a;
sub ymm6_b ymm9_b ymm6_b;
sub ymm6_c ymm9_c ymm6_c;
sub ymm6_d ymm9_d ymm6_d;
sub ymm6_e ymm9_e ymm6_e;
sub ymm6_f ymm9_f ymm6_f;
(* vpaddw %ymm11,%ymm8,%ymm9                       #! PC = 0x555555558151 *)
add ymm9_0 ymm8_0 ymm11_0;
add ymm9_1 ymm8_1 ymm11_1;
add ymm9_2 ymm8_2 ymm11_2;
add ymm9_3 ymm8_3 ymm11_3;
add ymm9_4 ymm8_4 ymm11_4;
add ymm9_5 ymm8_5 ymm11_5;
add ymm9_6 ymm8_6 ymm11_6;
add ymm9_7 ymm8_7 ymm11_7;
add ymm9_8 ymm8_8 ymm11_8;
add ymm9_9 ymm8_9 ymm11_9;
add ymm9_a ymm8_a ymm11_a;
add ymm9_b ymm8_b ymm11_b;
add ymm9_c ymm8_c ymm11_c;
add ymm9_d ymm8_d ymm11_d;
add ymm9_e ymm8_e ymm11_e;
add ymm9_f ymm8_f ymm11_f;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x555555558156 *)
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
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555555815b *)
sub ymm10_0 ymm10_0 ymm12_0;
sub ymm10_1 ymm10_1 ymm12_1;
sub ymm10_2 ymm10_2 ymm12_2;
sub ymm10_3 ymm10_3 ymm12_3;
sub ymm10_4 ymm10_4 ymm12_4;
sub ymm10_5 ymm10_5 ymm12_5;
sub ymm10_6 ymm10_6 ymm12_6;
sub ymm10_7 ymm10_7 ymm12_7;
sub ymm10_8 ymm10_8 ymm12_8;
sub ymm10_9 ymm10_9 ymm12_9;
sub ymm10_a ymm10_a ymm12_a;
sub ymm10_b ymm10_b ymm12_b;
sub ymm10_c ymm10_c ymm12_c;
sub ymm10_d ymm10_d ymm12_d;
sub ymm10_e ymm10_e ymm12_e;
sub ymm10_f ymm10_f ymm12_f;
(* vpaddw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555558160 *)
add ymm4_0 ymm4_0 ymm12_0;
add ymm4_1 ymm4_1 ymm12_1;
add ymm4_2 ymm4_2 ymm12_2;
add ymm4_3 ymm4_3 ymm12_3;
add ymm4_4 ymm4_4 ymm12_4;
add ymm4_5 ymm4_5 ymm12_5;
add ymm4_6 ymm4_6 ymm12_6;
add ymm4_7 ymm4_7 ymm12_7;
add ymm4_8 ymm4_8 ymm12_8;
add ymm4_9 ymm4_9 ymm12_9;
add ymm4_a ymm4_a ymm12_a;
add ymm4_b ymm4_b ymm12_b;
add ymm4_c ymm4_c ymm12_c;
add ymm4_d ymm4_d ymm12_d;
add ymm4_e ymm4_e ymm12_e;
add ymm4_f ymm4_f ymm12_f;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x555555558165 *)
sub ymm7_0 ymm7_0 ymm13_0;
sub ymm7_1 ymm7_1 ymm13_1;
sub ymm7_2 ymm7_2 ymm13_2;
sub ymm7_3 ymm7_3 ymm13_3;
sub ymm7_4 ymm7_4 ymm13_4;
sub ymm7_5 ymm7_5 ymm13_5;
sub ymm7_6 ymm7_6 ymm13_6;
sub ymm7_7 ymm7_7 ymm13_7;
sub ymm7_8 ymm7_8 ymm13_8;
sub ymm7_9 ymm7_9 ymm13_9;
sub ymm7_a ymm7_a ymm13_a;
sub ymm7_b ymm7_b ymm13_b;
sub ymm7_c ymm7_c ymm13_c;
sub ymm7_d ymm7_d ymm13_d;
sub ymm7_e ymm7_e ymm13_e;
sub ymm7_f ymm7_f ymm13_f;
(* vpaddw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555555816a *)
add ymm6_0 ymm6_0 ymm13_0;
add ymm6_1 ymm6_1 ymm13_1;
add ymm6_2 ymm6_2 ymm13_2;
add ymm6_3 ymm6_3 ymm13_3;
add ymm6_4 ymm6_4 ymm13_4;
add ymm6_5 ymm6_5 ymm13_5;
add ymm6_6 ymm6_6 ymm13_6;
add ymm6_7 ymm6_7 ymm13_7;
add ymm6_8 ymm6_8 ymm13_8;
add ymm6_9 ymm6_9 ymm13_9;
add ymm6_a ymm6_a ymm13_a;
add ymm6_b ymm6_b ymm13_b;
add ymm6_c ymm6_c ymm13_c;
add ymm6_d ymm6_d ymm13_d;
add ymm6_e ymm6_e ymm13_e;
add ymm6_f ymm6_f ymm13_f;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555555816f *)
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
(* vpaddw %ymm14,%ymm11,%ymm11                     #! PC = 0x555555558174 *)
add ymm11_0 ymm11_0 ymm14_0;
add ymm11_1 ymm11_1 ymm14_1;
add ymm11_2 ymm11_2 ymm14_2;
add ymm11_3 ymm11_3 ymm14_3;
add ymm11_4 ymm11_4 ymm14_4;
add ymm11_5 ymm11_5 ymm14_5;
add ymm11_6 ymm11_6 ymm14_6;
add ymm11_7 ymm11_7 ymm14_7;
add ymm11_8 ymm11_8 ymm14_8;
add ymm11_9 ymm11_9 ymm14_9;
add ymm11_a ymm11_a ymm14_a;
add ymm11_b ymm11_b ymm14_b;
add ymm11_c ymm11_c ymm14_c;
add ymm11_d ymm11_d ymm14_d;
add ymm11_e ymm11_e ymm14_e;
add ymm11_f ymm11_f ymm14_f;
(* ===== End of level 5, off 0 ===== *)

(* ecut 5, rcut 5 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm5_1*((3226*x)**1) + ymm5_2*((3226*x)**2) + ymm5_3*((3226*x)**3)
  )
  [10753, x**4 - (-753)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((3226*x)**1) + ymm3_2*((3226*x)**2) + ymm3_3*((3226*x)**3)
  )
  [10753, x**4 - (753)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((3226*x)**1) + ymm10_2*((3226*x)**2) + ymm10_3*((3226*x)**3)
  )
  [10753, x**4 - (3775)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_0 + ymm4_1*((3226*x)**1) + ymm4_2*((3226*x)**2) + ymm4_3*((3226*x)**3)
  )
  [10753, x**4 - (-3775)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((3226*x)**1) + ymm7_2*((3226*x)**2) + ymm7_3*((3226*x)**3)
  )
  [10753, x**4 - (-5147)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((3226*x)**1) + ymm6_2*((3226*x)**2) + ymm6_3*((3226*x)**3)
  )
  [10753, x**4 - (5147)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((3226*x)**1) + ymm9_2*((3226*x)**2) + ymm9_3*((3226*x)**3)
  )
  [10753, x**4 - (-3314)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_0 + ymm11_1*((3226*x)**1) + ymm11_2*((3226*x)**2) + ymm11_3*((3226*x)**3)
  )
  [10753, x**4 - (3314)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm5_5*((10463*x)**1) + ymm5_6*((10463*x)**2) + ymm5_7*((10463*x)**3)
  )
  [10753, x**4 - (-3954)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((10463*x)**1) + ymm3_6*((10463*x)**2) + ymm3_7*((10463*x)**3)
  )
  [10753, x**4 - (3954)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((10463*x)**1) + ymm10_6*((10463*x)**2) + ymm10_7*((10463*x)**3)
  )
  [10753, x**4 - (-3697)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_4 + ymm4_5*((10463*x)**1) + ymm4_6*((10463*x)**2) + ymm4_7*((10463*x)**3)
  )
  [10753, x**4 - (3697)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((10463*x)**1) + ymm7_6*((10463*x)**2) + ymm7_7*((10463*x)**3)
  )
  [10753, x**4 - (-380)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((10463*x)**1) + ymm6_6*((10463*x)**2) + ymm6_7*((10463*x)**3)
  )
  [10753, x**4 - (380)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((10463*x)**1) + ymm9_6*((10463*x)**2) + ymm9_7*((10463*x)**3)
  )
  [10753, x**4 - (-3907)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_4 + ymm11_5*((10463*x)**1) + ymm11_6*((10463*x)**2) + ymm11_7*((10463*x)**3)
  )
  [10753, x**4 - (3907)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm5_9*((2966*x)**1) + ymm5_a*((2966*x)**2) + ymm5_b*((2966*x)**3)
  )
  [10753, x**4 - (2031)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((2966*x)**1) + ymm3_a*((2966*x)**2) + ymm3_b*((2966*x)**3)
  )
  [10753, x**4 - (-2031)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((2966*x)**1) + ymm10_a*((2966*x)**2) + ymm10_b*((2966*x)**3)
  )
  [10753, x**4 - (1385)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_8 + ymm4_9*((2966*x)**1) + ymm4_a*((2966*x)**2) + ymm4_b*((2966*x)**3)
  )
  [10753, x**4 - (-1385)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((2966*x)**1) + ymm7_a*((2966*x)**2) + ymm7_b*((2966*x)**3)
  )
  [10753, x**4 - (-3982)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((2966*x)**1) + ymm6_a*((2966*x)**2) + ymm6_b*((2966*x)**3)
  )
  [10753, x**4 - (3982)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((2966*x)**1) + ymm9_a*((2966*x)**2) + ymm9_b*((2966*x)**3)
  )
  [10753, x**4 - (3712)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_8 + ymm11_9*((2966*x)**1) + ymm11_a*((2966*x)**2) + ymm11_b*((2966*x)**3)
  )
  [10753, x**4 - (-3712)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm5_d*((1000*x)**1) + ymm5_e*((1000*x)**2) + ymm5_f*((1000*x)**3)
  )
  [10753, x**4 - (-3644)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((1000*x)**1) + ymm3_e*((1000*x)**2) + ymm3_f*((1000*x)**3)
  )
  [10753, x**4 - (3644)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((1000*x)**1) + ymm10_e*((1000*x)**2) + ymm10_f*((1000*x)**3)
  )
  [10753, x**4 - (2603)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_c + ymm4_d*((1000*x)**1) + ymm4_e*((1000*x)**2) + ymm4_f*((1000*x)**3)
  )
  [10753, x**4 - (-2603)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((1000*x)**1) + ymm7_e*((1000*x)**2) + ymm7_f*((1000*x)**3)
  )
  [10753, x**4 - (2353)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((1000*x)**1) + ymm6_e*((1000*x)**2) + ymm6_f*((1000*x)**3)
  )
  [10753, x**4 - (-2353)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((1000*x)**1) + ymm9_e*((1000*x)**2) + ymm9_f*((1000*x)**3)
  )
  [10753, x**4 - (-3171)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_c + ymm11_d*((1000*x)**1) + ymm11_e*((1000*x)**2) + ymm11_f*((1000*x)**3)
  )
  [10753, x**4 - (3171)]
] && and [
  (-(22958))@16 <=s ymm5_0, ymm5_0 <=s (22958)@16, (-(23668))@16 <=s ymm5_1, ymm5_1 <=s (23668)@16,
  (-(23655))@16 <=s ymm5_2, ymm5_2 <=s (23655)@16, (-(24233))@16 <=s ymm5_3, ymm5_3 <=s (24233)@16,
  (-(22958))@16 <=s ymm3_0, ymm3_0 <=s (22958)@16, (-(23668))@16 <=s ymm3_1, ymm3_1 <=s (23668)@16,
  (-(23655))@16 <=s ymm3_2, ymm3_2 <=s (23655)@16, (-(24233))@16 <=s ymm3_3, ymm3_3 <=s (24233)@16,
  (-(22759))@16 <=s ymm10_0, ymm10_0 <=s (22759)@16, (-(23464))@16 <=s ymm10_1, ymm10_1 <=s (23464)@16,
  (-(23456))@16 <=s ymm10_2, ymm10_2 <=s (23456)@16, (-(24034))@16 <=s ymm10_3, ymm10_3 <=s (24034)@16,
  (-(22759))@16 <=s ymm4_0, ymm4_0 <=s (22759)@16, (-(23464))@16 <=s ymm4_1, ymm4_1 <=s (23464)@16,
  (-(23456))@16 <=s ymm4_2, ymm4_2 <=s (23456)@16, (-(24034))@16 <=s ymm4_3, ymm4_3 <=s (24034)@16,
  (-(23809))@16 <=s ymm7_0, ymm7_0 <=s (23809)@16, (-(24347))@16 <=s ymm7_1, ymm7_1 <=s (24347)@16,
  (-(24338))@16 <=s ymm7_2, ymm7_2 <=s (24338)@16, (-(25100))@16 <=s ymm7_3, ymm7_3 <=s (25100)@16,
  (-(23809))@16 <=s ymm6_0, ymm6_0 <=s (23809)@16, (-(24347))@16 <=s ymm6_1, ymm6_1 <=s (24347)@16,
  (-(24338))@16 <=s ymm6_2, ymm6_2 <=s (24338)@16, (-(25100))@16 <=s ymm6_3, ymm6_3 <=s (25100)@16,
  (-(23634))@16 <=s ymm9_0, ymm9_0 <=s (23634)@16, (-(24308))@16 <=s ymm9_1, ymm9_1 <=s (24308)@16,
  (-(24325))@16 <=s ymm9_2, ymm9_2 <=s (24325)@16, (-(24983))@16 <=s ymm9_3, ymm9_3 <=s (24983)@16,
  (-(23634))@16 <=s ymm11_0, ymm11_0 <=s (23634)@16, (-(24308))@16 <=s ymm11_1, ymm11_1 <=s (24308)@16,
  (-(24325))@16 <=s ymm11_2, ymm11_2 <=s (24325)@16, (-(24983))@16 <=s ymm11_3, ymm11_3 <=s (24983)@16,
  (-(22334))@16 <=s ymm5_4, ymm5_4 <=s (22334)@16, (-(23793))@16 <=s ymm5_5, ymm5_5 <=s (23793)@16,
  (-(22744))@16 <=s ymm5_6, ymm5_6 <=s (22744)@16, (-(24389))@16 <=s ymm5_7, ymm5_7 <=s (24389)@16,
  (-(22334))@16 <=s ymm3_4, ymm3_4 <=s (22334)@16, (-(23793))@16 <=s ymm3_5, ymm3_5 <=s (23793)@16,
  (-(22744))@16 <=s ymm3_6, ymm3_6 <=s (22744)@16, (-(24389))@16 <=s ymm3_7, ymm3_7 <=s (24389)@16,
  (-(22135))@16 <=s ymm10_4, ymm10_4 <=s (22135)@16, (-(23589))@16 <=s ymm10_5, ymm10_5 <=s (23589)@16,
  (-(22537))@16 <=s ymm10_6, ymm10_6 <=s (22537)@16, (-(24185))@16 <=s ymm10_7, ymm10_7 <=s (24185)@16,
  (-(22135))@16 <=s ymm4_4, ymm4_4 <=s (22135)@16, (-(23589))@16 <=s ymm4_5, ymm4_5 <=s (23589)@16,
  (-(22537))@16 <=s ymm4_6, ymm4_6 <=s (22537)@16, (-(24185))@16 <=s ymm4_7, ymm4_7 <=s (24185)@16,
  (-(23195))@16 <=s ymm7_4, ymm7_4 <=s (23195)@16, (-(24480))@16 <=s ymm7_5, ymm7_5 <=s (24480)@16,
  (-(23401))@16 <=s ymm7_6, ymm7_6 <=s (23401)@16, (-(25070))@16 <=s ymm7_7, ymm7_7 <=s (25070)@16,
  (-(23195))@16 <=s ymm6_4, ymm6_4 <=s (23195)@16, (-(24480))@16 <=s ymm6_5, ymm6_5 <=s (24480)@16,
  (-(23401))@16 <=s ymm6_6, ymm6_6 <=s (23401)@16, (-(25070))@16 <=s ymm6_7, ymm6_7 <=s (25070)@16,
  (-(23079))@16 <=s ymm9_4, ymm9_4 <=s (23079)@16, (-(24472))@16 <=s ymm9_5, ymm9_5 <=s (24472)@16,
  (-(23339))@16 <=s ymm9_6, ymm9_6 <=s (23339)@16, (-(25033))@16 <=s ymm9_7, ymm9_7 <=s (25033)@16,
  (-(23079))@16 <=s ymm11_4, ymm11_4 <=s (23079)@16, (-(24472))@16 <=s ymm11_5, ymm11_5 <=s (24472)@16,
  (-(23339))@16 <=s ymm11_6, ymm11_6 <=s (23339)@16, (-(25033))@16 <=s ymm11_7, ymm11_7 <=s (25033)@16,
  (-(23675))@16 <=s ymm5_8, ymm5_8 <=s (23675)@16, (-(22934))@16 <=s ymm5_9, ymm5_9 <=s (22934)@16,
  (-(24492))@16 <=s ymm5_a, ymm5_a <=s (24492)@16, (-(23842))@16 <=s ymm5_b, ymm5_b <=s (23842)@16,
  (-(23675))@16 <=s ymm3_8, ymm3_8 <=s (23675)@16, (-(22934))@16 <=s ymm3_9, ymm3_9 <=s (22934)@16,
  (-(24492))@16 <=s ymm3_a, ymm3_a <=s (24492)@16, (-(23842))@16 <=s ymm3_b, ymm3_b <=s (23842)@16,
  (-(23471))@16 <=s ymm10_8, ymm10_8 <=s (23471)@16, (-(22730))@16 <=s ymm10_9, ymm10_9 <=s (22730)@16,
  (-(24288))@16 <=s ymm10_a, ymm10_a <=s (24288)@16, (-(23643))@16 <=s ymm10_b, ymm10_b <=s (23643)@16,
  (-(23471))@16 <=s ymm4_8, ymm4_8 <=s (23471)@16, (-(22730))@16 <=s ymm4_9, ymm4_9 <=s (22730)@16,
  (-(24288))@16 <=s ymm4_a, ymm4_a <=s (24288)@16, (-(23643))@16 <=s ymm4_b, ymm4_b <=s (23643)@16,
  (-(24351))@16 <=s ymm7_8, ymm7_8 <=s (24351)@16, (-(23611))@16 <=s ymm7_9, ymm7_9 <=s (23611)@16,
  (-(25162))@16 <=s ymm7_a, ymm7_a <=s (25162)@16, (-(24688))@16 <=s ymm7_b, ymm7_b <=s (24688)@16,
  (-(24351))@16 <=s ymm6_8, ymm6_8 <=s (24351)@16, (-(23611))@16 <=s ymm6_9, ymm6_9 <=s (23611)@16,
  (-(25162))@16 <=s ymm6_a, ymm6_a <=s (25162)@16, (-(24688))@16 <=s ymm6_b, ymm6_b <=s (24688)@16,
  (-(24314))@16 <=s ymm9_8, ymm9_8 <=s (24314)@16, (-(23603))@16 <=s ymm9_9, ymm9_9 <=s (23603)@16,
  (-(25124))@16 <=s ymm9_a, ymm9_a <=s (25124)@16, (-(24513))@16 <=s ymm9_b, ymm9_b <=s (24513)@16,
  (-(24314))@16 <=s ymm11_8, ymm11_8 <=s (24314)@16, (-(23603))@16 <=s ymm11_9, ymm11_9 <=s (23603)@16,
  (-(25124))@16 <=s ymm11_a, ymm11_a <=s (25124)@16, (-(24513))@16 <=s ymm11_b, ymm11_b <=s (24513)@16,
  (-(22814))@16 <=s ymm5_c, ymm5_c <=s (22814)@16, (-(25012))@16 <=s ymm5_d, ymm5_d <=s (25012)@16,
  (-(25168))@16 <=s ymm5_e, ymm5_e <=s (25168)@16, (-(23619))@16 <=s ymm5_f, ymm5_f <=s (23619)@16,
  (-(22814))@16 <=s ymm3_c, ymm3_c <=s (22814)@16, (-(25012))@16 <=s ymm3_d, ymm3_d <=s (25012)@16,
  (-(25168))@16 <=s ymm3_e, ymm3_e <=s (25168)@16, (-(23619))@16 <=s ymm3_f, ymm3_f <=s (23619)@16,
  (-(22610))@16 <=s ymm10_c, ymm10_c <=s (22610)@16, (-(24818))@16 <=s ymm10_d, ymm10_d <=s (24818)@16,
  (-(24964))@16 <=s ymm10_e, ymm10_e <=s (24964)@16, (-(23420))@16 <=s ymm10_f, ymm10_f <=s (23420)@16,
  (-(22610))@16 <=s ymm4_c, ymm4_c <=s (22610)@16, (-(24818))@16 <=s ymm4_d, ymm4_d <=s (24818)@16,
  (-(24964))@16 <=s ymm4_e, ymm4_e <=s (24964)@16, (-(23420))@16 <=s ymm4_f, ymm4_f <=s (23420)@16,
  (-(23495))@16 <=s ymm7_c, ymm7_c <=s (23495)@16, (-(25876))@16 <=s ymm7_d, ymm7_d <=s (25876)@16,
  (-(25845))@16 <=s ymm7_e, ymm7_e <=s (25845)@16, (-(24302))@16 <=s ymm7_f, ymm7_f <=s (24302)@16,
  (-(23495))@16 <=s ymm6_c, ymm6_c <=s (23495)@16, (-(25876))@16 <=s ymm6_d, ymm6_d <=s (25876)@16,
  (-(25845))@16 <=s ymm6_e, ymm6_e <=s (25845)@16, (-(24302))@16 <=s ymm6_f, ymm6_f <=s (24302)@16,
  (-(23458))@16 <=s ymm9_c, ymm9_c <=s (23458)@16, (-(25753))@16 <=s ymm9_d, ymm9_d <=s (25753)@16,
  (-(25807))@16 <=s ymm9_e, ymm9_e <=s (25807)@16, (-(24289))@16 <=s ymm9_f, ymm9_f <=s (24289)@16,
  (-(23458))@16 <=s ymm11_c, ymm11_c <=s (23458)@16, (-(25753))@16 <=s ymm11_d, ymm11_d <=s (25753)@16,
  (-(25807))@16 <=s ymm11_e, ymm11_e <=s (25807)@16, (-(24289))@16 <=s ymm11_f, ymm11_f <=s (24289)@16
];

(* ===== Start of level 6, off 0 ===== *)
(* vpmullw 0x80(%rdx),%ymm5,%ymm12                 #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x555555558179 *)
smull mulHymm5_0 mulL_0 L0x555555560780 ymm5_0;
smull mulHymm5_1 mulL_1 L0x555555560782 ymm5_1;
smull mulHymm5_2 mulL_2 L0x555555560784 ymm5_2;
smull mulHymm5_3 mulL_3 L0x555555560786 ymm5_3;
smull mulHymm5_4 mulL_4 L0x555555560788 ymm5_4;
smull mulHymm5_5 mulL_5 L0x55555556078a ymm5_5;
smull mulHymm5_6 mulL_6 L0x55555556078c ymm5_6;
smull mulHymm5_7 mulL_7 L0x55555556078e ymm5_7;
smull mulHymm5_8 mulL_8 L0x555555560790 ymm5_8;
smull mulHymm5_9 mulL_9 L0x555555560792 ymm5_9;
smull mulHymm5_a mulL_a L0x555555560794 ymm5_a;
smull mulHymm5_b mulL_b L0x555555560796 ymm5_b;
smull mulHymm5_c mulL_c L0x555555560798 ymm5_c;
smull mulHymm5_d mulL_d L0x55555556079a ymm5_d;
smull mulHymm5_e mulL_e L0x55555556079c ymm5_e;
smull mulHymm5_f mulL_f L0x55555556079e ymm5_f;
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
(* vpmulhw 0xa0(%rdx),%ymm5,%ymm5                  #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x555555558181 *)
smull mulH_0 mulLymm5_0 ymm5_0 L0x5555555607a0;
smull mulH_1 mulLymm5_1 ymm5_1 L0x5555555607a2;
smull mulH_2 mulLymm5_2 ymm5_2 L0x5555555607a4;
smull mulH_3 mulLymm5_3 ymm5_3 L0x5555555607a6;
smull mulH_4 mulLymm5_4 ymm5_4 L0x5555555607a8;
smull mulH_5 mulLymm5_5 ymm5_5 L0x5555555607aa;
smull mulH_6 mulLymm5_6 ymm5_6 L0x5555555607ac;
smull mulH_7 mulLymm5_7 ymm5_7 L0x5555555607ae;
smull mulH_8 mulLymm5_8 ymm5_8 L0x5555555607b0;
smull mulH_9 mulLymm5_9 ymm5_9 L0x5555555607b2;
smull mulH_a mulLymm5_a ymm5_a L0x5555555607b4;
smull mulH_b mulLymm5_b ymm5_b L0x5555555607b6;
smull mulH_c mulLymm5_c ymm5_c L0x5555555607b8;
smull mulH_d mulLymm5_d ymm5_d L0x5555555607ba;
smull mulH_e mulLymm5_e ymm5_e L0x5555555607bc;
smull mulH_f mulLymm5_f ymm5_f L0x5555555607be;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558189 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm5_0 = mulLymm12_0, mulLymm5_1 = mulLymm12_1,
mulLymm5_2 = mulLymm12_2, mulLymm5_3 = mulLymm12_3,
mulLymm5_4 = mulLymm12_4, mulLymm5_5 = mulLymm12_5,
mulLymm5_6 = mulLymm12_6, mulLymm5_7 = mulLymm12_7,
mulLymm5_8 = mulLymm12_8, mulLymm5_9 = mulLymm12_9,
mulLymm5_a = mulLymm12_a, mulLymm5_b = mulLymm12_b,
mulLymm5_c = mulLymm12_c, mulLymm5_d = mulLymm12_d,
mulLymm5_e = mulLymm12_e, mulLymm5_f = mulLymm12_f
];
assume and [
mulLymm5_0 = mulLymm12_0, mulLymm5_1 = mulLymm12_1,
mulLymm5_2 = mulLymm12_2, mulLymm5_3 = mulLymm12_3,
mulLymm5_4 = mulLymm12_4, mulLymm5_5 = mulLymm12_5,
mulLymm5_6 = mulLymm12_6, mulLymm5_7 = mulLymm12_7,
mulLymm5_8 = mulLymm12_8, mulLymm5_9 = mulLymm12_9,
mulLymm5_a = mulLymm12_a, mulLymm5_b = mulLymm12_b,
mulLymm5_c = mulLymm12_c, mulLymm5_d = mulLymm12_d,
mulLymm5_e = mulLymm12_e, mulLymm5_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555555818d *)
sub ymm5_0 ymm5_0 ymm12_0;
sub ymm5_1 ymm5_1 ymm12_1;
sub ymm5_2 ymm5_2 ymm12_2;
sub ymm5_3 ymm5_3 ymm12_3;
sub ymm5_4 ymm5_4 ymm12_4;
sub ymm5_5 ymm5_5 ymm12_5;
sub ymm5_6 ymm5_6 ymm12_6;
sub ymm5_7 ymm5_7 ymm12_7;
sub ymm5_8 ymm5_8 ymm12_8;
sub ymm5_9 ymm5_9 ymm12_9;
sub ymm5_a ymm5_a ymm12_a;
sub ymm5_b ymm5_b ymm12_b;
sub ymm5_c ymm5_c ymm12_c;
sub ymm5_d ymm5_d ymm12_d;
sub ymm5_e ymm5_e ymm12_e;
sub ymm5_f ymm5_f ymm12_f;
(* vpbroadcastq 0x650(%rdx),%ymm12                 #! EA = L0x555555560d50; Value = 0x402970c1d792fff7; PC = 0x555555558192 *)
mov ymm12_0 L0x555555560d50;
mov ymm12_1 L0x555555560d52;
mov ymm12_2 L0x555555560d54;
mov ymm12_3 L0x555555560d56;
mov ymm12_4 L0x555555560d50;
mov ymm12_5 L0x555555560d52;
mov ymm12_6 L0x555555560d54;
mov ymm12_7 L0x555555560d56;
mov ymm12_8 L0x555555560d50;
mov ymm12_9 L0x555555560d52;
mov ymm12_a L0x555555560d54;
mov ymm12_b L0x555555560d56;
mov ymm12_c L0x555555560d50;
mov ymm12_d L0x555555560d52;
mov ymm12_e L0x555555560d54;
mov ymm12_f L0x555555560d56;
(* vpbroadcastq 0x658(%rdx),%ymm13                 #! EA = L0x555555560d58; Value = 0x0e290ec1f392f1f7; PC = 0x55555555819b *)
mov ymm13_0 L0x555555560d58;
mov ymm13_1 L0x555555560d5a;
mov ymm13_2 L0x555555560d5c;
mov ymm13_3 L0x555555560d5e;
mov ymm13_4 L0x555555560d58;
mov ymm13_5 L0x555555560d5a;
mov ymm13_6 L0x555555560d5c;
mov ymm13_7 L0x555555560d5e;
mov ymm13_8 L0x555555560d58;
mov ymm13_9 L0x555555560d5a;
mov ymm13_a L0x555555560d5c;
mov ymm13_b L0x555555560d5e;
mov ymm13_c L0x555555560d58;
mov ymm13_d L0x555555560d5a;
mov ymm13_e L0x555555560d5c;
mov ymm13_f L0x555555560d5e;
(* vpmullw %ymm12,%ymm3,%ymm12                     #! PC = 0x5555555581a4 *)
smull mulHymm3_0 mulL_0 ymm12_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm12_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm12_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm12_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm12_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm12_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm12_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm12_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm12_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm12_9 ymm3_9;
smull mulHymm3_a mulL_a ymm12_a ymm3_a;
smull mulHymm3_b mulL_b ymm12_b ymm3_b;
smull mulHymm3_c mulL_c ymm12_c ymm3_c;
smull mulHymm3_d mulL_d ymm12_d ymm3_d;
smull mulHymm3_e mulL_e ymm12_e ymm3_e;
smull mulHymm3_f mulL_f ymm12_f ymm3_f;
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
(* vpmulhw %ymm13,%ymm3,%ymm3                      #! PC = 0x5555555581a9 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm13_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm13_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm13_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm13_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm13_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm13_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm13_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm13_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm13_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm13_9;
smull mulH_a mulLymm3_a ymm3_a ymm13_a;
smull mulH_b mulLymm3_b ymm3_b ymm13_b;
smull mulH_c mulLymm3_c ymm3_c ymm13_c;
smull mulH_d mulLymm3_d ymm3_d ymm13_d;
smull mulH_e mulLymm3_e ymm3_e ymm13_e;
smull mulH_f mulLymm3_f ymm3_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555581ae *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm12_0, mulLymm3_1 = mulLymm12_1,
mulLymm3_2 = mulLymm12_2, mulLymm3_3 = mulLymm12_3,
mulLymm3_4 = mulLymm12_4, mulLymm3_5 = mulLymm12_5,
mulLymm3_6 = mulLymm12_6, mulLymm3_7 = mulLymm12_7,
mulLymm3_8 = mulLymm12_8, mulLymm3_9 = mulLymm12_9,
mulLymm3_a = mulLymm12_a, mulLymm3_b = mulLymm12_b,
mulLymm3_c = mulLymm12_c, mulLymm3_d = mulLymm12_d,
mulLymm3_e = mulLymm12_e, mulLymm3_f = mulLymm12_f
];
assume and [
mulLymm3_0 = mulLymm12_0, mulLymm3_1 = mulLymm12_1,
mulLymm3_2 = mulLymm12_2, mulLymm3_3 = mulLymm12_3,
mulLymm3_4 = mulLymm12_4, mulLymm3_5 = mulLymm12_5,
mulLymm3_6 = mulLymm12_6, mulLymm3_7 = mulLymm12_7,
mulLymm3_8 = mulLymm12_8, mulLymm3_9 = mulLymm12_9,
mulLymm3_a = mulLymm12_a, mulLymm3_b = mulLymm12_b,
mulLymm3_c = mulLymm12_c, mulLymm3_d = mulLymm12_d,
mulLymm3_e = mulLymm12_e, mulLymm3_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x5555555581b2 *)
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
(* vpbroadcastq 0x660(%rdx),%ymm12                 #! EA = L0x555555560d60; Value = 0x3998d7921190fff7; PC = 0x5555555581b7 *)
mov ymm12_0 L0x555555560d60;
mov ymm12_1 L0x555555560d62;
mov ymm12_2 L0x555555560d64;
mov ymm12_3 L0x555555560d66;
mov ymm12_4 L0x555555560d60;
mov ymm12_5 L0x555555560d62;
mov ymm12_6 L0x555555560d64;
mov ymm12_7 L0x555555560d66;
mov ymm12_8 L0x555555560d60;
mov ymm12_9 L0x555555560d62;
mov ymm12_a L0x555555560d64;
mov ymm12_b L0x555555560d66;
mov ymm12_c L0x555555560d60;
mov ymm12_d L0x555555560d62;
mov ymm12_e L0x555555560d64;
mov ymm12_f L0x555555560d66;
(* vpbroadcastq 0x668(%rdx),%ymm13                 #! EA = L0x555555560d68; Value = 0x0998f392f190f1f7; PC = 0x5555555581c0 *)
mov ymm13_0 L0x555555560d68;
mov ymm13_1 L0x555555560d6a;
mov ymm13_2 L0x555555560d6c;
mov ymm13_3 L0x555555560d6e;
mov ymm13_4 L0x555555560d68;
mov ymm13_5 L0x555555560d6a;
mov ymm13_6 L0x555555560d6c;
mov ymm13_7 L0x555555560d6e;
mov ymm13_8 L0x555555560d68;
mov ymm13_9 L0x555555560d6a;
mov ymm13_a L0x555555560d6c;
mov ymm13_b L0x555555560d6e;
mov ymm13_c L0x555555560d68;
mov ymm13_d L0x555555560d6a;
mov ymm13_e L0x555555560d6c;
mov ymm13_f L0x555555560d6e;
(* vpmullw %ymm12,%ymm10,%ymm12                    #! PC = 0x5555555581c9 *)
smull mulHymm10_0 mulL_0 ymm12_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm12_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm12_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm12_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm12_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm12_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm12_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm12_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm12_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm12_9 ymm10_9;
smull mulHymm10_a mulL_a ymm12_a ymm10_a;
smull mulHymm10_b mulL_b ymm12_b ymm10_b;
smull mulHymm10_c mulL_c ymm12_c ymm10_c;
smull mulHymm10_d mulL_d ymm12_d ymm10_d;
smull mulHymm10_e mulL_e ymm12_e ymm10_e;
smull mulHymm10_f mulL_f ymm12_f ymm10_f;
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
(* vpmulhw %ymm13,%ymm10,%ymm10                    #! PC = 0x5555555581ce *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm13_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm13_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm13_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm13_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm13_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm13_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm13_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm13_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm13_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm13_9;
smull mulH_a mulLymm10_a ymm10_a ymm13_a;
smull mulH_b mulLymm10_b ymm10_b ymm13_b;
smull mulH_c mulLymm10_c ymm10_c ymm13_c;
smull mulH_d mulLymm10_d ymm10_d ymm13_d;
smull mulH_e mulLymm10_e ymm10_e ymm13_e;
smull mulH_f mulLymm10_f ymm10_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555581d3 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm10_0 = mulLymm12_0, mulLymm10_1 = mulLymm12_1,
mulLymm10_2 = mulLymm12_2, mulLymm10_3 = mulLymm12_3,
mulLymm10_4 = mulLymm12_4, mulLymm10_5 = mulLymm12_5,
mulLymm10_6 = mulLymm12_6, mulLymm10_7 = mulLymm12_7,
mulLymm10_8 = mulLymm12_8, mulLymm10_9 = mulLymm12_9,
mulLymm10_a = mulLymm12_a, mulLymm10_b = mulLymm12_b,
mulLymm10_c = mulLymm12_c, mulLymm10_d = mulLymm12_d,
mulLymm10_e = mulLymm12_e, mulLymm10_f = mulLymm12_f
];
assume and [
mulLymm10_0 = mulLymm12_0, mulLymm10_1 = mulLymm12_1,
mulLymm10_2 = mulLymm12_2, mulLymm10_3 = mulLymm12_3,
mulLymm10_4 = mulLymm12_4, mulLymm10_5 = mulLymm12_5,
mulLymm10_6 = mulLymm12_6, mulLymm10_7 = mulLymm12_7,
mulLymm10_8 = mulLymm12_8, mulLymm10_9 = mulLymm12_9,
mulLymm10_a = mulLymm12_a, mulLymm10_b = mulLymm12_b,
mulLymm10_c = mulLymm12_c, mulLymm10_d = mulLymm12_d,
mulLymm10_e = mulLymm12_e, mulLymm10_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x5555555581d7 *)
sub ymm10_0 ymm10_0 ymm12_0;
sub ymm10_1 ymm10_1 ymm12_1;
sub ymm10_2 ymm10_2 ymm12_2;
sub ymm10_3 ymm10_3 ymm12_3;
sub ymm10_4 ymm10_4 ymm12_4;
sub ymm10_5 ymm10_5 ymm12_5;
sub ymm10_6 ymm10_6 ymm12_6;
sub ymm10_7 ymm10_7 ymm12_7;
sub ymm10_8 ymm10_8 ymm12_8;
sub ymm10_9 ymm10_9 ymm12_9;
sub ymm10_a ymm10_a ymm12_a;
sub ymm10_b ymm10_b ymm12_b;
sub ymm10_c ymm10_c ymm12_c;
sub ymm10_d ymm10_d ymm12_d;
sub ymm10_e ymm10_e ymm12_e;
sub ymm10_f ymm10_f ymm12_f;
(* vpbroadcastq 0x670(%rdx),%ymm12                 #! EA = L0x555555560d70; Value = 0x1c4cbfd7136efff7; PC = 0x5555555581dc *)
mov ymm12_0 L0x555555560d70;
mov ymm12_1 L0x555555560d72;
mov ymm12_2 L0x555555560d74;
mov ymm12_3 L0x555555560d76;
mov ymm12_4 L0x555555560d70;
mov ymm12_5 L0x555555560d72;
mov ymm12_6 L0x555555560d74;
mov ymm12_7 L0x555555560d76;
mov ymm12_8 L0x555555560d70;
mov ymm12_9 L0x555555560d72;
mov ymm12_a L0x555555560d74;
mov ymm12_b L0x555555560d76;
mov ymm12_c L0x555555560d70;
mov ymm12_d L0x555555560d72;
mov ymm12_e L0x555555560d74;
mov ymm12_f L0x555555560d76;
(* vpbroadcastq 0x678(%rdx),%ymm13                 #! EA = L0x555555560d78; Value = 0x044cf1d7f76ef1f7; PC = 0x5555555581e5 *)
mov ymm13_0 L0x555555560d78;
mov ymm13_1 L0x555555560d7a;
mov ymm13_2 L0x555555560d7c;
mov ymm13_3 L0x555555560d7e;
mov ymm13_4 L0x555555560d78;
mov ymm13_5 L0x555555560d7a;
mov ymm13_6 L0x555555560d7c;
mov ymm13_7 L0x555555560d7e;
mov ymm13_8 L0x555555560d78;
mov ymm13_9 L0x555555560d7a;
mov ymm13_a L0x555555560d7c;
mov ymm13_b L0x555555560d7e;
mov ymm13_c L0x555555560d78;
mov ymm13_d L0x555555560d7a;
mov ymm13_e L0x555555560d7c;
mov ymm13_f L0x555555560d7e;
(* vpmullw %ymm12,%ymm4,%ymm12                     #! PC = 0x5555555581ee *)
smull mulHymm4_0 mulL_0 ymm12_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm12_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm12_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm12_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm12_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm12_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm12_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm12_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm12_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm12_9 ymm4_9;
smull mulHymm4_a mulL_a ymm12_a ymm4_a;
smull mulHymm4_b mulL_b ymm12_b ymm4_b;
smull mulHymm4_c mulL_c ymm12_c ymm4_c;
smull mulHymm4_d mulL_d ymm12_d ymm4_d;
smull mulHymm4_e mulL_e ymm12_e ymm4_e;
smull mulHymm4_f mulL_f ymm12_f ymm4_f;
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
(* vpmulhw %ymm13,%ymm4,%ymm4                      #! PC = 0x5555555581f3 *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm13_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm13_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm13_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm13_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm13_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm13_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm13_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm13_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm13_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm13_9;
smull mulH_a mulLymm4_a ymm4_a ymm13_a;
smull mulH_b mulLymm4_b ymm4_b ymm13_b;
smull mulH_c mulLymm4_c ymm4_c ymm13_c;
smull mulH_d mulLymm4_d ymm4_d ymm13_d;
smull mulH_e mulLymm4_e ymm4_e ymm13_e;
smull mulH_f mulLymm4_f ymm4_f ymm13_f;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555581f8 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f
];
assume and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x5555555581fc *)
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
(* vpbroadcastq 0x680(%rdx),%ymm12                 #! EA = L0x555555560d80; Value = 0xb8f11190d279fff7; PC = 0x555555558201 *)
mov ymm12_0 L0x555555560d80;
mov ymm12_1 L0x555555560d82;
mov ymm12_2 L0x555555560d84;
mov ymm12_3 L0x555555560d86;
mov ymm12_4 L0x555555560d80;
mov ymm12_5 L0x555555560d82;
mov ymm12_6 L0x555555560d84;
mov ymm12_7 L0x555555560d86;
mov ymm12_8 L0x555555560d80;
mov ymm12_9 L0x555555560d82;
mov ymm12_a L0x555555560d84;
mov ymm12_b L0x555555560d86;
mov ymm12_c L0x555555560d80;
mov ymm12_d L0x555555560d82;
mov ymm12_e L0x555555560d84;
mov ymm12_f L0x555555560d86;
(* vpbroadcastq 0x688(%rdx),%ymm13                 #! EA = L0x555555560d88; Value = 0xf6f1f1900079f1f7; PC = 0x55555555820a *)
mov ymm13_0 L0x555555560d88;
mov ymm13_1 L0x555555560d8a;
mov ymm13_2 L0x555555560d8c;
mov ymm13_3 L0x555555560d8e;
mov ymm13_4 L0x555555560d88;
mov ymm13_5 L0x555555560d8a;
mov ymm13_6 L0x555555560d8c;
mov ymm13_7 L0x555555560d8e;
mov ymm13_8 L0x555555560d88;
mov ymm13_9 L0x555555560d8a;
mov ymm13_a L0x555555560d8c;
mov ymm13_b L0x555555560d8e;
mov ymm13_c L0x555555560d88;
mov ymm13_d L0x555555560d8a;
mov ymm13_e L0x555555560d8c;
mov ymm13_f L0x555555560d8e;
(* vpmullw %ymm12,%ymm7,%ymm12                     #! PC = 0x555555558213 *)
smull mulHymm7_0 mulL_0 ymm12_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm12_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm12_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm12_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm12_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm12_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm12_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm12_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm12_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm12_9 ymm7_9;
smull mulHymm7_a mulL_a ymm12_a ymm7_a;
smull mulHymm7_b mulL_b ymm12_b ymm7_b;
smull mulHymm7_c mulL_c ymm12_c ymm7_c;
smull mulHymm7_d mulL_d ymm12_d ymm7_d;
smull mulHymm7_e mulL_e ymm12_e ymm7_e;
smull mulHymm7_f mulL_f ymm12_f ymm7_f;
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
(* vpmulhw %ymm13,%ymm7,%ymm7                      #! PC = 0x555555558218 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm13_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm13_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm13_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm13_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm13_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm13_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm13_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm13_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm13_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm13_9;
smull mulH_a mulLymm7_a ymm7_a ymm13_a;
smull mulH_b mulLymm7_b ymm7_b ymm13_b;
smull mulH_c mulLymm7_c ymm7_c ymm13_c;
smull mulH_d mulLymm7_d ymm7_d ymm13_d;
smull mulH_e mulLymm7_e ymm7_e ymm13_e;
smull mulH_f mulLymm7_f ymm7_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555821d *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f
];
assume and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm7,%ymm7                       #! PC = 0x555555558221 *)
sub ymm7_0 ymm7_0 ymm12_0;
sub ymm7_1 ymm7_1 ymm12_1;
sub ymm7_2 ymm7_2 ymm12_2;
sub ymm7_3 ymm7_3 ymm12_3;
sub ymm7_4 ymm7_4 ymm12_4;
sub ymm7_5 ymm7_5 ymm12_5;
sub ymm7_6 ymm7_6 ymm12_6;
sub ymm7_7 ymm7_7 ymm12_7;
sub ymm7_8 ymm7_8 ymm12_8;
sub ymm7_9 ymm7_9 ymm12_9;
sub ymm7_a ymm7_a ymm12_a;
sub ymm7_b ymm7_b ymm12_b;
sub ymm7_c ymm7_c ymm12_c;
sub ymm7_d ymm7_d ymm12_d;
sub ymm7_e ymm7_e ymm12_e;
sub ymm7_f ymm7_f ymm12_f;
(* vpbroadcastq 0x690(%rdx),%ymm12                 #! EA = L0x555555560d90; Value = 0xb0a51c4ca7bffff7; PC = 0x555555558226 *)
mov ymm12_0 L0x555555560d90;
mov ymm12_1 L0x555555560d92;
mov ymm12_2 L0x555555560d94;
mov ymm12_3 L0x555555560d96;
mov ymm12_4 L0x555555560d90;
mov ymm12_5 L0x555555560d92;
mov ymm12_6 L0x555555560d94;
mov ymm12_7 L0x555555560d96;
mov ymm12_8 L0x555555560d90;
mov ymm12_9 L0x555555560d92;
mov ymm12_a L0x555555560d94;
mov ymm12_b L0x555555560d96;
mov ymm12_c L0x555555560d90;
mov ymm12_d L0x555555560d92;
mov ymm12_e L0x555555560d94;
mov ymm12_f L0x555555560d96;
(* vpbroadcastq 0x698(%rdx),%ymm13                 #! EA = L0x555555560d98; Value = 0x06a5044c09bff1f7; PC = 0x55555555822f *)
mov ymm13_0 L0x555555560d98;
mov ymm13_1 L0x555555560d9a;
mov ymm13_2 L0x555555560d9c;
mov ymm13_3 L0x555555560d9e;
mov ymm13_4 L0x555555560d98;
mov ymm13_5 L0x555555560d9a;
mov ymm13_6 L0x555555560d9c;
mov ymm13_7 L0x555555560d9e;
mov ymm13_8 L0x555555560d98;
mov ymm13_9 L0x555555560d9a;
mov ymm13_a L0x555555560d9c;
mov ymm13_b L0x555555560d9e;
mov ymm13_c L0x555555560d98;
mov ymm13_d L0x555555560d9a;
mov ymm13_e L0x555555560d9c;
mov ymm13_f L0x555555560d9e;
(* vpmullw %ymm12,%ymm6,%ymm12                     #! PC = 0x555555558238 *)
smull mulHymm6_0 mulL_0 ymm12_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm12_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm12_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm12_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm12_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm12_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm12_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm12_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm12_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm12_9 ymm6_9;
smull mulHymm6_a mulL_a ymm12_a ymm6_a;
smull mulHymm6_b mulL_b ymm12_b ymm6_b;
smull mulHymm6_c mulL_c ymm12_c ymm6_c;
smull mulHymm6_d mulL_d ymm12_d ymm6_d;
smull mulHymm6_e mulL_e ymm12_e ymm6_e;
smull mulHymm6_f mulL_f ymm12_f ymm6_f;
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
(* vpmulhw %ymm13,%ymm6,%ymm6                      #! PC = 0x55555555823d *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm13_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm13_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm13_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm13_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm13_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm13_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm13_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm13_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm13_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm13_9;
smull mulH_a mulLymm6_a ymm6_a ymm13_a;
smull mulH_b mulLymm6_b ymm6_b ymm13_b;
smull mulH_c mulLymm6_c ymm6_c ymm13_c;
smull mulH_d mulLymm6_d ymm6_d ymm13_d;
smull mulH_e mulLymm6_e ymm6_e ymm13_e;
smull mulH_f mulLymm6_f ymm6_f ymm13_f;
mov ymm6_0 mulH_0;
mov ymm6_1 mulH_1;
mov ymm6_2 mulH_2;
mov ymm6_3 mulH_3;
mov ymm6_4 mulH_4;
mov ymm6_5 mulH_5;
mov ymm6_6 mulH_6;
mov ymm6_7 mulH_7;
mov ymm6_8 mulH_8;
mov ymm6_9 mulH_9;
mov ymm6_a mulH_a;
mov ymm6_b mulH_b;
mov ymm6_c mulH_c;
mov ymm6_d mulH_d;
mov ymm6_e mulH_e;
mov ymm6_f mulH_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558242 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f
];
assume and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x555555558246 *)
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
(* vpbroadcastq 0x6a0(%rdx),%ymm12                 #! EA = L0x555555560da0; Value = 0xa3363998b8f1fff7; PC = 0x55555555824b *)
mov ymm12_0 L0x555555560da0;
mov ymm12_1 L0x555555560da2;
mov ymm12_2 L0x555555560da4;
mov ymm12_3 L0x555555560da6;
mov ymm12_4 L0x555555560da0;
mov ymm12_5 L0x555555560da2;
mov ymm12_6 L0x555555560da4;
mov ymm12_7 L0x555555560da6;
mov ymm12_8 L0x555555560da0;
mov ymm12_9 L0x555555560da2;
mov ymm12_a L0x555555560da4;
mov ymm12_b L0x555555560da6;
mov ymm12_c L0x555555560da0;
mov ymm12_d L0x555555560da2;
mov ymm12_e L0x555555560da4;
mov ymm12_f L0x555555560da6;
(* vpbroadcastq 0x6a8(%rdx),%ymm13                 #! EA = L0x555555560da8; Value = 0xf7360998f6f1f1f7; PC = 0x555555558254 *)
mov ymm13_0 L0x555555560da8;
mov ymm13_1 L0x555555560daa;
mov ymm13_2 L0x555555560dac;
mov ymm13_3 L0x555555560dae;
mov ymm13_4 L0x555555560da8;
mov ymm13_5 L0x555555560daa;
mov ymm13_6 L0x555555560dac;
mov ymm13_7 L0x555555560dae;
mov ymm13_8 L0x555555560da8;
mov ymm13_9 L0x555555560daa;
mov ymm13_a L0x555555560dac;
mov ymm13_b L0x555555560dae;
mov ymm13_c L0x555555560da8;
mov ymm13_d L0x555555560daa;
mov ymm13_e L0x555555560dac;
mov ymm13_f L0x555555560dae;
(* vpmullw %ymm12,%ymm9,%ymm12                     #! PC = 0x55555555825d *)
smull mulHymm9_0 mulL_0 ymm12_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm12_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm12_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm12_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm12_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm12_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm12_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm12_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm12_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm12_9 ymm9_9;
smull mulHymm9_a mulL_a ymm12_a ymm9_a;
smull mulHymm9_b mulL_b ymm12_b ymm9_b;
smull mulHymm9_c mulL_c ymm12_c ymm9_c;
smull mulHymm9_d mulL_d ymm12_d ymm9_d;
smull mulHymm9_e mulL_e ymm12_e ymm9_e;
smull mulHymm9_f mulL_f ymm12_f ymm9_f;
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
(* vpmulhw %ymm13,%ymm9,%ymm9                      #! PC = 0x555555558262 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm13_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm13_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm13_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm13_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm13_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm13_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm13_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm13_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm13_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm13_9;
smull mulH_a mulLymm9_a ymm9_a ymm13_a;
smull mulH_b mulLymm9_b ymm9_b ymm13_b;
smull mulH_c mulLymm9_c ymm9_c ymm13_c;
smull mulH_d mulLymm9_d ymm9_d ymm13_d;
smull mulH_e mulLymm9_e ymm9_e ymm13_e;
smull mulH_f mulLymm9_f ymm9_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558267 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f
];
assume and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555555826b *)
sub ymm9_0 ymm9_0 ymm12_0;
sub ymm9_1 ymm9_1 ymm12_1;
sub ymm9_2 ymm9_2 ymm12_2;
sub ymm9_3 ymm9_3 ymm12_3;
sub ymm9_4 ymm9_4 ymm12_4;
sub ymm9_5 ymm9_5 ymm12_5;
sub ymm9_6 ymm9_6 ymm12_6;
sub ymm9_7 ymm9_7 ymm12_7;
sub ymm9_8 ymm9_8 ymm12_8;
sub ymm9_9 ymm9_9 ymm12_9;
sub ymm9_a ymm9_a ymm12_a;
sub ymm9_b ymm9_b ymm12_b;
sub ymm9_c ymm9_c ymm12_c;
sub ymm9_d ymm9_d ymm12_d;
sub ymm9_e ymm9_e ymm12_e;
sub ymm9_f ymm9_f ymm12_f;
(* vpbroadcastq 0x6b0(%rdx),%ymm12                 #! EA = L0x555555560db0; Value = 0xa7bf136eae7afff7; PC = 0x555555558270 *)
mov ymm12_0 L0x555555560db0;
mov ymm12_1 L0x555555560db2;
mov ymm12_2 L0x555555560db4;
mov ymm12_3 L0x555555560db6;
mov ymm12_4 L0x555555560db0;
mov ymm12_5 L0x555555560db2;
mov ymm12_6 L0x555555560db4;
mov ymm12_7 L0x555555560db6;
mov ymm12_8 L0x555555560db0;
mov ymm12_9 L0x555555560db2;
mov ymm12_a L0x555555560db4;
mov ymm12_b L0x555555560db6;
mov ymm12_c L0x555555560db0;
mov ymm12_d L0x555555560db2;
mov ymm12_e L0x555555560db4;
mov ymm12_f L0x555555560db6;
(* vpbroadcastq 0x6b8(%rdx),%ymm13                 #! EA = L0x555555560db8; Value = 0x09bff76efa7af1f7; PC = 0x555555558279 *)
mov ymm13_0 L0x555555560db8;
mov ymm13_1 L0x555555560dba;
mov ymm13_2 L0x555555560dbc;
mov ymm13_3 L0x555555560dbe;
mov ymm13_4 L0x555555560db8;
mov ymm13_5 L0x555555560dba;
mov ymm13_6 L0x555555560dbc;
mov ymm13_7 L0x555555560dbe;
mov ymm13_8 L0x555555560db8;
mov ymm13_9 L0x555555560dba;
mov ymm13_a L0x555555560dbc;
mov ymm13_b L0x555555560dbe;
mov ymm13_c L0x555555560db8;
mov ymm13_d L0x555555560dba;
mov ymm13_e L0x555555560dbc;
mov ymm13_f L0x555555560dbe;
(* vpmullw %ymm12,%ymm11,%ymm12                    #! PC = 0x555555558282 *)
smull mulHymm11_0 mulL_0 ymm12_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm12_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm12_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm12_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm12_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm12_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm12_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm12_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm12_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm12_9 ymm11_9;
smull mulHymm11_a mulL_a ymm12_a ymm11_a;
smull mulHymm11_b mulL_b ymm12_b ymm11_b;
smull mulHymm11_c mulL_c ymm12_c ymm11_c;
smull mulHymm11_d mulL_d ymm12_d ymm11_d;
smull mulHymm11_e mulL_e ymm12_e ymm11_e;
smull mulHymm11_f mulL_f ymm12_f ymm11_f;
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
(* vpmulhw %ymm13,%ymm11,%ymm11                    #! PC = 0x555555558287 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm13_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm13_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm13_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm13_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm13_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm13_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm13_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm13_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm13_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm13_9;
smull mulH_a mulLymm11_a ymm11_a ymm13_a;
smull mulH_b mulLymm11_b ymm11_b ymm13_b;
smull mulH_c mulLymm11_c ymm11_c ymm13_c;
smull mulH_d mulLymm11_d ymm11_d ymm13_d;
smull mulH_e mulLymm11_e ymm11_e ymm13_e;
smull mulH_f mulLymm11_f ymm11_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555828c *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm11_0 = mulLymm12_0, mulLymm11_1 = mulLymm12_1,
mulLymm11_2 = mulLymm12_2, mulLymm11_3 = mulLymm12_3,
mulLymm11_4 = mulLymm12_4, mulLymm11_5 = mulLymm12_5,
mulLymm11_6 = mulLymm12_6, mulLymm11_7 = mulLymm12_7,
mulLymm11_8 = mulLymm12_8, mulLymm11_9 = mulLymm12_9,
mulLymm11_a = mulLymm12_a, mulLymm11_b = mulLymm12_b,
mulLymm11_c = mulLymm12_c, mulLymm11_d = mulLymm12_d,
mulLymm11_e = mulLymm12_e, mulLymm11_f = mulLymm12_f
];
assume and [
mulLymm11_0 = mulLymm12_0, mulLymm11_1 = mulLymm12_1,
mulLymm11_2 = mulLymm12_2, mulLymm11_3 = mulLymm12_3,
mulLymm11_4 = mulLymm12_4, mulLymm11_5 = mulLymm12_5,
mulLymm11_6 = mulLymm12_6, mulLymm11_7 = mulLymm12_7,
mulLymm11_8 = mulLymm12_8, mulLymm11_9 = mulLymm12_9,
mulLymm11_a = mulLymm12_a, mulLymm11_b = mulLymm12_b,
mulLymm11_c = mulLymm12_c, mulLymm11_d = mulLymm12_d,
mulLymm11_e = mulLymm12_e, mulLymm11_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm11,%ymm11                     #! PC = 0x555555558290 *)
sub ymm11_0 ymm11_0 ymm12_0;
sub ymm11_1 ymm11_1 ymm12_1;
sub ymm11_2 ymm11_2 ymm12_2;
sub ymm11_3 ymm11_3 ymm12_3;
sub ymm11_4 ymm11_4 ymm12_4;
sub ymm11_5 ymm11_5 ymm12_5;
sub ymm11_6 ymm11_6 ymm12_6;
sub ymm11_7 ymm11_7 ymm12_7;
sub ymm11_8 ymm11_8 ymm12_8;
sub ymm11_9 ymm11_9 ymm12_9;
sub ymm11_a ymm11_a ymm12_a;
sub ymm11_b ymm11_b ymm12_b;
sub ymm11_c ymm11_c ymm12_c;
sub ymm11_d ymm11_d ymm12_d;
sub ymm11_e ymm11_e ymm12_e;
sub ymm11_f ymm11_f ymm12_f;
(* vmovsldup %ymm7,%ymm8                           #! PC = 0x555555558295 *)
mov ymm8_0 ymm7_0;
mov ymm8_1 ymm7_1;
mov ymm8_2 ymm7_0;
mov ymm8_3 ymm7_1;
mov ymm8_4 ymm7_4;
mov ymm8_5 ymm7_5;
mov ymm8_6 ymm7_4;
mov ymm8_7 ymm7_5;
mov ymm8_8 ymm7_8;
mov ymm8_9 ymm7_9;
mov ymm8_a ymm7_8;
mov ymm8_b ymm7_9;
mov ymm8_c ymm7_c;
mov ymm8_d ymm7_d;
mov ymm8_e ymm7_c;
mov ymm8_f ymm7_d;
(* vpblendd $0xaa,%ymm8,%ymm5,%ymm8                #! PC = 0x555555558299 *)
mov bldd_0 ymm5_0;
mov bldd_1 ymm5_1;
mov bldd_2 ymm8_2;
mov bldd_3 ymm8_3;
mov bldd_4 ymm5_4;
mov bldd_5 ymm5_5;
mov bldd_6 ymm8_6;
mov bldd_7 ymm8_7;
mov bldd_8 ymm5_8;
mov bldd_9 ymm5_9;
mov bldd_a ymm8_a;
mov bldd_b ymm8_b;
mov bldd_c ymm5_c;
mov bldd_d ymm5_d;
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
(* vpsrlq $0x20,%ymm5,%ymm5                        #! PC = 0x55555555829f *)
mov srlq_0 ymm5_2;
mov srlq_1 ymm5_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm5_6;
mov srlq_5 ymm5_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm5_a;
mov srlq_9 ymm5_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm5_e;
mov srlq_d ymm5_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm5_0 srlq_0;
mov ymm5_1 srlq_1;
mov ymm5_2 srlq_2;
mov ymm5_3 srlq_3;
mov ymm5_4 srlq_4;
mov ymm5_5 srlq_5;
mov ymm5_6 srlq_6;
mov ymm5_7 srlq_7;
mov ymm5_8 srlq_8;
mov ymm5_9 srlq_9;
mov ymm5_a srlq_a;
mov ymm5_b srlq_b;
mov ymm5_c srlq_c;
mov ymm5_d srlq_d;
mov ymm5_e srlq_e;
mov ymm5_f srlq_f;
(* vpblendd $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x5555555582a4 *)
mov bldd_0 ymm5_0;
mov bldd_1 ymm5_1;
mov bldd_2 ymm7_2;
mov bldd_3 ymm7_3;
mov bldd_4 ymm5_4;
mov bldd_5 ymm5_5;
mov bldd_6 ymm7_6;
mov bldd_7 ymm7_7;
mov bldd_8 ymm5_8;
mov bldd_9 ymm5_9;
mov bldd_a ymm7_a;
mov bldd_b ymm7_b;
mov bldd_c ymm5_c;
mov bldd_d ymm5_d;
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
(* vmovsldup %ymm6,%ymm5                           #! PC = 0x5555555582aa *)
mov ymm5_0 ymm6_0;
mov ymm5_1 ymm6_1;
mov ymm5_2 ymm6_0;
mov ymm5_3 ymm6_1;
mov ymm5_4 ymm6_4;
mov ymm5_5 ymm6_5;
mov ymm5_6 ymm6_4;
mov ymm5_7 ymm6_5;
mov ymm5_8 ymm6_8;
mov ymm5_9 ymm6_9;
mov ymm5_a ymm6_8;
mov ymm5_b ymm6_9;
mov ymm5_c ymm6_c;
mov ymm5_d ymm6_d;
mov ymm5_e ymm6_c;
mov ymm5_f ymm6_d;
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x5555555582ae *)
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
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x5555555582b4 *)
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
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x5555555582b9 *)
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
(* vmovsldup %ymm9,%ymm3                           #! PC = 0x5555555582bf *)
mov ymm3_0 ymm9_0;
mov ymm3_1 ymm9_1;
mov ymm3_2 ymm9_0;
mov ymm3_3 ymm9_1;
mov ymm3_4 ymm9_4;
mov ymm3_5 ymm9_5;
mov ymm3_6 ymm9_4;
mov ymm3_7 ymm9_5;
mov ymm3_8 ymm9_8;
mov ymm3_9 ymm9_9;
mov ymm3_a ymm9_8;
mov ymm3_b ymm9_9;
mov ymm3_c ymm9_c;
mov ymm3_d ymm9_d;
mov ymm3_e ymm9_c;
mov ymm3_f ymm9_d;
(* vpblendd $0xaa,%ymm3,%ymm10,%ymm3               #! PC = 0x5555555582c4 *)
mov bldd_0 ymm10_0;
mov bldd_1 ymm10_1;
mov bldd_2 ymm3_2;
mov bldd_3 ymm3_3;
mov bldd_4 ymm10_4;
mov bldd_5 ymm10_5;
mov bldd_6 ymm3_6;
mov bldd_7 ymm3_7;
mov bldd_8 ymm10_8;
mov bldd_9 ymm10_9;
mov bldd_a ymm3_a;
mov bldd_b ymm3_b;
mov bldd_c ymm10_c;
mov bldd_d ymm10_d;
mov bldd_e ymm3_e;
mov bldd_f ymm3_f;
mov ymm3_0 bldd_0;
mov ymm3_1 bldd_1;
mov ymm3_2 bldd_2;
mov ymm3_3 bldd_3;
mov ymm3_4 bldd_4;
mov ymm3_5 bldd_5;
mov ymm3_6 bldd_6;
mov ymm3_7 bldd_7;
mov ymm3_8 bldd_8;
mov ymm3_9 bldd_9;
mov ymm3_a bldd_a;
mov ymm3_b bldd_b;
mov ymm3_c bldd_c;
mov ymm3_d bldd_d;
mov ymm3_e bldd_e;
mov ymm3_f bldd_f;
(* vpsrlq $0x20,%ymm10,%ymm10                      #! PC = 0x5555555582ca *)
mov srlq_0 ymm10_2;
mov srlq_1 ymm10_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm10_6;
mov srlq_5 ymm10_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm10_a;
mov srlq_9 ymm10_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm10_e;
mov srlq_d ymm10_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm10_0 srlq_0;
mov ymm10_1 srlq_1;
mov ymm10_2 srlq_2;
mov ymm10_3 srlq_3;
mov ymm10_4 srlq_4;
mov ymm10_5 srlq_5;
mov ymm10_6 srlq_6;
mov ymm10_7 srlq_7;
mov ymm10_8 srlq_8;
mov ymm10_9 srlq_9;
mov ymm10_a srlq_a;
mov ymm10_b srlq_b;
mov ymm10_c srlq_c;
mov ymm10_d srlq_d;
mov ymm10_e srlq_e;
mov ymm10_f srlq_f;
(* vpblendd $0xaa,%ymm9,%ymm10,%ymm9               #! PC = 0x5555555582d0 *)
mov bldd_0 ymm10_0;
mov bldd_1 ymm10_1;
mov bldd_2 ymm9_2;
mov bldd_3 ymm9_3;
mov bldd_4 ymm10_4;
mov bldd_5 ymm10_5;
mov bldd_6 ymm9_6;
mov bldd_7 ymm9_7;
mov bldd_8 ymm10_8;
mov bldd_9 ymm10_9;
mov bldd_a ymm9_a;
mov bldd_b ymm9_b;
mov bldd_c ymm10_c;
mov bldd_d ymm10_d;
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
(* vmovsldup %ymm11,%ymm10                         #! PC = 0x5555555582d6 *)
mov ymm10_0 ymm11_0;
mov ymm10_1 ymm11_1;
mov ymm10_2 ymm11_0;
mov ymm10_3 ymm11_1;
mov ymm10_4 ymm11_4;
mov ymm10_5 ymm11_5;
mov ymm10_6 ymm11_4;
mov ymm10_7 ymm11_5;
mov ymm10_8 ymm11_8;
mov ymm10_9 ymm11_9;
mov ymm10_a ymm11_8;
mov ymm10_b ymm11_9;
mov ymm10_c ymm11_c;
mov ymm10_d ymm11_d;
mov ymm10_e ymm11_c;
mov ymm10_f ymm11_d;
(* vpblendd $0xaa,%ymm10,%ymm4,%ymm10              #! PC = 0x5555555582db *)
mov bldd_0 ymm4_0;
mov bldd_1 ymm4_1;
mov bldd_2 ymm10_2;
mov bldd_3 ymm10_3;
mov bldd_4 ymm4_4;
mov bldd_5 ymm4_5;
mov bldd_6 ymm10_6;
mov bldd_7 ymm10_7;
mov bldd_8 ymm4_8;
mov bldd_9 ymm4_9;
mov bldd_a ymm10_a;
mov bldd_b ymm10_b;
mov bldd_c ymm4_c;
mov bldd_d ymm4_d;
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
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x5555555582e1 *)
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
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x5555555582e6 *)
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
(* vpslld $0x10,%ymm3,%ymm4                        #! PC = 0x5555555582ec *)
mov slld_0 0@sint16;
mov slld_1 ymm3_0;
mov slld_2 0@sint16;
mov slld_3 ymm3_2;
mov slld_4 0@sint16;
mov slld_5 ymm3_4;
mov slld_6 0@sint16;
mov slld_7 ymm3_6;
mov slld_8 0@sint16;
mov slld_9 ymm3_8;
mov slld_a 0@sint16;
mov slld_b ymm3_a;
mov slld_c 0@sint16;
mov slld_d ymm3_c;
mov slld_e 0@sint16;
mov slld_f ymm3_e;
mov ymm4_0 slld_0;
mov ymm4_1 slld_1;
mov ymm4_2 slld_2;
mov ymm4_3 slld_3;
mov ymm4_4 slld_4;
mov ymm4_5 slld_5;
mov ymm4_6 slld_6;
mov ymm4_7 slld_7;
mov ymm4_8 slld_8;
mov ymm4_9 slld_9;
mov ymm4_a slld_a;
mov ymm4_b slld_b;
mov ymm4_c slld_c;
mov ymm4_d slld_d;
mov ymm4_e slld_e;
mov ymm4_f slld_f;
(* vpblendw $0xaa,%ymm4,%ymm8,%ymm4                #! PC = 0x5555555582f1 *)
mov bldw_0 ymm8_0;
mov bldw_1 ymm4_1;
mov bldw_2 ymm8_2;
mov bldw_3 ymm4_3;
mov bldw_4 ymm8_4;
mov bldw_5 ymm4_5;
mov bldw_6 ymm8_6;
mov bldw_7 ymm4_7;
mov bldw_8 ymm8_8;
mov bldw_9 ymm4_9;
mov bldw_a ymm8_a;
mov bldw_b ymm4_b;
mov bldw_c ymm8_c;
mov bldw_d ymm4_d;
mov bldw_e ymm8_e;
mov bldw_f ymm4_f;
mov ymm4_0 bldw_0;
mov ymm4_1 bldw_1;
mov ymm4_2 bldw_2;
mov ymm4_3 bldw_3;
mov ymm4_4 bldw_4;
mov ymm4_5 bldw_5;
mov ymm4_6 bldw_6;
mov ymm4_7 bldw_7;
mov ymm4_8 bldw_8;
mov ymm4_9 bldw_9;
mov ymm4_a bldw_a;
mov ymm4_b bldw_b;
mov ymm4_c bldw_c;
mov ymm4_d bldw_d;
mov ymm4_e bldw_e;
mov ymm4_f bldw_f;
(* vpsrld $0x10,%ymm8,%ymm8                        #! PC = 0x5555555582f7 *)
mov srld_0 ymm8_1;
mov srld_1 0@sint16;
mov srld_2 ymm8_3;
mov srld_3 0@sint16;
mov srld_4 ymm8_5;
mov srld_5 0@sint16;
mov srld_6 ymm8_7;
mov srld_7 0@sint16;
mov srld_8 ymm8_9;
mov srld_9 0@sint16;
mov srld_a ymm8_b;
mov srld_b 0@sint16;
mov srld_c ymm8_d;
mov srld_d 0@sint16;
mov srld_e ymm8_f;
mov srld_f 0@sint16;
mov ymm8_0 srld_0;
mov ymm8_1 srld_1;
mov ymm8_2 srld_2;
mov ymm8_3 srld_3;
mov ymm8_4 srld_4;
mov ymm8_5 srld_5;
mov ymm8_6 srld_6;
mov ymm8_7 srld_7;
mov ymm8_8 srld_8;
mov ymm8_9 srld_9;
mov ymm8_a srld_a;
mov ymm8_b srld_b;
mov ymm8_c srld_c;
mov ymm8_d srld_d;
mov ymm8_e srld_e;
mov ymm8_f srld_f;
(* vpblendw $0xaa,%ymm3,%ymm8,%ymm3                #! PC = 0x5555555582fd *)
mov bldw_0 ymm8_0;
mov bldw_1 ymm3_1;
mov bldw_2 ymm8_2;
mov bldw_3 ymm3_3;
mov bldw_4 ymm8_4;
mov bldw_5 ymm3_5;
mov bldw_6 ymm8_6;
mov bldw_7 ymm3_7;
mov bldw_8 ymm8_8;
mov bldw_9 ymm3_9;
mov bldw_a ymm8_a;
mov bldw_b ymm3_b;
mov bldw_c ymm8_c;
mov bldw_d ymm3_d;
mov bldw_e ymm8_e;
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
(* vpslld $0x10,%ymm9,%ymm8                        #! PC = 0x555555558303 *)
mov slld_0 0@sint16;
mov slld_1 ymm9_0;
mov slld_2 0@sint16;
mov slld_3 ymm9_2;
mov slld_4 0@sint16;
mov slld_5 ymm9_4;
mov slld_6 0@sint16;
mov slld_7 ymm9_6;
mov slld_8 0@sint16;
mov slld_9 ymm9_8;
mov slld_a 0@sint16;
mov slld_b ymm9_a;
mov slld_c 0@sint16;
mov slld_d ymm9_c;
mov slld_e 0@sint16;
mov slld_f ymm9_e;
mov ymm8_0 slld_0;
mov ymm8_1 slld_1;
mov ymm8_2 slld_2;
mov ymm8_3 slld_3;
mov ymm8_4 slld_4;
mov ymm8_5 slld_5;
mov ymm8_6 slld_6;
mov ymm8_7 slld_7;
mov ymm8_8 slld_8;
mov ymm8_9 slld_9;
mov ymm8_a slld_a;
mov ymm8_b slld_b;
mov ymm8_c slld_c;
mov ymm8_d slld_d;
mov ymm8_e slld_e;
mov ymm8_f slld_f;
(* vpblendw $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x555555558309 *)
mov bldw_0 ymm7_0;
mov bldw_1 ymm8_1;
mov bldw_2 ymm7_2;
mov bldw_3 ymm8_3;
mov bldw_4 ymm7_4;
mov bldw_5 ymm8_5;
mov bldw_6 ymm7_6;
mov bldw_7 ymm8_7;
mov bldw_8 ymm7_8;
mov bldw_9 ymm8_9;
mov bldw_a ymm7_a;
mov bldw_b ymm8_b;
mov bldw_c ymm7_c;
mov bldw_d ymm8_d;
mov bldw_e ymm7_e;
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
(* vpsrld $0x10,%ymm7,%ymm7                        #! PC = 0x55555555830f *)
mov srld_0 ymm7_1;
mov srld_1 0@sint16;
mov srld_2 ymm7_3;
mov srld_3 0@sint16;
mov srld_4 ymm7_5;
mov srld_5 0@sint16;
mov srld_6 ymm7_7;
mov srld_7 0@sint16;
mov srld_8 ymm7_9;
mov srld_9 0@sint16;
mov srld_a ymm7_b;
mov srld_b 0@sint16;
mov srld_c ymm7_d;
mov srld_d 0@sint16;
mov srld_e ymm7_f;
mov srld_f 0@sint16;
mov ymm7_0 srld_0;
mov ymm7_1 srld_1;
mov ymm7_2 srld_2;
mov ymm7_3 srld_3;
mov ymm7_4 srld_4;
mov ymm7_5 srld_5;
mov ymm7_6 srld_6;
mov ymm7_7 srld_7;
mov ymm7_8 srld_8;
mov ymm7_9 srld_9;
mov ymm7_a srld_a;
mov ymm7_b srld_b;
mov ymm7_c srld_c;
mov ymm7_d srld_d;
mov ymm7_e srld_e;
mov ymm7_f srld_f;
(* vpblendw $0xaa,%ymm9,%ymm7,%ymm9                #! PC = 0x555555558314 *)
mov bldw_0 ymm7_0;
mov bldw_1 ymm9_1;
mov bldw_2 ymm7_2;
mov bldw_3 ymm9_3;
mov bldw_4 ymm7_4;
mov bldw_5 ymm9_5;
mov bldw_6 ymm7_6;
mov bldw_7 ymm9_7;
mov bldw_8 ymm7_8;
mov bldw_9 ymm9_9;
mov bldw_a ymm7_a;
mov bldw_b ymm9_b;
mov bldw_c ymm7_c;
mov bldw_d ymm9_d;
mov bldw_e ymm7_e;
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
(* vpslld $0x10,%ymm10,%ymm7                       #! PC = 0x55555555831a *)
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
mov ymm7_0 slld_0;
mov ymm7_1 slld_1;
mov ymm7_2 slld_2;
mov ymm7_3 slld_3;
mov ymm7_4 slld_4;
mov ymm7_5 slld_5;
mov ymm7_6 slld_6;
mov ymm7_7 slld_7;
mov ymm7_8 slld_8;
mov ymm7_9 slld_9;
mov ymm7_a slld_a;
mov ymm7_b slld_b;
mov ymm7_c slld_c;
mov ymm7_d slld_d;
mov ymm7_e slld_e;
mov ymm7_f slld_f;
(* vpblendw $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x555555558320 *)
mov bldw_0 ymm5_0;
mov bldw_1 ymm7_1;
mov bldw_2 ymm5_2;
mov bldw_3 ymm7_3;
mov bldw_4 ymm5_4;
mov bldw_5 ymm7_5;
mov bldw_6 ymm5_6;
mov bldw_7 ymm7_7;
mov bldw_8 ymm5_8;
mov bldw_9 ymm7_9;
mov bldw_a ymm5_a;
mov bldw_b ymm7_b;
mov bldw_c ymm5_c;
mov bldw_d ymm7_d;
mov bldw_e ymm5_e;
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
(* vpsrld $0x10,%ymm5,%ymm5                        #! PC = 0x555555558326 *)
mov srld_0 ymm5_1;
mov srld_1 0@sint16;
mov srld_2 ymm5_3;
mov srld_3 0@sint16;
mov srld_4 ymm5_5;
mov srld_5 0@sint16;
mov srld_6 ymm5_7;
mov srld_7 0@sint16;
mov srld_8 ymm5_9;
mov srld_9 0@sint16;
mov srld_a ymm5_b;
mov srld_b 0@sint16;
mov srld_c ymm5_d;
mov srld_d 0@sint16;
mov srld_e ymm5_f;
mov srld_f 0@sint16;
mov ymm5_0 srld_0;
mov ymm5_1 srld_1;
mov ymm5_2 srld_2;
mov ymm5_3 srld_3;
mov ymm5_4 srld_4;
mov ymm5_5 srld_5;
mov ymm5_6 srld_6;
mov ymm5_7 srld_7;
mov ymm5_8 srld_8;
mov ymm5_9 srld_9;
mov ymm5_a srld_a;
mov ymm5_b srld_b;
mov ymm5_c srld_c;
mov ymm5_d srld_d;
mov ymm5_e srld_e;
mov ymm5_f srld_f;
(* vpblendw $0xaa,%ymm10,%ymm5,%ymm10              #! PC = 0x55555555832b *)
mov bldw_0 ymm5_0;
mov bldw_1 ymm10_1;
mov bldw_2 ymm5_2;
mov bldw_3 ymm10_3;
mov bldw_4 ymm5_4;
mov bldw_5 ymm10_5;
mov bldw_6 ymm5_6;
mov bldw_7 ymm10_7;
mov bldw_8 ymm5_8;
mov bldw_9 ymm10_9;
mov bldw_a ymm5_a;
mov bldw_b ymm10_b;
mov bldw_c ymm5_c;
mov bldw_d ymm10_d;
mov bldw_e ymm5_e;
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
(* vpslld $0x10,%ymm11,%ymm5                       #! PC = 0x555555558331 *)
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
(* vpblendw $0xaa,%ymm5,%ymm6,%ymm5                #! PC = 0x555555558337 *)
mov bldw_0 ymm6_0;
mov bldw_1 ymm5_1;
mov bldw_2 ymm6_2;
mov bldw_3 ymm5_3;
mov bldw_4 ymm6_4;
mov bldw_5 ymm5_5;
mov bldw_6 ymm6_6;
mov bldw_7 ymm5_7;
mov bldw_8 ymm6_8;
mov bldw_9 ymm5_9;
mov bldw_a ymm6_a;
mov bldw_b ymm5_b;
mov bldw_c ymm6_c;
mov bldw_d ymm5_d;
mov bldw_e ymm6_e;
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
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555555833d *)
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
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x555555558342 *)
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
(* vpaddw %ymm8,%ymm4,%ymm6                        #! PC = 0x555555558348 *)
add ymm6_0 ymm4_0 ymm8_0;
add ymm6_1 ymm4_1 ymm8_1;
add ymm6_2 ymm4_2 ymm8_2;
add ymm6_3 ymm4_3 ymm8_3;
add ymm6_4 ymm4_4 ymm8_4;
add ymm6_5 ymm4_5 ymm8_5;
add ymm6_6 ymm4_6 ymm8_6;
add ymm6_7 ymm4_7 ymm8_7;
add ymm6_8 ymm4_8 ymm8_8;
add ymm6_9 ymm4_9 ymm8_9;
add ymm6_a ymm4_a ymm8_a;
add ymm6_b ymm4_b ymm8_b;
add ymm6_c ymm4_c ymm8_c;
add ymm6_d ymm4_d ymm8_d;
add ymm6_e ymm4_e ymm8_e;
add ymm6_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555555834d *)
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
(* vpaddw %ymm9,%ymm3,%ymm4                        #! PC = 0x555555558352 *)
add ymm4_0 ymm3_0 ymm9_0;
add ymm4_1 ymm3_1 ymm9_1;
add ymm4_2 ymm3_2 ymm9_2;
add ymm4_3 ymm3_3 ymm9_3;
add ymm4_4 ymm3_4 ymm9_4;
add ymm4_5 ymm3_5 ymm9_5;
add ymm4_6 ymm3_6 ymm9_6;
add ymm4_7 ymm3_7 ymm9_7;
add ymm4_8 ymm3_8 ymm9_8;
add ymm4_9 ymm3_9 ymm9_9;
add ymm4_a ymm3_a ymm9_a;
add ymm4_b ymm3_b ymm9_b;
add ymm4_c ymm3_c ymm9_c;
add ymm4_d ymm3_d ymm9_d;
add ymm4_e ymm3_e ymm9_e;
add ymm4_f ymm3_f ymm9_f;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x555555558357 *)
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
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555555835c *)
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
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x555555558360 *)
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
(* vpaddw %ymm11,%ymm10,%ymm7                      #! PC = 0x555555558364 *)
add ymm7_0 ymm10_0 ymm11_0;
add ymm7_1 ymm10_1 ymm11_1;
add ymm7_2 ymm10_2 ymm11_2;
add ymm7_3 ymm10_3 ymm11_3;
add ymm7_4 ymm10_4 ymm11_4;
add ymm7_5 ymm10_5 ymm11_5;
add ymm7_6 ymm10_6 ymm11_6;
add ymm7_7 ymm10_7 ymm11_7;
add ymm7_8 ymm10_8 ymm11_8;
add ymm7_9 ymm10_9 ymm11_9;
add ymm7_a ymm10_a ymm11_a;
add ymm7_b ymm10_b ymm11_b;
add ymm7_c ymm10_c ymm11_c;
add ymm7_d ymm10_d ymm11_d;
add ymm7_e ymm10_e ymm11_e;
add ymm7_f ymm10_f ymm11_f;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558369 *)
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
(* ===== End of level 6, off 0 ===== *)

(* ecut 6, rcut 6 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm4_0*((3226*1*x)**1)
  )
  [10753, x**2 - (100)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm9_0*((3226*1*x)**1)
  )
  [10753, x**2 - (-100)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm7_0*((3226*67*x)**1)
  )
  [10753, x**2 - (2726)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm11_0*((3226*67*x)**1)
  )
  [10753, x**2 - (-2726)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_1 + ymm4_1*((3226*7331*x)**1)
  )
  [10753, x**2 - (-159)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_1 + ymm9_1*((3226*7331*x)**1)
  )
  [10753, x**2 - (159)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_1 + ymm7_1*((3226*9097*x)**1)
  )
  [10753, x**2 - (-4053)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_1 + ymm11_1*((3226*9097*x)**1)
  )
  [10753, x**2 - (4053)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_2 + ymm4_2*((3226*8116*x)**1)
  )
  [10753, x**2 - (-4305)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_2 + ymm9_2*((3226*8116*x)**1)
  )
  [10753, x**2 - (4305)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_2 + ymm7_2*((3226*3010*x)**1)
  )
  [10753, x**2 - (-2004)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_2 + ymm11_2*((3226*3010*x)**1)
  )
  [10753, x**2 - (2004)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_3 + ymm4_3*((3226*2047*x)**1)
  )
  [10753, x**2 - (5232)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_3 + ymm9_3*((3226*2047*x)**1)
  )
  [10753, x**2 - (-5232)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_3 + ymm7_3*((3226*1154*x)**1)
  )
  [10753, x**2 - (1896)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_3 + ymm11_3*((3226*1154*x)**1)
  )
  [10753, x**2 - (-1896)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm4_4*((10463*1*x)**1)
  )
  [10753, x**2 - (5125)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm9_4*((10463*1*x)**1)
  )
  [10753, x**2 - (-5125)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm7_4*((10463*67*x)**1)
  )
  [10753, x**2 - (5295)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm11_4*((10463*67*x)**1)
  )
  [10753, x**2 - (-5295)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_5 + ymm4_5*((10463*7331*x)**1)
  )
  [10753, x**2 - (-84)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_5 + ymm9_5*((10463*7331*x)**1)
  )
  [10753, x**2 - (84)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_5 + ymm7_5*((10463*9097*x)**1)
  )
  [10753, x**2 - (-721)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_5 + ymm11_5*((10463*9097*x)**1)
  )
  [10753, x**2 - (721)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_6 + ymm4_6*((10463*8116*x)**1)
  )
  [10753, x**2 - (-2883)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_6 + ymm9_6*((10463*8116*x)**1)
  )
  [10753, x**2 - (2883)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_6 + ymm7_6*((10463*3010*x)**1)
  )
  [10753, x**2 - (4825)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_6 + ymm11_6*((10463*3010*x)**1)
  )
  [10753, x**2 - (-4825)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_7 + ymm4_7*((10463*2047*x)**1)
  )
  [10753, x**2 - (-685)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_7 + ymm9_7*((10463*2047*x)**1)
  )
  [10753, x**2 - (685)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_7 + ymm7_7*((10463*1154*x)**1)
  )
  [10753, x**2 - (393)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_7 + ymm11_7*((10463*1154*x)**1)
  )
  [10753, x**2 - (-393)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm4_8*((2966*1*x)**1)
  )
  [10753, x**2 - (331)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm9_8*((2966*1*x)**1)
  )
  [10753, x**2 - (-331)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm7_8*((2966*67*x)**1)
  )
  [10753, x**2 - (-1945)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm11_8*((2966*67*x)**1)
  )
  [10753, x**2 - (1945)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_9 + ymm4_9*((2966*7331*x)**1)
  )
  [10753, x**2 - (-1279)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_9 + ymm9_9*((2966*7331*x)**1)
  )
  [10753, x**2 - (1279)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_9 + ymm7_9*((2966*9097*x)**1)
  )
  [10753, x**2 - (671)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_9 + ymm11_9*((2966*9097*x)**1)
  )
  [10753, x**2 - (-671)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_a + ymm4_a*((2966*8116*x)**1)
  )
  [10753, x**2 - (267)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_a + ymm9_a*((2966*8116*x)**1)
  )
  [10753, x**2 - (-267)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_a + ymm7_a*((2966*3010*x)**1)
  )
  [10753, x**2 - (4980)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_a + ymm11_a*((2966*3010*x)**1)
  )
  [10753, x**2 - (-4980)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_b + ymm4_b*((2966*2047*x)**1)
  )
  [10753, x**2 - (-317)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_b + ymm9_b*((2966*2047*x)**1)
  )
  [10753, x**2 - (317)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_b + ymm7_b*((2966*1154*x)**1)
  )
  [10753, x**2 - (-3617)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_b + ymm11_b*((2966*1154*x)**1)
  )
  [10753, x**2 - (3617)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm4_c*((1000*1*x)**1)
  )
  [10753, x**2 - (-1854)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm9_c*((1000*1*x)**1)
  )
  [10753, x**2 - (1854)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm7_c*((1000*67*x)**1)
  )
  [10753, x**2 - (-216)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm11_c*((1000*67*x)**1)
  )
  [10753, x**2 - (216)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_d + ymm4_d*((1000*7331*x)**1)
  )
  [10753, x**2 - (-3719)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_d + ymm9_d*((1000*7331*x)**1)
  )
  [10753, x**2 - (3719)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_d + ymm7_d*((1000*9097*x)**1)
  )
  [10753, x**2 - (4818)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_d + ymm11_d*((1000*9097*x)**1)
  )
  [10753, x**2 - (-4818)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_e + ymm4_e*((1000*8116*x)**1)
  )
  [10753, x**2 - (-5134)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_e + ymm9_e*((1000*8116*x)**1)
  )
  [10753, x**2 - (5134)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_e + ymm7_e*((1000*3010*x)**1)
  )
  [10753, x**2 - (-2847)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_e + ymm11_e*((1000*3010*x)**1)
  )
  [10753, x**2 - (2847)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_f + ymm4_f*((1000*2047*x)**1)
  )
  [10753, x**2 - (-2805)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_f + ymm9_f*((1000*2047*x)**1)
  )
  [10753, x**2 - (2805)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_f + ymm7_f*((1000*1154*x)**1)
  )
  [10753, x**2 - (118)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_f + ymm11_f*((1000*1154*x)**1)
  )
  [10753, x**2 - (-118)]
] && and [
  (-(11262))@16 <=s ymm6_0, ymm6_0 <=s (11262)@16, (-(11262))@16 <=s ymm4_0, ymm4_0 <=s (11262)@16,
  (-(11262))@16 <=s ymm8_0, ymm8_0 <=s (11262)@16, (-(11262))@16 <=s ymm9_0, ymm9_0 <=s (11262)@16,
  (-(11081))@16 <=s ymm3_0, ymm3_0 <=s (11081)@16, (-(13480))@16 <=s ymm7_0, ymm7_0 <=s (13480)@16,
  (-(11081))@16 <=s ymm5_0, ymm5_0 <=s (11081)@16, (-(13480))@16 <=s ymm11_0, ymm11_0 <=s (13480)@16,
  (-(12400))@16 <=s ymm6_1, ymm6_1 <=s (12400)@16, (-(11708))@16 <=s ymm4_1, ymm4_1 <=s (11708)@16,
  (-(12400))@16 <=s ymm8_1, ymm8_1 <=s (12400)@16, (-(11708))@16 <=s ymm9_1, ymm9_1 <=s (11708)@16,
  (-(12303))@16 <=s ymm3_1, ymm3_1 <=s (12303)@16, (-(12193))@16 <=s ymm7_1, ymm7_1 <=s (12193)@16,
  (-(12303))@16 <=s ymm5_1, ymm5_1 <=s (12303)@16, (-(12193))@16 <=s ymm11_1, ymm11_1 <=s (12193)@16,
  (-(11896))@16 <=s ymm6_2, ymm6_2 <=s (11896)@16, (-(11883))@16 <=s ymm4_2, ymm4_2 <=s (11883)@16,
  (-(11896))@16 <=s ymm8_2, ymm8_2 <=s (11896)@16, (-(11883))@16 <=s ymm9_2, ymm9_2 <=s (11883)@16,
  (-(12341))@16 <=s ymm3_2, ymm3_2 <=s (12341)@16, (-(12829))@16 <=s ymm7_2, ymm7_2 <=s (12829)@16,
  (-(12341))@16 <=s ymm5_2, ymm5_2 <=s (12341)@16, (-(12829))@16 <=s ymm11_2, ymm11_2 <=s (12829)@16,
  (-(11124))@16 <=s ymm6_3, ymm6_3 <=s (11124)@16, (-(11175))@16 <=s ymm4_3, ymm4_3 <=s (11175)@16,
  (-(11124))@16 <=s ymm8_3, ymm8_3 <=s (11124)@16, (-(11175))@16 <=s ymm9_3, ymm9_3 <=s (11175)@16,
  (-(11136))@16 <=s ymm3_3, ymm3_3 <=s (11136)@16, (-(12954))@16 <=s ymm7_3, ymm7_3 <=s (12954)@16,
  (-(11136))@16 <=s ymm5_3, ymm5_3 <=s (11136)@16, (-(12954))@16 <=s ymm11_3, ymm11_3 <=s (12954)@16,
  (-(11262))@16 <=s ymm6_4, ymm6_4 <=s (11262)@16, (-(11262))@16 <=s ymm4_4, ymm4_4 <=s (11262)@16,
  (-(11262))@16 <=s ymm8_4, ymm8_4 <=s (11262)@16, (-(11262))@16 <=s ymm9_4, ymm9_4 <=s (11262)@16,
  (-(11078))@16 <=s ymm3_4, ymm3_4 <=s (11078)@16, (-(13516))@16 <=s ymm7_4, ymm7_4 <=s (13516)@16,
  (-(11078))@16 <=s ymm5_4, ymm5_4 <=s (11078)@16, (-(13516))@16 <=s ymm11_4, ymm11_4 <=s (13516)@16,
  (-(12387))@16 <=s ymm6_5, ymm6_5 <=s (12387)@16, (-(11708))@16 <=s ymm4_5, ymm4_5 <=s (11708)@16,
  (-(12387))@16 <=s ymm8_5, ymm8_5 <=s (12387)@16, (-(11708))@16 <=s ymm9_5, ymm9_5 <=s (11708)@16,
  (-(12233))@16 <=s ymm3_5, ymm3_5 <=s (12233)@16, (-(12209))@16 <=s ymm7_5, ymm7_5 <=s (12209)@16,
  (-(12233))@16 <=s ymm5_5, ymm5_5 <=s (12233)@16, (-(12209))@16 <=s ymm11_5, ymm11_5 <=s (12209)@16,
  (-(11846))@16 <=s ymm6_6, ymm6_6 <=s (11846)@16, (-(11887))@16 <=s ymm4_6, ymm4_6 <=s (11887)@16,
  (-(11846))@16 <=s ymm8_6, ymm8_6 <=s (11846)@16, (-(11887))@16 <=s ymm9_6, ymm9_6 <=s (11887)@16,
  (-(12309))@16 <=s ymm3_6, ymm3_6 <=s (12309)@16, (-(12829))@16 <=s ymm7_6, ymm7_6 <=s (12829)@16,
  (-(12309))@16 <=s ymm5_6, ymm5_6 <=s (12309)@16, (-(12829))@16 <=s ymm11_6, ymm11_6 <=s (12829)@16,
  (-(11124))@16 <=s ymm6_7, ymm6_7 <=s (11124)@16, (-(11175))@16 <=s ymm4_7, ymm4_7 <=s (11175)@16,
  (-(11124))@16 <=s ymm8_7, ymm8_7 <=s (11124)@16, (-(11175))@16 <=s ymm9_7, ymm9_7 <=s (11175)@16,
  (-(11130))@16 <=s ymm3_7, ymm3_7 <=s (11130)@16, (-(12980))@16 <=s ymm7_7, ymm7_7 <=s (12980)@16,
  (-(11130))@16 <=s ymm5_7, ymm5_7 <=s (11130)@16, (-(12980))@16 <=s ymm11_7, ymm11_7 <=s (12980)@16,
  (-(11262))@16 <=s ymm6_8, ymm6_8 <=s (11262)@16, (-(11262))@16 <=s ymm4_8, ymm4_8 <=s (11262)@16,
  (-(11262))@16 <=s ymm8_8, ymm8_8 <=s (11262)@16, (-(11262))@16 <=s ymm9_8, ymm9_8 <=s (11262)@16,
  (-(11086))@16 <=s ymm3_8, ymm3_8 <=s (11086)@16, (-(13435))@16 <=s ymm7_8, ymm7_8 <=s (13435)@16,
  (-(11086))@16 <=s ymm5_8, ymm5_8 <=s (11086)@16, (-(13435))@16 <=s ymm11_8, ymm11_8 <=s (13435)@16,
  (-(12413))@16 <=s ymm6_9, ymm6_9 <=s (12413)@16, (-(11705))@16 <=s ymm4_9, ymm4_9 <=s (11705)@16,
  (-(12413))@16 <=s ymm8_9, ymm8_9 <=s (12413)@16, (-(11705))@16 <=s ymm9_9, ymm9_9 <=s (11705)@16,
  (-(12339))@16 <=s ymm3_9, ymm3_9 <=s (12339)@16, (-(12172))@16 <=s ymm7_9, ymm7_9 <=s (12172)@16,
  (-(12339))@16 <=s ymm5_9, ymm5_9 <=s (12339)@16, (-(12172))@16 <=s ymm11_9, ymm11_9 <=s (12172)@16,
  (-(11924))@16 <=s ymm6_a, ymm6_a <=s (11924)@16, (-(11862))@16 <=s ymm4_a, ymm4_a <=s (11862)@16,
  (-(11924))@16 <=s ymm8_a, ymm8_a <=s (11924)@16, (-(11862))@16 <=s ymm9_a, ymm9_a <=s (11862)@16,
  (-(12396))@16 <=s ymm3_a, ymm3_a <=s (12396)@16, (-(12807))@16 <=s ymm7_a, ymm7_a <=s (12807)@16,
  (-(12396))@16 <=s ymm5_a, ymm5_a <=s (12396)@16, (-(12807))@16 <=s ymm11_a, ymm11_a <=s (12807)@16,
  (-(11124))@16 <=s ymm6_b, ymm6_b <=s (11124)@16, (-(11157))@16 <=s ymm4_b, ymm4_b <=s (11157)@16,
  (-(11124))@16 <=s ymm8_b, ymm8_b <=s (11124)@16, (-(11157))@16 <=s ymm9_b, ymm9_b <=s (11157)@16,
  (-(11142))@16 <=s ymm3_b, ymm3_b <=s (11142)@16, (-(12903))@16 <=s ymm7_b, ymm7_b <=s (12903)@16,
  (-(11142))@16 <=s ymm5_b, ymm5_b <=s (11142)@16, (-(12903))@16 <=s ymm11_b, ymm11_b <=s (12903)@16,
  (-(11262))@16 <=s ymm6_c, ymm6_c <=s (11262)@16, (-(11262))@16 <=s ymm4_c, ymm4_c <=s (11262)@16,
  (-(11262))@16 <=s ymm8_c, ymm8_c <=s (11262)@16, (-(11262))@16 <=s ymm9_c, ymm9_c <=s (11262)@16,
  (-(11086))@16 <=s ymm3_c, ymm3_c <=s (11086)@16, (-(13625))@16 <=s ymm7_c, ymm7_c <=s (13625)@16,
  (-(11086))@16 <=s ymm5_c, ymm5_c <=s (11086)@16, (-(13625))@16 <=s ymm11_c, ymm11_c <=s (13625)@16,
  (-(12583))@16 <=s ymm6_d, ymm6_d <=s (12583)@16, (-(11761))@16 <=s ymm4_d, ymm4_d <=s (11761)@16,
  (-(12583))@16 <=s ymm8_d, ymm8_d <=s (12583)@16, (-(11761))@16 <=s ymm9_d, ymm9_d <=s (11761)@16,
  (-(12374))@16 <=s ymm3_d, ymm3_d <=s (12374)@16, (-(12189))@16 <=s ymm7_d, ymm7_d <=s (12189)@16,
  (-(12374))@16 <=s ymm5_d, ymm5_d <=s (12374)@16, (-(12189))@16 <=s ymm11_d, ymm11_d <=s (12189)@16,
  (-(11949))@16 <=s ymm6_e, ymm6_e <=s (11949)@16, (-(11954))@16 <=s ymm4_e, ymm4_e <=s (11954)@16,
  (-(11949))@16 <=s ymm8_e, ymm8_e <=s (11949)@16, (-(11954))@16 <=s ymm9_e, ymm9_e <=s (11954)@16,
  (-(12428))@16 <=s ymm3_e, ymm3_e <=s (12428)@16, (-(12802))@16 <=s ymm7_e, ymm7_e <=s (12802)@16,
  (-(12428))@16 <=s ymm5_e, ymm5_e <=s (12428)@16, (-(12802))@16 <=s ymm11_e, ymm11_e <=s (12802)@16,
  (-(11129))@16 <=s ymm6_f, ymm6_f <=s (11129)@16, (-(11177))@16 <=s ymm4_f, ymm4_f <=s (11177)@16,
  (-(11129))@16 <=s ymm8_f, ymm8_f <=s (11129)@16, (-(11177))@16 <=s ymm9_f, ymm9_f <=s (11177)@16,
  (-(11148))@16 <=s ymm3_f, ymm3_f <=s (11148)@16, (-(13026))@16 <=s ymm7_f, ymm7_f <=s (13026)@16,
  (-(11148))@16 <=s ymm5_f, ymm5_f <=s (11148)@16, (-(13026))@16 <=s ymm11_f, ymm11_f <=s (13026)@16
];

(* ===== Start of level 7, off 0 ===== *)
(* vpmullw %ymm1,%ymm9,%ymm12                      #! PC = 0x55555555836e *)
smull mulHymm9_0 mulL_0 ymm1_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm1_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm1_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm1_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm1_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm1_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm1_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm1_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm1_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm1_9 ymm9_9;
smull mulHymm9_a mulL_a ymm1_a ymm9_a;
smull mulHymm9_b mulL_b ymm1_b ymm9_b;
smull mulHymm9_c mulL_c ymm1_c ymm9_c;
smull mulHymm9_d mulL_d ymm1_d ymm9_d;
smull mulHymm9_e mulL_e ymm1_e ymm9_e;
smull mulHymm9_f mulL_f ymm1_f ymm9_f;
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
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x555555558372 *)
smull mulHymm11_0 mulL_0 ymm1_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm1_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm1_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm1_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm1_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm1_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm1_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm1_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm1_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm1_9 ymm11_9;
smull mulHymm11_a mulL_a ymm1_a ymm11_a;
smull mulHymm11_b mulL_b ymm1_b ymm11_b;
smull mulHymm11_c mulL_c ymm1_c ymm11_c;
smull mulHymm11_d mulL_d ymm1_d ymm11_d;
smull mulHymm11_e mulL_e ymm1_e ymm11_e;
smull mulHymm11_f mulL_f ymm1_f ymm11_f;
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
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x555555558376 *)
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
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555555837a *)
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
(* vpaddw %ymm4,%ymm6,%ymm10                       #! PC = 0x55555555837e *)
add ymm10_0 ymm6_0 ymm4_0;
add ymm10_1 ymm6_1 ymm4_1;
add ymm10_2 ymm6_2 ymm4_2;
add ymm10_3 ymm6_3 ymm4_3;
add ymm10_4 ymm6_4 ymm4_4;
add ymm10_5 ymm6_5 ymm4_5;
add ymm10_6 ymm6_6 ymm4_6;
add ymm10_7 ymm6_7 ymm4_7;
add ymm10_8 ymm6_8 ymm4_8;
add ymm10_9 ymm6_9 ymm4_9;
add ymm10_a ymm6_a ymm4_a;
add ymm10_b ymm6_b ymm4_b;
add ymm10_c ymm6_c ymm4_c;
add ymm10_d ymm6_d ymm4_d;
add ymm10_e ymm6_e ymm4_e;
add ymm10_f ymm6_f ymm4_f;
(* vpsubw %ymm4,%ymm6,%ymm4                        #! PC = 0x555555558382 *)
sub ymm4_0 ymm6_0 ymm4_0;
sub ymm4_1 ymm6_1 ymm4_1;
sub ymm4_2 ymm6_2 ymm4_2;
sub ymm4_3 ymm6_3 ymm4_3;
sub ymm4_4 ymm6_4 ymm4_4;
sub ymm4_5 ymm6_5 ymm4_5;
sub ymm4_6 ymm6_6 ymm4_6;
sub ymm4_7 ymm6_7 ymm4_7;
sub ymm4_8 ymm6_8 ymm4_8;
sub ymm4_9 ymm6_9 ymm4_9;
sub ymm4_a ymm6_a ymm4_a;
sub ymm4_b ymm6_b ymm4_b;
sub ymm4_c ymm6_c ymm4_c;
sub ymm4_d ymm6_d ymm4_d;
sub ymm4_e ymm6_e ymm4_e;
sub ymm4_f ymm6_f ymm4_f;
(* vpaddw %ymm7,%ymm3,%ymm6                        #! PC = 0x555555558386 *)
add ymm6_0 ymm3_0 ymm7_0;
add ymm6_1 ymm3_1 ymm7_1;
add ymm6_2 ymm3_2 ymm7_2;
add ymm6_3 ymm3_3 ymm7_3;
add ymm6_4 ymm3_4 ymm7_4;
add ymm6_5 ymm3_5 ymm7_5;
add ymm6_6 ymm3_6 ymm7_6;
add ymm6_7 ymm3_7 ymm7_7;
add ymm6_8 ymm3_8 ymm7_8;
add ymm6_9 ymm3_9 ymm7_9;
add ymm6_a ymm3_a ymm7_a;
add ymm6_b ymm3_b ymm7_b;
add ymm6_c ymm3_c ymm7_c;
add ymm6_d ymm3_d ymm7_d;
add ymm6_e ymm3_e ymm7_e;
add ymm6_f ymm3_f ymm7_f;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x55555555838a *)
sub ymm7_0 ymm3_0 ymm7_0;
sub ymm7_1 ymm3_1 ymm7_1;
sub ymm7_2 ymm3_2 ymm7_2;
sub ymm7_3 ymm3_3 ymm7_3;
sub ymm7_4 ymm3_4 ymm7_4;
sub ymm7_5 ymm3_5 ymm7_5;
sub ymm7_6 ymm3_6 ymm7_6;
sub ymm7_7 ymm3_7 ymm7_7;
sub ymm7_8 ymm3_8 ymm7_8;
sub ymm7_9 ymm3_9 ymm7_9;
sub ymm7_a ymm3_a ymm7_a;
sub ymm7_b ymm3_b ymm7_b;
sub ymm7_c ymm3_c ymm7_c;
sub ymm7_d ymm3_d ymm7_d;
sub ymm7_e ymm3_e ymm7_e;
sub ymm7_f ymm3_f ymm7_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555838e *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558392 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
];
assume and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
] && true;
(* vpaddw %ymm9,%ymm8,%ymm3                        #! PC = 0x555555558396 *)
add ymm3_0 ymm8_0 ymm9_0;
add ymm3_1 ymm8_1 ymm9_1;
add ymm3_2 ymm8_2 ymm9_2;
add ymm3_3 ymm8_3 ymm9_3;
add ymm3_4 ymm8_4 ymm9_4;
add ymm3_5 ymm8_5 ymm9_5;
add ymm3_6 ymm8_6 ymm9_6;
add ymm3_7 ymm8_7 ymm9_7;
add ymm3_8 ymm8_8 ymm9_8;
add ymm3_9 ymm8_9 ymm9_9;
add ymm3_a ymm8_a ymm9_a;
add ymm3_b ymm8_b ymm9_b;
add ymm3_c ymm8_c ymm9_c;
add ymm3_d ymm8_d ymm9_d;
add ymm3_e ymm8_e ymm9_e;
add ymm3_f ymm8_f ymm9_f;
(* vpsubw %ymm9,%ymm8,%ymm9                        #! PC = 0x55555555839b *)
sub ymm9_0 ymm8_0 ymm9_0;
sub ymm9_1 ymm8_1 ymm9_1;
sub ymm9_2 ymm8_2 ymm9_2;
sub ymm9_3 ymm8_3 ymm9_3;
sub ymm9_4 ymm8_4 ymm9_4;
sub ymm9_5 ymm8_5 ymm9_5;
sub ymm9_6 ymm8_6 ymm9_6;
sub ymm9_7 ymm8_7 ymm9_7;
sub ymm9_8 ymm8_8 ymm9_8;
sub ymm9_9 ymm8_9 ymm9_9;
sub ymm9_a ymm8_a ymm9_a;
sub ymm9_b ymm8_b ymm9_b;
sub ymm9_c ymm8_c ymm9_c;
sub ymm9_d ymm8_d ymm9_d;
sub ymm9_e ymm8_e ymm9_e;
sub ymm9_f ymm8_f ymm9_f;
(* vpaddw %ymm11,%ymm5,%ymm8                       #! PC = 0x5555555583a0 *)
add ymm8_0 ymm5_0 ymm11_0;
add ymm8_1 ymm5_1 ymm11_1;
add ymm8_2 ymm5_2 ymm11_2;
add ymm8_3 ymm5_3 ymm11_3;
add ymm8_4 ymm5_4 ymm11_4;
add ymm8_5 ymm5_5 ymm11_5;
add ymm8_6 ymm5_6 ymm11_6;
add ymm8_7 ymm5_7 ymm11_7;
add ymm8_8 ymm5_8 ymm11_8;
add ymm8_9 ymm5_9 ymm11_9;
add ymm8_a ymm5_a ymm11_a;
add ymm8_b ymm5_b ymm11_b;
add ymm8_c ymm5_c ymm11_c;
add ymm8_d ymm5_d ymm11_d;
add ymm8_e ymm5_e ymm11_e;
add ymm8_f ymm5_f ymm11_f;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x5555555583a5 *)
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
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x5555555583aa *)
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
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555583af *)
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
(* vpsubw %ymm13,%ymm8,%ymm8                       #! PC = 0x5555555583b4 *)
sub ymm8_0 ymm8_0 ymm13_0;
sub ymm8_1 ymm8_1 ymm13_1;
sub ymm8_2 ymm8_2 ymm13_2;
sub ymm8_3 ymm8_3 ymm13_3;
sub ymm8_4 ymm8_4 ymm13_4;
sub ymm8_5 ymm8_5 ymm13_5;
sub ymm8_6 ymm8_6 ymm13_6;
sub ymm8_7 ymm8_7 ymm13_7;
sub ymm8_8 ymm8_8 ymm13_8;
sub ymm8_9 ymm8_9 ymm13_9;
sub ymm8_a ymm8_a ymm13_a;
sub ymm8_b ymm8_b ymm13_b;
sub ymm8_c ymm8_c ymm13_c;
sub ymm8_d ymm8_d ymm13_d;
sub ymm8_e ymm8_e ymm13_e;
sub ymm8_f ymm8_f ymm13_f;
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x5555555583b9 *)
add ymm11_0 ymm11_0 ymm13_0;
add ymm11_1 ymm11_1 ymm13_1;
add ymm11_2 ymm11_2 ymm13_2;
add ymm11_3 ymm11_3 ymm13_3;
add ymm11_4 ymm11_4 ymm13_4;
add ymm11_5 ymm11_5 ymm13_5;
add ymm11_6 ymm11_6 ymm13_6;
add ymm11_7 ymm11_7 ymm13_7;
add ymm11_8 ymm11_8 ymm13_8;
add ymm11_9 ymm11_9 ymm13_9;
add ymm11_a ymm11_a ymm13_a;
add ymm11_b ymm11_b ymm13_b;
add ymm11_c ymm11_c ymm13_c;
add ymm11_d ymm11_d ymm13_d;
add ymm11_e ymm11_e ymm13_e;
add ymm11_f ymm11_f ymm13_f;
(* ===== Store results of levels1t7, off 0 ===== *)
(* vmovdqa %ymm10,(%rdi)                           #! EA = L0x7fffffffb4e0; PC = 0x5555555583be *)
mov L0x7fffffffb4e0 ymm10_0;
mov L0x7fffffffb4e2 ymm10_1;
mov L0x7fffffffb4e4 ymm10_2;
mov L0x7fffffffb4e6 ymm10_3;
mov L0x7fffffffb4e8 ymm10_4;
mov L0x7fffffffb4ea ymm10_5;
mov L0x7fffffffb4ec ymm10_6;
mov L0x7fffffffb4ee ymm10_7;
mov L0x7fffffffb4f0 ymm10_8;
mov L0x7fffffffb4f2 ymm10_9;
mov L0x7fffffffb4f4 ymm10_a;
mov L0x7fffffffb4f6 ymm10_b;
mov L0x7fffffffb4f8 ymm10_c;
mov L0x7fffffffb4fa ymm10_d;
mov L0x7fffffffb4fc ymm10_e;
mov L0x7fffffffb4fe ymm10_f;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffb500; PC = 0x5555555583c2 *)
mov L0x7fffffffb500 ymm4_0;
mov L0x7fffffffb502 ymm4_1;
mov L0x7fffffffb504 ymm4_2;
mov L0x7fffffffb506 ymm4_3;
mov L0x7fffffffb508 ymm4_4;
mov L0x7fffffffb50a ymm4_5;
mov L0x7fffffffb50c ymm4_6;
mov L0x7fffffffb50e ymm4_7;
mov L0x7fffffffb510 ymm4_8;
mov L0x7fffffffb512 ymm4_9;
mov L0x7fffffffb514 ymm4_a;
mov L0x7fffffffb516 ymm4_b;
mov L0x7fffffffb518 ymm4_c;
mov L0x7fffffffb51a ymm4_d;
mov L0x7fffffffb51c ymm4_e;
mov L0x7fffffffb51e ymm4_f;
(* vmovdqa %ymm3,0x40(%rdi)                        #! EA = L0x7fffffffb520; PC = 0x5555555583c7 *)
mov L0x7fffffffb520 ymm3_0;
mov L0x7fffffffb522 ymm3_1;
mov L0x7fffffffb524 ymm3_2;
mov L0x7fffffffb526 ymm3_3;
mov L0x7fffffffb528 ymm3_4;
mov L0x7fffffffb52a ymm3_5;
mov L0x7fffffffb52c ymm3_6;
mov L0x7fffffffb52e ymm3_7;
mov L0x7fffffffb530 ymm3_8;
mov L0x7fffffffb532 ymm3_9;
mov L0x7fffffffb534 ymm3_a;
mov L0x7fffffffb536 ymm3_b;
mov L0x7fffffffb538 ymm3_c;
mov L0x7fffffffb53a ymm3_d;
mov L0x7fffffffb53c ymm3_e;
mov L0x7fffffffb53e ymm3_f;
(* vmovdqa %ymm9,0x60(%rdi)                        #! EA = L0x7fffffffb540; PC = 0x5555555583cc *)
mov L0x7fffffffb540 ymm9_0;
mov L0x7fffffffb542 ymm9_1;
mov L0x7fffffffb544 ymm9_2;
mov L0x7fffffffb546 ymm9_3;
mov L0x7fffffffb548 ymm9_4;
mov L0x7fffffffb54a ymm9_5;
mov L0x7fffffffb54c ymm9_6;
mov L0x7fffffffb54e ymm9_7;
mov L0x7fffffffb550 ymm9_8;
mov L0x7fffffffb552 ymm9_9;
mov L0x7fffffffb554 ymm9_a;
mov L0x7fffffffb556 ymm9_b;
mov L0x7fffffffb558 ymm9_c;
mov L0x7fffffffb55a ymm9_d;
mov L0x7fffffffb55c ymm9_e;
mov L0x7fffffffb55e ymm9_f;
(* vmovdqa %ymm6,0x80(%rdi)                        #! EA = L0x7fffffffb560; PC = 0x5555555583d1 *)
mov L0x7fffffffb560 ymm6_0;
mov L0x7fffffffb562 ymm6_1;
mov L0x7fffffffb564 ymm6_2;
mov L0x7fffffffb566 ymm6_3;
mov L0x7fffffffb568 ymm6_4;
mov L0x7fffffffb56a ymm6_5;
mov L0x7fffffffb56c ymm6_6;
mov L0x7fffffffb56e ymm6_7;
mov L0x7fffffffb570 ymm6_8;
mov L0x7fffffffb572 ymm6_9;
mov L0x7fffffffb574 ymm6_a;
mov L0x7fffffffb576 ymm6_b;
mov L0x7fffffffb578 ymm6_c;
mov L0x7fffffffb57a ymm6_d;
mov L0x7fffffffb57c ymm6_e;
mov L0x7fffffffb57e ymm6_f;
(* vmovdqa %ymm7,0xa0(%rdi)                        #! EA = L0x7fffffffb580; PC = 0x5555555583d9 *)
mov L0x7fffffffb580 ymm7_0;
mov L0x7fffffffb582 ymm7_1;
mov L0x7fffffffb584 ymm7_2;
mov L0x7fffffffb586 ymm7_3;
mov L0x7fffffffb588 ymm7_4;
mov L0x7fffffffb58a ymm7_5;
mov L0x7fffffffb58c ymm7_6;
mov L0x7fffffffb58e ymm7_7;
mov L0x7fffffffb590 ymm7_8;
mov L0x7fffffffb592 ymm7_9;
mov L0x7fffffffb594 ymm7_a;
mov L0x7fffffffb596 ymm7_b;
mov L0x7fffffffb598 ymm7_c;
mov L0x7fffffffb59a ymm7_d;
mov L0x7fffffffb59c ymm7_e;
mov L0x7fffffffb59e ymm7_f;
(* vmovdqa %ymm8,0xc0(%rdi)                        #! EA = L0x7fffffffb5a0; PC = 0x5555555583e1 *)
mov L0x7fffffffb5a0 ymm8_0;
mov L0x7fffffffb5a2 ymm8_1;
mov L0x7fffffffb5a4 ymm8_2;
mov L0x7fffffffb5a6 ymm8_3;
mov L0x7fffffffb5a8 ymm8_4;
mov L0x7fffffffb5aa ymm8_5;
mov L0x7fffffffb5ac ymm8_6;
mov L0x7fffffffb5ae ymm8_7;
mov L0x7fffffffb5b0 ymm8_8;
mov L0x7fffffffb5b2 ymm8_9;
mov L0x7fffffffb5b4 ymm8_a;
mov L0x7fffffffb5b6 ymm8_b;
mov L0x7fffffffb5b8 ymm8_c;
mov L0x7fffffffb5ba ymm8_d;
mov L0x7fffffffb5bc ymm8_e;
mov L0x7fffffffb5be ymm8_f;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb5c0; PC = 0x5555555583e9 *)
mov L0x7fffffffb5c0 ymm11_0;
mov L0x7fffffffb5c2 ymm11_1;
mov L0x7fffffffb5c4 ymm11_2;
mov L0x7fffffffb5c6 ymm11_3;
mov L0x7fffffffb5c8 ymm11_4;
mov L0x7fffffffb5ca ymm11_5;
mov L0x7fffffffb5cc ymm11_6;
mov L0x7fffffffb5ce ymm11_7;
mov L0x7fffffffb5d0 ymm11_8;
mov L0x7fffffffb5d2 ymm11_9;
mov L0x7fffffffb5d4 ymm11_a;
mov L0x7fffffffb5d6 ymm11_b;
mov L0x7fffffffb5d8 ymm11_c;
mov L0x7fffffffb5da ymm11_d;
mov L0x7fffffffb5dc ymm11_e;
mov L0x7fffffffb5de ymm11_f;
(* ===== End of level 7, off 0 ===== *)

(* ecut 7, rcut 7 *)

cut
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e0
  )
  [10753, x - (10)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb500
  )
  [10753, x - (-10)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb520
  )
  [10753, x - (-1878)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb540
  )
  [10753, x - (1878)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb560
  )
  [10753, x - (3210)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb580
  )
  [10753, x - (-3210)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a0
  )
  [10753, x - (-670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c0
  )
  [10753, x - (670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e2
  )
  [10753, x - (4946)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb502
  )
  [10753, x - (-4946)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb522
  )
  [10753, x - (2351)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb542
  )
  [10753, x - (-2351)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb562
  )
  [10753, x - (-1961)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb582
  )
  [10753, x - (1961)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a2
  )
  [10753, x - (-3778)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c2
  )
  [10753, x - (3778)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e4
  )
  [10753, x - (787)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb504
  )
  [10753, x - (-787)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb524
  )
  [10753, x - (4894)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb544
  )
  [10753, x - (-4894)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb564
  )
  [10753, x - (-1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb584
  )
  [10753, x - (1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a4
  )
  [10753, x - (5308)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c4
  )
  [10753, x - (-5308)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e6
  )
  [10753, x - (-2159)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb506
  )
  [10753, x - (2159)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb526
  )
  [10753, x - (3298)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb546
  )
  [10753, x - (-3298)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb566
  )
  [10753, x - (-4864)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb586
  )
  [10753, x - (4864)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a6
  )
  [10753, x - (-4847)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c6
  )
  [10753, x - (4847)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e8
  )
  [10753, x - (-2336)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb508
  )
  [10753, x - (2336)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb528
  )
  [10753, x - (2129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb548
  )
  [10753, x - (-2129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb568
  )
  [10753, x - (2854)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb588
  )
  [10753, x - (-2854)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a8
  )
  [10753, x - (-4783)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c8
  )
  [10753, x - (4783)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ea
  )
  [10753, x - (-2664)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50a
  )
  [10753, x - (2664)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52a
  )
  [10753, x - (1360)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54a
  )
  [10753, x - (-1360)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56a
  )
  [10753, x - (4313)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58a
  )
  [10753, x - (-4313)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5aa
  )
  [10753, x - (5096)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ca
  )
  [10753, x - (-5096)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ec
  )
  [10753, x - (3259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50c
  )
  [10753, x - (-3259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52c
  )
  [10753, x - (5182)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54c
  )
  [10753, x - (-5182)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56c
  )
  [10753, x - (3293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58c
  )
  [10753, x - (-3293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ac
  )
  [10753, x - (3098)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5cc
  )
  [10753, x - (-3098)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ee
  )
  [10753, x - (1102)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50e
  )
  [10753, x - (-1102)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52e
  )
  [10753, x - (-498)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54e
  )
  [10753, x - (498)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56e
  )
  [10753, x - (-1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58e
  )
  [10753, x - (1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ae
  )
  [10753, x - (-1107)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ce
  )
  [10753, x - (1107)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f0
  )
  [10753, x - (3223)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb510
  )
  [10753, x - (-3223)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb530
  )
  [10753, x - (-5262)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb550
  )
  [10753, x - (5262)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb570
  )
  [10753, x - (2295)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb590
  )
  [10753, x - (-2295)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b0
  )
  [10753, x - (-881)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d0
  )
  [10753, x - (881)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f2
  )
  [10753, x - (-3800)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb512
  )
  [10753, x - (3800)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb532
  )
  [10753, x - (3942)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb552
  )
  [10753, x - (-3942)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb572
  )
  [10753, x - (3472)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb592
  )
  [10753, x - (-3472)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b2
  )
  [10753, x - (-4711)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d2
  )
  [10753, x - (4711)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f4
  )
  [10753, x - (-1196)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb514
  )
  [10753, x - (1196)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb534
  )
  [10753, x - (3097)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb554
  )
  [10753, x - (-3097)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb574
  )
  [10753, x - (-4861)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb594
  )
  [10753, x - (4861)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b4
  )
  [10753, x - (3192)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d4
  )
  [10753, x - (-3192)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f6
  )
  [10753, x - (2024)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb516
  )
  [10753, x - (-2024)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb536
  )
  [10753, x - (549)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb556
  )
  [10753, x - (-549)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb576
  )
  [10753, x - (-4181)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb596
  )
  [10753, x - (4181)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b6
  )
  [10753, x - (4524)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d6
  )
  [10753, x - (-4524)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f8
  )
  [10753, x - (-4484)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb518
  )
  [10753, x - (4484)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb538
  )
  [10753, x - (-940)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb558
  )
  [10753, x - (940)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb578
  )
  [10753, x - (1538)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb598
  )
  [10753, x - (-1538)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b8
  )
  [10753, x - (-656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d8
  )
  [10753, x - (656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fa
  )
  [10753, x - (-4819)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51a
  )
  [10753, x - (4819)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53a
  )
  [10753, x - (-2545)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55a
  )
  [10753, x - (2545)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57a
  )
  [10753, x - (-283)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59a
  )
  [10753, x - (283)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ba
  )
  [10753, x - (1533)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5da
  )
  [10753, x - (-1533)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fc
  )
  [10753, x - (-2343)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51c
  )
  [10753, x - (2343)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53c
  )
  [10753, x - (1293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55c
  )
  [10753, x - (-1293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57c
  )
  [10753, x - (4314)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59c
  )
  [10753, x - (-4314)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5bc
  )
  [10753, x - (607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5dc
  )
  [10753, x - (-607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fe
  )
  [10753, x - (-1825)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51e
  )
  [10753, x - (1825)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53e
  )
  [10753, x - (-1361)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55e
  )
  [10753, x - (1361)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57e
  )
  [10753, x - (-3992)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59e
  )
  [10753, x - (3992)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5be
  )
  [10753, x - (-5163)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5de
  )
  [10753, x - (5163)]
&& and [
  (-(22524))@16 <=s L0x7fffffffb4e0, L0x7fffffffb4e0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb500, L0x7fffffffb500 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb520, L0x7fffffffb520 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb540, L0x7fffffffb540 <=s (16668)@16,
  (-(24561))@16 <=s L0x7fffffffb560, L0x7fffffffb560 <=s (24561)@16, (-(24561))@16 <=s L0x7fffffffb580, L0x7fffffffb580 <=s (24561)@16,
  (-(16500))@16 <=s L0x7fffffffb5a0, L0x7fffffffb5a0 <=s (16500)@16, (-(16500))@16 <=s L0x7fffffffb5c0, L0x7fffffffb5c0 <=s (16500)@16,
  (-(24108))@16 <=s L0x7fffffffb4e2, L0x7fffffffb4e2 <=s (24108)@16, (-(24108))@16 <=s L0x7fffffffb502, L0x7fffffffb502 <=s (24108)@16,
  (-(17809))@16 <=s L0x7fffffffb522, L0x7fffffffb522 <=s (17809)@16, (-(17809))@16 <=s L0x7fffffffb542, L0x7fffffffb542 <=s (17809)@16,
  (-(24496))@16 <=s L0x7fffffffb562, L0x7fffffffb562 <=s (24496)@16, (-(24496))@16 <=s L0x7fffffffb582, L0x7fffffffb582 <=s (24496)@16,
  (-(17712))@16 <=s L0x7fffffffb5a2, L0x7fffffffb5a2 <=s (17712)@16, (-(17712))@16 <=s L0x7fffffffb5c2, L0x7fffffffb5c2 <=s (17712)@16,
  (-(23779))@16 <=s L0x7fffffffb4e4, L0x7fffffffb4e4 <=s (23779)@16, (-(23779))@16 <=s L0x7fffffffb504, L0x7fffffffb504 <=s (23779)@16,
  (-(17305))@16 <=s L0x7fffffffb524, L0x7fffffffb524 <=s (17305)@16, (-(17305))@16 <=s L0x7fffffffb544, L0x7fffffffb544 <=s (17305)@16,
  (-(25170))@16 <=s L0x7fffffffb564, L0x7fffffffb564 <=s (25170)@16, (-(25170))@16 <=s L0x7fffffffb584, L0x7fffffffb584 <=s (25170)@16,
  (-(17755))@16 <=s L0x7fffffffb5a4, L0x7fffffffb5a4 <=s (17755)@16, (-(17755))@16 <=s L0x7fffffffb5c4, L0x7fffffffb5c4 <=s (17755)@16,
  (-(22299))@16 <=s L0x7fffffffb4e6, L0x7fffffffb4e6 <=s (22299)@16, (-(22299))@16 <=s L0x7fffffffb506, L0x7fffffffb506 <=s (22299)@16,
  (-(16530))@16 <=s L0x7fffffffb526, L0x7fffffffb526 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb546, L0x7fffffffb546 <=s (16530)@16,
  (-(24090))@16 <=s L0x7fffffffb566, L0x7fffffffb566 <=s (24090)@16, (-(24090))@16 <=s L0x7fffffffb586, L0x7fffffffb586 <=s (24090)@16,
  (-(16550))@16 <=s L0x7fffffffb5a6, L0x7fffffffb5a6 <=s (16550)@16, (-(16550))@16 <=s L0x7fffffffb5c6, L0x7fffffffb5c6 <=s (16550)@16,
  (-(22524))@16 <=s L0x7fffffffb4e8, L0x7fffffffb4e8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb508, L0x7fffffffb508 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb528, L0x7fffffffb528 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb548, L0x7fffffffb548 <=s (16668)@16,
  (-(24594))@16 <=s L0x7fffffffb568, L0x7fffffffb568 <=s (24594)@16, (-(24594))@16 <=s L0x7fffffffb588, L0x7fffffffb588 <=s (24594)@16,
  (-(16497))@16 <=s L0x7fffffffb5a8, L0x7fffffffb5a8 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb5c8, L0x7fffffffb5c8 <=s (16497)@16,
  (-(24095))@16 <=s L0x7fffffffb4ea, L0x7fffffffb4ea <=s (24095)@16, (-(24095))@16 <=s L0x7fffffffb50a, L0x7fffffffb50a <=s (24095)@16,
  (-(17796))@16 <=s L0x7fffffffb52a, L0x7fffffffb52a <=s (17796)@16, (-(17796))@16 <=s L0x7fffffffb54a, L0x7fffffffb54a <=s (17796)@16,
  (-(24442))@16 <=s L0x7fffffffb56a, L0x7fffffffb56a <=s (24442)@16, (-(24442))@16 <=s L0x7fffffffb58a, L0x7fffffffb58a <=s (24442)@16,
  (-(17642))@16 <=s L0x7fffffffb5aa, L0x7fffffffb5aa <=s (17642)@16, (-(17642))@16 <=s L0x7fffffffb5ca, L0x7fffffffb5ca <=s (17642)@16,
  (-(23733))@16 <=s L0x7fffffffb4ec, L0x7fffffffb4ec <=s (23733)@16, (-(23733))@16 <=s L0x7fffffffb50c, L0x7fffffffb50c <=s (23733)@16,
  (-(17255))@16 <=s L0x7fffffffb52c, L0x7fffffffb52c <=s (17255)@16, (-(17255))@16 <=s L0x7fffffffb54c, L0x7fffffffb54c <=s (17255)@16,
  (-(25138))@16 <=s L0x7fffffffb56c, L0x7fffffffb56c <=s (25138)@16, (-(25138))@16 <=s L0x7fffffffb58c, L0x7fffffffb58c <=s (25138)@16,
  (-(17723))@16 <=s L0x7fffffffb5ac, L0x7fffffffb5ac <=s (17723)@16, (-(17723))@16 <=s L0x7fffffffb5cc, L0x7fffffffb5cc <=s (17723)@16,
  (-(22299))@16 <=s L0x7fffffffb4ee, L0x7fffffffb4ee <=s (22299)@16, (-(22299))@16 <=s L0x7fffffffb50e, L0x7fffffffb50e <=s (22299)@16,
  (-(16530))@16 <=s L0x7fffffffb52e, L0x7fffffffb52e <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb54e, L0x7fffffffb54e <=s (16530)@16,
  (-(24110))@16 <=s L0x7fffffffb56e, L0x7fffffffb56e <=s (24110)@16, (-(24110))@16 <=s L0x7fffffffb58e, L0x7fffffffb58e <=s (24110)@16,
  (-(16544))@16 <=s L0x7fffffffb5ae, L0x7fffffffb5ae <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb5ce, L0x7fffffffb5ce <=s (16544)@16,
  (-(22524))@16 <=s L0x7fffffffb4f0, L0x7fffffffb4f0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb510, L0x7fffffffb510 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb530, L0x7fffffffb530 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb550, L0x7fffffffb550 <=s (16668)@16,
  (-(24521))@16 <=s L0x7fffffffb570, L0x7fffffffb570 <=s (24521)@16, (-(24521))@16 <=s L0x7fffffffb590, L0x7fffffffb590 <=s (24521)@16,
  (-(16505))@16 <=s L0x7fffffffb5b0, L0x7fffffffb5b0 <=s (16505)@16, (-(16505))@16 <=s L0x7fffffffb5d0, L0x7fffffffb5d0 <=s (16505)@16,
  (-(24118))@16 <=s L0x7fffffffb4f2, L0x7fffffffb4f2 <=s (24118)@16, (-(24118))@16 <=s L0x7fffffffb512, L0x7fffffffb512 <=s (24118)@16,
  (-(17822))@16 <=s L0x7fffffffb532, L0x7fffffffb532 <=s (17822)@16, (-(17822))@16 <=s L0x7fffffffb552, L0x7fffffffb552 <=s (17822)@16,
  (-(24511))@16 <=s L0x7fffffffb572, L0x7fffffffb572 <=s (24511)@16, (-(24511))@16 <=s L0x7fffffffb592, L0x7fffffffb592 <=s (24511)@16,
  (-(17748))@16 <=s L0x7fffffffb5b2, L0x7fffffffb5b2 <=s (17748)@16, (-(17748))@16 <=s L0x7fffffffb5d2, L0x7fffffffb5d2 <=s (17748)@16,
  (-(23786))@16 <=s L0x7fffffffb4f4, L0x7fffffffb4f4 <=s (23786)@16, (-(23786))@16 <=s L0x7fffffffb514, L0x7fffffffb514 <=s (23786)@16,
  (-(17333))@16 <=s L0x7fffffffb534, L0x7fffffffb534 <=s (17333)@16, (-(17333))@16 <=s L0x7fffffffb554, L0x7fffffffb554 <=s (17333)@16,
  (-(25203))@16 <=s L0x7fffffffb574, L0x7fffffffb574 <=s (25203)@16, (-(25203))@16 <=s L0x7fffffffb594, L0x7fffffffb594 <=s (25203)@16,
  (-(17810))@16 <=s L0x7fffffffb5b4, L0x7fffffffb5b4 <=s (17810)@16, (-(17810))@16 <=s L0x7fffffffb5d4, L0x7fffffffb5d4 <=s (17810)@16,
  (-(22281))@16 <=s L0x7fffffffb4f6, L0x7fffffffb4f6 <=s (22281)@16, (-(22281))@16 <=s L0x7fffffffb516, L0x7fffffffb516 <=s (22281)@16,
  (-(16530))@16 <=s L0x7fffffffb536, L0x7fffffffb536 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb556, L0x7fffffffb556 <=s (16530)@16,
  (-(24045))@16 <=s L0x7fffffffb576, L0x7fffffffb576 <=s (24045)@16, (-(24045))@16 <=s L0x7fffffffb596, L0x7fffffffb596 <=s (24045)@16,
  (-(16556))@16 <=s L0x7fffffffb5b6, L0x7fffffffb5b6 <=s (16556)@16, (-(16556))@16 <=s L0x7fffffffb5d6, L0x7fffffffb5d6 <=s (16556)@16,
  (-(22524))@16 <=s L0x7fffffffb4f8, L0x7fffffffb4f8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb518, L0x7fffffffb518 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb538, L0x7fffffffb538 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb558, L0x7fffffffb558 <=s (16668)@16,
  (-(24711))@16 <=s L0x7fffffffb578, L0x7fffffffb578 <=s (24711)@16, (-(24711))@16 <=s L0x7fffffffb598, L0x7fffffffb598 <=s (24711)@16,
  (-(16505))@16 <=s L0x7fffffffb5b8, L0x7fffffffb5b8 <=s (16505)@16, (-(16505))@16 <=s L0x7fffffffb5d8, L0x7fffffffb5d8 <=s (16505)@16,
  (-(24344))@16 <=s L0x7fffffffb4fa, L0x7fffffffb4fa <=s (24344)@16, (-(24344))@16 <=s L0x7fffffffb51a, L0x7fffffffb51a <=s (24344)@16,
  (-(17992))@16 <=s L0x7fffffffb53a, L0x7fffffffb53a <=s (17992)@16, (-(17992))@16 <=s L0x7fffffffb55a, L0x7fffffffb55a <=s (17992)@16,
  (-(24563))@16 <=s L0x7fffffffb57a, L0x7fffffffb57a <=s (24563)@16, (-(24563))@16 <=s L0x7fffffffb59a, L0x7fffffffb59a <=s (24563)@16,
  (-(17783))@16 <=s L0x7fffffffb5ba, L0x7fffffffb5ba <=s (17783)@16, (-(17783))@16 <=s L0x7fffffffb5da, L0x7fffffffb5da <=s (17783)@16,
  (-(23903))@16 <=s L0x7fffffffb4fc, L0x7fffffffb4fc <=s (23903)@16, (-(23903))@16 <=s L0x7fffffffb51c, L0x7fffffffb51c <=s (23903)@16,
  (-(17358))@16 <=s L0x7fffffffb53c, L0x7fffffffb53c <=s (17358)@16, (-(17358))@16 <=s L0x7fffffffb55c, L0x7fffffffb55c <=s (17358)@16,
  (-(25230))@16 <=s L0x7fffffffb57c, L0x7fffffffb57c <=s (25230)@16, (-(25230))@16 <=s L0x7fffffffb59c, L0x7fffffffb59c <=s (25230)@16,
  (-(17842))@16 <=s L0x7fffffffb5bc, L0x7fffffffb5bc <=s (17842)@16, (-(17842))@16 <=s L0x7fffffffb5dc, L0x7fffffffb5dc <=s (17842)@16,
  (-(22306))@16 <=s L0x7fffffffb4fe, L0x7fffffffb4fe <=s (22306)@16, (-(22306))@16 <=s L0x7fffffffb51e, L0x7fffffffb51e <=s (22306)@16,
  (-(16535))@16 <=s L0x7fffffffb53e, L0x7fffffffb53e <=s (16535)@16, (-(16535))@16 <=s L0x7fffffffb55e, L0x7fffffffb55e <=s (16535)@16,
  (-(24174))@16 <=s L0x7fffffffb57e, L0x7fffffffb57e <=s (24174)@16, (-(24174))@16 <=s L0x7fffffffb59e, L0x7fffffffb59e <=s (24174)@16,
  (-(16562))@16 <=s L0x7fffffffb5be, L0x7fffffffb5be <=s (16562)@16, (-(16562))@16 <=s L0x7fffffffb5de, L0x7fffffffb5de <=s (16562)@16
];


(* ecut 8, rcut 8 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e0 + L0x7fffffffb5e2*(x**1) + L0x7fffffffb5e4*(x**2) + L0x7fffffffb5e6*(x**3) +
    L0x7fffffffb5e8*(x**4) + L0x7fffffffb5ea*(x**5) + L0x7fffffffb5ec*(x**6) + L0x7fffffffb5ee*(x**7) +
    L0x7fffffffb5f0*(x**8) + L0x7fffffffb5f2*(x**9) + L0x7fffffffb5f4*(x**10) + L0x7fffffffb5f6*(x**11) +
    L0x7fffffffb5f8*(x**12) + L0x7fffffffb5fa*(x**13) + L0x7fffffffb5fc*(x**14) + L0x7fffffffb5fe*(x**15) +
    L0x7fffffffb600*(x**16) + L0x7fffffffb602*(x**17) + L0x7fffffffb604*(x**18) + L0x7fffffffb606*(x**19) +
    L0x7fffffffb608*(x**20) + L0x7fffffffb60a*(x**21) + L0x7fffffffb60c*(x**22) + L0x7fffffffb60e*(x**23) +
    L0x7fffffffb610*(x**24) + L0x7fffffffb612*(x**25) + L0x7fffffffb614*(x**26) + L0x7fffffffb616*(x**27) +
    L0x7fffffffb618*(x**28) + L0x7fffffffb61a*(x**29) + L0x7fffffffb61c*(x**30) + L0x7fffffffb61e*(x**31) +
    L0x7fffffffb620*(x**32) + L0x7fffffffb622*(x**33) + L0x7fffffffb624*(x**34) + L0x7fffffffb626*(x**35) +
    L0x7fffffffb628*(x**36) + L0x7fffffffb62a*(x**37) + L0x7fffffffb62c*(x**38) + L0x7fffffffb62e*(x**39) +
    L0x7fffffffb630*(x**40) + L0x7fffffffb632*(x**41) + L0x7fffffffb634*(x**42) + L0x7fffffffb636*(x**43) +
    L0x7fffffffb638*(x**44) + L0x7fffffffb63a*(x**45) + L0x7fffffffb63c*(x**46) + L0x7fffffffb63e*(x**47) +
    L0x7fffffffb640*(x**48) + L0x7fffffffb642*(x**49) + L0x7fffffffb644*(x**50) + L0x7fffffffb646*(x**51) +
    L0x7fffffffb648*(x**52) + L0x7fffffffb64a*(x**53) + L0x7fffffffb64c*(x**54) + L0x7fffffffb64e*(x**55) +
    L0x7fffffffb650*(x**56) + L0x7fffffffb652*(x**57) + L0x7fffffffb654*(x**58) + L0x7fffffffb656*(x**59) +
    L0x7fffffffb658*(x**60) + L0x7fffffffb65a*(x**61) + L0x7fffffffb65c*(x**62) + L0x7fffffffb65e*(x**63) +
    L0x7fffffffb660*(x**64) + L0x7fffffffb662*(x**65) + L0x7fffffffb664*(x**66) + L0x7fffffffb666*(x**67) +
    L0x7fffffffb668*(x**68) + L0x7fffffffb66a*(x**69) + L0x7fffffffb66c*(x**70) + L0x7fffffffb66e*(x**71) +
    L0x7fffffffb670*(x**72) + L0x7fffffffb672*(x**73) + L0x7fffffffb674*(x**74) + L0x7fffffffb676*(x**75) +
    L0x7fffffffb678*(x**76) + L0x7fffffffb67a*(x**77) + L0x7fffffffb67c*(x**78) + L0x7fffffffb67e*(x**79) +
    L0x7fffffffb680*(x**80) + L0x7fffffffb682*(x**81) + L0x7fffffffb684*(x**82) + L0x7fffffffb686*(x**83) +
    L0x7fffffffb688*(x**84) + L0x7fffffffb68a*(x**85) + L0x7fffffffb68c*(x**86) + L0x7fffffffb68e*(x**87) +
    L0x7fffffffb690*(x**88) + L0x7fffffffb692*(x**89) + L0x7fffffffb694*(x**90) + L0x7fffffffb696*(x**91) +
    L0x7fffffffb698*(x**92) + L0x7fffffffb69a*(x**93) + L0x7fffffffb69c*(x**94) + L0x7fffffffb69e*(x**95) +
    L0x7fffffffb6a0*(x**96) + L0x7fffffffb6a2*(x**97) + L0x7fffffffb6a4*(x**98) + L0x7fffffffb6a6*(x**99) +
    L0x7fffffffb6a8*(x**100) + L0x7fffffffb6aa*(x**101) + L0x7fffffffb6ac*(x**102) + L0x7fffffffb6ae*(x**103) +
    L0x7fffffffb6b0*(x**104) + L0x7fffffffb6b2*(x**105) + L0x7fffffffb6b4*(x**106) + L0x7fffffffb6b6*(x**107) +
    L0x7fffffffb6b8*(x**108) + L0x7fffffffb6ba*(x**109) + L0x7fffffffb6bc*(x**110) + L0x7fffffffb6be*(x**111) +
    L0x7fffffffb6c0*(x**112) + L0x7fffffffb6c2*(x**113) + L0x7fffffffb6c4*(x**114) + L0x7fffffffb6c6*(x**115) +
    L0x7fffffffb6c8*(x**116) + L0x7fffffffb6ca*(x**117) + L0x7fffffffb6cc*(x**118) + L0x7fffffffb6ce*(x**119) +
    L0x7fffffffb6d0*(x**120) + L0x7fffffffb6d2*(x**121) + L0x7fffffffb6d4*(x**122) + L0x7fffffffb6d6*(x**123) +
    L0x7fffffffb6d8*(x**124) + L0x7fffffffb6da*(x**125) + L0x7fffffffb6dc*(x**126) + L0x7fffffffb6de*(x**127)
  )
  [10753, x**128 - (4489)]
] prove with [ cuts [ 0 ] ] && and [
  (-(9479))@16 <s L0x7fffffffb5e0, L0x7fffffffb5e0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5e2, L0x7fffffffb5e2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5e4, L0x7fffffffb5e4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5e6, L0x7fffffffb5e6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5e8, L0x7fffffffb5e8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ea, L0x7fffffffb5ea <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5ec, L0x7fffffffb5ec <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5ee, L0x7fffffffb5ee <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5f0, L0x7fffffffb5f0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5f2, L0x7fffffffb5f2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5f4, L0x7fffffffb5f4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5f6, L0x7fffffffb5f6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5f8, L0x7fffffffb5f8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5fa, L0x7fffffffb5fa <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb5fc, L0x7fffffffb5fc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb5fe, L0x7fffffffb5fe <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb600, L0x7fffffffb600 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb602, L0x7fffffffb602 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb604, L0x7fffffffb604 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb606, L0x7fffffffb606 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb608, L0x7fffffffb608 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb60a, L0x7fffffffb60a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb60c, L0x7fffffffb60c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb60e, L0x7fffffffb60e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb610, L0x7fffffffb610 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb612, L0x7fffffffb612 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb614, L0x7fffffffb614 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb616, L0x7fffffffb616 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb618, L0x7fffffffb618 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb61a, L0x7fffffffb61a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb61c, L0x7fffffffb61c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb61e, L0x7fffffffb61e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb620, L0x7fffffffb620 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb622, L0x7fffffffb622 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb624, L0x7fffffffb624 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb626, L0x7fffffffb626 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb628, L0x7fffffffb628 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb62a, L0x7fffffffb62a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb62c, L0x7fffffffb62c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb62e, L0x7fffffffb62e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb630, L0x7fffffffb630 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb632, L0x7fffffffb632 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb634, L0x7fffffffb634 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb636, L0x7fffffffb636 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb638, L0x7fffffffb638 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb63a, L0x7fffffffb63a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb63c, L0x7fffffffb63c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb63e, L0x7fffffffb63e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb640, L0x7fffffffb640 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb642, L0x7fffffffb642 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb644, L0x7fffffffb644 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb646, L0x7fffffffb646 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb648, L0x7fffffffb648 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb64a, L0x7fffffffb64a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb64c, L0x7fffffffb64c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb64e, L0x7fffffffb64e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb650, L0x7fffffffb650 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb652, L0x7fffffffb652 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb654, L0x7fffffffb654 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb656, L0x7fffffffb656 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb658, L0x7fffffffb658 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb65a, L0x7fffffffb65a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb65c, L0x7fffffffb65c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb65e, L0x7fffffffb65e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb660, L0x7fffffffb660 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb662, L0x7fffffffb662 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb664, L0x7fffffffb664 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb666, L0x7fffffffb666 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb668, L0x7fffffffb668 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb66a, L0x7fffffffb66a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb66c, L0x7fffffffb66c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb66e, L0x7fffffffb66e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb670, L0x7fffffffb670 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb672, L0x7fffffffb672 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb674, L0x7fffffffb674 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb676, L0x7fffffffb676 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb678, L0x7fffffffb678 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb67a, L0x7fffffffb67a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb67c, L0x7fffffffb67c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb67e, L0x7fffffffb67e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb680, L0x7fffffffb680 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb682, L0x7fffffffb682 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb684, L0x7fffffffb684 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb686, L0x7fffffffb686 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb688, L0x7fffffffb688 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb68a, L0x7fffffffb68a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb68c, L0x7fffffffb68c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb68e, L0x7fffffffb68e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb690, L0x7fffffffb690 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb692, L0x7fffffffb692 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb694, L0x7fffffffb694 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb696, L0x7fffffffb696 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb698, L0x7fffffffb698 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb69a, L0x7fffffffb69a <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb69c, L0x7fffffffb69c <s (9479)@16, (-(9479))@16 <s L0x7fffffffb69e, L0x7fffffffb69e <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6a0, L0x7fffffffb6a0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6a2, L0x7fffffffb6a2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6a4, L0x7fffffffb6a4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6a6, L0x7fffffffb6a6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6a8, L0x7fffffffb6a8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6aa, L0x7fffffffb6aa <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6ac, L0x7fffffffb6ac <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ae, L0x7fffffffb6ae <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6b0, L0x7fffffffb6b0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6b2, L0x7fffffffb6b2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6b4, L0x7fffffffb6b4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6b6, L0x7fffffffb6b6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6b8, L0x7fffffffb6b8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ba, L0x7fffffffb6ba <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6bc, L0x7fffffffb6bc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6be, L0x7fffffffb6be <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6c0, L0x7fffffffb6c0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6c2, L0x7fffffffb6c2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6c4, L0x7fffffffb6c4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6c6, L0x7fffffffb6c6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6c8, L0x7fffffffb6c8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ca, L0x7fffffffb6ca <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6cc, L0x7fffffffb6cc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6ce, L0x7fffffffb6ce <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6d0, L0x7fffffffb6d0 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6d2, L0x7fffffffb6d2 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6d4, L0x7fffffffb6d4 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6d6, L0x7fffffffb6d6 <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6d8, L0x7fffffffb6d8 <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6da, L0x7fffffffb6da <s (9479)@16,
  (-(9479))@16 <s L0x7fffffffb6dc, L0x7fffffffb6dc <s (9479)@16, (-(9479))@16 <s L0x7fffffffb6de, L0x7fffffffb6de <s (9479)@16
] prove with [ cuts [ 0 ] ];

(* ===== Start of level 1, off 1 ===== *)
(* vmovdqa 0x1c0(%rdx),%ymm15                      #! EA = L0x5555555608c0; Value = 0x4029402940294029; PC = 0x5555555583f1 *)
mov ymm15_0 L0x5555555608c0;
mov ymm15_1 L0x5555555608c2;
mov ymm15_2 L0x5555555608c4;
mov ymm15_3 L0x5555555608c6;
mov ymm15_4 L0x5555555608c8;
mov ymm15_5 L0x5555555608ca;
mov ymm15_6 L0x5555555608cc;
mov ymm15_7 L0x5555555608ce;
mov ymm15_8 L0x5555555608d0;
mov ymm15_9 L0x5555555608d2;
mov ymm15_a L0x5555555608d4;
mov ymm15_b L0x5555555608d6;
mov ymm15_c L0x5555555608d8;
mov ymm15_d L0x5555555608da;
mov ymm15_e L0x5555555608dc;
mov ymm15_f L0x5555555608de;
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb660; Value = 0x0000f8db00020001; PC = 0x5555555583f9 *)
mov ymm8_0 L0x7fffffffb660;
mov ymm8_1 L0x7fffffffb662;
mov ymm8_2 L0x7fffffffb664;
mov ymm8_3 L0x7fffffffb666;
mov ymm8_4 L0x7fffffffb668;
mov ymm8_5 L0x7fffffffb66a;
mov ymm8_6 L0x7fffffffb66c;
mov ymm8_7 L0x7fffffffb66e;
mov ymm8_8 L0x7fffffffb670;
mov ymm8_9 L0x7fffffffb672;
mov ymm8_a L0x7fffffffb674;
mov ymm8_b L0x7fffffffb676;
mov ymm8_c L0x7fffffffb678;
mov ymm8_d L0x7fffffffb67a;
mov ymm8_e L0x7fffffffb67c;
mov ymm8_f L0x7fffffffb67e;
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb680; Value = 0x0d3700010393ffff; PC = 0x555555558401 *)
mov ymm9_0 L0x7fffffffb680;
mov ymm9_1 L0x7fffffffb682;
mov ymm9_2 L0x7fffffffb684;
mov ymm9_3 L0x7fffffffb686;
mov ymm9_4 L0x7fffffffb688;
mov ymm9_5 L0x7fffffffb68a;
mov ymm9_6 L0x7fffffffb68c;
mov ymm9_7 L0x7fffffffb68e;
mov ymm9_8 L0x7fffffffb690;
mov ymm9_9 L0x7fffffffb692;
mov ymm9_a L0x7fffffffb694;
mov ymm9_b L0x7fffffffb696;
mov ymm9_c L0x7fffffffb698;
mov ymm9_d L0x7fffffffb69a;
mov ymm9_e L0x7fffffffb69c;
mov ymm9_f L0x7fffffffb69e;
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb6a0; Value = 0xfffe0000ffff0d3a; PC = 0x555555558409 *)
mov ymm10_0 L0x7fffffffb6a0;
mov ymm10_1 L0x7fffffffb6a2;
mov ymm10_2 L0x7fffffffb6a4;
mov ymm10_3 L0x7fffffffb6a6;
mov ymm10_4 L0x7fffffffb6a8;
mov ymm10_5 L0x7fffffffb6aa;
mov ymm10_6 L0x7fffffffb6ac;
mov ymm10_7 L0x7fffffffb6ae;
mov ymm10_8 L0x7fffffffb6b0;
mov ymm10_9 L0x7fffffffb6b2;
mov ymm10_a L0x7fffffffb6b4;
mov ymm10_b L0x7fffffffb6b6;
mov ymm10_c L0x7fffffffb6b8;
mov ymm10_d L0x7fffffffb6ba;
mov ymm10_e L0x7fffffffb6bc;
mov ymm10_f L0x7fffffffb6be;
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb6c0; Value = 0xfffe000100000002; PC = 0x555555558411 *)
mov ymm11_0 L0x7fffffffb6c0;
mov ymm11_1 L0x7fffffffb6c2;
mov ymm11_2 L0x7fffffffb6c4;
mov ymm11_3 L0x7fffffffb6c6;
mov ymm11_4 L0x7fffffffb6c8;
mov ymm11_5 L0x7fffffffb6ca;
mov ymm11_6 L0x7fffffffb6cc;
mov ymm11_7 L0x7fffffffb6ce;
mov ymm11_8 L0x7fffffffb6d0;
mov ymm11_9 L0x7fffffffb6d2;
mov ymm11_a L0x7fffffffb6d4;
mov ymm11_b L0x7fffffffb6d6;
mov ymm11_c L0x7fffffffb6d8;
mov ymm11_d L0x7fffffffb6da;
mov ymm11_e L0x7fffffffb6dc;
mov ymm11_f L0x7fffffffb6de;
(* vmovdqa 0x1e0(%rdx),%ymm3                       #! EA = L0x5555555608e0; Value = 0x0e290e290e290e29; PC = 0x555555558419 *)
mov ymm3_0 L0x5555555608e0;
mov ymm3_1 L0x5555555608e2;
mov ymm3_2 L0x5555555608e4;
mov ymm3_3 L0x5555555608e6;
mov ymm3_4 L0x5555555608e8;
mov ymm3_5 L0x5555555608ea;
mov ymm3_6 L0x5555555608ec;
mov ymm3_7 L0x5555555608ee;
mov ymm3_8 L0x5555555608f0;
mov ymm3_9 L0x5555555608f2;
mov ymm3_a L0x5555555608f4;
mov ymm3_b L0x5555555608f6;
mov ymm3_c L0x5555555608f8;
mov ymm3_d L0x5555555608fa;
mov ymm3_e L0x5555555608fc;
mov ymm3_f L0x5555555608fe;
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x555555558421 *)
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
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x555555558426 *)
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
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555555842b *)
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
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x555555558430 *)
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
(* vpmulhw %ymm3,%ymm8,%ymm8                       #! PC = 0x555555558435 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm3_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm3_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm3_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm3_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm3_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm3_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm3_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm3_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm3_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm3_9;
smull mulH_a mulLymm8_a ymm8_a ymm3_a;
smull mulH_b mulLymm8_b ymm8_b ymm3_b;
smull mulH_c mulLymm8_c ymm8_c ymm3_c;
smull mulH_d mulLymm8_d ymm8_d ymm3_d;
smull mulH_e mulLymm8_e ymm8_e ymm3_e;
smull mulH_f mulLymm8_f ymm8_f ymm3_f;
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
(* vpmulhw %ymm3,%ymm9,%ymm9                       #! PC = 0x555555558439 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm3_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm3_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm3_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm3_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm3_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm3_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm3_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm3_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm3_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm3_9;
smull mulH_a mulLymm9_a ymm9_a ymm3_a;
smull mulH_b mulLymm9_b ymm9_b ymm3_b;
smull mulH_c mulLymm9_c ymm9_c ymm3_c;
smull mulH_d mulLymm9_d ymm9_d ymm3_d;
smull mulH_e mulLymm9_e ymm9_e ymm3_e;
smull mulH_f mulLymm9_f ymm9_f ymm3_f;
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
(* vpmulhw %ymm3,%ymm10,%ymm10                     #! PC = 0x55555555843d *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm3_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm3_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm3_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm3_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm3_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm3_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm3_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm3_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm3_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm3_9;
smull mulH_a mulLymm10_a ymm10_a ymm3_a;
smull mulH_b mulLymm10_b ymm10_b ymm3_b;
smull mulH_c mulLymm10_c ymm10_c ymm3_c;
smull mulH_d mulLymm10_d ymm10_d ymm3_d;
smull mulH_e mulLymm10_e ymm10_e ymm3_e;
smull mulH_f mulLymm10_f ymm10_f ymm3_f;
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
(* vpmulhw %ymm3,%ymm11,%ymm11                     #! PC = 0x555555558441 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm3_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm3_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm3_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm3_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm3_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm3_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm3_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm3_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm3_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm3_9;
smull mulH_a mulLymm11_a ymm11_a ymm3_a;
smull mulH_b mulLymm11_b ymm11_b ymm3_b;
smull mulH_c mulLymm11_c ymm11_c ymm3_c;
smull mulH_d mulLymm11_d ymm11_d ymm3_d;
smull mulH_e mulLymm11_e ymm11_e ymm3_e;
smull mulH_f mulLymm11_f ymm11_f ymm3_f;
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
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb5e0; Value = 0xfffe0000f2caf2cb; PC = 0x555555558445 *)
mov ymm4_0 L0x7fffffffb5e0;
mov ymm4_1 L0x7fffffffb5e2;
mov ymm4_2 L0x7fffffffb5e4;
mov ymm4_3 L0x7fffffffb5e6;
mov ymm4_4 L0x7fffffffb5e8;
mov ymm4_5 L0x7fffffffb5ea;
mov ymm4_6 L0x7fffffffb5ec;
mov ymm4_7 L0x7fffffffb5ee;
mov ymm4_8 L0x7fffffffb5f0;
mov ymm4_9 L0x7fffffffb5f2;
mov ymm4_a L0x7fffffffb5f4;
mov ymm4_b L0x7fffffffb5f6;
mov ymm4_c L0x7fffffffb5f8;
mov ymm4_d L0x7fffffffb5fa;
mov ymm4_e L0x7fffffffb5fc;
mov ymm4_f L0x7fffffffb5fe;
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb600; Value = 0x0d37ffff0394fc6d; PC = 0x55555555844d *)
mov ymm5_0 L0x7fffffffb600;
mov ymm5_1 L0x7fffffffb602;
mov ymm5_2 L0x7fffffffb604;
mov ymm5_3 L0x7fffffffb606;
mov ymm5_4 L0x7fffffffb608;
mov ymm5_5 L0x7fffffffb60a;
mov ymm5_6 L0x7fffffffb60c;
mov ymm5_7 L0x7fffffffb60e;
mov ymm5_8 L0x7fffffffb610;
mov ymm5_9 L0x7fffffffb612;
mov ymm5_a L0x7fffffffb614;
mov ymm5_b L0x7fffffffb616;
mov ymm5_c L0x7fffffffb618;
mov ymm5_d L0x7fffffffb61a;
mov ymm5_e L0x7fffffffb61c;
mov ymm5_f L0x7fffffffb61e;
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb620; Value = 0x0d37f65c0391fc6c; PC = 0x555555558455 *)
mov ymm6_0 L0x7fffffffb620;
mov ymm6_1 L0x7fffffffb622;
mov ymm6_2 L0x7fffffffb624;
mov ymm6_3 L0x7fffffffb626;
mov ymm6_4 L0x7fffffffb628;
mov ymm6_5 L0x7fffffffb62a;
mov ymm6_6 L0x7fffffffb62c;
mov ymm6_7 L0x7fffffffb62e;
mov ymm6_8 L0x7fffffffb630;
mov ymm6_9 L0x7fffffffb632;
mov ymm6_a L0x7fffffffb634;
mov ymm6_b L0x7fffffffb636;
mov ymm6_c L0x7fffffffb638;
mov ymm6_d L0x7fffffffb63a;
mov ymm6_e L0x7fffffffb63c;
mov ymm6_f L0x7fffffffb63e;
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb640; Value = 0xfc6c09a2f2c6f2c8; PC = 0x55555555845d *)
mov ymm7_0 L0x7fffffffb640;
mov ymm7_1 L0x7fffffffb642;
mov ymm7_2 L0x7fffffffb644;
mov ymm7_3 L0x7fffffffb646;
mov ymm7_4 L0x7fffffffb648;
mov ymm7_5 L0x7fffffffb64a;
mov ymm7_6 L0x7fffffffb64c;
mov ymm7_7 L0x7fffffffb64e;
mov ymm7_8 L0x7fffffffb650;
mov ymm7_9 L0x7fffffffb652;
mov ymm7_a L0x7fffffffb654;
mov ymm7_b L0x7fffffffb656;
mov ymm7_c L0x7fffffffb658;
mov ymm7_d L0x7fffffffb65a;
mov ymm7_e L0x7fffffffb65c;
mov ymm7_f L0x7fffffffb65e;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558465 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558469 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555555846d *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558471 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
assert true && and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm9_0 = mulLymm13_0, mulLymm9_1 = mulLymm13_1,
mulLymm9_2 = mulLymm13_2, mulLymm9_3 = mulLymm13_3,
mulLymm9_4 = mulLymm13_4, mulLymm9_5 = mulLymm13_5,
mulLymm9_6 = mulLymm13_6, mulLymm9_7 = mulLymm13_7,
mulLymm9_8 = mulLymm13_8, mulLymm9_9 = mulLymm13_9,
mulLymm9_a = mulLymm13_a, mulLymm9_b = mulLymm13_b,
mulLymm9_c = mulLymm13_c, mulLymm9_d = mulLymm13_d,
mulLymm9_e = mulLymm13_e, mulLymm9_f = mulLymm13_f,
mulLymm10_0 = mulLymm14_0, mulLymm10_1 = mulLymm14_1,
mulLymm10_2 = mulLymm14_2, mulLymm10_3 = mulLymm14_3,
mulLymm10_4 = mulLymm14_4, mulLymm10_5 = mulLymm14_5,
mulLymm10_6 = mulLymm14_6, mulLymm10_7 = mulLymm14_7,
mulLymm10_8 = mulLymm14_8, mulLymm10_9 = mulLymm14_9,
mulLymm10_a = mulLymm14_a, mulLymm10_b = mulLymm14_b,
mulLymm10_c = mulLymm14_c, mulLymm10_d = mulLymm14_d,
mulLymm10_e = mulLymm14_e, mulLymm10_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x555555558475 *)
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
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555555847a *)
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
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555555847f *)
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
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555558484 *)
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
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555558489 *)
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
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555555848e *)
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
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555558493 *)
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
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555558498 *)
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
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555555849d *)
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
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x5555555584a2 *)
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
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x5555555584a7 *)
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
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x5555555584ac *)
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
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x5555555584b1 *)
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
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x5555555584b6 *)
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
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555584bb *)
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
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x5555555584c0 *)
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
(* ===== End of level 1, off 1 ===== *)

(* ecut 9, rcut 9 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*(x**1) + ymm3_2*(x**2) + ymm3_3*(x**3) +
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
    ymm6_c*(x**60) + ymm6_d*(x**61) + ymm6_e*(x**62) + ymm6_f*(x**63)
  )
  [10753, x**64 - (-67)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm8_1*(x**1) + ymm8_2*(x**2) + ymm8_3*(x**3) +
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
    ymm11_c*(x**60) + ymm11_d*(x**61) + ymm11_e*(x**62) + ymm11_f*(x**63)
  )
  [10753, x**64 - (67)]
] && and [
  (-(15370))@16 <s ymm3_0, ymm3_0 <s (15370)@16, (-(15370))@16 <s ymm3_1, ymm3_1 <s (15370)@16,
  (-(15370))@16 <s ymm3_2, ymm3_2 <s (15370)@16, (-(15370))@16 <s ymm3_3, ymm3_3 <s (15370)@16,
  (-(15370))@16 <s ymm3_4, ymm3_4 <s (15370)@16, (-(15370))@16 <s ymm3_5, ymm3_5 <s (15370)@16,
  (-(15370))@16 <s ymm3_6, ymm3_6 <s (15370)@16, (-(15370))@16 <s ymm3_7, ymm3_7 <s (15370)@16,
  (-(15370))@16 <s ymm3_8, ymm3_8 <s (15370)@16, (-(15370))@16 <s ymm3_9, ymm3_9 <s (15370)@16,
  (-(15370))@16 <s ymm3_a, ymm3_a <s (15370)@16, (-(15370))@16 <s ymm3_b, ymm3_b <s (15370)@16,
  (-(15370))@16 <s ymm3_c, ymm3_c <s (15370)@16, (-(15370))@16 <s ymm3_d, ymm3_d <s (15370)@16,
  (-(15370))@16 <s ymm3_e, ymm3_e <s (15370)@16, (-(15370))@16 <s ymm3_f, ymm3_f <s (15370)@16,
  (-(15370))@16 <s ymm4_0, ymm4_0 <s (15370)@16, (-(15370))@16 <s ymm4_1, ymm4_1 <s (15370)@16,
  (-(15370))@16 <s ymm4_2, ymm4_2 <s (15370)@16, (-(15370))@16 <s ymm4_3, ymm4_3 <s (15370)@16,
  (-(15370))@16 <s ymm4_4, ymm4_4 <s (15370)@16, (-(15370))@16 <s ymm4_5, ymm4_5 <s (15370)@16,
  (-(15370))@16 <s ymm4_6, ymm4_6 <s (15370)@16, (-(15370))@16 <s ymm4_7, ymm4_7 <s (15370)@16,
  (-(15370))@16 <s ymm4_8, ymm4_8 <s (15370)@16, (-(15370))@16 <s ymm4_9, ymm4_9 <s (15370)@16,
  (-(15370))@16 <s ymm4_a, ymm4_a <s (15370)@16, (-(15370))@16 <s ymm4_b, ymm4_b <s (15370)@16,
  (-(15370))@16 <s ymm4_c, ymm4_c <s (15370)@16, (-(15370))@16 <s ymm4_d, ymm4_d <s (15370)@16,
  (-(15370))@16 <s ymm4_e, ymm4_e <s (15370)@16, (-(15370))@16 <s ymm4_f, ymm4_f <s (15370)@16,
  (-(15370))@16 <s ymm5_0, ymm5_0 <s (15370)@16, (-(15370))@16 <s ymm5_1, ymm5_1 <s (15370)@16,
  (-(15370))@16 <s ymm5_2, ymm5_2 <s (15370)@16, (-(15370))@16 <s ymm5_3, ymm5_3 <s (15370)@16,
  (-(15370))@16 <s ymm5_4, ymm5_4 <s (15370)@16, (-(15370))@16 <s ymm5_5, ymm5_5 <s (15370)@16,
  (-(15370))@16 <s ymm5_6, ymm5_6 <s (15370)@16, (-(15370))@16 <s ymm5_7, ymm5_7 <s (15370)@16,
  (-(15370))@16 <s ymm5_8, ymm5_8 <s (15370)@16, (-(15370))@16 <s ymm5_9, ymm5_9 <s (15370)@16,
  (-(15370))@16 <s ymm5_a, ymm5_a <s (15370)@16, (-(15370))@16 <s ymm5_b, ymm5_b <s (15370)@16,
  (-(15370))@16 <s ymm5_c, ymm5_c <s (15370)@16, (-(15370))@16 <s ymm5_d, ymm5_d <s (15370)@16,
  (-(15370))@16 <s ymm5_e, ymm5_e <s (15370)@16, (-(15370))@16 <s ymm5_f, ymm5_f <s (15370)@16,
  (-(15370))@16 <s ymm6_0, ymm6_0 <s (15370)@16, (-(15370))@16 <s ymm6_1, ymm6_1 <s (15370)@16,
  (-(15370))@16 <s ymm6_2, ymm6_2 <s (15370)@16, (-(15370))@16 <s ymm6_3, ymm6_3 <s (15370)@16,
  (-(15370))@16 <s ymm6_4, ymm6_4 <s (15370)@16, (-(15370))@16 <s ymm6_5, ymm6_5 <s (15370)@16,
  (-(15370))@16 <s ymm6_6, ymm6_6 <s (15370)@16, (-(15370))@16 <s ymm6_7, ymm6_7 <s (15370)@16,
  (-(15370))@16 <s ymm6_8, ymm6_8 <s (15370)@16, (-(15370))@16 <s ymm6_9, ymm6_9 <s (15370)@16,
  (-(15370))@16 <s ymm6_a, ymm6_a <s (15370)@16, (-(15370))@16 <s ymm6_b, ymm6_b <s (15370)@16,
  (-(15370))@16 <s ymm6_c, ymm6_c <s (15370)@16, (-(15370))@16 <s ymm6_d, ymm6_d <s (15370)@16,
  (-(15370))@16 <s ymm6_e, ymm6_e <s (15370)@16, (-(15370))@16 <s ymm6_f, ymm6_f <s (15370)@16,
  (-(15370))@16 <s ymm8_0, ymm8_0 <s (15370)@16, (-(15370))@16 <s ymm8_1, ymm8_1 <s (15370)@16,
  (-(15370))@16 <s ymm8_2, ymm8_2 <s (15370)@16, (-(15370))@16 <s ymm8_3, ymm8_3 <s (15370)@16,
  (-(15370))@16 <s ymm8_4, ymm8_4 <s (15370)@16, (-(15370))@16 <s ymm8_5, ymm8_5 <s (15370)@16,
  (-(15370))@16 <s ymm8_6, ymm8_6 <s (15370)@16, (-(15370))@16 <s ymm8_7, ymm8_7 <s (15370)@16,
  (-(15370))@16 <s ymm8_8, ymm8_8 <s (15370)@16, (-(15370))@16 <s ymm8_9, ymm8_9 <s (15370)@16,
  (-(15370))@16 <s ymm8_a, ymm8_a <s (15370)@16, (-(15370))@16 <s ymm8_b, ymm8_b <s (15370)@16,
  (-(15370))@16 <s ymm8_c, ymm8_c <s (15370)@16, (-(15370))@16 <s ymm8_d, ymm8_d <s (15370)@16,
  (-(15370))@16 <s ymm8_e, ymm8_e <s (15370)@16, (-(15370))@16 <s ymm8_f, ymm8_f <s (15370)@16,
  (-(15370))@16 <s ymm9_0, ymm9_0 <s (15370)@16, (-(15370))@16 <s ymm9_1, ymm9_1 <s (15370)@16,
  (-(15370))@16 <s ymm9_2, ymm9_2 <s (15370)@16, (-(15370))@16 <s ymm9_3, ymm9_3 <s (15370)@16,
  (-(15370))@16 <s ymm9_4, ymm9_4 <s (15370)@16, (-(15370))@16 <s ymm9_5, ymm9_5 <s (15370)@16,
  (-(15370))@16 <s ymm9_6, ymm9_6 <s (15370)@16, (-(15370))@16 <s ymm9_7, ymm9_7 <s (15370)@16,
  (-(15370))@16 <s ymm9_8, ymm9_8 <s (15370)@16, (-(15370))@16 <s ymm9_9, ymm9_9 <s (15370)@16,
  (-(15370))@16 <s ymm9_a, ymm9_a <s (15370)@16, (-(15370))@16 <s ymm9_b, ymm9_b <s (15370)@16,
  (-(15370))@16 <s ymm9_c, ymm9_c <s (15370)@16, (-(15370))@16 <s ymm9_d, ymm9_d <s (15370)@16,
  (-(15370))@16 <s ymm9_e, ymm9_e <s (15370)@16, (-(15370))@16 <s ymm9_f, ymm9_f <s (15370)@16,
  (-(15370))@16 <s ymm10_0, ymm10_0 <s (15370)@16, (-(15370))@16 <s ymm10_1, ymm10_1 <s (15370)@16,
  (-(15370))@16 <s ymm10_2, ymm10_2 <s (15370)@16, (-(15370))@16 <s ymm10_3, ymm10_3 <s (15370)@16,
  (-(15370))@16 <s ymm10_4, ymm10_4 <s (15370)@16, (-(15370))@16 <s ymm10_5, ymm10_5 <s (15370)@16,
  (-(15370))@16 <s ymm10_6, ymm10_6 <s (15370)@16, (-(15370))@16 <s ymm10_7, ymm10_7 <s (15370)@16,
  (-(15370))@16 <s ymm10_8, ymm10_8 <s (15370)@16, (-(15370))@16 <s ymm10_9, ymm10_9 <s (15370)@16,
  (-(15370))@16 <s ymm10_a, ymm10_a <s (15370)@16, (-(15370))@16 <s ymm10_b, ymm10_b <s (15370)@16,
  (-(15370))@16 <s ymm10_c, ymm10_c <s (15370)@16, (-(15370))@16 <s ymm10_d, ymm10_d <s (15370)@16,
  (-(15370))@16 <s ymm10_e, ymm10_e <s (15370)@16, (-(15370))@16 <s ymm10_f, ymm10_f <s (15370)@16,
  (-(15370))@16 <s ymm11_0, ymm11_0 <s (15370)@16, (-(15370))@16 <s ymm11_1, ymm11_1 <s (15370)@16,
  (-(15370))@16 <s ymm11_2, ymm11_2 <s (15370)@16, (-(15370))@16 <s ymm11_3, ymm11_3 <s (15370)@16,
  (-(15370))@16 <s ymm11_4, ymm11_4 <s (15370)@16, (-(15370))@16 <s ymm11_5, ymm11_5 <s (15370)@16,
  (-(15370))@16 <s ymm11_6, ymm11_6 <s (15370)@16, (-(15370))@16 <s ymm11_7, ymm11_7 <s (15370)@16,
  (-(15370))@16 <s ymm11_8, ymm11_8 <s (15370)@16, (-(15370))@16 <s ymm11_9, ymm11_9 <s (15370)@16,
  (-(15370))@16 <s ymm11_a, ymm11_a <s (15370)@16, (-(15370))@16 <s ymm11_b, ymm11_b <s (15370)@16,
  (-(15370))@16 <s ymm11_c, ymm11_c <s (15370)@16, (-(15370))@16 <s ymm11_d, ymm11_d <s (15370)@16,
  (-(15370))@16 <s ymm11_e, ymm11_e <s (15370)@16, (-(15370))@16 <s ymm11_f, ymm11_f <s (15370)@16
];

(* ===== Start of level 2, off 1 ===== *)
(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x5555555584c5 *)
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
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x5555555584cb *)
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
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x5555555584d1 *)
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
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x5555555584d7 *)
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
(* vmovdqa 0x200(%rdx),%ymm15                      #! EA = L0x555555560900; Value = 0x3998399839983998; PC = 0x5555555584dd *)
mov ymm15_0 L0x555555560900;
mov ymm15_1 L0x555555560902;
mov ymm15_2 L0x555555560904;
mov ymm15_3 L0x555555560906;
mov ymm15_4 L0x555555560908;
mov ymm15_5 L0x55555556090a;
mov ymm15_6 L0x55555556090c;
mov ymm15_7 L0x55555556090e;
mov ymm15_8 L0x555555560910;
mov ymm15_9 L0x555555560912;
mov ymm15_a L0x555555560914;
mov ymm15_b L0x555555560916;
mov ymm15_c L0x555555560918;
mov ymm15_d L0x55555556091a;
mov ymm15_e L0x55555556091c;
mov ymm15_f L0x55555556091e;
(* vmovdqa 0x220(%rdx),%ymm6                       #! EA = L0x555555560920; Value = 0x0998099809980998; PC = 0x5555555584e5 *)
mov ymm6_0 L0x555555560920;
mov ymm6_1 L0x555555560922;
mov ymm6_2 L0x555555560924;
mov ymm6_3 L0x555555560926;
mov ymm6_4 L0x555555560928;
mov ymm6_5 L0x55555556092a;
mov ymm6_6 L0x55555556092c;
mov ymm6_7 L0x55555556092e;
mov ymm6_8 L0x555555560930;
mov ymm6_9 L0x555555560932;
mov ymm6_a L0x555555560934;
mov ymm6_b L0x555555560936;
mov ymm6_c L0x555555560938;
mov ymm6_d L0x55555556093a;
mov ymm6_e L0x55555556093c;
mov ymm6_f L0x55555556093e;
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x5555555584ed *)
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
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x5555555584f2 *)
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
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x5555555584f7 *)
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
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x5555555584fc *)
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
(* vpmulhw %ymm6,%ymm7,%ymm7                       #! PC = 0x555555558501 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm6_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm6_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm6_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm6_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm6_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm6_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm6_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm6_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm6_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm6_9;
smull mulH_a mulLymm7_a ymm7_a ymm6_a;
smull mulH_b mulLymm7_b ymm7_b ymm6_b;
smull mulH_c mulLymm7_c ymm7_c ymm6_c;
smull mulH_d mulLymm7_d ymm7_d ymm6_d;
smull mulH_e mulLymm7_e ymm7_e ymm6_e;
smull mulH_f mulLymm7_f ymm7_f ymm6_f;
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
(* vpmulhw %ymm6,%ymm10,%ymm10                     #! PC = 0x555555558505 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm6_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm6_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm6_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm6_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm6_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm6_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm6_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm6_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm6_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm6_9;
smull mulH_a mulLymm10_a ymm10_a ymm6_a;
smull mulH_b mulLymm10_b ymm10_b ymm6_b;
smull mulH_c mulLymm10_c ymm10_c ymm6_c;
smull mulH_d mulLymm10_d ymm10_d ymm6_d;
smull mulH_e mulLymm10_e ymm10_e ymm6_e;
smull mulH_f mulLymm10_f ymm10_f ymm6_f;
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
(* vpmulhw %ymm6,%ymm5,%ymm5                       #! PC = 0x555555558509 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm6_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm6_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm6_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm6_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm6_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm6_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm6_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm6_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm6_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm6_9;
smull mulH_a mulLymm5_a ymm5_a ymm6_a;
smull mulH_b mulLymm5_b ymm5_b ymm6_b;
smull mulH_c mulLymm5_c ymm5_c ymm6_c;
smull mulH_d mulLymm5_d ymm5_d ymm6_d;
smull mulH_e mulLymm5_e ymm5_e ymm6_e;
smull mulH_f mulLymm5_f ymm5_f ymm6_f;
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
(* vpmulhw %ymm6,%ymm11,%ymm11                     #! PC = 0x55555555850d *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm6_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm6_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm6_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm6_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm6_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm6_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm6_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm6_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm6_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm6_9;
smull mulH_a mulLymm11_a ymm11_a ymm6_a;
smull mulH_b mulLymm11_b ymm11_b ymm6_b;
smull mulH_c mulLymm11_c ymm11_c ymm6_c;
smull mulH_d mulLymm11_d ymm11_d ymm6_d;
smull mulH_e mulLymm11_e ymm11_e ymm6_e;
smull mulH_f mulLymm11_f ymm11_f ymm6_f;
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
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x555555558511 *)
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
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x555555558517 *)
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
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555555851d *)
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
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x555555558523 *)
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558529 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555555852d *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555558531 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558535 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f,
mulLymm10_0 = mulLymm13_0, mulLymm10_1 = mulLymm13_1,
mulLymm10_2 = mulLymm13_2, mulLymm10_3 = mulLymm13_3,
mulLymm10_4 = mulLymm13_4, mulLymm10_5 = mulLymm13_5,
mulLymm10_6 = mulLymm13_6, mulLymm10_7 = mulLymm13_7,
mulLymm10_8 = mulLymm13_8, mulLymm10_9 = mulLymm13_9,
mulLymm10_a = mulLymm13_a, mulLymm10_b = mulLymm13_b,
mulLymm10_c = mulLymm13_c, mulLymm10_d = mulLymm13_d,
mulLymm10_e = mulLymm13_e, mulLymm10_f = mulLymm13_f,
mulLymm5_0 = mulLymm14_0, mulLymm5_1 = mulLymm14_1,
mulLymm5_2 = mulLymm14_2, mulLymm5_3 = mulLymm14_3,
mulLymm5_4 = mulLymm14_4, mulLymm5_5 = mulLymm14_5,
mulLymm5_6 = mulLymm14_6, mulLymm5_7 = mulLymm14_7,
mulLymm5_8 = mulLymm14_8, mulLymm5_9 = mulLymm14_9,
mulLymm5_a = mulLymm14_a, mulLymm5_b = mulLymm14_b,
mulLymm5_c = mulLymm14_c, mulLymm5_d = mulLymm14_d,
mulLymm5_e = mulLymm14_e, mulLymm5_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f,
mulLymm10_0 = mulLymm13_0, mulLymm10_1 = mulLymm13_1,
mulLymm10_2 = mulLymm13_2, mulLymm10_3 = mulLymm13_3,
mulLymm10_4 = mulLymm13_4, mulLymm10_5 = mulLymm13_5,
mulLymm10_6 = mulLymm13_6, mulLymm10_7 = mulLymm13_7,
mulLymm10_8 = mulLymm13_8, mulLymm10_9 = mulLymm13_9,
mulLymm10_a = mulLymm13_a, mulLymm10_b = mulLymm13_b,
mulLymm10_c = mulLymm13_c, mulLymm10_d = mulLymm13_d,
mulLymm10_e = mulLymm13_e, mulLymm10_f = mulLymm13_f,
mulLymm5_0 = mulLymm14_0, mulLymm5_1 = mulLymm14_1,
mulLymm5_2 = mulLymm14_2, mulLymm5_3 = mulLymm14_3,
mulLymm5_4 = mulLymm14_4, mulLymm5_5 = mulLymm14_5,
mulLymm5_6 = mulLymm14_6, mulLymm5_7 = mulLymm14_7,
mulLymm5_8 = mulLymm14_8, mulLymm5_9 = mulLymm14_9,
mulLymm5_a = mulLymm14_a, mulLymm5_b = mulLymm14_b,
mulLymm5_c = mulLymm14_c, mulLymm5_d = mulLymm14_d,
mulLymm5_e = mulLymm14_e, mulLymm5_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x555555558539 *)
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
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555555853d *)
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
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x555555558541 *)
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
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x555555558546 *)
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
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555555854b *)
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
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555555854f *)
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
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x555555558553 *)
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
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x555555558558 *)
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
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555555855d *)
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
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x555555558562 *)
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
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555558567 *)
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
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555555856c *)
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
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x555555558571 *)
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
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555558576 *)
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
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555555857b *)
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
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555558580 *)
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
(* ===== End of level 2, off 1 ===== *)

(* ecut 10, rcut 10 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_0 + ymm4_1*(x**1) + ymm4_2*(x**2) + ymm4_3*(x**3) +
    ymm4_4*(x**4) + ymm4_5*(x**5) + ymm4_6*(x**6) + ymm4_7*(x**7) +
    ymm6_0*(x**8) + ymm6_1*(x**9) + ymm6_2*(x**10) + ymm6_3*(x**11) +
    ymm6_4*(x**12) + ymm6_5*(x**13) + ymm6_6*(x**14) + ymm6_7*(x**15) +
    ymm8_0*(x**16) + ymm8_1*(x**17) + ymm8_2*(x**18) + ymm8_3*(x**19) +
    ymm8_4*(x**20) + ymm8_5*(x**21) + ymm8_6*(x**22) + ymm8_7*(x**23) +
    ymm3_0*(x**24) + ymm3_1*(x**25) + ymm3_2*(x**26) + ymm3_3*(x**27) +
    ymm3_4*(x**28) + ymm3_5*(x**29) + ymm3_6*(x**30) + ymm3_7*(x**31)
  )
  [10753, x**32 - (-4679)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*(x**1) + ymm7_2*(x**2) + ymm7_3*(x**3) +
    ymm7_4*(x**4) + ymm7_5*(x**5) + ymm7_6*(x**6) + ymm7_7*(x**7) +
    ymm10_0*(x**8) + ymm10_1*(x**9) + ymm10_2*(x**10) + ymm10_3*(x**11) +
    ymm10_4*(x**12) + ymm10_5*(x**13) + ymm10_6*(x**14) + ymm10_7*(x**15) +
    ymm5_0*(x**16) + ymm5_1*(x**17) + ymm5_2*(x**18) + ymm5_3*(x**19) +
    ymm5_4*(x**20) + ymm5_5*(x**21) + ymm5_6*(x**22) + ymm5_7*(x**23) +
    ymm11_0*(x**24) + ymm11_1*(x**25) + ymm11_2*(x**26) + ymm11_3*(x**27) +
    ymm11_4*(x**28) + ymm11_5*(x**29) + ymm11_6*(x**30) + ymm11_7*(x**31)
  )
  [10753, x**32 - (4679)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_8 + ymm4_9*(x**1) + ymm4_a*(x**2) + ymm4_b*(x**3) +
    ymm4_c*(x**4) + ymm4_d*(x**5) + ymm4_e*(x**6) + ymm4_f*(x**7) +
    ymm6_8*(x**8) + ymm6_9*(x**9) + ymm6_a*(x**10) + ymm6_b*(x**11) +
    ymm6_c*(x**12) + ymm6_d*(x**13) + ymm6_e*(x**14) + ymm6_f*(x**15) +
    ymm8_8*(x**16) + ymm8_9*(x**17) + ymm8_a*(x**18) + ymm8_b*(x**19) +
    ymm8_c*(x**20) + ymm8_d*(x**21) + ymm8_e*(x**22) + ymm8_f*(x**23) +
    ymm3_8*(x**24) + ymm3_9*(x**25) + ymm3_a*(x**26) + ymm3_b*(x**27) +
    ymm3_c*(x**28) + ymm3_d*(x**29) + ymm3_e*(x**30) + ymm3_f*(x**31)
  )
  [10753, x**32 - (3422)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*(x**1) + ymm7_a*(x**2) + ymm7_b*(x**3) +
    ymm7_c*(x**4) + ymm7_d*(x**5) + ymm7_e*(x**6) + ymm7_f*(x**7) +
    ymm10_8*(x**8) + ymm10_9*(x**9) + ymm10_a*(x**10) + ymm10_b*(x**11) +
    ymm10_c*(x**12) + ymm10_d*(x**13) + ymm10_e*(x**14) + ymm10_f*(x**15) +
    ymm5_8*(x**16) + ymm5_9*(x**17) + ymm5_a*(x**18) + ymm5_b*(x**19) +
    ymm5_c*(x**20) + ymm5_d*(x**21) + ymm5_e*(x**22) + ymm5_f*(x**23) +
    ymm11_8*(x**24) + ymm11_9*(x**25) + ymm11_a*(x**26) + ymm11_b*(x**27) +
    ymm11_c*(x**28) + ymm11_d*(x**29) + ymm11_e*(x**30) + ymm11_f*(x**31)
  )
  [10753, x**32 - (-3422)]
] && and [
  (-(20812))@16 <s ymm4_0, ymm4_0 <s (20812)@16, (-(20812))@16 <s ymm4_1, ymm4_1 <s (20812)@16,
  (-(20812))@16 <s ymm4_2, ymm4_2 <s (20812)@16, (-(20812))@16 <s ymm4_3, ymm4_3 <s (20812)@16,
  (-(20812))@16 <s ymm4_4, ymm4_4 <s (20812)@16, (-(20812))@16 <s ymm4_5, ymm4_5 <s (20812)@16,
  (-(20812))@16 <s ymm4_6, ymm4_6 <s (20812)@16, (-(20812))@16 <s ymm4_7, ymm4_7 <s (20812)@16,
  (-(20812))@16 <s ymm6_0, ymm6_0 <s (20812)@16, (-(20812))@16 <s ymm6_1, ymm6_1 <s (20812)@16,
  (-(20812))@16 <s ymm6_2, ymm6_2 <s (20812)@16, (-(20812))@16 <s ymm6_3, ymm6_3 <s (20812)@16,
  (-(20812))@16 <s ymm6_4, ymm6_4 <s (20812)@16, (-(20812))@16 <s ymm6_5, ymm6_5 <s (20812)@16,
  (-(20812))@16 <s ymm6_6, ymm6_6 <s (20812)@16, (-(20812))@16 <s ymm6_7, ymm6_7 <s (20812)@16,
  (-(20812))@16 <s ymm8_0, ymm8_0 <s (20812)@16, (-(20812))@16 <s ymm8_1, ymm8_1 <s (20812)@16,
  (-(20812))@16 <s ymm8_2, ymm8_2 <s (20812)@16, (-(20812))@16 <s ymm8_3, ymm8_3 <s (20812)@16,
  (-(20812))@16 <s ymm8_4, ymm8_4 <s (20812)@16, (-(20812))@16 <s ymm8_5, ymm8_5 <s (20812)@16,
  (-(20812))@16 <s ymm8_6, ymm8_6 <s (20812)@16, (-(20812))@16 <s ymm8_7, ymm8_7 <s (20812)@16,
  (-(20812))@16 <s ymm3_0, ymm3_0 <s (20812)@16, (-(20812))@16 <s ymm3_1, ymm3_1 <s (20812)@16,
  (-(20812))@16 <s ymm3_2, ymm3_2 <s (20812)@16, (-(20812))@16 <s ymm3_3, ymm3_3 <s (20812)@16,
  (-(20812))@16 <s ymm3_4, ymm3_4 <s (20812)@16, (-(20812))@16 <s ymm3_5, ymm3_5 <s (20812)@16,
  (-(20812))@16 <s ymm3_6, ymm3_6 <s (20812)@16, (-(20812))@16 <s ymm3_7, ymm3_7 <s (20812)@16,
  (-(20812))@16 <s ymm7_0, ymm7_0 <s (20812)@16, (-(20812))@16 <s ymm7_1, ymm7_1 <s (20812)@16,
  (-(20812))@16 <s ymm7_2, ymm7_2 <s (20812)@16, (-(20812))@16 <s ymm7_3, ymm7_3 <s (20812)@16,
  (-(20812))@16 <s ymm7_4, ymm7_4 <s (20812)@16, (-(20812))@16 <s ymm7_5, ymm7_5 <s (20812)@16,
  (-(20812))@16 <s ymm7_6, ymm7_6 <s (20812)@16, (-(20812))@16 <s ymm7_7, ymm7_7 <s (20812)@16,
  (-(20812))@16 <s ymm10_0, ymm10_0 <s (20812)@16, (-(20812))@16 <s ymm10_1, ymm10_1 <s (20812)@16,
  (-(20812))@16 <s ymm10_2, ymm10_2 <s (20812)@16, (-(20812))@16 <s ymm10_3, ymm10_3 <s (20812)@16,
  (-(20812))@16 <s ymm10_4, ymm10_4 <s (20812)@16, (-(20812))@16 <s ymm10_5, ymm10_5 <s (20812)@16,
  (-(20812))@16 <s ymm10_6, ymm10_6 <s (20812)@16, (-(20812))@16 <s ymm10_7, ymm10_7 <s (20812)@16,
  (-(20812))@16 <s ymm5_0, ymm5_0 <s (20812)@16, (-(20812))@16 <s ymm5_1, ymm5_1 <s (20812)@16,
  (-(20812))@16 <s ymm5_2, ymm5_2 <s (20812)@16, (-(20812))@16 <s ymm5_3, ymm5_3 <s (20812)@16,
  (-(20812))@16 <s ymm5_4, ymm5_4 <s (20812)@16, (-(20812))@16 <s ymm5_5, ymm5_5 <s (20812)@16,
  (-(20812))@16 <s ymm5_6, ymm5_6 <s (20812)@16, (-(20812))@16 <s ymm5_7, ymm5_7 <s (20812)@16,
  (-(20812))@16 <s ymm11_0, ymm11_0 <s (20812)@16, (-(20812))@16 <s ymm11_1, ymm11_1 <s (20812)@16,
  (-(20812))@16 <s ymm11_2, ymm11_2 <s (20812)@16, (-(20812))@16 <s ymm11_3, ymm11_3 <s (20812)@16,
  (-(20812))@16 <s ymm11_4, ymm11_4 <s (20812)@16, (-(20812))@16 <s ymm11_5, ymm11_5 <s (20812)@16,
  (-(20812))@16 <s ymm11_6, ymm11_6 <s (20812)@16, (-(20812))@16 <s ymm11_7, ymm11_7 <s (20812)@16,
  (-(20822))@16 <s ymm4_8, ymm4_8 <s (20822)@16, (-(20822))@16 <s ymm4_9, ymm4_9 <s (20822)@16,
  (-(20822))@16 <s ymm4_a, ymm4_a <s (20822)@16, (-(20822))@16 <s ymm4_b, ymm4_b <s (20822)@16,
  (-(20822))@16 <s ymm4_c, ymm4_c <s (20822)@16, (-(20822))@16 <s ymm4_d, ymm4_d <s (20822)@16,
  (-(20822))@16 <s ymm4_e, ymm4_e <s (20822)@16, (-(20822))@16 <s ymm4_f, ymm4_f <s (20822)@16,
  (-(20822))@16 <s ymm6_8, ymm6_8 <s (20822)@16, (-(20822))@16 <s ymm6_9, ymm6_9 <s (20822)@16,
  (-(20822))@16 <s ymm6_a, ymm6_a <s (20822)@16, (-(20822))@16 <s ymm6_b, ymm6_b <s (20822)@16,
  (-(20822))@16 <s ymm6_c, ymm6_c <s (20822)@16, (-(20822))@16 <s ymm6_d, ymm6_d <s (20822)@16,
  (-(20822))@16 <s ymm6_e, ymm6_e <s (20822)@16, (-(20822))@16 <s ymm6_f, ymm6_f <s (20822)@16,
  (-(20822))@16 <s ymm8_8, ymm8_8 <s (20822)@16, (-(20822))@16 <s ymm8_9, ymm8_9 <s (20822)@16,
  (-(20822))@16 <s ymm8_a, ymm8_a <s (20822)@16, (-(20822))@16 <s ymm8_b, ymm8_b <s (20822)@16,
  (-(20822))@16 <s ymm8_c, ymm8_c <s (20822)@16, (-(20822))@16 <s ymm8_d, ymm8_d <s (20822)@16,
  (-(20822))@16 <s ymm8_e, ymm8_e <s (20822)@16, (-(20822))@16 <s ymm8_f, ymm8_f <s (20822)@16,
  (-(20822))@16 <s ymm3_8, ymm3_8 <s (20822)@16, (-(20822))@16 <s ymm3_9, ymm3_9 <s (20822)@16,
  (-(20822))@16 <s ymm3_a, ymm3_a <s (20822)@16, (-(20822))@16 <s ymm3_b, ymm3_b <s (20822)@16,
  (-(20822))@16 <s ymm3_c, ymm3_c <s (20822)@16, (-(20822))@16 <s ymm3_d, ymm3_d <s (20822)@16,
  (-(20822))@16 <s ymm3_e, ymm3_e <s (20822)@16, (-(20822))@16 <s ymm3_f, ymm3_f <s (20822)@16,
  (-(20822))@16 <s ymm7_8, ymm7_8 <s (20822)@16, (-(20822))@16 <s ymm7_9, ymm7_9 <s (20822)@16,
  (-(20822))@16 <s ymm7_a, ymm7_a <s (20822)@16, (-(20822))@16 <s ymm7_b, ymm7_b <s (20822)@16,
  (-(20822))@16 <s ymm7_c, ymm7_c <s (20822)@16, (-(20822))@16 <s ymm7_d, ymm7_d <s (20822)@16,
  (-(20822))@16 <s ymm7_e, ymm7_e <s (20822)@16, (-(20822))@16 <s ymm7_f, ymm7_f <s (20822)@16,
  (-(20822))@16 <s ymm10_8, ymm10_8 <s (20822)@16, (-(20822))@16 <s ymm10_9, ymm10_9 <s (20822)@16,
  (-(20822))@16 <s ymm10_a, ymm10_a <s (20822)@16, (-(20822))@16 <s ymm10_b, ymm10_b <s (20822)@16,
  (-(20822))@16 <s ymm10_c, ymm10_c <s (20822)@16, (-(20822))@16 <s ymm10_d, ymm10_d <s (20822)@16,
  (-(20822))@16 <s ymm10_e, ymm10_e <s (20822)@16, (-(20822))@16 <s ymm10_f, ymm10_f <s (20822)@16,
  (-(20822))@16 <s ymm5_8, ymm5_8 <s (20822)@16, (-(20822))@16 <s ymm5_9, ymm5_9 <s (20822)@16,
  (-(20822))@16 <s ymm5_a, ymm5_a <s (20822)@16, (-(20822))@16 <s ymm5_b, ymm5_b <s (20822)@16,
  (-(20822))@16 <s ymm5_c, ymm5_c <s (20822)@16, (-(20822))@16 <s ymm5_d, ymm5_d <s (20822)@16,
  (-(20822))@16 <s ymm5_e, ymm5_e <s (20822)@16, (-(20822))@16 <s ymm5_f, ymm5_f <s (20822)@16,
  (-(20822))@16 <s ymm11_8, ymm11_8 <s (20822)@16, (-(20822))@16 <s ymm11_9, ymm11_9 <s (20822)@16,
  (-(20822))@16 <s ymm11_a, ymm11_a <s (20822)@16, (-(20822))@16 <s ymm11_b, ymm11_b <s (20822)@16,
  (-(20822))@16 <s ymm11_c, ymm11_c <s (20822)@16, (-(20822))@16 <s ymm11_d, ymm11_d <s (20822)@16,
  (-(20822))@16 <s ymm11_e, ymm11_e <s (20822)@16, (-(20822))@16 <s ymm11_f, ymm11_f <s (20822)@16
];

(* ===== Start of level 3, off 1 ===== *)
(* vpunpcklqdq %ymm7,%ymm4,%ymm9                   #! PC = 0x555555558585 *)
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
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x555555558589 *)
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
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555555858d *)
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
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x555555558592 *)
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
(* vpunpcklqdq %ymm5,%ymm8,%ymm6                   #! PC = 0x555555558597 *)
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
mov ymm6_0 lqdq_0;
mov ymm6_1 lqdq_1;
mov ymm6_2 lqdq_2;
mov ymm6_3 lqdq_3;
mov ymm6_4 lqdq_4;
mov ymm6_5 lqdq_5;
mov ymm6_6 lqdq_6;
mov ymm6_7 lqdq_7;
mov ymm6_8 lqdq_8;
mov ymm6_9 lqdq_9;
mov ymm6_a lqdq_a;
mov ymm6_b lqdq_b;
mov ymm6_c lqdq_c;
mov ymm6_d lqdq_d;
mov ymm6_e lqdq_e;
mov ymm6_f lqdq_f;
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555555859b *)
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
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555555859f *)
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
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x5555555585a4 *)
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
(* vpmullw 0x440(%rdx),%ymm9,%ymm12                #! EA = L0x555555560b40; Value = 0xa9e9de92f8c5fff7; PC = 0x5555555585a9 *)
smull mulHymm9_0 mulL_0 L0x555555560b40 ymm9_0;
smull mulHymm9_1 mulL_1 L0x555555560b42 ymm9_1;
smull mulHymm9_2 mulL_2 L0x555555560b44 ymm9_2;
smull mulHymm9_3 mulL_3 L0x555555560b46 ymm9_3;
smull mulHymm9_4 mulL_4 L0x555555560b48 ymm9_4;
smull mulHymm9_5 mulL_5 L0x555555560b4a ymm9_5;
smull mulHymm9_6 mulL_6 L0x555555560b4c ymm9_6;
smull mulHymm9_7 mulL_7 L0x555555560b4e ymm9_7;
smull mulHymm9_8 mulL_8 L0x555555560b50 ymm9_8;
smull mulHymm9_9 mulL_9 L0x555555560b52 ymm9_9;
smull mulHymm9_a mulL_a L0x555555560b54 ymm9_a;
smull mulHymm9_b mulL_b L0x555555560b56 ymm9_b;
smull mulHymm9_c mulL_c L0x555555560b58 ymm9_c;
smull mulHymm9_d mulL_d L0x555555560b5a ymm9_d;
smull mulHymm9_e mulL_e L0x555555560b5c ymm9_e;
smull mulHymm9_f mulL_f L0x555555560b5e ymm9_f;
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
(* vpmullw 0x480(%rdx),%ymm7,%ymm13                #! EA = L0x555555560b80; Value = 0xedf060a7b4f106bc; PC = 0x5555555585b1 *)
smull mulHymm7_0 mulL_0 L0x555555560b80 ymm7_0;
smull mulHymm7_1 mulL_1 L0x555555560b82 ymm7_1;
smull mulHymm7_2 mulL_2 L0x555555560b84 ymm7_2;
smull mulHymm7_3 mulL_3 L0x555555560b86 ymm7_3;
smull mulHymm7_4 mulL_4 L0x555555560b88 ymm7_4;
smull mulHymm7_5 mulL_5 L0x555555560b8a ymm7_5;
smull mulHymm7_6 mulL_6 L0x555555560b8c ymm7_6;
smull mulHymm7_7 mulL_7 L0x555555560b8e ymm7_7;
smull mulHymm7_8 mulL_8 L0x555555560b90 ymm7_8;
smull mulHymm7_9 mulL_9 L0x555555560b92 ymm7_9;
smull mulHymm7_a mulL_a L0x555555560b94 ymm7_a;
smull mulHymm7_b mulL_b L0x555555560b96 ymm7_b;
smull mulHymm7_c mulL_c L0x555555560b98 ymm7_c;
smull mulHymm7_d mulL_d L0x555555560b9a ymm7_d;
smull mulHymm7_e mulL_e L0x555555560b9c ymm7_e;
smull mulHymm7_f mulL_f L0x555555560b9e ymm7_f;
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
(* vpmullw 0x4c0(%rdx),%ymm4,%ymm14                #! EA = L0x555555560bc0; Value = 0x40febbe0397eb00b; PC = 0x5555555585b9 *)
smull mulHymm4_0 mulL_0 L0x555555560bc0 ymm4_0;
smull mulHymm4_1 mulL_1 L0x555555560bc2 ymm4_1;
smull mulHymm4_2 mulL_2 L0x555555560bc4 ymm4_2;
smull mulHymm4_3 mulL_3 L0x555555560bc6 ymm4_3;
smull mulHymm4_4 mulL_4 L0x555555560bc8 ymm4_4;
smull mulHymm4_5 mulL_5 L0x555555560bca ymm4_5;
smull mulHymm4_6 mulL_6 L0x555555560bcc ymm4_6;
smull mulHymm4_7 mulL_7 L0x555555560bce ymm4_7;
smull mulHymm4_8 mulL_8 L0x555555560bd0 ymm4_8;
smull mulHymm4_9 mulL_9 L0x555555560bd2 ymm4_9;
smull mulHymm4_a mulL_a L0x555555560bd4 ymm4_a;
smull mulHymm4_b mulL_b L0x555555560bd6 ymm4_b;
smull mulHymm4_c mulL_c L0x555555560bd8 ymm4_c;
smull mulHymm4_d mulL_d L0x555555560bda ymm4_d;
smull mulHymm4_e mulL_e L0x555555560bdc ymm4_e;
smull mulHymm4_f mulL_f L0x555555560bde ymm4_f;
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
(* vpmullw 0x500(%rdx),%ymm10,%ymm15               #! EA = L0x555555560c00; Value = 0xb7b6c124a283172a; PC = 0x5555555585c1 *)
smull mulHymm10_0 mulL_0 L0x555555560c00 ymm10_0;
smull mulHymm10_1 mulL_1 L0x555555560c02 ymm10_1;
smull mulHymm10_2 mulL_2 L0x555555560c04 ymm10_2;
smull mulHymm10_3 mulL_3 L0x555555560c06 ymm10_3;
smull mulHymm10_4 mulL_4 L0x555555560c08 ymm10_4;
smull mulHymm10_5 mulL_5 L0x555555560c0a ymm10_5;
smull mulHymm10_6 mulL_6 L0x555555560c0c ymm10_6;
smull mulHymm10_7 mulL_7 L0x555555560c0e ymm10_7;
smull mulHymm10_8 mulL_8 L0x555555560c10 ymm10_8;
smull mulHymm10_9 mulL_9 L0x555555560c12 ymm10_9;
smull mulHymm10_a mulL_a L0x555555560c14 ymm10_a;
smull mulHymm10_b mulL_b L0x555555560c16 ymm10_b;
smull mulHymm10_c mulL_c L0x555555560c18 ymm10_c;
smull mulHymm10_d mulL_d L0x555555560c1a ymm10_d;
smull mulHymm10_e mulL_e L0x555555560c1c ymm10_e;
smull mulHymm10_f mulL_f L0x555555560c1e ymm10_f;
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
(* vpmulhw 0x460(%rdx),%ymm9,%ymm9                 #! EA = L0x555555560b60; Value = 0xf7e9fa920ec5f1f7; PC = 0x5555555585c9 *)
smull mulH_0 mulLymm9_0 ymm9_0 L0x555555560b60;
smull mulH_1 mulLymm9_1 ymm9_1 L0x555555560b62;
smull mulH_2 mulLymm9_2 ymm9_2 L0x555555560b64;
smull mulH_3 mulLymm9_3 ymm9_3 L0x555555560b66;
smull mulH_4 mulLymm9_4 ymm9_4 L0x555555560b68;
smull mulH_5 mulLymm9_5 ymm9_5 L0x555555560b6a;
smull mulH_6 mulLymm9_6 ymm9_6 L0x555555560b6c;
smull mulH_7 mulLymm9_7 ymm9_7 L0x555555560b6e;
smull mulH_8 mulLymm9_8 ymm9_8 L0x555555560b70;
smull mulH_9 mulLymm9_9 ymm9_9 L0x555555560b72;
smull mulH_a mulLymm9_a ymm9_a L0x555555560b74;
smull mulH_b mulLymm9_b ymm9_b L0x555555560b76;
smull mulH_c mulLymm9_c ymm9_c L0x555555560b78;
smull mulH_d mulLymm9_d ymm9_d L0x555555560b7a;
smull mulH_e mulLymm9_e ymm9_e L0x555555560b7c;
smull mulH_f mulLymm9_f ymm9_f L0x555555560b7e;
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
(* vpmulhw 0x4a0(%rdx),%ymm7,%ymm7                 #! EA = L0x555555560ba0; Value = 0x0df0f2a7f2f10ebc; PC = 0x5555555585d1 *)
smull mulH_0 mulLymm7_0 ymm7_0 L0x555555560ba0;
smull mulH_1 mulLymm7_1 ymm7_1 L0x555555560ba2;
smull mulH_2 mulLymm7_2 ymm7_2 L0x555555560ba4;
smull mulH_3 mulLymm7_3 ymm7_3 L0x555555560ba6;
smull mulH_4 mulLymm7_4 ymm7_4 L0x555555560ba8;
smull mulH_5 mulLymm7_5 ymm7_5 L0x555555560baa;
smull mulH_6 mulLymm7_6 ymm7_6 L0x555555560bac;
smull mulH_7 mulLymm7_7 ymm7_7 L0x555555560bae;
smull mulH_8 mulLymm7_8 ymm7_8 L0x555555560bb0;
smull mulH_9 mulLymm7_9 ymm7_9 L0x555555560bb2;
smull mulH_a mulLymm7_a ymm7_a L0x555555560bb4;
smull mulH_b mulLymm7_b ymm7_b L0x555555560bb6;
smull mulH_c mulLymm7_c ymm7_c L0x555555560bb8;
smull mulH_d mulLymm7_d ymm7_d L0x555555560bba;
smull mulH_e mulLymm7_e ymm7_e L0x555555560bbc;
smull mulH_f mulLymm7_f ymm7_f L0x555555560bbe;
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
(* vpmulhw 0x4e0(%rdx),%ymm4,%ymm4                 #! EA = L0x555555560be0; Value = 0x04fefbe0fd7efa0b; PC = 0x5555555585d9 *)
smull mulH_0 mulLymm4_0 ymm4_0 L0x555555560be0;
smull mulH_1 mulLymm4_1 ymm4_1 L0x555555560be2;
smull mulH_2 mulLymm4_2 ymm4_2 L0x555555560be4;
smull mulH_3 mulLymm4_3 ymm4_3 L0x555555560be6;
smull mulH_4 mulLymm4_4 ymm4_4 L0x555555560be8;
smull mulH_5 mulLymm4_5 ymm4_5 L0x555555560bea;
smull mulH_6 mulLymm4_6 ymm4_6 L0x555555560bec;
smull mulH_7 mulLymm4_7 ymm4_7 L0x555555560bee;
smull mulH_8 mulLymm4_8 ymm4_8 L0x555555560bf0;
smull mulH_9 mulLymm4_9 ymm4_9 L0x555555560bf2;
smull mulH_a mulLymm4_a ymm4_a L0x555555560bf4;
smull mulH_b mulLymm4_b ymm4_b L0x555555560bf6;
smull mulH_c mulLymm4_c ymm4_c L0x555555560bf8;
smull mulH_d mulLymm4_d ymm4_d L0x555555560bfa;
smull mulH_e mulLymm4_e ymm4_e L0x555555560bfc;
smull mulH_f mulLymm4_f ymm4_f L0x555555560bfe;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw 0x520(%rdx),%ymm10,%ymm10               #! EA = L0x555555560c20; Value = 0x0bb6f924fc83032a; PC = 0x5555555585e1 *)
smull mulH_0 mulLymm10_0 ymm10_0 L0x555555560c20;
smull mulH_1 mulLymm10_1 ymm10_1 L0x555555560c22;
smull mulH_2 mulLymm10_2 ymm10_2 L0x555555560c24;
smull mulH_3 mulLymm10_3 ymm10_3 L0x555555560c26;
smull mulH_4 mulLymm10_4 ymm10_4 L0x555555560c28;
smull mulH_5 mulLymm10_5 ymm10_5 L0x555555560c2a;
smull mulH_6 mulLymm10_6 ymm10_6 L0x555555560c2c;
smull mulH_7 mulLymm10_7 ymm10_7 L0x555555560c2e;
smull mulH_8 mulLymm10_8 ymm10_8 L0x555555560c30;
smull mulH_9 mulLymm10_9 ymm10_9 L0x555555560c32;
smull mulH_a mulLymm10_a ymm10_a L0x555555560c34;
smull mulH_b mulLymm10_b ymm10_b L0x555555560c36;
smull mulH_c mulLymm10_c ymm10_c L0x555555560c38;
smull mulH_d mulLymm10_d ymm10_d L0x555555560c3a;
smull mulH_e mulLymm10_e ymm10_e L0x555555560c3c;
smull mulH_f mulLymm10_f ymm10_f L0x555555560c3e;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555585e9 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555585ed *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x5555555585f1 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x5555555585f5 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555585f9 *)
sub ymm9_0 ymm9_0 ymm12_0;
sub ymm9_1 ymm9_1 ymm12_1;
sub ymm9_2 ymm9_2 ymm12_2;
sub ymm9_3 ymm9_3 ymm12_3;
sub ymm9_4 ymm9_4 ymm12_4;
sub ymm9_5 ymm9_5 ymm12_5;
sub ymm9_6 ymm9_6 ymm12_6;
sub ymm9_7 ymm9_7 ymm12_7;
sub ymm9_8 ymm9_8 ymm12_8;
sub ymm9_9 ymm9_9 ymm12_9;
sub ymm9_a ymm9_a ymm12_a;
sub ymm9_b ymm9_b ymm12_b;
sub ymm9_c ymm9_c ymm12_c;
sub ymm9_d ymm9_d ymm12_d;
sub ymm9_e ymm9_e ymm12_e;
sub ymm9_f ymm9_f ymm12_f;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x5555555585fe *)
sub ymm7_0 ymm7_0 ymm13_0;
sub ymm7_1 ymm7_1 ymm13_1;
sub ymm7_2 ymm7_2 ymm13_2;
sub ymm7_3 ymm7_3 ymm13_3;
sub ymm7_4 ymm7_4 ymm13_4;
sub ymm7_5 ymm7_5 ymm13_5;
sub ymm7_6 ymm7_6 ymm13_6;
sub ymm7_7 ymm7_7 ymm13_7;
sub ymm7_8 ymm7_8 ymm13_8;
sub ymm7_9 ymm7_9 ymm13_9;
sub ymm7_a ymm7_a ymm13_a;
sub ymm7_b ymm7_b ymm13_b;
sub ymm7_c ymm7_c ymm13_c;
sub ymm7_d ymm7_d ymm13_d;
sub ymm7_e ymm7_e ymm13_e;
sub ymm7_f ymm7_f ymm13_f;
(* vpsubw %ymm14,%ymm4,%ymm4                       #! PC = 0x555555558603 *)
sub ymm4_0 ymm4_0 ymm14_0;
sub ymm4_1 ymm4_1 ymm14_1;
sub ymm4_2 ymm4_2 ymm14_2;
sub ymm4_3 ymm4_3 ymm14_3;
sub ymm4_4 ymm4_4 ymm14_4;
sub ymm4_5 ymm4_5 ymm14_5;
sub ymm4_6 ymm4_6 ymm14_6;
sub ymm4_7 ymm4_7 ymm14_7;
sub ymm4_8 ymm4_8 ymm14_8;
sub ymm4_9 ymm4_9 ymm14_9;
sub ymm4_a ymm4_a ymm14_a;
sub ymm4_b ymm4_b ymm14_b;
sub ymm4_c ymm4_c ymm14_c;
sub ymm4_d ymm4_d ymm14_d;
sub ymm4_e ymm4_e ymm14_e;
sub ymm4_f ymm4_f ymm14_f;
(* vpsubw %ymm15,%ymm10,%ymm10                     #! PC = 0x555555558608 *)
sub ymm10_0 ymm10_0 ymm15_0;
sub ymm10_1 ymm10_1 ymm15_1;
sub ymm10_2 ymm10_2 ymm15_2;
sub ymm10_3 ymm10_3 ymm15_3;
sub ymm10_4 ymm10_4 ymm15_4;
sub ymm10_5 ymm10_5 ymm15_5;
sub ymm10_6 ymm10_6 ymm15_6;
sub ymm10_7 ymm10_7 ymm15_7;
sub ymm10_8 ymm10_8 ymm15_8;
sub ymm10_9 ymm10_9 ymm15_9;
sub ymm10_a ymm10_a ymm15_a;
sub ymm10_b ymm10_b ymm15_b;
sub ymm10_c ymm10_c ymm15_c;
sub ymm10_d ymm10_d ymm15_d;
sub ymm10_e ymm10_e ymm15_e;
sub ymm10_f ymm10_f ymm15_f;
assert true && and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f,
mulLymm4_0 = mulLymm14_0, mulLymm4_1 = mulLymm14_1,
mulLymm4_2 = mulLymm14_2, mulLymm4_3 = mulLymm14_3,
mulLymm4_4 = mulLymm14_4, mulLymm4_5 = mulLymm14_5,
mulLymm4_6 = mulLymm14_6, mulLymm4_7 = mulLymm14_7,
mulLymm4_8 = mulLymm14_8, mulLymm4_9 = mulLymm14_9,
mulLymm4_a = mulLymm14_a, mulLymm4_b = mulLymm14_b,
mulLymm4_c = mulLymm14_c, mulLymm4_d = mulLymm14_d,
mulLymm4_e = mulLymm14_e, mulLymm4_f = mulLymm14_f,
mulLymm10_0 = mulLymm15_0, mulLymm10_1 = mulLymm15_1,
mulLymm10_2 = mulLymm15_2, mulLymm10_3 = mulLymm15_3,
mulLymm10_4 = mulLymm15_4, mulLymm10_5 = mulLymm15_5,
mulLymm10_6 = mulLymm15_6, mulLymm10_7 = mulLymm15_7,
mulLymm10_8 = mulLymm15_8, mulLymm10_9 = mulLymm15_9,
mulLymm10_a = mulLymm15_a, mulLymm10_b = mulLymm15_b,
mulLymm10_c = mulLymm15_c, mulLymm10_d = mulLymm15_d,
mulLymm10_e = mulLymm15_e, mulLymm10_f = mulLymm15_f
];
assume and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f,
mulLymm4_0 = mulLymm14_0, mulLymm4_1 = mulLymm14_1,
mulLymm4_2 = mulLymm14_2, mulLymm4_3 = mulLymm14_3,
mulLymm4_4 = mulLymm14_4, mulLymm4_5 = mulLymm14_5,
mulLymm4_6 = mulLymm14_6, mulLymm4_7 = mulLymm14_7,
mulLymm4_8 = mulLymm14_8, mulLymm4_9 = mulLymm14_9,
mulLymm4_a = mulLymm14_a, mulLymm4_b = mulLymm14_b,
mulLymm4_c = mulLymm14_c, mulLymm4_d = mulLymm14_d,
mulLymm4_e = mulLymm14_e, mulLymm4_f = mulLymm14_f,
mulLymm10_0 = mulLymm15_0, mulLymm10_1 = mulLymm15_1,
mulLymm10_2 = mulLymm15_2, mulLymm10_3 = mulLymm15_3,
mulLymm10_4 = mulLymm15_4, mulLymm10_5 = mulLymm15_5,
mulLymm10_6 = mulLymm15_6, mulLymm10_7 = mulLymm15_7,
mulLymm10_8 = mulLymm15_8, mulLymm10_9 = mulLymm15_9,
mulLymm10_a = mulLymm15_a, mulLymm10_b = mulLymm15_b,
mulLymm10_c = mulLymm15_c, mulLymm10_d = mulLymm15_d,
mulLymm10_e = mulLymm15_e, mulLymm10_f = mulLymm15_f
] && true;
(* vpmullw 0x540(%rdx),%ymm6,%ymm12                #! EA = L0x555555560c40; Value = 0x0ab3996ac48bb8f1; PC = 0x55555555860d *)
smull mulHymm6_0 mulL_0 L0x555555560c40 ymm6_0;
smull mulHymm6_1 mulL_1 L0x555555560c42 ymm6_1;
smull mulHymm6_2 mulL_2 L0x555555560c44 ymm6_2;
smull mulHymm6_3 mulL_3 L0x555555560c46 ymm6_3;
smull mulHymm6_4 mulL_4 L0x555555560c48 ymm6_4;
smull mulHymm6_5 mulL_5 L0x555555560c4a ymm6_5;
smull mulHymm6_6 mulL_6 L0x555555560c4c ymm6_6;
smull mulHymm6_7 mulL_7 L0x555555560c4e ymm6_7;
smull mulHymm6_8 mulL_8 L0x555555560c50 ymm6_8;
smull mulHymm6_9 mulL_9 L0x555555560c52 ymm6_9;
smull mulHymm6_a mulL_a L0x555555560c54 ymm6_a;
smull mulHymm6_b mulL_b L0x555555560c56 ymm6_b;
smull mulHymm6_c mulL_c L0x555555560c58 ymm6_c;
smull mulHymm6_d mulL_d L0x555555560c5a ymm6_d;
smull mulHymm6_e mulL_e L0x555555560c5c ymm6_e;
smull mulHymm6_f mulL_f L0x555555560c5e ymm6_f;
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
(* vpmullw 0x580(%rdx),%ymm5,%ymm13                #! EA = L0x555555560c80; Value = 0x8ee2f280eab41199; PC = 0x555555558615 *)
smull mulHymm5_0 mulL_0 L0x555555560c80 ymm5_0;
smull mulHymm5_1 mulL_1 L0x555555560c82 ymm5_1;
smull mulHymm5_2 mulL_2 L0x555555560c84 ymm5_2;
smull mulHymm5_3 mulL_3 L0x555555560c86 ymm5_3;
smull mulHymm5_4 mulL_4 L0x555555560c88 ymm5_4;
smull mulHymm5_5 mulL_5 L0x555555560c8a ymm5_5;
smull mulHymm5_6 mulL_6 L0x555555560c8c ymm5_6;
smull mulHymm5_7 mulL_7 L0x555555560c8e ymm5_7;
smull mulHymm5_8 mulL_8 L0x555555560c90 ymm5_8;
smull mulHymm5_9 mulL_9 L0x555555560c92 ymm5_9;
smull mulHymm5_a mulL_a L0x555555560c94 ymm5_a;
smull mulHymm5_b mulL_b L0x555555560c96 ymm5_b;
smull mulHymm5_c mulL_c L0x555555560c98 ymm5_c;
smull mulHymm5_d mulL_d L0x555555560c9a ymm5_d;
smull mulHymm5_e mulL_e L0x555555560c9c ymm5_e;
smull mulHymm5_f mulL_f L0x555555560c9e ymm5_f;
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
(* vpmullw 0x5c0(%rdx),%ymm8,%ymm14                #! EA = L0x555555560cc0; Value = 0x41f5a6a5ce0a1d43; PC = 0x55555555861d *)
smull mulHymm8_0 mulL_0 L0x555555560cc0 ymm8_0;
smull mulHymm8_1 mulL_1 L0x555555560cc2 ymm8_1;
smull mulHymm8_2 mulL_2 L0x555555560cc4 ymm8_2;
smull mulHymm8_3 mulL_3 L0x555555560cc6 ymm8_3;
smull mulHymm8_4 mulL_4 L0x555555560cc8 ymm8_4;
smull mulHymm8_5 mulL_5 L0x555555560cca ymm8_5;
smull mulHymm8_6 mulL_6 L0x555555560ccc ymm8_6;
smull mulHymm8_7 mulL_7 L0x555555560cce ymm8_7;
smull mulHymm8_8 mulL_8 L0x555555560cd0 ymm8_8;
smull mulHymm8_9 mulL_9 L0x555555560cd2 ymm8_9;
smull mulHymm8_a mulL_a L0x555555560cd4 ymm8_a;
smull mulHymm8_b mulL_b L0x555555560cd6 ymm8_b;
smull mulHymm8_c mulL_c L0x555555560cd8 ymm8_c;
smull mulHymm8_d mulL_d L0x555555560cda ymm8_d;
smull mulHymm8_e mulL_e L0x555555560cdc ymm8_e;
smull mulHymm8_f mulL_f L0x555555560cde ymm8_f;
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
(* vpmullw 0x600(%rdx),%ymm11,%ymm15               #! EA = L0x555555560d00; Value = 0xf47881b76bf4e8e7; PC = 0x555555558625 *)
smull mulHymm11_0 mulL_0 L0x555555560d00 ymm11_0;
smull mulHymm11_1 mulL_1 L0x555555560d02 ymm11_1;
smull mulHymm11_2 mulL_2 L0x555555560d04 ymm11_2;
smull mulHymm11_3 mulL_3 L0x555555560d06 ymm11_3;
smull mulHymm11_4 mulL_4 L0x555555560d08 ymm11_4;
smull mulHymm11_5 mulL_5 L0x555555560d0a ymm11_5;
smull mulHymm11_6 mulL_6 L0x555555560d0c ymm11_6;
smull mulHymm11_7 mulL_7 L0x555555560d0e ymm11_7;
smull mulHymm11_8 mulL_8 L0x555555560d10 ymm11_8;
smull mulHymm11_9 mulL_9 L0x555555560d12 ymm11_9;
smull mulHymm11_a mulL_a L0x555555560d14 ymm11_a;
smull mulHymm11_b mulL_b L0x555555560d16 ymm11_b;
smull mulHymm11_c mulL_c L0x555555560d18 ymm11_c;
smull mulHymm11_d mulL_d L0x555555560d1a ymm11_d;
smull mulHymm11_e mulL_e L0x555555560d1c ymm11_e;
smull mulHymm11_f mulL_f L0x555555560d1e ymm11_f;
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
(* vpmulhw 0x560(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560c60; Value = 0x04b3056a0e8bf6f1; PC = 0x55555555862d *)
smull mulH_0 mulLymm6_0 ymm6_0 L0x555555560c60;
smull mulH_1 mulLymm6_1 ymm6_1 L0x555555560c62;
smull mulH_2 mulLymm6_2 ymm6_2 L0x555555560c64;
smull mulH_3 mulLymm6_3 ymm6_3 L0x555555560c66;
smull mulH_4 mulLymm6_4 ymm6_4 L0x555555560c68;
smull mulH_5 mulLymm6_5 ymm6_5 L0x555555560c6a;
smull mulH_6 mulLymm6_6 ymm6_6 L0x555555560c6c;
smull mulH_7 mulLymm6_7 ymm6_7 L0x555555560c6e;
smull mulH_8 mulLymm6_8 ymm6_8 L0x555555560c70;
smull mulH_9 mulLymm6_9 ymm6_9 L0x555555560c72;
smull mulH_a mulLymm6_a ymm6_a L0x555555560c74;
smull mulH_b mulLymm6_b ymm6_b L0x555555560c76;
smull mulH_c mulLymm6_c ymm6_c L0x555555560c78;
smull mulH_d mulLymm6_d ymm6_d L0x555555560c7a;
smull mulH_e mulLymm6_e ymm6_e L0x555555560c7c;
smull mulH_f mulLymm6_f ymm6_f L0x555555560c7e;
mov ymm6_0 mulH_0;
mov ymm6_1 mulH_1;
mov ymm6_2 mulH_2;
mov ymm6_3 mulH_3;
mov ymm6_4 mulH_4;
mov ymm6_5 mulH_5;
mov ymm6_6 mulH_6;
mov ymm6_7 mulH_7;
mov ymm6_8 mulH_8;
mov ymm6_9 mulH_9;
mov ymm6_a mulH_a;
mov ymm6_b mulH_b;
mov ymm6_c mulH_c;
mov ymm6_d mulH_d;
mov ymm6_e mulH_e;
mov ymm6_f mulH_f;
(* vpmulhw 0x5a0(%rdx),%ymm5,%ymm5                 #! EA = L0x555555560ca0; Value = 0x0ae2f28002b4ff99; PC = 0x555555558635 *)
smull mulH_0 mulLymm5_0 ymm5_0 L0x555555560ca0;
smull mulH_1 mulLymm5_1 ymm5_1 L0x555555560ca2;
smull mulH_2 mulLymm5_2 ymm5_2 L0x555555560ca4;
smull mulH_3 mulLymm5_3 ymm5_3 L0x555555560ca6;
smull mulH_4 mulLymm5_4 ymm5_4 L0x555555560ca8;
smull mulH_5 mulLymm5_5 ymm5_5 L0x555555560caa;
smull mulH_6 mulLymm5_6 ymm5_6 L0x555555560cac;
smull mulH_7 mulLymm5_7 ymm5_7 L0x555555560cae;
smull mulH_8 mulLymm5_8 ymm5_8 L0x555555560cb0;
smull mulH_9 mulLymm5_9 ymm5_9 L0x555555560cb2;
smull mulH_a mulLymm5_a ymm5_a L0x555555560cb4;
smull mulH_b mulLymm5_b ymm5_b L0x555555560cb6;
smull mulH_c mulLymm5_c ymm5_c L0x555555560cb8;
smull mulH_d mulLymm5_d ymm5_d L0x555555560cba;
smull mulH_e mulLymm5_e ymm5_e L0x555555560cbc;
smull mulH_f mulLymm5_f ymm5_f L0x555555560cbe;
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
(* vpmulhw 0x5e0(%rdx),%ymm8,%ymm8                 #! EA = L0x555555560ce0; Value = 0xf7f5fca5fa0af743; PC = 0x55555555863d *)
smull mulH_0 mulLymm8_0 ymm8_0 L0x555555560ce0;
smull mulH_1 mulLymm8_1 ymm8_1 L0x555555560ce2;
smull mulH_2 mulLymm8_2 ymm8_2 L0x555555560ce4;
smull mulH_3 mulLymm8_3 ymm8_3 L0x555555560ce6;
smull mulH_4 mulLymm8_4 ymm8_4 L0x555555560ce8;
smull mulH_5 mulLymm8_5 ymm8_5 L0x555555560cea;
smull mulH_6 mulLymm8_6 ymm8_6 L0x555555560cec;
smull mulH_7 mulLymm8_7 ymm8_7 L0x555555560cee;
smull mulH_8 mulLymm8_8 ymm8_8 L0x555555560cf0;
smull mulH_9 mulLymm8_9 ymm8_9 L0x555555560cf2;
smull mulH_a mulLymm8_a ymm8_a L0x555555560cf4;
smull mulH_b mulLymm8_b ymm8_b L0x555555560cf6;
smull mulH_c mulLymm8_c ymm8_c L0x555555560cf8;
smull mulH_d mulLymm8_d ymm8_d L0x555555560cfa;
smull mulH_e mulLymm8_e ymm8_e L0x555555560cfc;
smull mulH_f mulLymm8_f ymm8_f L0x555555560cfe;
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
(* vpmulhw 0x620(%rdx),%ymm11,%ymm11               #! EA = L0x555555560d20; Value = 0x0478f3b703f4fae7; PC = 0x555555558645 *)
smull mulH_0 mulLymm11_0 ymm11_0 L0x555555560d20;
smull mulH_1 mulLymm11_1 ymm11_1 L0x555555560d22;
smull mulH_2 mulLymm11_2 ymm11_2 L0x555555560d24;
smull mulH_3 mulLymm11_3 ymm11_3 L0x555555560d26;
smull mulH_4 mulLymm11_4 ymm11_4 L0x555555560d28;
smull mulH_5 mulLymm11_5 ymm11_5 L0x555555560d2a;
smull mulH_6 mulLymm11_6 ymm11_6 L0x555555560d2c;
smull mulH_7 mulLymm11_7 ymm11_7 L0x555555560d2e;
smull mulH_8 mulLymm11_8 ymm11_8 L0x555555560d30;
smull mulH_9 mulLymm11_9 ymm11_9 L0x555555560d32;
smull mulH_a mulLymm11_a ymm11_a L0x555555560d34;
smull mulH_b mulLymm11_b ymm11_b L0x555555560d36;
smull mulH_c mulLymm11_c ymm11_c L0x555555560d38;
smull mulH_d mulLymm11_d ymm11_d L0x555555560d3a;
smull mulH_e mulLymm11_e ymm11_e L0x555555560d3c;
smull mulH_f mulLymm11_f ymm11_f L0x555555560d3e;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555864d *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558651 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555558655 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558659 *)
smull mulH_0 mulLymm15_0 ymm15_0 ymm0_0;
smull mulH_1 mulLymm15_1 ymm15_1 ymm0_1;
smull mulH_2 mulLymm15_2 ymm15_2 ymm0_2;
smull mulH_3 mulLymm15_3 ymm15_3 ymm0_3;
smull mulH_4 mulLymm15_4 ymm15_4 ymm0_4;
smull mulH_5 mulLymm15_5 ymm15_5 ymm0_5;
smull mulH_6 mulLymm15_6 ymm15_6 ymm0_6;
smull mulH_7 mulLymm15_7 ymm15_7 ymm0_7;
smull mulH_8 mulLymm15_8 ymm15_8 ymm0_8;
smull mulH_9 mulLymm15_9 ymm15_9 ymm0_9;
smull mulH_a mulLymm15_a ymm15_a ymm0_a;
smull mulH_b mulLymm15_b ymm15_b ymm0_b;
smull mulH_c mulLymm15_c ymm15_c ymm0_c;
smull mulH_d mulLymm15_d ymm15_d ymm0_d;
smull mulH_e mulLymm15_e ymm15_e ymm0_e;
smull mulH_f mulLymm15_f ymm15_f ymm0_f;
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
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555865d *)
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
(* vpsubw %ymm13,%ymm5,%ymm5                       #! PC = 0x555555558662 *)
sub ymm5_0 ymm5_0 ymm13_0;
sub ymm5_1 ymm5_1 ymm13_1;
sub ymm5_2 ymm5_2 ymm13_2;
sub ymm5_3 ymm5_3 ymm13_3;
sub ymm5_4 ymm5_4 ymm13_4;
sub ymm5_5 ymm5_5 ymm13_5;
sub ymm5_6 ymm5_6 ymm13_6;
sub ymm5_7 ymm5_7 ymm13_7;
sub ymm5_8 ymm5_8 ymm13_8;
sub ymm5_9 ymm5_9 ymm13_9;
sub ymm5_a ymm5_a ymm13_a;
sub ymm5_b ymm5_b ymm13_b;
sub ymm5_c ymm5_c ymm13_c;
sub ymm5_d ymm5_d ymm13_d;
sub ymm5_e ymm5_e ymm13_e;
sub ymm5_f ymm5_f ymm13_f;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x555555558667 *)
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
(* vpsubw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555555866c *)
sub ymm11_0 ymm11_0 ymm15_0;
sub ymm11_1 ymm11_1 ymm15_1;
sub ymm11_2 ymm11_2 ymm15_2;
sub ymm11_3 ymm11_3 ymm15_3;
sub ymm11_4 ymm11_4 ymm15_4;
sub ymm11_5 ymm11_5 ymm15_5;
sub ymm11_6 ymm11_6 ymm15_6;
sub ymm11_7 ymm11_7 ymm15_7;
sub ymm11_8 ymm11_8 ymm15_8;
sub ymm11_9 ymm11_9 ymm15_9;
sub ymm11_a ymm11_a ymm15_a;
sub ymm11_b ymm11_b ymm15_b;
sub ymm11_c ymm11_c ymm15_c;
sub ymm11_d ymm11_d ymm15_d;
sub ymm11_e ymm11_e ymm15_e;
sub ymm11_f ymm11_f ymm15_f;
assert true && and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f,
mulLymm5_0 = mulLymm13_0, mulLymm5_1 = mulLymm13_1,
mulLymm5_2 = mulLymm13_2, mulLymm5_3 = mulLymm13_3,
mulLymm5_4 = mulLymm13_4, mulLymm5_5 = mulLymm13_5,
mulLymm5_6 = mulLymm13_6, mulLymm5_7 = mulLymm13_7,
mulLymm5_8 = mulLymm13_8, mulLymm5_9 = mulLymm13_9,
mulLymm5_a = mulLymm13_a, mulLymm5_b = mulLymm13_b,
mulLymm5_c = mulLymm13_c, mulLymm5_d = mulLymm13_d,
mulLymm5_e = mulLymm13_e, mulLymm5_f = mulLymm13_f,
mulLymm8_0 = mulLymm14_0, mulLymm8_1 = mulLymm14_1,
mulLymm8_2 = mulLymm14_2, mulLymm8_3 = mulLymm14_3,
mulLymm8_4 = mulLymm14_4, mulLymm8_5 = mulLymm14_5,
mulLymm8_6 = mulLymm14_6, mulLymm8_7 = mulLymm14_7,
mulLymm8_8 = mulLymm14_8, mulLymm8_9 = mulLymm14_9,
mulLymm8_a = mulLymm14_a, mulLymm8_b = mulLymm14_b,
mulLymm8_c = mulLymm14_c, mulLymm8_d = mulLymm14_d,
mulLymm8_e = mulLymm14_e, mulLymm8_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
];
assume and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f,
mulLymm5_0 = mulLymm13_0, mulLymm5_1 = mulLymm13_1,
mulLymm5_2 = mulLymm13_2, mulLymm5_3 = mulLymm13_3,
mulLymm5_4 = mulLymm13_4, mulLymm5_5 = mulLymm13_5,
mulLymm5_6 = mulLymm13_6, mulLymm5_7 = mulLymm13_7,
mulLymm5_8 = mulLymm13_8, mulLymm5_9 = mulLymm13_9,
mulLymm5_a = mulLymm13_a, mulLymm5_b = mulLymm13_b,
mulLymm5_c = mulLymm13_c, mulLymm5_d = mulLymm13_d,
mulLymm5_e = mulLymm13_e, mulLymm5_f = mulLymm13_f,
mulLymm8_0 = mulLymm14_0, mulLymm8_1 = mulLymm14_1,
mulLymm8_2 = mulLymm14_2, mulLymm8_3 = mulLymm14_3,
mulLymm8_4 = mulLymm14_4, mulLymm8_5 = mulLymm14_5,
mulLymm8_6 = mulLymm14_6, mulLymm8_7 = mulLymm14_7,
mulLymm8_8 = mulLymm14_8, mulLymm8_9 = mulLymm14_9,
mulLymm8_a = mulLymm14_a, mulLymm8_b = mulLymm14_b,
mulLymm8_c = mulLymm14_c, mulLymm8_d = mulLymm14_d,
mulLymm8_e = mulLymm14_e, mulLymm8_f = mulLymm14_f,
mulLymm11_0 = mulLymm15_0, mulLymm11_1 = mulLymm15_1,
mulLymm11_2 = mulLymm15_2, mulLymm11_3 = mulLymm15_3,
mulLymm11_4 = mulLymm15_4, mulLymm11_5 = mulLymm15_5,
mulLymm11_6 = mulLymm15_6, mulLymm11_7 = mulLymm15_7,
mulLymm11_8 = mulLymm15_8, mulLymm11_9 = mulLymm15_9,
mulLymm11_a = mulLymm15_a, mulLymm11_b = mulLymm15_b,
mulLymm11_c = mulLymm15_c, mulLymm11_d = mulLymm15_d,
mulLymm11_e = mulLymm15_e, mulLymm11_f = mulLymm15_f
] && true;
(* vpaddw %ymm6,%ymm9,%ymm3                        #! PC = 0x555555558671 *)
add ymm3_0 ymm9_0 ymm6_0;
add ymm3_1 ymm9_1 ymm6_1;
add ymm3_2 ymm9_2 ymm6_2;
add ymm3_3 ymm9_3 ymm6_3;
add ymm3_4 ymm9_4 ymm6_4;
add ymm3_5 ymm9_5 ymm6_5;
add ymm3_6 ymm9_6 ymm6_6;
add ymm3_7 ymm9_7 ymm6_7;
add ymm3_8 ymm9_8 ymm6_8;
add ymm3_9 ymm9_9 ymm6_9;
add ymm3_a ymm9_a ymm6_a;
add ymm3_b ymm9_b ymm6_b;
add ymm3_c ymm9_c ymm6_c;
add ymm3_d ymm9_d ymm6_d;
add ymm3_e ymm9_e ymm6_e;
add ymm3_f ymm9_f ymm6_f;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x555555558675 *)
sub ymm6_0 ymm9_0 ymm6_0;
sub ymm6_1 ymm9_1 ymm6_1;
sub ymm6_2 ymm9_2 ymm6_2;
sub ymm6_3 ymm9_3 ymm6_3;
sub ymm6_4 ymm9_4 ymm6_4;
sub ymm6_5 ymm9_5 ymm6_5;
sub ymm6_6 ymm9_6 ymm6_6;
sub ymm6_7 ymm9_7 ymm6_7;
sub ymm6_8 ymm9_8 ymm6_8;
sub ymm6_9 ymm9_9 ymm6_9;
sub ymm6_a ymm9_a ymm6_a;
sub ymm6_b ymm9_b ymm6_b;
sub ymm6_c ymm9_c ymm6_c;
sub ymm6_d ymm9_d ymm6_d;
sub ymm6_e ymm9_e ymm6_e;
sub ymm6_f ymm9_f ymm6_f;
(* vpaddw %ymm5,%ymm7,%ymm9                        #! PC = 0x555555558679 *)
add ymm9_0 ymm7_0 ymm5_0;
add ymm9_1 ymm7_1 ymm5_1;
add ymm9_2 ymm7_2 ymm5_2;
add ymm9_3 ymm7_3 ymm5_3;
add ymm9_4 ymm7_4 ymm5_4;
add ymm9_5 ymm7_5 ymm5_5;
add ymm9_6 ymm7_6 ymm5_6;
add ymm9_7 ymm7_7 ymm5_7;
add ymm9_8 ymm7_8 ymm5_8;
add ymm9_9 ymm7_9 ymm5_9;
add ymm9_a ymm7_a ymm5_a;
add ymm9_b ymm7_b ymm5_b;
add ymm9_c ymm7_c ymm5_c;
add ymm9_d ymm7_d ymm5_d;
add ymm9_e ymm7_e ymm5_e;
add ymm9_f ymm7_f ymm5_f;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555555867d *)
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
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x555555558681 *)
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
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555558686 *)
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
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555555868b *)
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
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558690 *)
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
(* ===== End of level 3, off 1 ===== *)

(* ecut 11, rcut 11 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((6269*x)**1) + ymm3_2*((6269*x)**2) + ymm3_3*((6269*x)**3) +
    ymm9_0*((6269*x)**4) + ymm9_1*((6269*x)**5) + ymm9_2*((6269*x)**6) + ymm9_3*((6269*x)**7) +
    ymm7_0*((6269*x)**8) + ymm7_1*((6269*x)**9) + ymm7_2*((6269*x)**10) + ymm7_3*((6269*x)**11) +
    ymm4_0*((6269*x)**12) + ymm4_1*((6269*x)**13) + ymm4_2*((6269*x)**14) + ymm4_3*((6269*x)**15)
  )
  [10753, x**16 - (3010)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((6269*x)**1) + ymm6_2*((6269*x)**2) + ymm6_3*((6269*x)**3) +
    ymm5_0*((6269*x)**4) + ymm5_1*((6269*x)**5) + ymm5_2*((6269*x)**6) + ymm5_3*((6269*x)**7) +
    ymm8_0*((6269*x)**8) + ymm8_1*((6269*x)**9) + ymm8_2*((6269*x)**10) + ymm8_3*((6269*x)**11) +
    ymm11_0*((6269*x)**12) + ymm11_1*((6269*x)**13) + ymm11_2*((6269*x)**14) + ymm11_3*((6269*x)**15)
  )
  [10753, x**16 - (-3010)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((3223*x)**1) + ymm3_6*((3223*x)**2) + ymm3_7*((3223*x)**3) +
    ymm9_4*((3223*x)**4) + ymm9_5*((3223*x)**5) + ymm9_6*((3223*x)**6) + ymm9_7*((3223*x)**7) +
    ymm7_4*((3223*x)**8) + ymm7_5*((3223*x)**9) + ymm7_6*((3223*x)**10) + ymm7_7*((3223*x)**11) +
    ymm4_4*((3223*x)**12) + ymm4_5*((3223*x)**13) + ymm4_6*((3223*x)**14) + ymm4_7*((3223*x)**15)
  )
  [10753, x**16 - (-4631)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((3223*x)**1) + ymm6_6*((3223*x)**2) + ymm6_7*((3223*x)**3) +
    ymm5_4*((3223*x)**4) + ymm5_5*((3223*x)**5) + ymm5_6*((3223*x)**6) + ymm5_7*((3223*x)**7) +
    ymm8_4*((3223*x)**8) + ymm8_5*((3223*x)**9) + ymm8_6*((3223*x)**10) + ymm8_7*((3223*x)**11) +
    ymm11_4*((3223*x)**12) + ymm11_5*((3223*x)**13) + ymm11_6*((3223*x)**14) + ymm11_7*((3223*x)**15)
  )
  [10753, x**16 - (4631)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((8417*x)**1) + ymm3_a*((8417*x)**2) + ymm3_b*((8417*x)**3) +
    ymm9_8*((8417*x)**4) + ymm9_9*((8417*x)**5) + ymm9_a*((8417*x)**6) + ymm9_b*((8417*x)**7) +
    ymm7_8*((8417*x)**8) + ymm7_9*((8417*x)**9) + ymm7_a*((8417*x)**10) + ymm7_b*((8417*x)**11) +
    ymm4_8*((8417*x)**12) + ymm4_9*((8417*x)**13) + ymm4_a*((8417*x)**14) + ymm4_b*((8417*x)**15)
  )
  [10753, x**16 - (-1560)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((8417*x)**1) + ymm6_a*((8417*x)**2) + ymm6_b*((8417*x)**3) +
    ymm5_8*((8417*x)**4) + ymm5_9*((8417*x)**5) + ymm5_a*((8417*x)**6) + ymm5_b*((8417*x)**7) +
    ymm8_8*((8417*x)**8) + ymm8_9*((8417*x)**9) + ymm8_a*((8417*x)**10) + ymm8_b*((8417*x)**11) +
    ymm11_8*((8417*x)**12) + ymm11_9*((8417*x)**13) + ymm11_a*((8417*x)**14) + ymm11_b*((8417*x)**15)
  )
  [10753, x**16 - (1560)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((10*x)**1) + ymm3_e*((10*x)**2) + ymm3_f*((10*x)**3) +
    ymm9_c*((10*x)**4) + ymm9_d*((10*x)**5) + ymm9_e*((10*x)**6) + ymm9_f*((10*x)**7) +
    ymm7_c*((10*x)**8) + ymm7_d*((10*x)**9) + ymm7_e*((10*x)**10) + ymm7_f*((10*x)**11) +
    ymm4_c*((10*x)**12) + ymm4_d*((10*x)**13) + ymm4_e*((10*x)**14) + ymm4_f*((10*x)**15)
  )
  [10753, x**16 - (-2637)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((10*x)**1) + ymm6_e*((10*x)**2) + ymm6_f*((10*x)**3) +
    ymm5_c*((10*x)**4) + ymm5_d*((10*x)**5) + ymm5_e*((10*x)**6) + ymm5_f*((10*x)**7) +
    ymm8_c*((10*x)**8) + ymm8_d*((10*x)**9) + ymm8_e*((10*x)**10) + ymm8_f*((10*x)**11) +
    ymm11_c*((10*x)**12) + ymm11_d*((10*x)**13) + ymm11_e*((10*x)**14) + ymm11_f*((10*x)**15)
  )
  [10753, x**16 - (2637)]
] && and [
  (-(11132))@16 <=s ymm3_0, ymm3_0 <=s (11132)@16, (-(13476))@16 <=s ymm3_1, ymm3_1 <=s (13476)@16,
  (-(12082))@16 <=s ymm3_2, ymm3_2 <=s (12082)@16, (-(12956))@16 <=s ymm3_3, ymm3_3 <=s (12956)@16,
  (-(12829))@16 <=s ymm9_0, ymm9_0 <=s (12829)@16, (-(13825))@16 <=s ymm9_1, ymm9_1 <=s (13825)@16,
  (-(11126))@16 <=s ymm9_2, ymm9_2 <=s (11126)@16, (-(12413))@16 <=s ymm9_3, ymm9_3 <=s (12413)@16,
  (-(12915))@16 <=s ymm7_0, ymm7_0 <=s (12915)@16, (-(12686))@16 <=s ymm7_1, ymm7_1 <=s (12686)@16,
  (-(12600))@16 <=s ymm7_2, ymm7_2 <=s (12600)@16, (-(13200))@16 <=s ymm7_3, ymm7_3 <=s (13200)@16,
  (-(10889))@16 <=s ymm4_0, ymm4_0 <=s (10889)@16, (-(11211))@16 <=s ymm4_1, ymm4_1 <=s (11211)@16,
  (-(13170))@16 <=s ymm4_2, ymm4_2 <=s (13170)@16, (-(11942))@16 <=s ymm4_3, ymm4_3 <=s (11942)@16,
  (-(11132))@16 <=s ymm6_0, ymm6_0 <=s (11132)@16, (-(13476))@16 <=s ymm6_1, ymm6_1 <=s (13476)@16,
  (-(12082))@16 <=s ymm6_2, ymm6_2 <=s (12082)@16, (-(12956))@16 <=s ymm6_3, ymm6_3 <=s (12956)@16,
  (-(12829))@16 <=s ymm5_0, ymm5_0 <=s (12829)@16, (-(13825))@16 <=s ymm5_1, ymm5_1 <=s (13825)@16,
  (-(11126))@16 <=s ymm5_2, ymm5_2 <=s (11126)@16, (-(12413))@16 <=s ymm5_3, ymm5_3 <=s (12413)@16,
  (-(12915))@16 <=s ymm8_0, ymm8_0 <=s (12915)@16, (-(12686))@16 <=s ymm8_1, ymm8_1 <=s (12686)@16,
  (-(12600))@16 <=s ymm8_2, ymm8_2 <=s (12600)@16, (-(13200))@16 <=s ymm8_3, ymm8_3 <=s (13200)@16,
  (-(10889))@16 <=s ymm11_0, ymm11_0 <=s (10889)@16, (-(11211))@16 <=s ymm11_1, ymm11_1 <=s (11211)@16,
  (-(13170))@16 <=s ymm11_2, ymm11_2 <=s (13170)@16, (-(11942))@16 <=s ymm11_3, ymm11_3 <=s (11942)@16,
  (-(12423))@16 <=s ymm3_4, ymm3_4 <=s (12423)@16, (-(12699))@16 <=s ymm3_5, ymm3_5 <=s (12699)@16,
  (-(11610))@16 <=s ymm3_6, ymm3_6 <=s (11610)@16, (-(13806))@16 <=s ymm3_7, ymm3_7 <=s (13806)@16,
  (-(12428))@16 <=s ymm9_4, ymm9_4 <=s (12428)@16, (-(12244))@16 <=s ymm9_5, ymm9_5 <=s (12244)@16,
  (-(13063))@16 <=s ymm9_6, ymm9_6 <=s (13063)@16, (-(12769))@16 <=s ymm9_7, ymm9_7 <=s (12769)@16,
  (-(11312))@16 <=s ymm7_4, ymm7_4 <=s (11312)@16, (-(11810))@16 <=s ymm7_5, ymm7_5 <=s (11810)@16,
  (-(11441))@16 <=s ymm7_6, ymm7_6 <=s (11441)@16, (-(13066))@16 <=s ymm7_7, ymm7_7 <=s (13066)@16,
  (-(13061))@16 <=s ymm4_4, ymm4_4 <=s (13061)@16, (-(12967))@16 <=s ymm4_5, ymm4_5 <=s (12967)@16,
  (-(11201))@16 <=s ymm4_6, ymm4_6 <=s (11201)@16, (-(10848))@16 <=s ymm4_7, ymm4_7 <=s (10848)@16,
  (-(12423))@16 <=s ymm6_4, ymm6_4 <=s (12423)@16, (-(12699))@16 <=s ymm6_5, ymm6_5 <=s (12699)@16,
  (-(11610))@16 <=s ymm6_6, ymm6_6 <=s (11610)@16, (-(13806))@16 <=s ymm6_7, ymm6_7 <=s (13806)@16,
  (-(12428))@16 <=s ymm5_4, ymm5_4 <=s (12428)@16, (-(12244))@16 <=s ymm5_5, ymm5_5 <=s (12244)@16,
  (-(13063))@16 <=s ymm5_6, ymm5_6 <=s (13063)@16, (-(12769))@16 <=s ymm5_7, ymm5_7 <=s (12769)@16,
  (-(11312))@16 <=s ymm8_4, ymm8_4 <=s (11312)@16, (-(11810))@16 <=s ymm8_5, ymm8_5 <=s (11810)@16,
  (-(11441))@16 <=s ymm8_6, ymm8_6 <=s (11441)@16, (-(13066))@16 <=s ymm8_7, ymm8_7 <=s (13066)@16,
  (-(13061))@16 <=s ymm11_4, ymm11_4 <=s (13061)@16, (-(12967))@16 <=s ymm11_5, ymm11_5 <=s (12967)@16,
  (-(11201))@16 <=s ymm11_6, ymm11_6 <=s (11201)@16, (-(10848))@16 <=s ymm11_7, ymm11_7 <=s (10848)@16,
  (-(12022))@16 <=s ymm3_8, ymm3_8 <=s (12022)@16, (-(13207))@16 <=s ymm3_9, ymm3_9 <=s (13207)@16,
  (-(11523))@16 <=s ymm3_a, ymm3_a <=s (11523)@16, (-(12037))@16 <=s ymm3_b, ymm3_b <=s (12037)@16,
  (-(12982))@16 <=s ymm9_8, ymm9_8 <=s (12982)@16, (-(12475))@16 <=s ymm9_9, ymm9_9 <=s (12475)@16,
  (-(13250))@16 <=s ymm9_a, ymm9_a <=s (13250)@16, (-(13507))@16 <=s ymm9_b, ymm9_b <=s (13507)@16,
  (-(12305))@16 <=s ymm7_8, ymm7_8 <=s (12305)@16, (-(13057))@16 <=s ymm7_9, ymm7_9 <=s (13057)@16,
  (-(12574))@16 <=s ymm7_a, ymm7_a <=s (12574)@16, (-(12678))@16 <=s ymm7_b, ymm7_b <=s (12678)@16,
  (-(11679))@16 <=s ymm4_8, ymm4_8 <=s (11679)@16, (-(13156))@16 <=s ymm4_9, ymm4_9 <=s (13156)@16,
  (-(12495))@16 <=s ymm4_a, ymm4_a <=s (12495)@16, (-(12459))@16 <=s ymm4_b, ymm4_b <=s (12459)@16,
  (-(12022))@16 <=s ymm6_8, ymm6_8 <=s (12022)@16, (-(13207))@16 <=s ymm6_9, ymm6_9 <=s (13207)@16,
  (-(11523))@16 <=s ymm6_a, ymm6_a <=s (11523)@16, (-(12037))@16 <=s ymm6_b, ymm6_b <=s (12037)@16,
  (-(12982))@16 <=s ymm5_8, ymm5_8 <=s (12982)@16, (-(12475))@16 <=s ymm5_9, ymm5_9 <=s (12475)@16,
  (-(13250))@16 <=s ymm5_a, ymm5_a <=s (13250)@16, (-(13507))@16 <=s ymm5_b, ymm5_b <=s (13507)@16,
  (-(12305))@16 <=s ymm8_8, ymm8_8 <=s (12305)@16, (-(13057))@16 <=s ymm8_9, ymm8_9 <=s (13057)@16,
  (-(12574))@16 <=s ymm8_a, ymm8_a <=s (12574)@16, (-(12678))@16 <=s ymm8_b, ymm8_b <=s (12678)@16,
  (-(11679))@16 <=s ymm11_8, ymm11_8 <=s (11679)@16, (-(13156))@16 <=s ymm11_9, ymm11_9 <=s (13156)@16,
  (-(12495))@16 <=s ymm11_a, ymm11_a <=s (12495)@16, (-(12459))@16 <=s ymm11_b, ymm11_b <=s (12459)@16,
  (-(12190))@16 <=s ymm3_c, ymm3_c <=s (12190)@16, (-(12544))@16 <=s ymm3_d, ymm3_d <=s (12544)@16,
  (-(11838))@16 <=s ymm3_e, ymm3_e <=s (11838)@16, (-(12634))@16 <=s ymm3_f, ymm3_f <=s (12634)@16,
  (-(12289))@16 <=s ymm9_c, ymm9_c <=s (12289)@16, (-(12316))@16 <=s ymm9_d, ymm9_d <=s (12316)@16,
  (-(13573))@16 <=s ymm9_e, ymm9_e <=s (13573)@16, (-(11403))@16 <=s ymm9_f, ymm9_f <=s (11403)@16,
  (-(13734))@16 <=s ymm7_c, ymm7_c <=s (13734)@16, (-(11382))@16 <=s ymm7_d, ymm7_d <=s (11382)@16,
  (-(11467))@16 <=s ymm7_e, ymm7_e <=s (11467)@16, (-(12342))@16 <=s ymm7_f, ymm7_f <=s (12342)@16,
  (-(11911))@16 <=s ymm4_c, ymm4_c <=s (11911)@16, (-(11175))@16 <=s ymm4_d, ymm4_d <=s (11175)@16,
  (-(13052))@16 <=s ymm4_e, ymm4_e <=s (13052)@16, (-(13533))@16 <=s ymm4_f, ymm4_f <=s (13533)@16,
  (-(12190))@16 <=s ymm6_c, ymm6_c <=s (12190)@16, (-(12544))@16 <=s ymm6_d, ymm6_d <=s (12544)@16,
  (-(11838))@16 <=s ymm6_e, ymm6_e <=s (11838)@16, (-(12634))@16 <=s ymm6_f, ymm6_f <=s (12634)@16,
  (-(12289))@16 <=s ymm5_c, ymm5_c <=s (12289)@16, (-(12316))@16 <=s ymm5_d, ymm5_d <=s (12316)@16,
  (-(13573))@16 <=s ymm5_e, ymm5_e <=s (13573)@16, (-(11403))@16 <=s ymm5_f, ymm5_f <=s (11403)@16,
  (-(13734))@16 <=s ymm8_c, ymm8_c <=s (13734)@16, (-(11382))@16 <=s ymm8_d, ymm8_d <=s (11382)@16,
  (-(11467))@16 <=s ymm8_e, ymm8_e <=s (11467)@16, (-(12342))@16 <=s ymm8_f, ymm8_f <=s (12342)@16,
  (-(11911))@16 <=s ymm11_c, ymm11_c <=s (11911)@16, (-(11175))@16 <=s ymm11_d, ymm11_d <=s (11175)@16,
  (-(13052))@16 <=s ymm11_e, ymm11_e <=s (13052)@16, (-(13533))@16 <=s ymm11_f, ymm11_f <=s (13533)@16
];

(* ===== Start of level 4, off 1 ===== *)
(* vmovdqa 0x80(%rdx),%ymm14                       #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x555555558695 *)
mov ymm14_0 L0x555555560780;
mov ymm14_1 L0x555555560782;
mov ymm14_2 L0x555555560784;
mov ymm14_3 L0x555555560786;
mov ymm14_4 L0x555555560788;
mov ymm14_5 L0x55555556078a;
mov ymm14_6 L0x55555556078c;
mov ymm14_7 L0x55555556078e;
mov ymm14_8 L0x555555560790;
mov ymm14_9 L0x555555560792;
mov ymm14_a L0x555555560794;
mov ymm14_b L0x555555560796;
mov ymm14_c L0x555555560798;
mov ymm14_d L0x55555556079a;
mov ymm14_e L0x55555556079c;
mov ymm14_f L0x55555556079e;
(* vmovdqa 0xa0(%rdx),%ymm15                       #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x55555555869d *)
mov ymm15_0 L0x5555555607a0;
mov ymm15_1 L0x5555555607a2;
mov ymm15_2 L0x5555555607a4;
mov ymm15_3 L0x5555555607a6;
mov ymm15_4 L0x5555555607a8;
mov ymm15_5 L0x5555555607aa;
mov ymm15_6 L0x5555555607ac;
mov ymm15_7 L0x5555555607ae;
mov ymm15_8 L0x5555555607b0;
mov ymm15_9 L0x5555555607b2;
mov ymm15_a L0x5555555607b4;
mov ymm15_b L0x5555555607b6;
mov ymm15_c L0x5555555607b8;
mov ymm15_d L0x5555555607ba;
mov ymm15_e L0x5555555607bc;
mov ymm15_f L0x5555555607be;
(* vpmullw %ymm14,%ymm7,%ymm13                     #! PC = 0x5555555586a5 *)
smull mulHymm7_0 mulL_0 ymm14_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm14_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm14_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm14_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm14_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm14_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm14_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm14_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm14_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm14_9 ymm7_9;
smull mulHymm7_a mulL_a ymm14_a ymm7_a;
smull mulHymm7_b mulL_b ymm14_b ymm7_b;
smull mulHymm7_c mulL_c ymm14_c ymm7_c;
smull mulHymm7_d mulL_d ymm14_d ymm7_d;
smull mulHymm7_e mulL_e ymm14_e ymm7_e;
smull mulHymm7_f mulL_f ymm14_f ymm7_f;
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
(* vpmulhw %ymm15,%ymm7,%ymm7                      #! PC = 0x5555555586aa *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm15_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm15_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm15_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm15_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm15_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm15_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm15_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm15_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm15_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm15_9;
smull mulH_a mulLymm7_a ymm7_a ymm15_a;
smull mulH_b mulLymm7_b ymm7_b ymm15_b;
smull mulH_c mulLymm7_c ymm7_c ymm15_c;
smull mulH_d mulLymm7_d ymm7_d ymm15_d;
smull mulH_e mulLymm7_e ymm7_e ymm15_e;
smull mulH_f mulLymm7_f ymm7_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555586af *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f
];
assume and [
mulLymm7_0 = mulLymm13_0, mulLymm7_1 = mulLymm13_1,
mulLymm7_2 = mulLymm13_2, mulLymm7_3 = mulLymm13_3,
mulLymm7_4 = mulLymm13_4, mulLymm7_5 = mulLymm13_5,
mulLymm7_6 = mulLymm13_6, mulLymm7_7 = mulLymm13_7,
mulLymm7_8 = mulLymm13_8, mulLymm7_9 = mulLymm13_9,
mulLymm7_a = mulLymm13_a, mulLymm7_b = mulLymm13_b,
mulLymm7_c = mulLymm13_c, mulLymm7_d = mulLymm13_d,
mulLymm7_e = mulLymm13_e, mulLymm7_f = mulLymm13_f
] && true;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x5555555586b3 *)
sub ymm7_0 ymm7_0 ymm13_0;
sub ymm7_1 ymm7_1 ymm13_1;
sub ymm7_2 ymm7_2 ymm13_2;
sub ymm7_3 ymm7_3 ymm13_3;
sub ymm7_4 ymm7_4 ymm13_4;
sub ymm7_5 ymm7_5 ymm13_5;
sub ymm7_6 ymm7_6 ymm13_6;
sub ymm7_7 ymm7_7 ymm13_7;
sub ymm7_8 ymm7_8 ymm13_8;
sub ymm7_9 ymm7_9 ymm13_9;
sub ymm7_a ymm7_a ymm13_a;
sub ymm7_b ymm7_b ymm13_b;
sub ymm7_c ymm7_c ymm13_c;
sub ymm7_d ymm7_d ymm13_d;
sub ymm7_e ymm7_e ymm13_e;
sub ymm7_f ymm7_f ymm13_f;
(* vpmullw %ymm14,%ymm4,%ymm13                     #! PC = 0x5555555586b8 *)
smull mulHymm4_0 mulL_0 ymm14_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm14_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm14_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm14_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm14_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm14_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm14_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm14_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm14_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm14_9 ymm4_9;
smull mulHymm4_a mulL_a ymm14_a ymm4_a;
smull mulHymm4_b mulL_b ymm14_b ymm4_b;
smull mulHymm4_c mulL_c ymm14_c ymm4_c;
smull mulHymm4_d mulL_d ymm14_d ymm4_d;
smull mulHymm4_e mulL_e ymm14_e ymm4_e;
smull mulHymm4_f mulL_f ymm14_f ymm4_f;
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
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x5555555586bd *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm15_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm15_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm15_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm15_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm15_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm15_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm15_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm15_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm15_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm15_9;
smull mulH_a mulLymm4_a ymm4_a ymm15_a;
smull mulH_b mulLymm4_b ymm4_b ymm15_b;
smull mulH_c mulLymm4_c ymm4_c ymm15_c;
smull mulH_d mulLymm4_d ymm4_d ymm15_d;
smull mulH_e mulLymm4_e ymm4_e ymm15_e;
smull mulH_f mulLymm4_f ymm4_f ymm15_f;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555586c2 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm4_0 = mulLymm13_0, mulLymm4_1 = mulLymm13_1,
mulLymm4_2 = mulLymm13_2, mulLymm4_3 = mulLymm13_3,
mulLymm4_4 = mulLymm13_4, mulLymm4_5 = mulLymm13_5,
mulLymm4_6 = mulLymm13_6, mulLymm4_7 = mulLymm13_7,
mulLymm4_8 = mulLymm13_8, mulLymm4_9 = mulLymm13_9,
mulLymm4_a = mulLymm13_a, mulLymm4_b = mulLymm13_b,
mulLymm4_c = mulLymm13_c, mulLymm4_d = mulLymm13_d,
mulLymm4_e = mulLymm13_e, mulLymm4_f = mulLymm13_f
];
assume and [
mulLymm4_0 = mulLymm13_0, mulLymm4_1 = mulLymm13_1,
mulLymm4_2 = mulLymm13_2, mulLymm4_3 = mulLymm13_3,
mulLymm4_4 = mulLymm13_4, mulLymm4_5 = mulLymm13_5,
mulLymm4_6 = mulLymm13_6, mulLymm4_7 = mulLymm13_7,
mulLymm4_8 = mulLymm13_8, mulLymm4_9 = mulLymm13_9,
mulLymm4_a = mulLymm13_a, mulLymm4_b = mulLymm13_b,
mulLymm4_c = mulLymm13_c, mulLymm4_d = mulLymm13_d,
mulLymm4_e = mulLymm13_e, mulLymm4_f = mulLymm13_f
] && true;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x5555555586c6 *)
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
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x5555555586cb *)
smull mulHymm8_0 mulL_0 ymm1_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm1_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm1_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm1_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm1_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm1_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm1_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm1_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm1_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm1_9 ymm8_9;
smull mulHymm8_a mulL_a ymm1_a ymm8_a;
smull mulHymm8_b mulL_b ymm1_b ymm8_b;
smull mulHymm8_c mulL_c ymm1_c ymm8_c;
smull mulHymm8_d mulL_d ymm1_d ymm8_d;
smull mulHymm8_e mulL_e ymm1_e ymm8_e;
smull mulHymm8_f mulL_f ymm1_f ymm8_f;
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
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x5555555586cf *)
smull mulHymm11_0 mulL_0 ymm1_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm1_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm1_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm1_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm1_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm1_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm1_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm1_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm1_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm1_9 ymm11_9;
smull mulHymm11_a mulL_a ymm1_a ymm11_a;
smull mulHymm11_b mulL_b ymm1_b ymm11_b;
smull mulHymm11_c mulL_c ymm1_c ymm11_c;
smull mulHymm11_d mulL_d ymm1_d ymm11_d;
smull mulHymm11_e mulL_e ymm1_e ymm11_e;
smull mulHymm11_f mulL_f ymm1_f ymm11_f;
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
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x5555555586d3 *)
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
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x5555555586d7 *)
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
(* vpaddw %ymm7,%ymm3,%ymm10                       #! PC = 0x5555555586db *)
add ymm10_0 ymm3_0 ymm7_0;
add ymm10_1 ymm3_1 ymm7_1;
add ymm10_2 ymm3_2 ymm7_2;
add ymm10_3 ymm3_3 ymm7_3;
add ymm10_4 ymm3_4 ymm7_4;
add ymm10_5 ymm3_5 ymm7_5;
add ymm10_6 ymm3_6 ymm7_6;
add ymm10_7 ymm3_7 ymm7_7;
add ymm10_8 ymm3_8 ymm7_8;
add ymm10_9 ymm3_9 ymm7_9;
add ymm10_a ymm3_a ymm7_a;
add ymm10_b ymm3_b ymm7_b;
add ymm10_c ymm3_c ymm7_c;
add ymm10_d ymm3_d ymm7_d;
add ymm10_e ymm3_e ymm7_e;
add ymm10_f ymm3_f ymm7_f;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x5555555586df *)
sub ymm7_0 ymm3_0 ymm7_0;
sub ymm7_1 ymm3_1 ymm7_1;
sub ymm7_2 ymm3_2 ymm7_2;
sub ymm7_3 ymm3_3 ymm7_3;
sub ymm7_4 ymm3_4 ymm7_4;
sub ymm7_5 ymm3_5 ymm7_5;
sub ymm7_6 ymm3_6 ymm7_6;
sub ymm7_7 ymm3_7 ymm7_7;
sub ymm7_8 ymm3_8 ymm7_8;
sub ymm7_9 ymm3_9 ymm7_9;
sub ymm7_a ymm3_a ymm7_a;
sub ymm7_b ymm3_b ymm7_b;
sub ymm7_c ymm3_c ymm7_c;
sub ymm7_d ymm3_d ymm7_d;
sub ymm7_e ymm3_e ymm7_e;
sub ymm7_f ymm3_f ymm7_f;
(* vpaddw %ymm4,%ymm9,%ymm3                        #! PC = 0x5555555586e3 *)
add ymm3_0 ymm9_0 ymm4_0;
add ymm3_1 ymm9_1 ymm4_1;
add ymm3_2 ymm9_2 ymm4_2;
add ymm3_3 ymm9_3 ymm4_3;
add ymm3_4 ymm9_4 ymm4_4;
add ymm3_5 ymm9_5 ymm4_5;
add ymm3_6 ymm9_6 ymm4_6;
add ymm3_7 ymm9_7 ymm4_7;
add ymm3_8 ymm9_8 ymm4_8;
add ymm3_9 ymm9_9 ymm4_9;
add ymm3_a ymm9_a ymm4_a;
add ymm3_b ymm9_b ymm4_b;
add ymm3_c ymm9_c ymm4_c;
add ymm3_d ymm9_d ymm4_d;
add ymm3_e ymm9_e ymm4_e;
add ymm3_f ymm9_f ymm4_f;
(* vpsubw %ymm4,%ymm9,%ymm4                        #! PC = 0x5555555586e7 *)
sub ymm4_0 ymm9_0 ymm4_0;
sub ymm4_1 ymm9_1 ymm4_1;
sub ymm4_2 ymm9_2 ymm4_2;
sub ymm4_3 ymm9_3 ymm4_3;
sub ymm4_4 ymm9_4 ymm4_4;
sub ymm4_5 ymm9_5 ymm4_5;
sub ymm4_6 ymm9_6 ymm4_6;
sub ymm4_7 ymm9_7 ymm4_7;
sub ymm4_8 ymm9_8 ymm4_8;
sub ymm4_9 ymm9_9 ymm4_9;
sub ymm4_a ymm9_a ymm4_a;
sub ymm4_b ymm9_b ymm4_b;
sub ymm4_c ymm9_c ymm4_c;
sub ymm4_d ymm9_d ymm4_d;
sub ymm4_e ymm9_e ymm4_e;
sub ymm4_f ymm9_f ymm4_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555586eb *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555586ef *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
];
assume and [
mulLymm8_0 = mulLymm12_0, mulLymm8_1 = mulLymm12_1,
mulLymm8_2 = mulLymm12_2, mulLymm8_3 = mulLymm12_3,
mulLymm8_4 = mulLymm12_4, mulLymm8_5 = mulLymm12_5,
mulLymm8_6 = mulLymm12_6, mulLymm8_7 = mulLymm12_7,
mulLymm8_8 = mulLymm12_8, mulLymm8_9 = mulLymm12_9,
mulLymm8_a = mulLymm12_a, mulLymm8_b = mulLymm12_b,
mulLymm8_c = mulLymm12_c, mulLymm8_d = mulLymm12_d,
mulLymm8_e = mulLymm12_e, mulLymm8_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
] && true;
(* vpaddw %ymm8,%ymm6,%ymm9                        #! PC = 0x5555555586f3 *)
add ymm9_0 ymm6_0 ymm8_0;
add ymm9_1 ymm6_1 ymm8_1;
add ymm9_2 ymm6_2 ymm8_2;
add ymm9_3 ymm6_3 ymm8_3;
add ymm9_4 ymm6_4 ymm8_4;
add ymm9_5 ymm6_5 ymm8_5;
add ymm9_6 ymm6_6 ymm8_6;
add ymm9_7 ymm6_7 ymm8_7;
add ymm9_8 ymm6_8 ymm8_8;
add ymm9_9 ymm6_9 ymm8_9;
add ymm9_a ymm6_a ymm8_a;
add ymm9_b ymm6_b ymm8_b;
add ymm9_c ymm6_c ymm8_c;
add ymm9_d ymm6_d ymm8_d;
add ymm9_e ymm6_e ymm8_e;
add ymm9_f ymm6_f ymm8_f;
(* vpsubw %ymm8,%ymm6,%ymm8                        #! PC = 0x5555555586f8 *)
sub ymm8_0 ymm6_0 ymm8_0;
sub ymm8_1 ymm6_1 ymm8_1;
sub ymm8_2 ymm6_2 ymm8_2;
sub ymm8_3 ymm6_3 ymm8_3;
sub ymm8_4 ymm6_4 ymm8_4;
sub ymm8_5 ymm6_5 ymm8_5;
sub ymm8_6 ymm6_6 ymm8_6;
sub ymm8_7 ymm6_7 ymm8_7;
sub ymm8_8 ymm6_8 ymm8_8;
sub ymm8_9 ymm6_9 ymm8_9;
sub ymm8_a ymm6_a ymm8_a;
sub ymm8_b ymm6_b ymm8_b;
sub ymm8_c ymm6_c ymm8_c;
sub ymm8_d ymm6_d ymm8_d;
sub ymm8_e ymm6_e ymm8_e;
sub ymm8_f ymm6_f ymm8_f;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x5555555586fd *)
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
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x555555558702 *)
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
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x555555558707 *)
sub ymm9_0 ymm9_0 ymm12_0;
sub ymm9_1 ymm9_1 ymm12_1;
sub ymm9_2 ymm9_2 ymm12_2;
sub ymm9_3 ymm9_3 ymm12_3;
sub ymm9_4 ymm9_4 ymm12_4;
sub ymm9_5 ymm9_5 ymm12_5;
sub ymm9_6 ymm9_6 ymm12_6;
sub ymm9_7 ymm9_7 ymm12_7;
sub ymm9_8 ymm9_8 ymm12_8;
sub ymm9_9 ymm9_9 ymm12_9;
sub ymm9_a ymm9_a ymm12_a;
sub ymm9_b ymm9_b ymm12_b;
sub ymm9_c ymm9_c ymm12_c;
sub ymm9_d ymm9_d ymm12_d;
sub ymm9_e ymm9_e ymm12_e;
sub ymm9_f ymm9_f ymm12_f;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555555870c *)
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
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555558711 *)
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
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x555555558716 *)
add ymm11_0 ymm11_0 ymm13_0;
add ymm11_1 ymm11_1 ymm13_1;
add ymm11_2 ymm11_2 ymm13_2;
add ymm11_3 ymm11_3 ymm13_3;
add ymm11_4 ymm11_4 ymm13_4;
add ymm11_5 ymm11_5 ymm13_5;
add ymm11_6 ymm11_6 ymm13_6;
add ymm11_7 ymm11_7 ymm13_7;
add ymm11_8 ymm11_8 ymm13_8;
add ymm11_9 ymm11_9 ymm13_9;
add ymm11_a ymm11_a ymm13_a;
add ymm11_b ymm11_b ymm13_b;
add ymm11_c ymm11_c ymm13_c;
add ymm11_d ymm11_d ymm13_d;
add ymm11_e ymm11_e ymm13_e;
add ymm11_f ymm11_f ymm13_f;
(* ===== End of level 4, off 1 ===== *)

(* ecut 12, rcut 12 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((6269*x)**1) + ymm10_2*((6269*x)**2) + ymm10_3*((6269*x)**3) +
    ymm3_0*((6269*x)**4) + ymm3_1*((6269*x)**5) + ymm3_2*((6269*x)**6) + ymm3_3*((6269*x)**7)
  )
  [10753, x**8 - (-2417)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((6269*x)**1) + ymm7_2*((6269*x)**2) + ymm7_3*((6269*x)**3) +
    ymm4_0*((6269*x)**4) + ymm4_1*((6269*x)**5) + ymm4_2*((6269*x)**6) + ymm4_3*((6269*x)**7)
  )
  [10753, x**8 - (2417)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((6269*x)**1) + ymm9_2*((6269*x)**2) + ymm9_3*((6269*x)**3) +
    ymm6_0*((6269*x)**4) + ymm6_1*((6269*x)**5) + ymm6_2*((6269*x)**6) + ymm6_3*((6269*x)**7)
  )
  [10753, x**8 - (136)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm8_1*((6269*x)**1) + ymm8_2*((6269*x)**2) + ymm8_3*((6269*x)**3) +
    ymm11_0*((6269*x)**4) + ymm11_1*((6269*x)**5) + ymm11_2*((6269*x)**6) + ymm11_3*((6269*x)**7)
  )
  [10753, x**8 - (-136)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((3223*x)**1) + ymm10_6*((3223*x)**2) + ymm10_7*((3223*x)**3) +
    ymm3_4*((3223*x)**4) + ymm3_5*((3223*x)**5) + ymm3_6*((3223*x)**6) + ymm3_7*((3223*x)**7)
  )
  [10753, x**8 - (-644)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((3223*x)**1) + ymm7_6*((3223*x)**2) + ymm7_7*((3223*x)**3) +
    ymm4_4*((3223*x)**4) + ymm4_5*((3223*x)**5) + ymm4_6*((3223*x)**6) + ymm4_7*((3223*x)**7)
  )
  [10753, x**8 - (644)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((3223*x)**1) + ymm9_6*((3223*x)**2) + ymm9_7*((3223*x)**3) +
    ymm6_4*((3223*x)**4) + ymm6_5*((3223*x)**5) + ymm6_6*((3223*x)**6) + ymm6_7*((3223*x)**7)
  )
  [10753, x**8 - (-1641)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm8_5*((3223*x)**1) + ymm8_6*((3223*x)**2) + ymm8_7*((3223*x)**3) +
    ymm11_4*((3223*x)**4) + ymm11_5*((3223*x)**5) + ymm11_6*((3223*x)**6) + ymm11_7*((3223*x)**7)
  )
  [10753, x**8 - (1641)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((8417*x)**1) + ymm10_a*((8417*x)**2) + ymm10_b*((8417*x)**3) +
    ymm3_8*((8417*x)**4) + ymm3_9*((8417*x)**5) + ymm3_a*((8417*x)**6) + ymm3_b*((8417*x)**7)
  )
  [10753, x**8 - (2436)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((8417*x)**1) + ymm7_a*((8417*x)**2) + ymm7_b*((8417*x)**3) +
    ymm4_8*((8417*x)**4) + ymm4_9*((8417*x)**5) + ymm4_a*((8417*x)**6) + ymm4_b*((8417*x)**7)
  )
  [10753, x**8 - (-2436)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((8417*x)**1) + ymm9_a*((8417*x)**2) + ymm9_b*((8417*x)**3) +
    ymm6_8*((8417*x)**4) + ymm6_9*((8417*x)**5) + ymm6_a*((8417*x)**6) + ymm6_b*((8417*x)**7)
  )
  [10753, x**8 - (597)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm8_9*((8417*x)**1) + ymm8_a*((8417*x)**2) + ymm8_b*((8417*x)**3) +
    ymm11_8*((8417*x)**4) + ymm11_9*((8417*x)**5) + ymm11_a*((8417*x)**6) + ymm11_b*((8417*x)**7)
  )
  [10753, x**8 - (-597)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((10*x)**1) + ymm10_e*((10*x)**2) + ymm10_f*((10*x)**3) +
    ymm3_c*((10*x)**4) + ymm3_d*((10*x)**5) + ymm3_e*((10*x)**6) + ymm3_f*((10*x)**7)
  )
  [10753, x**8 - (1917)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((10*x)**1) + ymm7_e*((10*x)**2) + ymm7_f*((10*x)**3) +
    ymm4_c*((10*x)**4) + ymm4_d*((10*x)**5) + ymm4_e*((10*x)**6) + ymm4_f*((10*x)**7)
  )
  [10753, x**8 - (-1917)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((10*x)**1) + ymm9_e*((10*x)**2) + ymm9_f*((10*x)**3) +
    ymm6_c*((10*x)**4) + ymm6_d*((10*x)**5) + ymm6_e*((10*x)**6) + ymm6_f*((10*x)**7)
  )
  [10753, x**8 - (-3013)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm8_d*((10*x)**1) + ymm8_e*((10*x)**2) + ymm8_f*((10*x)**3) +
    ymm11_c*((10*x)**4) + ymm11_d*((10*x)**5) + ymm11_e*((10*x)**6) + ymm11_f*((10*x)**7)
  )
  [10753, x**8 - (3013)]
] && and [
  (-(16593))@16 <=s ymm10_0, ymm10_0 <=s (16593)@16, (-(18937))@16 <=s ymm10_1, ymm10_1 <=s (18937)@16,
  (-(17543))@16 <=s ymm10_2, ymm10_2 <=s (17543)@16, (-(18417))@16 <=s ymm10_3, ymm10_3 <=s (18417)@16,
  (-(18290))@16 <=s ymm3_0, ymm3_0 <=s (18290)@16, (-(19286))@16 <=s ymm3_1, ymm3_1 <=s (19286)@16,
  (-(16587))@16 <=s ymm3_2, ymm3_2 <=s (16587)@16, (-(17874))@16 <=s ymm3_3, ymm3_3 <=s (17874)@16,
  (-(16593))@16 <=s ymm7_0, ymm7_0 <=s (16593)@16, (-(18937))@16 <=s ymm7_1, ymm7_1 <=s (18937)@16,
  (-(17543))@16 <=s ymm7_2, ymm7_2 <=s (17543)@16, (-(18417))@16 <=s ymm7_3, ymm7_3 <=s (18417)@16,
  (-(18290))@16 <=s ymm4_0, ymm4_0 <=s (18290)@16, (-(19286))@16 <=s ymm4_1, ymm4_1 <=s (19286)@16,
  (-(16587))@16 <=s ymm4_2, ymm4_2 <=s (16587)@16, (-(17874))@16 <=s ymm4_3, ymm4_3 <=s (17874)@16,
  (-(16546))@16 <=s ymm9_0, ymm9_0 <=s (16546)@16, (-(18890))@16 <=s ymm9_1, ymm9_1 <=s (18890)@16,
  (-(17496))@16 <=s ymm9_2, ymm9_2 <=s (17496)@16, (-(18370))@16 <=s ymm9_3, ymm9_3 <=s (18370)@16,
  (-(18235))@16 <=s ymm6_0, ymm6_0 <=s (18235)@16, (-(19231))@16 <=s ymm6_1, ymm6_1 <=s (19231)@16,
  (-(16540))@16 <=s ymm6_2, ymm6_2 <=s (16540)@16, (-(17822))@16 <=s ymm6_3, ymm6_3 <=s (17822)@16,
  (-(16546))@16 <=s ymm8_0, ymm8_0 <=s (16546)@16, (-(18890))@16 <=s ymm8_1, ymm8_1 <=s (18890)@16,
  (-(17496))@16 <=s ymm8_2, ymm8_2 <=s (17496)@16, (-(18370))@16 <=s ymm8_3, ymm8_3 <=s (18370)@16,
  (-(18235))@16 <=s ymm11_0, ymm11_0 <=s (18235)@16, (-(19231))@16 <=s ymm11_1, ymm11_1 <=s (19231)@16,
  (-(16540))@16 <=s ymm11_2, ymm11_2 <=s (16540)@16, (-(17822))@16 <=s ymm11_3, ymm11_3 <=s (17822)@16,
  (-(17884))@16 <=s ymm10_4, ymm10_4 <=s (17884)@16, (-(18160))@16 <=s ymm10_5, ymm10_5 <=s (18160)@16,
  (-(17071))@16 <=s ymm10_6, ymm10_6 <=s (17071)@16, (-(19267))@16 <=s ymm10_7, ymm10_7 <=s (19267)@16,
  (-(17889))@16 <=s ymm3_4, ymm3_4 <=s (17889)@16, (-(17705))@16 <=s ymm3_5, ymm3_5 <=s (17705)@16,
  (-(18524))@16 <=s ymm3_6, ymm3_6 <=s (18524)@16, (-(18230))@16 <=s ymm3_7, ymm3_7 <=s (18230)@16,
  (-(17884))@16 <=s ymm7_4, ymm7_4 <=s (17884)@16, (-(18160))@16 <=s ymm7_5, ymm7_5 <=s (18160)@16,
  (-(17071))@16 <=s ymm7_6, ymm7_6 <=s (17071)@16, (-(19267))@16 <=s ymm7_7, ymm7_7 <=s (19267)@16,
  (-(17889))@16 <=s ymm4_4, ymm4_4 <=s (17889)@16, (-(17705))@16 <=s ymm4_5, ymm4_5 <=s (17705)@16,
  (-(18524))@16 <=s ymm4_6, ymm4_6 <=s (18524)@16, (-(18230))@16 <=s ymm4_7, ymm4_7 <=s (18230)@16,
  (-(17829))@16 <=s ymm9_4, ymm9_4 <=s (17829)@16, (-(18108))@16 <=s ymm9_5, ymm9_5 <=s (18108)@16,
  (-(17016))@16 <=s ymm9_6, ymm9_6 <=s (17016)@16, (-(19220))@16 <=s ymm9_7, ymm9_7 <=s (19220)@16,
  (-(17842))@16 <=s ymm6_4, ymm6_4 <=s (17842)@16, (-(17658))@16 <=s ymm6_5, ymm6_5 <=s (17658)@16,
  (-(18469))@16 <=s ymm6_6, ymm6_6 <=s (18469)@16, (-(18175))@16 <=s ymm6_7, ymm6_7 <=s (18175)@16,
  (-(17829))@16 <=s ymm8_4, ymm8_4 <=s (17829)@16, (-(18108))@16 <=s ymm8_5, ymm8_5 <=s (18108)@16,
  (-(17016))@16 <=s ymm8_6, ymm8_6 <=s (17016)@16, (-(19220))@16 <=s ymm8_7, ymm8_7 <=s (19220)@16,
  (-(17842))@16 <=s ymm11_4, ymm11_4 <=s (17842)@16, (-(17658))@16 <=s ymm11_5, ymm11_5 <=s (17658)@16,
  (-(18469))@16 <=s ymm11_6, ymm11_6 <=s (18469)@16, (-(18175))@16 <=s ymm11_7, ymm11_7 <=s (18175)@16,
  (-(17483))@16 <=s ymm10_8, ymm10_8 <=s (17483)@16, (-(18668))@16 <=s ymm10_9, ymm10_9 <=s (18668)@16,
  (-(16984))@16 <=s ymm10_a, ymm10_a <=s (16984)@16, (-(17498))@16 <=s ymm10_b, ymm10_b <=s (17498)@16,
  (-(18443))@16 <=s ymm3_8, ymm3_8 <=s (18443)@16, (-(17936))@16 <=s ymm3_9, ymm3_9 <=s (17936)@16,
  (-(18711))@16 <=s ymm3_a, ymm3_a <=s (18711)@16, (-(18968))@16 <=s ymm3_b, ymm3_b <=s (18968)@16,
  (-(17483))@16 <=s ymm7_8, ymm7_8 <=s (17483)@16, (-(18668))@16 <=s ymm7_9, ymm7_9 <=s (18668)@16,
  (-(16984))@16 <=s ymm7_a, ymm7_a <=s (16984)@16, (-(17498))@16 <=s ymm7_b, ymm7_b <=s (17498)@16,
  (-(18443))@16 <=s ymm4_8, ymm4_8 <=s (18443)@16, (-(17936))@16 <=s ymm4_9, ymm4_9 <=s (17936)@16,
  (-(18711))@16 <=s ymm4_a, ymm4_a <=s (18711)@16, (-(18968))@16 <=s ymm4_b, ymm4_b <=s (18968)@16,
  (-(17431))@16 <=s ymm9_8, ymm9_8 <=s (17431)@16, (-(18621))@16 <=s ymm9_9, ymm9_9 <=s (18621)@16,
  (-(16937))@16 <=s ymm9_a, ymm9_a <=s (16937)@16, (-(17451))@16 <=s ymm9_b, ymm9_b <=s (17451)@16,
  (-(18391))@16 <=s ymm6_8, ymm6_8 <=s (18391)@16, (-(17889))@16 <=s ymm6_9, ymm6_9 <=s (17889)@16,
  (-(18664))@16 <=s ymm6_a, ymm6_a <=s (18664)@16, (-(18921))@16 <=s ymm6_b, ymm6_b <=s (18921)@16,
  (-(17431))@16 <=s ymm8_8, ymm8_8 <=s (17431)@16, (-(18621))@16 <=s ymm8_9, ymm8_9 <=s (18621)@16,
  (-(16937))@16 <=s ymm8_a, ymm8_a <=s (16937)@16, (-(17451))@16 <=s ymm8_b, ymm8_b <=s (17451)@16,
  (-(18391))@16 <=s ymm11_8, ymm11_8 <=s (18391)@16, (-(17889))@16 <=s ymm11_9, ymm11_9 <=s (17889)@16,
  (-(18664))@16 <=s ymm11_a, ymm11_a <=s (18664)@16, (-(18921))@16 <=s ymm11_b, ymm11_b <=s (18921)@16,
  (-(17651))@16 <=s ymm10_c, ymm10_c <=s (17651)@16, (-(18005))@16 <=s ymm10_d, ymm10_d <=s (18005)@16,
  (-(17299))@16 <=s ymm10_e, ymm10_e <=s (17299)@16, (-(18095))@16 <=s ymm10_f, ymm10_f <=s (18095)@16,
  (-(17750))@16 <=s ymm3_c, ymm3_c <=s (17750)@16, (-(17777))@16 <=s ymm3_d, ymm3_d <=s (17777)@16,
  (-(19034))@16 <=s ymm3_e, ymm3_e <=s (19034)@16, (-(16864))@16 <=s ymm3_f, ymm3_f <=s (16864)@16,
  (-(17651))@16 <=s ymm7_c, ymm7_c <=s (17651)@16, (-(18005))@16 <=s ymm7_d, ymm7_d <=s (18005)@16,
  (-(17299))@16 <=s ymm7_e, ymm7_e <=s (17299)@16, (-(18095))@16 <=s ymm7_f, ymm7_f <=s (18095)@16,
  (-(17750))@16 <=s ymm4_c, ymm4_c <=s (17750)@16, (-(17777))@16 <=s ymm4_d, ymm4_d <=s (17777)@16,
  (-(19034))@16 <=s ymm4_e, ymm4_e <=s (19034)@16, (-(16864))@16 <=s ymm4_f, ymm4_f <=s (16864)@16,
  (-(17609))@16 <=s ymm9_c, ymm9_c <=s (17609)@16, (-(17950))@16 <=s ymm9_d, ymm9_d <=s (17950)@16,
  (-(17244))@16 <=s ymm9_e, ymm9_e <=s (17244)@16, (-(18043))@16 <=s ymm9_f, ymm9_f <=s (18043)@16,
  (-(17698))@16 <=s ymm6_c, ymm6_c <=s (17698)@16, (-(17722))@16 <=s ymm6_d, ymm6_d <=s (17722)@16,
  (-(18987))@16 <=s ymm6_e, ymm6_e <=s (18987)@16, (-(16822))@16 <=s ymm6_f, ymm6_f <=s (16822)@16,
  (-(17609))@16 <=s ymm8_c, ymm8_c <=s (17609)@16, (-(17950))@16 <=s ymm8_d, ymm8_d <=s (17950)@16,
  (-(17244))@16 <=s ymm8_e, ymm8_e <=s (17244)@16, (-(18043))@16 <=s ymm8_f, ymm8_f <=s (18043)@16,
  (-(17698))@16 <=s ymm11_c, ymm11_c <=s (17698)@16, (-(17722))@16 <=s ymm11_d, ymm11_d <=s (17722)@16,
  (-(18987))@16 <=s ymm11_e, ymm11_e <=s (18987)@16, (-(16822))@16 <=s ymm11_f, ymm11_f <=s (16822)@16
];

(* ===== Start of level 5, off 1 ===== *)
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555555871b *)
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
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x555555558720 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm15_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm15_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm15_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm15_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm15_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm15_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm15_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm15_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm15_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm15_9;
smull mulH_a mulLymm3_a ymm3_a ymm15_a;
smull mulH_b mulLymm3_b ymm3_b ymm15_b;
smull mulH_c mulLymm3_c ymm3_c ymm15_c;
smull mulH_d mulLymm3_d ymm3_d ymm15_d;
smull mulH_e mulLymm3_e ymm3_e ymm15_e;
smull mulH_f mulLymm3_f ymm3_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558725 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm13_0, mulLymm3_1 = mulLymm13_1,
mulLymm3_2 = mulLymm13_2, mulLymm3_3 = mulLymm13_3,
mulLymm3_4 = mulLymm13_4, mulLymm3_5 = mulLymm13_5,
mulLymm3_6 = mulLymm13_6, mulLymm3_7 = mulLymm13_7,
mulLymm3_8 = mulLymm13_8, mulLymm3_9 = mulLymm13_9,
mulLymm3_a = mulLymm13_a, mulLymm3_b = mulLymm13_b,
mulLymm3_c = mulLymm13_c, mulLymm3_d = mulLymm13_d,
mulLymm3_e = mulLymm13_e, mulLymm3_f = mulLymm13_f
];
assume and [
mulLymm3_0 = mulLymm13_0, mulLymm3_1 = mulLymm13_1,
mulLymm3_2 = mulLymm13_2, mulLymm3_3 = mulLymm13_3,
mulLymm3_4 = mulLymm13_4, mulLymm3_5 = mulLymm13_5,
mulLymm3_6 = mulLymm13_6, mulLymm3_7 = mulLymm13_7,
mulLymm3_8 = mulLymm13_8, mulLymm3_9 = mulLymm13_9,
mulLymm3_a = mulLymm13_a, mulLymm3_b = mulLymm13_b,
mulLymm3_c = mulLymm13_c, mulLymm3_d = mulLymm13_d,
mulLymm3_e = mulLymm13_e, mulLymm3_f = mulLymm13_f
] && true;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x555555558729 *)
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
(* vpmullw %ymm1,%ymm4,%ymm12                      #! PC = 0x55555555872e *)
smull mulHymm4_0 mulL_0 ymm1_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm1_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm1_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm1_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm1_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm1_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm1_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm1_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm1_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm1_9 ymm4_9;
smull mulHymm4_a mulL_a ymm1_a ymm4_a;
smull mulHymm4_b mulL_b ymm1_b ymm4_b;
smull mulHymm4_c mulL_c ymm1_c ymm4_c;
smull mulHymm4_d mulL_d ymm1_d ymm4_d;
smull mulHymm4_e mulL_e ymm1_e ymm4_e;
smull mulHymm4_f mulL_f ymm1_f ymm4_f;
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
(* vpmullw 0x140(%rdx),%ymm6,%ymm13                #! EA = L0x555555560840; Value = 0xd792d792d792d792; PC = 0x555555558732 *)
smull mulHymm6_0 mulL_0 L0x555555560840 ymm6_0;
smull mulHymm6_1 mulL_1 L0x555555560842 ymm6_1;
smull mulHymm6_2 mulL_2 L0x555555560844 ymm6_2;
smull mulHymm6_3 mulL_3 L0x555555560846 ymm6_3;
smull mulHymm6_4 mulL_4 L0x555555560848 ymm6_4;
smull mulHymm6_5 mulL_5 L0x55555556084a ymm6_5;
smull mulHymm6_6 mulL_6 L0x55555556084c ymm6_6;
smull mulHymm6_7 mulL_7 L0x55555556084e ymm6_7;
smull mulHymm6_8 mulL_8 L0x555555560850 ymm6_8;
smull mulHymm6_9 mulL_9 L0x555555560852 ymm6_9;
smull mulHymm6_a mulL_a L0x555555560854 ymm6_a;
smull mulHymm6_b mulL_b L0x555555560856 ymm6_b;
smull mulHymm6_c mulL_c L0x555555560858 ymm6_c;
smull mulHymm6_d mulL_d L0x55555556085a ymm6_d;
smull mulHymm6_e mulL_e L0x55555556085c ymm6_e;
smull mulHymm6_f mulL_f L0x55555556085e ymm6_f;
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
(* vpmullw 0x1c0(%rdx),%ymm11,%ymm14               #! EA = L0x5555555608c0; Value = 0x4029402940294029; PC = 0x55555555873a *)
smull mulHymm11_0 mulL_0 L0x5555555608c0 ymm11_0;
smull mulHymm11_1 mulL_1 L0x5555555608c2 ymm11_1;
smull mulHymm11_2 mulL_2 L0x5555555608c4 ymm11_2;
smull mulHymm11_3 mulL_3 L0x5555555608c6 ymm11_3;
smull mulHymm11_4 mulL_4 L0x5555555608c8 ymm11_4;
smull mulHymm11_5 mulL_5 L0x5555555608ca ymm11_5;
smull mulHymm11_6 mulL_6 L0x5555555608cc ymm11_6;
smull mulHymm11_7 mulL_7 L0x5555555608ce ymm11_7;
smull mulHymm11_8 mulL_8 L0x5555555608d0 ymm11_8;
smull mulHymm11_9 mulL_9 L0x5555555608d2 ymm11_9;
smull mulHymm11_a mulL_a L0x5555555608d4 ymm11_a;
smull mulHymm11_b mulL_b L0x5555555608d6 ymm11_b;
smull mulHymm11_c mulL_c L0x5555555608d8 ymm11_c;
smull mulHymm11_d mulL_d L0x5555555608da ymm11_d;
smull mulHymm11_e mulL_e L0x5555555608dc ymm11_e;
smull mulHymm11_f mulL_f L0x5555555608de ymm11_f;
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
(* vpmulhw %ymm2,%ymm4,%ymm4                       #! PC = 0x555555558742 *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm2_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm2_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm2_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm2_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm2_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm2_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm2_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm2_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm2_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm2_9;
smull mulH_a mulLymm4_a ymm4_a ymm2_a;
smull mulH_b mulLymm4_b ymm4_b ymm2_b;
smull mulH_c mulLymm4_c ymm4_c ymm2_c;
smull mulH_d mulLymm4_d ymm4_d ymm2_d;
smull mulH_e mulLymm4_e ymm4_e ymm2_e;
smull mulH_f mulLymm4_f ymm4_f ymm2_f;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw 0x160(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560860; Value = 0xf392f392f392f392; PC = 0x555555558746 *)
smull mulH_0 mulLymm6_0 ymm6_0 L0x555555560860;
smull mulH_1 mulLymm6_1 ymm6_1 L0x555555560862;
smull mulH_2 mulLymm6_2 ymm6_2 L0x555555560864;
smull mulH_3 mulLymm6_3 ymm6_3 L0x555555560866;
smull mulH_4 mulLymm6_4 ymm6_4 L0x555555560868;
smull mulH_5 mulLymm6_5 ymm6_5 L0x55555556086a;
smull mulH_6 mulLymm6_6 ymm6_6 L0x55555556086c;
smull mulH_7 mulLymm6_7 ymm6_7 L0x55555556086e;
smull mulH_8 mulLymm6_8 ymm6_8 L0x555555560870;
smull mulH_9 mulLymm6_9 ymm6_9 L0x555555560872;
smull mulH_a mulLymm6_a ymm6_a L0x555555560874;
smull mulH_b mulLymm6_b ymm6_b L0x555555560876;
smull mulH_c mulLymm6_c ymm6_c L0x555555560878;
smull mulH_d mulLymm6_d ymm6_d L0x55555556087a;
smull mulH_e mulLymm6_e ymm6_e L0x55555556087c;
smull mulH_f mulLymm6_f ymm6_f L0x55555556087e;
mov ymm6_0 mulH_0;
mov ymm6_1 mulH_1;
mov ymm6_2 mulH_2;
mov ymm6_3 mulH_3;
mov ymm6_4 mulH_4;
mov ymm6_5 mulH_5;
mov ymm6_6 mulH_6;
mov ymm6_7 mulH_7;
mov ymm6_8 mulH_8;
mov ymm6_9 mulH_9;
mov ymm6_a mulH_a;
mov ymm6_b mulH_b;
mov ymm6_c mulH_c;
mov ymm6_d mulH_d;
mov ymm6_e mulH_e;
mov ymm6_f mulH_f;
(* vpmulhw 0x1e0(%rdx),%ymm11,%ymm11               #! EA = L0x5555555608e0; Value = 0x0e290e290e290e29; PC = 0x55555555874e *)
smull mulH_0 mulLymm11_0 ymm11_0 L0x5555555608e0;
smull mulH_1 mulLymm11_1 ymm11_1 L0x5555555608e2;
smull mulH_2 mulLymm11_2 ymm11_2 L0x5555555608e4;
smull mulH_3 mulLymm11_3 ymm11_3 L0x5555555608e6;
smull mulH_4 mulLymm11_4 ymm11_4 L0x5555555608e8;
smull mulH_5 mulLymm11_5 ymm11_5 L0x5555555608ea;
smull mulH_6 mulLymm11_6 ymm11_6 L0x5555555608ec;
smull mulH_7 mulLymm11_7 ymm11_7 L0x5555555608ee;
smull mulH_8 mulLymm11_8 ymm11_8 L0x5555555608f0;
smull mulH_9 mulLymm11_9 ymm11_9 L0x5555555608f2;
smull mulH_a mulLymm11_a ymm11_a L0x5555555608f4;
smull mulH_b mulLymm11_b ymm11_b L0x5555555608f6;
smull mulH_c mulLymm11_c ymm11_c L0x5555555608f8;
smull mulH_d mulLymm11_d ymm11_d L0x5555555608fa;
smull mulH_e mulLymm11_e ymm11_e L0x5555555608fc;
smull mulH_f mulLymm11_f ymm11_f L0x5555555608fe;
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
(* vpaddw %ymm3,%ymm10,%ymm5                       #! PC = 0x555555558756 *)
add ymm5_0 ymm10_0 ymm3_0;
add ymm5_1 ymm10_1 ymm3_1;
add ymm5_2 ymm10_2 ymm3_2;
add ymm5_3 ymm10_3 ymm3_3;
add ymm5_4 ymm10_4 ymm3_4;
add ymm5_5 ymm10_5 ymm3_5;
add ymm5_6 ymm10_6 ymm3_6;
add ymm5_7 ymm10_7 ymm3_7;
add ymm5_8 ymm10_8 ymm3_8;
add ymm5_9 ymm10_9 ymm3_9;
add ymm5_a ymm10_a ymm3_a;
add ymm5_b ymm10_b ymm3_b;
add ymm5_c ymm10_c ymm3_c;
add ymm5_d ymm10_d ymm3_d;
add ymm5_e ymm10_e ymm3_e;
add ymm5_f ymm10_f ymm3_f;
(* vpsubw %ymm3,%ymm10,%ymm3                       #! PC = 0x55555555875a *)
sub ymm3_0 ymm10_0 ymm3_0;
sub ymm3_1 ymm10_1 ymm3_1;
sub ymm3_2 ymm10_2 ymm3_2;
sub ymm3_3 ymm10_3 ymm3_3;
sub ymm3_4 ymm10_4 ymm3_4;
sub ymm3_5 ymm10_5 ymm3_5;
sub ymm3_6 ymm10_6 ymm3_6;
sub ymm3_7 ymm10_7 ymm3_7;
sub ymm3_8 ymm10_8 ymm3_8;
sub ymm3_9 ymm10_9 ymm3_9;
sub ymm3_a ymm10_a ymm3_a;
sub ymm3_b ymm10_b ymm3_b;
sub ymm3_c ymm10_c ymm3_c;
sub ymm3_d ymm10_d ymm3_d;
sub ymm3_e ymm10_e ymm3_e;
sub ymm3_f ymm10_f ymm3_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555875e *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558762 *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555558766 *)
smull mulH_0 mulLymm14_0 ymm14_0 ymm0_0;
smull mulH_1 mulLymm14_1 ymm14_1 ymm0_1;
smull mulH_2 mulLymm14_2 ymm14_2 ymm0_2;
smull mulH_3 mulLymm14_3 ymm14_3 ymm0_3;
smull mulH_4 mulLymm14_4 ymm14_4 ymm0_4;
smull mulH_5 mulLymm14_5 ymm14_5 ymm0_5;
smull mulH_6 mulLymm14_6 ymm14_6 ymm0_6;
smull mulH_7 mulLymm14_7 ymm14_7 ymm0_7;
smull mulH_8 mulLymm14_8 ymm14_8 ymm0_8;
smull mulH_9 mulLymm14_9 ymm14_9 ymm0_9;
smull mulH_a mulLymm14_a ymm14_a ymm0_a;
smull mulH_b mulLymm14_b ymm14_b ymm0_b;
smull mulH_c mulLymm14_c ymm14_c ymm0_c;
smull mulH_d mulLymm14_d ymm14_d ymm0_d;
smull mulH_e mulLymm14_e ymm14_e ymm0_e;
smull mulH_f mulLymm14_f ymm14_f ymm0_f;
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
assert true && and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f,
mulLymm6_0 = mulLymm13_0, mulLymm6_1 = mulLymm13_1,
mulLymm6_2 = mulLymm13_2, mulLymm6_3 = mulLymm13_3,
mulLymm6_4 = mulLymm13_4, mulLymm6_5 = mulLymm13_5,
mulLymm6_6 = mulLymm13_6, mulLymm6_7 = mulLymm13_7,
mulLymm6_8 = mulLymm13_8, mulLymm6_9 = mulLymm13_9,
mulLymm6_a = mulLymm13_a, mulLymm6_b = mulLymm13_b,
mulLymm6_c = mulLymm13_c, mulLymm6_d = mulLymm13_d,
mulLymm6_e = mulLymm13_e, mulLymm6_f = mulLymm13_f,
mulLymm11_0 = mulLymm14_0, mulLymm11_1 = mulLymm14_1,
mulLymm11_2 = mulLymm14_2, mulLymm11_3 = mulLymm14_3,
mulLymm11_4 = mulLymm14_4, mulLymm11_5 = mulLymm14_5,
mulLymm11_6 = mulLymm14_6, mulLymm11_7 = mulLymm14_7,
mulLymm11_8 = mulLymm14_8, mulLymm11_9 = mulLymm14_9,
mulLymm11_a = mulLymm14_a, mulLymm11_b = mulLymm14_b,
mulLymm11_c = mulLymm14_c, mulLymm11_d = mulLymm14_d,
mulLymm11_e = mulLymm14_e, mulLymm11_f = mulLymm14_f
];
assume and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f,
mulLymm6_0 = mulLymm13_0, mulLymm6_1 = mulLymm13_1,
mulLymm6_2 = mulLymm13_2, mulLymm6_3 = mulLymm13_3,
mulLymm6_4 = mulLymm13_4, mulLymm6_5 = mulLymm13_5,
mulLymm6_6 = mulLymm13_6, mulLymm6_7 = mulLymm13_7,
mulLymm6_8 = mulLymm13_8, mulLymm6_9 = mulLymm13_9,
mulLymm6_a = mulLymm13_a, mulLymm6_b = mulLymm13_b,
mulLymm6_c = mulLymm13_c, mulLymm6_d = mulLymm13_d,
mulLymm6_e = mulLymm13_e, mulLymm6_f = mulLymm13_f,
mulLymm11_0 = mulLymm14_0, mulLymm11_1 = mulLymm14_1,
mulLymm11_2 = mulLymm14_2, mulLymm11_3 = mulLymm14_3,
mulLymm11_4 = mulLymm14_4, mulLymm11_5 = mulLymm14_5,
mulLymm11_6 = mulLymm14_6, mulLymm11_7 = mulLymm14_7,
mulLymm11_8 = mulLymm14_8, mulLymm11_9 = mulLymm14_9,
mulLymm11_a = mulLymm14_a, mulLymm11_b = mulLymm14_b,
mulLymm11_c = mulLymm14_c, mulLymm11_d = mulLymm14_d,
mulLymm11_e = mulLymm14_e, mulLymm11_f = mulLymm14_f
] && true;
(* vpaddw %ymm4,%ymm7,%ymm10                       #! PC = 0x55555555876a *)
add ymm10_0 ymm7_0 ymm4_0;
add ymm10_1 ymm7_1 ymm4_1;
add ymm10_2 ymm7_2 ymm4_2;
add ymm10_3 ymm7_3 ymm4_3;
add ymm10_4 ymm7_4 ymm4_4;
add ymm10_5 ymm7_5 ymm4_5;
add ymm10_6 ymm7_6 ymm4_6;
add ymm10_7 ymm7_7 ymm4_7;
add ymm10_8 ymm7_8 ymm4_8;
add ymm10_9 ymm7_9 ymm4_9;
add ymm10_a ymm7_a ymm4_a;
add ymm10_b ymm7_b ymm4_b;
add ymm10_c ymm7_c ymm4_c;
add ymm10_d ymm7_d ymm4_d;
add ymm10_e ymm7_e ymm4_e;
add ymm10_f ymm7_f ymm4_f;
(* vpsubw %ymm4,%ymm7,%ymm4                        #! PC = 0x55555555876e *)
sub ymm4_0 ymm7_0 ymm4_0;
sub ymm4_1 ymm7_1 ymm4_1;
sub ymm4_2 ymm7_2 ymm4_2;
sub ymm4_3 ymm7_3 ymm4_3;
sub ymm4_4 ymm7_4 ymm4_4;
sub ymm4_5 ymm7_5 ymm4_5;
sub ymm4_6 ymm7_6 ymm4_6;
sub ymm4_7 ymm7_7 ymm4_7;
sub ymm4_8 ymm7_8 ymm4_8;
sub ymm4_9 ymm7_9 ymm4_9;
sub ymm4_a ymm7_a ymm4_a;
sub ymm4_b ymm7_b ymm4_b;
sub ymm4_c ymm7_c ymm4_c;
sub ymm4_d ymm7_d ymm4_d;
sub ymm4_e ymm7_e ymm4_e;
sub ymm4_f ymm7_f ymm4_f;
(* vpaddw %ymm6,%ymm9,%ymm7                        #! PC = 0x555555558772 *)
add ymm7_0 ymm9_0 ymm6_0;
add ymm7_1 ymm9_1 ymm6_1;
add ymm7_2 ymm9_2 ymm6_2;
add ymm7_3 ymm9_3 ymm6_3;
add ymm7_4 ymm9_4 ymm6_4;
add ymm7_5 ymm9_5 ymm6_5;
add ymm7_6 ymm9_6 ymm6_6;
add ymm7_7 ymm9_7 ymm6_7;
add ymm7_8 ymm9_8 ymm6_8;
add ymm7_9 ymm9_9 ymm6_9;
add ymm7_a ymm9_a ymm6_a;
add ymm7_b ymm9_b ymm6_b;
add ymm7_c ymm9_c ymm6_c;
add ymm7_d ymm9_d ymm6_d;
add ymm7_e ymm9_e ymm6_e;
add ymm7_f ymm9_f ymm6_f;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x555555558776 *)
sub ymm6_0 ymm9_0 ymm6_0;
sub ymm6_1 ymm9_1 ymm6_1;
sub ymm6_2 ymm9_2 ymm6_2;
sub ymm6_3 ymm9_3 ymm6_3;
sub ymm6_4 ymm9_4 ymm6_4;
sub ymm6_5 ymm9_5 ymm6_5;
sub ymm6_6 ymm9_6 ymm6_6;
sub ymm6_7 ymm9_7 ymm6_7;
sub ymm6_8 ymm9_8 ymm6_8;
sub ymm6_9 ymm9_9 ymm6_9;
sub ymm6_a ymm9_a ymm6_a;
sub ymm6_b ymm9_b ymm6_b;
sub ymm6_c ymm9_c ymm6_c;
sub ymm6_d ymm9_d ymm6_d;
sub ymm6_e ymm9_e ymm6_e;
sub ymm6_f ymm9_f ymm6_f;
(* vpaddw %ymm11,%ymm8,%ymm9                       #! PC = 0x55555555877a *)
add ymm9_0 ymm8_0 ymm11_0;
add ymm9_1 ymm8_1 ymm11_1;
add ymm9_2 ymm8_2 ymm11_2;
add ymm9_3 ymm8_3 ymm11_3;
add ymm9_4 ymm8_4 ymm11_4;
add ymm9_5 ymm8_5 ymm11_5;
add ymm9_6 ymm8_6 ymm11_6;
add ymm9_7 ymm8_7 ymm11_7;
add ymm9_8 ymm8_8 ymm11_8;
add ymm9_9 ymm8_9 ymm11_9;
add ymm9_a ymm8_a ymm11_a;
add ymm9_b ymm8_b ymm11_b;
add ymm9_c ymm8_c ymm11_c;
add ymm9_d ymm8_d ymm11_d;
add ymm9_e ymm8_e ymm11_e;
add ymm9_f ymm8_f ymm11_f;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555555877f *)
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
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x555555558784 *)
sub ymm10_0 ymm10_0 ymm12_0;
sub ymm10_1 ymm10_1 ymm12_1;
sub ymm10_2 ymm10_2 ymm12_2;
sub ymm10_3 ymm10_3 ymm12_3;
sub ymm10_4 ymm10_4 ymm12_4;
sub ymm10_5 ymm10_5 ymm12_5;
sub ymm10_6 ymm10_6 ymm12_6;
sub ymm10_7 ymm10_7 ymm12_7;
sub ymm10_8 ymm10_8 ymm12_8;
sub ymm10_9 ymm10_9 ymm12_9;
sub ymm10_a ymm10_a ymm12_a;
sub ymm10_b ymm10_b ymm12_b;
sub ymm10_c ymm10_c ymm12_c;
sub ymm10_d ymm10_d ymm12_d;
sub ymm10_e ymm10_e ymm12_e;
sub ymm10_f ymm10_f ymm12_f;
(* vpaddw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555558789 *)
add ymm4_0 ymm4_0 ymm12_0;
add ymm4_1 ymm4_1 ymm12_1;
add ymm4_2 ymm4_2 ymm12_2;
add ymm4_3 ymm4_3 ymm12_3;
add ymm4_4 ymm4_4 ymm12_4;
add ymm4_5 ymm4_5 ymm12_5;
add ymm4_6 ymm4_6 ymm12_6;
add ymm4_7 ymm4_7 ymm12_7;
add ymm4_8 ymm4_8 ymm12_8;
add ymm4_9 ymm4_9 ymm12_9;
add ymm4_a ymm4_a ymm12_a;
add ymm4_b ymm4_b ymm12_b;
add ymm4_c ymm4_c ymm12_c;
add ymm4_d ymm4_d ymm12_d;
add ymm4_e ymm4_e ymm12_e;
add ymm4_f ymm4_f ymm12_f;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555555878e *)
sub ymm7_0 ymm7_0 ymm13_0;
sub ymm7_1 ymm7_1 ymm13_1;
sub ymm7_2 ymm7_2 ymm13_2;
sub ymm7_3 ymm7_3 ymm13_3;
sub ymm7_4 ymm7_4 ymm13_4;
sub ymm7_5 ymm7_5 ymm13_5;
sub ymm7_6 ymm7_6 ymm13_6;
sub ymm7_7 ymm7_7 ymm13_7;
sub ymm7_8 ymm7_8 ymm13_8;
sub ymm7_9 ymm7_9 ymm13_9;
sub ymm7_a ymm7_a ymm13_a;
sub ymm7_b ymm7_b ymm13_b;
sub ymm7_c ymm7_c ymm13_c;
sub ymm7_d ymm7_d ymm13_d;
sub ymm7_e ymm7_e ymm13_e;
sub ymm7_f ymm7_f ymm13_f;
(* vpaddw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555558793 *)
add ymm6_0 ymm6_0 ymm13_0;
add ymm6_1 ymm6_1 ymm13_1;
add ymm6_2 ymm6_2 ymm13_2;
add ymm6_3 ymm6_3 ymm13_3;
add ymm6_4 ymm6_4 ymm13_4;
add ymm6_5 ymm6_5 ymm13_5;
add ymm6_6 ymm6_6 ymm13_6;
add ymm6_7 ymm6_7 ymm13_7;
add ymm6_8 ymm6_8 ymm13_8;
add ymm6_9 ymm6_9 ymm13_9;
add ymm6_a ymm6_a ymm13_a;
add ymm6_b ymm6_b ymm13_b;
add ymm6_c ymm6_c ymm13_c;
add ymm6_d ymm6_d ymm13_d;
add ymm6_e ymm6_e ymm13_e;
add ymm6_f ymm6_f ymm13_f;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x555555558798 *)
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
(* vpaddw %ymm14,%ymm11,%ymm11                     #! PC = 0x55555555879d *)
add ymm11_0 ymm11_0 ymm14_0;
add ymm11_1 ymm11_1 ymm14_1;
add ymm11_2 ymm11_2 ymm14_2;
add ymm11_3 ymm11_3 ymm14_3;
add ymm11_4 ymm11_4 ymm14_4;
add ymm11_5 ymm11_5 ymm14_5;
add ymm11_6 ymm11_6 ymm14_6;
add ymm11_7 ymm11_7 ymm14_7;
add ymm11_8 ymm11_8 ymm14_8;
add ymm11_9 ymm11_9 ymm14_9;
add ymm11_a ymm11_a ymm14_a;
add ymm11_b ymm11_b ymm14_b;
add ymm11_c ymm11_c ymm14_c;
add ymm11_d ymm11_d ymm14_d;
add ymm11_e ymm11_e ymm14_e;
add ymm11_f ymm11_f ymm14_f;
(* ===== End of level 5, off 1 ===== *)

(* ecut 13, rcut 13 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm5_1*((6269*x)**1) + ymm5_2*((6269*x)**2) + ymm5_3*((6269*x)**3)
  )
  [10753, x**4 - (841)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((6269*x)**1) + ymm3_2*((6269*x)**2) + ymm3_3*((6269*x)**3)
  )
  [10753, x**4 - (-841)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((6269*x)**1) + ymm10_2*((6269*x)**2) + ymm10_3*((6269*x)**3)
  )
  [10753, x**4 - (-946)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_0 + ymm4_1*((6269*x)**1) + ymm4_2*((6269*x)**2) + ymm4_3*((6269*x)**3)
  )
  [10753, x**4 - (946)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((6269*x)**1) + ymm7_2*((6269*x)**2) + ymm7_3*((6269*x)**3)
  )
  [10753, x**4 - (1136)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((6269*x)**1) + ymm6_2*((6269*x)**2) + ymm6_3*((6269*x)**3)
  )
  [10753, x**4 - (-1136)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((6269*x)**1) + ymm9_2*((6269*x)**2) + ymm9_3*((6269*x)**3)
  )
  [10753, x**4 - (-2582)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_0 + ymm11_1*((6269*x)**1) + ymm11_2*((6269*x)**2) + ymm11_3*((6269*x)**3)
  )
  [10753, x**4 - (2582)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm5_5*((3223*x)**1) + ymm5_6*((3223*x)**2) + ymm5_7*((3223*x)**3)
  )
  [10753, x**4 - (3902)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((3223*x)**1) + ymm3_6*((3223*x)**2) + ymm3_7*((3223*x)**3)
  )
  [10753, x**4 - (-3902)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((3223*x)**1) + ymm10_6*((3223*x)**2) + ymm10_7*((3223*x)**3)
  )
  [10753, x**4 - (559)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_4 + ymm4_5*((3223*x)**1) + ymm4_6*((3223*x)**2) + ymm4_7*((3223*x)**3)
  )
  [10753, x**4 - (-559)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((3223*x)**1) + ymm7_6*((3223*x)**2) + ymm7_7*((3223*x)**3)
  )
  [10753, x**4 - (5194)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((3223*x)**1) + ymm6_6*((3223*x)**2) + ymm6_7*((3223*x)**3)
  )
  [10753, x**4 - (-5194)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((3223*x)**1) + ymm9_6*((3223*x)**2) + ymm9_7*((3223*x)**3)
  )
  [10753, x**4 - (-3362)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_4 + ymm11_5*((3223*x)**1) + ymm11_6*((3223*x)**2) + ymm11_7*((3223*x)**3)
  )
  [10753, x**4 - (3362)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm5_9*((8417*x)**1) + ymm5_a*((8417*x)**2) + ymm5_b*((8417*x)**3)
  )
  [10753, x**4 - (2744)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((8417*x)**1) + ymm3_a*((8417*x)**2) + ymm3_b*((8417*x)**3)
  )
  [10753, x**4 - (-2744)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((8417*x)**1) + ymm10_a*((8417*x)**2) + ymm10_b*((8417*x)**3)
  )
  [10753, x**4 - (5122)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_8 + ymm4_9*((8417*x)**1) + ymm4_a*((8417*x)**2) + ymm4_b*((8417*x)**3)
  )
  [10753, x**4 - (-5122)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((8417*x)**1) + ymm7_a*((8417*x)**2) + ymm7_b*((8417*x)**3)
  )
  [10753, x**4 - (-922)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((8417*x)**1) + ymm6_a*((8417*x)**2) + ymm6_b*((8417*x)**3)
  )
  [10753, x**4 - (922)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((8417*x)**1) + ymm9_a*((8417*x)**2) + ymm9_b*((8417*x)**3)
  )
  [10753, x**4 - (-1047)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_8 + ymm11_9*((8417*x)**1) + ymm11_a*((8417*x)**2) + ymm11_b*((8417*x)**3)
  )
  [10753, x**4 - (1047)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm5_d*((10*x)**1) + ymm5_e*((10*x)**2) + ymm5_f*((10*x)**3)
  )
  [10753, x**4 - (-2599)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((10*x)**1) + ymm3_e*((10*x)**2) + ymm3_f*((10*x)**3)
  )
  [10753, x**4 - (2599)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((10*x)**1) + ymm10_e*((10*x)**2) + ymm10_f*((10*x)**3)
  )
  [10753, x**4 - (-94)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_c + ymm4_d*((10*x)**1) + ymm4_e*((10*x)**2) + ymm4_f*((10*x)**3)
  )
  [10753, x**4 - (94)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((10*x)**1) + ymm7_e*((10*x)**2) + ymm7_f*((10*x)**3)
  )
  [10753, x**4 - (4455)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((10*x)**1) + ymm6_e*((10*x)**2) + ymm6_f*((10*x)**3)
  )
  [10753, x**4 - (-4455)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((10*x)**1) + ymm9_e*((10*x)**2) + ymm9_f*((10*x)**3)
  )
  [10753, x**4 - (2085)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_c + ymm11_d*((10*x)**1) + ymm11_e*((10*x)**2) + ymm11_f*((10*x)**3)
  )
  [10753, x**4 - (-2085)]
] && and [
  (-(22224))@16 <=s ymm5_0, ymm5_0 <=s (22224)@16, (-(24568))@16 <=s ymm5_1, ymm5_1 <=s (24568)@16,
  (-(23174))@16 <=s ymm5_2, ymm5_2 <=s (23174)@16, (-(24048))@16 <=s ymm5_3, ymm5_3 <=s (24048)@16,
  (-(22224))@16 <=s ymm3_0, ymm3_0 <=s (22224)@16, (-(24568))@16 <=s ymm3_1, ymm3_1 <=s (24568)@16,
  (-(23174))@16 <=s ymm3_2, ymm3_2 <=s (23174)@16, (-(24048))@16 <=s ymm3_3, ymm3_3 <=s (24048)@16,
  (-(22025))@16 <=s ymm10_0, ymm10_0 <=s (22025)@16, (-(24374))@16 <=s ymm10_1, ymm10_1 <=s (24374)@16,
  (-(22967))@16 <=s ymm10_2, ymm10_2 <=s (22967)@16, (-(23844))@16 <=s ymm10_3, ymm10_3 <=s (23844)@16,
  (-(22025))@16 <=s ymm4_0, ymm4_0 <=s (22025)@16, (-(24374))@16 <=s ymm4_1, ymm4_1 <=s (24374)@16,
  (-(22967))@16 <=s ymm4_2, ymm4_2 <=s (22967)@16, (-(23844))@16 <=s ymm4_3, ymm4_3 <=s (23844)@16,
  (-(23077))@16 <=s ymm7_0, ymm7_0 <=s (23077)@16, (-(25436))@16 <=s ymm7_1, ymm7_1 <=s (25436)@16,
  (-(23841))@16 <=s ymm7_2, ymm7_2 <=s (23841)@16, (-(24734))@16 <=s ymm7_3, ymm7_3 <=s (24734)@16,
  (-(23077))@16 <=s ymm6_0, ymm6_0 <=s (23077)@16, (-(25436))@16 <=s ymm6_1, ymm6_1 <=s (25436)@16,
  (-(23841))@16 <=s ymm6_2, ymm6_2 <=s (23841)@16, (-(24734))@16 <=s ymm6_3, ymm6_3 <=s (24734)@16,
  (-(22934))@16 <=s ymm9_0, ymm9_0 <=s (22934)@16, (-(25314))@16 <=s ymm9_1, ymm9_1 <=s (25314)@16,
  (-(23778))@16 <=s ymm9_2, ymm9_2 <=s (23778)@16, (-(24723))@16 <=s ymm9_3, ymm9_3 <=s (24723)@16,
  (-(22934))@16 <=s ymm11_0, ymm11_0 <=s (22934)@16, (-(25314))@16 <=s ymm11_1, ymm11_1 <=s (25314)@16,
  (-(23778))@16 <=s ymm11_2, ymm11_2 <=s (23778)@16, (-(24723))@16 <=s ymm11_3, ymm11_3 <=s (24723)@16,
  (-(23515))@16 <=s ymm5_4, ymm5_4 <=s (23515)@16, (-(23791))@16 <=s ymm5_5, ymm5_5 <=s (23791)@16,
  (-(22702))@16 <=s ymm5_6, ymm5_6 <=s (22702)@16, (-(24898))@16 <=s ymm5_7, ymm5_7 <=s (24898)@16,
  (-(23515))@16 <=s ymm3_4, ymm3_4 <=s (23515)@16, (-(23791))@16 <=s ymm3_5, ymm3_5 <=s (23791)@16,
  (-(22702))@16 <=s ymm3_6, ymm3_6 <=s (22702)@16, (-(24898))@16 <=s ymm3_7, ymm3_7 <=s (24898)@16,
  (-(23311))@16 <=s ymm10_4, ymm10_4 <=s (23311)@16, (-(23587))@16 <=s ymm10_5, ymm10_5 <=s (23587)@16,
  (-(22503))@16 <=s ymm10_6, ymm10_6 <=s (22503)@16, (-(24699))@16 <=s ymm10_7, ymm10_7 <=s (24699)@16,
  (-(23311))@16 <=s ymm4_4, ymm4_4 <=s (23311)@16, (-(23587))@16 <=s ymm4_5, ymm4_5 <=s (23587)@16,
  (-(22503))@16 <=s ymm4_6, ymm4_6 <=s (22503)@16, (-(24699))@16 <=s ymm4_7, ymm4_7 <=s (24699)@16,
  (-(24194))@16 <=s ymm7_4, ymm7_4 <=s (24194)@16, (-(24470))@16 <=s ymm7_5, ymm7_5 <=s (24470)@16,
  (-(23550))@16 <=s ymm7_6, ymm7_6 <=s (23550)@16, (-(25750))@16 <=s ymm7_7, ymm7_7 <=s (25750)@16,
  (-(24194))@16 <=s ymm6_4, ymm6_4 <=s (24194)@16, (-(24470))@16 <=s ymm6_5, ymm6_5 <=s (24470)@16,
  (-(23550))@16 <=s ymm6_6, ymm6_6 <=s (23550)@16, (-(25750))@16 <=s ymm6_7, ymm6_7 <=s (25750)@16,
  (-(24182))@16 <=s ymm9_4, ymm9_4 <=s (24182)@16, (-(24460))@16 <=s ymm9_5, ymm9_5 <=s (24460)@16,
  (-(23404))@16 <=s ymm9_6, ymm9_6 <=s (23404)@16, (-(25574))@16 <=s ymm9_7, ymm9_7 <=s (25574)@16,
  (-(24182))@16 <=s ymm11_4, ymm11_4 <=s (24182)@16, (-(24460))@16 <=s ymm11_5, ymm11_5 <=s (24460)@16,
  (-(23404))@16 <=s ymm11_6, ymm11_6 <=s (23404)@16, (-(25574))@16 <=s ymm11_7, ymm11_7 <=s (25574)@16,
  (-(23114))@16 <=s ymm5_8, ymm5_8 <=s (23114)@16, (-(24299))@16 <=s ymm5_9, ymm5_9 <=s (24299)@16,
  (-(22615))@16 <=s ymm5_a, ymm5_a <=s (22615)@16, (-(23129))@16 <=s ymm5_b, ymm5_b <=s (23129)@16,
  (-(23114))@16 <=s ymm3_8, ymm3_8 <=s (23114)@16, (-(24299))@16 <=s ymm3_9, ymm3_9 <=s (24299)@16,
  (-(22615))@16 <=s ymm3_a, ymm3_a <=s (22615)@16, (-(23129))@16 <=s ymm3_b, ymm3_b <=s (23129)@16,
  (-(22915))@16 <=s ymm10_8, ymm10_8 <=s (22915)@16, (-(24095))@16 <=s ymm10_9, ymm10_9 <=s (24095)@16,
  (-(22416))@16 <=s ymm10_a, ymm10_a <=s (22416)@16, (-(22935))@16 <=s ymm10_b, ymm10_b <=s (22935)@16,
  (-(22915))@16 <=s ymm4_8, ymm4_8 <=s (22915)@16, (-(24095))@16 <=s ymm4_9, ymm4_9 <=s (24095)@16,
  (-(22416))@16 <=s ymm4_a, ymm4_a <=s (22416)@16, (-(22935))@16 <=s ymm4_b, ymm4_b <=s (22935)@16,
  (-(23964))@16 <=s ymm7_8, ymm7_8 <=s (23964)@16, (-(24986))@16 <=s ymm7_9, ymm7_9 <=s (24986)@16,
  (-(23474))@16 <=s ymm7_a, ymm7_a <=s (23474)@16, (-(23992))@16 <=s ymm7_b, ymm7_b <=s (23992)@16,
  (-(23964))@16 <=s ymm6_8, ymm6_8 <=s (23964)@16, (-(24986))@16 <=s ymm6_9, ymm6_9 <=s (24986)@16,
  (-(23474))@16 <=s ymm6_a, ymm6_a <=s (23474)@16, (-(23992))@16 <=s ymm6_b, ymm6_b <=s (23992)@16,
  (-(23819))@16 <=s ymm9_8, ymm9_8 <=s (23819)@16, (-(24974))@16 <=s ymm9_9, ymm9_9 <=s (24974)@16,
  (-(23326))@16 <=s ymm9_a, ymm9_a <=s (23326)@16, (-(23874))@16 <=s ymm9_b, ymm9_b <=s (23874)@16,
  (-(23819))@16 <=s ymm11_8, ymm11_8 <=s (23819)@16, (-(24974))@16 <=s ymm11_9, ymm11_9 <=s (24974)@16,
  (-(23326))@16 <=s ymm11_a, ymm11_a <=s (23326)@16, (-(23874))@16 <=s ymm11_b, ymm11_b <=s (23874)@16,
  (-(23282))@16 <=s ymm5_c, ymm5_c <=s (23282)@16, (-(23636))@16 <=s ymm5_d, ymm5_d <=s (23636)@16,
  (-(22930))@16 <=s ymm5_e, ymm5_e <=s (22930)@16, (-(23726))@16 <=s ymm5_f, ymm5_f <=s (23726)@16,
  (-(23282))@16 <=s ymm3_c, ymm3_c <=s (23282)@16, (-(23636))@16 <=s ymm3_d, ymm3_d <=s (23636)@16,
  (-(22930))@16 <=s ymm3_e, ymm3_e <=s (22930)@16, (-(23726))@16 <=s ymm3_f, ymm3_f <=s (23726)@16,
  (-(23078))@16 <=s ymm10_c, ymm10_c <=s (23078)@16, (-(23432))@16 <=s ymm10_d, ymm10_d <=s (23432)@16,
  (-(22736))@16 <=s ymm10_e, ymm10_e <=s (22736)@16, (-(23519))@16 <=s ymm10_f, ymm10_f <=s (23519)@16,
  (-(23078))@16 <=s ymm4_c, ymm4_c <=s (23078)@16, (-(23432))@16 <=s ymm4_d, ymm4_d <=s (23432)@16,
  (-(22736))@16 <=s ymm4_e, ymm4_e <=s (22736)@16, (-(23519))@16 <=s ymm4_f, ymm4_f <=s (23519)@16,
  (-(23971))@16 <=s ymm7_c, ymm7_c <=s (23971)@16, (-(24313))@16 <=s ymm7_d, ymm7_d <=s (24313)@16,
  (-(23786))@16 <=s ymm7_e, ymm7_e <=s (23786)@16, (-(24392))@16 <=s ymm7_f, ymm7_f <=s (24392)@16,
  (-(23971))@16 <=s ymm6_c, ymm6_c <=s (23971)@16, (-(24313))@16 <=s ymm6_d, ymm6_d <=s (24313)@16,
  (-(23786))@16 <=s ymm6_e, ymm6_e <=s (23786)@16, (-(24392))@16 <=s ymm6_f, ymm6_f <=s (24392)@16,
  (-(23961))@16 <=s ymm9_c, ymm9_c <=s (23961)@16, (-(24302))@16 <=s ymm9_d, ymm9_d <=s (24302)@16,
  (-(23667))@16 <=s ymm9_e, ymm9_e <=s (23667)@16, (-(24326))@16 <=s ymm9_f, ymm9_f <=s (24326)@16,
  (-(23961))@16 <=s ymm11_c, ymm11_c <=s (23961)@16, (-(24302))@16 <=s ymm11_d, ymm11_d <=s (24302)@16,
  (-(23667))@16 <=s ymm11_e, ymm11_e <=s (23667)@16, (-(24326))@16 <=s ymm11_f, ymm11_f <=s (24326)@16
];

(* ===== Start of level 6, off 1 ===== *)
(* vpmullw 0x80(%rdx),%ymm5,%ymm12                 #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x5555555587a2 *)
smull mulHymm5_0 mulL_0 L0x555555560780 ymm5_0;
smull mulHymm5_1 mulL_1 L0x555555560782 ymm5_1;
smull mulHymm5_2 mulL_2 L0x555555560784 ymm5_2;
smull mulHymm5_3 mulL_3 L0x555555560786 ymm5_3;
smull mulHymm5_4 mulL_4 L0x555555560788 ymm5_4;
smull mulHymm5_5 mulL_5 L0x55555556078a ymm5_5;
smull mulHymm5_6 mulL_6 L0x55555556078c ymm5_6;
smull mulHymm5_7 mulL_7 L0x55555556078e ymm5_7;
smull mulHymm5_8 mulL_8 L0x555555560790 ymm5_8;
smull mulHymm5_9 mulL_9 L0x555555560792 ymm5_9;
smull mulHymm5_a mulL_a L0x555555560794 ymm5_a;
smull mulHymm5_b mulL_b L0x555555560796 ymm5_b;
smull mulHymm5_c mulL_c L0x555555560798 ymm5_c;
smull mulHymm5_d mulL_d L0x55555556079a ymm5_d;
smull mulHymm5_e mulL_e L0x55555556079c ymm5_e;
smull mulHymm5_f mulL_f L0x55555556079e ymm5_f;
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
(* vpmulhw 0xa0(%rdx),%ymm5,%ymm5                  #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x5555555587aa *)
smull mulH_0 mulLymm5_0 ymm5_0 L0x5555555607a0;
smull mulH_1 mulLymm5_1 ymm5_1 L0x5555555607a2;
smull mulH_2 mulLymm5_2 ymm5_2 L0x5555555607a4;
smull mulH_3 mulLymm5_3 ymm5_3 L0x5555555607a6;
smull mulH_4 mulLymm5_4 ymm5_4 L0x5555555607a8;
smull mulH_5 mulLymm5_5 ymm5_5 L0x5555555607aa;
smull mulH_6 mulLymm5_6 ymm5_6 L0x5555555607ac;
smull mulH_7 mulLymm5_7 ymm5_7 L0x5555555607ae;
smull mulH_8 mulLymm5_8 ymm5_8 L0x5555555607b0;
smull mulH_9 mulLymm5_9 ymm5_9 L0x5555555607b2;
smull mulH_a mulLymm5_a ymm5_a L0x5555555607b4;
smull mulH_b mulLymm5_b ymm5_b L0x5555555607b6;
smull mulH_c mulLymm5_c ymm5_c L0x5555555607b8;
smull mulH_d mulLymm5_d ymm5_d L0x5555555607ba;
smull mulH_e mulLymm5_e ymm5_e L0x5555555607bc;
smull mulH_f mulLymm5_f ymm5_f L0x5555555607be;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555587b2 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm5_0 = mulLymm12_0, mulLymm5_1 = mulLymm12_1,
mulLymm5_2 = mulLymm12_2, mulLymm5_3 = mulLymm12_3,
mulLymm5_4 = mulLymm12_4, mulLymm5_5 = mulLymm12_5,
mulLymm5_6 = mulLymm12_6, mulLymm5_7 = mulLymm12_7,
mulLymm5_8 = mulLymm12_8, mulLymm5_9 = mulLymm12_9,
mulLymm5_a = mulLymm12_a, mulLymm5_b = mulLymm12_b,
mulLymm5_c = mulLymm12_c, mulLymm5_d = mulLymm12_d,
mulLymm5_e = mulLymm12_e, mulLymm5_f = mulLymm12_f
];
assume and [
mulLymm5_0 = mulLymm12_0, mulLymm5_1 = mulLymm12_1,
mulLymm5_2 = mulLymm12_2, mulLymm5_3 = mulLymm12_3,
mulLymm5_4 = mulLymm12_4, mulLymm5_5 = mulLymm12_5,
mulLymm5_6 = mulLymm12_6, mulLymm5_7 = mulLymm12_7,
mulLymm5_8 = mulLymm12_8, mulLymm5_9 = mulLymm12_9,
mulLymm5_a = mulLymm12_a, mulLymm5_b = mulLymm12_b,
mulLymm5_c = mulLymm12_c, mulLymm5_d = mulLymm12_d,
mulLymm5_e = mulLymm12_e, mulLymm5_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm5,%ymm5                       #! PC = 0x5555555587b6 *)
sub ymm5_0 ymm5_0 ymm12_0;
sub ymm5_1 ymm5_1 ymm12_1;
sub ymm5_2 ymm5_2 ymm12_2;
sub ymm5_3 ymm5_3 ymm12_3;
sub ymm5_4 ymm5_4 ymm12_4;
sub ymm5_5 ymm5_5 ymm12_5;
sub ymm5_6 ymm5_6 ymm12_6;
sub ymm5_7 ymm5_7 ymm12_7;
sub ymm5_8 ymm5_8 ymm12_8;
sub ymm5_9 ymm5_9 ymm12_9;
sub ymm5_a ymm5_a ymm12_a;
sub ymm5_b ymm5_b ymm12_b;
sub ymm5_c ymm5_c ymm12_c;
sub ymm5_d ymm5_d ymm12_d;
sub ymm5_e ymm5_e ymm12_e;
sub ymm5_f ymm5_f ymm12_f;
(* vpbroadcastq 0x650(%rdx),%ymm12                 #! EA = L0x555555560d50; Value = 0x402970c1d792fff7; PC = 0x5555555587bb *)
mov ymm12_0 L0x555555560d50;
mov ymm12_1 L0x555555560d52;
mov ymm12_2 L0x555555560d54;
mov ymm12_3 L0x555555560d56;
mov ymm12_4 L0x555555560d50;
mov ymm12_5 L0x555555560d52;
mov ymm12_6 L0x555555560d54;
mov ymm12_7 L0x555555560d56;
mov ymm12_8 L0x555555560d50;
mov ymm12_9 L0x555555560d52;
mov ymm12_a L0x555555560d54;
mov ymm12_b L0x555555560d56;
mov ymm12_c L0x555555560d50;
mov ymm12_d L0x555555560d52;
mov ymm12_e L0x555555560d54;
mov ymm12_f L0x555555560d56;
(* vpbroadcastq 0x658(%rdx),%ymm13                 #! EA = L0x555555560d58; Value = 0x0e290ec1f392f1f7; PC = 0x5555555587c4 *)
mov ymm13_0 L0x555555560d58;
mov ymm13_1 L0x555555560d5a;
mov ymm13_2 L0x555555560d5c;
mov ymm13_3 L0x555555560d5e;
mov ymm13_4 L0x555555560d58;
mov ymm13_5 L0x555555560d5a;
mov ymm13_6 L0x555555560d5c;
mov ymm13_7 L0x555555560d5e;
mov ymm13_8 L0x555555560d58;
mov ymm13_9 L0x555555560d5a;
mov ymm13_a L0x555555560d5c;
mov ymm13_b L0x555555560d5e;
mov ymm13_c L0x555555560d58;
mov ymm13_d L0x555555560d5a;
mov ymm13_e L0x555555560d5c;
mov ymm13_f L0x555555560d5e;
(* vpmullw %ymm12,%ymm3,%ymm12                     #! PC = 0x5555555587cd *)
smull mulHymm3_0 mulL_0 ymm12_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm12_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm12_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm12_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm12_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm12_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm12_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm12_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm12_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm12_9 ymm3_9;
smull mulHymm3_a mulL_a ymm12_a ymm3_a;
smull mulHymm3_b mulL_b ymm12_b ymm3_b;
smull mulHymm3_c mulL_c ymm12_c ymm3_c;
smull mulHymm3_d mulL_d ymm12_d ymm3_d;
smull mulHymm3_e mulL_e ymm12_e ymm3_e;
smull mulHymm3_f mulL_f ymm12_f ymm3_f;
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
(* vpmulhw %ymm13,%ymm3,%ymm3                      #! PC = 0x5555555587d2 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm13_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm13_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm13_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm13_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm13_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm13_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm13_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm13_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm13_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm13_9;
smull mulH_a mulLymm3_a ymm3_a ymm13_a;
smull mulH_b mulLymm3_b ymm3_b ymm13_b;
smull mulH_c mulLymm3_c ymm3_c ymm13_c;
smull mulH_d mulLymm3_d ymm3_d ymm13_d;
smull mulH_e mulLymm3_e ymm3_e ymm13_e;
smull mulH_f mulLymm3_f ymm3_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555587d7 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm12_0, mulLymm3_1 = mulLymm12_1,
mulLymm3_2 = mulLymm12_2, mulLymm3_3 = mulLymm12_3,
mulLymm3_4 = mulLymm12_4, mulLymm3_5 = mulLymm12_5,
mulLymm3_6 = mulLymm12_6, mulLymm3_7 = mulLymm12_7,
mulLymm3_8 = mulLymm12_8, mulLymm3_9 = mulLymm12_9,
mulLymm3_a = mulLymm12_a, mulLymm3_b = mulLymm12_b,
mulLymm3_c = mulLymm12_c, mulLymm3_d = mulLymm12_d,
mulLymm3_e = mulLymm12_e, mulLymm3_f = mulLymm12_f
];
assume and [
mulLymm3_0 = mulLymm12_0, mulLymm3_1 = mulLymm12_1,
mulLymm3_2 = mulLymm12_2, mulLymm3_3 = mulLymm12_3,
mulLymm3_4 = mulLymm12_4, mulLymm3_5 = mulLymm12_5,
mulLymm3_6 = mulLymm12_6, mulLymm3_7 = mulLymm12_7,
mulLymm3_8 = mulLymm12_8, mulLymm3_9 = mulLymm12_9,
mulLymm3_a = mulLymm12_a, mulLymm3_b = mulLymm12_b,
mulLymm3_c = mulLymm12_c, mulLymm3_d = mulLymm12_d,
mulLymm3_e = mulLymm12_e, mulLymm3_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x5555555587db *)
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
(* vpbroadcastq 0x660(%rdx),%ymm12                 #! EA = L0x555555560d60; Value = 0x3998d7921190fff7; PC = 0x5555555587e0 *)
mov ymm12_0 L0x555555560d60;
mov ymm12_1 L0x555555560d62;
mov ymm12_2 L0x555555560d64;
mov ymm12_3 L0x555555560d66;
mov ymm12_4 L0x555555560d60;
mov ymm12_5 L0x555555560d62;
mov ymm12_6 L0x555555560d64;
mov ymm12_7 L0x555555560d66;
mov ymm12_8 L0x555555560d60;
mov ymm12_9 L0x555555560d62;
mov ymm12_a L0x555555560d64;
mov ymm12_b L0x555555560d66;
mov ymm12_c L0x555555560d60;
mov ymm12_d L0x555555560d62;
mov ymm12_e L0x555555560d64;
mov ymm12_f L0x555555560d66;
(* vpbroadcastq 0x668(%rdx),%ymm13                 #! EA = L0x555555560d68; Value = 0x0998f392f190f1f7; PC = 0x5555555587e9 *)
mov ymm13_0 L0x555555560d68;
mov ymm13_1 L0x555555560d6a;
mov ymm13_2 L0x555555560d6c;
mov ymm13_3 L0x555555560d6e;
mov ymm13_4 L0x555555560d68;
mov ymm13_5 L0x555555560d6a;
mov ymm13_6 L0x555555560d6c;
mov ymm13_7 L0x555555560d6e;
mov ymm13_8 L0x555555560d68;
mov ymm13_9 L0x555555560d6a;
mov ymm13_a L0x555555560d6c;
mov ymm13_b L0x555555560d6e;
mov ymm13_c L0x555555560d68;
mov ymm13_d L0x555555560d6a;
mov ymm13_e L0x555555560d6c;
mov ymm13_f L0x555555560d6e;
(* vpmullw %ymm12,%ymm10,%ymm12                    #! PC = 0x5555555587f2 *)
smull mulHymm10_0 mulL_0 ymm12_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm12_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm12_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm12_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm12_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm12_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm12_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm12_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm12_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm12_9 ymm10_9;
smull mulHymm10_a mulL_a ymm12_a ymm10_a;
smull mulHymm10_b mulL_b ymm12_b ymm10_b;
smull mulHymm10_c mulL_c ymm12_c ymm10_c;
smull mulHymm10_d mulL_d ymm12_d ymm10_d;
smull mulHymm10_e mulL_e ymm12_e ymm10_e;
smull mulHymm10_f mulL_f ymm12_f ymm10_f;
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
(* vpmulhw %ymm13,%ymm10,%ymm10                    #! PC = 0x5555555587f7 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm13_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm13_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm13_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm13_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm13_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm13_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm13_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm13_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm13_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm13_9;
smull mulH_a mulLymm10_a ymm10_a ymm13_a;
smull mulH_b mulLymm10_b ymm10_b ymm13_b;
smull mulH_c mulLymm10_c ymm10_c ymm13_c;
smull mulH_d mulLymm10_d ymm10_d ymm13_d;
smull mulH_e mulLymm10_e ymm10_e ymm13_e;
smull mulH_f mulLymm10_f ymm10_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555587fc *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm10_0 = mulLymm12_0, mulLymm10_1 = mulLymm12_1,
mulLymm10_2 = mulLymm12_2, mulLymm10_3 = mulLymm12_3,
mulLymm10_4 = mulLymm12_4, mulLymm10_5 = mulLymm12_5,
mulLymm10_6 = mulLymm12_6, mulLymm10_7 = mulLymm12_7,
mulLymm10_8 = mulLymm12_8, mulLymm10_9 = mulLymm12_9,
mulLymm10_a = mulLymm12_a, mulLymm10_b = mulLymm12_b,
mulLymm10_c = mulLymm12_c, mulLymm10_d = mulLymm12_d,
mulLymm10_e = mulLymm12_e, mulLymm10_f = mulLymm12_f
];
assume and [
mulLymm10_0 = mulLymm12_0, mulLymm10_1 = mulLymm12_1,
mulLymm10_2 = mulLymm12_2, mulLymm10_3 = mulLymm12_3,
mulLymm10_4 = mulLymm12_4, mulLymm10_5 = mulLymm12_5,
mulLymm10_6 = mulLymm12_6, mulLymm10_7 = mulLymm12_7,
mulLymm10_8 = mulLymm12_8, mulLymm10_9 = mulLymm12_9,
mulLymm10_a = mulLymm12_a, mulLymm10_b = mulLymm12_b,
mulLymm10_c = mulLymm12_c, mulLymm10_d = mulLymm12_d,
mulLymm10_e = mulLymm12_e, mulLymm10_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x555555558800 *)
sub ymm10_0 ymm10_0 ymm12_0;
sub ymm10_1 ymm10_1 ymm12_1;
sub ymm10_2 ymm10_2 ymm12_2;
sub ymm10_3 ymm10_3 ymm12_3;
sub ymm10_4 ymm10_4 ymm12_4;
sub ymm10_5 ymm10_5 ymm12_5;
sub ymm10_6 ymm10_6 ymm12_6;
sub ymm10_7 ymm10_7 ymm12_7;
sub ymm10_8 ymm10_8 ymm12_8;
sub ymm10_9 ymm10_9 ymm12_9;
sub ymm10_a ymm10_a ymm12_a;
sub ymm10_b ymm10_b ymm12_b;
sub ymm10_c ymm10_c ymm12_c;
sub ymm10_d ymm10_d ymm12_d;
sub ymm10_e ymm10_e ymm12_e;
sub ymm10_f ymm10_f ymm12_f;
(* vpbroadcastq 0x670(%rdx),%ymm12                 #! EA = L0x555555560d70; Value = 0x1c4cbfd7136efff7; PC = 0x555555558805 *)
mov ymm12_0 L0x555555560d70;
mov ymm12_1 L0x555555560d72;
mov ymm12_2 L0x555555560d74;
mov ymm12_3 L0x555555560d76;
mov ymm12_4 L0x555555560d70;
mov ymm12_5 L0x555555560d72;
mov ymm12_6 L0x555555560d74;
mov ymm12_7 L0x555555560d76;
mov ymm12_8 L0x555555560d70;
mov ymm12_9 L0x555555560d72;
mov ymm12_a L0x555555560d74;
mov ymm12_b L0x555555560d76;
mov ymm12_c L0x555555560d70;
mov ymm12_d L0x555555560d72;
mov ymm12_e L0x555555560d74;
mov ymm12_f L0x555555560d76;
(* vpbroadcastq 0x678(%rdx),%ymm13                 #! EA = L0x555555560d78; Value = 0x044cf1d7f76ef1f7; PC = 0x55555555880e *)
mov ymm13_0 L0x555555560d78;
mov ymm13_1 L0x555555560d7a;
mov ymm13_2 L0x555555560d7c;
mov ymm13_3 L0x555555560d7e;
mov ymm13_4 L0x555555560d78;
mov ymm13_5 L0x555555560d7a;
mov ymm13_6 L0x555555560d7c;
mov ymm13_7 L0x555555560d7e;
mov ymm13_8 L0x555555560d78;
mov ymm13_9 L0x555555560d7a;
mov ymm13_a L0x555555560d7c;
mov ymm13_b L0x555555560d7e;
mov ymm13_c L0x555555560d78;
mov ymm13_d L0x555555560d7a;
mov ymm13_e L0x555555560d7c;
mov ymm13_f L0x555555560d7e;
(* vpmullw %ymm12,%ymm4,%ymm12                     #! PC = 0x555555558817 *)
smull mulHymm4_0 mulL_0 ymm12_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm12_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm12_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm12_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm12_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm12_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm12_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm12_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm12_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm12_9 ymm4_9;
smull mulHymm4_a mulL_a ymm12_a ymm4_a;
smull mulHymm4_b mulL_b ymm12_b ymm4_b;
smull mulHymm4_c mulL_c ymm12_c ymm4_c;
smull mulHymm4_d mulL_d ymm12_d ymm4_d;
smull mulHymm4_e mulL_e ymm12_e ymm4_e;
smull mulHymm4_f mulL_f ymm12_f ymm4_f;
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
(* vpmulhw %ymm13,%ymm4,%ymm4                      #! PC = 0x55555555881c *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm13_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm13_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm13_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm13_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm13_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm13_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm13_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm13_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm13_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm13_9;
smull mulH_a mulLymm4_a ymm4_a ymm13_a;
smull mulH_b mulLymm4_b ymm4_b ymm13_b;
smull mulH_c mulLymm4_c ymm4_c ymm13_c;
smull mulH_d mulLymm4_d ymm4_d ymm13_d;
smull mulH_e mulLymm4_e ymm4_e ymm13_e;
smull mulH_f mulLymm4_f ymm4_f ymm13_f;
mov ymm4_0 mulH_0;
mov ymm4_1 mulH_1;
mov ymm4_2 mulH_2;
mov ymm4_3 mulH_3;
mov ymm4_4 mulH_4;
mov ymm4_5 mulH_5;
mov ymm4_6 mulH_6;
mov ymm4_7 mulH_7;
mov ymm4_8 mulH_8;
mov ymm4_9 mulH_9;
mov ymm4_a mulH_a;
mov ymm4_b mulH_b;
mov ymm4_c mulH_c;
mov ymm4_d mulH_d;
mov ymm4_e mulH_e;
mov ymm4_f mulH_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558821 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f
];
assume and [
mulLymm4_0 = mulLymm12_0, mulLymm4_1 = mulLymm12_1,
mulLymm4_2 = mulLymm12_2, mulLymm4_3 = mulLymm12_3,
mulLymm4_4 = mulLymm12_4, mulLymm4_5 = mulLymm12_5,
mulLymm4_6 = mulLymm12_6, mulLymm4_7 = mulLymm12_7,
mulLymm4_8 = mulLymm12_8, mulLymm4_9 = mulLymm12_9,
mulLymm4_a = mulLymm12_a, mulLymm4_b = mulLymm12_b,
mulLymm4_c = mulLymm12_c, mulLymm4_d = mulLymm12_d,
mulLymm4_e = mulLymm12_e, mulLymm4_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555558825 *)
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
(* vpbroadcastq 0x680(%rdx),%ymm12                 #! EA = L0x555555560d80; Value = 0xb8f11190d279fff7; PC = 0x55555555882a *)
mov ymm12_0 L0x555555560d80;
mov ymm12_1 L0x555555560d82;
mov ymm12_2 L0x555555560d84;
mov ymm12_3 L0x555555560d86;
mov ymm12_4 L0x555555560d80;
mov ymm12_5 L0x555555560d82;
mov ymm12_6 L0x555555560d84;
mov ymm12_7 L0x555555560d86;
mov ymm12_8 L0x555555560d80;
mov ymm12_9 L0x555555560d82;
mov ymm12_a L0x555555560d84;
mov ymm12_b L0x555555560d86;
mov ymm12_c L0x555555560d80;
mov ymm12_d L0x555555560d82;
mov ymm12_e L0x555555560d84;
mov ymm12_f L0x555555560d86;
(* vpbroadcastq 0x688(%rdx),%ymm13                 #! EA = L0x555555560d88; Value = 0xf6f1f1900079f1f7; PC = 0x555555558833 *)
mov ymm13_0 L0x555555560d88;
mov ymm13_1 L0x555555560d8a;
mov ymm13_2 L0x555555560d8c;
mov ymm13_3 L0x555555560d8e;
mov ymm13_4 L0x555555560d88;
mov ymm13_5 L0x555555560d8a;
mov ymm13_6 L0x555555560d8c;
mov ymm13_7 L0x555555560d8e;
mov ymm13_8 L0x555555560d88;
mov ymm13_9 L0x555555560d8a;
mov ymm13_a L0x555555560d8c;
mov ymm13_b L0x555555560d8e;
mov ymm13_c L0x555555560d88;
mov ymm13_d L0x555555560d8a;
mov ymm13_e L0x555555560d8c;
mov ymm13_f L0x555555560d8e;
(* vpmullw %ymm12,%ymm7,%ymm12                     #! PC = 0x55555555883c *)
smull mulHymm7_0 mulL_0 ymm12_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm12_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm12_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm12_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm12_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm12_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm12_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm12_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm12_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm12_9 ymm7_9;
smull mulHymm7_a mulL_a ymm12_a ymm7_a;
smull mulHymm7_b mulL_b ymm12_b ymm7_b;
smull mulHymm7_c mulL_c ymm12_c ymm7_c;
smull mulHymm7_d mulL_d ymm12_d ymm7_d;
smull mulHymm7_e mulL_e ymm12_e ymm7_e;
smull mulHymm7_f mulL_f ymm12_f ymm7_f;
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
(* vpmulhw %ymm13,%ymm7,%ymm7                      #! PC = 0x555555558841 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm13_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm13_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm13_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm13_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm13_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm13_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm13_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm13_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm13_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm13_9;
smull mulH_a mulLymm7_a ymm7_a ymm13_a;
smull mulH_b mulLymm7_b ymm7_b ymm13_b;
smull mulH_c mulLymm7_c ymm7_c ymm13_c;
smull mulH_d mulLymm7_d ymm7_d ymm13_d;
smull mulH_e mulLymm7_e ymm7_e ymm13_e;
smull mulH_f mulLymm7_f ymm7_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558846 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f
];
assume and [
mulLymm7_0 = mulLymm12_0, mulLymm7_1 = mulLymm12_1,
mulLymm7_2 = mulLymm12_2, mulLymm7_3 = mulLymm12_3,
mulLymm7_4 = mulLymm12_4, mulLymm7_5 = mulLymm12_5,
mulLymm7_6 = mulLymm12_6, mulLymm7_7 = mulLymm12_7,
mulLymm7_8 = mulLymm12_8, mulLymm7_9 = mulLymm12_9,
mulLymm7_a = mulLymm12_a, mulLymm7_b = mulLymm12_b,
mulLymm7_c = mulLymm12_c, mulLymm7_d = mulLymm12_d,
mulLymm7_e = mulLymm12_e, mulLymm7_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555555884a *)
sub ymm7_0 ymm7_0 ymm12_0;
sub ymm7_1 ymm7_1 ymm12_1;
sub ymm7_2 ymm7_2 ymm12_2;
sub ymm7_3 ymm7_3 ymm12_3;
sub ymm7_4 ymm7_4 ymm12_4;
sub ymm7_5 ymm7_5 ymm12_5;
sub ymm7_6 ymm7_6 ymm12_6;
sub ymm7_7 ymm7_7 ymm12_7;
sub ymm7_8 ymm7_8 ymm12_8;
sub ymm7_9 ymm7_9 ymm12_9;
sub ymm7_a ymm7_a ymm12_a;
sub ymm7_b ymm7_b ymm12_b;
sub ymm7_c ymm7_c ymm12_c;
sub ymm7_d ymm7_d ymm12_d;
sub ymm7_e ymm7_e ymm12_e;
sub ymm7_f ymm7_f ymm12_f;
(* vpbroadcastq 0x690(%rdx),%ymm12                 #! EA = L0x555555560d90; Value = 0xb0a51c4ca7bffff7; PC = 0x55555555884f *)
mov ymm12_0 L0x555555560d90;
mov ymm12_1 L0x555555560d92;
mov ymm12_2 L0x555555560d94;
mov ymm12_3 L0x555555560d96;
mov ymm12_4 L0x555555560d90;
mov ymm12_5 L0x555555560d92;
mov ymm12_6 L0x555555560d94;
mov ymm12_7 L0x555555560d96;
mov ymm12_8 L0x555555560d90;
mov ymm12_9 L0x555555560d92;
mov ymm12_a L0x555555560d94;
mov ymm12_b L0x555555560d96;
mov ymm12_c L0x555555560d90;
mov ymm12_d L0x555555560d92;
mov ymm12_e L0x555555560d94;
mov ymm12_f L0x555555560d96;
(* vpbroadcastq 0x698(%rdx),%ymm13                 #! EA = L0x555555560d98; Value = 0x06a5044c09bff1f7; PC = 0x555555558858 *)
mov ymm13_0 L0x555555560d98;
mov ymm13_1 L0x555555560d9a;
mov ymm13_2 L0x555555560d9c;
mov ymm13_3 L0x555555560d9e;
mov ymm13_4 L0x555555560d98;
mov ymm13_5 L0x555555560d9a;
mov ymm13_6 L0x555555560d9c;
mov ymm13_7 L0x555555560d9e;
mov ymm13_8 L0x555555560d98;
mov ymm13_9 L0x555555560d9a;
mov ymm13_a L0x555555560d9c;
mov ymm13_b L0x555555560d9e;
mov ymm13_c L0x555555560d98;
mov ymm13_d L0x555555560d9a;
mov ymm13_e L0x555555560d9c;
mov ymm13_f L0x555555560d9e;
(* vpmullw %ymm12,%ymm6,%ymm12                     #! PC = 0x555555558861 *)
smull mulHymm6_0 mulL_0 ymm12_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm12_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm12_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm12_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm12_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm12_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm12_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm12_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm12_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm12_9 ymm6_9;
smull mulHymm6_a mulL_a ymm12_a ymm6_a;
smull mulHymm6_b mulL_b ymm12_b ymm6_b;
smull mulHymm6_c mulL_c ymm12_c ymm6_c;
smull mulHymm6_d mulL_d ymm12_d ymm6_d;
smull mulHymm6_e mulL_e ymm12_e ymm6_e;
smull mulHymm6_f mulL_f ymm12_f ymm6_f;
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
(* vpmulhw %ymm13,%ymm6,%ymm6                      #! PC = 0x555555558866 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm13_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm13_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm13_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm13_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm13_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm13_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm13_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm13_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm13_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm13_9;
smull mulH_a mulLymm6_a ymm6_a ymm13_a;
smull mulH_b mulLymm6_b ymm6_b ymm13_b;
smull mulH_c mulLymm6_c ymm6_c ymm13_c;
smull mulH_d mulLymm6_d ymm6_d ymm13_d;
smull mulH_e mulLymm6_e ymm6_e ymm13_e;
smull mulH_f mulLymm6_f ymm6_f ymm13_f;
mov ymm6_0 mulH_0;
mov ymm6_1 mulH_1;
mov ymm6_2 mulH_2;
mov ymm6_3 mulH_3;
mov ymm6_4 mulH_4;
mov ymm6_5 mulH_5;
mov ymm6_6 mulH_6;
mov ymm6_7 mulH_7;
mov ymm6_8 mulH_8;
mov ymm6_9 mulH_9;
mov ymm6_a mulH_a;
mov ymm6_b mulH_b;
mov ymm6_c mulH_c;
mov ymm6_d mulH_d;
mov ymm6_e mulH_e;
mov ymm6_f mulH_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555886b *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f
];
assume and [
mulLymm6_0 = mulLymm12_0, mulLymm6_1 = mulLymm12_1,
mulLymm6_2 = mulLymm12_2, mulLymm6_3 = mulLymm12_3,
mulLymm6_4 = mulLymm12_4, mulLymm6_5 = mulLymm12_5,
mulLymm6_6 = mulLymm12_6, mulLymm6_7 = mulLymm12_7,
mulLymm6_8 = mulLymm12_8, mulLymm6_9 = mulLymm12_9,
mulLymm6_a = mulLymm12_a, mulLymm6_b = mulLymm12_b,
mulLymm6_c = mulLymm12_c, mulLymm6_d = mulLymm12_d,
mulLymm6_e = mulLymm12_e, mulLymm6_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555886f *)
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
(* vpbroadcastq 0x6a0(%rdx),%ymm12                 #! EA = L0x555555560da0; Value = 0xa3363998b8f1fff7; PC = 0x555555558874 *)
mov ymm12_0 L0x555555560da0;
mov ymm12_1 L0x555555560da2;
mov ymm12_2 L0x555555560da4;
mov ymm12_3 L0x555555560da6;
mov ymm12_4 L0x555555560da0;
mov ymm12_5 L0x555555560da2;
mov ymm12_6 L0x555555560da4;
mov ymm12_7 L0x555555560da6;
mov ymm12_8 L0x555555560da0;
mov ymm12_9 L0x555555560da2;
mov ymm12_a L0x555555560da4;
mov ymm12_b L0x555555560da6;
mov ymm12_c L0x555555560da0;
mov ymm12_d L0x555555560da2;
mov ymm12_e L0x555555560da4;
mov ymm12_f L0x555555560da6;
(* vpbroadcastq 0x6a8(%rdx),%ymm13                 #! EA = L0x555555560da8; Value = 0xf7360998f6f1f1f7; PC = 0x55555555887d *)
mov ymm13_0 L0x555555560da8;
mov ymm13_1 L0x555555560daa;
mov ymm13_2 L0x555555560dac;
mov ymm13_3 L0x555555560dae;
mov ymm13_4 L0x555555560da8;
mov ymm13_5 L0x555555560daa;
mov ymm13_6 L0x555555560dac;
mov ymm13_7 L0x555555560dae;
mov ymm13_8 L0x555555560da8;
mov ymm13_9 L0x555555560daa;
mov ymm13_a L0x555555560dac;
mov ymm13_b L0x555555560dae;
mov ymm13_c L0x555555560da8;
mov ymm13_d L0x555555560daa;
mov ymm13_e L0x555555560dac;
mov ymm13_f L0x555555560dae;
(* vpmullw %ymm12,%ymm9,%ymm12                     #! PC = 0x555555558886 *)
smull mulHymm9_0 mulL_0 ymm12_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm12_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm12_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm12_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm12_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm12_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm12_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm12_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm12_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm12_9 ymm9_9;
smull mulHymm9_a mulL_a ymm12_a ymm9_a;
smull mulHymm9_b mulL_b ymm12_b ymm9_b;
smull mulHymm9_c mulL_c ymm12_c ymm9_c;
smull mulHymm9_d mulL_d ymm12_d ymm9_d;
smull mulHymm9_e mulL_e ymm12_e ymm9_e;
smull mulHymm9_f mulL_f ymm12_f ymm9_f;
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
(* vpmulhw %ymm13,%ymm9,%ymm9                      #! PC = 0x55555555888b *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm13_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm13_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm13_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm13_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm13_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm13_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm13_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm13_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm13_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm13_9;
smull mulH_a mulLymm9_a ymm9_a ymm13_a;
smull mulH_b mulLymm9_b ymm9_b ymm13_b;
smull mulH_c mulLymm9_c ymm9_c ymm13_c;
smull mulH_d mulLymm9_d ymm9_d ymm13_d;
smull mulH_e mulLymm9_e ymm9_e ymm13_e;
smull mulH_f mulLymm9_f ymm9_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558890 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f
];
assume and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x555555558894 *)
sub ymm9_0 ymm9_0 ymm12_0;
sub ymm9_1 ymm9_1 ymm12_1;
sub ymm9_2 ymm9_2 ymm12_2;
sub ymm9_3 ymm9_3 ymm12_3;
sub ymm9_4 ymm9_4 ymm12_4;
sub ymm9_5 ymm9_5 ymm12_5;
sub ymm9_6 ymm9_6 ymm12_6;
sub ymm9_7 ymm9_7 ymm12_7;
sub ymm9_8 ymm9_8 ymm12_8;
sub ymm9_9 ymm9_9 ymm12_9;
sub ymm9_a ymm9_a ymm12_a;
sub ymm9_b ymm9_b ymm12_b;
sub ymm9_c ymm9_c ymm12_c;
sub ymm9_d ymm9_d ymm12_d;
sub ymm9_e ymm9_e ymm12_e;
sub ymm9_f ymm9_f ymm12_f;
(* vpbroadcastq 0x6b0(%rdx),%ymm12                 #! EA = L0x555555560db0; Value = 0xa7bf136eae7afff7; PC = 0x555555558899 *)
mov ymm12_0 L0x555555560db0;
mov ymm12_1 L0x555555560db2;
mov ymm12_2 L0x555555560db4;
mov ymm12_3 L0x555555560db6;
mov ymm12_4 L0x555555560db0;
mov ymm12_5 L0x555555560db2;
mov ymm12_6 L0x555555560db4;
mov ymm12_7 L0x555555560db6;
mov ymm12_8 L0x555555560db0;
mov ymm12_9 L0x555555560db2;
mov ymm12_a L0x555555560db4;
mov ymm12_b L0x555555560db6;
mov ymm12_c L0x555555560db0;
mov ymm12_d L0x555555560db2;
mov ymm12_e L0x555555560db4;
mov ymm12_f L0x555555560db6;
(* vpbroadcastq 0x6b8(%rdx),%ymm13                 #! EA = L0x555555560db8; Value = 0x09bff76efa7af1f7; PC = 0x5555555588a2 *)
mov ymm13_0 L0x555555560db8;
mov ymm13_1 L0x555555560dba;
mov ymm13_2 L0x555555560dbc;
mov ymm13_3 L0x555555560dbe;
mov ymm13_4 L0x555555560db8;
mov ymm13_5 L0x555555560dba;
mov ymm13_6 L0x555555560dbc;
mov ymm13_7 L0x555555560dbe;
mov ymm13_8 L0x555555560db8;
mov ymm13_9 L0x555555560dba;
mov ymm13_a L0x555555560dbc;
mov ymm13_b L0x555555560dbe;
mov ymm13_c L0x555555560db8;
mov ymm13_d L0x555555560dba;
mov ymm13_e L0x555555560dbc;
mov ymm13_f L0x555555560dbe;
(* vpmullw %ymm12,%ymm11,%ymm12                    #! PC = 0x5555555588ab *)
smull mulHymm11_0 mulL_0 ymm12_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm12_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm12_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm12_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm12_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm12_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm12_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm12_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm12_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm12_9 ymm11_9;
smull mulHymm11_a mulL_a ymm12_a ymm11_a;
smull mulHymm11_b mulL_b ymm12_b ymm11_b;
smull mulHymm11_c mulL_c ymm12_c ymm11_c;
smull mulHymm11_d mulL_d ymm12_d ymm11_d;
smull mulHymm11_e mulL_e ymm12_e ymm11_e;
smull mulHymm11_f mulL_f ymm12_f ymm11_f;
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
(* vpmulhw %ymm13,%ymm11,%ymm11                    #! PC = 0x5555555588b0 *)
smull mulH_0 mulLymm11_0 ymm11_0 ymm13_0;
smull mulH_1 mulLymm11_1 ymm11_1 ymm13_1;
smull mulH_2 mulLymm11_2 ymm11_2 ymm13_2;
smull mulH_3 mulLymm11_3 ymm11_3 ymm13_3;
smull mulH_4 mulLymm11_4 ymm11_4 ymm13_4;
smull mulH_5 mulLymm11_5 ymm11_5 ymm13_5;
smull mulH_6 mulLymm11_6 ymm11_6 ymm13_6;
smull mulH_7 mulLymm11_7 ymm11_7 ymm13_7;
smull mulH_8 mulLymm11_8 ymm11_8 ymm13_8;
smull mulH_9 mulLymm11_9 ymm11_9 ymm13_9;
smull mulH_a mulLymm11_a ymm11_a ymm13_a;
smull mulH_b mulLymm11_b ymm11_b ymm13_b;
smull mulH_c mulLymm11_c ymm11_c ymm13_c;
smull mulH_d mulLymm11_d ymm11_d ymm13_d;
smull mulH_e mulLymm11_e ymm11_e ymm13_e;
smull mulH_f mulLymm11_f ymm11_f ymm13_f;
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
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555588b5 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
assert true && and [
mulLymm11_0 = mulLymm12_0, mulLymm11_1 = mulLymm12_1,
mulLymm11_2 = mulLymm12_2, mulLymm11_3 = mulLymm12_3,
mulLymm11_4 = mulLymm12_4, mulLymm11_5 = mulLymm12_5,
mulLymm11_6 = mulLymm12_6, mulLymm11_7 = mulLymm12_7,
mulLymm11_8 = mulLymm12_8, mulLymm11_9 = mulLymm12_9,
mulLymm11_a = mulLymm12_a, mulLymm11_b = mulLymm12_b,
mulLymm11_c = mulLymm12_c, mulLymm11_d = mulLymm12_d,
mulLymm11_e = mulLymm12_e, mulLymm11_f = mulLymm12_f
];
assume and [
mulLymm11_0 = mulLymm12_0, mulLymm11_1 = mulLymm12_1,
mulLymm11_2 = mulLymm12_2, mulLymm11_3 = mulLymm12_3,
mulLymm11_4 = mulLymm12_4, mulLymm11_5 = mulLymm12_5,
mulLymm11_6 = mulLymm12_6, mulLymm11_7 = mulLymm12_7,
mulLymm11_8 = mulLymm12_8, mulLymm11_9 = mulLymm12_9,
mulLymm11_a = mulLymm12_a, mulLymm11_b = mulLymm12_b,
mulLymm11_c = mulLymm12_c, mulLymm11_d = mulLymm12_d,
mulLymm11_e = mulLymm12_e, mulLymm11_f = mulLymm12_f
] && true;
(* vpsubw %ymm12,%ymm11,%ymm11                     #! PC = 0x5555555588b9 *)
sub ymm11_0 ymm11_0 ymm12_0;
sub ymm11_1 ymm11_1 ymm12_1;
sub ymm11_2 ymm11_2 ymm12_2;
sub ymm11_3 ymm11_3 ymm12_3;
sub ymm11_4 ymm11_4 ymm12_4;
sub ymm11_5 ymm11_5 ymm12_5;
sub ymm11_6 ymm11_6 ymm12_6;
sub ymm11_7 ymm11_7 ymm12_7;
sub ymm11_8 ymm11_8 ymm12_8;
sub ymm11_9 ymm11_9 ymm12_9;
sub ymm11_a ymm11_a ymm12_a;
sub ymm11_b ymm11_b ymm12_b;
sub ymm11_c ymm11_c ymm12_c;
sub ymm11_d ymm11_d ymm12_d;
sub ymm11_e ymm11_e ymm12_e;
sub ymm11_f ymm11_f ymm12_f;
(* vmovsldup %ymm7,%ymm8                           #! PC = 0x5555555588be *)
mov ymm8_0 ymm7_0;
mov ymm8_1 ymm7_1;
mov ymm8_2 ymm7_0;
mov ymm8_3 ymm7_1;
mov ymm8_4 ymm7_4;
mov ymm8_5 ymm7_5;
mov ymm8_6 ymm7_4;
mov ymm8_7 ymm7_5;
mov ymm8_8 ymm7_8;
mov ymm8_9 ymm7_9;
mov ymm8_a ymm7_8;
mov ymm8_b ymm7_9;
mov ymm8_c ymm7_c;
mov ymm8_d ymm7_d;
mov ymm8_e ymm7_c;
mov ymm8_f ymm7_d;
(* vpblendd $0xaa,%ymm8,%ymm5,%ymm8                #! PC = 0x5555555588c2 *)
mov bldd_0 ymm5_0;
mov bldd_1 ymm5_1;
mov bldd_2 ymm8_2;
mov bldd_3 ymm8_3;
mov bldd_4 ymm5_4;
mov bldd_5 ymm5_5;
mov bldd_6 ymm8_6;
mov bldd_7 ymm8_7;
mov bldd_8 ymm5_8;
mov bldd_9 ymm5_9;
mov bldd_a ymm8_a;
mov bldd_b ymm8_b;
mov bldd_c ymm5_c;
mov bldd_d ymm5_d;
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
(* vpsrlq $0x20,%ymm5,%ymm5                        #! PC = 0x5555555588c8 *)
mov srlq_0 ymm5_2;
mov srlq_1 ymm5_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm5_6;
mov srlq_5 ymm5_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm5_a;
mov srlq_9 ymm5_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm5_e;
mov srlq_d ymm5_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm5_0 srlq_0;
mov ymm5_1 srlq_1;
mov ymm5_2 srlq_2;
mov ymm5_3 srlq_3;
mov ymm5_4 srlq_4;
mov ymm5_5 srlq_5;
mov ymm5_6 srlq_6;
mov ymm5_7 srlq_7;
mov ymm5_8 srlq_8;
mov ymm5_9 srlq_9;
mov ymm5_a srlq_a;
mov ymm5_b srlq_b;
mov ymm5_c srlq_c;
mov ymm5_d srlq_d;
mov ymm5_e srlq_e;
mov ymm5_f srlq_f;
(* vpblendd $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x5555555588cd *)
mov bldd_0 ymm5_0;
mov bldd_1 ymm5_1;
mov bldd_2 ymm7_2;
mov bldd_3 ymm7_3;
mov bldd_4 ymm5_4;
mov bldd_5 ymm5_5;
mov bldd_6 ymm7_6;
mov bldd_7 ymm7_7;
mov bldd_8 ymm5_8;
mov bldd_9 ymm5_9;
mov bldd_a ymm7_a;
mov bldd_b ymm7_b;
mov bldd_c ymm5_c;
mov bldd_d ymm5_d;
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
(* vmovsldup %ymm6,%ymm5                           #! PC = 0x5555555588d3 *)
mov ymm5_0 ymm6_0;
mov ymm5_1 ymm6_1;
mov ymm5_2 ymm6_0;
mov ymm5_3 ymm6_1;
mov ymm5_4 ymm6_4;
mov ymm5_5 ymm6_5;
mov ymm5_6 ymm6_4;
mov ymm5_7 ymm6_5;
mov ymm5_8 ymm6_8;
mov ymm5_9 ymm6_9;
mov ymm5_a ymm6_8;
mov ymm5_b ymm6_9;
mov ymm5_c ymm6_c;
mov ymm5_d ymm6_d;
mov ymm5_e ymm6_c;
mov ymm5_f ymm6_d;
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x5555555588d7 *)
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
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x5555555588dd *)
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
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x5555555588e2 *)
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
(* vmovsldup %ymm9,%ymm3                           #! PC = 0x5555555588e8 *)
mov ymm3_0 ymm9_0;
mov ymm3_1 ymm9_1;
mov ymm3_2 ymm9_0;
mov ymm3_3 ymm9_1;
mov ymm3_4 ymm9_4;
mov ymm3_5 ymm9_5;
mov ymm3_6 ymm9_4;
mov ymm3_7 ymm9_5;
mov ymm3_8 ymm9_8;
mov ymm3_9 ymm9_9;
mov ymm3_a ymm9_8;
mov ymm3_b ymm9_9;
mov ymm3_c ymm9_c;
mov ymm3_d ymm9_d;
mov ymm3_e ymm9_c;
mov ymm3_f ymm9_d;
(* vpblendd $0xaa,%ymm3,%ymm10,%ymm3               #! PC = 0x5555555588ed *)
mov bldd_0 ymm10_0;
mov bldd_1 ymm10_1;
mov bldd_2 ymm3_2;
mov bldd_3 ymm3_3;
mov bldd_4 ymm10_4;
mov bldd_5 ymm10_5;
mov bldd_6 ymm3_6;
mov bldd_7 ymm3_7;
mov bldd_8 ymm10_8;
mov bldd_9 ymm10_9;
mov bldd_a ymm3_a;
mov bldd_b ymm3_b;
mov bldd_c ymm10_c;
mov bldd_d ymm10_d;
mov bldd_e ymm3_e;
mov bldd_f ymm3_f;
mov ymm3_0 bldd_0;
mov ymm3_1 bldd_1;
mov ymm3_2 bldd_2;
mov ymm3_3 bldd_3;
mov ymm3_4 bldd_4;
mov ymm3_5 bldd_5;
mov ymm3_6 bldd_6;
mov ymm3_7 bldd_7;
mov ymm3_8 bldd_8;
mov ymm3_9 bldd_9;
mov ymm3_a bldd_a;
mov ymm3_b bldd_b;
mov ymm3_c bldd_c;
mov ymm3_d bldd_d;
mov ymm3_e bldd_e;
mov ymm3_f bldd_f;
(* vpsrlq $0x20,%ymm10,%ymm10                      #! PC = 0x5555555588f3 *)
mov srlq_0 ymm10_2;
mov srlq_1 ymm10_3;
mov srlq_2 0@sint16;
mov srlq_3 0@sint16;
mov srlq_4 ymm10_6;
mov srlq_5 ymm10_7;
mov srlq_6 0@sint16;
mov srlq_7 0@sint16;
mov srlq_8 ymm10_a;
mov srlq_9 ymm10_b;
mov srlq_a 0@sint16;
mov srlq_b 0@sint16;
mov srlq_c ymm10_e;
mov srlq_d ymm10_f;
mov srlq_e 0@sint16;
mov srlq_f 0@sint16;
mov ymm10_0 srlq_0;
mov ymm10_1 srlq_1;
mov ymm10_2 srlq_2;
mov ymm10_3 srlq_3;
mov ymm10_4 srlq_4;
mov ymm10_5 srlq_5;
mov ymm10_6 srlq_6;
mov ymm10_7 srlq_7;
mov ymm10_8 srlq_8;
mov ymm10_9 srlq_9;
mov ymm10_a srlq_a;
mov ymm10_b srlq_b;
mov ymm10_c srlq_c;
mov ymm10_d srlq_d;
mov ymm10_e srlq_e;
mov ymm10_f srlq_f;
(* vpblendd $0xaa,%ymm9,%ymm10,%ymm9               #! PC = 0x5555555588f9 *)
mov bldd_0 ymm10_0;
mov bldd_1 ymm10_1;
mov bldd_2 ymm9_2;
mov bldd_3 ymm9_3;
mov bldd_4 ymm10_4;
mov bldd_5 ymm10_5;
mov bldd_6 ymm9_6;
mov bldd_7 ymm9_7;
mov bldd_8 ymm10_8;
mov bldd_9 ymm10_9;
mov bldd_a ymm9_a;
mov bldd_b ymm9_b;
mov bldd_c ymm10_c;
mov bldd_d ymm10_d;
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
(* vmovsldup %ymm11,%ymm10                         #! PC = 0x5555555588ff *)
mov ymm10_0 ymm11_0;
mov ymm10_1 ymm11_1;
mov ymm10_2 ymm11_0;
mov ymm10_3 ymm11_1;
mov ymm10_4 ymm11_4;
mov ymm10_5 ymm11_5;
mov ymm10_6 ymm11_4;
mov ymm10_7 ymm11_5;
mov ymm10_8 ymm11_8;
mov ymm10_9 ymm11_9;
mov ymm10_a ymm11_8;
mov ymm10_b ymm11_9;
mov ymm10_c ymm11_c;
mov ymm10_d ymm11_d;
mov ymm10_e ymm11_c;
mov ymm10_f ymm11_d;
(* vpblendd $0xaa,%ymm10,%ymm4,%ymm10              #! PC = 0x555555558904 *)
mov bldd_0 ymm4_0;
mov bldd_1 ymm4_1;
mov bldd_2 ymm10_2;
mov bldd_3 ymm10_3;
mov bldd_4 ymm4_4;
mov bldd_5 ymm4_5;
mov bldd_6 ymm10_6;
mov bldd_7 ymm10_7;
mov bldd_8 ymm4_8;
mov bldd_9 ymm4_9;
mov bldd_a ymm10_a;
mov bldd_b ymm10_b;
mov bldd_c ymm4_c;
mov bldd_d ymm4_d;
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
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555555890a *)
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
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555555890f *)
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
(* vpslld $0x10,%ymm3,%ymm4                        #! PC = 0x555555558915 *)
mov slld_0 0@sint16;
mov slld_1 ymm3_0;
mov slld_2 0@sint16;
mov slld_3 ymm3_2;
mov slld_4 0@sint16;
mov slld_5 ymm3_4;
mov slld_6 0@sint16;
mov slld_7 ymm3_6;
mov slld_8 0@sint16;
mov slld_9 ymm3_8;
mov slld_a 0@sint16;
mov slld_b ymm3_a;
mov slld_c 0@sint16;
mov slld_d ymm3_c;
mov slld_e 0@sint16;
mov slld_f ymm3_e;
mov ymm4_0 slld_0;
mov ymm4_1 slld_1;
mov ymm4_2 slld_2;
mov ymm4_3 slld_3;
mov ymm4_4 slld_4;
mov ymm4_5 slld_5;
mov ymm4_6 slld_6;
mov ymm4_7 slld_7;
mov ymm4_8 slld_8;
mov ymm4_9 slld_9;
mov ymm4_a slld_a;
mov ymm4_b slld_b;
mov ymm4_c slld_c;
mov ymm4_d slld_d;
mov ymm4_e slld_e;
mov ymm4_f slld_f;
(* vpblendw $0xaa,%ymm4,%ymm8,%ymm4                #! PC = 0x55555555891a *)
mov bldw_0 ymm8_0;
mov bldw_1 ymm4_1;
mov bldw_2 ymm8_2;
mov bldw_3 ymm4_3;
mov bldw_4 ymm8_4;
mov bldw_5 ymm4_5;
mov bldw_6 ymm8_6;
mov bldw_7 ymm4_7;
mov bldw_8 ymm8_8;
mov bldw_9 ymm4_9;
mov bldw_a ymm8_a;
mov bldw_b ymm4_b;
mov bldw_c ymm8_c;
mov bldw_d ymm4_d;
mov bldw_e ymm8_e;
mov bldw_f ymm4_f;
mov ymm4_0 bldw_0;
mov ymm4_1 bldw_1;
mov ymm4_2 bldw_2;
mov ymm4_3 bldw_3;
mov ymm4_4 bldw_4;
mov ymm4_5 bldw_5;
mov ymm4_6 bldw_6;
mov ymm4_7 bldw_7;
mov ymm4_8 bldw_8;
mov ymm4_9 bldw_9;
mov ymm4_a bldw_a;
mov ymm4_b bldw_b;
mov ymm4_c bldw_c;
mov ymm4_d bldw_d;
mov ymm4_e bldw_e;
mov ymm4_f bldw_f;
(* vpsrld $0x10,%ymm8,%ymm8                        #! PC = 0x555555558920 *)
mov srld_0 ymm8_1;
mov srld_1 0@sint16;
mov srld_2 ymm8_3;
mov srld_3 0@sint16;
mov srld_4 ymm8_5;
mov srld_5 0@sint16;
mov srld_6 ymm8_7;
mov srld_7 0@sint16;
mov srld_8 ymm8_9;
mov srld_9 0@sint16;
mov srld_a ymm8_b;
mov srld_b 0@sint16;
mov srld_c ymm8_d;
mov srld_d 0@sint16;
mov srld_e ymm8_f;
mov srld_f 0@sint16;
mov ymm8_0 srld_0;
mov ymm8_1 srld_1;
mov ymm8_2 srld_2;
mov ymm8_3 srld_3;
mov ymm8_4 srld_4;
mov ymm8_5 srld_5;
mov ymm8_6 srld_6;
mov ymm8_7 srld_7;
mov ymm8_8 srld_8;
mov ymm8_9 srld_9;
mov ymm8_a srld_a;
mov ymm8_b srld_b;
mov ymm8_c srld_c;
mov ymm8_d srld_d;
mov ymm8_e srld_e;
mov ymm8_f srld_f;
(* vpblendw $0xaa,%ymm3,%ymm8,%ymm3                #! PC = 0x555555558926 *)
mov bldw_0 ymm8_0;
mov bldw_1 ymm3_1;
mov bldw_2 ymm8_2;
mov bldw_3 ymm3_3;
mov bldw_4 ymm8_4;
mov bldw_5 ymm3_5;
mov bldw_6 ymm8_6;
mov bldw_7 ymm3_7;
mov bldw_8 ymm8_8;
mov bldw_9 ymm3_9;
mov bldw_a ymm8_a;
mov bldw_b ymm3_b;
mov bldw_c ymm8_c;
mov bldw_d ymm3_d;
mov bldw_e ymm8_e;
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
(* vpslld $0x10,%ymm9,%ymm8                        #! PC = 0x55555555892c *)
mov slld_0 0@sint16;
mov slld_1 ymm9_0;
mov slld_2 0@sint16;
mov slld_3 ymm9_2;
mov slld_4 0@sint16;
mov slld_5 ymm9_4;
mov slld_6 0@sint16;
mov slld_7 ymm9_6;
mov slld_8 0@sint16;
mov slld_9 ymm9_8;
mov slld_a 0@sint16;
mov slld_b ymm9_a;
mov slld_c 0@sint16;
mov slld_d ymm9_c;
mov slld_e 0@sint16;
mov slld_f ymm9_e;
mov ymm8_0 slld_0;
mov ymm8_1 slld_1;
mov ymm8_2 slld_2;
mov ymm8_3 slld_3;
mov ymm8_4 slld_4;
mov ymm8_5 slld_5;
mov ymm8_6 slld_6;
mov ymm8_7 slld_7;
mov ymm8_8 slld_8;
mov ymm8_9 slld_9;
mov ymm8_a slld_a;
mov ymm8_b slld_b;
mov ymm8_c slld_c;
mov ymm8_d slld_d;
mov ymm8_e slld_e;
mov ymm8_f slld_f;
(* vpblendw $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x555555558932 *)
mov bldw_0 ymm7_0;
mov bldw_1 ymm8_1;
mov bldw_2 ymm7_2;
mov bldw_3 ymm8_3;
mov bldw_4 ymm7_4;
mov bldw_5 ymm8_5;
mov bldw_6 ymm7_6;
mov bldw_7 ymm8_7;
mov bldw_8 ymm7_8;
mov bldw_9 ymm8_9;
mov bldw_a ymm7_a;
mov bldw_b ymm8_b;
mov bldw_c ymm7_c;
mov bldw_d ymm8_d;
mov bldw_e ymm7_e;
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
(* vpsrld $0x10,%ymm7,%ymm7                        #! PC = 0x555555558938 *)
mov srld_0 ymm7_1;
mov srld_1 0@sint16;
mov srld_2 ymm7_3;
mov srld_3 0@sint16;
mov srld_4 ymm7_5;
mov srld_5 0@sint16;
mov srld_6 ymm7_7;
mov srld_7 0@sint16;
mov srld_8 ymm7_9;
mov srld_9 0@sint16;
mov srld_a ymm7_b;
mov srld_b 0@sint16;
mov srld_c ymm7_d;
mov srld_d 0@sint16;
mov srld_e ymm7_f;
mov srld_f 0@sint16;
mov ymm7_0 srld_0;
mov ymm7_1 srld_1;
mov ymm7_2 srld_2;
mov ymm7_3 srld_3;
mov ymm7_4 srld_4;
mov ymm7_5 srld_5;
mov ymm7_6 srld_6;
mov ymm7_7 srld_7;
mov ymm7_8 srld_8;
mov ymm7_9 srld_9;
mov ymm7_a srld_a;
mov ymm7_b srld_b;
mov ymm7_c srld_c;
mov ymm7_d srld_d;
mov ymm7_e srld_e;
mov ymm7_f srld_f;
(* vpblendw $0xaa,%ymm9,%ymm7,%ymm9                #! PC = 0x55555555893d *)
mov bldw_0 ymm7_0;
mov bldw_1 ymm9_1;
mov bldw_2 ymm7_2;
mov bldw_3 ymm9_3;
mov bldw_4 ymm7_4;
mov bldw_5 ymm9_5;
mov bldw_6 ymm7_6;
mov bldw_7 ymm9_7;
mov bldw_8 ymm7_8;
mov bldw_9 ymm9_9;
mov bldw_a ymm7_a;
mov bldw_b ymm9_b;
mov bldw_c ymm7_c;
mov bldw_d ymm9_d;
mov bldw_e ymm7_e;
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
(* vpslld $0x10,%ymm10,%ymm7                       #! PC = 0x555555558943 *)
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
mov ymm7_0 slld_0;
mov ymm7_1 slld_1;
mov ymm7_2 slld_2;
mov ymm7_3 slld_3;
mov ymm7_4 slld_4;
mov ymm7_5 slld_5;
mov ymm7_6 slld_6;
mov ymm7_7 slld_7;
mov ymm7_8 slld_8;
mov ymm7_9 slld_9;
mov ymm7_a slld_a;
mov ymm7_b slld_b;
mov ymm7_c slld_c;
mov ymm7_d slld_d;
mov ymm7_e slld_e;
mov ymm7_f slld_f;
(* vpblendw $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x555555558949 *)
mov bldw_0 ymm5_0;
mov bldw_1 ymm7_1;
mov bldw_2 ymm5_2;
mov bldw_3 ymm7_3;
mov bldw_4 ymm5_4;
mov bldw_5 ymm7_5;
mov bldw_6 ymm5_6;
mov bldw_7 ymm7_7;
mov bldw_8 ymm5_8;
mov bldw_9 ymm7_9;
mov bldw_a ymm5_a;
mov bldw_b ymm7_b;
mov bldw_c ymm5_c;
mov bldw_d ymm7_d;
mov bldw_e ymm5_e;
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
(* vpsrld $0x10,%ymm5,%ymm5                        #! PC = 0x55555555894f *)
mov srld_0 ymm5_1;
mov srld_1 0@sint16;
mov srld_2 ymm5_3;
mov srld_3 0@sint16;
mov srld_4 ymm5_5;
mov srld_5 0@sint16;
mov srld_6 ymm5_7;
mov srld_7 0@sint16;
mov srld_8 ymm5_9;
mov srld_9 0@sint16;
mov srld_a ymm5_b;
mov srld_b 0@sint16;
mov srld_c ymm5_d;
mov srld_d 0@sint16;
mov srld_e ymm5_f;
mov srld_f 0@sint16;
mov ymm5_0 srld_0;
mov ymm5_1 srld_1;
mov ymm5_2 srld_2;
mov ymm5_3 srld_3;
mov ymm5_4 srld_4;
mov ymm5_5 srld_5;
mov ymm5_6 srld_6;
mov ymm5_7 srld_7;
mov ymm5_8 srld_8;
mov ymm5_9 srld_9;
mov ymm5_a srld_a;
mov ymm5_b srld_b;
mov ymm5_c srld_c;
mov ymm5_d srld_d;
mov ymm5_e srld_e;
mov ymm5_f srld_f;
(* vpblendw $0xaa,%ymm10,%ymm5,%ymm10              #! PC = 0x555555558954 *)
mov bldw_0 ymm5_0;
mov bldw_1 ymm10_1;
mov bldw_2 ymm5_2;
mov bldw_3 ymm10_3;
mov bldw_4 ymm5_4;
mov bldw_5 ymm10_5;
mov bldw_6 ymm5_6;
mov bldw_7 ymm10_7;
mov bldw_8 ymm5_8;
mov bldw_9 ymm10_9;
mov bldw_a ymm5_a;
mov bldw_b ymm10_b;
mov bldw_c ymm5_c;
mov bldw_d ymm10_d;
mov bldw_e ymm5_e;
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
(* vpslld $0x10,%ymm11,%ymm5                       #! PC = 0x55555555895a *)
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
(* vpblendw $0xaa,%ymm5,%ymm6,%ymm5                #! PC = 0x555555558960 *)
mov bldw_0 ymm6_0;
mov bldw_1 ymm5_1;
mov bldw_2 ymm6_2;
mov bldw_3 ymm5_3;
mov bldw_4 ymm6_4;
mov bldw_5 ymm5_5;
mov bldw_6 ymm6_6;
mov bldw_7 ymm5_7;
mov bldw_8 ymm6_8;
mov bldw_9 ymm5_9;
mov bldw_a ymm6_a;
mov bldw_b ymm5_b;
mov bldw_c ymm6_c;
mov bldw_d ymm5_d;
mov bldw_e ymm6_e;
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
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x555555558966 *)
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
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555555896b *)
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
(* vpaddw %ymm8,%ymm4,%ymm6                        #! PC = 0x555555558971 *)
add ymm6_0 ymm4_0 ymm8_0;
add ymm6_1 ymm4_1 ymm8_1;
add ymm6_2 ymm4_2 ymm8_2;
add ymm6_3 ymm4_3 ymm8_3;
add ymm6_4 ymm4_4 ymm8_4;
add ymm6_5 ymm4_5 ymm8_5;
add ymm6_6 ymm4_6 ymm8_6;
add ymm6_7 ymm4_7 ymm8_7;
add ymm6_8 ymm4_8 ymm8_8;
add ymm6_9 ymm4_9 ymm8_9;
add ymm6_a ymm4_a ymm8_a;
add ymm6_b ymm4_b ymm8_b;
add ymm6_c ymm4_c ymm8_c;
add ymm6_d ymm4_d ymm8_d;
add ymm6_e ymm4_e ymm8_e;
add ymm6_f ymm4_f ymm8_f;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555558976 *)
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
(* vpaddw %ymm9,%ymm3,%ymm4                        #! PC = 0x55555555897b *)
add ymm4_0 ymm3_0 ymm9_0;
add ymm4_1 ymm3_1 ymm9_1;
add ymm4_2 ymm3_2 ymm9_2;
add ymm4_3 ymm3_3 ymm9_3;
add ymm4_4 ymm3_4 ymm9_4;
add ymm4_5 ymm3_5 ymm9_5;
add ymm4_6 ymm3_6 ymm9_6;
add ymm4_7 ymm3_7 ymm9_7;
add ymm4_8 ymm3_8 ymm9_8;
add ymm4_9 ymm3_9 ymm9_9;
add ymm4_a ymm3_a ymm9_a;
add ymm4_b ymm3_b ymm9_b;
add ymm4_c ymm3_c ymm9_c;
add ymm4_d ymm3_d ymm9_d;
add ymm4_e ymm3_e ymm9_e;
add ymm4_f ymm3_f ymm9_f;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x555555558980 *)
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
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x555555558985 *)
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
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x555555558989 *)
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
(* vpaddw %ymm11,%ymm10,%ymm7                      #! PC = 0x55555555898d *)
add ymm7_0 ymm10_0 ymm11_0;
add ymm7_1 ymm10_1 ymm11_1;
add ymm7_2 ymm10_2 ymm11_2;
add ymm7_3 ymm10_3 ymm11_3;
add ymm7_4 ymm10_4 ymm11_4;
add ymm7_5 ymm10_5 ymm11_5;
add ymm7_6 ymm10_6 ymm11_6;
add ymm7_7 ymm10_7 ymm11_7;
add ymm7_8 ymm10_8 ymm11_8;
add ymm7_9 ymm10_9 ymm11_9;
add ymm7_a ymm10_a ymm11_a;
add ymm7_b ymm10_b ymm11_b;
add ymm7_c ymm10_c ymm11_c;
add ymm7_d ymm10_d ymm11_d;
add ymm7_e ymm10_e ymm11_e;
add ymm7_f ymm10_f ymm11_f;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558992 *)
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
(* ===== End of level 6, off 1 ===== *)

(* ecut 14, rcut 14 *)

cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm4_0*((6269*1*x)**1)
  )
  [10753, x**2 - (-29)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm9_0*((6269*1*x)**1)
  )
  [10753, x**2 - (29)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm7_0*((6269*67*x)**1)
  )
  [10753, x**2 - (1145)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm11_0*((6269*67*x)**1)
  )
  [10753, x**2 - (-1145)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_1 + ymm4_1*((6269*7331*x)**1)
  )
  [10753, x**2 - (1444)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_1 + ymm9_1*((6269*7331*x)**1)
  )
  [10753, x**2 - (-1444)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_1 + ymm7_1*((6269*9097*x)**1)
  )
  [10753, x**2 - (-1943)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_1 + ymm11_1*((6269*9097*x)**1)
  )
  [10753, x**2 - (1943)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_2 + ymm4_2*((6269*8116*x)**1)
  )
  [10753, x**2 - (5012)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_2 + ymm9_2*((6269*8116*x)**1)
  )
  [10753, x**2 - (-5012)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_2 + ymm7_2*((6269*3010*x)**1)
  )
  [10753, x**2 - (3592)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_2 + ymm11_2*((6269*3010*x)**1)
  )
  [10753, x**2 - (-3592)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_3 + ymm4_3*((6269*2047*x)**1)
  )
  [10753, x**2 - (-4098)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_3 + ymm9_3*((6269*2047*x)**1)
  )
  [10753, x**2 - (4098)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_3 + ymm7_3*((6269*1154*x)**1)
  )
  [10753, x**2 - (2461)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_3 + ymm11_3*((6269*1154*x)**1)
  )
  [10753, x**2 - (-2461)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm4_4*((3223*1*x)**1)
  )
  [10753, x**2 - (1202)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm9_4*((3223*1*x)**1)
  )
  [10753, x**2 - (-1202)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm7_4*((3223*67*x)**1)
  )
  [10753, x**2 - (2228)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm11_4*((3223*67*x)**1)
  )
  [10753, x**2 - (-2228)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_5 + ymm4_5*((3223*7331*x)**1)
  )
  [10753, x**2 - (-1266)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_5 + ymm9_5*((3223*7331*x)**1)
  )
  [10753, x**2 - (1266)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_5 + ymm7_5*((3223*9097*x)**1)
  )
  [10753, x**2 - (5263)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_5 + ymm11_5*((3223*9097*x)**1)
  )
  [10753, x**2 - (-5263)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_6 + ymm4_6*((3223*8116*x)**1)
  )
  [10753, x**2 - (-1207)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_6 + ymm9_6*((3223*8116*x)**1)
  )
  [10753, x**2 - (1207)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_6 + ymm7_6*((3223*3010*x)**1)
  )
  [10753, x**2 - (1289)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_6 + ymm11_6*((3223*3010*x)**1)
  )
  [10753, x**2 - (-1289)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_7 + ymm4_7*((3223*2047*x)**1)
  )
  [10753, x**2 - (-339)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_7 + ymm9_7*((3223*2047*x)**1)
  )
  [10753, x**2 - (339)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_7 + ymm7_7*((3223*1154*x)**1)
  )
  [10753, x**2 - (5155)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_7 + ymm11_7*((3223*1154*x)**1)
  )
  [10753, x**2 - (-5155)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm4_8*((8417*1*x)**1)
  )
  [10753, x**2 - (-1924)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm9_8*((8417*1*x)**1)
  )
  [10753, x**2 - (1924)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm7_8*((8417*67*x)**1)
  )
  [10753, x**2 - (2177)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm11_8*((8417*67*x)**1)
  )
  [10753, x**2 - (-2177)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_9 + ymm4_9*((8417*7331*x)**1)
  )
  [10753, x**2 - (-4683)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_9 + ymm9_9*((8417*7331*x)**1)
  )
  [10753, x**2 - (4683)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_9 + ymm7_9*((8417*9097*x)**1)
  )
  [10753, x**2 - (128)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_9 + ymm11_9*((8417*9097*x)**1)
  )
  [10753, x**2 - (-128)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_a + ymm4_a*((8417*8116*x)**1)
  )
  [10753, x**2 - (3256)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_a + ymm9_a*((8417*8116*x)**1)
  )
  [10753, x**2 - (-3256)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_a + ymm7_a*((8417*3010*x)**1)
  )
  [10753, x**2 - (2857)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_a + ymm11_a*((8417*3010*x)**1)
  )
  [10753, x**2 - (-2857)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_b + ymm4_b*((8417*2047*x)**1)
  )
  [10753, x**2 - (2135)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_b + ymm9_b*((8417*2047*x)**1)
  )
  [10753, x**2 - (-2135)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_b + ymm7_b*((8417*1154*x)**1)
  )
  [10753, x**2 - (3092)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_b + ymm11_b*((8417*1154*x)**1)
  )
  [10753, x**2 - (-3092)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm4_c*((10*1*x)**1)
  )
  [10753, x**2 - (-1828)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm9_c*((10*1*x)**1)
  )
  [10753, x**2 - (1828)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm7_c*((10*67*x)**1)
  )
  [10753, x**2 - (1353)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm11_c*((10*67*x)**1)
  )
  [10753, x**2 - (-1353)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_d + ymm4_d*((10*7331*x)**1)
  )
  [10753, x**2 - (4627)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_d + ymm9_d*((10*7331*x)**1)
  )
  [10753, x**2 - (-4627)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_d + ymm7_d*((10*9097*x)**1)
  )
  [10753, x**2 - (-4193)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_d + ymm11_d*((10*9097*x)**1)
  )
  [10753, x**2 - (4193)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_e + ymm4_e*((10*8116*x)**1)
  )
  [10753, x**2 - (-5178)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_e + ymm9_e*((10*8116*x)**1)
  )
  [10753, x**2 - (5178)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_e + ymm7_e*((10*3010*x)**1)
  )
  [10753, x**2 - (3944)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_e + ymm11_e*((10*3010*x)**1)
  )
  [10753, x**2 - (-3944)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_f + ymm4_f*((10*2047*x)**1)
  )
  [10753, x**2 - (4577)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_f + ymm9_f*((10*2047*x)**1)
  )
  [10753, x**2 - (-4577)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_f + ymm7_f*((10*1154*x)**1)
  )
  [10753, x**2 - (-2830)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_f + ymm11_f*((10*1154*x)**1)
  )
  [10753, x**2 - (2830)]
] && and [
  (-(11262))@16 <=s ymm6_0, ymm6_0 <=s (11262)@16, (-(11262))@16 <=s ymm4_0, ymm4_0 <=s (11262)@16,
  (-(11262))@16 <=s ymm8_0, ymm8_0 <=s (11262)@16, (-(11262))@16 <=s ymm9_0, ymm9_0 <=s (11262)@16,
  (-(11078))@16 <=s ymm3_0, ymm3_0 <=s (11078)@16, (-(13493))@16 <=s ymm7_0, ymm7_0 <=s (13493)@16,
  (-(11078))@16 <=s ymm5_0, ymm5_0 <=s (11078)@16, (-(13493))@16 <=s ymm11_0, ymm11_0 <=s (13493)@16,
  (-(12393))@16 <=s ymm6_1, ymm6_1 <=s (12393)@16, (-(11758))@16 <=s ymm4_1, ymm4_1 <=s (11758)@16,
  (-(12393))@16 <=s ymm8_1, ymm8_1 <=s (12393)@16, (-(11758))@16 <=s ymm9_1, ymm9_1 <=s (11758)@16,
  (-(12268))@16 <=s ymm3_1, ymm3_1 <=s (12268)@16, (-(12199))@16 <=s ymm7_1, ymm7_1 <=s (12199)@16,
  (-(12268))@16 <=s ymm5_1, ymm5_1 <=s (12268)@16, (-(12199))@16 <=s ymm11_1, ymm11_1 <=s (12199)@16,
  (-(11871))@16 <=s ymm6_2, ymm6_2 <=s (11871)@16, (-(11898))@16 <=s ymm4_2, ymm4_2 <=s (11898)@16,
  (-(11871))@16 <=s ymm8_2, ymm8_2 <=s (11871)@16, (-(11898))@16 <=s ymm9_2, ymm9_2 <=s (11898)@16,
  (-(12325))@16 <=s ymm3_2, ymm3_2 <=s (12325)@16, (-(12860))@16 <=s ymm7_2, ymm7_2 <=s (12860)@16,
  (-(12325))@16 <=s ymm5_2, ymm5_2 <=s (12325)@16, (-(12860))@16 <=s ymm11_2, ymm11_2 <=s (12860)@16,
  (-(11124))@16 <=s ymm6_3, ymm6_3 <=s (11124)@16, (-(11172))@16 <=s ymm4_3, ymm4_3 <=s (11172)@16,
  (-(11124))@16 <=s ymm8_3, ymm8_3 <=s (11124)@16, (-(11172))@16 <=s ymm9_3, ymm9_3 <=s (11172)@16,
  (-(11136))@16 <=s ymm3_3, ymm3_3 <=s (11136)@16, (-(13039))@16 <=s ymm7_3, ymm7_3 <=s (13039)@16,
  (-(11136))@16 <=s ymm5_3, ymm5_3 <=s (11136)@16, (-(13039))@16 <=s ymm11_3, ymm11_3 <=s (13039)@16,
  (-(11262))@16 <=s ymm6_4, ymm6_4 <=s (11262)@16, (-(11262))@16 <=s ymm4_4, ymm4_4 <=s (11262)@16,
  (-(11262))@16 <=s ymm8_4, ymm8_4 <=s (11262)@16, (-(11262))@16 <=s ymm9_4, ymm9_4 <=s (11262)@16,
  (-(11078))@16 <=s ymm3_4, ymm3_4 <=s (11078)@16, (-(13517))@16 <=s ymm7_4, ymm7_4 <=s (13517)@16,
  (-(11078))@16 <=s ymm5_4, ymm5_4 <=s (11078)@16, (-(13517))@16 <=s ymm11_4, ymm11_4 <=s (13517)@16,
  (-(12386))@16 <=s ymm6_5, ymm6_5 <=s (12386)@16, (-(11708))@16 <=s ymm4_5, ymm4_5 <=s (11708)@16,
  (-(12386))@16 <=s ymm8_5, ymm8_5 <=s (12386)@16, (-(11708))@16 <=s ymm9_5, ymm9_5 <=s (11708)@16,
  (-(12233))@16 <=s ymm3_5, ymm3_5 <=s (12233)@16, (-(12248))@16 <=s ymm7_5, ymm7_5 <=s (12248)@16,
  (-(12233))@16 <=s ymm5_5, ymm5_5 <=s (12233)@16, (-(12248))@16 <=s ymm11_5, ymm11_5 <=s (12248)@16,
  (-(11846))@16 <=s ymm6_6, ymm6_6 <=s (11846)@16, (-(11892))@16 <=s ymm4_6, ymm4_6 <=s (11892)@16,
  (-(11846))@16 <=s ymm8_6, ymm8_6 <=s (11846)@16, (-(11892))@16 <=s ymm9_6, ymm9_6 <=s (11892)@16,
  (-(12309))@16 <=s ymm3_6, ymm3_6 <=s (12309)@16, (-(12845))@16 <=s ymm7_6, ymm7_6 <=s (12845)@16,
  (-(12309))@16 <=s ymm5_6, ymm5_6 <=s (12309)@16, (-(12845))@16 <=s ymm11_6, ymm11_6 <=s (12845)@16,
  (-(11124))@16 <=s ymm6_7, ymm6_7 <=s (11124)@16, (-(11175))@16 <=s ymm4_7, ymm4_7 <=s (11175)@16,
  (-(11124))@16 <=s ymm8_7, ymm8_7 <=s (11124)@16, (-(11175))@16 <=s ymm9_7, ymm9_7 <=s (11175)@16,
  (-(11130))@16 <=s ymm3_7, ymm3_7 <=s (11130)@16, (-(12987))@16 <=s ymm7_7, ymm7_7 <=s (12987)@16,
  (-(11130))@16 <=s ymm5_7, ymm5_7 <=s (11130)@16, (-(12987))@16 <=s ymm11_7, ymm11_7 <=s (12987)@16,
  (-(11262))@16 <=s ymm6_8, ymm6_8 <=s (11262)@16, (-(11262))@16 <=s ymm4_8, ymm4_8 <=s (11262)@16,
  (-(11262))@16 <=s ymm8_8, ymm8_8 <=s (11262)@16, (-(11262))@16 <=s ymm9_8, ymm9_8 <=s (11262)@16,
  (-(11078))@16 <=s ymm3_8, ymm3_8 <=s (11078)@16, (-(13453))@16 <=s ymm7_8, ymm7_8 <=s (13453)@16,
  (-(11078))@16 <=s ymm5_8, ymm5_8 <=s (11078)@16, (-(13453))@16 <=s ymm11_8, ymm11_8 <=s (13453)@16,
  (-(12385))@16 <=s ymm6_9, ymm6_9 <=s (12385)@16, (-(11733))@16 <=s ymm4_9, ymm4_9 <=s (11733)@16,
  (-(12385))@16 <=s ymm8_9, ymm8_9 <=s (12385)@16, (-(11733))@16 <=s ymm9_9, ymm9_9 <=s (11733)@16,
  (-(12233))@16 <=s ymm3_9, ymm3_9 <=s (12233)@16, (-(12128))@16 <=s ymm7_9, ymm7_9 <=s (12128)@16,
  (-(12233))@16 <=s ymm5_9, ymm5_9 <=s (12233)@16, (-(12128))@16 <=s ymm11_9, ymm11_9 <=s (12128)@16,
  (-(11846))@16 <=s ymm6_a, ymm6_a <=s (11846)@16, (-(11885))@16 <=s ymm4_a, ymm4_a <=s (11885)@16,
  (-(11846))@16 <=s ymm8_a, ymm8_a <=s (11846)@16, (-(11885))@16 <=s ymm9_a, ymm9_a <=s (11885)@16,
  (-(12309))@16 <=s ymm3_a, ymm3_a <=s (12309)@16, (-(12784))@16 <=s ymm7_a, ymm7_a <=s (12784)@16,
  (-(12309))@16 <=s ymm5_a, ymm5_a <=s (12309)@16, (-(12784))@16 <=s ymm11_a, ymm11_a <=s (12784)@16,
  (-(11124))@16 <=s ymm6_b, ymm6_b <=s (11124)@16, (-(11167))@16 <=s ymm4_b, ymm4_b <=s (11167)@16,
  (-(11124))@16 <=s ymm8_b, ymm8_b <=s (11124)@16, (-(11167))@16 <=s ymm9_b, ymm9_b <=s (11167)@16,
  (-(11130))@16 <=s ymm3_b, ymm3_b <=s (11130)@16, (-(12981))@16 <=s ymm7_b, ymm7_b <=s (12981)@16,
  (-(11130))@16 <=s ymm5_b, ymm5_b <=s (11130)@16, (-(12981))@16 <=s ymm11_b, ymm11_b <=s (12981)@16,
  (-(11262))@16 <=s ymm6_c, ymm6_c <=s (11262)@16, (-(11262))@16 <=s ymm4_c, ymm4_c <=s (11262)@16,
  (-(11262))@16 <=s ymm8_c, ymm8_c <=s (11262)@16, (-(11262))@16 <=s ymm9_c, ymm9_c <=s (11262)@16,
  (-(11078))@16 <=s ymm3_c, ymm3_c <=s (11078)@16, (-(13445))@16 <=s ymm7_c, ymm7_c <=s (13445)@16,
  (-(11078))@16 <=s ymm5_c, ymm5_c <=s (11078)@16, (-(13445))@16 <=s ymm11_c, ymm11_c <=s (13445)@16,
  (-(12390))@16 <=s ymm6_d, ymm6_d <=s (12390)@16, (-(11708))@16 <=s ymm4_d, ymm4_d <=s (11708)@16,
  (-(12390))@16 <=s ymm8_d, ymm8_d <=s (12390)@16, (-(11708))@16 <=s ymm9_d, ymm9_d <=s (11708)@16,
  (-(12267))@16 <=s ymm3_d, ymm3_d <=s (12267)@16, (-(12177))@16 <=s ymm7_d, ymm7_d <=s (12177)@16,
  (-(12267))@16 <=s ymm5_d, ymm5_d <=s (12267)@16, (-(12177))@16 <=s ymm11_d, ymm11_d <=s (12177)@16,
  (-(11871))@16 <=s ymm6_e, ymm6_e <=s (11871)@16, (-(11873))@16 <=s ymm4_e, ymm4_e <=s (11873)@16,
  (-(11871))@16 <=s ymm8_e, ymm8_e <=s (11871)@16, (-(11873))@16 <=s ymm9_e, ymm9_e <=s (11873)@16,
  (-(12325))@16 <=s ymm3_e, ymm3_e <=s (12325)@16, (-(12760))@16 <=s ymm7_e, ymm7_e <=s (12760)@16,
  (-(12325))@16 <=s ymm5_e, ymm5_e <=s (12325)@16, (-(12760))@16 <=s ymm11_e, ymm11_e <=s (12760)@16,
  (-(11124))@16 <=s ymm6_f, ymm6_f <=s (11124)@16, (-(11162))@16 <=s ymm4_f, ymm4_f <=s (11162)@16,
  (-(11124))@16 <=s ymm8_f, ymm8_f <=s (11124)@16, (-(11162))@16 <=s ymm9_f, ymm9_f <=s (11162)@16,
  (-(11130))@16 <=s ymm3_f, ymm3_f <=s (11130)@16, (-(12922))@16 <=s ymm7_f, ymm7_f <=s (12922)@16,
  (-(11130))@16 <=s ymm5_f, ymm5_f <=s (11130)@16, (-(12922))@16 <=s ymm11_f, ymm11_f <=s (12922)@16
];

(* ===== Start of level 7, off 1 ===== *)
(* vpmullw %ymm1,%ymm9,%ymm12                      #! PC = 0x555555558997 *)
smull mulHymm9_0 mulL_0 ymm1_0 ymm9_0;
smull mulHymm9_1 mulL_1 ymm1_1 ymm9_1;
smull mulHymm9_2 mulL_2 ymm1_2 ymm9_2;
smull mulHymm9_3 mulL_3 ymm1_3 ymm9_3;
smull mulHymm9_4 mulL_4 ymm1_4 ymm9_4;
smull mulHymm9_5 mulL_5 ymm1_5 ymm9_5;
smull mulHymm9_6 mulL_6 ymm1_6 ymm9_6;
smull mulHymm9_7 mulL_7 ymm1_7 ymm9_7;
smull mulHymm9_8 mulL_8 ymm1_8 ymm9_8;
smull mulHymm9_9 mulL_9 ymm1_9 ymm9_9;
smull mulHymm9_a mulL_a ymm1_a ymm9_a;
smull mulHymm9_b mulL_b ymm1_b ymm9_b;
smull mulHymm9_c mulL_c ymm1_c ymm9_c;
smull mulHymm9_d mulL_d ymm1_d ymm9_d;
smull mulHymm9_e mulL_e ymm1_e ymm9_e;
smull mulHymm9_f mulL_f ymm1_f ymm9_f;
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
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x55555555899b *)
smull mulHymm11_0 mulL_0 ymm1_0 ymm11_0;
smull mulHymm11_1 mulL_1 ymm1_1 ymm11_1;
smull mulHymm11_2 mulL_2 ymm1_2 ymm11_2;
smull mulHymm11_3 mulL_3 ymm1_3 ymm11_3;
smull mulHymm11_4 mulL_4 ymm1_4 ymm11_4;
smull mulHymm11_5 mulL_5 ymm1_5 ymm11_5;
smull mulHymm11_6 mulL_6 ymm1_6 ymm11_6;
smull mulHymm11_7 mulL_7 ymm1_7 ymm11_7;
smull mulHymm11_8 mulL_8 ymm1_8 ymm11_8;
smull mulHymm11_9 mulL_9 ymm1_9 ymm11_9;
smull mulHymm11_a mulL_a ymm1_a ymm11_a;
smull mulHymm11_b mulL_b ymm1_b ymm11_b;
smull mulHymm11_c mulL_c ymm1_c ymm11_c;
smull mulHymm11_d mulL_d ymm1_d ymm11_d;
smull mulHymm11_e mulL_e ymm1_e ymm11_e;
smull mulHymm11_f mulL_f ymm1_f ymm11_f;
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
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555555899f *)
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
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x5555555589a3 *)
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
(* vpaddw %ymm4,%ymm6,%ymm10                       #! PC = 0x5555555589a7 *)
add ymm10_0 ymm6_0 ymm4_0;
add ymm10_1 ymm6_1 ymm4_1;
add ymm10_2 ymm6_2 ymm4_2;
add ymm10_3 ymm6_3 ymm4_3;
add ymm10_4 ymm6_4 ymm4_4;
add ymm10_5 ymm6_5 ymm4_5;
add ymm10_6 ymm6_6 ymm4_6;
add ymm10_7 ymm6_7 ymm4_7;
add ymm10_8 ymm6_8 ymm4_8;
add ymm10_9 ymm6_9 ymm4_9;
add ymm10_a ymm6_a ymm4_a;
add ymm10_b ymm6_b ymm4_b;
add ymm10_c ymm6_c ymm4_c;
add ymm10_d ymm6_d ymm4_d;
add ymm10_e ymm6_e ymm4_e;
add ymm10_f ymm6_f ymm4_f;
(* vpsubw %ymm4,%ymm6,%ymm4                        #! PC = 0x5555555589ab *)
sub ymm4_0 ymm6_0 ymm4_0;
sub ymm4_1 ymm6_1 ymm4_1;
sub ymm4_2 ymm6_2 ymm4_2;
sub ymm4_3 ymm6_3 ymm4_3;
sub ymm4_4 ymm6_4 ymm4_4;
sub ymm4_5 ymm6_5 ymm4_5;
sub ymm4_6 ymm6_6 ymm4_6;
sub ymm4_7 ymm6_7 ymm4_7;
sub ymm4_8 ymm6_8 ymm4_8;
sub ymm4_9 ymm6_9 ymm4_9;
sub ymm4_a ymm6_a ymm4_a;
sub ymm4_b ymm6_b ymm4_b;
sub ymm4_c ymm6_c ymm4_c;
sub ymm4_d ymm6_d ymm4_d;
sub ymm4_e ymm6_e ymm4_e;
sub ymm4_f ymm6_f ymm4_f;
(* vpaddw %ymm7,%ymm3,%ymm6                        #! PC = 0x5555555589af *)
add ymm6_0 ymm3_0 ymm7_0;
add ymm6_1 ymm3_1 ymm7_1;
add ymm6_2 ymm3_2 ymm7_2;
add ymm6_3 ymm3_3 ymm7_3;
add ymm6_4 ymm3_4 ymm7_4;
add ymm6_5 ymm3_5 ymm7_5;
add ymm6_6 ymm3_6 ymm7_6;
add ymm6_7 ymm3_7 ymm7_7;
add ymm6_8 ymm3_8 ymm7_8;
add ymm6_9 ymm3_9 ymm7_9;
add ymm6_a ymm3_a ymm7_a;
add ymm6_b ymm3_b ymm7_b;
add ymm6_c ymm3_c ymm7_c;
add ymm6_d ymm3_d ymm7_d;
add ymm6_e ymm3_e ymm7_e;
add ymm6_f ymm3_f ymm7_f;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x5555555589b3 *)
sub ymm7_0 ymm3_0 ymm7_0;
sub ymm7_1 ymm3_1 ymm7_1;
sub ymm7_2 ymm3_2 ymm7_2;
sub ymm7_3 ymm3_3 ymm7_3;
sub ymm7_4 ymm3_4 ymm7_4;
sub ymm7_5 ymm3_5 ymm7_5;
sub ymm7_6 ymm3_6 ymm7_6;
sub ymm7_7 ymm3_7 ymm7_7;
sub ymm7_8 ymm3_8 ymm7_8;
sub ymm7_9 ymm3_9 ymm7_9;
sub ymm7_a ymm3_a ymm7_a;
sub ymm7_b ymm3_b ymm7_b;
sub ymm7_c ymm3_c ymm7_c;
sub ymm7_d ymm3_d ymm7_d;
sub ymm7_e ymm3_e ymm7_e;
sub ymm7_f ymm3_f ymm7_f;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555589b7 *)
smull mulH_0 mulLymm12_0 ymm12_0 ymm0_0;
smull mulH_1 mulLymm12_1 ymm12_1 ymm0_1;
smull mulH_2 mulLymm12_2 ymm12_2 ymm0_2;
smull mulH_3 mulLymm12_3 ymm12_3 ymm0_3;
smull mulH_4 mulLymm12_4 ymm12_4 ymm0_4;
smull mulH_5 mulLymm12_5 ymm12_5 ymm0_5;
smull mulH_6 mulLymm12_6 ymm12_6 ymm0_6;
smull mulH_7 mulLymm12_7 ymm12_7 ymm0_7;
smull mulH_8 mulLymm12_8 ymm12_8 ymm0_8;
smull mulH_9 mulLymm12_9 ymm12_9 ymm0_9;
smull mulH_a mulLymm12_a ymm12_a ymm0_a;
smull mulH_b mulLymm12_b ymm12_b ymm0_b;
smull mulH_c mulLymm12_c ymm12_c ymm0_c;
smull mulH_d mulLymm12_d ymm12_d ymm0_d;
smull mulH_e mulLymm12_e ymm12_e ymm0_e;
smull mulH_f mulLymm12_f ymm12_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555589bb *)
smull mulH_0 mulLymm13_0 ymm13_0 ymm0_0;
smull mulH_1 mulLymm13_1 ymm13_1 ymm0_1;
smull mulH_2 mulLymm13_2 ymm13_2 ymm0_2;
smull mulH_3 mulLymm13_3 ymm13_3 ymm0_3;
smull mulH_4 mulLymm13_4 ymm13_4 ymm0_4;
smull mulH_5 mulLymm13_5 ymm13_5 ymm0_5;
smull mulH_6 mulLymm13_6 ymm13_6 ymm0_6;
smull mulH_7 mulLymm13_7 ymm13_7 ymm0_7;
smull mulH_8 mulLymm13_8 ymm13_8 ymm0_8;
smull mulH_9 mulLymm13_9 ymm13_9 ymm0_9;
smull mulH_a mulLymm13_a ymm13_a ymm0_a;
smull mulH_b mulLymm13_b ymm13_b ymm0_b;
smull mulH_c mulLymm13_c ymm13_c ymm0_c;
smull mulH_d mulLymm13_d ymm13_d ymm0_d;
smull mulH_e mulLymm13_e ymm13_e ymm0_e;
smull mulH_f mulLymm13_f ymm13_f ymm0_f;
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
assert true && and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
];
assume and [
mulLymm9_0 = mulLymm12_0, mulLymm9_1 = mulLymm12_1,
mulLymm9_2 = mulLymm12_2, mulLymm9_3 = mulLymm12_3,
mulLymm9_4 = mulLymm12_4, mulLymm9_5 = mulLymm12_5,
mulLymm9_6 = mulLymm12_6, mulLymm9_7 = mulLymm12_7,
mulLymm9_8 = mulLymm12_8, mulLymm9_9 = mulLymm12_9,
mulLymm9_a = mulLymm12_a, mulLymm9_b = mulLymm12_b,
mulLymm9_c = mulLymm12_c, mulLymm9_d = mulLymm12_d,
mulLymm9_e = mulLymm12_e, mulLymm9_f = mulLymm12_f,
mulLymm11_0 = mulLymm13_0, mulLymm11_1 = mulLymm13_1,
mulLymm11_2 = mulLymm13_2, mulLymm11_3 = mulLymm13_3,
mulLymm11_4 = mulLymm13_4, mulLymm11_5 = mulLymm13_5,
mulLymm11_6 = mulLymm13_6, mulLymm11_7 = mulLymm13_7,
mulLymm11_8 = mulLymm13_8, mulLymm11_9 = mulLymm13_9,
mulLymm11_a = mulLymm13_a, mulLymm11_b = mulLymm13_b,
mulLymm11_c = mulLymm13_c, mulLymm11_d = mulLymm13_d,
mulLymm11_e = mulLymm13_e, mulLymm11_f = mulLymm13_f
] && true;
(* vpaddw %ymm9,%ymm8,%ymm3                        #! PC = 0x5555555589bf *)
add ymm3_0 ymm8_0 ymm9_0;
add ymm3_1 ymm8_1 ymm9_1;
add ymm3_2 ymm8_2 ymm9_2;
add ymm3_3 ymm8_3 ymm9_3;
add ymm3_4 ymm8_4 ymm9_4;
add ymm3_5 ymm8_5 ymm9_5;
add ymm3_6 ymm8_6 ymm9_6;
add ymm3_7 ymm8_7 ymm9_7;
add ymm3_8 ymm8_8 ymm9_8;
add ymm3_9 ymm8_9 ymm9_9;
add ymm3_a ymm8_a ymm9_a;
add ymm3_b ymm8_b ymm9_b;
add ymm3_c ymm8_c ymm9_c;
add ymm3_d ymm8_d ymm9_d;
add ymm3_e ymm8_e ymm9_e;
add ymm3_f ymm8_f ymm9_f;
(* vpsubw %ymm9,%ymm8,%ymm9                        #! PC = 0x5555555589c4 *)
sub ymm9_0 ymm8_0 ymm9_0;
sub ymm9_1 ymm8_1 ymm9_1;
sub ymm9_2 ymm8_2 ymm9_2;
sub ymm9_3 ymm8_3 ymm9_3;
sub ymm9_4 ymm8_4 ymm9_4;
sub ymm9_5 ymm8_5 ymm9_5;
sub ymm9_6 ymm8_6 ymm9_6;
sub ymm9_7 ymm8_7 ymm9_7;
sub ymm9_8 ymm8_8 ymm9_8;
sub ymm9_9 ymm8_9 ymm9_9;
sub ymm9_a ymm8_a ymm9_a;
sub ymm9_b ymm8_b ymm9_b;
sub ymm9_c ymm8_c ymm9_c;
sub ymm9_d ymm8_d ymm9_d;
sub ymm9_e ymm8_e ymm9_e;
sub ymm9_f ymm8_f ymm9_f;
(* vpaddw %ymm11,%ymm5,%ymm8                       #! PC = 0x5555555589c9 *)
add ymm8_0 ymm5_0 ymm11_0;
add ymm8_1 ymm5_1 ymm11_1;
add ymm8_2 ymm5_2 ymm11_2;
add ymm8_3 ymm5_3 ymm11_3;
add ymm8_4 ymm5_4 ymm11_4;
add ymm8_5 ymm5_5 ymm11_5;
add ymm8_6 ymm5_6 ymm11_6;
add ymm8_7 ymm5_7 ymm11_7;
add ymm8_8 ymm5_8 ymm11_8;
add ymm8_9 ymm5_9 ymm11_9;
add ymm8_a ymm5_a ymm11_a;
add ymm8_b ymm5_b ymm11_b;
add ymm8_c ymm5_c ymm11_c;
add ymm8_d ymm5_d ymm11_d;
add ymm8_e ymm5_e ymm11_e;
add ymm8_f ymm5_f ymm11_f;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x5555555589ce *)
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
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x5555555589d3 *)
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
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555589d8 *)
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
(* vpsubw %ymm13,%ymm8,%ymm8                       #! PC = 0x5555555589dd *)
sub ymm8_0 ymm8_0 ymm13_0;
sub ymm8_1 ymm8_1 ymm13_1;
sub ymm8_2 ymm8_2 ymm13_2;
sub ymm8_3 ymm8_3 ymm13_3;
sub ymm8_4 ymm8_4 ymm13_4;
sub ymm8_5 ymm8_5 ymm13_5;
sub ymm8_6 ymm8_6 ymm13_6;
sub ymm8_7 ymm8_7 ymm13_7;
sub ymm8_8 ymm8_8 ymm13_8;
sub ymm8_9 ymm8_9 ymm13_9;
sub ymm8_a ymm8_a ymm13_a;
sub ymm8_b ymm8_b ymm13_b;
sub ymm8_c ymm8_c ymm13_c;
sub ymm8_d ymm8_d ymm13_d;
sub ymm8_e ymm8_e ymm13_e;
sub ymm8_f ymm8_f ymm13_f;
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x5555555589e2 *)
add ymm11_0 ymm11_0 ymm13_0;
add ymm11_1 ymm11_1 ymm13_1;
add ymm11_2 ymm11_2 ymm13_2;
add ymm11_3 ymm11_3 ymm13_3;
add ymm11_4 ymm11_4 ymm13_4;
add ymm11_5 ymm11_5 ymm13_5;
add ymm11_6 ymm11_6 ymm13_6;
add ymm11_7 ymm11_7 ymm13_7;
add ymm11_8 ymm11_8 ymm13_8;
add ymm11_9 ymm11_9 ymm13_9;
add ymm11_a ymm11_a ymm13_a;
add ymm11_b ymm11_b ymm13_b;
add ymm11_c ymm11_c ymm13_c;
add ymm11_d ymm11_d ymm13_d;
add ymm11_e ymm11_e ymm13_e;
add ymm11_f ymm11_f ymm13_f;
(* vmovdqa %ymm10,0x100(%rdi)                      #! EA = L0x7fffffffb5e0; PC = 0x5555555589e7 *)
mov L0x7fffffffb5e0 ymm10_0;
mov L0x7fffffffb5e2 ymm10_1;
mov L0x7fffffffb5e4 ymm10_2;
mov L0x7fffffffb5e6 ymm10_3;
mov L0x7fffffffb5e8 ymm10_4;
mov L0x7fffffffb5ea ymm10_5;
mov L0x7fffffffb5ec ymm10_6;
mov L0x7fffffffb5ee ymm10_7;
mov L0x7fffffffb5f0 ymm10_8;
mov L0x7fffffffb5f2 ymm10_9;
mov L0x7fffffffb5f4 ymm10_a;
mov L0x7fffffffb5f6 ymm10_b;
mov L0x7fffffffb5f8 ymm10_c;
mov L0x7fffffffb5fa ymm10_d;
mov L0x7fffffffb5fc ymm10_e;
mov L0x7fffffffb5fe ymm10_f;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffffb600; PC = 0x5555555589ef *)
mov L0x7fffffffb600 ymm4_0;
mov L0x7fffffffb602 ymm4_1;
mov L0x7fffffffb604 ymm4_2;
mov L0x7fffffffb606 ymm4_3;
mov L0x7fffffffb608 ymm4_4;
mov L0x7fffffffb60a ymm4_5;
mov L0x7fffffffb60c ymm4_6;
mov L0x7fffffffb60e ymm4_7;
mov L0x7fffffffb610 ymm4_8;
mov L0x7fffffffb612 ymm4_9;
mov L0x7fffffffb614 ymm4_a;
mov L0x7fffffffb616 ymm4_b;
mov L0x7fffffffb618 ymm4_c;
mov L0x7fffffffb61a ymm4_d;
mov L0x7fffffffb61c ymm4_e;
mov L0x7fffffffb61e ymm4_f;
(* vmovdqa %ymm3,0x140(%rdi)                       #! EA = L0x7fffffffb620; PC = 0x5555555589f7 *)
mov L0x7fffffffb620 ymm3_0;
mov L0x7fffffffb622 ymm3_1;
mov L0x7fffffffb624 ymm3_2;
mov L0x7fffffffb626 ymm3_3;
mov L0x7fffffffb628 ymm3_4;
mov L0x7fffffffb62a ymm3_5;
mov L0x7fffffffb62c ymm3_6;
mov L0x7fffffffb62e ymm3_7;
mov L0x7fffffffb630 ymm3_8;
mov L0x7fffffffb632 ymm3_9;
mov L0x7fffffffb634 ymm3_a;
mov L0x7fffffffb636 ymm3_b;
mov L0x7fffffffb638 ymm3_c;
mov L0x7fffffffb63a ymm3_d;
mov L0x7fffffffb63c ymm3_e;
mov L0x7fffffffb63e ymm3_f;
(* vmovdqa %ymm9,0x160(%rdi)                       #! EA = L0x7fffffffb640; PC = 0x5555555589ff *)
mov L0x7fffffffb640 ymm9_0;
mov L0x7fffffffb642 ymm9_1;
mov L0x7fffffffb644 ymm9_2;
mov L0x7fffffffb646 ymm9_3;
mov L0x7fffffffb648 ymm9_4;
mov L0x7fffffffb64a ymm9_5;
mov L0x7fffffffb64c ymm9_6;
mov L0x7fffffffb64e ymm9_7;
mov L0x7fffffffb650 ymm9_8;
mov L0x7fffffffb652 ymm9_9;
mov L0x7fffffffb654 ymm9_a;
mov L0x7fffffffb656 ymm9_b;
mov L0x7fffffffb658 ymm9_c;
mov L0x7fffffffb65a ymm9_d;
mov L0x7fffffffb65c ymm9_e;
mov L0x7fffffffb65e ymm9_f;
(* vmovdqa %ymm6,0x180(%rdi)                       #! EA = L0x7fffffffb660; PC = 0x555555558a07 *)
mov L0x7fffffffb660 ymm6_0;
mov L0x7fffffffb662 ymm6_1;
mov L0x7fffffffb664 ymm6_2;
mov L0x7fffffffb666 ymm6_3;
mov L0x7fffffffb668 ymm6_4;
mov L0x7fffffffb66a ymm6_5;
mov L0x7fffffffb66c ymm6_6;
mov L0x7fffffffb66e ymm6_7;
mov L0x7fffffffb670 ymm6_8;
mov L0x7fffffffb672 ymm6_9;
mov L0x7fffffffb674 ymm6_a;
mov L0x7fffffffb676 ymm6_b;
mov L0x7fffffffb678 ymm6_c;
mov L0x7fffffffb67a ymm6_d;
mov L0x7fffffffb67c ymm6_e;
mov L0x7fffffffb67e ymm6_f;
(* vmovdqa %ymm7,0x1a0(%rdi)                       #! EA = L0x7fffffffb680; PC = 0x555555558a0f *)
mov L0x7fffffffb680 ymm7_0;
mov L0x7fffffffb682 ymm7_1;
mov L0x7fffffffb684 ymm7_2;
mov L0x7fffffffb686 ymm7_3;
mov L0x7fffffffb688 ymm7_4;
mov L0x7fffffffb68a ymm7_5;
mov L0x7fffffffb68c ymm7_6;
mov L0x7fffffffb68e ymm7_7;
mov L0x7fffffffb690 ymm7_8;
mov L0x7fffffffb692 ymm7_9;
mov L0x7fffffffb694 ymm7_a;
mov L0x7fffffffb696 ymm7_b;
mov L0x7fffffffb698 ymm7_c;
mov L0x7fffffffb69a ymm7_d;
mov L0x7fffffffb69c ymm7_e;
mov L0x7fffffffb69e ymm7_f;
(* vmovdqa %ymm8,0x1c0(%rdi)                       #! EA = L0x7fffffffb6a0; PC = 0x555555558a17 *)
mov L0x7fffffffb6a0 ymm8_0;
mov L0x7fffffffb6a2 ymm8_1;
mov L0x7fffffffb6a4 ymm8_2;
mov L0x7fffffffb6a6 ymm8_3;
mov L0x7fffffffb6a8 ymm8_4;
mov L0x7fffffffb6aa ymm8_5;
mov L0x7fffffffb6ac ymm8_6;
mov L0x7fffffffb6ae ymm8_7;
mov L0x7fffffffb6b0 ymm8_8;
mov L0x7fffffffb6b2 ymm8_9;
mov L0x7fffffffb6b4 ymm8_a;
mov L0x7fffffffb6b6 ymm8_b;
mov L0x7fffffffb6b8 ymm8_c;
mov L0x7fffffffb6ba ymm8_d;
mov L0x7fffffffb6bc ymm8_e;
mov L0x7fffffffb6be ymm8_f;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb6c0; PC = 0x555555558a1f *)
mov L0x7fffffffb6c0 ymm11_0;
mov L0x7fffffffb6c2 ymm11_1;
mov L0x7fffffffb6c4 ymm11_2;
mov L0x7fffffffb6c6 ymm11_3;
mov L0x7fffffffb6c8 ymm11_4;
mov L0x7fffffffb6ca ymm11_5;
mov L0x7fffffffb6cc ymm11_6;
mov L0x7fffffffb6ce ymm11_7;
mov L0x7fffffffb6d0 ymm11_8;
mov L0x7fffffffb6d2 ymm11_9;
mov L0x7fffffffb6d4 ymm11_a;
mov L0x7fffffffb6d6 ymm11_b;
mov L0x7fffffffb6d8 ymm11_c;
mov L0x7fffffffb6da ymm11_d;
mov L0x7fffffffb6dc ymm11_e;
mov L0x7fffffffb6de ymm11_f;
(* ===== End of level 7, off 1 ===== *)

(* ecut 15, rcut 15 *)

cut
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e0
  )
  [10753, x - (1000)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb600
  )
  [10753, x - (-1000)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb620
  )
  [10753, x - (-4999)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb640
  )
  [10753, x - (4999)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb660
  )
  [10753, x - (-1590)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb680
  )
  [10753, x - (1590)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a0
  )
  [10753, x - (-2482)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c0
  )
  [10753, x - (2482)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e2
  )
  [10753, x - (-38)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb602
  )
  [10753, x - (38)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb622
  )
  [10753, x - (-1466)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb642
  )
  [10753, x - (1466)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb662
  )
  [10753, x - (-2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb682
  )
  [10753, x - (2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a2
  )
  [10753, x - (-1445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c2
  )
  [10753, x - (1445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e4
  )
  [10753, x - (3429)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb604
  )
  [10753, x - (-3429)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb624
  )
  [10753, x - (-5238)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb644
  )
  [10753, x - (5238)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb664
  )
  [10753, x - (3930)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb684
  )
  [10753, x - (-3930)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a4
  )
  [10753, x - (3903)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c4
  )
  [10753, x - (-3903)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e6
  )
  [10753, x - (-840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb606
  )
  [10753, x - (840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb626
  )
  [10753, x - (-3543)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb646
  )
  [10753, x - (3543)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb666
  )
  [10753, x - (-2515)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb686
  )
  [10753, x - (2515)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a6
  )
  [10753, x - (-815)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c6
  )
  [10753, x - (815)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e8
  )
  [10753, x - (2966)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb608
  )
  [10753, x - (-2966)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb628
  )
  [10753, x - (-2160)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb648
  )
  [10753, x - (2160)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb668
  )
  [10753, x - (-4931)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb688
  )
  [10753, x - (4931)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a8
  )
  [10753, x - (-5168)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c8
  )
  [10753, x - (5168)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ea
  )
  [10753, x - (2425)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60a
  )
  [10753, x - (-2425)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62a
  )
  [10753, x - (-3789)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64a
  )
  [10753, x - (3789)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66a
  )
  [10753, x - (1180)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68a
  )
  [10753, x - (-1180)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6aa
  )
  [10753, x - (4209)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ca
  )
  [10753, x - (-4209)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ec
  )
  [10753, x - (3310)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60c
  )
  [10753, x - (-3310)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62c
  )
  [10753, x - (2056)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64c
  )
  [10753, x - (-2056)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66c
  )
  [10753, x - (-4043)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68c
  )
  [10753, x - (4043)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ac
  )
  [10753, x - (-2037)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6cc
  )
  [10753, x - (2037)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ee
  )
  [10753, x - (2670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60e
  )
  [10753, x - (-2670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62e
  )
  [10753, x - (3965)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64e
  )
  [10753, x - (-3965)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66e
  )
  [10753, x - (-3911)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68e
  )
  [10753, x - (3911)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ae
  )
  [10753, x - (-3170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ce
  )
  [10753, x - (3170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f0
  )
  [10753, x - (-290)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb610
  )
  [10753, x - (290)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb630
  )
  [10753, x - (697)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb650
  )
  [10753, x - (-697)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb670
  )
  [10753, x - (3687)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb690
  )
  [10753, x - (-3687)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b0
  )
  [10753, x - (-2076)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d0
  )
  [10753, x - (2076)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f2
  )
  [10753, x - (-3645)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb612
  )
  [10753, x - (3645)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb632
  )
  [10753, x - (-3661)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb652
  )
  [10753, x - (3661)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb672
  )
  [10753, x - (3104)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb692
  )
  [10753, x - (-3104)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b2
  )
  [10753, x - (2032)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d2
  )
  [10753, x - (-2032)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f4
  )
  [10753, x - (-1317)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb614
  )
  [10753, x - (1317)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb634
  )
  [10753, x - (-2137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb654
  )
  [10753, x - (2137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb674
  )
  [10753, x - (-2215)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb694
  )
  [10753, x - (2215)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b4
  )
  [10753, x - (-3390)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d4
  )
  [10753, x - (3390)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f6
  )
  [10753, x - (-1907)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb616
  )
  [10753, x - (1907)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb636
  )
  [10753, x - (1135)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb656
  )
  [10753, x - (-1135)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb676
  )
  [10753, x - (1267)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb696
  )
  [10753, x - (-1267)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b6
  )
  [10753, x - (774)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d6
  )
  [10753, x - (-774)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f8
  )
  [10753, x - (3226)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb618
  )
  [10753, x - (-3226)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb638
  )
  [10753, x - (2777)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb658
  )
  [10753, x - (-2777)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb678
  )
  [10753, x - (3258)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb698
  )
  [10753, x - (-3258)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b8
  )
  [10753, x - (-1082)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d8
  )
  [10753, x - (1082)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fa
  )
  [10753, x - (1985)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61a
  )
  [10753, x - (-1985)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63a
  )
  [10753, x - (3572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65a
  )
  [10753, x - (-3572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67a
  )
  [10753, x - (3959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69a
  )
  [10753, x - (-3959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ba
  )
  [10753, x - (2758)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6da
  )
  [10753, x - (-2758)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fc
  )
  [10753, x - (2266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61c
  )
  [10753, x - (-2266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63c
  )
  [10753, x - (264)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65c
  )
  [10753, x - (-264)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67c
  )
  [10753, x - (1280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69c
  )
  [10753, x - (-1280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6bc
  )
  [10753, x - (-3818)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6dc
  )
  [10753, x - (3818)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fe
  )
  [10753, x - (301)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61e
  )
  [10753, x - (-301)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63e
  )
  [10753, x - (3689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65e
  )
  [10753, x - (-3689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67e
  )
  [10753, x - (-1339)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69e
  )
  [10753, x - (1339)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6be
  )
  [10753, x - (-156)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6de
  )
  [10753, x - (156)]
&& and [
  (-(22524))@16 <=s L0x7fffffffb5e0, L0x7fffffffb5e0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb600, L0x7fffffffb600 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb620, L0x7fffffffb620 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb640, L0x7fffffffb640 <=s (16668)@16,
  (-(24571))@16 <=s L0x7fffffffb660, L0x7fffffffb660 <=s (24571)@16, (-(24571))@16 <=s L0x7fffffffb680, L0x7fffffffb680 <=s (24571)@16,
  (-(16497))@16 <=s L0x7fffffffb6a0, L0x7fffffffb6a0 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6c0, L0x7fffffffb6c0 <=s (16497)@16,
  (-(24151))@16 <=s L0x7fffffffb5e2, L0x7fffffffb5e2 <=s (24151)@16, (-(24151))@16 <=s L0x7fffffffb602, L0x7fffffffb602 <=s (24151)@16,
  (-(17802))@16 <=s L0x7fffffffb622, L0x7fffffffb622 <=s (17802)@16, (-(17802))@16 <=s L0x7fffffffb642, L0x7fffffffb642 <=s (17802)@16,
  (-(24467))@16 <=s L0x7fffffffb662, L0x7fffffffb662 <=s (24467)@16, (-(24467))@16 <=s L0x7fffffffb682, L0x7fffffffb682 <=s (24467)@16,
  (-(17677))@16 <=s L0x7fffffffb6a2, L0x7fffffffb6a2 <=s (17677)@16, (-(17677))@16 <=s L0x7fffffffb6c2, L0x7fffffffb6c2 <=s (17677)@16,
  (-(23769))@16 <=s L0x7fffffffb5e4, L0x7fffffffb5e4 <=s (23769)@16, (-(23769))@16 <=s L0x7fffffffb604, L0x7fffffffb604 <=s (23769)@16,
  (-(17280))@16 <=s L0x7fffffffb624, L0x7fffffffb624 <=s (17280)@16, (-(17280))@16 <=s L0x7fffffffb644, L0x7fffffffb644 <=s (17280)@16,
  (-(25185))@16 <=s L0x7fffffffb664, L0x7fffffffb664 <=s (25185)@16, (-(25185))@16 <=s L0x7fffffffb684, L0x7fffffffb684 <=s (25185)@16,
  (-(17739))@16 <=s L0x7fffffffb6a4, L0x7fffffffb6a4 <=s (17739)@16, (-(17739))@16 <=s L0x7fffffffb6c4, L0x7fffffffb6c4 <=s (17739)@16,
  (-(22296))@16 <=s L0x7fffffffb5e6, L0x7fffffffb5e6 <=s (22296)@16, (-(22296))@16 <=s L0x7fffffffb606, L0x7fffffffb606 <=s (22296)@16,
  (-(16530))@16 <=s L0x7fffffffb626, L0x7fffffffb626 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb646, L0x7fffffffb646 <=s (16530)@16,
  (-(24175))@16 <=s L0x7fffffffb666, L0x7fffffffb666 <=s (24175)@16, (-(24175))@16 <=s L0x7fffffffb686, L0x7fffffffb686 <=s (24175)@16,
  (-(16550))@16 <=s L0x7fffffffb6a6, L0x7fffffffb6a6 <=s (16550)@16, (-(16550))@16 <=s L0x7fffffffb6c6, L0x7fffffffb6c6 <=s (16550)@16,
  (-(22524))@16 <=s L0x7fffffffb5e8, L0x7fffffffb5e8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb608, L0x7fffffffb608 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb628, L0x7fffffffb628 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb648, L0x7fffffffb648 <=s (16668)@16,
  (-(24595))@16 <=s L0x7fffffffb668, L0x7fffffffb668 <=s (24595)@16, (-(24595))@16 <=s L0x7fffffffb688, L0x7fffffffb688 <=s (24595)@16,
  (-(16497))@16 <=s L0x7fffffffb6a8, L0x7fffffffb6a8 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6c8, L0x7fffffffb6c8 <=s (16497)@16,
  (-(24094))@16 <=s L0x7fffffffb5ea, L0x7fffffffb5ea <=s (24094)@16, (-(24094))@16 <=s L0x7fffffffb60a, L0x7fffffffb60a <=s (24094)@16,
  (-(17795))@16 <=s L0x7fffffffb62a, L0x7fffffffb62a <=s (17795)@16, (-(17795))@16 <=s L0x7fffffffb64a, L0x7fffffffb64a <=s (17795)@16,
  (-(24481))@16 <=s L0x7fffffffb66a, L0x7fffffffb66a <=s (24481)@16, (-(24481))@16 <=s L0x7fffffffb68a, L0x7fffffffb68a <=s (24481)@16,
  (-(17642))@16 <=s L0x7fffffffb6aa, L0x7fffffffb6aa <=s (17642)@16, (-(17642))@16 <=s L0x7fffffffb6ca, L0x7fffffffb6ca <=s (17642)@16,
  (-(23738))@16 <=s L0x7fffffffb5ec, L0x7fffffffb5ec <=s (23738)@16, (-(23738))@16 <=s L0x7fffffffb60c, L0x7fffffffb60c <=s (23738)@16,
  (-(17255))@16 <=s L0x7fffffffb62c, L0x7fffffffb62c <=s (17255)@16, (-(17255))@16 <=s L0x7fffffffb64c, L0x7fffffffb64c <=s (17255)@16,
  (-(25154))@16 <=s L0x7fffffffb66c, L0x7fffffffb66c <=s (25154)@16, (-(25154))@16 <=s L0x7fffffffb68c, L0x7fffffffb68c <=s (25154)@16,
  (-(17723))@16 <=s L0x7fffffffb6ac, L0x7fffffffb6ac <=s (17723)@16, (-(17723))@16 <=s L0x7fffffffb6cc, L0x7fffffffb6cc <=s (17723)@16,
  (-(22299))@16 <=s L0x7fffffffb5ee, L0x7fffffffb5ee <=s (22299)@16, (-(22299))@16 <=s L0x7fffffffb60e, L0x7fffffffb60e <=s (22299)@16,
  (-(16530))@16 <=s L0x7fffffffb62e, L0x7fffffffb62e <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb64e, L0x7fffffffb64e <=s (16530)@16,
  (-(24117))@16 <=s L0x7fffffffb66e, L0x7fffffffb66e <=s (24117)@16, (-(24117))@16 <=s L0x7fffffffb68e, L0x7fffffffb68e <=s (24117)@16,
  (-(16544))@16 <=s L0x7fffffffb6ae, L0x7fffffffb6ae <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb6ce, L0x7fffffffb6ce <=s (16544)@16,
  (-(22524))@16 <=s L0x7fffffffb5f0, L0x7fffffffb5f0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb610, L0x7fffffffb610 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb630, L0x7fffffffb630 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb650, L0x7fffffffb650 <=s (16668)@16,
  (-(24531))@16 <=s L0x7fffffffb670, L0x7fffffffb670 <=s (24531)@16, (-(24531))@16 <=s L0x7fffffffb690, L0x7fffffffb690 <=s (24531)@16,
  (-(16497))@16 <=s L0x7fffffffb6b0, L0x7fffffffb6b0 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6d0, L0x7fffffffb6d0 <=s (16497)@16,
  (-(24118))@16 <=s L0x7fffffffb5f2, L0x7fffffffb5f2 <=s (24118)@16, (-(24118))@16 <=s L0x7fffffffb612, L0x7fffffffb612 <=s (24118)@16,
  (-(17794))@16 <=s L0x7fffffffb632, L0x7fffffffb632 <=s (17794)@16, (-(17794))@16 <=s L0x7fffffffb652, L0x7fffffffb652 <=s (17794)@16,
  (-(24361))@16 <=s L0x7fffffffb672, L0x7fffffffb672 <=s (24361)@16, (-(24361))@16 <=s L0x7fffffffb692, L0x7fffffffb692 <=s (24361)@16,
  (-(17642))@16 <=s L0x7fffffffb6b2, L0x7fffffffb6b2 <=s (17642)@16, (-(17642))@16 <=s L0x7fffffffb6d2, L0x7fffffffb6d2 <=s (17642)@16,
  (-(23731))@16 <=s L0x7fffffffb5f4, L0x7fffffffb5f4 <=s (23731)@16, (-(23731))@16 <=s L0x7fffffffb614, L0x7fffffffb614 <=s (23731)@16,
  (-(17255))@16 <=s L0x7fffffffb634, L0x7fffffffb634 <=s (17255)@16, (-(17255))@16 <=s L0x7fffffffb654, L0x7fffffffb654 <=s (17255)@16,
  (-(25093))@16 <=s L0x7fffffffb674, L0x7fffffffb674 <=s (25093)@16, (-(25093))@16 <=s L0x7fffffffb694, L0x7fffffffb694 <=s (25093)@16,
  (-(17723))@16 <=s L0x7fffffffb6b4, L0x7fffffffb6b4 <=s (17723)@16, (-(17723))@16 <=s L0x7fffffffb6d4, L0x7fffffffb6d4 <=s (17723)@16,
  (-(22291))@16 <=s L0x7fffffffb5f6, L0x7fffffffb5f6 <=s (22291)@16, (-(22291))@16 <=s L0x7fffffffb616, L0x7fffffffb616 <=s (22291)@16,
  (-(16530))@16 <=s L0x7fffffffb636, L0x7fffffffb636 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb656, L0x7fffffffb656 <=s (16530)@16,
  (-(24111))@16 <=s L0x7fffffffb676, L0x7fffffffb676 <=s (24111)@16, (-(24111))@16 <=s L0x7fffffffb696, L0x7fffffffb696 <=s (24111)@16,
  (-(16544))@16 <=s L0x7fffffffb6b6, L0x7fffffffb6b6 <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb6d6, L0x7fffffffb6d6 <=s (16544)@16,
  (-(22524))@16 <=s L0x7fffffffb5f8, L0x7fffffffb5f8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb618, L0x7fffffffb618 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb638, L0x7fffffffb638 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb658, L0x7fffffffb658 <=s (16668)@16,
  (-(24523))@16 <=s L0x7fffffffb678, L0x7fffffffb678 <=s (24523)@16, (-(24523))@16 <=s L0x7fffffffb698, L0x7fffffffb698 <=s (24523)@16,
  (-(16497))@16 <=s L0x7fffffffb6b8, L0x7fffffffb6b8 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6d8, L0x7fffffffb6d8 <=s (16497)@16,
  (-(24098))@16 <=s L0x7fffffffb5fa, L0x7fffffffb5fa <=s (24098)@16, (-(24098))@16 <=s L0x7fffffffb61a, L0x7fffffffb61a <=s (24098)@16,
  (-(17799))@16 <=s L0x7fffffffb63a, L0x7fffffffb63a <=s (17799)@16, (-(17799))@16 <=s L0x7fffffffb65a, L0x7fffffffb65a <=s (17799)@16,
  (-(24444))@16 <=s L0x7fffffffb67a, L0x7fffffffb67a <=s (24444)@16, (-(24444))@16 <=s L0x7fffffffb69a, L0x7fffffffb69a <=s (24444)@16,
  (-(17676))@16 <=s L0x7fffffffb6ba, L0x7fffffffb6ba <=s (17676)@16, (-(17676))@16 <=s L0x7fffffffb6da, L0x7fffffffb6da <=s (17676)@16,
  (-(23744))@16 <=s L0x7fffffffb5fc, L0x7fffffffb5fc <=s (23744)@16, (-(23744))@16 <=s L0x7fffffffb61c, L0x7fffffffb61c <=s (23744)@16,
  (-(17280))@16 <=s L0x7fffffffb63c, L0x7fffffffb63c <=s (17280)@16, (-(17280))@16 <=s L0x7fffffffb65c, L0x7fffffffb65c <=s (17280)@16,
  (-(25085))@16 <=s L0x7fffffffb67c, L0x7fffffffb67c <=s (25085)@16, (-(25085))@16 <=s L0x7fffffffb69c, L0x7fffffffb69c <=s (25085)@16,
  (-(17739))@16 <=s L0x7fffffffb6bc, L0x7fffffffb6bc <=s (17739)@16, (-(17739))@16 <=s L0x7fffffffb6dc, L0x7fffffffb6dc <=s (17739)@16,
  (-(22286))@16 <=s L0x7fffffffb5fe, L0x7fffffffb5fe <=s (22286)@16, (-(22286))@16 <=s L0x7fffffffb61e, L0x7fffffffb61e <=s (22286)@16,
  (-(16530))@16 <=s L0x7fffffffb63e, L0x7fffffffb63e <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb65e, L0x7fffffffb65e <=s (16530)@16,
  (-(24052))@16 <=s L0x7fffffffb67e, L0x7fffffffb67e <=s (24052)@16, (-(24052))@16 <=s L0x7fffffffb69e, L0x7fffffffb69e <=s (24052)@16,
  (-(16544))@16 <=s L0x7fffffffb6be, L0x7fffffffb6be <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb6de, L0x7fffffffb6de <=s (16544)@16
];

(* #! <- SP = 0x7fffffffa038 *)
#! 0x7fffffffa038 = 0x7fffffffa038;
(* #retq                                           #! PC = 0x555555558a27 *)
#retq                                           #! 0x555555558a27 = 0x555555558a27;

{
and [
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e0
  )
  [10753, x - (10)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb500
  )
  [10753, x - (-10)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb520
  )
  [10753, x - (-1878)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb540
  )
  [10753, x - (1878)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb560
  )
  [10753, x - (3210)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb580
  )
  [10753, x - (-3210)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a0
  )
  [10753, x - (-670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c0
  )
  [10753, x - (670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e2
  )
  [10753, x - (4946)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb502
  )
  [10753, x - (-4946)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb522
  )
  [10753, x - (2351)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb542
  )
  [10753, x - (-2351)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb562
  )
  [10753, x - (-1961)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb582
  )
  [10753, x - (1961)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a2
  )
  [10753, x - (-3778)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c2
  )
  [10753, x - (3778)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e4
  )
  [10753, x - (787)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb504
  )
  [10753, x - (-787)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb524
  )
  [10753, x - (4894)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb544
  )
  [10753, x - (-4894)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb564
  )
  [10753, x - (-1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb584
  )
  [10753, x - (1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a4
  )
  [10753, x - (5308)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c4
  )
  [10753, x - (-5308)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e6
  )
  [10753, x - (-2159)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb506
  )
  [10753, x - (2159)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb526
  )
  [10753, x - (3298)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb546
  )
  [10753, x - (-3298)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb566
  )
  [10753, x - (-4864)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb586
  )
  [10753, x - (4864)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a6
  )
  [10753, x - (-4847)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c6
  )
  [10753, x - (4847)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e8
  )
  [10753, x - (-2336)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb508
  )
  [10753, x - (2336)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb528
  )
  [10753, x - (2129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb548
  )
  [10753, x - (-2129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb568
  )
  [10753, x - (2854)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb588
  )
  [10753, x - (-2854)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a8
  )
  [10753, x - (-4783)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c8
  )
  [10753, x - (4783)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ea
  )
  [10753, x - (-2664)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50a
  )
  [10753, x - (2664)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52a
  )
  [10753, x - (1360)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54a
  )
  [10753, x - (-1360)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56a
  )
  [10753, x - (4313)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58a
  )
  [10753, x - (-4313)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5aa
  )
  [10753, x - (5096)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ca
  )
  [10753, x - (-5096)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ec
  )
  [10753, x - (3259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50c
  )
  [10753, x - (-3259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52c
  )
  [10753, x - (5182)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54c
  )
  [10753, x - (-5182)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56c
  )
  [10753, x - (3293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58c
  )
  [10753, x - (-3293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ac
  )
  [10753, x - (3098)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5cc
  )
  [10753, x - (-3098)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ee
  )
  [10753, x - (1102)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50e
  )
  [10753, x - (-1102)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52e
  )
  [10753, x - (-498)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54e
  )
  [10753, x - (498)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56e
  )
  [10753, x - (-1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58e
  )
  [10753, x - (1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ae
  )
  [10753, x - (-1107)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ce
  )
  [10753, x - (1107)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f0
  )
  [10753, x - (3223)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb510
  )
  [10753, x - (-3223)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb530
  )
  [10753, x - (-5262)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb550
  )
  [10753, x - (5262)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb570
  )
  [10753, x - (2295)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb590
  )
  [10753, x - (-2295)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b0
  )
  [10753, x - (-881)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d0
  )
  [10753, x - (881)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f2
  )
  [10753, x - (-3800)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb512
  )
  [10753, x - (3800)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb532
  )
  [10753, x - (3942)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb552
  )
  [10753, x - (-3942)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb572
  )
  [10753, x - (3472)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb592
  )
  [10753, x - (-3472)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b2
  )
  [10753, x - (-4711)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d2
  )
  [10753, x - (4711)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f4
  )
  [10753, x - (-1196)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb514
  )
  [10753, x - (1196)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb534
  )
  [10753, x - (3097)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb554
  )
  [10753, x - (-3097)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb574
  )
  [10753, x - (-4861)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb594
  )
  [10753, x - (4861)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b4
  )
  [10753, x - (3192)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d4
  )
  [10753, x - (-3192)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f6
  )
  [10753, x - (2024)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb516
  )
  [10753, x - (-2024)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb536
  )
  [10753, x - (549)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb556
  )
  [10753, x - (-549)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb576
  )
  [10753, x - (-4181)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb596
  )
  [10753, x - (4181)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b6
  )
  [10753, x - (4524)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d6
  )
  [10753, x - (-4524)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f8
  )
  [10753, x - (-4484)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb518
  )
  [10753, x - (4484)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb538
  )
  [10753, x - (-940)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb558
  )
  [10753, x - (940)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb578
  )
  [10753, x - (1538)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb598
  )
  [10753, x - (-1538)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b8
  )
  [10753, x - (-656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d8
  )
  [10753, x - (656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fa
  )
  [10753, x - (-4819)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51a
  )
  [10753, x - (4819)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53a
  )
  [10753, x - (-2545)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55a
  )
  [10753, x - (2545)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57a
  )
  [10753, x - (-283)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59a
  )
  [10753, x - (283)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ba
  )
  [10753, x - (1533)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5da
  )
  [10753, x - (-1533)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fc
  )
  [10753, x - (-2343)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51c
  )
  [10753, x - (2343)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53c
  )
  [10753, x - (1293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55c
  )
  [10753, x - (-1293)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57c
  )
  [10753, x - (4314)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59c
  )
  [10753, x - (-4314)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5bc
  )
  [10753, x - (607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5dc
  )
  [10753, x - (-607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fe
  )
  [10753, x - (-1825)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51e
  )
  [10753, x - (1825)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53e
  )
  [10753, x - (-1361)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55e
  )
  [10753, x - (1361)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57e
  )
  [10753, x - (-3992)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59e
  )
  [10753, x - (3992)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5be
  )
  [10753, x - (-5163)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5de
  )
  [10753, x - (5163)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e0
  )
  [10753, x - (1000)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb600
  )
  [10753, x - (-1000)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb620
  )
  [10753, x - (-4999)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb640
  )
  [10753, x - (4999)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb660
  )
  [10753, x - (-1590)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb680
  )
  [10753, x - (1590)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a0
  )
  [10753, x - (-2482)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c0
  )
  [10753, x - (2482)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e2
  )
  [10753, x - (-38)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb602
  )
  [10753, x - (38)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb622
  )
  [10753, x - (-1466)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb642
  )
  [10753, x - (1466)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb662
  )
  [10753, x - (-2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb682
  )
  [10753, x - (2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a2
  )
  [10753, x - (-1445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c2
  )
  [10753, x - (1445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e4
  )
  [10753, x - (3429)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb604
  )
  [10753, x - (-3429)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb624
  )
  [10753, x - (-5238)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb644
  )
  [10753, x - (5238)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb664
  )
  [10753, x - (3930)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb684
  )
  [10753, x - (-3930)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a4
  )
  [10753, x - (3903)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c4
  )
  [10753, x - (-3903)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e6
  )
  [10753, x - (-840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb606
  )
  [10753, x - (840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb626
  )
  [10753, x - (-3543)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb646
  )
  [10753, x - (3543)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb666
  )
  [10753, x - (-2515)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb686
  )
  [10753, x - (2515)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a6
  )
  [10753, x - (-815)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c6
  )
  [10753, x - (815)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e8
  )
  [10753, x - (2966)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb608
  )
  [10753, x - (-2966)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb628
  )
  [10753, x - (-2160)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb648
  )
  [10753, x - (2160)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb668
  )
  [10753, x - (-4931)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb688
  )
  [10753, x - (4931)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a8
  )
  [10753, x - (-5168)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c8
  )
  [10753, x - (5168)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ea
  )
  [10753, x - (2425)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60a
  )
  [10753, x - (-2425)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62a
  )
  [10753, x - (-3789)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64a
  )
  [10753, x - (3789)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66a
  )
  [10753, x - (1180)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68a
  )
  [10753, x - (-1180)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6aa
  )
  [10753, x - (4209)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ca
  )
  [10753, x - (-4209)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ec
  )
  [10753, x - (3310)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60c
  )
  [10753, x - (-3310)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62c
  )
  [10753, x - (2056)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64c
  )
  [10753, x - (-2056)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66c
  )
  [10753, x - (-4043)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68c
  )
  [10753, x - (4043)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ac
  )
  [10753, x - (-2037)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6cc
  )
  [10753, x - (2037)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ee
  )
  [10753, x - (2670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60e
  )
  [10753, x - (-2670)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62e
  )
  [10753, x - (3965)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64e
  )
  [10753, x - (-3965)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66e
  )
  [10753, x - (-3911)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68e
  )
  [10753, x - (3911)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ae
  )
  [10753, x - (-3170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ce
  )
  [10753, x - (3170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f0
  )
  [10753, x - (-290)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb610
  )
  [10753, x - (290)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb630
  )
  [10753, x - (697)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb650
  )
  [10753, x - (-697)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb670
  )
  [10753, x - (3687)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb690
  )
  [10753, x - (-3687)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b0
  )
  [10753, x - (-2076)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d0
  )
  [10753, x - (2076)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f2
  )
  [10753, x - (-3645)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb612
  )
  [10753, x - (3645)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb632
  )
  [10753, x - (-3661)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb652
  )
  [10753, x - (3661)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb672
  )
  [10753, x - (3104)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb692
  )
  [10753, x - (-3104)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b2
  )
  [10753, x - (2032)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d2
  )
  [10753, x - (-2032)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f4
  )
  [10753, x - (-1317)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb614
  )
  [10753, x - (1317)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb634
  )
  [10753, x - (-2137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb654
  )
  [10753, x - (2137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb674
  )
  [10753, x - (-2215)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb694
  )
  [10753, x - (2215)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b4
  )
  [10753, x - (-3390)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d4
  )
  [10753, x - (3390)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f6
  )
  [10753, x - (-1907)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb616
  )
  [10753, x - (1907)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb636
  )
  [10753, x - (1135)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb656
  )
  [10753, x - (-1135)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb676
  )
  [10753, x - (1267)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb696
  )
  [10753, x - (-1267)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b6
  )
  [10753, x - (774)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d6
  )
  [10753, x - (-774)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f8
  )
  [10753, x - (3226)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb618
  )
  [10753, x - (-3226)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb638
  )
  [10753, x - (2777)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb658
  )
  [10753, x - (-2777)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb678
  )
  [10753, x - (3258)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb698
  )
  [10753, x - (-3258)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b8
  )
  [10753, x - (-1082)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d8
  )
  [10753, x - (1082)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fa
  )
  [10753, x - (1985)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61a
  )
  [10753, x - (-1985)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63a
  )
  [10753, x - (3572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65a
  )
  [10753, x - (-3572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67a
  )
  [10753, x - (3959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69a
  )
  [10753, x - (-3959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ba
  )
  [10753, x - (2758)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6da
  )
  [10753, x - (-2758)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fc
  )
  [10753, x - (2266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61c
  )
  [10753, x - (-2266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63c
  )
  [10753, x - (264)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65c
  )
  [10753, x - (-264)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67c
  )
  [10753, x - (1280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69c
  )
  [10753, x - (-1280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6bc
  )
  [10753, x - (-3818)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6dc
  )
  [10753, x - (3818)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fe
  )
  [10753, x - (301)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61e
  )
  [10753, x - (-301)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63e
  )
  [10753, x - (3689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65e
  )
  [10753, x - (-3689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67e
  )
  [10753, x - (-1339)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69e
  )
  [10753, x - (1339)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6be
  )
  [10753, x - (-156)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6de
  )
  [10753, x - (156)]
] prove with [cuts [7, 15]] && and [
  (-(22524))@16 <=s L0x7fffffffb4e0, L0x7fffffffb4e0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb500, L0x7fffffffb500 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb520, L0x7fffffffb520 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb540, L0x7fffffffb540 <=s (16668)@16,
  (-(24561))@16 <=s L0x7fffffffb560, L0x7fffffffb560 <=s (24561)@16, (-(24561))@16 <=s L0x7fffffffb580, L0x7fffffffb580 <=s (24561)@16,
  (-(16500))@16 <=s L0x7fffffffb5a0, L0x7fffffffb5a0 <=s (16500)@16, (-(16500))@16 <=s L0x7fffffffb5c0, L0x7fffffffb5c0 <=s (16500)@16,
  (-(24108))@16 <=s L0x7fffffffb4e2, L0x7fffffffb4e2 <=s (24108)@16, (-(24108))@16 <=s L0x7fffffffb502, L0x7fffffffb502 <=s (24108)@16,
  (-(17809))@16 <=s L0x7fffffffb522, L0x7fffffffb522 <=s (17809)@16, (-(17809))@16 <=s L0x7fffffffb542, L0x7fffffffb542 <=s (17809)@16,
  (-(24496))@16 <=s L0x7fffffffb562, L0x7fffffffb562 <=s (24496)@16, (-(24496))@16 <=s L0x7fffffffb582, L0x7fffffffb582 <=s (24496)@16,
  (-(17712))@16 <=s L0x7fffffffb5a2, L0x7fffffffb5a2 <=s (17712)@16, (-(17712))@16 <=s L0x7fffffffb5c2, L0x7fffffffb5c2 <=s (17712)@16,
  (-(23779))@16 <=s L0x7fffffffb4e4, L0x7fffffffb4e4 <=s (23779)@16, (-(23779))@16 <=s L0x7fffffffb504, L0x7fffffffb504 <=s (23779)@16,
  (-(17305))@16 <=s L0x7fffffffb524, L0x7fffffffb524 <=s (17305)@16, (-(17305))@16 <=s L0x7fffffffb544, L0x7fffffffb544 <=s (17305)@16,
  (-(25170))@16 <=s L0x7fffffffb564, L0x7fffffffb564 <=s (25170)@16, (-(25170))@16 <=s L0x7fffffffb584, L0x7fffffffb584 <=s (25170)@16,
  (-(17755))@16 <=s L0x7fffffffb5a4, L0x7fffffffb5a4 <=s (17755)@16, (-(17755))@16 <=s L0x7fffffffb5c4, L0x7fffffffb5c4 <=s (17755)@16,
  (-(22299))@16 <=s L0x7fffffffb4e6, L0x7fffffffb4e6 <=s (22299)@16, (-(22299))@16 <=s L0x7fffffffb506, L0x7fffffffb506 <=s (22299)@16,
  (-(16530))@16 <=s L0x7fffffffb526, L0x7fffffffb526 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb546, L0x7fffffffb546 <=s (16530)@16,
  (-(24090))@16 <=s L0x7fffffffb566, L0x7fffffffb566 <=s (24090)@16, (-(24090))@16 <=s L0x7fffffffb586, L0x7fffffffb586 <=s (24090)@16,
  (-(16550))@16 <=s L0x7fffffffb5a6, L0x7fffffffb5a6 <=s (16550)@16, (-(16550))@16 <=s L0x7fffffffb5c6, L0x7fffffffb5c6 <=s (16550)@16,
  (-(22524))@16 <=s L0x7fffffffb4e8, L0x7fffffffb4e8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb508, L0x7fffffffb508 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb528, L0x7fffffffb528 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb548, L0x7fffffffb548 <=s (16668)@16,
  (-(24594))@16 <=s L0x7fffffffb568, L0x7fffffffb568 <=s (24594)@16, (-(24594))@16 <=s L0x7fffffffb588, L0x7fffffffb588 <=s (24594)@16,
  (-(16497))@16 <=s L0x7fffffffb5a8, L0x7fffffffb5a8 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb5c8, L0x7fffffffb5c8 <=s (16497)@16,
  (-(24095))@16 <=s L0x7fffffffb4ea, L0x7fffffffb4ea <=s (24095)@16, (-(24095))@16 <=s L0x7fffffffb50a, L0x7fffffffb50a <=s (24095)@16,
  (-(17796))@16 <=s L0x7fffffffb52a, L0x7fffffffb52a <=s (17796)@16, (-(17796))@16 <=s L0x7fffffffb54a, L0x7fffffffb54a <=s (17796)@16,
  (-(24442))@16 <=s L0x7fffffffb56a, L0x7fffffffb56a <=s (24442)@16, (-(24442))@16 <=s L0x7fffffffb58a, L0x7fffffffb58a <=s (24442)@16,
  (-(17642))@16 <=s L0x7fffffffb5aa, L0x7fffffffb5aa <=s (17642)@16, (-(17642))@16 <=s L0x7fffffffb5ca, L0x7fffffffb5ca <=s (17642)@16,
  (-(23733))@16 <=s L0x7fffffffb4ec, L0x7fffffffb4ec <=s (23733)@16, (-(23733))@16 <=s L0x7fffffffb50c, L0x7fffffffb50c <=s (23733)@16,
  (-(17255))@16 <=s L0x7fffffffb52c, L0x7fffffffb52c <=s (17255)@16, (-(17255))@16 <=s L0x7fffffffb54c, L0x7fffffffb54c <=s (17255)@16,
  (-(25138))@16 <=s L0x7fffffffb56c, L0x7fffffffb56c <=s (25138)@16, (-(25138))@16 <=s L0x7fffffffb58c, L0x7fffffffb58c <=s (25138)@16,
  (-(17723))@16 <=s L0x7fffffffb5ac, L0x7fffffffb5ac <=s (17723)@16, (-(17723))@16 <=s L0x7fffffffb5cc, L0x7fffffffb5cc <=s (17723)@16,
  (-(22299))@16 <=s L0x7fffffffb4ee, L0x7fffffffb4ee <=s (22299)@16, (-(22299))@16 <=s L0x7fffffffb50e, L0x7fffffffb50e <=s (22299)@16,
  (-(16530))@16 <=s L0x7fffffffb52e, L0x7fffffffb52e <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb54e, L0x7fffffffb54e <=s (16530)@16,
  (-(24110))@16 <=s L0x7fffffffb56e, L0x7fffffffb56e <=s (24110)@16, (-(24110))@16 <=s L0x7fffffffb58e, L0x7fffffffb58e <=s (24110)@16,
  (-(16544))@16 <=s L0x7fffffffb5ae, L0x7fffffffb5ae <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb5ce, L0x7fffffffb5ce <=s (16544)@16,
  (-(22524))@16 <=s L0x7fffffffb4f0, L0x7fffffffb4f0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb510, L0x7fffffffb510 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb530, L0x7fffffffb530 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb550, L0x7fffffffb550 <=s (16668)@16,
  (-(24521))@16 <=s L0x7fffffffb570, L0x7fffffffb570 <=s (24521)@16, (-(24521))@16 <=s L0x7fffffffb590, L0x7fffffffb590 <=s (24521)@16,
  (-(16505))@16 <=s L0x7fffffffb5b0, L0x7fffffffb5b0 <=s (16505)@16, (-(16505))@16 <=s L0x7fffffffb5d0, L0x7fffffffb5d0 <=s (16505)@16,
  (-(24118))@16 <=s L0x7fffffffb4f2, L0x7fffffffb4f2 <=s (24118)@16, (-(24118))@16 <=s L0x7fffffffb512, L0x7fffffffb512 <=s (24118)@16,
  (-(17822))@16 <=s L0x7fffffffb532, L0x7fffffffb532 <=s (17822)@16, (-(17822))@16 <=s L0x7fffffffb552, L0x7fffffffb552 <=s (17822)@16,
  (-(24511))@16 <=s L0x7fffffffb572, L0x7fffffffb572 <=s (24511)@16, (-(24511))@16 <=s L0x7fffffffb592, L0x7fffffffb592 <=s (24511)@16,
  (-(17748))@16 <=s L0x7fffffffb5b2, L0x7fffffffb5b2 <=s (17748)@16, (-(17748))@16 <=s L0x7fffffffb5d2, L0x7fffffffb5d2 <=s (17748)@16,
  (-(23786))@16 <=s L0x7fffffffb4f4, L0x7fffffffb4f4 <=s (23786)@16, (-(23786))@16 <=s L0x7fffffffb514, L0x7fffffffb514 <=s (23786)@16,
  (-(17333))@16 <=s L0x7fffffffb534, L0x7fffffffb534 <=s (17333)@16, (-(17333))@16 <=s L0x7fffffffb554, L0x7fffffffb554 <=s (17333)@16,
  (-(25203))@16 <=s L0x7fffffffb574, L0x7fffffffb574 <=s (25203)@16, (-(25203))@16 <=s L0x7fffffffb594, L0x7fffffffb594 <=s (25203)@16,
  (-(17810))@16 <=s L0x7fffffffb5b4, L0x7fffffffb5b4 <=s (17810)@16, (-(17810))@16 <=s L0x7fffffffb5d4, L0x7fffffffb5d4 <=s (17810)@16,
  (-(22281))@16 <=s L0x7fffffffb4f6, L0x7fffffffb4f6 <=s (22281)@16, (-(22281))@16 <=s L0x7fffffffb516, L0x7fffffffb516 <=s (22281)@16,
  (-(16530))@16 <=s L0x7fffffffb536, L0x7fffffffb536 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb556, L0x7fffffffb556 <=s (16530)@16,
  (-(24045))@16 <=s L0x7fffffffb576, L0x7fffffffb576 <=s (24045)@16, (-(24045))@16 <=s L0x7fffffffb596, L0x7fffffffb596 <=s (24045)@16,
  (-(16556))@16 <=s L0x7fffffffb5b6, L0x7fffffffb5b6 <=s (16556)@16, (-(16556))@16 <=s L0x7fffffffb5d6, L0x7fffffffb5d6 <=s (16556)@16,
  (-(22524))@16 <=s L0x7fffffffb4f8, L0x7fffffffb4f8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb518, L0x7fffffffb518 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb538, L0x7fffffffb538 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb558, L0x7fffffffb558 <=s (16668)@16,
  (-(24711))@16 <=s L0x7fffffffb578, L0x7fffffffb578 <=s (24711)@16, (-(24711))@16 <=s L0x7fffffffb598, L0x7fffffffb598 <=s (24711)@16,
  (-(16505))@16 <=s L0x7fffffffb5b8, L0x7fffffffb5b8 <=s (16505)@16, (-(16505))@16 <=s L0x7fffffffb5d8, L0x7fffffffb5d8 <=s (16505)@16,
  (-(24344))@16 <=s L0x7fffffffb4fa, L0x7fffffffb4fa <=s (24344)@16, (-(24344))@16 <=s L0x7fffffffb51a, L0x7fffffffb51a <=s (24344)@16,
  (-(17992))@16 <=s L0x7fffffffb53a, L0x7fffffffb53a <=s (17992)@16, (-(17992))@16 <=s L0x7fffffffb55a, L0x7fffffffb55a <=s (17992)@16,
  (-(24563))@16 <=s L0x7fffffffb57a, L0x7fffffffb57a <=s (24563)@16, (-(24563))@16 <=s L0x7fffffffb59a, L0x7fffffffb59a <=s (24563)@16,
  (-(17783))@16 <=s L0x7fffffffb5ba, L0x7fffffffb5ba <=s (17783)@16, (-(17783))@16 <=s L0x7fffffffb5da, L0x7fffffffb5da <=s (17783)@16,
  (-(23903))@16 <=s L0x7fffffffb4fc, L0x7fffffffb4fc <=s (23903)@16, (-(23903))@16 <=s L0x7fffffffb51c, L0x7fffffffb51c <=s (23903)@16,
  (-(17358))@16 <=s L0x7fffffffb53c, L0x7fffffffb53c <=s (17358)@16, (-(17358))@16 <=s L0x7fffffffb55c, L0x7fffffffb55c <=s (17358)@16,
  (-(25230))@16 <=s L0x7fffffffb57c, L0x7fffffffb57c <=s (25230)@16, (-(25230))@16 <=s L0x7fffffffb59c, L0x7fffffffb59c <=s (25230)@16,
  (-(17842))@16 <=s L0x7fffffffb5bc, L0x7fffffffb5bc <=s (17842)@16, (-(17842))@16 <=s L0x7fffffffb5dc, L0x7fffffffb5dc <=s (17842)@16,
  (-(22306))@16 <=s L0x7fffffffb4fe, L0x7fffffffb4fe <=s (22306)@16, (-(22306))@16 <=s L0x7fffffffb51e, L0x7fffffffb51e <=s (22306)@16,
  (-(16535))@16 <=s L0x7fffffffb53e, L0x7fffffffb53e <=s (16535)@16, (-(16535))@16 <=s L0x7fffffffb55e, L0x7fffffffb55e <=s (16535)@16,
  (-(24174))@16 <=s L0x7fffffffb57e, L0x7fffffffb57e <=s (24174)@16, (-(24174))@16 <=s L0x7fffffffb59e, L0x7fffffffb59e <=s (24174)@16,
  (-(16562))@16 <=s L0x7fffffffb5be, L0x7fffffffb5be <=s (16562)@16, (-(16562))@16 <=s L0x7fffffffb5de, L0x7fffffffb5de <=s (16562)@16,
  (-(22524))@16 <=s L0x7fffffffb5e0, L0x7fffffffb5e0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb600, L0x7fffffffb600 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb620, L0x7fffffffb620 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb640, L0x7fffffffb640 <=s (16668)@16,
  (-(24571))@16 <=s L0x7fffffffb660, L0x7fffffffb660 <=s (24571)@16, (-(24571))@16 <=s L0x7fffffffb680, L0x7fffffffb680 <=s (24571)@16,
  (-(16497))@16 <=s L0x7fffffffb6a0, L0x7fffffffb6a0 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6c0, L0x7fffffffb6c0 <=s (16497)@16,
  (-(24151))@16 <=s L0x7fffffffb5e2, L0x7fffffffb5e2 <=s (24151)@16, (-(24151))@16 <=s L0x7fffffffb602, L0x7fffffffb602 <=s (24151)@16,
  (-(17802))@16 <=s L0x7fffffffb622, L0x7fffffffb622 <=s (17802)@16, (-(17802))@16 <=s L0x7fffffffb642, L0x7fffffffb642 <=s (17802)@16,
  (-(24467))@16 <=s L0x7fffffffb662, L0x7fffffffb662 <=s (24467)@16, (-(24467))@16 <=s L0x7fffffffb682, L0x7fffffffb682 <=s (24467)@16,
  (-(17677))@16 <=s L0x7fffffffb6a2, L0x7fffffffb6a2 <=s (17677)@16, (-(17677))@16 <=s L0x7fffffffb6c2, L0x7fffffffb6c2 <=s (17677)@16,
  (-(23769))@16 <=s L0x7fffffffb5e4, L0x7fffffffb5e4 <=s (23769)@16, (-(23769))@16 <=s L0x7fffffffb604, L0x7fffffffb604 <=s (23769)@16,
  (-(17280))@16 <=s L0x7fffffffb624, L0x7fffffffb624 <=s (17280)@16, (-(17280))@16 <=s L0x7fffffffb644, L0x7fffffffb644 <=s (17280)@16,
  (-(25185))@16 <=s L0x7fffffffb664, L0x7fffffffb664 <=s (25185)@16, (-(25185))@16 <=s L0x7fffffffb684, L0x7fffffffb684 <=s (25185)@16,
  (-(17739))@16 <=s L0x7fffffffb6a4, L0x7fffffffb6a4 <=s (17739)@16, (-(17739))@16 <=s L0x7fffffffb6c4, L0x7fffffffb6c4 <=s (17739)@16,
  (-(22296))@16 <=s L0x7fffffffb5e6, L0x7fffffffb5e6 <=s (22296)@16, (-(22296))@16 <=s L0x7fffffffb606, L0x7fffffffb606 <=s (22296)@16,
  (-(16530))@16 <=s L0x7fffffffb626, L0x7fffffffb626 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb646, L0x7fffffffb646 <=s (16530)@16,
  (-(24175))@16 <=s L0x7fffffffb666, L0x7fffffffb666 <=s (24175)@16, (-(24175))@16 <=s L0x7fffffffb686, L0x7fffffffb686 <=s (24175)@16,
  (-(16550))@16 <=s L0x7fffffffb6a6, L0x7fffffffb6a6 <=s (16550)@16, (-(16550))@16 <=s L0x7fffffffb6c6, L0x7fffffffb6c6 <=s (16550)@16,
  (-(22524))@16 <=s L0x7fffffffb5e8, L0x7fffffffb5e8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb608, L0x7fffffffb608 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb628, L0x7fffffffb628 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb648, L0x7fffffffb648 <=s (16668)@16,
  (-(24595))@16 <=s L0x7fffffffb668, L0x7fffffffb668 <=s (24595)@16, (-(24595))@16 <=s L0x7fffffffb688, L0x7fffffffb688 <=s (24595)@16,
  (-(16497))@16 <=s L0x7fffffffb6a8, L0x7fffffffb6a8 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6c8, L0x7fffffffb6c8 <=s (16497)@16,
  (-(24094))@16 <=s L0x7fffffffb5ea, L0x7fffffffb5ea <=s (24094)@16, (-(24094))@16 <=s L0x7fffffffb60a, L0x7fffffffb60a <=s (24094)@16,
  (-(17795))@16 <=s L0x7fffffffb62a, L0x7fffffffb62a <=s (17795)@16, (-(17795))@16 <=s L0x7fffffffb64a, L0x7fffffffb64a <=s (17795)@16,
  (-(24481))@16 <=s L0x7fffffffb66a, L0x7fffffffb66a <=s (24481)@16, (-(24481))@16 <=s L0x7fffffffb68a, L0x7fffffffb68a <=s (24481)@16,
  (-(17642))@16 <=s L0x7fffffffb6aa, L0x7fffffffb6aa <=s (17642)@16, (-(17642))@16 <=s L0x7fffffffb6ca, L0x7fffffffb6ca <=s (17642)@16,
  (-(23738))@16 <=s L0x7fffffffb5ec, L0x7fffffffb5ec <=s (23738)@16, (-(23738))@16 <=s L0x7fffffffb60c, L0x7fffffffb60c <=s (23738)@16,
  (-(17255))@16 <=s L0x7fffffffb62c, L0x7fffffffb62c <=s (17255)@16, (-(17255))@16 <=s L0x7fffffffb64c, L0x7fffffffb64c <=s (17255)@16,
  (-(25154))@16 <=s L0x7fffffffb66c, L0x7fffffffb66c <=s (25154)@16, (-(25154))@16 <=s L0x7fffffffb68c, L0x7fffffffb68c <=s (25154)@16,
  (-(17723))@16 <=s L0x7fffffffb6ac, L0x7fffffffb6ac <=s (17723)@16, (-(17723))@16 <=s L0x7fffffffb6cc, L0x7fffffffb6cc <=s (17723)@16,
  (-(22299))@16 <=s L0x7fffffffb5ee, L0x7fffffffb5ee <=s (22299)@16, (-(22299))@16 <=s L0x7fffffffb60e, L0x7fffffffb60e <=s (22299)@16,
  (-(16530))@16 <=s L0x7fffffffb62e, L0x7fffffffb62e <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb64e, L0x7fffffffb64e <=s (16530)@16,
  (-(24117))@16 <=s L0x7fffffffb66e, L0x7fffffffb66e <=s (24117)@16, (-(24117))@16 <=s L0x7fffffffb68e, L0x7fffffffb68e <=s (24117)@16,
  (-(16544))@16 <=s L0x7fffffffb6ae, L0x7fffffffb6ae <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb6ce, L0x7fffffffb6ce <=s (16544)@16,
  (-(22524))@16 <=s L0x7fffffffb5f0, L0x7fffffffb5f0 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb610, L0x7fffffffb610 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb630, L0x7fffffffb630 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb650, L0x7fffffffb650 <=s (16668)@16,
  (-(24531))@16 <=s L0x7fffffffb670, L0x7fffffffb670 <=s (24531)@16, (-(24531))@16 <=s L0x7fffffffb690, L0x7fffffffb690 <=s (24531)@16,
  (-(16497))@16 <=s L0x7fffffffb6b0, L0x7fffffffb6b0 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6d0, L0x7fffffffb6d0 <=s (16497)@16,
  (-(24118))@16 <=s L0x7fffffffb5f2, L0x7fffffffb5f2 <=s (24118)@16, (-(24118))@16 <=s L0x7fffffffb612, L0x7fffffffb612 <=s (24118)@16,
  (-(17794))@16 <=s L0x7fffffffb632, L0x7fffffffb632 <=s (17794)@16, (-(17794))@16 <=s L0x7fffffffb652, L0x7fffffffb652 <=s (17794)@16,
  (-(24361))@16 <=s L0x7fffffffb672, L0x7fffffffb672 <=s (24361)@16, (-(24361))@16 <=s L0x7fffffffb692, L0x7fffffffb692 <=s (24361)@16,
  (-(17642))@16 <=s L0x7fffffffb6b2, L0x7fffffffb6b2 <=s (17642)@16, (-(17642))@16 <=s L0x7fffffffb6d2, L0x7fffffffb6d2 <=s (17642)@16,
  (-(23731))@16 <=s L0x7fffffffb5f4, L0x7fffffffb5f4 <=s (23731)@16, (-(23731))@16 <=s L0x7fffffffb614, L0x7fffffffb614 <=s (23731)@16,
  (-(17255))@16 <=s L0x7fffffffb634, L0x7fffffffb634 <=s (17255)@16, (-(17255))@16 <=s L0x7fffffffb654, L0x7fffffffb654 <=s (17255)@16,
  (-(25093))@16 <=s L0x7fffffffb674, L0x7fffffffb674 <=s (25093)@16, (-(25093))@16 <=s L0x7fffffffb694, L0x7fffffffb694 <=s (25093)@16,
  (-(17723))@16 <=s L0x7fffffffb6b4, L0x7fffffffb6b4 <=s (17723)@16, (-(17723))@16 <=s L0x7fffffffb6d4, L0x7fffffffb6d4 <=s (17723)@16,
  (-(22291))@16 <=s L0x7fffffffb5f6, L0x7fffffffb5f6 <=s (22291)@16, (-(22291))@16 <=s L0x7fffffffb616, L0x7fffffffb616 <=s (22291)@16,
  (-(16530))@16 <=s L0x7fffffffb636, L0x7fffffffb636 <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb656, L0x7fffffffb656 <=s (16530)@16,
  (-(24111))@16 <=s L0x7fffffffb676, L0x7fffffffb676 <=s (24111)@16, (-(24111))@16 <=s L0x7fffffffb696, L0x7fffffffb696 <=s (24111)@16,
  (-(16544))@16 <=s L0x7fffffffb6b6, L0x7fffffffb6b6 <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb6d6, L0x7fffffffb6d6 <=s (16544)@16,
  (-(22524))@16 <=s L0x7fffffffb5f8, L0x7fffffffb5f8 <=s (22524)@16, (-(22524))@16 <=s L0x7fffffffb618, L0x7fffffffb618 <=s (22524)@16,
  (-(16668))@16 <=s L0x7fffffffb638, L0x7fffffffb638 <=s (16668)@16, (-(16668))@16 <=s L0x7fffffffb658, L0x7fffffffb658 <=s (16668)@16,
  (-(24523))@16 <=s L0x7fffffffb678, L0x7fffffffb678 <=s (24523)@16, (-(24523))@16 <=s L0x7fffffffb698, L0x7fffffffb698 <=s (24523)@16,
  (-(16497))@16 <=s L0x7fffffffb6b8, L0x7fffffffb6b8 <=s (16497)@16, (-(16497))@16 <=s L0x7fffffffb6d8, L0x7fffffffb6d8 <=s (16497)@16,
  (-(24098))@16 <=s L0x7fffffffb5fa, L0x7fffffffb5fa <=s (24098)@16, (-(24098))@16 <=s L0x7fffffffb61a, L0x7fffffffb61a <=s (24098)@16,
  (-(17799))@16 <=s L0x7fffffffb63a, L0x7fffffffb63a <=s (17799)@16, (-(17799))@16 <=s L0x7fffffffb65a, L0x7fffffffb65a <=s (17799)@16,
  (-(24444))@16 <=s L0x7fffffffb67a, L0x7fffffffb67a <=s (24444)@16, (-(24444))@16 <=s L0x7fffffffb69a, L0x7fffffffb69a <=s (24444)@16,
  (-(17676))@16 <=s L0x7fffffffb6ba, L0x7fffffffb6ba <=s (17676)@16, (-(17676))@16 <=s L0x7fffffffb6da, L0x7fffffffb6da <=s (17676)@16,
  (-(23744))@16 <=s L0x7fffffffb5fc, L0x7fffffffb5fc <=s (23744)@16, (-(23744))@16 <=s L0x7fffffffb61c, L0x7fffffffb61c <=s (23744)@16,
  (-(17280))@16 <=s L0x7fffffffb63c, L0x7fffffffb63c <=s (17280)@16, (-(17280))@16 <=s L0x7fffffffb65c, L0x7fffffffb65c <=s (17280)@16,
  (-(25085))@16 <=s L0x7fffffffb67c, L0x7fffffffb67c <=s (25085)@16, (-(25085))@16 <=s L0x7fffffffb69c, L0x7fffffffb69c <=s (25085)@16,
  (-(17739))@16 <=s L0x7fffffffb6bc, L0x7fffffffb6bc <=s (17739)@16, (-(17739))@16 <=s L0x7fffffffb6dc, L0x7fffffffb6dc <=s (17739)@16,
  (-(22286))@16 <=s L0x7fffffffb5fe, L0x7fffffffb5fe <=s (22286)@16, (-(22286))@16 <=s L0x7fffffffb61e, L0x7fffffffb61e <=s (22286)@16,
  (-(16530))@16 <=s L0x7fffffffb63e, L0x7fffffffb63e <=s (16530)@16, (-(16530))@16 <=s L0x7fffffffb65e, L0x7fffffffb65e <=s (16530)@16,
  (-(24052))@16 <=s L0x7fffffffb67e, L0x7fffffffb67e <=s (24052)@16, (-(24052))@16 <=s L0x7fffffffb69e, L0x7fffffffb69e <=s (24052)@16,
  (-(16544))@16 <=s L0x7fffffffb6be, L0x7fffffffb6be <=s (16544)@16, (-(16544))@16 <=s L0x7fffffffb6de, L0x7fffffffb6de <=s (16544)@16
] prove with [cuts [7, 15]]
}
