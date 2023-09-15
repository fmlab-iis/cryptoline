(*
quine: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint vcl_test_sabermul_nttmul_poly_ntt.vcl
Parsing Cryptoline file:                [OK]            0.119757 seconds
Checking well-formedness:               [OK]            0.040091 seconds
Transforming to SSA form:               [OK]            0.037445 seconds
Rewriting assignments:                  [OK]            0.050881 seconds
Verifying program safety:
         Overall                        [OK]            273.505894 seconds
Verifying range assertions:             [OK]            108.263550 seconds
Verifying range specification:          [OK]            360.720152 seconds
Rewriting value-preserved casting:      [OK]            0.000846 seconds
Verifying algebraic assertions:         [OK]            0.010871 seconds
Verifying algebraic specification:      [OK]            99.979116 seconds
Verification result:                    [OK]            842.748652 seconds

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

mov L0x555555560700 (  7681)@sint16; mov L0x555555560702 (  7681)@sint16; mov L0x555555560704 (  7681)@sint16; mov L0x555555560706 (  7681)@sint16;
mov L0x555555560708 (  7681)@sint16; mov L0x55555556070a (  7681)@sint16; mov L0x55555556070c (  7681)@sint16; mov L0x55555556070e (  7681)@sint16;
mov L0x555555560710 (  7681)@sint16; mov L0x555555560712 (  7681)@sint16; mov L0x555555560714 (  7681)@sint16; mov L0x555555560716 (  7681)@sint16;
mov L0x555555560718 (  7681)@sint16; mov L0x55555556071a (  7681)@sint16; mov L0x55555556071c (  7681)@sint16; mov L0x55555556071e (  7681)@sint16;

(* _16XMONT_PINV *)

mov L0x555555560780 (    -9)@sint16; mov L0x555555560782 (    -9)@sint16; mov L0x555555560784 (    -9)@sint16; mov L0x555555560786 (    -9)@sint16;
mov L0x555555560788 (    -9)@sint16; mov L0x55555556078a (    -9)@sint16; mov L0x55555556078c (    -9)@sint16; mov L0x55555556078e (    -9)@sint16;
mov L0x555555560790 (    -9)@sint16; mov L0x555555560792 (    -9)@sint16; mov L0x555555560794 (    -9)@sint16; mov L0x555555560796 (    -9)@sint16;
mov L0x555555560798 (    -9)@sint16; mov L0x55555556079a (    -9)@sint16; mov L0x55555556079c (    -9)@sint16; mov L0x55555556079e (    -9)@sint16;

(* _16XMONT *)

mov L0x5555555607a0 ( -3593)@sint16; mov L0x5555555607a2 ( -3593)@sint16; mov L0x5555555607a4 ( -3593)@sint16; mov L0x5555555607a6 ( -3593)@sint16;
mov L0x5555555607a8 ( -3593)@sint16; mov L0x5555555607aa ( -3593)@sint16; mov L0x5555555607ac ( -3593)@sint16; mov L0x5555555607ae ( -3593)@sint16;
mov L0x5555555607b0 ( -3593)@sint16; mov L0x5555555607b2 ( -3593)@sint16; mov L0x5555555607b4 ( -3593)@sint16; mov L0x5555555607b6 ( -3593)@sint16;
mov L0x5555555607b8 ( -3593)@sint16; mov L0x5555555607ba ( -3593)@sint16; mov L0x5555555607bc ( -3593)@sint16; mov L0x5555555607be ( -3593)@sint16;

(* _ZETAS *)

mov L0x555555560800 ( 28865)@sint16; mov L0x555555560802 ( 28865)@sint16; mov L0x555555560804 ( 28865)@sint16; mov L0x555555560806 ( 28865)@sint16;
mov L0x555555560808 ( 28865)@sint16; mov L0x55555556080a ( 28865)@sint16; mov L0x55555556080c ( 28865)@sint16; mov L0x55555556080e ( 28865)@sint16;
mov L0x555555560810 ( 28865)@sint16; mov L0x555555560812 ( 28865)@sint16; mov L0x555555560814 ( 28865)@sint16; mov L0x555555560816 ( 28865)@sint16;
mov L0x555555560818 ( 28865)@sint16; mov L0x55555556081a ( 28865)@sint16; mov L0x55555556081c ( 28865)@sint16; mov L0x55555556081e ( 28865)@sint16;
mov L0x555555560820 (  3777)@sint16; mov L0x555555560822 (  3777)@sint16; mov L0x555555560824 (  3777)@sint16; mov L0x555555560826 (  3777)@sint16;
mov L0x555555560828 (  3777)@sint16; mov L0x55555556082a (  3777)@sint16; mov L0x55555556082c (  3777)@sint16; mov L0x55555556082e (  3777)@sint16;
mov L0x555555560830 (  3777)@sint16; mov L0x555555560832 (  3777)@sint16; mov L0x555555560834 (  3777)@sint16; mov L0x555555560836 (  3777)@sint16;
mov L0x555555560838 (  3777)@sint16; mov L0x55555556083a (  3777)@sint16; mov L0x55555556083c (  3777)@sint16; mov L0x55555556083e (  3777)@sint16;
mov L0x555555560840 (-10350)@sint16; mov L0x555555560842 (-10350)@sint16; mov L0x555555560844 (-10350)@sint16; mov L0x555555560846 (-10350)@sint16;
mov L0x555555560848 (-10350)@sint16; mov L0x55555556084a (-10350)@sint16; mov L0x55555556084c (-10350)@sint16; mov L0x55555556084e (-10350)@sint16;
mov L0x555555560850 (-10350)@sint16; mov L0x555555560852 (-10350)@sint16; mov L0x555555560854 (-10350)@sint16; mov L0x555555560856 (-10350)@sint16;
mov L0x555555560858 (-10350)@sint16; mov L0x55555556085a (-10350)@sint16; mov L0x55555556085c (-10350)@sint16; mov L0x55555556085e (-10350)@sint16;
mov L0x555555560860 ( -3182)@sint16; mov L0x555555560862 ( -3182)@sint16; mov L0x555555560864 ( -3182)@sint16; mov L0x555555560866 ( -3182)@sint16;
mov L0x555555560868 ( -3182)@sint16; mov L0x55555556086a ( -3182)@sint16; mov L0x55555556086c ( -3182)@sint16; mov L0x55555556086e ( -3182)@sint16;
mov L0x555555560870 ( -3182)@sint16; mov L0x555555560872 ( -3182)@sint16; mov L0x555555560874 ( -3182)@sint16; mov L0x555555560876 ( -3182)@sint16;
mov L0x555555560878 ( -3182)@sint16; mov L0x55555556087a ( -3182)@sint16; mov L0x55555556087c ( -3182)@sint16; mov L0x55555556087e ( -3182)@sint16;
mov L0x555555560880 (  4496)@sint16; mov L0x555555560882 (  4496)@sint16; mov L0x555555560884 (  4496)@sint16; mov L0x555555560886 (  4496)@sint16;
mov L0x555555560888 (  4496)@sint16; mov L0x55555556088a (  4496)@sint16; mov L0x55555556088c (  4496)@sint16; mov L0x55555556088e (  4496)@sint16;
mov L0x555555560890 ( -7244)@sint16; mov L0x555555560892 ( -7244)@sint16; mov L0x555555560894 ( -7244)@sint16; mov L0x555555560896 ( -7244)@sint16;
mov L0x555555560898 ( -7244)@sint16; mov L0x55555556089a ( -7244)@sint16; mov L0x55555556089c ( -7244)@sint16; mov L0x55555556089e ( -7244)@sint16;
mov L0x5555555608a0 ( -3696)@sint16; mov L0x5555555608a2 ( -3696)@sint16; mov L0x5555555608a4 ( -3696)@sint16; mov L0x5555555608a6 ( -3696)@sint16;
mov L0x5555555608a8 ( -3696)@sint16; mov L0x5555555608aa ( -3696)@sint16; mov L0x5555555608ac ( -3696)@sint16; mov L0x5555555608ae ( -3696)@sint16;
mov L0x5555555608b0 ( -1100)@sint16; mov L0x5555555608b2 ( -1100)@sint16; mov L0x5555555608b4 ( -1100)@sint16; mov L0x5555555608b6 ( -1100)@sint16;
mov L0x5555555608b8 ( -1100)@sint16; mov L0x5555555608ba ( -1100)@sint16; mov L0x5555555608bc ( -1100)@sint16; mov L0x5555555608be ( -1100)@sint16;
mov L0x5555555608c0 ( 16425)@sint16; mov L0x5555555608c2 ( 16425)@sint16; mov L0x5555555608c4 ( 16425)@sint16; mov L0x5555555608c6 ( 16425)@sint16;
mov L0x5555555608c8 ( 16425)@sint16; mov L0x5555555608ca ( 16425)@sint16; mov L0x5555555608cc ( 16425)@sint16; mov L0x5555555608ce ( 16425)@sint16;
mov L0x5555555608d0 ( 16425)@sint16; mov L0x5555555608d2 ( 16425)@sint16; mov L0x5555555608d4 ( 16425)@sint16; mov L0x5555555608d6 ( 16425)@sint16;
mov L0x5555555608d8 ( 16425)@sint16; mov L0x5555555608da ( 16425)@sint16; mov L0x5555555608dc ( 16425)@sint16; mov L0x5555555608de ( 16425)@sint16;
mov L0x5555555608e0 (  3625)@sint16; mov L0x5555555608e2 (  3625)@sint16; mov L0x5555555608e4 (  3625)@sint16; mov L0x5555555608e6 (  3625)@sint16;
mov L0x5555555608e8 (  3625)@sint16; mov L0x5555555608ea (  3625)@sint16; mov L0x5555555608ec (  3625)@sint16; mov L0x5555555608ee (  3625)@sint16;
mov L0x5555555608f0 (  3625)@sint16; mov L0x5555555608f2 (  3625)@sint16; mov L0x5555555608f4 (  3625)@sint16; mov L0x5555555608f6 (  3625)@sint16;
mov L0x5555555608f8 (  3625)@sint16; mov L0x5555555608fa (  3625)@sint16; mov L0x5555555608fc (  3625)@sint16; mov L0x5555555608fe (  3625)@sint16;
mov L0x555555560900 ( 14744)@sint16; mov L0x555555560902 ( 14744)@sint16; mov L0x555555560904 ( 14744)@sint16; mov L0x555555560906 ( 14744)@sint16;
mov L0x555555560908 ( 14744)@sint16; mov L0x55555556090a ( 14744)@sint16; mov L0x55555556090c ( 14744)@sint16; mov L0x55555556090e ( 14744)@sint16;
mov L0x555555560910 ( -4974)@sint16; mov L0x555555560912 ( -4974)@sint16; mov L0x555555560914 ( -4974)@sint16; mov L0x555555560916 ( -4974)@sint16;
mov L0x555555560918 ( -4974)@sint16; mov L0x55555556091a ( -4974)@sint16; mov L0x55555556091c ( -4974)@sint16; mov L0x55555556091e ( -4974)@sint16;
mov L0x555555560920 (  2456)@sint16; mov L0x555555560922 (  2456)@sint16; mov L0x555555560924 (  2456)@sint16; mov L0x555555560926 (  2456)@sint16;
mov L0x555555560928 (  2456)@sint16; mov L0x55555556092a (  2456)@sint16; mov L0x55555556092c (  2456)@sint16; mov L0x55555556092e (  2456)@sint16;
mov L0x555555560930 (  2194)@sint16; mov L0x555555560932 (  2194)@sint16; mov L0x555555560934 (  2194)@sint16; mov L0x555555560936 (  2194)@sint16;
mov L0x555555560938 (  2194)@sint16; mov L0x55555556093a (  2194)@sint16; mov L0x55555556093c (  2194)@sint16; mov L0x55555556093e (  2194)@sint16;

(* _TWIST32 *)

mov L0x555555560940 (    -9)@sint16; mov L0x555555560942 (  -529)@sint16; mov L0x555555560944 ( 32738)@sint16; mov L0x555555560946 ( -1851)@sint16;
mov L0x555555560948 (    -9)@sint16; mov L0x55555556094a ( 29394)@sint16; mov L0x55555556094c ( -7508)@sint16; mov L0x55555556094e (-20435)@sint16;
mov L0x555555560950 (    -9)@sint16; mov L0x555555560952 ( 26288)@sint16; mov L0x555555560954 (  9855)@sint16; mov L0x555555560956 (-19215)@sint16;
mov L0x555555560958 (    -9)@sint16; mov L0x55555556095a ( 16006)@sint16; mov L0x55555556095c (-12611)@sint16; mov L0x55555556095e (  -964)@sint16;
mov L0x555555560960 ( -3593)@sint16; mov L0x555555560962 (   -17)@sint16; mov L0x555555560964 ( -1054)@sint16; mov L0x555555560966 (  3781)@sint16;
mov L0x555555560968 ( -3593)@sint16; mov L0x55555556096a (  3794)@sint16; mov L0x55555556096c (  2732)@sint16; mov L0x55555556096e ( -2515)@sint16;
mov L0x555555560970 ( -3593)@sint16; mov L0x555555560972 (  1712)@sint16; mov L0x555555560974 (  2175)@sint16; mov L0x555555560976 ( -3343)@sint16;
mov L0x555555560978 ( -3593)@sint16; mov L0x55555556097a ( -3450)@sint16; mov L0x55555556097c ( -2883)@sint16; mov L0x55555556097e (  1084)@sint16;
mov L0x555555560980 ( 16279)@sint16; mov L0x555555560982 ( 26288)@sint16; mov L0x555555560984 ( -8558)@sint16; mov L0x555555560986 ( -6297)@sint16;
mov L0x555555560988 ( 11783)@sint16; mov L0x55555556098a (-25648)@sint16; mov L0x55555556098c ( 14351)@sint16; mov L0x55555556098e (-25733)@sint16;
mov L0x555555560990 ( 21066)@sint16; mov L0x555555560992 (-23882)@sint16; mov L0x555555560994 (-17440)@sint16; mov L0x555555560996 ( -7304)@sint16;
mov L0x555555560998 (-26279)@sint16; mov L0x55555556099a ( 16791)@sint16; mov L0x55555556099c ( 22124)@sint16; mov L0x55555556099e (-20435)@sint16;
mov L0x5555555609a0 ( -3689)@sint16; mov L0x5555555609a2 (  1712)@sint16; mov L0x5555555609a4 ( -1390)@sint16; mov L0x5555555609a6 ( -1689)@sint16;
mov L0x5555555609a8 (     7)@sint16; mov L0x5555555609aa ( -1072)@sint16; mov L0x5555555609ac ( -1521)@sint16; mov L0x5555555609ae (  1403)@sint16;
mov L0x5555555609b0 (  -438)@sint16; mov L0x5555555609b2 ( -2378)@sint16; mov L0x5555555609b4 ( -1056)@sint16; mov L0x5555555609b6 ( -3208)@sint16;
mov L0x5555555609b8 (  1881)@sint16; mov L0x5555555609ba ( -3177)@sint16; mov L0x5555555609bc (  -404)@sint16; mov L0x5555555609be ( -2515)@sint16;
mov L0x5555555609c0 (  2816)@sint16; mov L0x5555555609c2 (-22039)@sint16; mov L0x5555555609c4 (  9855)@sint16; mov L0x5555555609c6 ( 21168)@sint16;
mov L0x5555555609c8 (-19394)@sint16; mov L0x5555555609ca ( 30255)@sint16; mov L0x5555555609cc (-27132)@sint16; mov L0x5555555609ce ( 17013)@sint16;
mov L0x5555555609d0 ( 23489)@sint16; mov L0x5555555609d2 (-18506)@sint16; mov L0x5555555609d4 (  1869)@sint16; mov L0x5555555609d6 ( 10145)@sint16;
mov L0x5555555609d8 ( -3114)@sint16; mov L0x5555555609da (  9650)@sint16; mov L0x5555555609dc (-15358)@sint16; mov L0x5555555609de (-24232)@sint16;
mov L0x5555555609e0 (  2816)@sint16; mov L0x5555555609e2 ( -2071)@sint16; mov L0x5555555609e4 (  2175)@sint16; mov L0x5555555609e6 ( -3408)@sint16;
mov L0x5555555609e8 ( -1986)@sint16; mov L0x5555555609ea ( -2001)@sint16; mov L0x5555555609ec (  3588)@sint16; mov L0x5555555609ee ( -1931)@sint16;
mov L0x5555555609f0 ( -1599)@sint16; mov L0x5555555609f2 (  2998)@sint16; mov L0x5555555609f4 (  3405)@sint16; mov L0x5555555609f6 (  1441)@sint16;
mov L0x5555555609f8 (  2006)@sint16; mov L0x5555555609fa (   434)@sint16; mov L0x5555555609fc (     2)@sint16; mov L0x5555555609fe ( -3752)@sint16;
mov L0x555555560a00 (  1724)@sint16; mov L0x555555560a02 (-24214)@sint16; mov L0x555555560a04 (  6032)@sint16; mov L0x555555560a06 (-19215)@sint16;
mov L0x555555560a08 (-21467)@sint16; mov L0x555555560a0a ( 29453)@sint16; mov L0x555555560a0c (-16655)@sint16; mov L0x555555560a0e ( 32124)@sint16;
mov L0x555555560a10 (  4505)@sint16; mov L0x555555560a12 ( 13686)@sint16; mov L0x555555560a14 (-25946)@sint16; mov L0x555555560a16 (-12790)@sint16;
mov L0x555555560a18 (-23668)@sint16; mov L0x555555560a1a (-31518)@sint16; mov L0x555555560a1c ( 14351)@sint16; mov L0x555555560a1e ( 12449)@sint16;
mov L0x555555560a20 (  3772)@sint16; mov L0x555555560a22 (  3434)@sint16; mov L0x555555560a24 ( -2160)@sint16; mov L0x555555560a26 ( -3343)@sint16;
mov L0x555555560a28 (   549)@sint16; mov L0x555555560a2a ( -1779)@sint16; mov L0x555555560a2c (  -783)@sint16; mov L0x555555560a2e (  1404)@sint16;
mov L0x555555560a30 (  -103)@sint16; mov L0x555555560a32 (  2422)@sint16; mov L0x555555560a34 (  3750)@sint16; mov L0x555555560a36 ( -1526)@sint16;
mov L0x555555560a38 (  2956)@sint16; mov L0x555555560a3a (   226)@sint16; mov L0x555555560a3c ( -1521)@sint16; mov L0x555555560a3e (  3745)@sint16;
mov L0x555555560a40 (-11655)@sint16; mov L0x555555560a42 ( -1715)@sint16; mov L0x555555560a44 ( 24743)@sint16; mov L0x555555560a46 ( 26766)@sint16;
mov L0x555555560a48 ( 23754)@sint16; mov L0x555555560a4a ( 22943)@sint16; mov L0x555555560a4c ( -2722)@sint16; mov L0x555555560a4e (  4880)@sint16;
mov L0x555555560a50 ( 18242)@sint16; mov L0x555555560a52 ( 26621)@sint16; mov L0x555555560a54 (-32329)@sint16; mov L0x555555560a56 (-10333)@sint16;
mov L0x555555560a58 (-22593)@sint16; mov L0x555555560a5a (-16715)@sint16; mov L0x555555560a5c ( 30426)@sint16; mov L0x555555560a5e (  2858)@sint16;
mov L0x555555560a60 (   121)@sint16; mov L0x555555560a62 (  -179)@sint16; mov L0x555555560a64 ( -3417)@sint16; mov L0x555555560a66 (  3214)@sint16;
mov L0x555555560a68 (  2250)@sint16; mov L0x555555560a6a ( -1121)@sint16; mov L0x555555560a6c ( -1698)@sint16; mov L0x555555560a6e ( -3312)@sint16;
mov L0x555555560a70 (   834)@sint16; mov L0x555555560a72 (  3581)@sint16; mov L0x555555560a74 ( -3145)@sint16; mov L0x555555560a76 ( -3677)@sint16;
mov L0x555555560a78 (  2495)@sint16; mov L0x555555560a7a ( -2891)@sint16; mov L0x555555560a7c (   730)@sint16; mov L0x555555560a7e ( -2262)@sint16;
mov L0x555555560a80 ( 21066)@sint16; mov L0x555555560a82 ( -4624)@sint16; mov L0x555555560a84 (-24573)@sint16; mov L0x555555560a86 (-16186)@sint16;
mov L0x555555560a88 ( 29667)@sint16; mov L0x555555560a8a (-30597)@sint16; mov L0x555555560a8c ( 23225)@sint16; mov L0x555555560a8e ( 10333)@sint16;
mov L0x555555560a90 (-15998)@sint16; mov L0x555555560a92 (  6510)@sint16; mov L0x555555560a94 ( -3558)@sint16; mov L0x555555560a96 ( 17491)@sint16;
mov L0x555555560a98 ( 11792)@sint16; mov L0x555555560a9a ( 30255)@sint16; mov L0x555555560a9c ( -4693)@sint16; mov L0x555555560a9e ( 21723)@sint16;
mov L0x555555560aa0 (  -438)@sint16; mov L0x555555560aa2 (  3568)@sint16; mov L0x555555560aa4 ( -1533)@sint16; mov L0x555555560aa6 ( -2874)@sint16;
mov L0x555555560aa8 (  3555)@sint16; mov L0x555555560aaa ( -3461)@sint16; mov L0x555555560aac (  2233)@sint16; mov L0x555555560aae (  3677)@sint16;
mov L0x555555560ab0 (  -638)@sint16; mov L0x555555560ab2 (  -658)@sint16; mov L0x555555560ab4 (  -486)@sint16; mov L0x555555560ab6 (  -429)@sint16;
mov L0x555555560ab8 (  3600)@sint16; mov L0x555555560aba ( -2001)@sint16; mov L0x555555560abc ( -2133)@sint16; mov L0x555555560abe (  -293)@sint16;
mov L0x555555560ac0 (-20469)@sint16; mov L0x555555560ac2 (-23882)@sint16; mov L0x555555560ac4 ( 26663)@sint16; mov L0x555555560ac6 ( 14718)@sint16;
mov L0x555555560ac8 ( -9488)@sint16; mov L0x555555560aca (-16885)@sint16; mov L0x555555560acc (-26220)@sint16; mov L0x555555560ace ( 17636)@sint16;
mov L0x555555560ad0 (-19351)@sint16; mov L0x555555560ad2 (-17082)@sint16; mov L0x555555560ad4 (  2722)@sint16; mov L0x555555560ad6 (  2807)@sint16;
mov L0x555555560ad8 ( 10972)@sint16; mov L0x555555560ada ( -5990)@sint16; mov L0x555555560adc ( 29871)@sint16; mov L0x555555560ade ( -5299)@sint16;
mov L0x555555560ae0 ( -1525)@sint16; mov L0x555555560ae2 ( -2378)@sint16; mov L0x555555560ae4 ( -1497)@sint16; mov L0x555555560ae6 (  -642)@sint16;
mov L0x555555560ae8 ( -1296)@sint16; mov L0x555555560aea (  2059)@sint16; mov L0x555555560aec ( -3692)@sint16; mov L0x555555560aee (  -796)@sint16;
mov L0x555555560af0 (   617)@sint16; mov L0x555555560af2 ( -3770)@sint16; mov L0x555555560af4 (  1698)@sint16; mov L0x555555560af6 (  -777)@sint16;
mov L0x555555560af8 ( -3364)@sint16; mov L0x555555560afa ( -2918)@sint16; mov L0x555555560afc ( -2385)@sint16; mov L0x555555560afe ( -3763)@sint16;
mov L0x555555560b00 ( -4983)@sint16; mov L0x555555560b02 ( 18745)@sint16; mov L0x555555560b04 (-17440)@sint16; mov L0x555555560b06 (-32695)@sint16;
mov L0x555555560b08 ( -4505)@sint16; mov L0x555555560b0a (-12261)@sint16; mov L0x555555560b0c (-32252)@sint16; mov L0x555555560b0e ( 23933)@sint16;
mov L0x555555560b10 (  2073)@sint16; mov L0x555555560b12 (-30938)@sint16; mov L0x555555560b14 ( 30136)@sint16; mov L0x555555560b16 ( 16083)@sint16;
mov L0x555555560b18 (-21467)@sint16; mov L0x555555560b1a (-32414)@sint16; mov L0x555555560b1c ( -8908)@sint16; mov L0x555555560b1e (  -947)@sint16;
mov L0x555555560b20 ( -1399)@sint16; mov L0x555555560b22 ( -2247)@sint16; mov L0x555555560b24 ( -1056)@sint16; mov L0x555555560b26 (  3657)@sint16;
mov L0x555555560b28 (   103)@sint16; mov L0x555555560b2a ( -1509)@sint16; mov L0x555555560b2c ( -1532)@sint16; mov L0x555555560b2e (   893)@sint16;
mov L0x555555560b30 ( -2535)@sint16; mov L0x555555560b32 ( -1242)@sint16; mov L0x555555560b34 (  1464)@sint16; mov L0x555555560b36 ( -1837)@sint16;
mov L0x555555560b38 (   549)@sint16; mov L0x555555560b3a (  -670)@sint16; mov L0x555555560b3c ( -2764)@sint16; mov L0x555555560b3e (   589)@sint16;
mov L0x555555560b40 (    -9)@sint16; mov L0x555555560b42 ( -1851)@sint16; mov L0x555555560b44 ( -8558)@sint16; mov L0x555555560b46 (-22039)@sint16;
mov L0x555555560b48 (    -9)@sint16; mov L0x555555560b4a (  4573)@sint16; mov L0x555555560b4c (-26441)@sint16; mov L0x555555560b4e ( 16791)@sint16;
mov L0x555555560b50 (    -9)@sint16; mov L0x555555560b52 ( -6297)@sint16; mov L0x555555560b54 (  6032)@sint16; mov L0x555555560b56 ( -4624)@sint16;
mov L0x555555560b58 (    -9)@sint16; mov L0x555555560b5a ( -9513)@sint16; mov L0x555555560b5c (  9360)@sint16; mov L0x555555560b5e ( 16006)@sint16;
mov L0x555555560b60 ( -3593)@sint16; mov L0x555555560b62 (  3781)@sint16; mov L0x555555560b64 ( -1390)@sint16; mov L0x555555560b66 ( -2071)@sint16;
mov L0x555555560b68 ( -3593)@sint16; mov L0x555555560b6a ( -2083)@sint16; mov L0x555555560b6c (  2743)@sint16; mov L0x555555560b6e ( -3177)@sint16;
mov L0x555555560b70 ( -3593)@sint16; mov L0x555555560b72 ( -1689)@sint16; mov L0x555555560b74 ( -2160)@sint16; mov L0x555555560b76 (  3568)@sint16;
mov L0x555555560b78 ( -3593)@sint16; mov L0x555555560b7a (  3287)@sint16; mov L0x555555560b7c (  1168)@sint16; mov L0x555555560b7e ( -3450)@sint16;
mov L0x555555560b80 (  1724)@sint16; mov L0x555555560b82 (-19215)@sint16; mov L0x555555560b84 ( 24743)@sint16; mov L0x555555560b86 ( -4624)@sint16;
mov L0x555555560b88 (-21766)@sint16; mov L0x555555560b8a (  1007)@sint16; mov L0x555555560b8c (-15358)@sint16; mov L0x555555560b8e (-25648)@sint16;
mov L0x555555560b90 ( -4983)@sint16; mov L0x555555560b92 ( -7304)@sint16; mov L0x555555560b94 (-16092)@sint16; mov L0x555555560b96 (-13711)@sint16;
mov L0x555555560b98 ( 21399)@sint16; mov L0x555555560b9a (  4573)@sint16; mov L0x555555560b9c (-12611)@sint16; mov L0x555555560b9e ( 29394)@sint16;
mov L0x555555560ba0 (  3772)@sint16; mov L0x555555560ba2 ( -3343)@sint16; mov L0x555555560ba4 ( -3417)@sint16; mov L0x555555560ba6 (  3568)@sint16;
mov L0x555555560ba8 ( -2310)@sint16; mov L0x555555560baa (  1519)@sint16; mov L0x555555560bac (     2)@sint16; mov L0x555555560bae ( -1072)@sint16;
mov L0x555555560bb0 ( -1399)@sint16; mov L0x555555560bb2 ( -3208)@sint16; mov L0x555555560bb4 ( -1756)@sint16; mov L0x555555560bb6 (  2161)@sint16;
mov L0x555555560bb8 (  1431)@sint16; mov L0x555555560bba ( -2083)@sint16; mov L0x555555560bbc ( -2883)@sint16; mov L0x555555560bbe (  3794)@sint16;
mov L0x555555560bc0 (-20469)@sint16; mov L0x555555560bc2 ( 14718)@sint16; mov L0x555555560bc4 (-17440)@sint16; mov L0x555555560bc6 ( 16638)@sint16;
mov L0x555555560bc8 (-15307)@sint16; mov L0x555555560bca ( 12449)@sint16; mov L0x555555560bcc ( 12269)@sint16; mov L0x555555560bce (-22764)@sint16;
mov L0x555555560bd0 (-26382)@sint16; mov L0x555555560bd2 ( -5452)@sint16; mov L0x555555560bd4 (-25946)@sint16; mov L0x555555560bd6 (-11996)@sint16;
mov L0x555555560bd8 (  5759)@sint16; mov L0x555555560bda (  -964)@sint16; mov L0x555555560bdc (-26441)@sint16; mov L0x555555560bde (  9087)@sint16;
mov L0x555555560be0 ( -1525)@sint16; mov L0x555555560be2 (  -642)@sint16; mov L0x555555560be4 ( -1056)@sint16; mov L0x555555560be6 (  1278)@sint16;
mov L0x555555560be8 ( -1483)@sint16; mov L0x555555560bea (  3745)@sint16; mov L0x555555560bec ( -2579)@sint16; mov L0x555555560bee (  -236)@sint16;
mov L0x555555560bf0 ( -2830)@sint16; mov L0x555555560bf2 (   692)@sint16; mov L0x555555560bf4 (  3750)@sint16; mov L0x555555560bf6 (  2340)@sint16;
mov L0x555555560bf8 ( -1921)@sint16; mov L0x555555560bfa (  1084)@sint16; mov L0x555555560bfc (  2743)@sint16; mov L0x555555560bfe (  1407)@sint16;
mov L0x555555560c00 (  5930)@sint16; mov L0x555555560c02 (-23933)@sint16; mov L0x555555560c04 (-16092)@sint16; mov L0x555555560c06 (-18506)@sint16;
mov L0x555555560c08 ( 11792)@sint16; mov L0x555555560c0a (-28805)@sint16; mov L0x555555560c0c (-27132)@sint16; mov L0x555555560c0e ( -5990)@sint16;
mov L0x555555560c10 ( -5913)@sint16; mov L0x555555560c12 ( 27243)@sint16; mov L0x555555560c14 (-13933)@sint16; mov L0x555555560c16 (  6510)@sint16;
mov L0x555555560c18 (-26279)@sint16; mov L0x555555560c1a ( -6766)@sint16; mov L0x555555560c1c ( -7508)@sint16; mov L0x555555560c1e ( 16791)@sint16;
mov L0x555555560c20 (   810)@sint16; mov L0x555555560c22 (  -893)@sint16; mov L0x555555560c24 ( -1756)@sint16; mov L0x555555560c26 (  2998)@sint16;
mov L0x555555560c28 (  3600)@sint16; mov L0x555555560c2a ( -1669)@sint16; mov L0x555555560c2c (  3588)@sint16; mov L0x555555560c2e ( -2918)@sint16;
mov L0x555555560c30 ( -1305)@sint16; mov L0x555555560c32 ( -2965)@sint16; mov L0x555555560c34 (   915)@sint16; mov L0x555555560c36 (  -658)@sint16;
mov L0x555555560c38 (  1881)@sint16; mov L0x555555560c3a (   402)@sint16; mov L0x555555560c3c (  2732)@sint16; mov L0x555555560c3e ( -3177)@sint16;
mov L0x555555560c40 (-18191)@sint16; mov L0x555555560c42 (-15221)@sint16; mov L0x555555560c44 (-26262)@sint16; mov L0x555555560c46 (  2739)@sint16;
mov L0x555555560c48 (  -828)@sint16; mov L0x555555560c4a (-15145)@sint16; mov L0x555555560c4c ( -8908)@sint16; mov L0x555555560c4e ( -9633)@sint16;
mov L0x555555560c50 ( 20315)@sint16; mov L0x555555560c52 (-15111)@sint16; mov L0x555555560c54 (-10478)@sint16; mov L0x555555560c56 (   802)@sint16;
mov L0x555555560c58 (-20870)@sint16; mov L0x555555560c5a ( -4565)@sint16; mov L0x555555560c5c ( 22124)@sint16; mov L0x555555560c5e ( 26783)@sint16;
mov L0x555555560c60 ( -2319)@sint16; mov L0x555555560c62 (  3723)@sint16; mov L0x555555560c64 (  1386)@sint16; mov L0x555555560c66 (  1203)@sint16;
mov L0x555555560c68 ( -2876)@sint16; mov L0x555555560c6a ( -2345)@sint16; mov L0x555555560c6c ( -2764)@sint16; mov L0x555555560c6e (  -929)@sint16;
mov L0x555555560c70 ( -1701)@sint16; mov L0x555555560c72 ( -3335)@sint16; mov L0x555555560c74 ( -3310)@sint16; mov L0x555555560c76 (  -222)@sint16;
mov L0x555555560c78 ( -1414)@sint16; mov L0x555555560c7a ( -2005)@sint16; mov L0x555555560c7c (  -404)@sint16; mov L0x555555560c7e (  2719)@sint16;
mov L0x555555560c80 (  4505)@sint16; mov L0x555555560c82 ( -5452)@sint16; mov L0x555555560c84 ( -3456)@sint16; mov L0x555555560c86 (-28958)@sint16;
mov L0x555555560c88 (-14121)@sint16; mov L0x555555560c8a ( 32124)@sint16; mov L0x555555560c8c ( 17602)@sint16; mov L0x555555560c8e (  2526)@sint16;
mov L0x555555560c90 (  2073)@sint16; mov L0x555555560c92 ( 22790)@sint16; mov L0x555555560c94 (-24052)@sint16; mov L0x555555560c96 (  9633)@sint16;
mov L0x555555560c98 (-21766)@sint16; mov L0x555555560c9a (-20435)@sint16; mov L0x555555560c9c ( 21868)@sint16; mov L0x555555560c9e (  3524)@sint16;
mov L0x555555560ca0 (  -103)@sint16; mov L0x555555560ca2 (   692)@sint16; mov L0x555555560ca4 ( -3456)@sint16; mov L0x555555560ca6 (  2786)@sint16;
mov L0x555555560ca8 ( -1321)@sint16; mov L0x555555560caa (  1404)@sint16; mov L0x555555560cac (   194)@sint16; mov L0x555555560cae (  3550)@sint16;
mov L0x555555560cb0 ( -2535)@sint16; mov L0x555555560cb2 (  3334)@sint16; mov L0x555555560cb4 (  2572)@sint16; mov L0x555555560cb6 (   929)@sint16;
mov L0x555555560cb8 ( -2310)@sint16; mov L0x555555560cba ( -2515)@sint16; mov L0x555555560cbc (  -660)@sint16; mov L0x555555560cbe (  1476)@sint16;
mov L0x555555560cc0 (  7491)@sint16; mov L0x555555560cc2 (-12790)@sint16; mov L0x555555560cc4 (-22875)@sint16; mov L0x555555560cc6 ( 16885)@sint16;
mov L0x555555560cc8 ( 22568)@sint16; mov L0x555555560cca ( 27858)@sint16; mov L0x555555560ccc ( 10478)@sint16; mov L0x555555560cce ( 20119)@sint16;
mov L0x555555560cd0 ( 31177)@sint16; mov L0x555555560cd2 (  5299)@sint16; mov L0x555555560cd4 (-21860)@sint16; mov L0x555555560cd6 (-10495)@sint16;
mov L0x555555560cd8 ( -3114)@sint16; mov L0x555555560cda (  1007)@sint16; mov L0x555555560cdc (  8472)@sint16; mov L0x555555560cde (  9650)@sint16;
mov L0x555555560ce0 ( -2237)@sint16; mov L0x555555560ce2 ( -1526)@sint16; mov L0x555555560ce4 (  -859)@sint16; mov L0x555555560ce6 ( -2059)@sint16;
mov L0x555555560ce8 (  2088)@sint16; mov L0x555555560cea (  2258)@sint16; mov L0x555555560cec (  3310)@sint16; mov L0x555555560cee (   151)@sint16;
mov L0x555555560cf0 (  1993)@sint16; mov L0x555555560cf2 (  3763)@sint16; mov L0x555555560cf4 ( -3428)@sint16; mov L0x555555560cf6 ( -2815)@sint16;
mov L0x555555560cf8 (  2006)@sint16; mov L0x555555560cfa (  1519)@sint16; mov L0x555555560cfc ( -3816)@sint16; mov L0x555555560cfe (   434)@sint16;
mov L0x555555560d00 ( -5913)@sint16; mov L0x555555560d02 ( 27636)@sint16; mov L0x555555560d04 (-32329)@sint16; mov L0x555555560d06 ( -2952)@sint16;
mov L0x555555560d08 ( 29667)@sint16; mov L0x555555560d0a ( 23984)@sint16; mov L0x555555560d0c (-10409)@sint16; mov L0x555555560d0e (  8831)@sint16;
mov L0x555555560d10 (-11792)@sint16; mov L0x555555560d12 ( 14138)@sint16; mov L0x555555560d14 ( 13541)@sint16; mov L0x555555560d16 ( 31518)@sint16;
mov L0x555555560d18 ( 11783)@sint16; mov L0x555555560d1a ( 30844)@sint16; mov L0x555555560d1c (-15358)@sint16; mov L0x555555560d1e (-19274)@sint16;
mov L0x555555560d20 ( -1305)@sint16; mov L0x555555560d22 (  1012)@sint16; mov L0x555555560d24 ( -3145)@sint16; mov L0x555555560d26 (  1144)@sint16;
mov L0x555555560d28 (  3555)@sint16; mov L0x555555560d2a (  -592)@sint16; mov L0x555555560d2c (  2391)@sint16; mov L0x555555560d2e (  1151)@sint16;
mov L0x555555560d30 ( -3600)@sint16; mov L0x555555560d32 (   826)@sint16; mov L0x555555560d34 (  2789)@sint16; mov L0x555555560d36 (  -226)@sint16;
mov L0x555555560d38 (     7)@sint16; mov L0x555555560d3a (   124)@sint16; mov L0x555555560d3c (     2)@sint16; mov L0x555555560d3e (  2230)@sint16;

(* _TWISTS4 *)

mov L0x555555560d40 (    -9)@sint16; mov L0x555555560d42 (-16425)@sint16; mov L0x555555560d44 (-28865)@sint16; mov L0x555555560d46 ( 10350)@sint16;
mov L0x555555560d48 ( -3593)@sint16; mov L0x555555560d4a ( -3625)@sint16; mov L0x555555560d4c ( -3777)@sint16; mov L0x555555560d4e (  3182)@sint16;
mov L0x555555560d50 (    -9)@sint16; mov L0x555555560d52 (-10350)@sint16; mov L0x555555560d54 ( 28865)@sint16; mov L0x555555560d56 ( 16425)@sint16;
mov L0x555555560d58 ( -3593)@sint16; mov L0x555555560d5a ( -3182)@sint16; mov L0x555555560d5c (  3777)@sint16; mov L0x555555560d5e (  3625)@sint16;
mov L0x555555560d60 (    -9)@sint16; mov L0x555555560d62 (  4496)@sint16; mov L0x555555560d64 (-10350)@sint16; mov L0x555555560d66 ( 14744)@sint16;
mov L0x555555560d68 ( -3593)@sint16; mov L0x555555560d6a ( -3696)@sint16; mov L0x555555560d6c ( -3182)@sint16; mov L0x555555560d6e (  2456)@sint16;
mov L0x555555560d70 (    -9)@sint16; mov L0x555555560d72 (  4974)@sint16; mov L0x555555560d74 (-16425)@sint16; mov L0x555555560d76 (  7244)@sint16;
mov L0x555555560d78 ( -3593)@sint16; mov L0x555555560d7a ( -2194)@sint16; mov L0x555555560d7c ( -3625)@sint16; mov L0x555555560d7e (  1100)@sint16;
mov L0x555555560d80 (    -9)@sint16; mov L0x555555560d82 (-11655)@sint16; mov L0x555555560d84 (  4496)@sint16; mov L0x555555560d86 (-18191)@sint16;
mov L0x555555560d88 ( -3593)@sint16; mov L0x555555560d8a (   121)@sint16; mov L0x555555560d8c ( -3696)@sint16; mov L0x555555560d8e ( -2319)@sint16;
mov L0x555555560d90 (    -9)@sint16; mov L0x555555560d92 (-22593)@sint16; mov L0x555555560d94 (  7244)@sint16; mov L0x555555560d96 (-20315)@sint16;
mov L0x555555560d98 ( -3593)@sint16; mov L0x555555560d9a (  2495)@sint16; mov L0x555555560d9c (  1100)@sint16; mov L0x555555560d9e (  1701)@sint16;
mov L0x555555560da0 (    -9)@sint16; mov L0x555555560da2 (-18191)@sint16; mov L0x555555560da4 ( 14744)@sint16; mov L0x555555560da6 (-23754)@sint16;
mov L0x555555560da8 ( -3593)@sint16; mov L0x555555560daa ( -2319)@sint16; mov L0x555555560dac (  2456)@sint16; mov L0x555555560dae ( -2250)@sint16;
mov L0x555555560db0 (    -9)@sint16; mov L0x555555560db2 (-20870)@sint16; mov L0x555555560db4 (  4974)@sint16; mov L0x555555560db6 (-22593)@sint16;
mov L0x555555560db8 ( -3593)@sint16; mov L0x555555560dba ( -1414)@sint16; mov L0x555555560dbc ( -2194)@sint16; mov L0x555555560dbe (  2495)@sint16;

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
mov %ymm0 [L0x555555560700, L0x555555560702, L0x555555560704, L0x555555560706, L0x555555560708, L0x55555556070a, L0x55555556070c, L0x55555556070e, L0x555555560710, L0x555555560712, L0x555555560714, L0x555555560716, L0x555555560718, L0x55555556071a, L0x55555556071c, L0x55555556071e];
(* vmovdqa 0x100(%rdx),%ymm1                       #! EA = L0x555555560800; Value = 0x70c170c170c170c1; PC = 0x555555557bdf *)
mov %ymm1 [L0x555555560800, L0x555555560802, L0x555555560804, L0x555555560806, L0x555555560808, L0x55555556080a, L0x55555556080c, L0x55555556080e, L0x555555560810, L0x555555560812, L0x555555560814, L0x555555560816, L0x555555560818, L0x55555556081a, L0x55555556081c, L0x55555556081e];
(* vmovdqa 0x120(%rdx),%ymm2                       #! EA = L0x555555560820; Value = 0x0ec10ec10ec10ec1; PC = 0x555555557be7 *)
mov %ymm2 [L0x555555560820, L0x555555560822, L0x555555560824, L0x555555560826, L0x555555560828, L0x55555556082a, L0x55555556082c, L0x55555556082e, L0x555555560830, L0x555555560832, L0x555555560834, L0x555555560836, L0x555555560838, L0x55555556083a, L0x55555556083c, L0x55555556083e];
(* ===== Start of level 0 ===== *)
(* vmovdqa 0x100(%rsi),%ymm8                       #! EA = L0x7fffffffafe0; Value = 0x00000000ffffffff; PC = 0x555555557bef *)
mov %ymm8 [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe];
(* vmovdqa 0x120(%rsi),%ymm9                       #! EA = L0x7fffffffb000; Value = 0x00010000fffe0002; PC = 0x555555557bf7 *)
mov %ymm9 [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e];
(* vmovdqa 0x140(%rsi),%ymm10                      #! EA = L0x7fffffffb020; Value = 0x0001fffdfffe0002; PC = 0x555555557bff *)
mov %ymm10 [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e];
(* vmovdqa 0x160(%rsi),%ymm11                      #! EA = L0x7fffffffb040; Value = 0x00020003ffffffff; PC = 0x555555557c07 *)
mov %ymm11 [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e];
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x555555557c0f *)
smull %mulHymm8 %mulL %ymm1 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm9,%ymm13                      #! PC = 0x555555557c13 *)
smull %mulHymm9 %mulL %ymm1 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm10,%ymm14                     #! PC = 0x555555557c17 *)
smull %mulHymm10 %mulL %ymm1 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm11,%ymm15                     #! PC = 0x555555557c1b *)
smull %mulHymm11 %mulL %ymm1 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x555555557c1f *)
smull %mulH %mulLymm8 %ymm2 %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x555555557c23 *)
smull %mulH %mulLymm9 %ymm2 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x555555557c27 *)
smull %mulH %mulLymm10 %ymm2 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x555555557c2b *)
smull %mulH %mulLymm11 %ymm2 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vmovdqa (%rsi),%ymm4                            #! EA = L0x7fffffffaee0; Value = 0xfffe000000010002; PC = 0x555555557c2f *)
mov %ymm4 [L0x7fffffffaee0, L0x7fffffffaee2, L0x7fffffffaee4, L0x7fffffffaee6, L0x7fffffffaee8, L0x7fffffffaeea, L0x7fffffffaeec, L0x7fffffffaeee, L0x7fffffffaef0, L0x7fffffffaef2, L0x7fffffffaef4, L0x7fffffffaef6, L0x7fffffffaef8, L0x7fffffffaefa, L0x7fffffffaefc, L0x7fffffffaefe];
(* vmovdqa 0x20(%rsi),%ymm5                        #! EA = L0x7fffffffaf00; Value = 0x0000ffff00010000; PC = 0x555555557c33 *)
mov %ymm5 [L0x7fffffffaf00, L0x7fffffffaf02, L0x7fffffffaf04, L0x7fffffffaf06, L0x7fffffffaf08, L0x7fffffffaf0a, L0x7fffffffaf0c, L0x7fffffffaf0e, L0x7fffffffaf10, L0x7fffffffaf12, L0x7fffffffaf14, L0x7fffffffaf16, L0x7fffffffaf18, L0x7fffffffaf1a, L0x7fffffffaf1c, L0x7fffffffaf1e];
(* vmovdqa 0x40(%rsi),%ymm6                        #! EA = L0x7fffffffaf20; Value = 0x00000000fffeffff; PC = 0x555555557c38 *)
mov %ymm6 [L0x7fffffffaf20, L0x7fffffffaf22, L0x7fffffffaf24, L0x7fffffffaf26, L0x7fffffffaf28, L0x7fffffffaf2a, L0x7fffffffaf2c, L0x7fffffffaf2e, L0x7fffffffaf30, L0x7fffffffaf32, L0x7fffffffaf34, L0x7fffffffaf36, L0x7fffffffaf38, L0x7fffffffaf3a, L0x7fffffffaf3c, L0x7fffffffaf3e];
(* vmovdqa 0x60(%rsi),%ymm7                        #! EA = L0x7fffffffaf40; Value = 0xfffffffefffdffff; PC = 0x555555557c3d *)
mov %ymm7 [L0x7fffffffaf40, L0x7fffffffaf42, L0x7fffffffaf44, L0x7fffffffaf46, L0x7fffffffaf48, L0x7fffffffaf4a, L0x7fffffffaf4c, L0x7fffffffaf4e, L0x7fffffffaf50, L0x7fffffffaf52, L0x7fffffffaf54, L0x7fffffffaf56, L0x7fffffffaf58, L0x7fffffffaf5a, L0x7fffffffaf5c, L0x7fffffffaf5e];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557c42 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557c46 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557c4a *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557c4e *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
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
add %ymm3 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555557c57 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x555555557c5c *)
add %ymm4 %ymm5 %ymm9;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555557c61 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555557c66 *)
add %ymm5 %ymm6 %ymm10;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x555555557c6b *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555557c70 *)
add %ymm6 %ymm7 %ymm11;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555557c75 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x555555557c7a *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x555555557c7f *)
add %ymm8 %ymm8 %ymm12;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x555555557c84 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x555555557c89 *)
add %ymm9 %ymm9 %ymm13;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557c8e *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x555555557c93 *)
add %ymm10 %ymm10 %ymm14;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x555555557c98 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557c9d *)
add %ymm11 %ymm11 %ymm15;
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffffb4e0; PC = 0x555555557ca2 *)
mov [L0x7fffffffb4e0, L0x7fffffffb4e2, L0x7fffffffb4e4, L0x7fffffffb4e6, L0x7fffffffb4e8, L0x7fffffffb4ea, L0x7fffffffb4ec, L0x7fffffffb4ee, L0x7fffffffb4f0, L0x7fffffffb4f2, L0x7fffffffb4f4, L0x7fffffffb4f6, L0x7fffffffb4f8, L0x7fffffffb4fa, L0x7fffffffb4fc, L0x7fffffffb4fe] %ymm3;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffb500; PC = 0x555555557ca6 *)
mov [L0x7fffffffb500, L0x7fffffffb502, L0x7fffffffb504, L0x7fffffffb506, L0x7fffffffb508, L0x7fffffffb50a, L0x7fffffffb50c, L0x7fffffffb50e, L0x7fffffffb510, L0x7fffffffb512, L0x7fffffffb514, L0x7fffffffb516, L0x7fffffffb518, L0x7fffffffb51a, L0x7fffffffb51c, L0x7fffffffb51e] %ymm4;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffffb520; PC = 0x555555557cab *)
mov [L0x7fffffffb520, L0x7fffffffb522, L0x7fffffffb524, L0x7fffffffb526, L0x7fffffffb528, L0x7fffffffb52a, L0x7fffffffb52c, L0x7fffffffb52e, L0x7fffffffb530, L0x7fffffffb532, L0x7fffffffb534, L0x7fffffffb536, L0x7fffffffb538, L0x7fffffffb53a, L0x7fffffffb53c, L0x7fffffffb53e] %ymm5;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffffb540; PC = 0x555555557cb0 *)
mov [L0x7fffffffb540, L0x7fffffffb542, L0x7fffffffb544, L0x7fffffffb546, L0x7fffffffb548, L0x7fffffffb54a, L0x7fffffffb54c, L0x7fffffffb54e, L0x7fffffffb550, L0x7fffffffb552, L0x7fffffffb554, L0x7fffffffb556, L0x7fffffffb558, L0x7fffffffb55a, L0x7fffffffb55c, L0x7fffffffb55e] %ymm6;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb5e0; PC = 0x555555557cb5 *)
mov [L0x7fffffffb5e0, L0x7fffffffb5e2, L0x7fffffffb5e4, L0x7fffffffb5e6, L0x7fffffffb5e8, L0x7fffffffb5ea, L0x7fffffffb5ec, L0x7fffffffb5ee, L0x7fffffffb5f0, L0x7fffffffb5f2, L0x7fffffffb5f4, L0x7fffffffb5f6, L0x7fffffffb5f8, L0x7fffffffb5fa, L0x7fffffffb5fc, L0x7fffffffb5fe] %ymm8;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb600; PC = 0x555555557cbd *)
mov [L0x7fffffffb600, L0x7fffffffb602, L0x7fffffffb604, L0x7fffffffb606, L0x7fffffffb608, L0x7fffffffb60a, L0x7fffffffb60c, L0x7fffffffb60e, L0x7fffffffb610, L0x7fffffffb612, L0x7fffffffb614, L0x7fffffffb616, L0x7fffffffb618, L0x7fffffffb61a, L0x7fffffffb61c, L0x7fffffffb61e] %ymm9;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb620; PC = 0x555555557cc5 *)
mov [L0x7fffffffb620, L0x7fffffffb622, L0x7fffffffb624, L0x7fffffffb626, L0x7fffffffb628, L0x7fffffffb62a, L0x7fffffffb62c, L0x7fffffffb62e, L0x7fffffffb630, L0x7fffffffb632, L0x7fffffffb634, L0x7fffffffb636, L0x7fffffffb638, L0x7fffffffb63a, L0x7fffffffb63c, L0x7fffffffb63e] %ymm10;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb640; PC = 0x555555557ccd *)
mov [L0x7fffffffb640, L0x7fffffffb642, L0x7fffffffb644, L0x7fffffffb646, L0x7fffffffb648, L0x7fffffffb64a, L0x7fffffffb64c, L0x7fffffffb64e, L0x7fffffffb650, L0x7fffffffb652, L0x7fffffffb654, L0x7fffffffb656, L0x7fffffffb658, L0x7fffffffb65a, L0x7fffffffb65c, L0x7fffffffb65e] %ymm11;
(* vmovdqa 0x180(%rsi),%ymm8                       #! EA = L0x7fffffffb060; Value = 0x0000000400000000; PC = 0x555555557cd5 *)
mov %ymm8 [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e];
(* vmovdqa 0x1a0(%rsi),%ymm9                       #! EA = L0x7fffffffb080; Value = 0x00010000fffe0000; PC = 0x555555557cdd *)
mov %ymm9 [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e];
(* vmovdqa 0x1c0(%rsi),%ymm10                      #! EA = L0x7fffffffb0a0; Value = 0x0000000000000001; PC = 0x555555557ce5 *)
mov %ymm10 [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be];
(* vmovdqa 0x1e0(%rsi),%ymm11                      #! EA = L0x7fffffffb0c0; Value = 0x0000000000000000; PC = 0x555555557ced *)
mov %ymm11 [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de];
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x555555557cf5 *)
smull %mulHymm8 %mulL %ymm1 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm9,%ymm13                      #! PC = 0x555555557cf9 *)
smull %mulHymm9 %mulL %ymm1 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm10,%ymm14                     #! PC = 0x555555557cfd *)
smull %mulHymm10 %mulL %ymm1 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm11,%ymm15                     #! PC = 0x555555557d01 *)
smull %mulHymm11 %mulL %ymm1 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x555555557d05 *)
smull %mulH %mulLymm8 %ymm2 %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x555555557d09 *)
smull %mulH %mulLymm9 %ymm2 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x555555557d0d *)
smull %mulH %mulLymm10 %ymm2 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x555555557d11 *)
smull %mulH %mulLymm11 %ymm2 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vmovdqa 0x80(%rsi),%ymm4                        #! EA = L0x7fffffffaf60; Value = 0x0000000100020001; PC = 0x555555557d15 *)
mov %ymm4 [L0x7fffffffaf60, L0x7fffffffaf62, L0x7fffffffaf64, L0x7fffffffaf66, L0x7fffffffaf68, L0x7fffffffaf6a, L0x7fffffffaf6c, L0x7fffffffaf6e, L0x7fffffffaf70, L0x7fffffffaf72, L0x7fffffffaf74, L0x7fffffffaf76, L0x7fffffffaf78, L0x7fffffffaf7a, L0x7fffffffaf7c, L0x7fffffffaf7e];
(* vmovdqa 0xa0(%rsi),%ymm5                        #! EA = L0x7fffffffaf80; Value = 0x000000010000ffff; PC = 0x555555557d1d *)
mov %ymm5 [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e];
(* vmovdqa 0xc0(%rsi),%ymm6                        #! EA = L0x7fffffffafa0; Value = 0xfffe0000ffff0003; PC = 0x555555557d25 *)
mov %ymm6 [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe];
(* vmovdqa 0xe0(%rsi),%ymm7                        #! EA = L0x7fffffffafc0; Value = 0xfffe000100000002; PC = 0x555555557d2d *)
mov %ymm7 [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557d35 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557d39 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557d3d *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557d41 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
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
add %ymm3 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555557d4a *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x555555557d4f *)
add %ymm4 %ymm5 %ymm9;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555557d54 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555557d59 *)
add %ymm5 %ymm6 %ymm10;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x555555557d5e *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555557d63 *)
add %ymm6 %ymm7 %ymm11;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555557d68 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x555555557d6d *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x555555557d72 *)
add %ymm8 %ymm8 %ymm12;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x555555557d77 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x555555557d7c *)
add %ymm9 %ymm9 %ymm13;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557d81 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x555555557d86 *)
add %ymm10 %ymm10 %ymm14;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x555555557d8b *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557d90 *)
add %ymm11 %ymm11 %ymm15;
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffffb560; PC = 0x555555557d95 *)
mov [L0x7fffffffb560, L0x7fffffffb562, L0x7fffffffb564, L0x7fffffffb566, L0x7fffffffb568, L0x7fffffffb56a, L0x7fffffffb56c, L0x7fffffffb56e, L0x7fffffffb570, L0x7fffffffb572, L0x7fffffffb574, L0x7fffffffb576, L0x7fffffffb578, L0x7fffffffb57a, L0x7fffffffb57c, L0x7fffffffb57e] %ymm3;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb580; PC = 0x555555557d9d *)
mov [L0x7fffffffb580, L0x7fffffffb582, L0x7fffffffb584, L0x7fffffffb586, L0x7fffffffb588, L0x7fffffffb58a, L0x7fffffffb58c, L0x7fffffffb58e, L0x7fffffffb590, L0x7fffffffb592, L0x7fffffffb594, L0x7fffffffb596, L0x7fffffffb598, L0x7fffffffb59a, L0x7fffffffb59c, L0x7fffffffb59e] %ymm4;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb5a0; PC = 0x555555557da5 *)
mov [L0x7fffffffb5a0, L0x7fffffffb5a2, L0x7fffffffb5a4, L0x7fffffffb5a6, L0x7fffffffb5a8, L0x7fffffffb5aa, L0x7fffffffb5ac, L0x7fffffffb5ae, L0x7fffffffb5b0, L0x7fffffffb5b2, L0x7fffffffb5b4, L0x7fffffffb5b6, L0x7fffffffb5b8, L0x7fffffffb5ba, L0x7fffffffb5bc, L0x7fffffffb5be] %ymm5;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffffb5c0; PC = 0x555555557dad *)
mov [L0x7fffffffb5c0, L0x7fffffffb5c2, L0x7fffffffb5c4, L0x7fffffffb5c6, L0x7fffffffb5c8, L0x7fffffffb5ca, L0x7fffffffb5cc, L0x7fffffffb5ce, L0x7fffffffb5d0, L0x7fffffffb5d2, L0x7fffffffb5d4, L0x7fffffffb5d6, L0x7fffffffb5d8, L0x7fffffffb5da, L0x7fffffffb5dc, L0x7fffffffb5de] %ymm6;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb660; PC = 0x555555557db5 *)
mov [L0x7fffffffb660, L0x7fffffffb662, L0x7fffffffb664, L0x7fffffffb666, L0x7fffffffb668, L0x7fffffffb66a, L0x7fffffffb66c, L0x7fffffffb66e, L0x7fffffffb670, L0x7fffffffb672, L0x7fffffffb674, L0x7fffffffb676, L0x7fffffffb678, L0x7fffffffb67a, L0x7fffffffb67c, L0x7fffffffb67e] %ymm8;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb680; PC = 0x555555557dbd *)
mov [L0x7fffffffb680, L0x7fffffffb682, L0x7fffffffb684, L0x7fffffffb686, L0x7fffffffb688, L0x7fffffffb68a, L0x7fffffffb68c, L0x7fffffffb68e, L0x7fffffffb690, L0x7fffffffb692, L0x7fffffffb694, L0x7fffffffb696, L0x7fffffffb698, L0x7fffffffb69a, L0x7fffffffb69c, L0x7fffffffb69e] %ymm9;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb6a0; PC = 0x555555557dc5 *)
mov [L0x7fffffffb6a0, L0x7fffffffb6a2, L0x7fffffffb6a4, L0x7fffffffb6a6, L0x7fffffffb6a8, L0x7fffffffb6aa, L0x7fffffffb6ac, L0x7fffffffb6ae, L0x7fffffffb6b0, L0x7fffffffb6b2, L0x7fffffffb6b4, L0x7fffffffb6b6, L0x7fffffffb6b8, L0x7fffffffb6ba, L0x7fffffffb6bc, L0x7fffffffb6be] %ymm10;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb6c0; PC = 0x555555557dcd *)
mov [L0x7fffffffb6c0, L0x7fffffffb6c2, L0x7fffffffb6c4, L0x7fffffffb6c6, L0x7fffffffb6c8, L0x7fffffffb6ca, L0x7fffffffb6cc, L0x7fffffffb6ce, L0x7fffffffb6d0, L0x7fffffffb6d2, L0x7fffffffb6d4, L0x7fffffffb6d6, L0x7fffffffb6d8, L0x7fffffffb6da, L0x7fffffffb6dc, L0x7fffffffb6de] %ymm11;
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
  [7681, x**128 - (-3383)],
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
  [7681, x**128 - (3383)]
] && and [
  (-(8134))@16 <s L0x7fffffffb4e0, L0x7fffffffb4e0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4e2, L0x7fffffffb4e2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4e4, L0x7fffffffb4e4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4e6, L0x7fffffffb4e6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4e8, L0x7fffffffb4e8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4ea, L0x7fffffffb4ea <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4ec, L0x7fffffffb4ec <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4ee, L0x7fffffffb4ee <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4f0, L0x7fffffffb4f0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4f2, L0x7fffffffb4f2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4f4, L0x7fffffffb4f4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4f6, L0x7fffffffb4f6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4f8, L0x7fffffffb4f8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4fa, L0x7fffffffb4fa <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb4fc, L0x7fffffffb4fc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb4fe, L0x7fffffffb4fe <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb500, L0x7fffffffb500 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb502, L0x7fffffffb502 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb504, L0x7fffffffb504 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb506, L0x7fffffffb506 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb508, L0x7fffffffb508 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb50a, L0x7fffffffb50a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb50c, L0x7fffffffb50c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb50e, L0x7fffffffb50e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb510, L0x7fffffffb510 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb512, L0x7fffffffb512 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb514, L0x7fffffffb514 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb516, L0x7fffffffb516 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb518, L0x7fffffffb518 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb51a, L0x7fffffffb51a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb51c, L0x7fffffffb51c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb51e, L0x7fffffffb51e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb520, L0x7fffffffb520 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb522, L0x7fffffffb522 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb524, L0x7fffffffb524 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb526, L0x7fffffffb526 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb528, L0x7fffffffb528 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb52a, L0x7fffffffb52a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb52c, L0x7fffffffb52c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb52e, L0x7fffffffb52e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb530, L0x7fffffffb530 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb532, L0x7fffffffb532 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb534, L0x7fffffffb534 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb536, L0x7fffffffb536 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb538, L0x7fffffffb538 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb53a, L0x7fffffffb53a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb53c, L0x7fffffffb53c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb53e, L0x7fffffffb53e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb540, L0x7fffffffb540 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb542, L0x7fffffffb542 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb544, L0x7fffffffb544 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb546, L0x7fffffffb546 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb548, L0x7fffffffb548 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb54a, L0x7fffffffb54a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb54c, L0x7fffffffb54c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb54e, L0x7fffffffb54e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb550, L0x7fffffffb550 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb552, L0x7fffffffb552 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb554, L0x7fffffffb554 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb556, L0x7fffffffb556 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb558, L0x7fffffffb558 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb55a, L0x7fffffffb55a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb55c, L0x7fffffffb55c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb55e, L0x7fffffffb55e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb560, L0x7fffffffb560 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb562, L0x7fffffffb562 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb564, L0x7fffffffb564 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb566, L0x7fffffffb566 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb568, L0x7fffffffb568 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb56a, L0x7fffffffb56a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb56c, L0x7fffffffb56c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb56e, L0x7fffffffb56e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb570, L0x7fffffffb570 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb572, L0x7fffffffb572 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb574, L0x7fffffffb574 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb576, L0x7fffffffb576 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb578, L0x7fffffffb578 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb57a, L0x7fffffffb57a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb57c, L0x7fffffffb57c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb57e, L0x7fffffffb57e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb580, L0x7fffffffb580 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb582, L0x7fffffffb582 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb584, L0x7fffffffb584 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb586, L0x7fffffffb586 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb588, L0x7fffffffb588 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb58a, L0x7fffffffb58a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb58c, L0x7fffffffb58c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb58e, L0x7fffffffb58e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb590, L0x7fffffffb590 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb592, L0x7fffffffb592 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb594, L0x7fffffffb594 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb596, L0x7fffffffb596 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb598, L0x7fffffffb598 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb59a, L0x7fffffffb59a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb59c, L0x7fffffffb59c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb59e, L0x7fffffffb59e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5a0, L0x7fffffffb5a0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5a2, L0x7fffffffb5a2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5a4, L0x7fffffffb5a4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5a6, L0x7fffffffb5a6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5a8, L0x7fffffffb5a8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5aa, L0x7fffffffb5aa <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5ac, L0x7fffffffb5ac <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ae, L0x7fffffffb5ae <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5b0, L0x7fffffffb5b0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5b2, L0x7fffffffb5b2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5b4, L0x7fffffffb5b4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5b6, L0x7fffffffb5b6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5b8, L0x7fffffffb5b8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ba, L0x7fffffffb5ba <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5bc, L0x7fffffffb5bc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5be, L0x7fffffffb5be <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5c0, L0x7fffffffb5c0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5c2, L0x7fffffffb5c2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5c4, L0x7fffffffb5c4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5c6, L0x7fffffffb5c6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5c8, L0x7fffffffb5c8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ca, L0x7fffffffb5ca <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5cc, L0x7fffffffb5cc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ce, L0x7fffffffb5ce <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5d0, L0x7fffffffb5d0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5d2, L0x7fffffffb5d2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5d4, L0x7fffffffb5d4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5d6, L0x7fffffffb5d6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5d8, L0x7fffffffb5d8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5da, L0x7fffffffb5da <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5dc, L0x7fffffffb5dc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5de, L0x7fffffffb5de <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5e0, L0x7fffffffb5e0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5e2, L0x7fffffffb5e2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5e4, L0x7fffffffb5e4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5e6, L0x7fffffffb5e6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5e8, L0x7fffffffb5e8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ea, L0x7fffffffb5ea <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5ec, L0x7fffffffb5ec <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ee, L0x7fffffffb5ee <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5f0, L0x7fffffffb5f0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5f2, L0x7fffffffb5f2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5f4, L0x7fffffffb5f4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5f6, L0x7fffffffb5f6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5f8, L0x7fffffffb5f8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5fa, L0x7fffffffb5fa <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5fc, L0x7fffffffb5fc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5fe, L0x7fffffffb5fe <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb600, L0x7fffffffb600 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb602, L0x7fffffffb602 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb604, L0x7fffffffb604 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb606, L0x7fffffffb606 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb608, L0x7fffffffb608 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb60a, L0x7fffffffb60a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb60c, L0x7fffffffb60c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb60e, L0x7fffffffb60e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb610, L0x7fffffffb610 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb612, L0x7fffffffb612 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb614, L0x7fffffffb614 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb616, L0x7fffffffb616 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb618, L0x7fffffffb618 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb61a, L0x7fffffffb61a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb61c, L0x7fffffffb61c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb61e, L0x7fffffffb61e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb620, L0x7fffffffb620 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb622, L0x7fffffffb622 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb624, L0x7fffffffb624 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb626, L0x7fffffffb626 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb628, L0x7fffffffb628 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb62a, L0x7fffffffb62a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb62c, L0x7fffffffb62c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb62e, L0x7fffffffb62e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb630, L0x7fffffffb630 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb632, L0x7fffffffb632 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb634, L0x7fffffffb634 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb636, L0x7fffffffb636 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb638, L0x7fffffffb638 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb63a, L0x7fffffffb63a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb63c, L0x7fffffffb63c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb63e, L0x7fffffffb63e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb640, L0x7fffffffb640 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb642, L0x7fffffffb642 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb644, L0x7fffffffb644 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb646, L0x7fffffffb646 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb648, L0x7fffffffb648 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb64a, L0x7fffffffb64a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb64c, L0x7fffffffb64c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb64e, L0x7fffffffb64e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb650, L0x7fffffffb650 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb652, L0x7fffffffb652 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb654, L0x7fffffffb654 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb656, L0x7fffffffb656 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb658, L0x7fffffffb658 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb65a, L0x7fffffffb65a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb65c, L0x7fffffffb65c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb65e, L0x7fffffffb65e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb660, L0x7fffffffb660 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb662, L0x7fffffffb662 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb664, L0x7fffffffb664 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb666, L0x7fffffffb666 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb668, L0x7fffffffb668 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb66a, L0x7fffffffb66a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb66c, L0x7fffffffb66c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb66e, L0x7fffffffb66e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb670, L0x7fffffffb670 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb672, L0x7fffffffb672 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb674, L0x7fffffffb674 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb676, L0x7fffffffb676 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb678, L0x7fffffffb678 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb67a, L0x7fffffffb67a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb67c, L0x7fffffffb67c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb67e, L0x7fffffffb67e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb680, L0x7fffffffb680 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb682, L0x7fffffffb682 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb684, L0x7fffffffb684 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb686, L0x7fffffffb686 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb688, L0x7fffffffb688 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb68a, L0x7fffffffb68a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb68c, L0x7fffffffb68c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb68e, L0x7fffffffb68e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb690, L0x7fffffffb690 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb692, L0x7fffffffb692 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb694, L0x7fffffffb694 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb696, L0x7fffffffb696 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb698, L0x7fffffffb698 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb69a, L0x7fffffffb69a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb69c, L0x7fffffffb69c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb69e, L0x7fffffffb69e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6a0, L0x7fffffffb6a0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6a2, L0x7fffffffb6a2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6a4, L0x7fffffffb6a4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6a6, L0x7fffffffb6a6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6a8, L0x7fffffffb6a8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6aa, L0x7fffffffb6aa <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6ac, L0x7fffffffb6ac <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ae, L0x7fffffffb6ae <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6b0, L0x7fffffffb6b0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6b2, L0x7fffffffb6b2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6b4, L0x7fffffffb6b4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6b6, L0x7fffffffb6b6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6b8, L0x7fffffffb6b8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ba, L0x7fffffffb6ba <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6bc, L0x7fffffffb6bc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6be, L0x7fffffffb6be <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6c0, L0x7fffffffb6c0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6c2, L0x7fffffffb6c2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6c4, L0x7fffffffb6c4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6c6, L0x7fffffffb6c6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6c8, L0x7fffffffb6c8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ca, L0x7fffffffb6ca <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6cc, L0x7fffffffb6cc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ce, L0x7fffffffb6ce <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6d0, L0x7fffffffb6d0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6d2, L0x7fffffffb6d2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6d4, L0x7fffffffb6d4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6d6, L0x7fffffffb6d6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6d8, L0x7fffffffb6d8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6da, L0x7fffffffb6da <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6dc, L0x7fffffffb6dc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6de, L0x7fffffffb6de <s (8134)@16
];

(* ===== Start of level 1, off 0 ===== *)
(* vmovdqa 0x140(%rdx),%ymm15                      #! EA = L0x555555560840; Value = 0xd792d792d792d792; PC = 0x555555557dd5 *)
mov %ymm15 [L0x555555560840, L0x555555560842, L0x555555560844, L0x555555560846, L0x555555560848, L0x55555556084a, L0x55555556084c, L0x55555556084e, L0x555555560850, L0x555555560852, L0x555555560854, L0x555555560856, L0x555555560858, L0x55555556085a, L0x55555556085c, L0x55555556085e];
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb560; Value = 0x0000072700020001; PC = 0x555555557ddd *)
mov %ymm8 [L0x7fffffffb560, L0x7fffffffb562, L0x7fffffffb564, L0x7fffffffb566, L0x7fffffffb568, L0x7fffffffb56a, L0x7fffffffb56c, L0x7fffffffb56e, L0x7fffffffb570, L0x7fffffffb572, L0x7fffffffb574, L0x7fffffffb576, L0x7fffffffb578, L0x7fffffffb57a, L0x7fffffffb57c, L0x7fffffffb57e];
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb580; Value = 0xf2c90001fc6dffff; PC = 0x555555557de5 *)
mov %ymm9 [L0x7fffffffb580, L0x7fffffffb582, L0x7fffffffb584, L0x7fffffffb586, L0x7fffffffb588, L0x7fffffffb58a, L0x7fffffffb58c, L0x7fffffffb58e, L0x7fffffffb590, L0x7fffffffb592, L0x7fffffffb594, L0x7fffffffb596, L0x7fffffffb598, L0x7fffffffb59a, L0x7fffffffb59c, L0x7fffffffb59e];
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb5a0; Value = 0xfffe0000fffff2cc; PC = 0x555555557ded *)
mov %ymm10 [L0x7fffffffb5a0, L0x7fffffffb5a2, L0x7fffffffb5a4, L0x7fffffffb5a6, L0x7fffffffb5a8, L0x7fffffffb5aa, L0x7fffffffb5ac, L0x7fffffffb5ae, L0x7fffffffb5b0, L0x7fffffffb5b2, L0x7fffffffb5b4, L0x7fffffffb5b6, L0x7fffffffb5b8, L0x7fffffffb5ba, L0x7fffffffb5bc, L0x7fffffffb5be];
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb5c0; Value = 0xfffe000100000002; PC = 0x555555557df5 *)
mov %ymm11 [L0x7fffffffb5c0, L0x7fffffffb5c2, L0x7fffffffb5c4, L0x7fffffffb5c6, L0x7fffffffb5c8, L0x7fffffffb5ca, L0x7fffffffb5cc, L0x7fffffffb5ce, L0x7fffffffb5d0, L0x7fffffffb5d2, L0x7fffffffb5d4, L0x7fffffffb5d6, L0x7fffffffb5d8, L0x7fffffffb5da, L0x7fffffffb5dc, L0x7fffffffb5de];
(* vmovdqa 0x160(%rdx),%ymm3                       #! EA = L0x555555560860; Value = 0xf392f392f392f392; PC = 0x555555557dfd *)
mov %ymm3 [L0x555555560860, L0x555555560862, L0x555555560864, L0x555555560866, L0x555555560868, L0x55555556086a, L0x55555556086c, L0x55555556086e, L0x555555560870, L0x555555560872, L0x555555560874, L0x555555560876, L0x555555560878, L0x55555556087a, L0x55555556087c, L0x55555556087e];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x555555557e05 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x555555557e0a *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x555555557e0f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x555555557e14 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm8,%ymm8                       #! PC = 0x555555557e19 *)
smull %mulH %mulLymm8 %ymm3 %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw %ymm3,%ymm9,%ymm9                       #! PC = 0x555555557e1d *)
smull %mulH %mulLymm9 %ymm3 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm3,%ymm10,%ymm10                     #! PC = 0x555555557e21 *)
smull %mulH %mulLymm10 %ymm3 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm3,%ymm11,%ymm11                     #! PC = 0x555555557e25 *)
smull %mulH %mulLymm11 %ymm3 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffb4e0; Value = 0xfffe00000d380d39; PC = 0x555555557e29 *)
mov %ymm4 [L0x7fffffffb4e0, L0x7fffffffb4e2, L0x7fffffffb4e4, L0x7fffffffb4e6, L0x7fffffffb4e8, L0x7fffffffb4ea, L0x7fffffffb4ec, L0x7fffffffb4ee, L0x7fffffffb4f0, L0x7fffffffb4f2, L0x7fffffffb4f4, L0x7fffffffb4f6, L0x7fffffffb4f8, L0x7fffffffb4fa, L0x7fffffffb4fc, L0x7fffffffb4fe];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffb500; Value = 0xf2c9fffffc6e0393; PC = 0x555555557e2d *)
mov %ymm5 [L0x7fffffffb500, L0x7fffffffb502, L0x7fffffffb504, L0x7fffffffb506, L0x7fffffffb508, L0x7fffffffb50a, L0x7fffffffb50c, L0x7fffffffb50e, L0x7fffffffb510, L0x7fffffffb512, L0x7fffffffb514, L0x7fffffffb516, L0x7fffffffb518, L0x7fffffffb51a, L0x7fffffffb51c, L0x7fffffffb51e];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffb520; Value = 0xf2c909a4fc6b0392; PC = 0x555555557e32 *)
mov %ymm6 [L0x7fffffffb520, L0x7fffffffb522, L0x7fffffffb524, L0x7fffffffb526, L0x7fffffffb528, L0x7fffffffb52a, L0x7fffffffb52c, L0x7fffffffb52e, L0x7fffffffb530, L0x7fffffffb532, L0x7fffffffb534, L0x7fffffffb536, L0x7fffffffb538, L0x7fffffffb53a, L0x7fffffffb53c, L0x7fffffffb53e];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffb540; Value = 0x0392f65a0d340d36; PC = 0x555555557e37 *)
mov %ymm7 [L0x7fffffffb540, L0x7fffffffb542, L0x7fffffffb544, L0x7fffffffb546, L0x7fffffffb548, L0x7fffffffb54a, L0x7fffffffb54c, L0x7fffffffb54e, L0x7fffffffb550, L0x7fffffffb552, L0x7fffffffb554, L0x7fffffffb556, L0x7fffffffb558, L0x7fffffffb55a, L0x7fffffffb55c, L0x7fffffffb55e];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557e3c *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557e40 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557e44 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557e48 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
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
add %ymm3 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555557e51 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x555555557e56 *)
add %ymm4 %ymm5 %ymm9;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555557e5b *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555557e60 *)
add %ymm5 %ymm6 %ymm10;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x555555557e65 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555557e6a *)
add %ymm6 %ymm7 %ymm11;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555557e6f *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x555555557e74 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x555555557e79 *)
add %ymm8 %ymm8 %ymm12;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x555555557e7e *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x555555557e83 *)
add %ymm9 %ymm9 %ymm13;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557e88 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x555555557e8d *)
add %ymm10 %ymm10 %ymm14;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x555555557e92 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557e97 *)
add %ymm11 %ymm11 %ymm15;
(* ===== End of level 1, off 0 ===== *)

(* ecut 1, rcut 1 *)

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
  [7681, x**64 - (1213)],
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
  [7681, x**64 - (-1213)]
] && and [
  (-(12312))@16 <s ymm3_0, ymm3_0 <s (12312)@16, (-(12312))@16 <s ymm3_1, ymm3_1 <s (12312)@16,
  (-(12312))@16 <s ymm3_2, ymm3_2 <s (12312)@16, (-(12312))@16 <s ymm3_3, ymm3_3 <s (12312)@16,
  (-(12312))@16 <s ymm3_4, ymm3_4 <s (12312)@16, (-(12312))@16 <s ymm3_5, ymm3_5 <s (12312)@16,
  (-(12312))@16 <s ymm3_6, ymm3_6 <s (12312)@16, (-(12312))@16 <s ymm3_7, ymm3_7 <s (12312)@16,
  (-(12312))@16 <s ymm3_8, ymm3_8 <s (12312)@16, (-(12312))@16 <s ymm3_9, ymm3_9 <s (12312)@16,
  (-(12312))@16 <s ymm3_a, ymm3_a <s (12312)@16, (-(12312))@16 <s ymm3_b, ymm3_b <s (12312)@16,
  (-(12312))@16 <s ymm3_c, ymm3_c <s (12312)@16, (-(12312))@16 <s ymm3_d, ymm3_d <s (12312)@16,
  (-(12312))@16 <s ymm3_e, ymm3_e <s (12312)@16, (-(12312))@16 <s ymm3_f, ymm3_f <s (12312)@16,
  (-(12312))@16 <s ymm4_0, ymm4_0 <s (12312)@16, (-(12312))@16 <s ymm4_1, ymm4_1 <s (12312)@16,
  (-(12312))@16 <s ymm4_2, ymm4_2 <s (12312)@16, (-(12312))@16 <s ymm4_3, ymm4_3 <s (12312)@16,
  (-(12312))@16 <s ymm4_4, ymm4_4 <s (12312)@16, (-(12312))@16 <s ymm4_5, ymm4_5 <s (12312)@16,
  (-(12312))@16 <s ymm4_6, ymm4_6 <s (12312)@16, (-(12312))@16 <s ymm4_7, ymm4_7 <s (12312)@16,
  (-(12312))@16 <s ymm4_8, ymm4_8 <s (12312)@16, (-(12312))@16 <s ymm4_9, ymm4_9 <s (12312)@16,
  (-(12312))@16 <s ymm4_a, ymm4_a <s (12312)@16, (-(12312))@16 <s ymm4_b, ymm4_b <s (12312)@16,
  (-(12312))@16 <s ymm4_c, ymm4_c <s (12312)@16, (-(12312))@16 <s ymm4_d, ymm4_d <s (12312)@16,
  (-(12312))@16 <s ymm4_e, ymm4_e <s (12312)@16, (-(12312))@16 <s ymm4_f, ymm4_f <s (12312)@16,
  (-(12312))@16 <s ymm5_0, ymm5_0 <s (12312)@16, (-(12312))@16 <s ymm5_1, ymm5_1 <s (12312)@16,
  (-(12312))@16 <s ymm5_2, ymm5_2 <s (12312)@16, (-(12312))@16 <s ymm5_3, ymm5_3 <s (12312)@16,
  (-(12312))@16 <s ymm5_4, ymm5_4 <s (12312)@16, (-(12312))@16 <s ymm5_5, ymm5_5 <s (12312)@16,
  (-(12312))@16 <s ymm5_6, ymm5_6 <s (12312)@16, (-(12312))@16 <s ymm5_7, ymm5_7 <s (12312)@16,
  (-(12312))@16 <s ymm5_8, ymm5_8 <s (12312)@16, (-(12312))@16 <s ymm5_9, ymm5_9 <s (12312)@16,
  (-(12312))@16 <s ymm5_a, ymm5_a <s (12312)@16, (-(12312))@16 <s ymm5_b, ymm5_b <s (12312)@16,
  (-(12312))@16 <s ymm5_c, ymm5_c <s (12312)@16, (-(12312))@16 <s ymm5_d, ymm5_d <s (12312)@16,
  (-(12312))@16 <s ymm5_e, ymm5_e <s (12312)@16, (-(12312))@16 <s ymm5_f, ymm5_f <s (12312)@16,
  (-(12312))@16 <s ymm6_0, ymm6_0 <s (12312)@16, (-(12312))@16 <s ymm6_1, ymm6_1 <s (12312)@16,
  (-(12312))@16 <s ymm6_2, ymm6_2 <s (12312)@16, (-(12312))@16 <s ymm6_3, ymm6_3 <s (12312)@16,
  (-(12312))@16 <s ymm6_4, ymm6_4 <s (12312)@16, (-(12312))@16 <s ymm6_5, ymm6_5 <s (12312)@16,
  (-(12312))@16 <s ymm6_6, ymm6_6 <s (12312)@16, (-(12312))@16 <s ymm6_7, ymm6_7 <s (12312)@16,
  (-(12312))@16 <s ymm6_8, ymm6_8 <s (12312)@16, (-(12312))@16 <s ymm6_9, ymm6_9 <s (12312)@16,
  (-(12312))@16 <s ymm6_a, ymm6_a <s (12312)@16, (-(12312))@16 <s ymm6_b, ymm6_b <s (12312)@16,
  (-(12312))@16 <s ymm6_c, ymm6_c <s (12312)@16, (-(12312))@16 <s ymm6_d, ymm6_d <s (12312)@16,
  (-(12312))@16 <s ymm6_e, ymm6_e <s (12312)@16, (-(12312))@16 <s ymm6_f, ymm6_f <s (12312)@16,
  (-(12312))@16 <s ymm8_0, ymm8_0 <s (12312)@16, (-(12312))@16 <s ymm8_1, ymm8_1 <s (12312)@16,
  (-(12312))@16 <s ymm8_2, ymm8_2 <s (12312)@16, (-(12312))@16 <s ymm8_3, ymm8_3 <s (12312)@16,
  (-(12312))@16 <s ymm8_4, ymm8_4 <s (12312)@16, (-(12312))@16 <s ymm8_5, ymm8_5 <s (12312)@16,
  (-(12312))@16 <s ymm8_6, ymm8_6 <s (12312)@16, (-(12312))@16 <s ymm8_7, ymm8_7 <s (12312)@16,
  (-(12312))@16 <s ymm8_8, ymm8_8 <s (12312)@16, (-(12312))@16 <s ymm8_9, ymm8_9 <s (12312)@16,
  (-(12312))@16 <s ymm8_a, ymm8_a <s (12312)@16, (-(12312))@16 <s ymm8_b, ymm8_b <s (12312)@16,
  (-(12312))@16 <s ymm8_c, ymm8_c <s (12312)@16, (-(12312))@16 <s ymm8_d, ymm8_d <s (12312)@16,
  (-(12312))@16 <s ymm8_e, ymm8_e <s (12312)@16, (-(12312))@16 <s ymm8_f, ymm8_f <s (12312)@16,
  (-(12312))@16 <s ymm9_0, ymm9_0 <s (12312)@16, (-(12312))@16 <s ymm9_1, ymm9_1 <s (12312)@16,
  (-(12312))@16 <s ymm9_2, ymm9_2 <s (12312)@16, (-(12312))@16 <s ymm9_3, ymm9_3 <s (12312)@16,
  (-(12312))@16 <s ymm9_4, ymm9_4 <s (12312)@16, (-(12312))@16 <s ymm9_5, ymm9_5 <s (12312)@16,
  (-(12312))@16 <s ymm9_6, ymm9_6 <s (12312)@16, (-(12312))@16 <s ymm9_7, ymm9_7 <s (12312)@16,
  (-(12312))@16 <s ymm9_8, ymm9_8 <s (12312)@16, (-(12312))@16 <s ymm9_9, ymm9_9 <s (12312)@16,
  (-(12312))@16 <s ymm9_a, ymm9_a <s (12312)@16, (-(12312))@16 <s ymm9_b, ymm9_b <s (12312)@16,
  (-(12312))@16 <s ymm9_c, ymm9_c <s (12312)@16, (-(12312))@16 <s ymm9_d, ymm9_d <s (12312)@16,
  (-(12312))@16 <s ymm9_e, ymm9_e <s (12312)@16, (-(12312))@16 <s ymm9_f, ymm9_f <s (12312)@16,
  (-(12312))@16 <s ymm10_0, ymm10_0 <s (12312)@16, (-(12312))@16 <s ymm10_1, ymm10_1 <s (12312)@16,
  (-(12312))@16 <s ymm10_2, ymm10_2 <s (12312)@16, (-(12312))@16 <s ymm10_3, ymm10_3 <s (12312)@16,
  (-(12312))@16 <s ymm10_4, ymm10_4 <s (12312)@16, (-(12312))@16 <s ymm10_5, ymm10_5 <s (12312)@16,
  (-(12312))@16 <s ymm10_6, ymm10_6 <s (12312)@16, (-(12312))@16 <s ymm10_7, ymm10_7 <s (12312)@16,
  (-(12312))@16 <s ymm10_8, ymm10_8 <s (12312)@16, (-(12312))@16 <s ymm10_9, ymm10_9 <s (12312)@16,
  (-(12312))@16 <s ymm10_a, ymm10_a <s (12312)@16, (-(12312))@16 <s ymm10_b, ymm10_b <s (12312)@16,
  (-(12312))@16 <s ymm10_c, ymm10_c <s (12312)@16, (-(12312))@16 <s ymm10_d, ymm10_d <s (12312)@16,
  (-(12312))@16 <s ymm10_e, ymm10_e <s (12312)@16, (-(12312))@16 <s ymm10_f, ymm10_f <s (12312)@16,
  (-(12312))@16 <s ymm11_0, ymm11_0 <s (12312)@16, (-(12312))@16 <s ymm11_1, ymm11_1 <s (12312)@16,
  (-(12312))@16 <s ymm11_2, ymm11_2 <s (12312)@16, (-(12312))@16 <s ymm11_3, ymm11_3 <s (12312)@16,
  (-(12312))@16 <s ymm11_4, ymm11_4 <s (12312)@16, (-(12312))@16 <s ymm11_5, ymm11_5 <s (12312)@16,
  (-(12312))@16 <s ymm11_6, ymm11_6 <s (12312)@16, (-(12312))@16 <s ymm11_7, ymm11_7 <s (12312)@16,
  (-(12312))@16 <s ymm11_8, ymm11_8 <s (12312)@16, (-(12312))@16 <s ymm11_9, ymm11_9 <s (12312)@16,
  (-(12312))@16 <s ymm11_a, ymm11_a <s (12312)@16, (-(12312))@16 <s ymm11_b, ymm11_b <s (12312)@16,
  (-(12312))@16 <s ymm11_c, ymm11_c <s (12312)@16, (-(12312))@16 <s ymm11_d, ymm11_d <s (12312)@16,
  (-(12312))@16 <s ymm11_e, ymm11_e <s (12312)@16, (-(12312))@16 <s ymm11_f, ymm11_f <s (12312)@16
];

(* ===== Start of level 2, off 0 ===== *)
(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x555555557e9c *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm10;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm5;
mov %ymm7 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x555555557ea2 *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm10;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm5;
mov %ymm10 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x555555557ea8 *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm11;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm6;
mov %ymm5 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x555555557eae *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm11;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm6;
mov %ymm11 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vmovdqa 0x180(%rdx),%ymm15                      #! EA = L0x555555560880; Value = 0x1190119011901190; PC = 0x555555557eb4 *)
mov %ymm15 [L0x555555560880, L0x555555560882, L0x555555560884, L0x555555560886, L0x555555560888, L0x55555556088a, L0x55555556088c, L0x55555556088e, L0x555555560890, L0x555555560892, L0x555555560894, L0x555555560896, L0x555555560898, L0x55555556089a, L0x55555556089c, L0x55555556089e];
(* vmovdqa 0x1a0(%rdx),%ymm6                       #! EA = L0x5555555608a0; Value = 0xf190f190f190f190; PC = 0x555555557ebc *)
mov %ymm6 [L0x5555555608a0, L0x5555555608a2, L0x5555555608a4, L0x5555555608a6, L0x5555555608a8, L0x5555555608aa, L0x5555555608ac, L0x5555555608ae, L0x5555555608b0, L0x5555555608b2, L0x5555555608b4, L0x5555555608b6, L0x5555555608b8, L0x5555555608ba, L0x5555555608bc, L0x5555555608be];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x555555557ec4 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x555555557ec9 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x555555557ece *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x555555557ed3 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm6,%ymm7,%ymm7                       #! PC = 0x555555557ed8 *)
smull %mulH %mulLymm7 %ymm6 %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw %ymm6,%ymm10,%ymm10                     #! PC = 0x555555557edc *)
smull %mulH %mulLymm10 %ymm6 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm6,%ymm5,%ymm5                       #! PC = 0x555555557ee0 *)
smull %mulH %mulLymm5 %ymm6 %ymm5;
mov [mulLymm5_0, mulLymm5_1, mulLymm5_2, mulLymm5_3, mulLymm5_4, mulLymm5_5, mulLymm5_6, mulLymm5_7, mulLymm5_8, mulLymm5_9, mulLymm5_a, mulLymm5_b, mulLymm5_c, mulLymm5_d, mulLymm5_e, mulLymm5_f] %mulLymm5;
mov %ymm5 %mulH;
(* vpmulhw %ymm6,%ymm11,%ymm11                     #! PC = 0x555555557ee4 *)
smull %mulH %mulLymm11 %ymm6 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x555555557ee8 *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm8;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm3;
mov %ymm6 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x555555557eee *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm8;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm3;
mov %ymm8 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x555555557ef4 *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm9;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm4;
mov %ymm3 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x555555557efa *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm9;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm4;
mov %ymm9 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557f00 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557f04 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557f08 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557f0c *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
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
add %ymm4 %ymm6 %ymm7;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x555555557f14 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x555555557f18 *)
add %ymm6 %ymm8 %ymm10;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x555555557f1d *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x555555557f22 *)
add %ymm8 %ymm3 %ymm5;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x555555557f26 *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x555555557f2a *)
add %ymm3 %ymm9 %ymm11;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x555555557f2f *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555557f34 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x555555557f39 *)
add %ymm7 %ymm7 %ymm12;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555557f3e *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x555555557f43 *)
add %ymm10 %ymm10 %ymm13;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x555555557f48 *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555557f4d *)
add %ymm5 %ymm5 %ymm14;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x555555557f52 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555557f57 *)
add %ymm11 %ymm11 %ymm15;
(* ===== End of level 2, off 0 ===== *)

(* ecut 2, rcut 2 *)

mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
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
  [7681, x**32 - (-527)],
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
  [7681, x**32 - (527)],
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
  [7681, x**32 - (849)],
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
  [7681, x**32 - (-849)]
] && and [
  (-(16812))@16 <s ymm4_0, ymm4_0 <s (16812)@16, (-(16812))@16 <s ymm4_1, ymm4_1 <s (16812)@16,
  (-(16812))@16 <s ymm4_2, ymm4_2 <s (16812)@16, (-(16812))@16 <s ymm4_3, ymm4_3 <s (16812)@16,
  (-(16812))@16 <s ymm4_4, ymm4_4 <s (16812)@16, (-(16812))@16 <s ymm4_5, ymm4_5 <s (16812)@16,
  (-(16812))@16 <s ymm4_6, ymm4_6 <s (16812)@16, (-(16812))@16 <s ymm4_7, ymm4_7 <s (16812)@16,
  (-(16812))@16 <s ymm6_0, ymm6_0 <s (16812)@16, (-(16812))@16 <s ymm6_1, ymm6_1 <s (16812)@16,
  (-(16812))@16 <s ymm6_2, ymm6_2 <s (16812)@16, (-(16812))@16 <s ymm6_3, ymm6_3 <s (16812)@16,
  (-(16812))@16 <s ymm6_4, ymm6_4 <s (16812)@16, (-(16812))@16 <s ymm6_5, ymm6_5 <s (16812)@16,
  (-(16812))@16 <s ymm6_6, ymm6_6 <s (16812)@16, (-(16812))@16 <s ymm6_7, ymm6_7 <s (16812)@16,
  (-(16812))@16 <s ymm8_0, ymm8_0 <s (16812)@16, (-(16812))@16 <s ymm8_1, ymm8_1 <s (16812)@16,
  (-(16812))@16 <s ymm8_2, ymm8_2 <s (16812)@16, (-(16812))@16 <s ymm8_3, ymm8_3 <s (16812)@16,
  (-(16812))@16 <s ymm8_4, ymm8_4 <s (16812)@16, (-(16812))@16 <s ymm8_5, ymm8_5 <s (16812)@16,
  (-(16812))@16 <s ymm8_6, ymm8_6 <s (16812)@16, (-(16812))@16 <s ymm8_7, ymm8_7 <s (16812)@16,
  (-(16812))@16 <s ymm3_0, ymm3_0 <s (16812)@16, (-(16812))@16 <s ymm3_1, ymm3_1 <s (16812)@16,
  (-(16812))@16 <s ymm3_2, ymm3_2 <s (16812)@16, (-(16812))@16 <s ymm3_3, ymm3_3 <s (16812)@16,
  (-(16812))@16 <s ymm3_4, ymm3_4 <s (16812)@16, (-(16812))@16 <s ymm3_5, ymm3_5 <s (16812)@16,
  (-(16812))@16 <s ymm3_6, ymm3_6 <s (16812)@16, (-(16812))@16 <s ymm3_7, ymm3_7 <s (16812)@16,
  (-(16812))@16 <s ymm7_0, ymm7_0 <s (16812)@16, (-(16812))@16 <s ymm7_1, ymm7_1 <s (16812)@16,
  (-(16812))@16 <s ymm7_2, ymm7_2 <s (16812)@16, (-(16812))@16 <s ymm7_3, ymm7_3 <s (16812)@16,
  (-(16812))@16 <s ymm7_4, ymm7_4 <s (16812)@16, (-(16812))@16 <s ymm7_5, ymm7_5 <s (16812)@16,
  (-(16812))@16 <s ymm7_6, ymm7_6 <s (16812)@16, (-(16812))@16 <s ymm7_7, ymm7_7 <s (16812)@16,
  (-(16812))@16 <s ymm10_0, ymm10_0 <s (16812)@16, (-(16812))@16 <s ymm10_1, ymm10_1 <s (16812)@16,
  (-(16812))@16 <s ymm10_2, ymm10_2 <s (16812)@16, (-(16812))@16 <s ymm10_3, ymm10_3 <s (16812)@16,
  (-(16812))@16 <s ymm10_4, ymm10_4 <s (16812)@16, (-(16812))@16 <s ymm10_5, ymm10_5 <s (16812)@16,
  (-(16812))@16 <s ymm10_6, ymm10_6 <s (16812)@16, (-(16812))@16 <s ymm10_7, ymm10_7 <s (16812)@16,
  (-(16812))@16 <s ymm5_0, ymm5_0 <s (16812)@16, (-(16812))@16 <s ymm5_1, ymm5_1 <s (16812)@16,
  (-(16812))@16 <s ymm5_2, ymm5_2 <s (16812)@16, (-(16812))@16 <s ymm5_3, ymm5_3 <s (16812)@16,
  (-(16812))@16 <s ymm5_4, ymm5_4 <s (16812)@16, (-(16812))@16 <s ymm5_5, ymm5_5 <s (16812)@16,
  (-(16812))@16 <s ymm5_6, ymm5_6 <s (16812)@16, (-(16812))@16 <s ymm5_7, ymm5_7 <s (16812)@16,
  (-(16812))@16 <s ymm11_0, ymm11_0 <s (16812)@16, (-(16812))@16 <s ymm11_1, ymm11_1 <s (16812)@16,
  (-(16812))@16 <s ymm11_2, ymm11_2 <s (16812)@16, (-(16812))@16 <s ymm11_3, ymm11_3 <s (16812)@16,
  (-(16812))@16 <s ymm11_4, ymm11_4 <s (16812)@16, (-(16812))@16 <s ymm11_5, ymm11_5 <s (16812)@16,
  (-(16812))@16 <s ymm11_6, ymm11_6 <s (16812)@16, (-(16812))@16 <s ymm11_7, ymm11_7 <s (16812)@16,
  (-(16350))@16 <s ymm4_8, ymm4_8 <s (16350)@16, (-(16350))@16 <s ymm4_9, ymm4_9 <s (16350)@16,
  (-(16350))@16 <s ymm4_a, ymm4_a <s (16350)@16, (-(16350))@16 <s ymm4_b, ymm4_b <s (16350)@16,
  (-(16350))@16 <s ymm4_c, ymm4_c <s (16350)@16, (-(16350))@16 <s ymm4_d, ymm4_d <s (16350)@16,
  (-(16350))@16 <s ymm4_e, ymm4_e <s (16350)@16, (-(16350))@16 <s ymm4_f, ymm4_f <s (16350)@16,
  (-(16350))@16 <s ymm6_8, ymm6_8 <s (16350)@16, (-(16350))@16 <s ymm6_9, ymm6_9 <s (16350)@16,
  (-(16350))@16 <s ymm6_a, ymm6_a <s (16350)@16, (-(16350))@16 <s ymm6_b, ymm6_b <s (16350)@16,
  (-(16350))@16 <s ymm6_c, ymm6_c <s (16350)@16, (-(16350))@16 <s ymm6_d, ymm6_d <s (16350)@16,
  (-(16350))@16 <s ymm6_e, ymm6_e <s (16350)@16, (-(16350))@16 <s ymm6_f, ymm6_f <s (16350)@16,
  (-(16350))@16 <s ymm8_8, ymm8_8 <s (16350)@16, (-(16350))@16 <s ymm8_9, ymm8_9 <s (16350)@16,
  (-(16350))@16 <s ymm8_a, ymm8_a <s (16350)@16, (-(16350))@16 <s ymm8_b, ymm8_b <s (16350)@16,
  (-(16350))@16 <s ymm8_c, ymm8_c <s (16350)@16, (-(16350))@16 <s ymm8_d, ymm8_d <s (16350)@16,
  (-(16350))@16 <s ymm8_e, ymm8_e <s (16350)@16, (-(16350))@16 <s ymm8_f, ymm8_f <s (16350)@16,
  (-(16350))@16 <s ymm3_8, ymm3_8 <s (16350)@16, (-(16350))@16 <s ymm3_9, ymm3_9 <s (16350)@16,
  (-(16350))@16 <s ymm3_a, ymm3_a <s (16350)@16, (-(16350))@16 <s ymm3_b, ymm3_b <s (16350)@16,
  (-(16350))@16 <s ymm3_c, ymm3_c <s (16350)@16, (-(16350))@16 <s ymm3_d, ymm3_d <s (16350)@16,
  (-(16350))@16 <s ymm3_e, ymm3_e <s (16350)@16, (-(16350))@16 <s ymm3_f, ymm3_f <s (16350)@16,
  (-(16350))@16 <s ymm7_8, ymm7_8 <s (16350)@16, (-(16350))@16 <s ymm7_9, ymm7_9 <s (16350)@16,
  (-(16350))@16 <s ymm7_a, ymm7_a <s (16350)@16, (-(16350))@16 <s ymm7_b, ymm7_b <s (16350)@16,
  (-(16350))@16 <s ymm7_c, ymm7_c <s (16350)@16, (-(16350))@16 <s ymm7_d, ymm7_d <s (16350)@16,
  (-(16350))@16 <s ymm7_e, ymm7_e <s (16350)@16, (-(16350))@16 <s ymm7_f, ymm7_f <s (16350)@16,
  (-(16350))@16 <s ymm10_8, ymm10_8 <s (16350)@16, (-(16350))@16 <s ymm10_9, ymm10_9 <s (16350)@16,
  (-(16350))@16 <s ymm10_a, ymm10_a <s (16350)@16, (-(16350))@16 <s ymm10_b, ymm10_b <s (16350)@16,
  (-(16350))@16 <s ymm10_c, ymm10_c <s (16350)@16, (-(16350))@16 <s ymm10_d, ymm10_d <s (16350)@16,
  (-(16350))@16 <s ymm10_e, ymm10_e <s (16350)@16, (-(16350))@16 <s ymm10_f, ymm10_f <s (16350)@16,
  (-(16350))@16 <s ymm5_8, ymm5_8 <s (16350)@16, (-(16350))@16 <s ymm5_9, ymm5_9 <s (16350)@16,
  (-(16350))@16 <s ymm5_a, ymm5_a <s (16350)@16, (-(16350))@16 <s ymm5_b, ymm5_b <s (16350)@16,
  (-(16350))@16 <s ymm5_c, ymm5_c <s (16350)@16, (-(16350))@16 <s ymm5_d, ymm5_d <s (16350)@16,
  (-(16350))@16 <s ymm5_e, ymm5_e <s (16350)@16, (-(16350))@16 <s ymm5_f, ymm5_f <s (16350)@16,
  (-(16350))@16 <s ymm11_8, ymm11_8 <s (16350)@16, (-(16350))@16 <s ymm11_9, ymm11_9 <s (16350)@16,
  (-(16350))@16 <s ymm11_a, ymm11_a <s (16350)@16, (-(16350))@16 <s ymm11_b, ymm11_b <s (16350)@16,
  (-(16350))@16 <s ymm11_c, ymm11_c <s (16350)@16, (-(16350))@16 <s ymm11_d, ymm11_d <s (16350)@16,
  (-(16350))@16 <s ymm11_e, ymm11_e <s (16350)@16, (-(16350))@16 <s ymm11_f, ymm11_f <s (16350)@16
];

(* ===== Start of level 3, off 0 ===== *)
(* vpunpcklqdq %ymm7,%ymm4,%ymm9                   #! PC = 0x555555557f5c *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm7;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm4;
mov %ymm9 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x555555557f60 *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm7;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm4;
mov %ymm7 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x555555557f64 *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm10;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm6;
mov %ymm4 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x555555557f69 *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm10;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm6;
mov %ymm10 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpunpcklqdq %ymm5,%ymm8,%ymm6                   #! PC = 0x555555557f6e *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm5;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm8;
mov %ymm6 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x555555557f72 *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm5;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm8;
mov %ymm5 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x555555557f76 *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm11;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm3;
mov %ymm8 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x555555557f7b *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm11;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm3;
mov %ymm11 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpmullw 0x240(%rdx),%ymm9,%ymm12                #! EA = L0x555555560940; Value = 0xf8c57fe2fdeffff7; PC = 0x555555557f80 *)
smull %mulHymm9 %mulL [L0x555555560940, L0x555555560942, L0x555555560944, L0x555555560946, L0x555555560948, L0x55555556094a, L0x55555556094c, L0x55555556094e, L0x555555560950, L0x555555560952, L0x555555560954, L0x555555560956, L0x555555560958, L0x55555556095a, L0x55555556095c, L0x55555556095e] %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw 0x280(%rdx),%ymm7,%ymm13                #! EA = L0x555555560980; Value = 0xe767de9266b03f97; PC = 0x555555557f88 *)
smull %mulHymm7 %mulL [L0x555555560980, L0x555555560982, L0x555555560984, L0x555555560986, L0x555555560988, L0x55555556098a, L0x55555556098c, L0x55555556098e, L0x555555560990, L0x555555560992, L0x555555560994, L0x555555560996, L0x555555560998, L0x55555556099a, L0x55555556099c, L0x55555556099e] %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw 0x2c0(%rdx),%ymm4,%ymm14                #! EA = L0x5555555609c0; Value = 0x52b0267fa9e90b00; PC = 0x555555557f90 *)
smull %mulHymm4 %mulL [L0x5555555609c0, L0x5555555609c2, L0x5555555609c4, L0x5555555609c6, L0x5555555609c8, L0x5555555609ca, L0x5555555609cc, L0x5555555609ce, L0x5555555609d0, L0x5555555609d2, L0x5555555609d4, L0x5555555609d6, L0x5555555609d8, L0x5555555609da, L0x5555555609dc, L0x5555555609de] %ymm4;
cast %ymm14@sint16[16] %mulL;
(* vpmullw 0x300(%rdx),%ymm10,%ymm15               #! EA = L0x555555560a00; Value = 0xb4f11790a16a06bc; PC = 0x555555557f98 *)
smull %mulHymm10 %mulL [L0x555555560a00, L0x555555560a02, L0x555555560a04, L0x555555560a06, L0x555555560a08, L0x555555560a0a, L0x555555560a0c, L0x555555560a0e, L0x555555560a10, L0x555555560a12, L0x555555560a14, L0x555555560a16, L0x555555560a18, L0x555555560a1a, L0x555555560a1c, L0x555555560a1e] %ymm10;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw 0x260(%rdx),%ymm9,%ymm9                 #! EA = L0x555555560960; Value = 0x0ec5fbe2ffeff1f7; PC = 0x555555557fa0 *)
smull %mulH %mulLymm9 [L0x555555560960, L0x555555560962, L0x555555560964, L0x555555560966, L0x555555560968, L0x55555556096a, L0x55555556096c, L0x55555556096e, L0x555555560970, L0x555555560972, L0x555555560974, L0x555555560976, L0x555555560978, L0x55555556097a, L0x55555556097c, L0x55555556097e] %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw 0x2a0(%rdx),%ymm7,%ymm7                 #! EA = L0x5555555609a0; Value = 0xf967fa9206b0f197; PC = 0x555555557fa8 *)
smull %mulH %mulLymm7 [L0x5555555609a0, L0x5555555609a2, L0x5555555609a4, L0x5555555609a6, L0x5555555609a8, L0x5555555609aa, L0x5555555609ac, L0x5555555609ae, L0x5555555609b0, L0x5555555609b2, L0x5555555609b4, L0x5555555609b6, L0x5555555609b8, L0x5555555609ba, L0x5555555609bc, L0x5555555609be] %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw 0x2e0(%rdx),%ymm4,%ymm4                 #! EA = L0x5555555609e0; Value = 0xf2b0087ff7e90b00; PC = 0x555555557fb0 *)
smull %mulH %mulLymm4 [L0x5555555609e0, L0x5555555609e2, L0x5555555609e4, L0x5555555609e6, L0x5555555609e8, L0x5555555609ea, L0x5555555609ec, L0x5555555609ee, L0x5555555609f0, L0x5555555609f2, L0x5555555609f4, L0x5555555609f6, L0x5555555609f8, L0x5555555609fa, L0x5555555609fc, L0x5555555609fe] %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw 0x320(%rdx),%ymm10,%ymm10               #! EA = L0x555555560a20; Value = 0xf2f1f7900d6a0ebc; PC = 0x555555557fb8 *)
smull %mulH %mulLymm10 [L0x555555560a20, L0x555555560a22, L0x555555560a24, L0x555555560a26, L0x555555560a28, L0x555555560a2a, L0x555555560a2c, L0x555555560a2e, L0x555555560a30, L0x555555560a32, L0x555555560a34, L0x555555560a36, L0x555555560a38, L0x555555560a3a, L0x555555560a3c, L0x555555560a3e] %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555557fc0 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555557fc4 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555557fc8 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555557fcc *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x555555557fd0 *)
sub %ymm9 %ymm9 %ymm12;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x555555557fd5 *)
sub %ymm7 %ymm7 %ymm13;
(* vpsubw %ymm14,%ymm4,%ymm4                       #! PC = 0x555555557fda *)
sub %ymm4 %ymm4 %ymm14;
(* vpsubw %ymm15,%ymm10,%ymm10                     #! PC = 0x555555557fdf *)
sub %ymm10 %ymm10 %ymm15;
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
smull %mulHymm6 %mulL [L0x555555560a40, L0x555555560a42, L0x555555560a44, L0x555555560a46, L0x555555560a48, L0x555555560a4a, L0x555555560a4c, L0x555555560a4e, L0x555555560a50, L0x555555560a52, L0x555555560a54, L0x555555560a56, L0x555555560a58, L0x555555560a5a, L0x555555560a5c, L0x555555560a5e] %ymm6;
cast %ymm12@sint16[16] %mulL;
(* vpmullw 0x380(%rdx),%ymm5,%ymm13                #! EA = L0x555555560a80; Value = 0xc0c6a003edf0524a; PC = 0x555555557fec *)
smull %mulHymm5 %mulL [L0x555555560a80, L0x555555560a82, L0x555555560a84, L0x555555560a86, L0x555555560a88, L0x555555560a8a, L0x555555560a8c, L0x555555560a8e, L0x555555560a90, L0x555555560a92, L0x555555560a94, L0x555555560a96, L0x555555560a98, L0x555555560a9a, L0x555555560a9c, L0x555555560a9e] %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw 0x3c0(%rdx),%ymm8,%ymm14                #! EA = L0x555555560ac0; Value = 0x397e6827a2b6b00b; PC = 0x555555557ff4 *)
smull %mulHymm8 %mulL [L0x555555560ac0, L0x555555560ac2, L0x555555560ac4, L0x555555560ac6, L0x555555560ac8, L0x555555560aca, L0x555555560acc, L0x555555560ace, L0x555555560ad0, L0x555555560ad2, L0x555555560ad4, L0x555555560ad6, L0x555555560ad8, L0x555555560ada, L0x555555560adc, L0x555555560ade] %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw 0x400(%rdx),%ymm11,%ymm15               #! EA = L0x555555560b00; Value = 0x8049bbe04939ec89; PC = 0x555555557ffc *)
smull %mulHymm11 %mulL [L0x555555560b00, L0x555555560b02, L0x555555560b04, L0x555555560b06, L0x555555560b08, L0x555555560b0a, L0x555555560b0c, L0x555555560b0e, L0x555555560b10, L0x555555560b12, L0x555555560b14, L0x555555560b16, L0x555555560b18, L0x555555560b1a, L0x555555560b1c, L0x555555560b1e] %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw 0x360(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560a60; Value = 0x0c8ef2a7ff4d0079; PC = 0x555555558004 *)
smull %mulH %mulLymm6 [L0x555555560a60, L0x555555560a62, L0x555555560a64, L0x555555560a66, L0x555555560a68, L0x555555560a6a, L0x555555560a6c, L0x555555560a6e, L0x555555560a70, L0x555555560a72, L0x555555560a74, L0x555555560a76, L0x555555560a78, L0x555555560a7a, L0x555555560a7c, L0x555555560a7e] %ymm6;
mov [mulLymm6_0, mulLymm6_1, mulLymm6_2, mulLymm6_3, mulLymm6_4, mulLymm6_5, mulLymm6_6, mulLymm6_7, mulLymm6_8, mulLymm6_9, mulLymm6_a, mulLymm6_b, mulLymm6_c, mulLymm6_d, mulLymm6_e, mulLymm6_f] %mulLymm6;
mov %ymm6 %mulH;
(* vpmulhw 0x3a0(%rdx),%ymm5,%ymm5                 #! EA = L0x555555560aa0; Value = 0xf4c6fa030df0fe4a; PC = 0x55555555800c *)
smull %mulH %mulLymm5 [L0x555555560aa0, L0x555555560aa2, L0x555555560aa4, L0x555555560aa6, L0x555555560aa8, L0x555555560aaa, L0x555555560aac, L0x555555560aae, L0x555555560ab0, L0x555555560ab2, L0x555555560ab4, L0x555555560ab6, L0x555555560ab8, L0x555555560aba, L0x555555560abc, L0x555555560abe] %ymm5;
mov [mulLymm5_0, mulLymm5_1, mulLymm5_2, mulLymm5_3, mulLymm5_4, mulLymm5_5, mulLymm5_6, mulLymm5_7, mulLymm5_8, mulLymm5_9, mulLymm5_a, mulLymm5_b, mulLymm5_c, mulLymm5_d, mulLymm5_e, mulLymm5_f] %mulLymm5;
mov %ymm5 %mulH;
(* vpmulhw 0x3e0(%rdx),%ymm8,%ymm8                 #! EA = L0x555555560ae0; Value = 0xfd7efa27f6b6fa0b; PC = 0x555555558014 *)
smull %mulH %mulLymm8 [L0x555555560ae0, L0x555555560ae2, L0x555555560ae4, L0x555555560ae6, L0x555555560ae8, L0x555555560aea, L0x555555560aec, L0x555555560aee, L0x555555560af0, L0x555555560af2, L0x555555560af4, L0x555555560af6, L0x555555560af8, L0x555555560afa, L0x555555560afc, L0x555555560afe] %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw 0x420(%rdx),%ymm11,%ymm11               #! EA = L0x555555560b20; Value = 0x0e49fbe0f739fa89; PC = 0x55555555801c *)
smull %mulH %mulLymm11 [L0x555555560b20, L0x555555560b22, L0x555555560b24, L0x555555560b26, L0x555555560b28, L0x555555560b2a, L0x555555560b2c, L0x555555560b2e, L0x555555560b30, L0x555555560b32, L0x555555560b34, L0x555555560b36, L0x555555560b38, L0x555555560b3a, L0x555555560b3c, L0x555555560b3e] %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558024 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558028 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555555802c *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558030 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x555555558034 *)
sub %ymm6 %ymm6 %ymm12;
(* vpsubw %ymm13,%ymm5,%ymm5                       #! PC = 0x555555558039 *)
sub %ymm5 %ymm5 %ymm13;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555555803e *)
sub %ymm8 %ymm8 %ymm14;
(* vpsubw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555558043 *)
sub %ymm11 %ymm11 %ymm15;
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
add %ymm3 %ymm9 %ymm6;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x55555555804c *)
sub %ymm6 %ymm9 %ymm6;
(* vpaddw %ymm5,%ymm7,%ymm9                        #! PC = 0x555555558050 *)
add %ymm9 %ymm7 %ymm5;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x555555558054 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x555555558058 *)
add %ymm7 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555555805d *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x555555558062 *)
add %ymm4 %ymm10 %ymm11;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558067 *)
sub %ymm11 %ymm10 %ymm11;
(* ===== End of level 3, off 0 ===== *)

(* ecut 3, rcut 3 *)

mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((1115*x)**1) + ymm3_2*((1115*x)**2) + ymm3_3*((1115*x)**3) +
    ymm9_0*((1115*x)**4) + ymm9_1*((1115*x)**5) + ymm9_2*((1115*x)**6) + ymm9_3*((1115*x)**7) +
    ymm7_0*((1115*x)**8) + ymm7_1*((1115*x)**9) + ymm7_2*((1115*x)**10) + ymm7_3*((1115*x)**11) +
    ymm4_0*((1115*x)**12) + ymm4_1*((1115*x)**13) + ymm4_2*((1115*x)**14) + ymm4_3*((1115*x)**15)
  )
  [7681, x**16 - (1366)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((1115*x)**1) + ymm6_2*((1115*x)**2) + ymm6_3*((1115*x)**3) +
    ymm5_0*((1115*x)**4) + ymm5_1*((1115*x)**5) + ymm5_2*((1115*x)**6) + ymm5_3*((1115*x)**7) +
    ymm8_0*((1115*x)**8) + ymm8_1*((1115*x)**9) + ymm8_2*((1115*x)**10) + ymm8_3*((1115*x)**11) +
    ymm11_0*((1115*x)**12) + ymm11_1*((1115*x)**13) + ymm11_2*((1115*x)**14) + ymm11_3*((1115*x)**15)
  )
  [7681, x**16 - (-1366)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((738*x)**1) + ymm3_6*((738*x)**2) + ymm3_7*((738*x)**3) +
    ymm9_4*((738*x)**4) + ymm9_5*((738*x)**5) + ymm9_6*((738*x)**6) + ymm9_7*((738*x)**7) +
    ymm7_4*((738*x)**8) + ymm7_5*((738*x)**9) + ymm7_6*((738*x)**10) + ymm7_7*((738*x)**11) +
    ymm4_4*((738*x)**12) + ymm4_5*((738*x)**13) + ymm4_6*((738*x)**14) + ymm4_7*((738*x)**15)
  )
  [7681, x**16 - (-2784)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((738*x)**1) + ymm6_6*((738*x)**2) + ymm6_7*((738*x)**3) +
    ymm5_4*((738*x)**4) + ymm5_5*((738*x)**5) + ymm5_6*((738*x)**6) + ymm5_7*((738*x)**7) +
    ymm8_4*((738*x)**8) + ymm8_5*((738*x)**9) + ymm8_6*((738*x)**10) + ymm8_7*((738*x)**11) +
    ymm11_4*((738*x)**12) + ymm11_5*((738*x)**13) + ymm11_6*((738*x)**14) + ymm11_7*((738*x)**15)
  )
  [7681, x**16 - (2784)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((7145*x)**1) + ymm3_a*((7145*x)**2) + ymm3_b*((7145*x)**3) +
    ymm9_8*((7145*x)**4) + ymm9_9*((7145*x)**5) + ymm9_a*((7145*x)**6) + ymm9_b*((7145*x)**7) +
    ymm7_8*((7145*x)**8) + ymm7_9*((7145*x)**9) + ymm7_a*((7145*x)**10) + ymm7_b*((7145*x)**11) +
    ymm4_8*((7145*x)**12) + ymm4_9*((7145*x)**13) + ymm4_a*((7145*x)**14) + ymm4_b*((7145*x)**15)
  )
  [7681, x**16 - (-2138)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((7145*x)**1) + ymm6_a*((7145*x)**2) + ymm6_b*((7145*x)**3) +
    ymm5_8*((7145*x)**4) + ymm5_9*((7145*x)**5) + ymm5_a*((7145*x)**6) + ymm5_b*((7145*x)**7) +
    ymm8_8*((7145*x)**8) + ymm8_9*((7145*x)**9) + ymm8_a*((7145*x)**10) + ymm8_b*((7145*x)**11) +
    ymm11_8*((7145*x)**12) + ymm11_9*((7145*x)**13) + ymm11_a*((7145*x)**14) + ymm11_b*((7145*x)**15)
  )
  [7681, x**16 - (2138)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((217*x)**1) + ymm3_e*((217*x)**2) + ymm3_f*((217*x)**3) +
    ymm9_c*((217*x)**4) + ymm9_d*((217*x)**5) + ymm9_e*((217*x)**6) + ymm9_f*((217*x)**7) +
    ymm7_c*((217*x)**8) + ymm7_d*((217*x)**9) + ymm7_e*((217*x)**10) + ymm7_f*((217*x)**11) +
    ymm4_c*((217*x)**12) + ymm4_d*((217*x)**13) + ymm4_e*((217*x)**14) + ymm4_f*((217*x)**15)
  )
  [7681, x**16 - (2648)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((217*x)**1) + ymm6_e*((217*x)**2) + ymm6_f*((217*x)**3) +
    ymm5_c*((217*x)**4) + ymm5_d*((217*x)**5) + ymm5_e*((217*x)**6) + ymm5_f*((217*x)**7) +
    ymm8_c*((217*x)**8) + ymm8_d*((217*x)**9) + ymm8_e*((217*x)**10) + ymm8_f*((217*x)**11) +
    ymm11_c*((217*x)**12) + ymm11_d*((217*x)**13) + ymm11_e*((217*x)**14) + ymm11_f*((217*x)**15)
  )
  [7681, x**16 - (-2648)]
] && and [
  (-(8308))@16 <=s ymm3_0, ymm3_0 <=s (8308)@16, (-(7722))@16 <=s ymm3_1, ymm3_1 <=s (7722)@16,
  (-(8770))@16 <=s ymm3_2, ymm3_2 <=s (8770)@16, (-(9467))@16 <=s ymm3_3, ymm3_3 <=s (9467)@16,
  (-(8719))@16 <=s ymm9_0, ymm9_0 <=s (8719)@16, (-(8999))@16 <=s ymm9_1, ymm9_1 <=s (8999)@16,
  (-(8416))@16 <=s ymm9_2, ymm9_2 <=s (8416)@16, (-(8810))@16 <=s ymm9_3, ymm9_3 <=s (8810)@16,
  (-(8787))@16 <=s ymm7_0, ymm7_0 <=s (8787)@16, (-(8782))@16 <=s ymm7_1, ymm7_1 <=s (8782)@16,
  (-(8602))@16 <=s ymm7_2, ymm7_2 <=s (8602)@16, (-(8690))@16 <=s ymm7_3, ymm7_3 <=s (8690)@16,
  (-(8970))@16 <=s ymm4_0, ymm4_0 <=s (8970)@16, (-(9114))@16 <=s ymm4_1, ymm4_1 <=s (9114)@16,
  (-(8472))@16 <=s ymm4_2, ymm4_2 <=s (8472)@16, (-(9407))@16 <=s ymm4_3, ymm4_3 <=s (9407)@16,
  (-(8308))@16 <=s ymm6_0, ymm6_0 <=s (8308)@16, (-(7722))@16 <=s ymm6_1, ymm6_1 <=s (7722)@16,
  (-(8770))@16 <=s ymm6_2, ymm6_2 <=s (8770)@16, (-(9467))@16 <=s ymm6_3, ymm6_3 <=s (9467)@16,
  (-(8719))@16 <=s ymm5_0, ymm5_0 <=s (8719)@16, (-(8999))@16 <=s ymm5_1, ymm5_1 <=s (8999)@16,
  (-(8416))@16 <=s ymm5_2, ymm5_2 <=s (8416)@16, (-(8810))@16 <=s ymm5_3, ymm5_3 <=s (8810)@16,
  (-(8787))@16 <=s ymm8_0, ymm8_0 <=s (8787)@16, (-(8782))@16 <=s ymm8_1, ymm8_1 <=s (8782)@16,
  (-(8602))@16 <=s ymm8_2, ymm8_2 <=s (8602)@16, (-(8690))@16 <=s ymm8_3, ymm8_3 <=s (8690)@16,
  (-(8970))@16 <=s ymm11_0, ymm11_0 <=s (8970)@16, (-(9114))@16 <=s ymm11_1, ymm11_1 <=s (9114)@16,
  (-(8472))@16 <=s ymm11_2, ymm11_2 <=s (8472)@16, (-(9407))@16 <=s ymm11_3, ymm11_3 <=s (9407)@16,
  (-(8842))@16 <=s ymm3_4, ymm3_4 <=s (8842)@16, (-(8900))@16 <=s ymm3_5, ymm3_5 <=s (8900)@16,
  (-(8789))@16 <=s ymm3_6, ymm3_6 <=s (8789)@16, (-(9149))@16 <=s ymm3_7, ymm3_7 <=s (9149)@16,
  (-(8578))@16 <=s ymm9_4, ymm9_4 <=s (8578)@16, (-(8816))@16 <=s ymm9_5, ymm9_5 <=s (8816)@16,
  (-(8580))@16 <=s ymm9_6, ymm9_6 <=s (8580)@16, (-(8951))@16 <=s ymm9_7, ymm9_7 <=s (8951)@16,
  (-(8493))@16 <=s ymm7_4, ymm7_4 <=s (8493)@16, (-(8690))@16 <=s ymm7_5, ymm7_5 <=s (8690)@16,
  (-(9444))@16 <=s ymm7_6, ymm7_6 <=s (9444)@16, (-(8348))@16 <=s ymm7_7, ymm7_7 <=s (8348)@16,
  (-(7833))@16 <=s ymm4_4, ymm4_4 <=s (7833)@16, (-(8494))@16 <=s ymm4_5, ymm4_5 <=s (8494)@16,
  (-(8266))@16 <=s ymm4_6, ymm4_6 <=s (8266)@16, (-(8242))@16 <=s ymm4_7, ymm4_7 <=s (8242)@16,
  (-(8842))@16 <=s ymm6_4, ymm6_4 <=s (8842)@16, (-(8900))@16 <=s ymm6_5, ymm6_5 <=s (8900)@16,
  (-(8789))@16 <=s ymm6_6, ymm6_6 <=s (8789)@16, (-(9149))@16 <=s ymm6_7, ymm6_7 <=s (9149)@16,
  (-(8578))@16 <=s ymm5_4, ymm5_4 <=s (8578)@16, (-(8816))@16 <=s ymm5_5, ymm5_5 <=s (8816)@16,
  (-(8580))@16 <=s ymm5_6, ymm5_6 <=s (8580)@16, (-(8951))@16 <=s ymm5_7, ymm5_7 <=s (8951)@16,
  (-(8493))@16 <=s ymm8_4, ymm8_4 <=s (8493)@16, (-(8690))@16 <=s ymm8_5, ymm8_5 <=s (8690)@16,
  (-(9444))@16 <=s ymm8_6, ymm8_6 <=s (9444)@16, (-(8348))@16 <=s ymm8_7, ymm8_7 <=s (8348)@16,
  (-(7833))@16 <=s ymm11_4, ymm11_4 <=s (7833)@16, (-(8494))@16 <=s ymm11_5, ymm11_5 <=s (8494)@16,
  (-(8266))@16 <=s ymm11_6, ymm11_6 <=s (8266)@16, (-(8242))@16 <=s ymm11_7, ymm11_7 <=s (8242)@16,
  (-(8408))@16 <=s ymm3_8, ymm3_8 <=s (8408)@16, (-(8968))@16 <=s ymm3_9, ymm3_9 <=s (8968)@16,
  (-(8970))@16 <=s ymm3_a, ymm3_a <=s (8970)@16, (-(9393))@16 <=s ymm3_b, ymm3_b <=s (9393)@16,
  (-(7935))@16 <=s ymm9_8, ymm9_8 <=s (7935)@16, (-(8351))@16 <=s ymm9_9, ymm9_9 <=s (8351)@16,
  (-(8043))@16 <=s ymm9_a, ymm9_a <=s (8043)@16, (-(8538))@16 <=s ymm9_b, ymm9_b <=s (8538)@16,
  (-(8204))@16 <=s ymm7_8, ymm7_8 <=s (8204)@16, (-(9326))@16 <=s ymm7_9, ymm7_9 <=s (9326)@16,
  (-(8902))@16 <=s ymm7_a, ymm7_a <=s (8902)@16, (-(8215))@16 <=s ymm7_b, ymm7_b <=s (8215)@16,
  (-(8319))@16 <=s ymm4_8, ymm4_8 <=s (8319)@16, (-(8570))@16 <=s ymm4_9, ymm4_9 <=s (8570)@16,
  (-(8961))@16 <=s ymm4_a, ymm4_a <=s (8961)@16, (-(8484))@16 <=s ymm4_b, ymm4_b <=s (8484)@16,
  (-(8408))@16 <=s ymm6_8, ymm6_8 <=s (8408)@16, (-(8968))@16 <=s ymm6_9, ymm6_9 <=s (8968)@16,
  (-(8970))@16 <=s ymm6_a, ymm6_a <=s (8970)@16, (-(9393))@16 <=s ymm6_b, ymm6_b <=s (9393)@16,
  (-(7935))@16 <=s ymm5_8, ymm5_8 <=s (7935)@16, (-(8351))@16 <=s ymm5_9, ymm5_9 <=s (8351)@16,
  (-(8043))@16 <=s ymm5_a, ymm5_a <=s (8043)@16, (-(8538))@16 <=s ymm5_b, ymm5_b <=s (8538)@16,
  (-(8204))@16 <=s ymm8_8, ymm8_8 <=s (8204)@16, (-(9326))@16 <=s ymm8_9, ymm8_9 <=s (9326)@16,
  (-(8902))@16 <=s ymm8_a, ymm8_a <=s (8902)@16, (-(8215))@16 <=s ymm8_b, ymm8_b <=s (8215)@16,
  (-(8319))@16 <=s ymm11_8, ymm11_8 <=s (8319)@16, (-(8570))@16 <=s ymm11_9, ymm11_9 <=s (8570)@16,
  (-(8961))@16 <=s ymm11_a, ymm11_a <=s (8961)@16, (-(8484))@16 <=s ymm11_b, ymm11_b <=s (8484)@16,
  (-(8896))@16 <=s ymm3_c, ymm3_c <=s (8896)@16, (-(9199))@16 <=s ymm3_d, ymm3_d <=s (9199)@16,
  (-(8561))@16 <=s ymm3_e, ymm3_e <=s (8561)@16, (-(8491))@16 <=s ymm3_f, ymm3_f <=s (8491)@16,
  (-(9006))@16 <=s ymm9_c, ymm9_c <=s (9006)@16, (-(8937))@16 <=s ymm9_d, ymm9_d <=s (8937)@16,
  (-(8296))@16 <=s ymm9_e, ymm9_e <=s (8296)@16, (-(8341))@16 <=s ymm9_f, ymm9_f <=s (8341)@16,
  (-(8968))@16 <=s ymm7_c, ymm7_c <=s (8968)@16, (-(8460))@16 <=s ymm7_d, ymm7_d <=s (8460)@16,
  (-(8249))@16 <=s ymm7_e, ymm7_e <=s (8249)@16, (-(9498))@16 <=s ymm7_f, ymm7_f <=s (9498)@16,
  (-(8532))@16 <=s ymm4_c, ymm4_c <=s (8532)@16, (-(7890))@16 <=s ymm4_d, ymm4_d <=s (7890)@16,
  (-(8666))@16 <=s ymm4_e, ymm4_e <=s (8666)@16, (-(8718))@16 <=s ymm4_f, ymm4_f <=s (8718)@16,
  (-(8896))@16 <=s ymm6_c, ymm6_c <=s (8896)@16, (-(9199))@16 <=s ymm6_d, ymm6_d <=s (9199)@16,
  (-(8561))@16 <=s ymm6_e, ymm6_e <=s (8561)@16, (-(8491))@16 <=s ymm6_f, ymm6_f <=s (8491)@16,
  (-(9006))@16 <=s ymm5_c, ymm5_c <=s (9006)@16, (-(8937))@16 <=s ymm5_d, ymm5_d <=s (8937)@16,
  (-(8296))@16 <=s ymm5_e, ymm5_e <=s (8296)@16, (-(8341))@16 <=s ymm5_f, ymm5_f <=s (8341)@16,
  (-(8968))@16 <=s ymm8_c, ymm8_c <=s (8968)@16, (-(8460))@16 <=s ymm8_d, ymm8_d <=s (8460)@16,
  (-(8249))@16 <=s ymm8_e, ymm8_e <=s (8249)@16, (-(9498))@16 <=s ymm8_f, ymm8_f <=s (9498)@16,
  (-(8532))@16 <=s ymm11_c, ymm11_c <=s (8532)@16, (-(7890))@16 <=s ymm11_d, ymm11_d <=s (7890)@16,
  (-(8666))@16 <=s ymm11_e, ymm11_e <=s (8666)@16, (-(8718))@16 <=s ymm11_f, ymm11_f <=s (8718)@16
];

(* ===== Start of level 4, off 0 ===== *)
(* vmovdqa 0x80(%rdx),%ymm14                       #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x55555555806c *)
mov %ymm14 [L0x555555560780, L0x555555560782, L0x555555560784, L0x555555560786, L0x555555560788, L0x55555556078a, L0x55555556078c, L0x55555556078e, L0x555555560790, L0x555555560792, L0x555555560794, L0x555555560796, L0x555555560798, L0x55555556079a, L0x55555556079c, L0x55555556079e];
(* vmovdqa 0xa0(%rdx),%ymm15                       #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x555555558074 *)
mov %ymm15 [L0x5555555607a0, L0x5555555607a2, L0x5555555607a4, L0x5555555607a6, L0x5555555607a8, L0x5555555607aa, L0x5555555607ac, L0x5555555607ae, L0x5555555607b0, L0x5555555607b2, L0x5555555607b4, L0x5555555607b6, L0x5555555607b8, L0x5555555607ba, L0x5555555607bc, L0x5555555607be];
(* vpmullw %ymm14,%ymm7,%ymm13                     #! PC = 0x55555555807c *)
smull %mulHymm7 %mulL %ymm14 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm15,%ymm7,%ymm7                      #! PC = 0x555555558081 *)
smull %mulH %mulLymm7 %ymm15 %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558086 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
sub %ymm7 %ymm7 %ymm13;
(* vpmullw %ymm14,%ymm4,%ymm13                     #! PC = 0x55555555808f *)
smull %mulHymm4 %mulL %ymm14 %ymm4;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x555555558094 *)
smull %mulH %mulLymm4 %ymm15 %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558099 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
sub %ymm4 %ymm4 %ymm13;
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x5555555580a2 *)
smull %mulHymm8 %mulL %ymm1 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x5555555580a6 *)
smull %mulHymm11 %mulL %ymm1 %ymm11;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x5555555580aa *)
smull %mulH %mulLymm8 %ymm2 %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x5555555580ae *)
smull %mulH %mulLymm11 %ymm2 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpaddw %ymm7,%ymm3,%ymm10                       #! PC = 0x5555555580b2 *)
add %ymm10 %ymm3 %ymm7;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x5555555580b6 *)
sub %ymm7 %ymm3 %ymm7;
(* vpaddw %ymm4,%ymm9,%ymm3                        #! PC = 0x5555555580ba *)
add %ymm3 %ymm9 %ymm4;
(* vpsubw %ymm4,%ymm9,%ymm4                        #! PC = 0x5555555580be *)
sub %ymm4 %ymm9 %ymm4;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555580c2 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555580c6 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
add %ymm9 %ymm6 %ymm8;
(* vpsubw %ymm8,%ymm6,%ymm8                        #! PC = 0x5555555580cf *)
sub %ymm8 %ymm6 %ymm8;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x5555555580d4 *)
add %ymm6 %ymm5 %ymm11;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x5555555580d9 *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555580de *)
sub %ymm9 %ymm9 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x5555555580e3 *)
add %ymm8 %ymm8 %ymm12;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x5555555580e8 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x5555555580ed *)
add %ymm11 %ymm11 %ymm13;
(* ===== End of level 4, off 0 ===== *)

(* ecut 4, rcut 4 *)

mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((1115*x)**1) + ymm10_2*((1115*x)**2) + ymm10_3*((1115*x)**3) +
    ymm3_0*((1115*x)**4) + ymm3_1*((1115*x)**5) + ymm3_2*((1115*x)**6) + ymm3_3*((1115*x)**7)
  )
  [7681, x**8 - (-330)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((1115*x)**1) + ymm7_2*((1115*x)**2) + ymm7_3*((1115*x)**3) +
    ymm4_0*((1115*x)**4) + ymm4_1*((1115*x)**5) + ymm4_2*((1115*x)**6) + ymm4_3*((1115*x)**7)
  )
  [7681, x**8 - (330)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((1115*x)**1) + ymm9_2*((1115*x)**2) + ymm9_3*((1115*x)**3) +
    ymm6_0*((1115*x)**4) + ymm6_1*((1115*x)**5) + ymm6_2*((1115*x)**6) + ymm6_3*((1115*x)**7)
  )
  [7681, x**8 - (2645)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm8_1*((1115*x)**1) + ymm8_2*((1115*x)**2) + ymm8_3*((1115*x)**3) +
    ymm11_0*((1115*x)**4) + ymm11_1*((1115*x)**5) + ymm11_2*((1115*x)**6) + ymm11_3*((1115*x)**7)
  )
  [7681, x**8 - (-2645)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((738*x)**1) + ymm10_6*((738*x)**2) + ymm10_7*((738*x)**3) +
    ymm3_4*((738*x)**4) + ymm3_5*((738*x)**5) + ymm3_6*((738*x)**6) + ymm3_7*((738*x)**7)
  )
  [7681, x**8 - (2273)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((738*x)**1) + ymm7_6*((738*x)**2) + ymm7_7*((738*x)**3) +
    ymm4_4*((738*x)**4) + ymm4_5*((738*x)**5) + ymm4_6*((738*x)**6) + ymm4_7*((738*x)**7)
  )
  [7681, x**8 - (-2273)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((738*x)**1) + ymm9_6*((738*x)**2) + ymm9_7*((738*x)**3) +
    ymm6_4*((738*x)**4) + ymm6_5*((738*x)**5) + ymm6_6*((738*x)**6) + ymm6_7*((738*x)**7)
  )
  [7681, x**8 - (-878)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm8_5*((738*x)**1) + ymm8_6*((738*x)**2) + ymm8_7*((738*x)**3) +
    ymm11_4*((738*x)**4) + ymm11_5*((738*x)**5) + ymm11_6*((738*x)**6) + ymm11_7*((738*x)**7)
  )
  [7681, x**8 - (878)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((7145*x)**1) + ymm10_a*((7145*x)**2) + ymm10_b*((7145*x)**3) +
    ymm3_8*((7145*x)**4) + ymm3_9*((7145*x)**5) + ymm3_a*((7145*x)**6) + ymm3_b*((7145*x)**7)
  )
  [7681, x**8 - (-2753)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((7145*x)**1) + ymm7_a*((7145*x)**2) + ymm7_b*((7145*x)**3) +
    ymm4_8*((7145*x)**4) + ymm4_9*((7145*x)**5) + ymm4_a*((7145*x)**6) + ymm4_b*((7145*x)**7)
  )
  [7681, x**8 - (2753)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((7145*x)**1) + ymm9_a*((7145*x)**2) + ymm9_b*((7145*x)**3) +
    ymm6_8*((7145*x)**4) + ymm6_9*((7145*x)**5) + ymm6_a*((7145*x)**6) + ymm6_b*((7145*x)**7)
  )
  [7681, x**8 - (-3654)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm8_9*((7145*x)**1) + ymm8_a*((7145*x)**2) + ymm8_b*((7145*x)**3) +
    ymm11_8*((7145*x)**4) + ymm11_9*((7145*x)**5) + ymm11_a*((7145*x)**6) + ymm11_b*((7145*x)**7)
  )
  [7681, x**8 - (3654)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((217*x)**1) + ymm10_e*((217*x)**2) + ymm10_f*((217*x)**3) +
    ymm3_c*((217*x)**4) + ymm3_d*((217*x)**5) + ymm3_e*((217*x)**6) + ymm3_f*((217*x)**7)
  )
  [7681, x**8 - (365)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((217*x)**1) + ymm7_e*((217*x)**2) + ymm7_f*((217*x)**3) +
    ymm4_c*((217*x)**4) + ymm4_d*((217*x)**5) + ymm4_e*((217*x)**6) + ymm4_f*((217*x)**7)
  )
  [7681, x**8 - (-365)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((217*x)**1) + ymm9_e*((217*x)**2) + ymm9_f*((217*x)**3) +
    ymm6_c*((217*x)**4) + ymm6_d*((217*x)**5) + ymm6_e*((217*x)**6) + ymm6_f*((217*x)**7)
  )
  [7681, x**8 - (1846)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm8_d*((217*x)**1) + ymm8_e*((217*x)**2) + ymm8_f*((217*x)**3) +
    ymm11_c*((217*x)**4) + ymm11_d*((217*x)**5) + ymm11_e*((217*x)**6) + ymm11_f*((217*x)**7)
  )
  [7681, x**8 - (-1846)]
] && and [
  (-(12348))@16 <=s ymm10_0, ymm10_0 <=s (12348)@16, (-(11762))@16 <=s ymm10_1, ymm10_1 <=s (11762)@16,
  (-(12810))@16 <=s ymm10_2, ymm10_2 <=s (12810)@16, (-(13507))@16 <=s ymm10_3, ymm10_3 <=s (13507)@16,
  (-(12759))@16 <=s ymm3_0, ymm3_0 <=s (12759)@16, (-(13039))@16 <=s ymm3_1, ymm3_1 <=s (13039)@16,
  (-(12456))@16 <=s ymm3_2, ymm3_2 <=s (12456)@16, (-(12850))@16 <=s ymm3_3, ymm3_3 <=s (12850)@16,
  (-(12348))@16 <=s ymm7_0, ymm7_0 <=s (12348)@16, (-(11762))@16 <=s ymm7_1, ymm7_1 <=s (11762)@16,
  (-(12810))@16 <=s ymm7_2, ymm7_2 <=s (12810)@16, (-(13507))@16 <=s ymm7_3, ymm7_3 <=s (13507)@16,
  (-(12759))@16 <=s ymm4_0, ymm4_0 <=s (12759)@16, (-(13039))@16 <=s ymm4_1, ymm4_1 <=s (13039)@16,
  (-(12456))@16 <=s ymm4_2, ymm4_2 <=s (12456)@16, (-(12850))@16 <=s ymm4_3, ymm4_3 <=s (12850)@16,
  (-(12629))@16 <=s ymm9_0, ymm9_0 <=s (12629)@16, (-(12043))@16 <=s ymm9_1, ymm9_1 <=s (12043)@16,
  (-(13075))@16 <=s ymm9_2, ymm9_2 <=s (13075)@16, (-(13788))@16 <=s ymm9_3, ymm9_3 <=s (13788)@16,
  (-(13040))@16 <=s ymm6_0, ymm6_0 <=s (13040)@16, (-(13336))@16 <=s ymm6_1, ymm6_1 <=s (13336)@16,
  (-(12721))@16 <=s ymm6_2, ymm6_2 <=s (12721)@16, (-(13172))@16 <=s ymm6_3, ymm6_3 <=s (13172)@16,
  (-(12629))@16 <=s ymm8_0, ymm8_0 <=s (12629)@16, (-(12043))@16 <=s ymm8_1, ymm8_1 <=s (12043)@16,
  (-(13075))@16 <=s ymm8_2, ymm8_2 <=s (13075)@16, (-(13788))@16 <=s ymm8_3, ymm8_3 <=s (13788)@16,
  (-(13040))@16 <=s ymm11_0, ymm11_0 <=s (13040)@16, (-(13336))@16 <=s ymm11_1, ymm11_1 <=s (13336)@16,
  (-(12721))@16 <=s ymm11_2, ymm11_2 <=s (12721)@16, (-(13172))@16 <=s ymm11_3, ymm11_3 <=s (13172)@16,
  (-(12882))@16 <=s ymm10_4, ymm10_4 <=s (12882)@16, (-(12940))@16 <=s ymm10_5, ymm10_5 <=s (12940)@16,
  (-(12829))@16 <=s ymm10_6, ymm10_6 <=s (12829)@16, (-(13189))@16 <=s ymm10_7, ymm10_7 <=s (13189)@16,
  (-(12618))@16 <=s ymm3_4, ymm3_4 <=s (12618)@16, (-(12856))@16 <=s ymm3_5, ymm3_5 <=s (12856)@16,
  (-(12620))@16 <=s ymm3_6, ymm3_6 <=s (12620)@16, (-(12991))@16 <=s ymm3_7, ymm3_7 <=s (12991)@16,
  (-(12882))@16 <=s ymm7_4, ymm7_4 <=s (12882)@16, (-(12940))@16 <=s ymm7_5, ymm7_5 <=s (12940)@16,
  (-(12829))@16 <=s ymm7_6, ymm7_6 <=s (12829)@16, (-(13189))@16 <=s ymm7_7, ymm7_7 <=s (13189)@16,
  (-(12618))@16 <=s ymm4_4, ymm4_4 <=s (12618)@16, (-(12856))@16 <=s ymm4_5, ymm4_5 <=s (12856)@16,
  (-(12620))@16 <=s ymm4_6, ymm4_6 <=s (12620)@16, (-(12991))@16 <=s ymm4_7, ymm4_7 <=s (12991)@16,
  (-(13147))@16 <=s ymm9_4, ymm9_4 <=s (13147)@16, (-(13221))@16 <=s ymm9_5, ymm9_5 <=s (13221)@16,
  (-(13151))@16 <=s ymm9_6, ymm9_6 <=s (13151)@16, (-(13454))@16 <=s ymm9_7, ymm9_7 <=s (13454)@16,
  (-(12851))@16 <=s ymm6_4, ymm6_4 <=s (12851)@16, (-(13121))@16 <=s ymm6_5, ymm6_5 <=s (13121)@16,
  (-(12869))@16 <=s ymm6_6, ymm6_6 <=s (12869)@16, (-(13240))@16 <=s ymm6_7, ymm6_7 <=s (13240)@16,
  (-(13147))@16 <=s ymm8_4, ymm8_4 <=s (13147)@16, (-(13221))@16 <=s ymm8_5, ymm8_5 <=s (13221)@16,
  (-(13151))@16 <=s ymm8_6, ymm8_6 <=s (13151)@16, (-(13454))@16 <=s ymm8_7, ymm8_7 <=s (13454)@16,
  (-(12851))@16 <=s ymm11_4, ymm11_4 <=s (12851)@16, (-(13121))@16 <=s ymm11_5, ymm11_5 <=s (13121)@16,
  (-(12869))@16 <=s ymm11_6, ymm11_6 <=s (12869)@16, (-(13240))@16 <=s ymm11_7, ymm11_7 <=s (13240)@16,
  (-(12448))@16 <=s ymm10_8, ymm10_8 <=s (12448)@16, (-(13008))@16 <=s ymm10_9, ymm10_9 <=s (13008)@16,
  (-(13010))@16 <=s ymm10_a, ymm10_a <=s (13010)@16, (-(13433))@16 <=s ymm10_b, ymm10_b <=s (13433)@16,
  (-(11975))@16 <=s ymm3_8, ymm3_8 <=s (11975)@16, (-(12391))@16 <=s ymm3_9, ymm3_9 <=s (12391)@16,
  (-(12083))@16 <=s ymm3_a, ymm3_a <=s (12083)@16, (-(12578))@16 <=s ymm3_b, ymm3_b <=s (12578)@16,
  (-(12448))@16 <=s ymm7_8, ymm7_8 <=s (12448)@16, (-(13008))@16 <=s ymm7_9, ymm7_9 <=s (13008)@16,
  (-(13010))@16 <=s ymm7_a, ymm7_a <=s (13010)@16, (-(13433))@16 <=s ymm7_b, ymm7_b <=s (13433)@16,
  (-(11975))@16 <=s ymm4_8, ymm4_8 <=s (11975)@16, (-(12391))@16 <=s ymm4_9, ymm4_9 <=s (12391)@16,
  (-(12083))@16 <=s ymm4_a, ymm4_a <=s (12083)@16, (-(12578))@16 <=s ymm4_b, ymm4_b <=s (12578)@16,
  (-(12697))@16 <=s ymm9_8, ymm9_8 <=s (12697)@16, (-(13330))@16 <=s ymm9_9, ymm9_9 <=s (13330)@16,
  (-(13291))@16 <=s ymm9_a, ymm9_a <=s (13291)@16, (-(13682))@16 <=s ymm9_b, ymm9_b <=s (13682)@16,
  (-(12224))@16 <=s ymm6_8, ymm6_8 <=s (12224)@16, (-(12656))@16 <=s ymm6_9, ymm6_9 <=s (12656)@16,
  (-(12364))@16 <=s ymm6_a, ymm6_a <=s (12364)@16, (-(12843))@16 <=s ymm6_b, ymm6_b <=s (12843)@16,
  (-(12697))@16 <=s ymm8_8, ymm8_8 <=s (12697)@16, (-(13330))@16 <=s ymm8_9, ymm8_9 <=s (13330)@16,
  (-(13291))@16 <=s ymm8_a, ymm8_a <=s (13291)@16, (-(13682))@16 <=s ymm8_b, ymm8_b <=s (13682)@16,
  (-(12224))@16 <=s ymm11_8, ymm11_8 <=s (12224)@16, (-(12656))@16 <=s ymm11_9, ymm11_9 <=s (12656)@16,
  (-(12364))@16 <=s ymm11_a, ymm11_a <=s (12364)@16, (-(12843))@16 <=s ymm11_b, ymm11_b <=s (12843)@16,
  (-(12936))@16 <=s ymm10_c, ymm10_c <=s (12936)@16, (-(13239))@16 <=s ymm10_d, ymm10_d <=s (13239)@16,
  (-(12601))@16 <=s ymm10_e, ymm10_e <=s (12601)@16, (-(12531))@16 <=s ymm10_f, ymm10_f <=s (12531)@16,
  (-(13046))@16 <=s ymm3_c, ymm3_c <=s (13046)@16, (-(12977))@16 <=s ymm3_d, ymm3_d <=s (12977)@16,
  (-(12336))@16 <=s ymm3_e, ymm3_e <=s (12336)@16, (-(12381))@16 <=s ymm3_f, ymm3_f <=s (12381)@16,
  (-(12936))@16 <=s ymm7_c, ymm7_c <=s (12936)@16, (-(13239))@16 <=s ymm7_d, ymm7_d <=s (13239)@16,
  (-(12601))@16 <=s ymm7_e, ymm7_e <=s (12601)@16, (-(12531))@16 <=s ymm7_f, ymm7_f <=s (12531)@16,
  (-(13046))@16 <=s ymm4_c, ymm4_c <=s (13046)@16, (-(12977))@16 <=s ymm4_d, ymm4_d <=s (12977)@16,
  (-(12336))@16 <=s ymm4_e, ymm4_e <=s (12336)@16, (-(12381))@16 <=s ymm4_f, ymm4_f <=s (12381)@16,
  (-(13217))@16 <=s ymm9_c, ymm9_c <=s (13217)@16, (-(13504))@16 <=s ymm9_d, ymm9_d <=s (13504)@16,
  (-(12850))@16 <=s ymm9_e, ymm9_e <=s (12850)@16, (-(12869))@16 <=s ymm9_f, ymm9_f <=s (12869)@16,
  (-(13311))@16 <=s ymm6_c, ymm6_c <=s (13311)@16, (-(13210))@16 <=s ymm6_d, ymm6_d <=s (13210)@16,
  (-(12601))@16 <=s ymm6_e, ymm6_e <=s (12601)@16, (-(12662))@16 <=s ymm6_f, ymm6_f <=s (12662)@16,
  (-(13217))@16 <=s ymm8_c, ymm8_c <=s (13217)@16, (-(13504))@16 <=s ymm8_d, ymm8_d <=s (13504)@16,
  (-(12850))@16 <=s ymm8_e, ymm8_e <=s (12850)@16, (-(12869))@16 <=s ymm8_f, ymm8_f <=s (12869)@16,
  (-(13311))@16 <=s ymm11_c, ymm11_c <=s (13311)@16, (-(13210))@16 <=s ymm11_d, ymm11_d <=s (13210)@16,
  (-(12601))@16 <=s ymm11_e, ymm11_e <=s (12601)@16, (-(12662))@16 <=s ymm11_f, ymm11_f <=s (12662)@16
];

(* ===== Start of level 5, off 0 ===== *)
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x5555555580f2 *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x5555555580f7 *)
smull %mulH %mulLymm3 %ymm15 %ymm3;
mov [mulLymm3_0, mulLymm3_1, mulLymm3_2, mulLymm3_3, mulLymm3_4, mulLymm3_5, mulLymm3_6, mulLymm3_7, mulLymm3_8, mulLymm3_9, mulLymm3_a, mulLymm3_b, mulLymm3_c, mulLymm3_d, mulLymm3_e, mulLymm3_f] %mulLymm3;
mov %ymm3 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555580fc *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
sub %ymm3 %ymm3 %ymm13;
(* vpmullw %ymm1,%ymm4,%ymm12                      #! PC = 0x555555558105 *)
smull %mulHymm4 %mulL %ymm1 %ymm4;
cast %ymm12@sint16[16] %mulL;
(* vpmullw 0x140(%rdx),%ymm6,%ymm13                #! EA = L0x555555560840; Value = 0xd792d792d792d792; PC = 0x555555558109 *)
smull %mulHymm6 %mulL [L0x555555560840, L0x555555560842, L0x555555560844, L0x555555560846, L0x555555560848, L0x55555556084a, L0x55555556084c, L0x55555556084e, L0x555555560850, L0x555555560852, L0x555555560854, L0x555555560856, L0x555555560858, L0x55555556085a, L0x55555556085c, L0x55555556085e] %ymm6;
cast %ymm13@sint16[16] %mulL;
(* vpmullw 0x1c0(%rdx),%ymm11,%ymm14               #! EA = L0x5555555608c0; Value = 0x4029402940294029; PC = 0x555555558111 *)
smull %mulHymm11 %mulL [L0x5555555608c0, L0x5555555608c2, L0x5555555608c4, L0x5555555608c6, L0x5555555608c8, L0x5555555608ca, L0x5555555608cc, L0x5555555608ce, L0x5555555608d0, L0x5555555608d2, L0x5555555608d4, L0x5555555608d6, L0x5555555608d8, L0x5555555608da, L0x5555555608dc, L0x5555555608de] %ymm11;
cast %ymm14@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm4,%ymm4                       #! PC = 0x555555558119 *)
smull %mulH %mulLymm4 %ymm2 %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw 0x160(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560860; Value = 0xf392f392f392f392; PC = 0x55555555811d *)
smull %mulH %mulLymm6 [L0x555555560860, L0x555555560862, L0x555555560864, L0x555555560866, L0x555555560868, L0x55555556086a, L0x55555556086c, L0x55555556086e, L0x555555560870, L0x555555560872, L0x555555560874, L0x555555560876, L0x555555560878, L0x55555556087a, L0x55555556087c, L0x55555556087e] %ymm6;
mov [mulLymm6_0, mulLymm6_1, mulLymm6_2, mulLymm6_3, mulLymm6_4, mulLymm6_5, mulLymm6_6, mulLymm6_7, mulLymm6_8, mulLymm6_9, mulLymm6_a, mulLymm6_b, mulLymm6_c, mulLymm6_d, mulLymm6_e, mulLymm6_f] %mulLymm6;
mov %ymm6 %mulH;
(* vpmulhw 0x1e0(%rdx),%ymm11,%ymm11               #! EA = L0x5555555608e0; Value = 0x0e290e290e290e29; PC = 0x555555558125 *)
smull %mulH %mulLymm11 [L0x5555555608e0, L0x5555555608e2, L0x5555555608e4, L0x5555555608e6, L0x5555555608e8, L0x5555555608ea, L0x5555555608ec, L0x5555555608ee, L0x5555555608f0, L0x5555555608f2, L0x5555555608f4, L0x5555555608f6, L0x5555555608f8, L0x5555555608fa, L0x5555555608fc, L0x5555555608fe] %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpaddw %ymm3,%ymm10,%ymm5                       #! PC = 0x55555555812d *)
add %ymm5 %ymm10 %ymm3;
(* vpsubw %ymm3,%ymm10,%ymm3                       #! PC = 0x555555558131 *)
sub %ymm3 %ymm10 %ymm3;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558135 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558139 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555555813d *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
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
add %ymm10 %ymm7 %ymm4;
(* vpsubw %ymm4,%ymm7,%ymm4                        #! PC = 0x555555558145 *)
sub %ymm4 %ymm7 %ymm4;
(* vpaddw %ymm6,%ymm9,%ymm7                        #! PC = 0x555555558149 *)
add %ymm7 %ymm9 %ymm6;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x55555555814d *)
sub %ymm6 %ymm9 %ymm6;
(* vpaddw %ymm11,%ymm8,%ymm9                       #! PC = 0x555555558151 *)
add %ymm9 %ymm8 %ymm11;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x555555558156 *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555555815b *)
sub %ymm10 %ymm10 %ymm12;
(* vpaddw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555558160 *)
add %ymm4 %ymm4 %ymm12;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x555555558165 *)
sub %ymm7 %ymm7 %ymm13;
(* vpaddw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555555816a *)
add %ymm6 %ymm6 %ymm13;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555555816f *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm11,%ymm11                     #! PC = 0x555555558174 *)
add %ymm11 %ymm11 %ymm14;
(* ===== End of level 5, off 0 ===== *)

(* ecut 5, rcut 5 *)

mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm5_1*((1115*x)**1) + ymm5_2*((1115*x)**2) + ymm5_3*((1115*x)**3)
  )
  [7681, x**4 - (-1908)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((1115*x)**1) + ymm3_2*((1115*x)**2) + ymm3_3*((1115*x)**3)
  )
  [7681, x**4 - (1908)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((1115*x)**1) + ymm10_2*((1115*x)**2) + ymm10_3*((1115*x)**3)
  )
  [7681, x**4 - (2724)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_0 + ymm4_1*((1115*x)**1) + ymm4_2*((1115*x)**2) + ymm4_3*((1115*x)**3)
  )
  [7681, x**4 - (-2724)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((1115*x)**1) + ymm7_2*((1115*x)**2) + ymm7_3*((1115*x)**3)
  )
  [7681, x**4 - (-2423)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((1115*x)**1) + ymm6_2*((1115*x)**2) + ymm6_3*((1115*x)**3)
  )
  [7681, x**4 - (2423)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((1115*x)**1) + ymm9_2*((1115*x)**2) + ymm9_3*((1115*x)**3)
  )
  [7681, x**4 - (1382)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_0 + ymm11_1*((1115*x)**1) + ymm11_2*((1115*x)**2) + ymm11_3*((1115*x)**3)
  )
  [7681, x**4 - (-1382)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm5_5*((738*x)**1) + ymm5_6*((738*x)**2) + ymm5_7*((738*x)**3)
  )
  [7681, x**4 - (-1381)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((738*x)**1) + ymm3_6*((738*x)**2) + ymm3_7*((738*x)**3)
  )
  [7681, x**4 - (1381)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((738*x)**1) + ymm10_6*((738*x)**2) + ymm10_7*((738*x)**3)
  )
  [7681, x**4 - (1875)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_4 + ymm4_5*((738*x)**1) + ymm4_6*((738*x)**2) + ymm4_7*((738*x)**3)
  )
  [7681, x**4 - (-1875)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((738*x)**1) + ymm7_6*((738*x)**2) + ymm7_7*((738*x)**3)
  )
  [7681, x**4 - (-695)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((738*x)**1) + ymm6_6*((738*x)**2) + ymm6_7*((738*x)**3)
  )
  [7681, x**4 - (695)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((738*x)**1) + ymm9_6*((738*x)**2) + ymm9_7*((738*x)**3)
  )
  [7681, x**4 - (799)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_4 + ymm11_5*((738*x)**1) + ymm11_6*((738*x)**2) + ymm11_7*((738*x)**3)
  )
  [7681, x**4 - (-799)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm5_9*((7145*x)**1) + ymm5_a*((7145*x)**2) + ymm5_b*((7145*x)**3)
  )
  [7681, x**4 - (-2469)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((7145*x)**1) + ymm3_a*((7145*x)**2) + ymm3_b*((7145*x)**3)
  )
  [7681, x**4 - (2469)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((7145*x)**1) + ymm10_a*((7145*x)**2) + ymm10_b*((7145*x)**3)
  )
  [7681, x**4 - (3380)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_8 + ymm4_9*((7145*x)**1) + ymm4_a*((7145*x)**2) + ymm4_b*((7145*x)**3)
  )
  [7681, x**4 - (-3380)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((7145*x)**1) + ymm7_a*((7145*x)**2) + ymm7_b*((7145*x)**3)
  )
  [7681, x**4 - (693)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((7145*x)**1) + ymm6_a*((7145*x)**2) + ymm6_b*((7145*x)**3)
  )
  [7681, x**4 - (-693)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((7145*x)**1) + ymm9_a*((7145*x)**2) + ymm9_b*((7145*x)**3)
  )
  [7681, x**4 - (-1714)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_8 + ymm11_9*((7145*x)**1) + ymm11_a*((7145*x)**2) + ymm11_b*((7145*x)**3)
  )
  [7681, x**4 - (1714)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm5_d*((217*x)**1) + ymm5_e*((217*x)**2) + ymm5_f*((217*x)**3)
  )
  [7681, x**4 - (3080)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((217*x)**1) + ymm3_e*((217*x)**2) + ymm3_f*((217*x)**3)
  )
  [7681, x**4 - (-3080)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((217*x)**1) + ymm10_e*((217*x)**2) + ymm10_f*((217*x)**3)
  )
  [7681, x**4 - (3477)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_c + ymm4_d*((217*x)**1) + ymm4_e*((217*x)**2) + ymm4_f*((217*x)**3)
  )
  [7681, x**4 - (-3477)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((217*x)**1) + ymm7_e*((217*x)**2) + ymm7_f*((217*x)**3)
  )
  [7681, x**4 - (3074)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((217*x)**1) + ymm6_e*((217*x)**2) + ymm6_f*((217*x)**3)
  )
  [7681, x**4 - (-3074)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((217*x)**1) + ymm9_e*((217*x)**2) + ymm9_f*((217*x)**3)
  )
  [7681, x**4 - (732)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_c + ymm11_d*((217*x)**1) + ymm11_e*((217*x)**2) + ymm11_f*((217*x)**3)
  )
  [7681, x**4 - (-732)]
] && and [
  (-(16787))@16 <=s ymm5_0, ymm5_0 <=s (16787)@16, (-(16201))@16 <=s ymm5_1, ymm5_1 <=s (16201)@16,
  (-(17249))@16 <=s ymm5_2, ymm5_2 <=s (17249)@16, (-(17946))@16 <=s ymm5_3, ymm5_3 <=s (17946)@16,
  (-(16787))@16 <=s ymm3_0, ymm3_0 <=s (16787)@16, (-(16201))@16 <=s ymm3_1, ymm3_1 <=s (16201)@16,
  (-(17249))@16 <=s ymm3_2, ymm3_2 <=s (17249)@16, (-(17946))@16 <=s ymm3_3, ymm3_3 <=s (17946)@16,
  (-(16904))@16 <=s ymm10_0, ymm10_0 <=s (16904)@16, (-(16334))@16 <=s ymm10_1, ymm10_1 <=s (16334)@16,
  (-(17350))@16 <=s ymm10_2, ymm10_2 <=s (17350)@16, (-(18063))@16 <=s ymm10_3, ymm10_3 <=s (18063)@16,
  (-(16904))@16 <=s ymm4_0, ymm4_0 <=s (16904)@16, (-(16334))@16 <=s ymm4_1, ymm4_1 <=s (16334)@16,
  (-(17350))@16 <=s ymm4_2, ymm4_2 <=s (17350)@16, (-(18063))@16 <=s ymm4_3, ymm4_3 <=s (18063)@16,
  (-(17036))@16 <=s ymm7_0, ymm7_0 <=s (17036)@16, (-(16525))@16 <=s ymm7_1, ymm7_1 <=s (16525)@16,
  (-(17482))@16 <=s ymm7_2, ymm7_2 <=s (17482)@16, (-(18195))@16 <=s ymm7_3, ymm7_3 <=s (18195)@16,
  (-(17036))@16 <=s ymm6_0, ymm6_0 <=s (17036)@16, (-(16525))@16 <=s ymm6_1, ymm6_1 <=s (16525)@16,
  (-(17482))@16 <=s ymm6_2, ymm6_2 <=s (17482)@16, (-(18195))@16 <=s ymm6_3, ymm6_3 <=s (18195)@16,
  (-(17165))@16 <=s ymm9_0, ymm9_0 <=s (17165)@16, (-(16604))@16 <=s ymm9_1, ymm9_1 <=s (16604)@16,
  (-(17586))@16 <=s ymm9_2, ymm9_2 <=s (17586)@16, (-(18324))@16 <=s ymm9_3, ymm9_3 <=s (18324)@16,
  (-(17165))@16 <=s ymm11_0, ymm11_0 <=s (17165)@16, (-(16604))@16 <=s ymm11_1, ymm11_1 <=s (16604)@16,
  (-(17586))@16 <=s ymm11_2, ymm11_2 <=s (17586)@16, (-(18324))@16 <=s ymm11_3, ymm11_3 <=s (18324)@16,
  (-(17321))@16 <=s ymm5_4, ymm5_4 <=s (17321)@16, (-(17379))@16 <=s ymm5_5, ymm5_5 <=s (17379)@16,
  (-(17268))@16 <=s ymm5_6, ymm5_6 <=s (17268)@16, (-(17628))@16 <=s ymm5_7, ymm5_7 <=s (17628)@16,
  (-(17321))@16 <=s ymm3_4, ymm3_4 <=s (17321)@16, (-(17379))@16 <=s ymm3_5, ymm3_5 <=s (17379)@16,
  (-(17268))@16 <=s ymm3_6, ymm3_6 <=s (17268)@16, (-(17628))@16 <=s ymm3_7, ymm3_7 <=s (17628)@16,
  (-(17438))@16 <=s ymm10_4, ymm10_4 <=s (17438)@16, (-(17496))@16 <=s ymm10_5, ymm10_5 <=s (17496)@16,
  (-(17385))@16 <=s ymm10_6, ymm10_6 <=s (17385)@16, (-(17761))@16 <=s ymm10_7, ymm10_7 <=s (17761)@16,
  (-(17438))@16 <=s ymm4_4, ymm4_4 <=s (17438)@16, (-(17496))@16 <=s ymm4_5, ymm4_5 <=s (17496)@16,
  (-(17385))@16 <=s ymm4_6, ymm4_6 <=s (17385)@16, (-(17761))@16 <=s ymm4_7, ymm4_7 <=s (17761)@16,
  (-(17554))@16 <=s ymm7_4, ymm7_4 <=s (17554)@16, (-(17628))@16 <=s ymm7_5, ymm7_5 <=s (17628)@16,
  (-(17558))@16 <=s ymm7_6, ymm7_6 <=s (17558)@16, (-(17861))@16 <=s ymm7_7, ymm7_7 <=s (17861)@16,
  (-(17554))@16 <=s ymm6_4, ymm6_4 <=s (17554)@16, (-(17628))@16 <=s ymm6_5, ymm6_5 <=s (17628)@16,
  (-(17558))@16 <=s ymm6_6, ymm6_6 <=s (17558)@16, (-(17861))@16 <=s ymm6_7, ymm6_7 <=s (17861)@16,
  (-(17683))@16 <=s ymm9_4, ymm9_4 <=s (17683)@16, (-(17757))@16 <=s ymm9_5, ymm9_5 <=s (17757)@16,
  (-(17687))@16 <=s ymm9_6, ymm9_6 <=s (17687)@16, (-(18015))@16 <=s ymm9_7, ymm9_7 <=s (18015)@16,
  (-(17683))@16 <=s ymm11_4, ymm11_4 <=s (17683)@16, (-(17757))@16 <=s ymm11_5, ymm11_5 <=s (17757)@16,
  (-(17687))@16 <=s ymm11_6, ymm11_6 <=s (17687)@16, (-(18015))@16 <=s ymm11_7, ymm11_7 <=s (18015)@16,
  (-(16887))@16 <=s ymm5_8, ymm5_8 <=s (16887)@16, (-(17447))@16 <=s ymm5_9, ymm5_9 <=s (17447)@16,
  (-(17449))@16 <=s ymm5_a, ymm5_a <=s (17449)@16, (-(17872))@16 <=s ymm5_b, ymm5_b <=s (17872)@16,
  (-(16887))@16 <=s ymm3_8, ymm3_8 <=s (16887)@16, (-(17447))@16 <=s ymm3_9, ymm3_9 <=s (17447)@16,
  (-(17449))@16 <=s ymm3_a, ymm3_a <=s (17449)@16, (-(17872))@16 <=s ymm3_b, ymm3_b <=s (17872)@16,
  (-(16947))@16 <=s ymm10_8, ymm10_8 <=s (16947)@16, (-(17548))@16 <=s ymm10_9, ymm10_9 <=s (17548)@16,
  (-(17509))@16 <=s ymm10_a, ymm10_a <=s (17509)@16, (-(17989))@16 <=s ymm10_b, ymm10_b <=s (17989)@16,
  (-(16947))@16 <=s ymm4_8, ymm4_8 <=s (16947)@16, (-(17548))@16 <=s ymm4_9, ymm4_9 <=s (17548)@16,
  (-(17509))@16 <=s ymm4_a, ymm4_a <=s (17509)@16, (-(17989))@16 <=s ymm4_b, ymm4_b <=s (17989)@16,
  (-(17104))@16 <=s ymm7_8, ymm7_8 <=s (17104)@16, (-(17737))@16 <=s ymm7_9, ymm7_9 <=s (17737)@16,
  (-(17698))@16 <=s ymm7_a, ymm7_a <=s (17698)@16, (-(18089))@16 <=s ymm7_b, ymm7_b <=s (18089)@16,
  (-(17104))@16 <=s ymm6_8, ymm6_8 <=s (17104)@16, (-(17737))@16 <=s ymm6_9, ymm6_9 <=s (17737)@16,
  (-(17698))@16 <=s ymm6_a, ymm6_a <=s (17698)@16, (-(18089))@16 <=s ymm6_b, ymm6_b <=s (18089)@16,
  (-(17183))@16 <=s ymm9_8, ymm9_8 <=s (17183)@16, (-(17841))@16 <=s ymm9_9, ymm9_9 <=s (17841)@16,
  (-(17777))@16 <=s ymm9_a, ymm9_a <=s (17777)@16, (-(18218))@16 <=s ymm9_b, ymm9_b <=s (18218)@16,
  (-(17183))@16 <=s ymm11_8, ymm11_8 <=s (17183)@16, (-(17841))@16 <=s ymm11_9, ymm11_9 <=s (17841)@16,
  (-(17777))@16 <=s ymm11_a, ymm11_a <=s (17777)@16, (-(18218))@16 <=s ymm11_b, ymm11_b <=s (18218)@16,
  (-(17375))@16 <=s ymm5_c, ymm5_c <=s (17375)@16, (-(17678))@16 <=s ymm5_d, ymm5_d <=s (17678)@16,
  (-(17040))@16 <=s ymm5_e, ymm5_e <=s (17040)@16, (-(16970))@16 <=s ymm5_f, ymm5_f <=s (16970)@16,
  (-(17375))@16 <=s ymm3_c, ymm3_c <=s (17375)@16, (-(17678))@16 <=s ymm3_d, ymm3_d <=s (17678)@16,
  (-(17040))@16 <=s ymm3_e, ymm3_e <=s (17040)@16, (-(16970))@16 <=s ymm3_f, ymm3_f <=s (16970)@16,
  (-(17508))@16 <=s ymm10_c, ymm10_c <=s (17508)@16, (-(17811))@16 <=s ymm10_d, ymm10_d <=s (17811)@16,
  (-(17141))@16 <=s ymm10_e, ymm10_e <=s (17141)@16, (-(17071))@16 <=s ymm10_f, ymm10_f <=s (17071)@16,
  (-(17508))@16 <=s ymm4_c, ymm4_c <=s (17508)@16, (-(17811))@16 <=s ymm4_d, ymm4_d <=s (17811)@16,
  (-(17141))@16 <=s ymm4_e, ymm4_e <=s (17141)@16, (-(17071))@16 <=s ymm4_f, ymm4_f <=s (17071)@16,
  (-(17699))@16 <=s ymm7_c, ymm7_c <=s (17699)@16, (-(17911))@16 <=s ymm7_d, ymm7_d <=s (17911)@16,
  (-(17257))@16 <=s ymm7_e, ymm7_e <=s (17257)@16, (-(17276))@16 <=s ymm7_f, ymm7_f <=s (17276)@16,
  (-(17699))@16 <=s ymm6_c, ymm6_c <=s (17699)@16, (-(17911))@16 <=s ymm6_d, ymm6_d <=s (17911)@16,
  (-(17257))@16 <=s ymm6_e, ymm6_e <=s (17257)@16, (-(17276))@16 <=s ymm6_f, ymm6_f <=s (17276)@16,
  (-(17778))@16 <=s ymm9_c, ymm9_c <=s (17778)@16, (-(18065))@16 <=s ymm9_d, ymm9_d <=s (18065)@16,
  (-(17361))@16 <=s ymm9_e, ymm9_e <=s (17361)@16, (-(17380))@16 <=s ymm9_f, ymm9_f <=s (17380)@16,
  (-(17778))@16 <=s ymm11_c, ymm11_c <=s (17778)@16, (-(18065))@16 <=s ymm11_d, ymm11_d <=s (18065)@16,
  (-(17361))@16 <=s ymm11_e, ymm11_e <=s (17361)@16, (-(17380))@16 <=s ymm11_f, ymm11_f <=s (17380)@16
];

(* ===== Start of level 6, off 0 ===== *)
(* vpmullw 0x80(%rdx),%ymm5,%ymm12                 #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x555555558179 *)
smull %mulHymm5 %mulL [L0x555555560780, L0x555555560782, L0x555555560784, L0x555555560786, L0x555555560788, L0x55555556078a, L0x55555556078c, L0x55555556078e, L0x555555560790, L0x555555560792, L0x555555560794, L0x555555560796, L0x555555560798, L0x55555556079a, L0x55555556079c, L0x55555556079e] %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw 0xa0(%rdx),%ymm5,%ymm5                  #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x555555558181 *)
smull %mulH %mulLymm5 [L0x5555555607a0, L0x5555555607a2, L0x5555555607a4, L0x5555555607a6, L0x5555555607a8, L0x5555555607aa, L0x5555555607ac, L0x5555555607ae, L0x5555555607b0, L0x5555555607b2, L0x5555555607b4, L0x5555555607b6, L0x5555555607b8, L0x5555555607ba, L0x5555555607bc, L0x5555555607be] %ymm5;
mov [mulLymm5_0, mulLymm5_1, mulLymm5_2, mulLymm5_3, mulLymm5_4, mulLymm5_5, mulLymm5_6, mulLymm5_7, mulLymm5_8, mulLymm5_9, mulLymm5_a, mulLymm5_b, mulLymm5_c, mulLymm5_d, mulLymm5_e, mulLymm5_f] %mulLymm5;
mov %ymm5 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558189 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm5 %ymm5 %ymm12;
(* vpbroadcastq 0x650(%rdx),%ymm12                 #! EA = L0x555555560d50; Value = 0x402970c1d792fff7; PC = 0x555555558192 *)
broadcast %ymm12 16 [L0x555555560d50, L0x555555560d52, L0x555555560d54, L0x555555560d56];
(* vpbroadcastq 0x658(%rdx),%ymm13                 #! EA = L0x555555560d58; Value = 0x0e290ec1f392f1f7; PC = 0x55555555819b *)
broadcast %ymm13 16 [L0x555555560d58, L0x555555560d5a, L0x555555560d5c, L0x555555560d5e];
(* vpmullw %ymm12,%ymm3,%ymm12                     #! PC = 0x5555555581a4 *)
smull %mulHymm3 %mulL %ymm12 %ymm3;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm3,%ymm3                      #! PC = 0x5555555581a9 *)
smull %mulH %mulLymm3 %ymm13 %ymm3;
mov [mulLymm3_0, mulLymm3_1, mulLymm3_2, mulLymm3_3, mulLymm3_4, mulLymm3_5, mulLymm3_6, mulLymm3_7, mulLymm3_8, mulLymm3_9, mulLymm3_a, mulLymm3_b, mulLymm3_c, mulLymm3_d, mulLymm3_e, mulLymm3_f] %mulLymm3;
mov %ymm3 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555581ae *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm3 %ymm3 %ymm12;
(* vpbroadcastq 0x660(%rdx),%ymm12                 #! EA = L0x555555560d60; Value = 0x3998d7921190fff7; PC = 0x5555555581b7 *)
broadcast %ymm12 16 [L0x555555560d60, L0x555555560d62, L0x555555560d64, L0x555555560d66];
(* vpbroadcastq 0x668(%rdx),%ymm13                 #! EA = L0x555555560d68; Value = 0x0998f392f190f1f7; PC = 0x5555555581c0 *)
broadcast %ymm13 16 [L0x555555560d68, L0x555555560d6a, L0x555555560d6c, L0x555555560d6e];
(* vpmullw %ymm12,%ymm10,%ymm12                    #! PC = 0x5555555581c9 *)
smull %mulHymm10 %mulL %ymm12 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm10,%ymm10                    #! PC = 0x5555555581ce *)
smull %mulH %mulLymm10 %ymm13 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555581d3 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm10 %ymm10 %ymm12;
(* vpbroadcastq 0x670(%rdx),%ymm12                 #! EA = L0x555555560d70; Value = 0x1c4cbfd7136efff7; PC = 0x5555555581dc *)
broadcast %ymm12 16 [L0x555555560d70, L0x555555560d72, L0x555555560d74, L0x555555560d76];
(* vpbroadcastq 0x678(%rdx),%ymm13                 #! EA = L0x555555560d78; Value = 0x044cf1d7f76ef1f7; PC = 0x5555555581e5 *)
broadcast %ymm13 16 [L0x555555560d78, L0x555555560d7a, L0x555555560d7c, L0x555555560d7e];
(* vpmullw %ymm12,%ymm4,%ymm12                     #! PC = 0x5555555581ee *)
smull %mulHymm4 %mulL %ymm12 %ymm4;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm4,%ymm4                      #! PC = 0x5555555581f3 *)
smull %mulH %mulLymm4 %ymm13 %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555581f8 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm4 %ymm4 %ymm12;
(* vpbroadcastq 0x680(%rdx),%ymm12                 #! EA = L0x555555560d80; Value = 0xb8f11190d279fff7; PC = 0x555555558201 *)
broadcast %ymm12 16 [L0x555555560d80, L0x555555560d82, L0x555555560d84, L0x555555560d86];
(* vpbroadcastq 0x688(%rdx),%ymm13                 #! EA = L0x555555560d88; Value = 0xf6f1f1900079f1f7; PC = 0x55555555820a *)
broadcast %ymm13 16 [L0x555555560d88, L0x555555560d8a, L0x555555560d8c, L0x555555560d8e];
(* vpmullw %ymm12,%ymm7,%ymm12                     #! PC = 0x555555558213 *)
smull %mulHymm7 %mulL %ymm12 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm7,%ymm7                      #! PC = 0x555555558218 *)
smull %mulH %mulLymm7 %ymm13 %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555821d *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm7 %ymm7 %ymm12;
(* vpbroadcastq 0x690(%rdx),%ymm12                 #! EA = L0x555555560d90; Value = 0xb0a51c4ca7bffff7; PC = 0x555555558226 *)
broadcast %ymm12 16 [L0x555555560d90, L0x555555560d92, L0x555555560d94, L0x555555560d96];
(* vpbroadcastq 0x698(%rdx),%ymm13                 #! EA = L0x555555560d98; Value = 0x06a5044c09bff1f7; PC = 0x55555555822f *)
broadcast %ymm13 16 [L0x555555560d98, L0x555555560d9a, L0x555555560d9c, L0x555555560d9e];
(* vpmullw %ymm12,%ymm6,%ymm12                     #! PC = 0x555555558238 *)
smull %mulHymm6 %mulL %ymm12 %ymm6;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm6,%ymm6                      #! PC = 0x55555555823d *)
smull %mulH %mulLymm6 %ymm13 %ymm6;
mov [mulLymm6_0, mulLymm6_1, mulLymm6_2, mulLymm6_3, mulLymm6_4, mulLymm6_5, mulLymm6_6, mulLymm6_7, mulLymm6_8, mulLymm6_9, mulLymm6_a, mulLymm6_b, mulLymm6_c, mulLymm6_d, mulLymm6_e, mulLymm6_f] %mulLymm6;
mov %ymm6 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558242 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm6 %ymm6 %ymm12;
(* vpbroadcastq 0x6a0(%rdx),%ymm12                 #! EA = L0x555555560da0; Value = 0xa3363998b8f1fff7; PC = 0x55555555824b *)
broadcast %ymm12 16 [L0x555555560da0, L0x555555560da2, L0x555555560da4, L0x555555560da6];
(* vpbroadcastq 0x6a8(%rdx),%ymm13                 #! EA = L0x555555560da8; Value = 0xf7360998f6f1f1f7; PC = 0x555555558254 *)
broadcast %ymm13 16 [L0x555555560da8, L0x555555560daa, L0x555555560dac, L0x555555560dae];
(* vpmullw %ymm12,%ymm9,%ymm12                     #! PC = 0x55555555825d *)
smull %mulHymm9 %mulL %ymm12 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm9,%ymm9                      #! PC = 0x555555558262 *)
smull %mulH %mulLymm9 %ymm13 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558267 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm9 %ymm9 %ymm12;
(* vpbroadcastq 0x6b0(%rdx),%ymm12                 #! EA = L0x555555560db0; Value = 0xa7bf136eae7afff7; PC = 0x555555558270 *)
broadcast %ymm12 16 [L0x555555560db0, L0x555555560db2, L0x555555560db4, L0x555555560db6];
(* vpbroadcastq 0x6b8(%rdx),%ymm13                 #! EA = L0x555555560db8; Value = 0x09bff76efa7af1f7; PC = 0x555555558279 *)
broadcast %ymm13 16 [L0x555555560db8, L0x555555560dba, L0x555555560dbc, L0x555555560dbe];
(* vpmullw %ymm12,%ymm11,%ymm12                    #! PC = 0x555555558282 *)
smull %mulHymm11 %mulL %ymm12 %ymm11;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm11,%ymm11                    #! PC = 0x555555558287 *)
smull %mulH %mulLymm11 %ymm13 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555828c *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm11 %ymm11 %ymm12;
(* vmovsldup %ymm7,%ymm8                           #! PC = 0x555555558295 *)
mov [ymm7_0, ymm7_1, _, _,
ymm7_4, ymm7_5, _, _,
ymm7_8, ymm7_9, _, _,
ymm7_c, ymm7_d, _, _] %ymm7;
mov %ymm8 [ymm7_0, ymm7_1, ymm7_0, ymm7_1,
ymm7_4, ymm7_5, ymm7_4, ymm7_5,
ymm7_8, ymm7_9, ymm7_8, ymm7_9,
ymm7_c, ymm7_d, ymm7_c, ymm7_d];
(* vpblendd $0xaa,%ymm8,%ymm5,%ymm8                #! PC = 0x555555558299 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm8;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm5;
mov %ymm8 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm5,%ymm5                        #! PC = 0x55555555829f *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm5;
mov %ymm5 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x5555555582a4 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm7;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm5;
mov %ymm7 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vmovsldup %ymm6,%ymm5                           #! PC = 0x5555555582aa *)
mov [ymm6_0, ymm6_1, _, _,
ymm6_4, ymm6_5, _, _,
ymm6_8, ymm6_9, _, _,
ymm6_c, ymm6_d, _, _] %ymm6;
mov %ymm5 [ymm6_0, ymm6_1, ymm6_0, ymm6_1,
ymm6_4, ymm6_5, ymm6_4, ymm6_5,
ymm6_8, ymm6_9, ymm6_8, ymm6_9,
ymm6_c, ymm6_d, ymm6_c, ymm6_d];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x5555555582ae *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm5;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm3;
mov %ymm5 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x5555555582b4 *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm3;
mov %ymm3 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x5555555582b9 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm6;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm3;
mov %ymm6 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vmovsldup %ymm9,%ymm3                           #! PC = 0x5555555582bf *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm9;
mov %ymm3 [ymm9_0, ymm9_1, ymm9_0, ymm9_1,
ymm9_4, ymm9_5, ymm9_4, ymm9_5,
ymm9_8, ymm9_9, ymm9_8, ymm9_9,
ymm9_c, ymm9_d, ymm9_c, ymm9_d];
(* vpblendd $0xaa,%ymm3,%ymm10,%ymm3               #! PC = 0x5555555582c4 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm3;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm10;
mov %ymm3 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm10,%ymm10                      #! PC = 0x5555555582ca *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm10;
mov %ymm10 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm9,%ymm10,%ymm9               #! PC = 0x5555555582d0 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm9;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm10;
mov %ymm9 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vmovsldup %ymm11,%ymm10                         #! PC = 0x5555555582d6 *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm11;
mov %ymm10 [ymm11_0, ymm11_1, ymm11_0, ymm11_1,
ymm11_4, ymm11_5, ymm11_4, ymm11_5,
ymm11_8, ymm11_9, ymm11_8, ymm11_9,
ymm11_c, ymm11_d, ymm11_c, ymm11_d];
(* vpblendd $0xaa,%ymm10,%ymm4,%ymm10              #! PC = 0x5555555582db *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm10;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm4;
mov %ymm10 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x5555555582e1 *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm4;
mov %ymm4 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x5555555582e6 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm11;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm4;
mov %ymm11 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpslld $0x10,%ymm3,%ymm4                        #! PC = 0x5555555582ec *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm3;
mov %ymm4 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm4,%ymm8,%ymm4                #! PC = 0x5555555582f1 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm4;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm8;
mov %ymm4 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm8,%ymm8                        #! PC = 0x5555555582f7 *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm8;
mov %ymm8 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm3,%ymm8,%ymm3                #! PC = 0x5555555582fd *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm3;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm8;
mov %ymm3 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpslld $0x10,%ymm9,%ymm8                        #! PC = 0x555555558303 *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm9;
mov %ymm8 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x555555558309 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm8;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm7;
mov %ymm8 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm7,%ymm7                        #! PC = 0x55555555830f *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm7;
mov %ymm7 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm9,%ymm7,%ymm9                #! PC = 0x555555558314 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm9;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm7;
mov %ymm9 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpslld $0x10,%ymm10,%ymm7                       #! PC = 0x55555555831a *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm10;
mov %ymm7 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x555555558320 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm7;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm5;
mov %ymm7 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm5,%ymm5                        #! PC = 0x555555558326 *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm5;
mov %ymm5 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm10,%ymm5,%ymm10              #! PC = 0x55555555832b *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm10;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm5;
mov %ymm10 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpslld $0x10,%ymm11,%ymm5                       #! PC = 0x555555558331 *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm11;
mov %ymm5 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm5,%ymm6,%ymm5                #! PC = 0x555555558337 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm5;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm6;
mov %ymm5 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555555833d *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm6;
mov %ymm6 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x555555558342 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm11;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm6;
mov %ymm11 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpaddw %ymm8,%ymm4,%ymm6                        #! PC = 0x555555558348 *)
add %ymm6 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555555834d *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm3,%ymm4                        #! PC = 0x555555558352 *)
add %ymm4 %ymm3 %ymm9;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x555555558357 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555555835c *)
add %ymm3 %ymm7 %ymm5;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x555555558360 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm11,%ymm10,%ymm7                      #! PC = 0x555555558364 *)
add %ymm7 %ymm10 %ymm11;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558369 *)
sub %ymm11 %ymm10 %ymm11;
(* ===== End of level 6, off 0 ===== *)

(* ecut 6, rcut 6 *)

mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm4_0*((1115*1*x)**1)
  )
  [7681, x**2 - (-3837)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm9_0*((1115*1*x)**1)
  )
  [7681, x**2 - (3837)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm7_0*((1115*1925*x)**1)
  )
  [7681, x**2 - (-319)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm11_0*((1115*1925*x)**1)
  )
  [7681, x**2 - (319)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_1 + ymm4_1*((1115*7098*x)**1)
  )
  [7681, x**2 - (405)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_1 + ymm9_1*((1115*7098*x)**1)
  )
  [7681, x**2 - (-405)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_1 + ymm7_1*((1115*7154*x)**1)
  )
  [7681, x**2 - (2897)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_1 + ymm11_1*((1115*7154*x)**1)
  )
  [7681, x**2 - (-2897)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_2 + ymm4_2*((1115*2446*x)**1)
  )
  [7681, x**2 - (1996)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_2 + ymm9_2*((1115*2446*x)**1)
  )
  [7681, x**2 - (-1996)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_2 + ymm7_2*((1115*2132*x)**1)
  )
  [7681, x**2 - (869)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_2 + ymm11_2*((1115*2132*x)**1)
  )
  [7681, x**2 - (-869)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_3 + ymm4_3*((1115*2648*x)**1)
  )
  [7681, x**2 - (1633)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_3 + ymm9_3*((1115*2648*x)**1)
  )
  [7681, x**2 - (-1633)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_3 + ymm7_3*((1115*1366*x)**1)
  )
  [7681, x**2 - (1800)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_3 + ymm11_3*((1115*1366*x)**1)
  )
  [7681, x**2 - (-1800)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm4_4*((738*1*x)**1)
  )
  [7681, x**2 - (880)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm9_4*((738*1*x)**1)
  )
  [7681, x**2 - (-880)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm7_4*((738*1925*x)**1)
  )
  [7681, x**2 - (3188)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm11_4*((738*1925*x)**1)
  )
  [7681, x**2 - (-3188)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_5 + ymm4_5*((738*7098*x)**1)
  )
  [7681, x**2 - (-219)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_5 + ymm9_5*((738*7098*x)**1)
  )
  [7681, x**2 - (219)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_5 + ymm7_5*((738*7154*x)**1)
  )
  [7681, x**2 - (-3501)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_5 + ymm11_5*((738*7154*x)**1)
  )
  [7681, x**2 - (3501)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_6 + ymm4_6*((738*2446*x)**1)
  )
  [7681, x**2 - (-2900)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_6 + ymm9_6*((738*2446*x)**1)
  )
  [7681, x**2 - (2900)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_6 + ymm7_6*((738*2132*x)**1)
  )
  [7681, x**2 - (-2063)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_6 + ymm11_6*((738*2132*x)**1)
  )
  [7681, x**2 - (2063)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_7 + ymm4_7*((738*2648*x)**1)
  )
  [7681, x**2 - (198)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_7 + ymm9_7*((738*2648*x)**1)
  )
  [7681, x**2 - (-198)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_7 + ymm7_7*((738*1366*x)**1)
  )
  [7681, x**2 - (1587)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_7 + ymm11_7*((738*1366*x)**1)
  )
  [7681, x**2 - (-1587)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm4_8*((7145*1*x)**1)
  )
  [7681, x**2 - (-1155)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm9_8*((7145*1*x)**1)
  )
  [7681, x**2 - (1155)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm7_8*((7145*1925*x)**1)
  )
  [7681, x**2 - (-2264)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm11_8*((7145*1925*x)**1)
  )
  [7681, x**2 - (2264)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_9 + ymm4_9*((7145*7098*x)**1)
  )
  [7681, x**2 - (-3073)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_9 + ymm9_9*((7145*7098*x)**1)
  )
  [7681, x**2 - (3073)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_9 + ymm7_9*((7145*7154*x)**1)
  )
  [7681, x**2 - (-3566)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_9 + ymm11_9*((7145*7154*x)**1)
  )
  [7681, x**2 - (3566)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_a + ymm4_a*((7145*2446*x)**1)
  )
  [7681, x**2 - (1886)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_a + ymm9_a*((7145*2446*x)**1)
  )
  [7681, x**2 - (-1886)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_a + ymm7_a*((7145*2132*x)**1)
  )
  [7681, x**2 - (-2573)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_a + ymm11_a*((7145*2132*x)**1)
  )
  [7681, x**2 - (2573)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_b + ymm4_b*((7145*2648*x)**1)
  )
  [7681, x**2 - (-1220)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_b + ymm9_b*((7145*2648*x)**1)
  )
  [7681, x**2 - (1220)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_b + ymm7_b*((7145*1366*x)**1)
  )
  [7681, x**2 - (-2563)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_b + ymm11_b*((7145*1366*x)**1)
  )
  [7681, x**2 - (2563)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm4_c*((217*1*x)**1)
  )
  [7681, x**2 - (1478)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm9_c*((217*1*x)**1)
  )
  [7681, x**2 - (-1478)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm7_c*((217*1925*x)**1)
  )
  [7681, x**2 - (257)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm11_c*((217*1925*x)**1)
  )
  [7681, x**2 - (-257)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_d + ymm4_d*((217*7098*x)**1)
  )
  [7681, x**2 - (3141)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_d + ymm9_d*((217*7098*x)**1)
  )
  [7681, x**2 - (-3141)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_d + ymm7_d*((217*7154*x)**1)
  )
  [7681, x**2 - (3180)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_d + ymm11_d*((217*7154*x)**1)
  )
  [7681, x**2 - (-3180)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_e + ymm4_e*((217*2446*x)**1)
  )
  [7681, x**2 - (-3125)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_e + ymm9_e*((217*2446*x)**1)
  )
  [7681, x**2 - (3125)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_e + ymm7_e*((217*2132*x)**1)
  )
  [7681, x**2 - (-2819)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_e + ymm11_e*((217*2132*x)**1)
  )
  [7681, x**2 - (2819)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_f + ymm4_f*((217*2648*x)**1)
  )
  [7681, x**2 - (3789)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_f + ymm9_f*((217*2648*x)**1)
  )
  [7681, x**2 - (-3789)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_f + ymm7_f*((217*1366*x)**1)
  )
  [7681, x**2 - (-1402)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_f + ymm11_f*((217*1366*x)**1)
  )
  [7681, x**2 - (1402)]
] && and [
  (-(8878))@16 <=s ymm6_0, ymm6_0 <=s (8878)@16, (-(8878))@16 <=s ymm4_0, ymm4_0 <=s (8878)@16,
  (-(8878))@16 <=s ymm8_0, ymm8_0 <=s (8878)@16, (-(8878))@16 <=s ymm9_0, ymm9_0 <=s (8878)@16,
  (-(9262))@16 <=s ymm3_0, ymm3_0 <=s (9262)@16, (-(9355))@16 <=s ymm7_0, ymm7_0 <=s (9355)@16,
  (-(9262))@16 <=s ymm5_0, ymm5_0 <=s (9262)@16, (-(9355))@16 <=s ymm11_0, ymm11_0 <=s (9355)@16,
  (-(9075))@16 <=s ymm6_1, ymm6_1 <=s (9075)@16, (-(9216))@16 <=s ymm4_1, ymm4_1 <=s (9216)@16,
  (-(9075))@16 <=s ymm8_1, ymm8_1 <=s (9075)@16, (-(9216))@16 <=s ymm9_1, ymm9_1 <=s (9216)@16,
  (-(9212))@16 <=s ymm3_1, ymm3_1 <=s (9212)@16, (-(8502))@16 <=s ymm7_1, ymm7_1 <=s (8502)@16,
  (-(9212))@16 <=s ymm5_1, ymm5_1 <=s (9212)@16, (-(8502))@16 <=s ymm11_1, ymm11_1 <=s (8502)@16,
  (-(9238))@16 <=s ymm6_2, ymm6_2 <=s (9238)@16, (-(8338))@16 <=s ymm4_2, ymm4_2 <=s (8338)@16,
  (-(9238))@16 <=s ymm8_2, ymm8_2 <=s (9238)@16, (-(8338))@16 <=s ymm9_2, ymm9_2 <=s (8338)@16,
  (-(8563))@16 <=s ymm3_2, ymm3_2 <=s (8563)@16, (-(8762))@16 <=s ymm7_2, ymm7_2 <=s (8762)@16,
  (-(8563))@16 <=s ymm5_2, ymm5_2 <=s (8563)@16, (-(8762))@16 <=s ymm11_2, ymm11_2 <=s (8762)@16,
  (-(8924))@16 <=s ymm6_3, ymm6_3 <=s (8924)@16, (-(8844))@16 <=s ymm4_3, ymm4_3 <=s (8844)@16,
  (-(8924))@16 <=s ymm8_3, ymm8_3 <=s (8924)@16, (-(8844))@16 <=s ymm9_3, ymm9_3 <=s (8844)@16,
  (-(8859))@16 <=s ymm3_3, ymm3_3 <=s (8859)@16, (-(8724))@16 <=s ymm7_3, ymm7_3 <=s (8724)@16,
  (-(8859))@16 <=s ymm5_3, ymm5_3 <=s (8859)@16, (-(8724))@16 <=s ymm11_3, ymm11_3 <=s (8724)@16,
  (-(8878))@16 <=s ymm6_4, ymm6_4 <=s (8878)@16, (-(8878))@16 <=s ymm4_4, ymm4_4 <=s (8878)@16,
  (-(8878))@16 <=s ymm8_4, ymm8_4 <=s (8878)@16, (-(8878))@16 <=s ymm9_4, ymm9_4 <=s (8878)@16,
  (-(9262))@16 <=s ymm3_4, ymm3_4 <=s (9262)@16, (-(9434))@16 <=s ymm7_4, ymm7_4 <=s (9434)@16,
  (-(9262))@16 <=s ymm5_4, ymm5_4 <=s (9262)@16, (-(9434))@16 <=s ymm11_4, ymm11_4 <=s (9434)@16,
  (-(9075))@16 <=s ymm6_5, ymm6_5 <=s (9075)@16, (-(9284))@16 <=s ymm4_5, ymm4_5 <=s (9284)@16,
  (-(9075))@16 <=s ymm8_5, ymm8_5 <=s (9075)@16, (-(9284))@16 <=s ymm9_5, ymm9_5 <=s (9284)@16,
  (-(9212))@16 <=s ymm3_5, ymm3_5 <=s (9212)@16, (-(8544))@16 <=s ymm7_5, ymm7_5 <=s (8544)@16,
  (-(9212))@16 <=s ymm5_5, ymm5_5 <=s (9212)@16, (-(8544))@16 <=s ymm11_5, ymm11_5 <=s (8544)@16,
  (-(9238))@16 <=s ymm6_6, ymm6_6 <=s (9238)@16, (-(8315))@16 <=s ymm4_6, ymm4_6 <=s (8315)@16,
  (-(9238))@16 <=s ymm8_6, ymm8_6 <=s (9238)@16, (-(8315))@16 <=s ymm9_6, ymm9_6 <=s (8315)@16,
  (-(8563))@16 <=s ymm3_6, ymm3_6 <=s (8563)@16, (-(8781))@16 <=s ymm7_6, ymm7_6 <=s (8781)@16,
  (-(8563))@16 <=s ymm5_6, ymm5_6 <=s (8563)@16, (-(8781))@16 <=s ymm11_6, ymm11_6 <=s (8781)@16,
  (-(8924))@16 <=s ymm6_7, ymm6_7 <=s (8924)@16, (-(8884))@16 <=s ymm4_7, ymm4_7 <=s (8884)@16,
  (-(8924))@16 <=s ymm8_7, ymm8_7 <=s (8924)@16, (-(8884))@16 <=s ymm9_7, ymm9_7 <=s (8884)@16,
  (-(8859))@16 <=s ymm3_7, ymm3_7 <=s (8859)@16, (-(8729))@16 <=s ymm7_7, ymm7_7 <=s (8729)@16,
  (-(8859))@16 <=s ymm5_7, ymm5_7 <=s (8859)@16, (-(8729))@16 <=s ymm11_7, ymm11_7 <=s (8729)@16,
  (-(8878))@16 <=s ymm6_8, ymm6_8 <=s (8878)@16, (-(8878))@16 <=s ymm4_8, ymm4_8 <=s (8878)@16,
  (-(8878))@16 <=s ymm8_8, ymm8_8 <=s (8878)@16, (-(8878))@16 <=s ymm9_8, ymm9_8 <=s (8878)@16,
  (-(9262))@16 <=s ymm3_8, ymm3_8 <=s (9262)@16, (-(9434))@16 <=s ymm7_8, ymm7_8 <=s (9434)@16,
  (-(9262))@16 <=s ymm5_8, ymm5_8 <=s (9262)@16, (-(9434))@16 <=s ymm11_8, ymm11_8 <=s (9434)@16,
  (-(9075))@16 <=s ymm6_9, ymm6_9 <=s (9075)@16, (-(9284))@16 <=s ymm4_9, ymm4_9 <=s (9284)@16,
  (-(9075))@16 <=s ymm8_9, ymm8_9 <=s (9075)@16, (-(9284))@16 <=s ymm9_9, ymm9_9 <=s (9284)@16,
  (-(9212))@16 <=s ymm3_9, ymm3_9 <=s (9212)@16, (-(8548))@16 <=s ymm7_9, ymm7_9 <=s (8548)@16,
  (-(9212))@16 <=s ymm5_9, ymm5_9 <=s (9212)@16, (-(8548))@16 <=s ymm11_9, ymm11_9 <=s (8548)@16,
  (-(9265))@16 <=s ymm6_a, ymm6_a <=s (9265)@16, (-(8338))@16 <=s ymm4_a, ymm4_a <=s (8338)@16,
  (-(9265))@16 <=s ymm8_a, ymm8_a <=s (9265)@16, (-(8338))@16 <=s ymm9_a, ymm9_a <=s (8338)@16,
  (-(8563))@16 <=s ymm3_a, ymm3_a <=s (8563)@16, (-(8781))@16 <=s ymm7_a, ymm7_a <=s (8781)@16,
  (-(8563))@16 <=s ymm5_a, ymm5_a <=s (8563)@16, (-(8781))@16 <=s ymm11_a, ymm11_a <=s (8781)@16,
  (-(8924))@16 <=s ymm6_b, ymm6_b <=s (8924)@16, (-(8887))@16 <=s ymm4_b, ymm4_b <=s (8887)@16,
  (-(8924))@16 <=s ymm8_b, ymm8_b <=s (8924)@16, (-(8887))@16 <=s ymm9_b, ymm9_b <=s (8887)@16,
  (-(8859))@16 <=s ymm3_b, ymm3_b <=s (8859)@16, (-(8729))@16 <=s ymm7_b, ymm7_b <=s (8729)@16,
  (-(8859))@16 <=s ymm5_b, ymm5_b <=s (8859)@16, (-(8729))@16 <=s ymm11_b, ymm11_b <=s (8729)@16,
  (-(8878))@16 <=s ymm6_c, ymm6_c <=s (8878)@16, (-(8878))@16 <=s ymm4_c, ymm4_c <=s (8878)@16,
  (-(8878))@16 <=s ymm8_c, ymm8_c <=s (8878)@16, (-(8878))@16 <=s ymm9_c, ymm9_c <=s (8878)@16,
  (-(9221))@16 <=s ymm3_c, ymm3_c <=s (9221)@16, (-(9403))@16 <=s ymm7_c, ymm7_c <=s (9403)@16,
  (-(9221))@16 <=s ymm5_c, ymm5_c <=s (9221)@16, (-(9403))@16 <=s ymm11_c, ymm11_c <=s (9403)@16,
  (-(9075))@16 <=s ymm6_d, ymm6_d <=s (9075)@16, (-(9276))@16 <=s ymm4_d, ymm4_d <=s (9276)@16,
  (-(9075))@16 <=s ymm8_d, ymm8_d <=s (9075)@16, (-(9276))@16 <=s ymm9_d, ymm9_d <=s (9276)@16,
  (-(9206))@16 <=s ymm3_d, ymm3_d <=s (9206)@16, (-(8544))@16 <=s ymm7_d, ymm7_d <=s (8544)@16,
  (-(9206))@16 <=s ymm5_d, ymm5_d <=s (9206)@16, (-(8544))@16 <=s ymm11_d, ymm11_d <=s (8544)@16,
  (-(9224))@16 <=s ymm6_e, ymm6_e <=s (9224)@16, (-(8292))@16 <=s ymm4_e, ymm4_e <=s (8292)@16,
  (-(9224))@16 <=s ymm8_e, ymm8_e <=s (9224)@16, (-(8292))@16 <=s ymm9_e, ymm9_e <=s (8292)@16,
  (-(8563))@16 <=s ymm3_e, ymm3_e <=s (8563)@16, (-(8796))@16 <=s ymm7_e, ymm7_e <=s (8796)@16,
  (-(8563))@16 <=s ymm5_e, ymm5_e <=s (8563)@16, (-(8796))@16 <=s ymm11_e, ymm11_e <=s (8796)@16,
  (-(8915))@16 <=s ymm6_f, ymm6_f <=s (8915)@16, (-(8891))@16 <=s ymm4_f, ymm4_f <=s (8891)@16,
  (-(8915))@16 <=s ymm8_f, ymm8_f <=s (8915)@16, (-(8891))@16 <=s ymm9_f, ymm9_f <=s (8891)@16,
  (-(8859))@16 <=s ymm3_f, ymm3_f <=s (8859)@16, (-(8700))@16 <=s ymm7_f, ymm7_f <=s (8700)@16,
  (-(8859))@16 <=s ymm5_f, ymm5_f <=s (8859)@16, (-(8700))@16 <=s ymm11_f, ymm11_f <=s (8700)@16
];

(* ===== Start of level 7, off 0 ===== *)
(* vpmullw %ymm1,%ymm9,%ymm12                      #! PC = 0x55555555836e *)
smull %mulHymm9 %mulL %ymm1 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x555555558372 *)
smull %mulHymm11 %mulL %ymm1 %ymm11;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x555555558376 *)
smull %mulH %mulLymm9 %ymm2 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555555837a *)
smull %mulH %mulLymm11 %ymm2 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpaddw %ymm4,%ymm6,%ymm10                       #! PC = 0x55555555837e *)
add %ymm10 %ymm6 %ymm4;
(* vpsubw %ymm4,%ymm6,%ymm4                        #! PC = 0x555555558382 *)
sub %ymm4 %ymm6 %ymm4;
(* vpaddw %ymm7,%ymm3,%ymm6                        #! PC = 0x555555558386 *)
add %ymm6 %ymm3 %ymm7;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x55555555838a *)
sub %ymm7 %ymm3 %ymm7;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555838e *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558392 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
add %ymm3 %ymm8 %ymm9;
(* vpsubw %ymm9,%ymm8,%ymm9                        #! PC = 0x55555555839b *)
sub %ymm9 %ymm8 %ymm9;
(* vpaddw %ymm11,%ymm5,%ymm8                       #! PC = 0x5555555583a0 *)
add %ymm8 %ymm5 %ymm11;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x5555555583a5 *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x5555555583aa *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555583af *)
add %ymm9 %ymm9 %ymm12;
(* vpsubw %ymm13,%ymm8,%ymm8                       #! PC = 0x5555555583b4 *)
sub %ymm8 %ymm8 %ymm13;
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x5555555583b9 *)
add %ymm11 %ymm11 %ymm13;
(* ===== Store results of levels1t7, off 0 ===== *)
(* vmovdqa %ymm10,(%rdi)                           #! EA = L0x7fffffffb4e0; PC = 0x5555555583be *)
mov [L0x7fffffffb4e0, L0x7fffffffb4e2, L0x7fffffffb4e4, L0x7fffffffb4e6, L0x7fffffffb4e8, L0x7fffffffb4ea, L0x7fffffffb4ec, L0x7fffffffb4ee, L0x7fffffffb4f0, L0x7fffffffb4f2, L0x7fffffffb4f4, L0x7fffffffb4f6, L0x7fffffffb4f8, L0x7fffffffb4fa, L0x7fffffffb4fc, L0x7fffffffb4fe] %ymm10;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffb500; PC = 0x5555555583c2 *)
mov [L0x7fffffffb500, L0x7fffffffb502, L0x7fffffffb504, L0x7fffffffb506, L0x7fffffffb508, L0x7fffffffb50a, L0x7fffffffb50c, L0x7fffffffb50e, L0x7fffffffb510, L0x7fffffffb512, L0x7fffffffb514, L0x7fffffffb516, L0x7fffffffb518, L0x7fffffffb51a, L0x7fffffffb51c, L0x7fffffffb51e] %ymm4;
(* vmovdqa %ymm3,0x40(%rdi)                        #! EA = L0x7fffffffb520; PC = 0x5555555583c7 *)
mov [L0x7fffffffb520, L0x7fffffffb522, L0x7fffffffb524, L0x7fffffffb526, L0x7fffffffb528, L0x7fffffffb52a, L0x7fffffffb52c, L0x7fffffffb52e, L0x7fffffffb530, L0x7fffffffb532, L0x7fffffffb534, L0x7fffffffb536, L0x7fffffffb538, L0x7fffffffb53a, L0x7fffffffb53c, L0x7fffffffb53e] %ymm3;
(* vmovdqa %ymm9,0x60(%rdi)                        #! EA = L0x7fffffffb540; PC = 0x5555555583cc *)
mov [L0x7fffffffb540, L0x7fffffffb542, L0x7fffffffb544, L0x7fffffffb546, L0x7fffffffb548, L0x7fffffffb54a, L0x7fffffffb54c, L0x7fffffffb54e, L0x7fffffffb550, L0x7fffffffb552, L0x7fffffffb554, L0x7fffffffb556, L0x7fffffffb558, L0x7fffffffb55a, L0x7fffffffb55c, L0x7fffffffb55e] %ymm9;
(* vmovdqa %ymm6,0x80(%rdi)                        #! EA = L0x7fffffffb560; PC = 0x5555555583d1 *)
mov [L0x7fffffffb560, L0x7fffffffb562, L0x7fffffffb564, L0x7fffffffb566, L0x7fffffffb568, L0x7fffffffb56a, L0x7fffffffb56c, L0x7fffffffb56e, L0x7fffffffb570, L0x7fffffffb572, L0x7fffffffb574, L0x7fffffffb576, L0x7fffffffb578, L0x7fffffffb57a, L0x7fffffffb57c, L0x7fffffffb57e] %ymm6;
(* vmovdqa %ymm7,0xa0(%rdi)                        #! EA = L0x7fffffffb580; PC = 0x5555555583d9 *)
mov [L0x7fffffffb580, L0x7fffffffb582, L0x7fffffffb584, L0x7fffffffb586, L0x7fffffffb588, L0x7fffffffb58a, L0x7fffffffb58c, L0x7fffffffb58e, L0x7fffffffb590, L0x7fffffffb592, L0x7fffffffb594, L0x7fffffffb596, L0x7fffffffb598, L0x7fffffffb59a, L0x7fffffffb59c, L0x7fffffffb59e] %ymm7;
(* vmovdqa %ymm8,0xc0(%rdi)                        #! EA = L0x7fffffffb5a0; PC = 0x5555555583e1 *)
mov [L0x7fffffffb5a0, L0x7fffffffb5a2, L0x7fffffffb5a4, L0x7fffffffb5a6, L0x7fffffffb5a8, L0x7fffffffb5aa, L0x7fffffffb5ac, L0x7fffffffb5ae, L0x7fffffffb5b0, L0x7fffffffb5b2, L0x7fffffffb5b4, L0x7fffffffb5b6, L0x7fffffffb5b8, L0x7fffffffb5ba, L0x7fffffffb5bc, L0x7fffffffb5be] %ymm8;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb5c0; PC = 0x5555555583e9 *)
mov [L0x7fffffffb5c0, L0x7fffffffb5c2, L0x7fffffffb5c4, L0x7fffffffb5c6, L0x7fffffffb5c8, L0x7fffffffb5ca, L0x7fffffffb5cc, L0x7fffffffb5ce, L0x7fffffffb5d0, L0x7fffffffb5d2, L0x7fffffffb5d4, L0x7fffffffb5d6, L0x7fffffffb5d8, L0x7fffffffb5da, L0x7fffffffb5dc, L0x7fffffffb5de] %ymm11;
(* ===== End of level 7, off 0 ===== *)

(* ecut 7, rcut 7 *)

cut
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e0
  )
  [7681, x - (62)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb500
  )
  [7681, x - (-62)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb520
  )
  [7681, x - (-2359)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb540
  )
  [7681, x - (2359)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb560
  )
  [7681, x - (-1604)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb580
  )
  [7681, x - (1604)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a0
  )
  [7681, x - (3546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c0
  )
  [7681, x - (-3546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e2
  )
  [7681, x - (-1950)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb502
  )
  [7681, x - (1950)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb522
  )
  [7681, x - (-1129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb542
  )
  [7681, x - (1129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb562
  )
  [7681, x - (2259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb582
  )
  [7681, x - (-2259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a2
  )
  [7681, x - (398)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c2
  )
  [7681, x - (-398)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e4
  )
  [7681, x - (201)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb504
  )
  [7681, x - (-201)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb524
  )
  [7681, x - (3626)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb544
  )
  [7681, x - (-3626)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb564
  )
  [7681, x - (2875)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb584
  )
  [7681, x - (-2875)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a4
  )
  [7681, x - (-1979)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c4
  )
  [7681, x - (1979)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e6
  )
  [7681, x - (1607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb506
  )
  [7681, x - (-1607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb526
  )
  [7681, x - (1667)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb546
  )
  [7681, x - (-1667)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb566
  )
  [7681, x - (-1968)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb586
  )
  [7681, x - (1968)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a6
  )
  [7681, x - (-1683)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c6
  )
  [7681, x - (1683)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e8
  )
  [7681, x - (-3445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb508
  )
  [7681, x - (3445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb528
  )
  [7681, x - (2358)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb548
  )
  [7681, x - (-2358)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb568
  )
  [7681, x - (-321)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb588
  )
  [7681, x - (321)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a8
  )
  [7681, x - (2922)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c8
  )
  [7681, x - (-2922)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ea
  )
  [7681, x - (2799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50a
  )
  [7681, x - (-2799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52a
  )
  [7681, x - (1656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54a
  )
  [7681, x - (-1656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56a
  )
  [7681, x - (3694)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58a
  )
  [7681, x - (-3694)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5aa
  )
  [7681, x - (185)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ca
  )
  [7681, x - (-185)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ec
  )
  [7681, x - (2583)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50c
  )
  [7681, x - (-2583)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52c
  )
  [7681, x - (2689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54c
  )
  [7681, x - (-2689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56c
  )
  [7681, x - (2668)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58c
  )
  [7681, x - (-2668)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ac
  )
  [7681, x - (-669)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5cc
  )
  [7681, x - (669)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ee
  )
  [7681, x - (-1704)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50e
  )
  [7681, x - (1704)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52e
  )
  [7681, x - (-3799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54e
  )
  [7681, x - (3799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56e
  )
  [7681, x - (-413)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58e
  )
  [7681, x - (413)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ae
  )
  [7681, x - (-763)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ce
  )
  [7681, x - (763)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f0
  )
  [7681, x - (-3081)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb510
  )
  [7681, x - (3081)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb530
  )
  [7681, x - (-94)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb550
  )
  [7681, x - (94)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb570
  )
  [7681, x - (3394)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb590
  )
  [7681, x - (-3394)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b0
  )
  [7681, x - (1193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d0
  )
  [7681, x - (-1193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f2
  )
  [7681, x - (2996)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb512
  )
  [7681, x - (-2996)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb532
  )
  [7681, x - (3452)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb552
  )
  [7681, x - (-3452)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb572
  )
  [7681, x - (-1131)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb592
  )
  [7681, x - (1131)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b2
  )
  [7681, x - (1035)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d2
  )
  [7681, x - (-1035)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f4
  )
  [7681, x - (542)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb514
  )
  [7681, x - (-542)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb534
  )
  [7681, x - (2173)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb554
  )
  [7681, x - (-2173)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb574
  )
  [7681, x - (-1266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb594
  )
  [7681, x - (1266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b4
  )
  [7681, x - (-3120)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d4
  )
  [7681, x - (3120)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f6
  )
  [7681, x - (-1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb516
  )
  [7681, x - (1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb536
  )
  [7681, x - (-702)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb556
  )
  [7681, x - (702)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb576
  )
  [7681, x - (-1065)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb596
  )
  [7681, x - (1065)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b6
  )
  [7681, x - (506)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d6
  )
  [7681, x - (-506)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f8
  )
  [7681, x - (-1876)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb518
  )
  [7681, x - (1876)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb538
  )
  [7681, x - (2002)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb558
  )
  [7681, x - (-2002)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb578
  )
  [7681, x - (-2012)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb598
  )
  [7681, x - (2012)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b8
  )
  [7681, x - (1230)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d8
  )
  [7681, x - (-1230)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fa
  )
  [7681, x - (-2197)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51a
  )
  [7681, x - (2197)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53a
  )
  [7681, x - (-2757)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55a
  )
  [7681, x - (2757)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57a
  )
  [7681, x - (3006)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59a
  )
  [7681, x - (-3006)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ba
  )
  [7681, x - (346)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5da
  )
  [7681, x - (-346)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fc
  )
  [7681, x - (2838)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51c
  )
  [7681, x - (-2838)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53c
  )
  [7681, x - (296)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55c
  )
  [7681, x - (-296)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57c
  )
  [7681, x - (1959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59c
  )
  [7681, x - (-1959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5bc
  )
  [7681, x - (1406)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5dc
  )
  [7681, x - (-1406)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fe
  )
  [7681, x - (2169)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51e
  )
  [7681, x - (-2169)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53e
  )
  [7681, x - (-2372)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55e
  )
  [7681, x - (2372)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57e
  )
  [7681, x - (-3139)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59e
  )
  [7681, x - (3139)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5be
  )
  [7681, x - (-3586)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5de
  )
  [7681, x - (3586)]
&& and [
  (-(17756))@16 <=s L0x7fffffffb4e0, L0x7fffffffb4e0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb500, L0x7fffffffb500 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb520, L0x7fffffffb520 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb540, L0x7fffffffb540 <=s (13199)@16,
  (-(18617))@16 <=s L0x7fffffffb560, L0x7fffffffb560 <=s (18617)@16, (-(18617))@16 <=s L0x7fffffffb580, L0x7fffffffb580 <=s (18617)@16,
  (-(13624))@16 <=s L0x7fffffffb5a0, L0x7fffffffb5a0 <=s (13624)@16, (-(13624))@16 <=s L0x7fffffffb5c0, L0x7fffffffb5c0 <=s (13624)@16,
  (-(18291))@16 <=s L0x7fffffffb4e2, L0x7fffffffb4e2 <=s (18291)@16, (-(18291))@16 <=s L0x7fffffffb502, L0x7fffffffb502 <=s (18291)@16,
  (-(13437))@16 <=s L0x7fffffffb522, L0x7fffffffb522 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb542, L0x7fffffffb542 <=s (13437)@16,
  (-(17714))@16 <=s L0x7fffffffb562, L0x7fffffffb562 <=s (17714)@16, (-(17714))@16 <=s L0x7fffffffb582, L0x7fffffffb582 <=s (17714)@16,
  (-(13517))@16 <=s L0x7fffffffb5a2, L0x7fffffffb5a2 <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb5c2, L0x7fffffffb5c2 <=s (13517)@16,
  (-(17576))@16 <=s L0x7fffffffb4e4, L0x7fffffffb4e4 <=s (17576)@16, (-(17576))@16 <=s L0x7fffffffb504, L0x7fffffffb504 <=s (17576)@16,
  (-(13543))@16 <=s L0x7fffffffb524, L0x7fffffffb524 <=s (13543)@16, (-(13543))@16 <=s L0x7fffffffb544, L0x7fffffffb544 <=s (13543)@16,
  (-(17325))@16 <=s L0x7fffffffb564, L0x7fffffffb564 <=s (17325)@16, (-(17325))@16 <=s L0x7fffffffb584, L0x7fffffffb584 <=s (17325)@16,
  (-(12884))@16 <=s L0x7fffffffb5a4, L0x7fffffffb5a4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5c4, L0x7fffffffb5c4 <=s (12884)@16,
  (-(17768))@16 <=s L0x7fffffffb4e6, L0x7fffffffb4e6 <=s (17768)@16, (-(17768))@16 <=s L0x7fffffffb506, L0x7fffffffb506 <=s (17768)@16,
  (-(13245))@16 <=s L0x7fffffffb526, L0x7fffffffb526 <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb546, L0x7fffffffb546 <=s (13245)@16,
  (-(17583))@16 <=s L0x7fffffffb566, L0x7fffffffb566 <=s (17583)@16, (-(17583))@16 <=s L0x7fffffffb586, L0x7fffffffb586 <=s (17583)@16,
  (-(13180))@16 <=s L0x7fffffffb5a6, L0x7fffffffb5a6 <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5c6, L0x7fffffffb5c6 <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb4e8, L0x7fffffffb4e8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb508, L0x7fffffffb508 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb528, L0x7fffffffb528 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb548, L0x7fffffffb548 <=s (13199)@16,
  (-(18696))@16 <=s L0x7fffffffb568, L0x7fffffffb568 <=s (18696)@16, (-(18696))@16 <=s L0x7fffffffb588, L0x7fffffffb588 <=s (18696)@16,
  (-(13624))@16 <=s L0x7fffffffb5a8, L0x7fffffffb5a8 <=s (13624)@16, (-(13624))@16 <=s L0x7fffffffb5c8, L0x7fffffffb5c8 <=s (13624)@16,
  (-(18359))@16 <=s L0x7fffffffb4ea, L0x7fffffffb4ea <=s (18359)@16, (-(18359))@16 <=s L0x7fffffffb50a, L0x7fffffffb50a <=s (18359)@16,
  (-(13437))@16 <=s L0x7fffffffb52a, L0x7fffffffb52a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb54a, L0x7fffffffb54a <=s (13437)@16,
  (-(17756))@16 <=s L0x7fffffffb56a, L0x7fffffffb56a <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb58a, L0x7fffffffb58a <=s (17756)@16,
  (-(13517))@16 <=s L0x7fffffffb5aa, L0x7fffffffb5aa <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb5ca, L0x7fffffffb5ca <=s (13517)@16,
  (-(17553))@16 <=s L0x7fffffffb4ec, L0x7fffffffb4ec <=s (17553)@16, (-(17553))@16 <=s L0x7fffffffb50c, L0x7fffffffb50c <=s (17553)@16,
  (-(13527))@16 <=s L0x7fffffffb52c, L0x7fffffffb52c <=s (13527)@16, (-(13527))@16 <=s L0x7fffffffb54c, L0x7fffffffb54c <=s (13527)@16,
  (-(17344))@16 <=s L0x7fffffffb56c, L0x7fffffffb56c <=s (17344)@16, (-(17344))@16 <=s L0x7fffffffb58c, L0x7fffffffb58c <=s (17344)@16,
  (-(12884))@16 <=s L0x7fffffffb5ac, L0x7fffffffb5ac <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5cc, L0x7fffffffb5cc <=s (12884)@16,
  (-(17808))@16 <=s L0x7fffffffb4ee, L0x7fffffffb4ee <=s (17808)@16, (-(17808))@16 <=s L0x7fffffffb50e, L0x7fffffffb50e <=s (17808)@16,
  (-(13245))@16 <=s L0x7fffffffb52e, L0x7fffffffb52e <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb54e, L0x7fffffffb54e <=s (13245)@16,
  (-(17588))@16 <=s L0x7fffffffb56e, L0x7fffffffb56e <=s (17588)@16, (-(17588))@16 <=s L0x7fffffffb58e, L0x7fffffffb58e <=s (17588)@16,
  (-(13180))@16 <=s L0x7fffffffb5ae, L0x7fffffffb5ae <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5ce, L0x7fffffffb5ce <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb4f0, L0x7fffffffb4f0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb510, L0x7fffffffb510 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb530, L0x7fffffffb530 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb550, L0x7fffffffb550 <=s (13199)@16,
  (-(18696))@16 <=s L0x7fffffffb570, L0x7fffffffb570 <=s (18696)@16, (-(18696))@16 <=s L0x7fffffffb590, L0x7fffffffb590 <=s (18696)@16,
  (-(13624))@16 <=s L0x7fffffffb5b0, L0x7fffffffb5b0 <=s (13624)@16, (-(13624))@16 <=s L0x7fffffffb5d0, L0x7fffffffb5d0 <=s (13624)@16,
  (-(18359))@16 <=s L0x7fffffffb4f2, L0x7fffffffb4f2 <=s (18359)@16, (-(18359))@16 <=s L0x7fffffffb512, L0x7fffffffb512 <=s (18359)@16,
  (-(13437))@16 <=s L0x7fffffffb532, L0x7fffffffb532 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb552, L0x7fffffffb552 <=s (13437)@16,
  (-(17760))@16 <=s L0x7fffffffb572, L0x7fffffffb572 <=s (17760)@16, (-(17760))@16 <=s L0x7fffffffb592, L0x7fffffffb592 <=s (17760)@16,
  (-(13517))@16 <=s L0x7fffffffb5b2, L0x7fffffffb5b2 <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb5d2, L0x7fffffffb5d2 <=s (13517)@16,
  (-(17603))@16 <=s L0x7fffffffb4f4, L0x7fffffffb4f4 <=s (17603)@16, (-(17603))@16 <=s L0x7fffffffb514, L0x7fffffffb514 <=s (17603)@16,
  (-(13570))@16 <=s L0x7fffffffb534, L0x7fffffffb534 <=s (13570)@16, (-(13570))@16 <=s L0x7fffffffb554, L0x7fffffffb554 <=s (13570)@16,
  (-(17344))@16 <=s L0x7fffffffb574, L0x7fffffffb574 <=s (17344)@16, (-(17344))@16 <=s L0x7fffffffb594, L0x7fffffffb594 <=s (17344)@16,
  (-(12884))@16 <=s L0x7fffffffb5b4, L0x7fffffffb5b4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5d4, L0x7fffffffb5d4 <=s (12884)@16,
  (-(17811))@16 <=s L0x7fffffffb4f6, L0x7fffffffb4f6 <=s (17811)@16, (-(17811))@16 <=s L0x7fffffffb516, L0x7fffffffb516 <=s (17811)@16,
  (-(13245))@16 <=s L0x7fffffffb536, L0x7fffffffb536 <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb556, L0x7fffffffb556 <=s (13245)@16,
  (-(17588))@16 <=s L0x7fffffffb576, L0x7fffffffb576 <=s (17588)@16, (-(17588))@16 <=s L0x7fffffffb596, L0x7fffffffb596 <=s (17588)@16,
  (-(13180))@16 <=s L0x7fffffffb5b6, L0x7fffffffb5b6 <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5d6, L0x7fffffffb5d6 <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb4f8, L0x7fffffffb4f8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb518, L0x7fffffffb518 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb538, L0x7fffffffb538 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb558, L0x7fffffffb558 <=s (13199)@16,
  (-(18624))@16 <=s L0x7fffffffb578, L0x7fffffffb578 <=s (18624)@16, (-(18624))@16 <=s L0x7fffffffb598, L0x7fffffffb598 <=s (18624)@16,
  (-(13583))@16 <=s L0x7fffffffb5b8, L0x7fffffffb5b8 <=s (13583)@16, (-(13583))@16 <=s L0x7fffffffb5d8, L0x7fffffffb5d8 <=s (13583)@16,
  (-(18351))@16 <=s L0x7fffffffb4fa, L0x7fffffffb4fa <=s (18351)@16, (-(18351))@16 <=s L0x7fffffffb51a, L0x7fffffffb51a <=s (18351)@16,
  (-(13437))@16 <=s L0x7fffffffb53a, L0x7fffffffb53a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb55a, L0x7fffffffb55a <=s (13437)@16,
  (-(17750))@16 <=s L0x7fffffffb57a, L0x7fffffffb57a <=s (17750)@16, (-(17750))@16 <=s L0x7fffffffb59a, L0x7fffffffb59a <=s (17750)@16,
  (-(13511))@16 <=s L0x7fffffffb5ba, L0x7fffffffb5ba <=s (13511)@16, (-(13511))@16 <=s L0x7fffffffb5da, L0x7fffffffb5da <=s (13511)@16,
  (-(17516))@16 <=s L0x7fffffffb4fc, L0x7fffffffb4fc <=s (17516)@16, (-(17516))@16 <=s L0x7fffffffb51c, L0x7fffffffb51c <=s (17516)@16,
  (-(13513))@16 <=s L0x7fffffffb53c, L0x7fffffffb53c <=s (13513)@16, (-(13513))@16 <=s L0x7fffffffb55c, L0x7fffffffb55c <=s (13513)@16,
  (-(17359))@16 <=s L0x7fffffffb57c, L0x7fffffffb57c <=s (17359)@16, (-(17359))@16 <=s L0x7fffffffb59c, L0x7fffffffb59c <=s (17359)@16,
  (-(12884))@16 <=s L0x7fffffffb5bc, L0x7fffffffb5bc <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5dc, L0x7fffffffb5dc <=s (12884)@16,
  (-(17806))@16 <=s L0x7fffffffb4fe, L0x7fffffffb4fe <=s (17806)@16, (-(17806))@16 <=s L0x7fffffffb51e, L0x7fffffffb51e <=s (17806)@16,
  (-(13236))@16 <=s L0x7fffffffb53e, L0x7fffffffb53e <=s (13236)@16, (-(13236))@16 <=s L0x7fffffffb55e, L0x7fffffffb55e <=s (13236)@16,
  (-(17559))@16 <=s L0x7fffffffb57e, L0x7fffffffb57e <=s (17559)@16, (-(17559))@16 <=s L0x7fffffffb59e, L0x7fffffffb59e <=s (17559)@16,
  (-(13180))@16 <=s L0x7fffffffb5be, L0x7fffffffb5be <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5de, L0x7fffffffb5de <=s (13180)@16
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
  [7681, x**128 - (3383)]
] prove with [ cuts [ 0 ] ] && and [
  (-(8134))@16 <s L0x7fffffffb5e0, L0x7fffffffb5e0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5e2, L0x7fffffffb5e2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5e4, L0x7fffffffb5e4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5e6, L0x7fffffffb5e6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5e8, L0x7fffffffb5e8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ea, L0x7fffffffb5ea <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5ec, L0x7fffffffb5ec <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5ee, L0x7fffffffb5ee <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5f0, L0x7fffffffb5f0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5f2, L0x7fffffffb5f2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5f4, L0x7fffffffb5f4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5f6, L0x7fffffffb5f6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5f8, L0x7fffffffb5f8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5fa, L0x7fffffffb5fa <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb5fc, L0x7fffffffb5fc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb5fe, L0x7fffffffb5fe <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb600, L0x7fffffffb600 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb602, L0x7fffffffb602 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb604, L0x7fffffffb604 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb606, L0x7fffffffb606 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb608, L0x7fffffffb608 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb60a, L0x7fffffffb60a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb60c, L0x7fffffffb60c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb60e, L0x7fffffffb60e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb610, L0x7fffffffb610 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb612, L0x7fffffffb612 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb614, L0x7fffffffb614 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb616, L0x7fffffffb616 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb618, L0x7fffffffb618 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb61a, L0x7fffffffb61a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb61c, L0x7fffffffb61c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb61e, L0x7fffffffb61e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb620, L0x7fffffffb620 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb622, L0x7fffffffb622 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb624, L0x7fffffffb624 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb626, L0x7fffffffb626 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb628, L0x7fffffffb628 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb62a, L0x7fffffffb62a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb62c, L0x7fffffffb62c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb62e, L0x7fffffffb62e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb630, L0x7fffffffb630 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb632, L0x7fffffffb632 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb634, L0x7fffffffb634 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb636, L0x7fffffffb636 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb638, L0x7fffffffb638 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb63a, L0x7fffffffb63a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb63c, L0x7fffffffb63c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb63e, L0x7fffffffb63e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb640, L0x7fffffffb640 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb642, L0x7fffffffb642 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb644, L0x7fffffffb644 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb646, L0x7fffffffb646 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb648, L0x7fffffffb648 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb64a, L0x7fffffffb64a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb64c, L0x7fffffffb64c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb64e, L0x7fffffffb64e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb650, L0x7fffffffb650 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb652, L0x7fffffffb652 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb654, L0x7fffffffb654 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb656, L0x7fffffffb656 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb658, L0x7fffffffb658 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb65a, L0x7fffffffb65a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb65c, L0x7fffffffb65c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb65e, L0x7fffffffb65e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb660, L0x7fffffffb660 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb662, L0x7fffffffb662 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb664, L0x7fffffffb664 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb666, L0x7fffffffb666 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb668, L0x7fffffffb668 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb66a, L0x7fffffffb66a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb66c, L0x7fffffffb66c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb66e, L0x7fffffffb66e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb670, L0x7fffffffb670 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb672, L0x7fffffffb672 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb674, L0x7fffffffb674 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb676, L0x7fffffffb676 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb678, L0x7fffffffb678 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb67a, L0x7fffffffb67a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb67c, L0x7fffffffb67c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb67e, L0x7fffffffb67e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb680, L0x7fffffffb680 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb682, L0x7fffffffb682 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb684, L0x7fffffffb684 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb686, L0x7fffffffb686 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb688, L0x7fffffffb688 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb68a, L0x7fffffffb68a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb68c, L0x7fffffffb68c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb68e, L0x7fffffffb68e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb690, L0x7fffffffb690 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb692, L0x7fffffffb692 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb694, L0x7fffffffb694 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb696, L0x7fffffffb696 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb698, L0x7fffffffb698 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb69a, L0x7fffffffb69a <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb69c, L0x7fffffffb69c <s (8134)@16, (-(8134))@16 <s L0x7fffffffb69e, L0x7fffffffb69e <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6a0, L0x7fffffffb6a0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6a2, L0x7fffffffb6a2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6a4, L0x7fffffffb6a4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6a6, L0x7fffffffb6a6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6a8, L0x7fffffffb6a8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6aa, L0x7fffffffb6aa <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6ac, L0x7fffffffb6ac <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ae, L0x7fffffffb6ae <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6b0, L0x7fffffffb6b0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6b2, L0x7fffffffb6b2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6b4, L0x7fffffffb6b4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6b6, L0x7fffffffb6b6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6b8, L0x7fffffffb6b8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ba, L0x7fffffffb6ba <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6bc, L0x7fffffffb6bc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6be, L0x7fffffffb6be <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6c0, L0x7fffffffb6c0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6c2, L0x7fffffffb6c2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6c4, L0x7fffffffb6c4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6c6, L0x7fffffffb6c6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6c8, L0x7fffffffb6c8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ca, L0x7fffffffb6ca <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6cc, L0x7fffffffb6cc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6ce, L0x7fffffffb6ce <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6d0, L0x7fffffffb6d0 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6d2, L0x7fffffffb6d2 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6d4, L0x7fffffffb6d4 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6d6, L0x7fffffffb6d6 <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6d8, L0x7fffffffb6d8 <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6da, L0x7fffffffb6da <s (8134)@16,
  (-(8134))@16 <s L0x7fffffffb6dc, L0x7fffffffb6dc <s (8134)@16, (-(8134))@16 <s L0x7fffffffb6de, L0x7fffffffb6de <s (8134)@16
] prove with [ cuts [ 0 ] ];

(* ===== Start of level 1, off 1 ===== *)
(* vmovdqa 0x1c0(%rdx),%ymm15                      #! EA = L0x5555555608c0; Value = 0x4029402940294029; PC = 0x5555555583f1 *)
mov %ymm15 [L0x5555555608c0, L0x5555555608c2, L0x5555555608c4, L0x5555555608c6, L0x5555555608c8, L0x5555555608ca, L0x5555555608cc, L0x5555555608ce, L0x5555555608d0, L0x5555555608d2, L0x5555555608d4, L0x5555555608d6, L0x5555555608d8, L0x5555555608da, L0x5555555608dc, L0x5555555608de];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb660; Value = 0x0000f8db00020001; PC = 0x5555555583f9 *)
mov %ymm8 [L0x7fffffffb660, L0x7fffffffb662, L0x7fffffffb664, L0x7fffffffb666, L0x7fffffffb668, L0x7fffffffb66a, L0x7fffffffb66c, L0x7fffffffb66e, L0x7fffffffb670, L0x7fffffffb672, L0x7fffffffb674, L0x7fffffffb676, L0x7fffffffb678, L0x7fffffffb67a, L0x7fffffffb67c, L0x7fffffffb67e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb680; Value = 0x0d3700010393ffff; PC = 0x555555558401 *)
mov %ymm9 [L0x7fffffffb680, L0x7fffffffb682, L0x7fffffffb684, L0x7fffffffb686, L0x7fffffffb688, L0x7fffffffb68a, L0x7fffffffb68c, L0x7fffffffb68e, L0x7fffffffb690, L0x7fffffffb692, L0x7fffffffb694, L0x7fffffffb696, L0x7fffffffb698, L0x7fffffffb69a, L0x7fffffffb69c, L0x7fffffffb69e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb6a0; Value = 0xfffe0000ffff0d3a; PC = 0x555555558409 *)
mov %ymm10 [L0x7fffffffb6a0, L0x7fffffffb6a2, L0x7fffffffb6a4, L0x7fffffffb6a6, L0x7fffffffb6a8, L0x7fffffffb6aa, L0x7fffffffb6ac, L0x7fffffffb6ae, L0x7fffffffb6b0, L0x7fffffffb6b2, L0x7fffffffb6b4, L0x7fffffffb6b6, L0x7fffffffb6b8, L0x7fffffffb6ba, L0x7fffffffb6bc, L0x7fffffffb6be];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb6c0; Value = 0xfffe000100000002; PC = 0x555555558411 *)
mov %ymm11 [L0x7fffffffb6c0, L0x7fffffffb6c2, L0x7fffffffb6c4, L0x7fffffffb6c6, L0x7fffffffb6c8, L0x7fffffffb6ca, L0x7fffffffb6cc, L0x7fffffffb6ce, L0x7fffffffb6d0, L0x7fffffffb6d2, L0x7fffffffb6d4, L0x7fffffffb6d6, L0x7fffffffb6d8, L0x7fffffffb6da, L0x7fffffffb6dc, L0x7fffffffb6de];
(* vmovdqa 0x1e0(%rdx),%ymm3                       #! EA = L0x5555555608e0; Value = 0x0e290e290e290e29; PC = 0x555555558419 *)
mov %ymm3 [L0x5555555608e0, L0x5555555608e2, L0x5555555608e4, L0x5555555608e6, L0x5555555608e8, L0x5555555608ea, L0x5555555608ec, L0x5555555608ee, L0x5555555608f0, L0x5555555608f2, L0x5555555608f4, L0x5555555608f6, L0x5555555608f8, L0x5555555608fa, L0x5555555608fc, L0x5555555608fe];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x555555558421 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x555555558426 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555555842b *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x555555558430 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm3,%ymm8,%ymm8                       #! PC = 0x555555558435 *)
smull %mulH %mulLymm8 %ymm3 %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw %ymm3,%ymm9,%ymm9                       #! PC = 0x555555558439 *)
smull %mulH %mulLymm9 %ymm3 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm3,%ymm10,%ymm10                     #! PC = 0x55555555843d *)
smull %mulH %mulLymm10 %ymm3 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm3,%ymm11,%ymm11                     #! PC = 0x555555558441 *)
smull %mulH %mulLymm11 %ymm3 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb5e0; Value = 0xfffe0000f2caf2cb; PC = 0x555555558445 *)
mov %ymm4 [L0x7fffffffb5e0, L0x7fffffffb5e2, L0x7fffffffb5e4, L0x7fffffffb5e6, L0x7fffffffb5e8, L0x7fffffffb5ea, L0x7fffffffb5ec, L0x7fffffffb5ee, L0x7fffffffb5f0, L0x7fffffffb5f2, L0x7fffffffb5f4, L0x7fffffffb5f6, L0x7fffffffb5f8, L0x7fffffffb5fa, L0x7fffffffb5fc, L0x7fffffffb5fe];
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb600; Value = 0x0d37ffff0394fc6d; PC = 0x55555555844d *)
mov %ymm5 [L0x7fffffffb600, L0x7fffffffb602, L0x7fffffffb604, L0x7fffffffb606, L0x7fffffffb608, L0x7fffffffb60a, L0x7fffffffb60c, L0x7fffffffb60e, L0x7fffffffb610, L0x7fffffffb612, L0x7fffffffb614, L0x7fffffffb616, L0x7fffffffb618, L0x7fffffffb61a, L0x7fffffffb61c, L0x7fffffffb61e];
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb620; Value = 0x0d37f65c0391fc6c; PC = 0x555555558455 *)
mov %ymm6 [L0x7fffffffb620, L0x7fffffffb622, L0x7fffffffb624, L0x7fffffffb626, L0x7fffffffb628, L0x7fffffffb62a, L0x7fffffffb62c, L0x7fffffffb62e, L0x7fffffffb630, L0x7fffffffb632, L0x7fffffffb634, L0x7fffffffb636, L0x7fffffffb638, L0x7fffffffb63a, L0x7fffffffb63c, L0x7fffffffb63e];
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb640; Value = 0xfc6c09a2f2c6f2c8; PC = 0x55555555845d *)
mov %ymm7 [L0x7fffffffb640, L0x7fffffffb642, L0x7fffffffb644, L0x7fffffffb646, L0x7fffffffb648, L0x7fffffffb64a, L0x7fffffffb64c, L0x7fffffffb64e, L0x7fffffffb650, L0x7fffffffb652, L0x7fffffffb654, L0x7fffffffb656, L0x7fffffffb658, L0x7fffffffb65a, L0x7fffffffb65c, L0x7fffffffb65e];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558465 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558469 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555555846d *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558471 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
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
add %ymm3 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555555847a *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555555847f *)
add %ymm4 %ymm5 %ymm9;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x555555558484 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x555555558489 *)
add %ymm5 %ymm6 %ymm10;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555555848e *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x555555558493 *)
add %ymm6 %ymm7 %ymm11;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x555555558498 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555555849d *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x5555555584a2 *)
add %ymm8 %ymm8 %ymm12;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x5555555584a7 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x5555555584ac *)
add %ymm9 %ymm9 %ymm13;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x5555555584b1 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x5555555584b6 *)
add %ymm10 %ymm10 %ymm14;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x5555555584bb *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x5555555584c0 *)
add %ymm11 %ymm11 %ymm15;
(* ===== End of level 1, off 1 ===== *)

(* ecut 9, rcut 9 *)

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
  [7681, x**64 - (-1925)],
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
  [7681, x**64 - (1925)]
] && and [
  (-(12408))@16 <s ymm3_0, ymm3_0 <s (12408)@16, (-(12408))@16 <s ymm3_1, ymm3_1 <s (12408)@16,
  (-(12408))@16 <s ymm3_2, ymm3_2 <s (12408)@16, (-(12408))@16 <s ymm3_3, ymm3_3 <s (12408)@16,
  (-(12408))@16 <s ymm3_4, ymm3_4 <s (12408)@16, (-(12408))@16 <s ymm3_5, ymm3_5 <s (12408)@16,
  (-(12408))@16 <s ymm3_6, ymm3_6 <s (12408)@16, (-(12408))@16 <s ymm3_7, ymm3_7 <s (12408)@16,
  (-(12408))@16 <s ymm3_8, ymm3_8 <s (12408)@16, (-(12408))@16 <s ymm3_9, ymm3_9 <s (12408)@16,
  (-(12408))@16 <s ymm3_a, ymm3_a <s (12408)@16, (-(12408))@16 <s ymm3_b, ymm3_b <s (12408)@16,
  (-(12408))@16 <s ymm3_c, ymm3_c <s (12408)@16, (-(12408))@16 <s ymm3_d, ymm3_d <s (12408)@16,
  (-(12408))@16 <s ymm3_e, ymm3_e <s (12408)@16, (-(12408))@16 <s ymm3_f, ymm3_f <s (12408)@16,
  (-(12408))@16 <s ymm4_0, ymm4_0 <s (12408)@16, (-(12408))@16 <s ymm4_1, ymm4_1 <s (12408)@16,
  (-(12408))@16 <s ymm4_2, ymm4_2 <s (12408)@16, (-(12408))@16 <s ymm4_3, ymm4_3 <s (12408)@16,
  (-(12408))@16 <s ymm4_4, ymm4_4 <s (12408)@16, (-(12408))@16 <s ymm4_5, ymm4_5 <s (12408)@16,
  (-(12408))@16 <s ymm4_6, ymm4_6 <s (12408)@16, (-(12408))@16 <s ymm4_7, ymm4_7 <s (12408)@16,
  (-(12408))@16 <s ymm4_8, ymm4_8 <s (12408)@16, (-(12408))@16 <s ymm4_9, ymm4_9 <s (12408)@16,
  (-(12408))@16 <s ymm4_a, ymm4_a <s (12408)@16, (-(12408))@16 <s ymm4_b, ymm4_b <s (12408)@16,
  (-(12408))@16 <s ymm4_c, ymm4_c <s (12408)@16, (-(12408))@16 <s ymm4_d, ymm4_d <s (12408)@16,
  (-(12408))@16 <s ymm4_e, ymm4_e <s (12408)@16, (-(12408))@16 <s ymm4_f, ymm4_f <s (12408)@16,
  (-(12408))@16 <s ymm5_0, ymm5_0 <s (12408)@16, (-(12408))@16 <s ymm5_1, ymm5_1 <s (12408)@16,
  (-(12408))@16 <s ymm5_2, ymm5_2 <s (12408)@16, (-(12408))@16 <s ymm5_3, ymm5_3 <s (12408)@16,
  (-(12408))@16 <s ymm5_4, ymm5_4 <s (12408)@16, (-(12408))@16 <s ymm5_5, ymm5_5 <s (12408)@16,
  (-(12408))@16 <s ymm5_6, ymm5_6 <s (12408)@16, (-(12408))@16 <s ymm5_7, ymm5_7 <s (12408)@16,
  (-(12408))@16 <s ymm5_8, ymm5_8 <s (12408)@16, (-(12408))@16 <s ymm5_9, ymm5_9 <s (12408)@16,
  (-(12408))@16 <s ymm5_a, ymm5_a <s (12408)@16, (-(12408))@16 <s ymm5_b, ymm5_b <s (12408)@16,
  (-(12408))@16 <s ymm5_c, ymm5_c <s (12408)@16, (-(12408))@16 <s ymm5_d, ymm5_d <s (12408)@16,
  (-(12408))@16 <s ymm5_e, ymm5_e <s (12408)@16, (-(12408))@16 <s ymm5_f, ymm5_f <s (12408)@16,
  (-(12408))@16 <s ymm6_0, ymm6_0 <s (12408)@16, (-(12408))@16 <s ymm6_1, ymm6_1 <s (12408)@16,
  (-(12408))@16 <s ymm6_2, ymm6_2 <s (12408)@16, (-(12408))@16 <s ymm6_3, ymm6_3 <s (12408)@16,
  (-(12408))@16 <s ymm6_4, ymm6_4 <s (12408)@16, (-(12408))@16 <s ymm6_5, ymm6_5 <s (12408)@16,
  (-(12408))@16 <s ymm6_6, ymm6_6 <s (12408)@16, (-(12408))@16 <s ymm6_7, ymm6_7 <s (12408)@16,
  (-(12408))@16 <s ymm6_8, ymm6_8 <s (12408)@16, (-(12408))@16 <s ymm6_9, ymm6_9 <s (12408)@16,
  (-(12408))@16 <s ymm6_a, ymm6_a <s (12408)@16, (-(12408))@16 <s ymm6_b, ymm6_b <s (12408)@16,
  (-(12408))@16 <s ymm6_c, ymm6_c <s (12408)@16, (-(12408))@16 <s ymm6_d, ymm6_d <s (12408)@16,
  (-(12408))@16 <s ymm6_e, ymm6_e <s (12408)@16, (-(12408))@16 <s ymm6_f, ymm6_f <s (12408)@16,
  (-(12408))@16 <s ymm8_0, ymm8_0 <s (12408)@16, (-(12408))@16 <s ymm8_1, ymm8_1 <s (12408)@16,
  (-(12408))@16 <s ymm8_2, ymm8_2 <s (12408)@16, (-(12408))@16 <s ymm8_3, ymm8_3 <s (12408)@16,
  (-(12408))@16 <s ymm8_4, ymm8_4 <s (12408)@16, (-(12408))@16 <s ymm8_5, ymm8_5 <s (12408)@16,
  (-(12408))@16 <s ymm8_6, ymm8_6 <s (12408)@16, (-(12408))@16 <s ymm8_7, ymm8_7 <s (12408)@16,
  (-(12408))@16 <s ymm8_8, ymm8_8 <s (12408)@16, (-(12408))@16 <s ymm8_9, ymm8_9 <s (12408)@16,
  (-(12408))@16 <s ymm8_a, ymm8_a <s (12408)@16, (-(12408))@16 <s ymm8_b, ymm8_b <s (12408)@16,
  (-(12408))@16 <s ymm8_c, ymm8_c <s (12408)@16, (-(12408))@16 <s ymm8_d, ymm8_d <s (12408)@16,
  (-(12408))@16 <s ymm8_e, ymm8_e <s (12408)@16, (-(12408))@16 <s ymm8_f, ymm8_f <s (12408)@16,
  (-(12408))@16 <s ymm9_0, ymm9_0 <s (12408)@16, (-(12408))@16 <s ymm9_1, ymm9_1 <s (12408)@16,
  (-(12408))@16 <s ymm9_2, ymm9_2 <s (12408)@16, (-(12408))@16 <s ymm9_3, ymm9_3 <s (12408)@16,
  (-(12408))@16 <s ymm9_4, ymm9_4 <s (12408)@16, (-(12408))@16 <s ymm9_5, ymm9_5 <s (12408)@16,
  (-(12408))@16 <s ymm9_6, ymm9_6 <s (12408)@16, (-(12408))@16 <s ymm9_7, ymm9_7 <s (12408)@16,
  (-(12408))@16 <s ymm9_8, ymm9_8 <s (12408)@16, (-(12408))@16 <s ymm9_9, ymm9_9 <s (12408)@16,
  (-(12408))@16 <s ymm9_a, ymm9_a <s (12408)@16, (-(12408))@16 <s ymm9_b, ymm9_b <s (12408)@16,
  (-(12408))@16 <s ymm9_c, ymm9_c <s (12408)@16, (-(12408))@16 <s ymm9_d, ymm9_d <s (12408)@16,
  (-(12408))@16 <s ymm9_e, ymm9_e <s (12408)@16, (-(12408))@16 <s ymm9_f, ymm9_f <s (12408)@16,
  (-(12408))@16 <s ymm10_0, ymm10_0 <s (12408)@16, (-(12408))@16 <s ymm10_1, ymm10_1 <s (12408)@16,
  (-(12408))@16 <s ymm10_2, ymm10_2 <s (12408)@16, (-(12408))@16 <s ymm10_3, ymm10_3 <s (12408)@16,
  (-(12408))@16 <s ymm10_4, ymm10_4 <s (12408)@16, (-(12408))@16 <s ymm10_5, ymm10_5 <s (12408)@16,
  (-(12408))@16 <s ymm10_6, ymm10_6 <s (12408)@16, (-(12408))@16 <s ymm10_7, ymm10_7 <s (12408)@16,
  (-(12408))@16 <s ymm10_8, ymm10_8 <s (12408)@16, (-(12408))@16 <s ymm10_9, ymm10_9 <s (12408)@16,
  (-(12408))@16 <s ymm10_a, ymm10_a <s (12408)@16, (-(12408))@16 <s ymm10_b, ymm10_b <s (12408)@16,
  (-(12408))@16 <s ymm10_c, ymm10_c <s (12408)@16, (-(12408))@16 <s ymm10_d, ymm10_d <s (12408)@16,
  (-(12408))@16 <s ymm10_e, ymm10_e <s (12408)@16, (-(12408))@16 <s ymm10_f, ymm10_f <s (12408)@16,
  (-(12408))@16 <s ymm11_0, ymm11_0 <s (12408)@16, (-(12408))@16 <s ymm11_1, ymm11_1 <s (12408)@16,
  (-(12408))@16 <s ymm11_2, ymm11_2 <s (12408)@16, (-(12408))@16 <s ymm11_3, ymm11_3 <s (12408)@16,
  (-(12408))@16 <s ymm11_4, ymm11_4 <s (12408)@16, (-(12408))@16 <s ymm11_5, ymm11_5 <s (12408)@16,
  (-(12408))@16 <s ymm11_6, ymm11_6 <s (12408)@16, (-(12408))@16 <s ymm11_7, ymm11_7 <s (12408)@16,
  (-(12408))@16 <s ymm11_8, ymm11_8 <s (12408)@16, (-(12408))@16 <s ymm11_9, ymm11_9 <s (12408)@16,
  (-(12408))@16 <s ymm11_a, ymm11_a <s (12408)@16, (-(12408))@16 <s ymm11_b, ymm11_b <s (12408)@16,
  (-(12408))@16 <s ymm11_c, ymm11_c <s (12408)@16, (-(12408))@16 <s ymm11_d, ymm11_d <s (12408)@16,
  (-(12408))@16 <s ymm11_e, ymm11_e <s (12408)@16, (-(12408))@16 <s ymm11_f, ymm11_f <s (12408)@16
];

(* ===== Start of level 2, off 1 ===== *)
(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x5555555584c5 *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm10;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm5;
mov %ymm7 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x5555555584cb *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm10;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm5;
mov %ymm10 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x5555555584d1 *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm11;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm6;
mov %ymm5 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x5555555584d7 *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm11;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm6;
mov %ymm11 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vmovdqa 0x200(%rdx),%ymm15                      #! EA = L0x555555560900; Value = 0x3998399839983998; PC = 0x5555555584dd *)
mov %ymm15 [L0x555555560900, L0x555555560902, L0x555555560904, L0x555555560906, L0x555555560908, L0x55555556090a, L0x55555556090c, L0x55555556090e, L0x555555560910, L0x555555560912, L0x555555560914, L0x555555560916, L0x555555560918, L0x55555556091a, L0x55555556091c, L0x55555556091e];
(* vmovdqa 0x220(%rdx),%ymm6                       #! EA = L0x555555560920; Value = 0x0998099809980998; PC = 0x5555555584e5 *)
mov %ymm6 [L0x555555560920, L0x555555560922, L0x555555560924, L0x555555560926, L0x555555560928, L0x55555556092a, L0x55555556092c, L0x55555556092e, L0x555555560930, L0x555555560932, L0x555555560934, L0x555555560936, L0x555555560938, L0x55555556093a, L0x55555556093c, L0x55555556093e];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x5555555584ed *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x5555555584f2 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x5555555584f7 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x5555555584fc *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm6,%ymm7,%ymm7                       #! PC = 0x555555558501 *)
smull %mulH %mulLymm7 %ymm6 %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw %ymm6,%ymm10,%ymm10                     #! PC = 0x555555558505 *)
smull %mulH %mulLymm10 %ymm6 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm6,%ymm5,%ymm5                       #! PC = 0x555555558509 *)
smull %mulH %mulLymm5 %ymm6 %ymm5;
mov [mulLymm5_0, mulLymm5_1, mulLymm5_2, mulLymm5_3, mulLymm5_4, mulLymm5_5, mulLymm5_6, mulLymm5_7, mulLymm5_8, mulLymm5_9, mulLymm5_a, mulLymm5_b, mulLymm5_c, mulLymm5_d, mulLymm5_e, mulLymm5_f] %mulLymm5;
mov %ymm5 %mulH;
(* vpmulhw %ymm6,%ymm11,%ymm11                     #! PC = 0x55555555850d *)
smull %mulH %mulLymm11 %ymm6 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x555555558511 *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm8;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm3;
mov %ymm6 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x555555558517 *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm8;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm3;
mov %ymm8 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555555851d *)
mov [_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf,
_, _, _, _,
_, _, _, _] %ymm9;
mov [_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7,
_, _, _, _,
_, _, _, _] %ymm4;
mov %ymm3 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x555555558523 *)
mov [_, _, _, _,
_, _, _, _,
_P8, _P9, _Pa, _Pb,
_Pc, _Pd, _Pe, _Pf] %ymm9;
mov [_, _, _, _,
_, _, _, _,
_P0, _P1, _P2, _P3,
_P4, _P5, _P6, _P7] %ymm4;
mov %ymm9 [_P0, _P1, _P2, _P3, _P4, _P5, _P6, _P7, _P8, _P9, _Pa, _Pb, _Pc, _Pd, _Pe, _Pf];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558529 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555555852d *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555558531 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558535 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
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
add %ymm4 %ymm6 %ymm7;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555555853d *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x555555558541 *)
add %ymm6 %ymm8 %ymm10;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x555555558546 *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555555854b *)
add %ymm8 %ymm3 %ymm5;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555555854f *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x555555558553 *)
add %ymm3 %ymm9 %ymm11;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x555555558558 *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555555855d *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x555555558562 *)
add %ymm7 %ymm7 %ymm12;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555558567 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555555856c *)
add %ymm10 %ymm10 %ymm13;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x555555558571 *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x555555558576 *)
add %ymm5 %ymm5 %ymm14;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555555857b *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x555555558580 *)
add %ymm11 %ymm11 %ymm15;
(* ===== End of level 2, off 1 ===== *)

(* ecut 10, rcut 10 *)

mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
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
  [7681, x**32 - (-1728)],
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
  [7681, x**32 - (1728)],
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
  [7681, x**32 - (583)],
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
  [7681, x**32 - (-583)]
] && and [
  (-(16709))@16 <s ymm4_0, ymm4_0 <s (16709)@16, (-(16709))@16 <s ymm4_1, ymm4_1 <s (16709)@16,
  (-(16709))@16 <s ymm4_2, ymm4_2 <s (16709)@16, (-(16709))@16 <s ymm4_3, ymm4_3 <s (16709)@16,
  (-(16709))@16 <s ymm4_4, ymm4_4 <s (16709)@16, (-(16709))@16 <s ymm4_5, ymm4_5 <s (16709)@16,
  (-(16709))@16 <s ymm4_6, ymm4_6 <s (16709)@16, (-(16709))@16 <s ymm4_7, ymm4_7 <s (16709)@16,
  (-(16709))@16 <s ymm6_0, ymm6_0 <s (16709)@16, (-(16709))@16 <s ymm6_1, ymm6_1 <s (16709)@16,
  (-(16709))@16 <s ymm6_2, ymm6_2 <s (16709)@16, (-(16709))@16 <s ymm6_3, ymm6_3 <s (16709)@16,
  (-(16709))@16 <s ymm6_4, ymm6_4 <s (16709)@16, (-(16709))@16 <s ymm6_5, ymm6_5 <s (16709)@16,
  (-(16709))@16 <s ymm6_6, ymm6_6 <s (16709)@16, (-(16709))@16 <s ymm6_7, ymm6_7 <s (16709)@16,
  (-(16709))@16 <s ymm8_0, ymm8_0 <s (16709)@16, (-(16709))@16 <s ymm8_1, ymm8_1 <s (16709)@16,
  (-(16709))@16 <s ymm8_2, ymm8_2 <s (16709)@16, (-(16709))@16 <s ymm8_3, ymm8_3 <s (16709)@16,
  (-(16709))@16 <s ymm8_4, ymm8_4 <s (16709)@16, (-(16709))@16 <s ymm8_5, ymm8_5 <s (16709)@16,
  (-(16709))@16 <s ymm8_6, ymm8_6 <s (16709)@16, (-(16709))@16 <s ymm8_7, ymm8_7 <s (16709)@16,
  (-(16709))@16 <s ymm3_0, ymm3_0 <s (16709)@16, (-(16709))@16 <s ymm3_1, ymm3_1 <s (16709)@16,
  (-(16709))@16 <s ymm3_2, ymm3_2 <s (16709)@16, (-(16709))@16 <s ymm3_3, ymm3_3 <s (16709)@16,
  (-(16709))@16 <s ymm3_4, ymm3_4 <s (16709)@16, (-(16709))@16 <s ymm3_5, ymm3_5 <s (16709)@16,
  (-(16709))@16 <s ymm3_6, ymm3_6 <s (16709)@16, (-(16709))@16 <s ymm3_7, ymm3_7 <s (16709)@16,
  (-(16709))@16 <s ymm7_0, ymm7_0 <s (16709)@16, (-(16709))@16 <s ymm7_1, ymm7_1 <s (16709)@16,
  (-(16709))@16 <s ymm7_2, ymm7_2 <s (16709)@16, (-(16709))@16 <s ymm7_3, ymm7_3 <s (16709)@16,
  (-(16709))@16 <s ymm7_4, ymm7_4 <s (16709)@16, (-(16709))@16 <s ymm7_5, ymm7_5 <s (16709)@16,
  (-(16709))@16 <s ymm7_6, ymm7_6 <s (16709)@16, (-(16709))@16 <s ymm7_7, ymm7_7 <s (16709)@16,
  (-(16709))@16 <s ymm10_0, ymm10_0 <s (16709)@16, (-(16709))@16 <s ymm10_1, ymm10_1 <s (16709)@16,
  (-(16709))@16 <s ymm10_2, ymm10_2 <s (16709)@16, (-(16709))@16 <s ymm10_3, ymm10_3 <s (16709)@16,
  (-(16709))@16 <s ymm10_4, ymm10_4 <s (16709)@16, (-(16709))@16 <s ymm10_5, ymm10_5 <s (16709)@16,
  (-(16709))@16 <s ymm10_6, ymm10_6 <s (16709)@16, (-(16709))@16 <s ymm10_7, ymm10_7 <s (16709)@16,
  (-(16709))@16 <s ymm5_0, ymm5_0 <s (16709)@16, (-(16709))@16 <s ymm5_1, ymm5_1 <s (16709)@16,
  (-(16709))@16 <s ymm5_2, ymm5_2 <s (16709)@16, (-(16709))@16 <s ymm5_3, ymm5_3 <s (16709)@16,
  (-(16709))@16 <s ymm5_4, ymm5_4 <s (16709)@16, (-(16709))@16 <s ymm5_5, ymm5_5 <s (16709)@16,
  (-(16709))@16 <s ymm5_6, ymm5_6 <s (16709)@16, (-(16709))@16 <s ymm5_7, ymm5_7 <s (16709)@16,
  (-(16709))@16 <s ymm11_0, ymm11_0 <s (16709)@16, (-(16709))@16 <s ymm11_1, ymm11_1 <s (16709)@16,
  (-(16709))@16 <s ymm11_2, ymm11_2 <s (16709)@16, (-(16709))@16 <s ymm11_3, ymm11_3 <s (16709)@16,
  (-(16709))@16 <s ymm11_4, ymm11_4 <s (16709)@16, (-(16709))@16 <s ymm11_5, ymm11_5 <s (16709)@16,
  (-(16709))@16 <s ymm11_6, ymm11_6 <s (16709)@16, (-(16709))@16 <s ymm11_7, ymm11_7 <s (16709)@16,
  (-(16658))@16 <s ymm4_8, ymm4_8 <s (16658)@16, (-(16658))@16 <s ymm4_9, ymm4_9 <s (16658)@16,
  (-(16658))@16 <s ymm4_a, ymm4_a <s (16658)@16, (-(16658))@16 <s ymm4_b, ymm4_b <s (16658)@16,
  (-(16658))@16 <s ymm4_c, ymm4_c <s (16658)@16, (-(16658))@16 <s ymm4_d, ymm4_d <s (16658)@16,
  (-(16658))@16 <s ymm4_e, ymm4_e <s (16658)@16, (-(16658))@16 <s ymm4_f, ymm4_f <s (16658)@16,
  (-(16658))@16 <s ymm6_8, ymm6_8 <s (16658)@16, (-(16658))@16 <s ymm6_9, ymm6_9 <s (16658)@16,
  (-(16658))@16 <s ymm6_a, ymm6_a <s (16658)@16, (-(16658))@16 <s ymm6_b, ymm6_b <s (16658)@16,
  (-(16658))@16 <s ymm6_c, ymm6_c <s (16658)@16, (-(16658))@16 <s ymm6_d, ymm6_d <s (16658)@16,
  (-(16658))@16 <s ymm6_e, ymm6_e <s (16658)@16, (-(16658))@16 <s ymm6_f, ymm6_f <s (16658)@16,
  (-(16658))@16 <s ymm8_8, ymm8_8 <s (16658)@16, (-(16658))@16 <s ymm8_9, ymm8_9 <s (16658)@16,
  (-(16658))@16 <s ymm8_a, ymm8_a <s (16658)@16, (-(16658))@16 <s ymm8_b, ymm8_b <s (16658)@16,
  (-(16658))@16 <s ymm8_c, ymm8_c <s (16658)@16, (-(16658))@16 <s ymm8_d, ymm8_d <s (16658)@16,
  (-(16658))@16 <s ymm8_e, ymm8_e <s (16658)@16, (-(16658))@16 <s ymm8_f, ymm8_f <s (16658)@16,
  (-(16658))@16 <s ymm3_8, ymm3_8 <s (16658)@16, (-(16658))@16 <s ymm3_9, ymm3_9 <s (16658)@16,
  (-(16658))@16 <s ymm3_a, ymm3_a <s (16658)@16, (-(16658))@16 <s ymm3_b, ymm3_b <s (16658)@16,
  (-(16658))@16 <s ymm3_c, ymm3_c <s (16658)@16, (-(16658))@16 <s ymm3_d, ymm3_d <s (16658)@16,
  (-(16658))@16 <s ymm3_e, ymm3_e <s (16658)@16, (-(16658))@16 <s ymm3_f, ymm3_f <s (16658)@16,
  (-(16658))@16 <s ymm7_8, ymm7_8 <s (16658)@16, (-(16658))@16 <s ymm7_9, ymm7_9 <s (16658)@16,
  (-(16658))@16 <s ymm7_a, ymm7_a <s (16658)@16, (-(16658))@16 <s ymm7_b, ymm7_b <s (16658)@16,
  (-(16658))@16 <s ymm7_c, ymm7_c <s (16658)@16, (-(16658))@16 <s ymm7_d, ymm7_d <s (16658)@16,
  (-(16658))@16 <s ymm7_e, ymm7_e <s (16658)@16, (-(16658))@16 <s ymm7_f, ymm7_f <s (16658)@16,
  (-(16658))@16 <s ymm10_8, ymm10_8 <s (16658)@16, (-(16658))@16 <s ymm10_9, ymm10_9 <s (16658)@16,
  (-(16658))@16 <s ymm10_a, ymm10_a <s (16658)@16, (-(16658))@16 <s ymm10_b, ymm10_b <s (16658)@16,
  (-(16658))@16 <s ymm10_c, ymm10_c <s (16658)@16, (-(16658))@16 <s ymm10_d, ymm10_d <s (16658)@16,
  (-(16658))@16 <s ymm10_e, ymm10_e <s (16658)@16, (-(16658))@16 <s ymm10_f, ymm10_f <s (16658)@16,
  (-(16658))@16 <s ymm5_8, ymm5_8 <s (16658)@16, (-(16658))@16 <s ymm5_9, ymm5_9 <s (16658)@16,
  (-(16658))@16 <s ymm5_a, ymm5_a <s (16658)@16, (-(16658))@16 <s ymm5_b, ymm5_b <s (16658)@16,
  (-(16658))@16 <s ymm5_c, ymm5_c <s (16658)@16, (-(16658))@16 <s ymm5_d, ymm5_d <s (16658)@16,
  (-(16658))@16 <s ymm5_e, ymm5_e <s (16658)@16, (-(16658))@16 <s ymm5_f, ymm5_f <s (16658)@16,
  (-(16658))@16 <s ymm11_8, ymm11_8 <s (16658)@16, (-(16658))@16 <s ymm11_9, ymm11_9 <s (16658)@16,
  (-(16658))@16 <s ymm11_a, ymm11_a <s (16658)@16, (-(16658))@16 <s ymm11_b, ymm11_b <s (16658)@16,
  (-(16658))@16 <s ymm11_c, ymm11_c <s (16658)@16, (-(16658))@16 <s ymm11_d, ymm11_d <s (16658)@16,
  (-(16658))@16 <s ymm11_e, ymm11_e <s (16658)@16, (-(16658))@16 <s ymm11_f, ymm11_f <s (16658)@16
];

(* ===== Start of level 3, off 1 ===== *)
(* vpunpcklqdq %ymm7,%ymm4,%ymm9                   #! PC = 0x555555558585 *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm7;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm4;
mov %ymm9 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x555555558589 *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm7;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm4;
mov %ymm7 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555555858d *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm10;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm6;
mov %ymm4 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x555555558592 *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm10;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm6;
mov %ymm10 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpunpcklqdq %ymm5,%ymm8,%ymm6                   #! PC = 0x555555558597 *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm5;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm8;
mov %ymm6 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555555859b *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm5;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm8;
mov %ymm5 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555555859f *)
mov [_L4, _L5, _L6, _L7,
_, _, _, _,
_Lc, _Ld, _Le, _Lf,
_, _, _, _] %ymm11;
mov [_L0, _L1, _L2, _L3,
_, _, _, _,
_L8, _L9, _La, _Lb,
_, _, _, _] %ymm3;
mov %ymm8 [_L0, _L1, _L2, _L3, _L4, _L5, _L6, _L7, _L8, _L9, _La, _Lb, _Lc, _Ld, _Le, _Lf];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x5555555585a4 *)
mov [_, _, _, _,
_H4, _H5, _H6, _H7,
_, _, _, _,
_Hc, _Hd, _He, _Hf] %ymm11;
mov [_, _, _, _,
_H0, _H1, _H2, _H3,
_, _, _, _,
_H8, _H9, _Ha, _Hb] %ymm3;
mov %ymm11 [_H0, _H1, _H2, _H3, _H4, _H5, _H6, _H7, _H8, _H9, _Ha, _Hb, _Hc, _Hd, _He, _Hf];
(* vpmullw 0x440(%rdx),%ymm9,%ymm12                #! EA = L0x555555560b40; Value = 0xa9e9de92f8c5fff7; PC = 0x5555555585a9 *)
smull %mulHymm9 %mulL [L0x555555560b40, L0x555555560b42, L0x555555560b44, L0x555555560b46, L0x555555560b48, L0x555555560b4a, L0x555555560b4c, L0x555555560b4e, L0x555555560b50, L0x555555560b52, L0x555555560b54, L0x555555560b56, L0x555555560b58, L0x555555560b5a, L0x555555560b5c, L0x555555560b5e] %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw 0x480(%rdx),%ymm7,%ymm13                #! EA = L0x555555560b80; Value = 0xedf060a7b4f106bc; PC = 0x5555555585b1 *)
smull %mulHymm7 %mulL [L0x555555560b80, L0x555555560b82, L0x555555560b84, L0x555555560b86, L0x555555560b88, L0x555555560b8a, L0x555555560b8c, L0x555555560b8e, L0x555555560b90, L0x555555560b92, L0x555555560b94, L0x555555560b96, L0x555555560b98, L0x555555560b9a, L0x555555560b9c, L0x555555560b9e] %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw 0x4c0(%rdx),%ymm4,%ymm14                #! EA = L0x555555560bc0; Value = 0x40febbe0397eb00b; PC = 0x5555555585b9 *)
smull %mulHymm4 %mulL [L0x555555560bc0, L0x555555560bc2, L0x555555560bc4, L0x555555560bc6, L0x555555560bc8, L0x555555560bca, L0x555555560bcc, L0x555555560bce, L0x555555560bd0, L0x555555560bd2, L0x555555560bd4, L0x555555560bd6, L0x555555560bd8, L0x555555560bda, L0x555555560bdc, L0x555555560bde] %ymm4;
cast %ymm14@sint16[16] %mulL;
(* vpmullw 0x500(%rdx),%ymm10,%ymm15               #! EA = L0x555555560c00; Value = 0xb7b6c124a283172a; PC = 0x5555555585c1 *)
smull %mulHymm10 %mulL [L0x555555560c00, L0x555555560c02, L0x555555560c04, L0x555555560c06, L0x555555560c08, L0x555555560c0a, L0x555555560c0c, L0x555555560c0e, L0x555555560c10, L0x555555560c12, L0x555555560c14, L0x555555560c16, L0x555555560c18, L0x555555560c1a, L0x555555560c1c, L0x555555560c1e] %ymm10;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw 0x460(%rdx),%ymm9,%ymm9                 #! EA = L0x555555560b60; Value = 0xf7e9fa920ec5f1f7; PC = 0x5555555585c9 *)
smull %mulH %mulLymm9 [L0x555555560b60, L0x555555560b62, L0x555555560b64, L0x555555560b66, L0x555555560b68, L0x555555560b6a, L0x555555560b6c, L0x555555560b6e, L0x555555560b70, L0x555555560b72, L0x555555560b74, L0x555555560b76, L0x555555560b78, L0x555555560b7a, L0x555555560b7c, L0x555555560b7e] %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw 0x4a0(%rdx),%ymm7,%ymm7                 #! EA = L0x555555560ba0; Value = 0x0df0f2a7f2f10ebc; PC = 0x5555555585d1 *)
smull %mulH %mulLymm7 [L0x555555560ba0, L0x555555560ba2, L0x555555560ba4, L0x555555560ba6, L0x555555560ba8, L0x555555560baa, L0x555555560bac, L0x555555560bae, L0x555555560bb0, L0x555555560bb2, L0x555555560bb4, L0x555555560bb6, L0x555555560bb8, L0x555555560bba, L0x555555560bbc, L0x555555560bbe] %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw 0x4e0(%rdx),%ymm4,%ymm4                 #! EA = L0x555555560be0; Value = 0x04fefbe0fd7efa0b; PC = 0x5555555585d9 *)
smull %mulH %mulLymm4 [L0x555555560be0, L0x555555560be2, L0x555555560be4, L0x555555560be6, L0x555555560be8, L0x555555560bea, L0x555555560bec, L0x555555560bee, L0x555555560bf0, L0x555555560bf2, L0x555555560bf4, L0x555555560bf6, L0x555555560bf8, L0x555555560bfa, L0x555555560bfc, L0x555555560bfe] %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw 0x520(%rdx),%ymm10,%ymm10               #! EA = L0x555555560c20; Value = 0x0bb6f924fc83032a; PC = 0x5555555585e1 *)
smull %mulH %mulLymm10 [L0x555555560c20, L0x555555560c22, L0x555555560c24, L0x555555560c26, L0x555555560c28, L0x555555560c2a, L0x555555560c2c, L0x555555560c2e, L0x555555560c30, L0x555555560c32, L0x555555560c34, L0x555555560c36, L0x555555560c38, L0x555555560c3a, L0x555555560c3c, L0x555555560c3e] %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555585e9 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555585ed *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x5555555585f1 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x5555555585f5 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555585f9 *)
sub %ymm9 %ymm9 %ymm12;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x5555555585fe *)
sub %ymm7 %ymm7 %ymm13;
(* vpsubw %ymm14,%ymm4,%ymm4                       #! PC = 0x555555558603 *)
sub %ymm4 %ymm4 %ymm14;
(* vpsubw %ymm15,%ymm10,%ymm10                     #! PC = 0x555555558608 *)
sub %ymm10 %ymm10 %ymm15;
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
smull %mulHymm6 %mulL [L0x555555560c40, L0x555555560c42, L0x555555560c44, L0x555555560c46, L0x555555560c48, L0x555555560c4a, L0x555555560c4c, L0x555555560c4e, L0x555555560c50, L0x555555560c52, L0x555555560c54, L0x555555560c56, L0x555555560c58, L0x555555560c5a, L0x555555560c5c, L0x555555560c5e] %ymm6;
cast %ymm12@sint16[16] %mulL;
(* vpmullw 0x580(%rdx),%ymm5,%ymm13                #! EA = L0x555555560c80; Value = 0x8ee2f280eab41199; PC = 0x555555558615 *)
smull %mulHymm5 %mulL [L0x555555560c80, L0x555555560c82, L0x555555560c84, L0x555555560c86, L0x555555560c88, L0x555555560c8a, L0x555555560c8c, L0x555555560c8e, L0x555555560c90, L0x555555560c92, L0x555555560c94, L0x555555560c96, L0x555555560c98, L0x555555560c9a, L0x555555560c9c, L0x555555560c9e] %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw 0x5c0(%rdx),%ymm8,%ymm14                #! EA = L0x555555560cc0; Value = 0x41f5a6a5ce0a1d43; PC = 0x55555555861d *)
smull %mulHymm8 %mulL [L0x555555560cc0, L0x555555560cc2, L0x555555560cc4, L0x555555560cc6, L0x555555560cc8, L0x555555560cca, L0x555555560ccc, L0x555555560cce, L0x555555560cd0, L0x555555560cd2, L0x555555560cd4, L0x555555560cd6, L0x555555560cd8, L0x555555560cda, L0x555555560cdc, L0x555555560cde] %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw 0x600(%rdx),%ymm11,%ymm15               #! EA = L0x555555560d00; Value = 0xf47881b76bf4e8e7; PC = 0x555555558625 *)
smull %mulHymm11 %mulL [L0x555555560d00, L0x555555560d02, L0x555555560d04, L0x555555560d06, L0x555555560d08, L0x555555560d0a, L0x555555560d0c, L0x555555560d0e, L0x555555560d10, L0x555555560d12, L0x555555560d14, L0x555555560d16, L0x555555560d18, L0x555555560d1a, L0x555555560d1c, L0x555555560d1e] %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw 0x560(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560c60; Value = 0x04b3056a0e8bf6f1; PC = 0x55555555862d *)
smull %mulH %mulLymm6 [L0x555555560c60, L0x555555560c62, L0x555555560c64, L0x555555560c66, L0x555555560c68, L0x555555560c6a, L0x555555560c6c, L0x555555560c6e, L0x555555560c70, L0x555555560c72, L0x555555560c74, L0x555555560c76, L0x555555560c78, L0x555555560c7a, L0x555555560c7c, L0x555555560c7e] %ymm6;
mov [mulLymm6_0, mulLymm6_1, mulLymm6_2, mulLymm6_3, mulLymm6_4, mulLymm6_5, mulLymm6_6, mulLymm6_7, mulLymm6_8, mulLymm6_9, mulLymm6_a, mulLymm6_b, mulLymm6_c, mulLymm6_d, mulLymm6_e, mulLymm6_f] %mulLymm6;
mov %ymm6 %mulH;
(* vpmulhw 0x5a0(%rdx),%ymm5,%ymm5                 #! EA = L0x555555560ca0; Value = 0x0ae2f28002b4ff99; PC = 0x555555558635 *)
smull %mulH %mulLymm5 [L0x555555560ca0, L0x555555560ca2, L0x555555560ca4, L0x555555560ca6, L0x555555560ca8, L0x555555560caa, L0x555555560cac, L0x555555560cae, L0x555555560cb0, L0x555555560cb2, L0x555555560cb4, L0x555555560cb6, L0x555555560cb8, L0x555555560cba, L0x555555560cbc, L0x555555560cbe] %ymm5;
mov [mulLymm5_0, mulLymm5_1, mulLymm5_2, mulLymm5_3, mulLymm5_4, mulLymm5_5, mulLymm5_6, mulLymm5_7, mulLymm5_8, mulLymm5_9, mulLymm5_a, mulLymm5_b, mulLymm5_c, mulLymm5_d, mulLymm5_e, mulLymm5_f] %mulLymm5;
mov %ymm5 %mulH;
(* vpmulhw 0x5e0(%rdx),%ymm8,%ymm8                 #! EA = L0x555555560ce0; Value = 0xf7f5fca5fa0af743; PC = 0x55555555863d *)
smull %mulH %mulLymm8 [L0x555555560ce0, L0x555555560ce2, L0x555555560ce4, L0x555555560ce6, L0x555555560ce8, L0x555555560cea, L0x555555560cec, L0x555555560cee, L0x555555560cf0, L0x555555560cf2, L0x555555560cf4, L0x555555560cf6, L0x555555560cf8, L0x555555560cfa, L0x555555560cfc, L0x555555560cfe] %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw 0x620(%rdx),%ymm11,%ymm11               #! EA = L0x555555560d20; Value = 0x0478f3b703f4fae7; PC = 0x555555558645 *)
smull %mulH %mulLymm11 [L0x555555560d20, L0x555555560d22, L0x555555560d24, L0x555555560d26, L0x555555560d28, L0x555555560d2a, L0x555555560d2c, L0x555555560d2e, L0x555555560d30, L0x555555560d32, L0x555555560d34, L0x555555560d36, L0x555555560d38, L0x555555560d3a, L0x555555560d3c, L0x555555560d3e] %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555864d *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558651 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555558655 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x555555558659 *)
smull %mulH %mulLymm15 %ymm0 %ymm15;
mov [mulLymm15_0, mulLymm15_1, mulLymm15_2, mulLymm15_3, mulLymm15_4, mulLymm15_5, mulLymm15_6, mulLymm15_7, mulLymm15_8, mulLymm15_9, mulLymm15_a, mulLymm15_b, mulLymm15_c, mulLymm15_d, mulLymm15_e, mulLymm15_f] %mulLymm15;
mov %ymm15 %mulH;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555555865d *)
sub %ymm6 %ymm6 %ymm12;
(* vpsubw %ymm13,%ymm5,%ymm5                       #! PC = 0x555555558662 *)
sub %ymm5 %ymm5 %ymm13;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x555555558667 *)
sub %ymm8 %ymm8 %ymm14;
(* vpsubw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555555866c *)
sub %ymm11 %ymm11 %ymm15;
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
add %ymm3 %ymm9 %ymm6;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x555555558675 *)
sub %ymm6 %ymm9 %ymm6;
(* vpaddw %ymm5,%ymm7,%ymm9                        #! PC = 0x555555558679 *)
add %ymm9 %ymm7 %ymm5;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555555867d *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x555555558681 *)
add %ymm7 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555558686 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555555868b *)
add %ymm4 %ymm10 %ymm11;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558690 *)
sub %ymm11 %ymm10 %ymm11;
(* ===== End of level 3, off 1 ===== *)

(* ecut 11, rcut 11 *)

mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((5805*x)**1) + ymm3_2*((5805*x)**2) + ymm3_3*((5805*x)**3) +
    ymm9_0*((5805*x)**4) + ymm9_1*((5805*x)**5) + ymm9_2*((5805*x)**6) + ymm9_3*((5805*x)**7) +
    ymm7_0*((5805*x)**8) + ymm7_1*((5805*x)**9) + ymm7_2*((5805*x)**10) + ymm7_3*((5805*x)**11) +
    ymm4_0*((5805*x)**12) + ymm4_1*((5805*x)**13) + ymm4_2*((5805*x)**14) + ymm4_3*((5805*x)**15)
  )
  [7681, x**16 - (2132)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((5805*x)**1) + ymm6_2*((5805*x)**2) + ymm6_3*((5805*x)**3) +
    ymm5_0*((5805*x)**4) + ymm5_1*((5805*x)**5) + ymm5_2*((5805*x)**6) + ymm5_3*((5805*x)**7) +
    ymm8_0*((5805*x)**8) + ymm8_1*((5805*x)**9) + ymm8_2*((5805*x)**10) + ymm8_3*((5805*x)**11) +
    ymm11_0*((5805*x)**12) + ymm11_1*((5805*x)**13) + ymm11_2*((5805*x)**14) + ymm11_3*((5805*x)**15)
  )
  [7681, x**16 - (-2132)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((4600*x)**1) + ymm3_6*((4600*x)**2) + ymm3_7*((4600*x)**3) +
    ymm9_4*((4600*x)**4) + ymm9_5*((4600*x)**5) + ymm9_6*((4600*x)**6) + ymm9_7*((4600*x)**7) +
    ymm7_4*((4600*x)**8) + ymm7_5*((4600*x)**9) + ymm7_6*((4600*x)**10) + ymm7_7*((4600*x)**11) +
    ymm4_4*((4600*x)**12) + ymm4_5*((4600*x)**13) + ymm4_6*((4600*x)**14) + ymm4_7*((4600*x)**15)
  )
  [7681, x**16 - (97)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((4600*x)**1) + ymm6_6*((4600*x)**2) + ymm6_7*((4600*x)**3) +
    ymm5_4*((4600*x)**4) + ymm5_5*((4600*x)**5) + ymm5_6*((4600*x)**6) + ymm5_7*((4600*x)**7) +
    ymm8_4*((4600*x)**8) + ymm8_5*((4600*x)**9) + ymm8_6*((4600*x)**10) + ymm8_7*((4600*x)**11) +
    ymm11_4*((4600*x)**12) + ymm11_5*((4600*x)**13) + ymm11_6*((4600*x)**14) + ymm11_7*((4600*x)**15)
  )
  [7681, x**16 - (-97)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((4236*x)**1) + ymm3_a*((4236*x)**2) + ymm3_b*((4236*x)**3) +
    ymm9_8*((4236*x)**4) + ymm9_9*((4236*x)**5) + ymm9_a*((4236*x)**6) + ymm9_b*((4236*x)**7) +
    ymm7_8*((4236*x)**8) + ymm7_9*((4236*x)**9) + ymm7_a*((4236*x)**10) + ymm7_b*((4236*x)**11) +
    ymm4_8*((4236*x)**12) + ymm4_9*((4236*x)**13) + ymm4_a*((4236*x)**14) + ymm4_b*((4236*x)**15)
  )
  [7681, x**16 - (-2381)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((4236*x)**1) + ymm6_a*((4236*x)**2) + ymm6_b*((4236*x)**3) +
    ymm5_8*((4236*x)**4) + ymm5_9*((4236*x)**5) + ymm5_a*((4236*x)**6) + ymm5_b*((4236*x)**7) +
    ymm8_8*((4236*x)**8) + ymm8_9*((4236*x)**9) + ymm8_a*((4236*x)**10) + ymm8_b*((4236*x)**11) +
    ymm11_8*((4236*x)**12) + ymm11_9*((4236*x)**13) + ymm11_a*((4236*x)**14) + ymm11_b*((4236*x)**15)
  )
  [7681, x**16 - (2381)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((62*x)**1) + ymm3_e*((62*x)**2) + ymm3_f*((62*x)**3) +
    ymm9_c*((62*x)**4) + ymm9_d*((62*x)**5) + ymm9_e*((62*x)**6) + ymm9_f*((62*x)**7) +
    ymm7_c*((62*x)**8) + ymm7_d*((62*x)**9) + ymm7_e*((62*x)**10) + ymm7_f*((62*x)**11) +
    ymm4_c*((62*x)**12) + ymm4_d*((62*x)**13) + ymm4_e*((62*x)**14) + ymm4_f*((62*x)**15)
  )
  [7681, x**16 - (2446)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((62*x)**1) + ymm6_e*((62*x)**2) + ymm6_f*((62*x)**3) +
    ymm5_c*((62*x)**4) + ymm5_d*((62*x)**5) + ymm5_e*((62*x)**6) + ymm5_f*((62*x)**7) +
    ymm8_c*((62*x)**8) + ymm8_d*((62*x)**9) + ymm8_e*((62*x)**10) + ymm8_f*((62*x)**11) +
    ymm11_c*((62*x)**12) + ymm11_d*((62*x)**13) + ymm11_e*((62*x)**14) + ymm11_f*((62*x)**15)
  )
  [7681, x**16 - (-2446)]
] && and [
  (-(8842))@16 <=s ymm3_0, ymm3_0 <=s (8842)@16, (-(9498))@16 <=s ymm3_1, ymm3_1 <=s (9498)@16,
  (-(8380))@16 <=s ymm3_2, ymm3_2 <=s (8380)@16, (-(8470))@16 <=s ymm3_3, ymm3_3 <=s (8470)@16,
  (-(8644))@16 <=s ymm9_0, ymm9_0 <=s (8644)@16, (-(8656))@16 <=s ymm9_1, ymm9_1 <=s (8656)@16,
  (-(9381))@16 <=s ymm9_2, ymm9_2 <=s (9381)@16, (-(9268))@16 <=s ymm9_3, ymm9_3 <=s (9268)@16,
  (-(8604))@16 <=s ymm7_0, ymm7_0 <=s (8604)@16, (-(8223))@16 <=s ymm7_1, ymm7_1 <=s (8223)@16,
  (-(8144))@16 <=s ymm7_2, ymm7_2 <=s (8144)@16, (-(8512))@16 <=s ymm7_3, ymm7_3 <=s (8512)@16,
  (-(8173))@16 <=s ymm4_0, ymm4_0 <=s (8173)@16, (-(8120))@16 <=s ymm4_1, ymm4_1 <=s (8120)@16,
  (-(8887))@16 <=s ymm4_2, ymm4_2 <=s (8887)@16, (-(8684))@16 <=s ymm4_3, ymm4_3 <=s (8684)@16,
  (-(8842))@16 <=s ymm6_0, ymm6_0 <=s (8842)@16, (-(9498))@16 <=s ymm6_1, ymm6_1 <=s (9498)@16,
  (-(8380))@16 <=s ymm6_2, ymm6_2 <=s (8380)@16, (-(8470))@16 <=s ymm6_3, ymm6_3 <=s (8470)@16,
  (-(8644))@16 <=s ymm5_0, ymm5_0 <=s (8644)@16, (-(8656))@16 <=s ymm5_1, ymm5_1 <=s (8656)@16,
  (-(9381))@16 <=s ymm5_2, ymm5_2 <=s (9381)@16, (-(9268))@16 <=s ymm5_3, ymm5_3 <=s (9268)@16,
  (-(8604))@16 <=s ymm8_0, ymm8_0 <=s (8604)@16, (-(8223))@16 <=s ymm8_1, ymm8_1 <=s (8223)@16,
  (-(8144))@16 <=s ymm8_2, ymm8_2 <=s (8144)@16, (-(8512))@16 <=s ymm8_3, ymm8_3 <=s (8512)@16,
  (-(8173))@16 <=s ymm11_0, ymm11_0 <=s (8173)@16, (-(8120))@16 <=s ymm11_1, ymm11_1 <=s (8120)@16,
  (-(8887))@16 <=s ymm11_2, ymm11_2 <=s (8887)@16, (-(8684))@16 <=s ymm11_3, ymm11_3 <=s (8684)@16,
  (-(8995))@16 <=s ymm3_4, ymm3_4 <=s (8995)@16, (-(8760))@16 <=s ymm3_5, ymm3_5 <=s (8760)@16,
  (-(9021))@16 <=s ymm3_6, ymm3_6 <=s (9021)@16, (-(8692))@16 <=s ymm3_7, ymm3_7 <=s (8692)@16,
  (-(8563))@16 <=s ymm9_4, ymm9_4 <=s (8563)@16, (-(8398))@16 <=s ymm9_5, ymm9_5 <=s (8398)@16,
  (-(7730))@16 <=s ymm9_6, ymm9_6 <=s (7730)@16, (-(8828))@16 <=s ymm9_7, ymm9_7 <=s (8828)@16,
  (-(8571))@16 <=s ymm7_4, ymm7_4 <=s (8571)@16, (-(9172))@16 <=s ymm7_5, ymm7_5 <=s (9172)@16,
  (-(9128))@16 <=s ymm7_6, ymm7_6 <=s (9128)@16, (-(7771))@16 <=s ymm7_7, ymm7_7 <=s (7771)@16,
  (-(9476))@16 <=s ymm4_4, ymm4_4 <=s (9476)@16, (-(8233))@16 <=s ymm4_5, ymm4_5 <=s (8233)@16,
  (-(9157))@16 <=s ymm4_6, ymm4_6 <=s (9157)@16, (-(8698))@16 <=s ymm4_7, ymm4_7 <=s (8698)@16,
  (-(8995))@16 <=s ymm6_4, ymm6_4 <=s (8995)@16, (-(8760))@16 <=s ymm6_5, ymm6_5 <=s (8760)@16,
  (-(9021))@16 <=s ymm6_6, ymm6_6 <=s (9021)@16, (-(8692))@16 <=s ymm6_7, ymm6_7 <=s (8692)@16,
  (-(8563))@16 <=s ymm5_4, ymm5_4 <=s (8563)@16, (-(8398))@16 <=s ymm5_5, ymm5_5 <=s (8398)@16,
  (-(7730))@16 <=s ymm5_6, ymm5_6 <=s (7730)@16, (-(8828))@16 <=s ymm5_7, ymm5_7 <=s (8828)@16,
  (-(8571))@16 <=s ymm8_4, ymm8_4 <=s (8571)@16, (-(9172))@16 <=s ymm8_5, ymm8_5 <=s (9172)@16,
  (-(9128))@16 <=s ymm8_6, ymm8_6 <=s (9128)@16, (-(7771))@16 <=s ymm8_7, ymm8_7 <=s (7771)@16,
  (-(9476))@16 <=s ymm11_4, ymm11_4 <=s (9476)@16, (-(8233))@16 <=s ymm11_5, ymm11_5 <=s (8233)@16,
  (-(9157))@16 <=s ymm11_6, ymm11_6 <=s (9157)@16, (-(8698))@16 <=s ymm11_7, ymm11_7 <=s (8698)@16,
  (-(8702))@16 <=s ymm3_8, ymm3_8 <=s (8702)@16, (-(8915))@16 <=s ymm3_9, ymm3_9 <=s (8915)@16,
  (-(9040))@16 <=s ymm3_a, ymm3_a <=s (9040)@16, (-(8627))@16 <=s ymm3_b, ymm3_b <=s (8627)@16,
  (-(8645))@16 <=s ymm9_8, ymm9_8 <=s (8645)@16, (-(9319))@16 <=s ymm9_9, ymm9_9 <=s (9319)@16,
  (-(8750))@16 <=s ymm9_a, ymm9_a <=s (8750)@16, (-(8439))@16 <=s ymm9_b, ymm9_b <=s (8439)@16,
  (-(8880))@16 <=s ymm7_8, ymm7_8 <=s (8880)@16, (-(8801))@16 <=s ymm7_9, ymm7_9 <=s (8801)@16,
  (-(9432))@16 <=s ymm7_a, ymm7_a <=s (9432)@16, (-(8963))@16 <=s ymm7_b, ymm7_b <=s (8963)@16,
  (-(8867))@16 <=s ymm4_8, ymm4_8 <=s (8867)@16, (-(8631))@16 <=s ymm4_9, ymm4_9 <=s (8631)@16,
  (-(8560))@16 <=s ymm4_a, ymm4_a <=s (8560)@16, (-(7902))@16 <=s ymm4_b, ymm4_b <=s (7902)@16,
  (-(8702))@16 <=s ymm6_8, ymm6_8 <=s (8702)@16, (-(8915))@16 <=s ymm6_9, ymm6_9 <=s (8915)@16,
  (-(9040))@16 <=s ymm6_a, ymm6_a <=s (9040)@16, (-(8627))@16 <=s ymm6_b, ymm6_b <=s (8627)@16,
  (-(8645))@16 <=s ymm5_8, ymm5_8 <=s (8645)@16, (-(9319))@16 <=s ymm5_9, ymm5_9 <=s (9319)@16,
  (-(8750))@16 <=s ymm5_a, ymm5_a <=s (8750)@16, (-(8439))@16 <=s ymm5_b, ymm5_b <=s (8439)@16,
  (-(8880))@16 <=s ymm8_8, ymm8_8 <=s (8880)@16, (-(8801))@16 <=s ymm8_9, ymm8_9 <=s (8801)@16,
  (-(9432))@16 <=s ymm8_a, ymm8_a <=s (9432)@16, (-(8963))@16 <=s ymm8_b, ymm8_b <=s (8963)@16,
  (-(8867))@16 <=s ymm11_8, ymm11_8 <=s (8867)@16, (-(8631))@16 <=s ymm11_9, ymm11_9 <=s (8631)@16,
  (-(8560))@16 <=s ymm11_a, ymm11_a <=s (8560)@16, (-(7902))@16 <=s ymm11_b, ymm11_b <=s (7902)@16,
  (-(8633))@16 <=s ymm3_c, ymm3_c <=s (8633)@16, (-(8921))@16 <=s ymm3_d, ymm3_d <=s (8921)@16,
  (-(8032))@16 <=s ymm3_e, ymm3_e <=s (8032)@16, (-(9225))@16 <=s ymm3_f, ymm3_f <=s (9225)@16,
  (-(8596))@16 <=s ymm9_c, ymm9_c <=s (8596)@16, (-(8819))@16 <=s ymm9_d, ymm9_d <=s (8819)@16,
  (-(8558))@16 <=s ymm9_e, ymm9_e <=s (8558)@16, (-(8984))@16 <=s ymm9_f, ymm9_f <=s (8984)@16,
  (-(8651))@16 <=s ymm7_c, ymm7_c <=s (8651)@16, (-(8331))@16 <=s ymm7_d, ymm7_d <=s (8331)@16,
  (-(9289))@16 <=s ymm7_e, ymm7_e <=s (9289)@16, (-(8128))@16 <=s ymm7_f, ymm7_f <=s (8128)@16,
  (-(8136))@16 <=s ymm4_c, ymm4_c <=s (8136)@16, (-(7811))@16 <=s ymm4_d, ymm4_d <=s (7811)@16,
  (-(8359))@16 <=s ymm4_e, ymm4_e <=s (8359)@16, (-(9019))@16 <=s ymm4_f, ymm4_f <=s (9019)@16,
  (-(8633))@16 <=s ymm6_c, ymm6_c <=s (8633)@16, (-(8921))@16 <=s ymm6_d, ymm6_d <=s (8921)@16,
  (-(8032))@16 <=s ymm6_e, ymm6_e <=s (8032)@16, (-(9225))@16 <=s ymm6_f, ymm6_f <=s (9225)@16,
  (-(8596))@16 <=s ymm5_c, ymm5_c <=s (8596)@16, (-(8819))@16 <=s ymm5_d, ymm5_d <=s (8819)@16,
  (-(8558))@16 <=s ymm5_e, ymm5_e <=s (8558)@16, (-(8984))@16 <=s ymm5_f, ymm5_f <=s (8984)@16,
  (-(8651))@16 <=s ymm8_c, ymm8_c <=s (8651)@16, (-(8331))@16 <=s ymm8_d, ymm8_d <=s (8331)@16,
  (-(9289))@16 <=s ymm8_e, ymm8_e <=s (9289)@16, (-(8128))@16 <=s ymm8_f, ymm8_f <=s (8128)@16,
  (-(8136))@16 <=s ymm11_c, ymm11_c <=s (8136)@16, (-(7811))@16 <=s ymm11_d, ymm11_d <=s (7811)@16,
  (-(8359))@16 <=s ymm11_e, ymm11_e <=s (8359)@16, (-(9019))@16 <=s ymm11_f, ymm11_f <=s (9019)@16
];

(* ===== Start of level 4, off 1 ===== *)
(* vmovdqa 0x80(%rdx),%ymm14                       #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x555555558695 *)
mov %ymm14 [L0x555555560780, L0x555555560782, L0x555555560784, L0x555555560786, L0x555555560788, L0x55555556078a, L0x55555556078c, L0x55555556078e, L0x555555560790, L0x555555560792, L0x555555560794, L0x555555560796, L0x555555560798, L0x55555556079a, L0x55555556079c, L0x55555556079e];
(* vmovdqa 0xa0(%rdx),%ymm15                       #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x55555555869d *)
mov %ymm15 [L0x5555555607a0, L0x5555555607a2, L0x5555555607a4, L0x5555555607a6, L0x5555555607a8, L0x5555555607aa, L0x5555555607ac, L0x5555555607ae, L0x5555555607b0, L0x5555555607b2, L0x5555555607b4, L0x5555555607b6, L0x5555555607b8, L0x5555555607ba, L0x5555555607bc, L0x5555555607be];
(* vpmullw %ymm14,%ymm7,%ymm13                     #! PC = 0x5555555586a5 *)
smull %mulHymm7 %mulL %ymm14 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm15,%ymm7,%ymm7                      #! PC = 0x5555555586aa *)
smull %mulH %mulLymm7 %ymm15 %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555586af *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
sub %ymm7 %ymm7 %ymm13;
(* vpmullw %ymm14,%ymm4,%ymm13                     #! PC = 0x5555555586b8 *)
smull %mulHymm4 %mulL %ymm14 %ymm4;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x5555555586bd *)
smull %mulH %mulLymm4 %ymm15 %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555586c2 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
sub %ymm4 %ymm4 %ymm13;
(* vpmullw %ymm1,%ymm8,%ymm12                      #! PC = 0x5555555586cb *)
smull %mulHymm8 %mulL %ymm1 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x5555555586cf *)
smull %mulHymm11 %mulL %ymm1 %ymm11;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x5555555586d3 *)
smull %mulH %mulLymm8 %ymm2 %ymm8;
mov [mulLymm8_0, mulLymm8_1, mulLymm8_2, mulLymm8_3, mulLymm8_4, mulLymm8_5, mulLymm8_6, mulLymm8_7, mulLymm8_8, mulLymm8_9, mulLymm8_a, mulLymm8_b, mulLymm8_c, mulLymm8_d, mulLymm8_e, mulLymm8_f] %mulLymm8;
mov %ymm8 %mulH;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x5555555586d7 *)
smull %mulH %mulLymm11 %ymm2 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpaddw %ymm7,%ymm3,%ymm10                       #! PC = 0x5555555586db *)
add %ymm10 %ymm3 %ymm7;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x5555555586df *)
sub %ymm7 %ymm3 %ymm7;
(* vpaddw %ymm4,%ymm9,%ymm3                        #! PC = 0x5555555586e3 *)
add %ymm3 %ymm9 %ymm4;
(* vpsubw %ymm4,%ymm9,%ymm4                        #! PC = 0x5555555586e7 *)
sub %ymm4 %ymm9 %ymm4;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555586eb *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555586ef *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
add %ymm9 %ymm6 %ymm8;
(* vpsubw %ymm8,%ymm6,%ymm8                        #! PC = 0x5555555586f8 *)
sub %ymm8 %ymm6 %ymm8;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x5555555586fd *)
add %ymm6 %ymm5 %ymm11;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x555555558702 *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm9,%ymm9                       #! PC = 0x555555558707 *)
sub %ymm9 %ymm9 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555555870c *)
add %ymm8 %ymm8 %ymm12;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555558711 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x555555558716 *)
add %ymm11 %ymm11 %ymm13;
(* ===== End of level 4, off 1 ===== *)

(* ecut 12, rcut 12 *)

mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((5805*x)**1) + ymm10_2*((5805*x)**2) + ymm10_3*((5805*x)**3) +
    ymm3_0*((5805*x)**4) + ymm3_1*((5805*x)**5) + ymm3_2*((5805*x)**6) + ymm3_3*((5805*x)**7)
  )
  [7681, x**8 - (2399)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((5805*x)**1) + ymm7_2*((5805*x)**2) + ymm7_3*((5805*x)**3) +
    ymm4_0*((5805*x)**4) + ymm4_1*((5805*x)**5) + ymm4_2*((5805*x)**6) + ymm4_3*((5805*x)**7)
  )
  [7681, x**8 - (-2399)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((5805*x)**1) + ymm9_2*((5805*x)**2) + ymm9_3*((5805*x)**3) +
    ymm6_0*((5805*x)**4) + ymm6_1*((5805*x)**5) + ymm6_2*((5805*x)**6) + ymm6_3*((5805*x)**7)
  )
  [7681, x**8 - (3000)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm8_1*((5805*x)**1) + ymm8_2*((5805*x)**2) + ymm8_3*((5805*x)**3) +
    ymm11_0*((5805*x)**4) + ymm11_1*((5805*x)**5) + ymm11_2*((5805*x)**6) + ymm11_3*((5805*x)**7)
  )
  [7681, x**8 - (-3000)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((4600*x)**1) + ymm10_6*((4600*x)**2) + ymm10_7*((4600*x)**3) +
    ymm3_4*((4600*x)**4) + ymm3_5*((4600*x)**5) + ymm3_6*((4600*x)**6) + ymm3_7*((4600*x)**7)
  )
  [7681, x**8 - (1794)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((4600*x)**1) + ymm7_6*((4600*x)**2) + ymm7_7*((4600*x)**3) +
    ymm4_4*((4600*x)**4) + ymm4_5*((4600*x)**5) + ymm4_6*((4600*x)**6) + ymm4_7*((4600*x)**7)
  )
  [7681, x**8 - (-1794)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((4600*x)**1) + ymm9_6*((4600*x)**2) + ymm9_7*((4600*x)**3) +
    ymm6_4*((4600*x)**4) + ymm6_5*((4600*x)**5) + ymm6_6*((4600*x)**6) + ymm6_7*((4600*x)**7)
  )
  [7681, x**8 - (-1112)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm8_5*((4600*x)**1) + ymm8_6*((4600*x)**2) + ymm8_7*((4600*x)**3) +
    ymm11_4*((4600*x)**4) + ymm11_5*((4600*x)**5) + ymm11_6*((4600*x)**6) + ymm11_7*((4600*x)**7)
  )
  [7681, x**8 - (1112)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((4236*x)**1) + ymm10_a*((4236*x)**2) + ymm10_b*((4236*x)**3) +
    ymm3_8*((4236*x)**4) + ymm3_9*((4236*x)**5) + ymm3_a*((4236*x)**6) + ymm3_b*((4236*x)**7)
  )
  [7681, x**8 - (3092)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((4236*x)**1) + ymm7_a*((4236*x)**2) + ymm7_b*((4236*x)**3) +
    ymm4_8*((4236*x)**4) + ymm4_9*((4236*x)**5) + ymm4_a*((4236*x)**6) + ymm4_b*((4236*x)**7)
  )
  [7681, x**8 - (-3092)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((4236*x)**1) + ymm9_a*((4236*x)**2) + ymm9_b*((4236*x)**3) +
    ymm6_8*((4236*x)**4) + ymm6_9*((4236*x)**5) + ymm6_a*((4236*x)**6) + ymm6_b*((4236*x)**7)
  )
  [7681, x**8 - (1286)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm8_9*((4236*x)**1) + ymm8_a*((4236*x)**2) + ymm8_b*((4236*x)**3) +
    ymm11_8*((4236*x)**4) + ymm11_9*((4236*x)**5) + ymm11_a*((4236*x)**6) + ymm11_b*((4236*x)**7)
  )
  [7681, x**8 - (-1286)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((62*x)**1) + ymm10_e*((62*x)**2) + ymm10_f*((62*x)**3) +
    ymm3_c*((62*x)**4) + ymm3_d*((62*x)**5) + ymm3_e*((62*x)**6) + ymm3_f*((62*x)**7)
  )
  [7681, x**8 - (-675)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((62*x)**1) + ymm7_e*((62*x)**2) + ymm7_f*((62*x)**3) +
    ymm4_c*((62*x)**4) + ymm4_d*((62*x)**5) + ymm4_e*((62*x)**6) + ymm4_f*((62*x)**7)
  )
  [7681, x**8 - (675)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((62*x)**1) + ymm9_e*((62*x)**2) + ymm9_f*((62*x)**3) +
    ymm6_c*((62*x)**4) + ymm6_d*((62*x)**5) + ymm6_e*((62*x)**6) + ymm6_f*((62*x)**7)
  )
  [7681, x**8 - (2268)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm8_d*((62*x)**1) + ymm8_e*((62*x)**2) + ymm8_f*((62*x)**3) +
    ymm11_c*((62*x)**4) + ymm11_d*((62*x)**5) + ymm11_e*((62*x)**6) + ymm11_f*((62*x)**7)
  )
  [7681, x**8 - (-2268)]
] && and [
  (-(12882))@16 <=s ymm10_0, ymm10_0 <=s (12882)@16, (-(13538))@16 <=s ymm10_1, ymm10_1 <=s (13538)@16,
  (-(12420))@16 <=s ymm10_2, ymm10_2 <=s (12420)@16, (-(12510))@16 <=s ymm10_3, ymm10_3 <=s (12510)@16,
  (-(12684))@16 <=s ymm3_0, ymm3_0 <=s (12684)@16, (-(12696))@16 <=s ymm3_1, ymm3_1 <=s (12696)@16,
  (-(13421))@16 <=s ymm3_2, ymm3_2 <=s (13421)@16, (-(13308))@16 <=s ymm3_3, ymm3_3 <=s (13308)@16,
  (-(12882))@16 <=s ymm7_0, ymm7_0 <=s (12882)@16, (-(13538))@16 <=s ymm7_1, ymm7_1 <=s (13538)@16,
  (-(12420))@16 <=s ymm7_2, ymm7_2 <=s (12420)@16, (-(12510))@16 <=s ymm7_3, ymm7_3 <=s (12510)@16,
  (-(12684))@16 <=s ymm4_0, ymm4_0 <=s (12684)@16, (-(12696))@16 <=s ymm4_1, ymm4_1 <=s (12696)@16,
  (-(13421))@16 <=s ymm4_2, ymm4_2 <=s (13421)@16, (-(13308))@16 <=s ymm4_3, ymm4_3 <=s (13308)@16,
  (-(13147))@16 <=s ymm9_0, ymm9_0 <=s (13147)@16, (-(13787))@16 <=s ymm9_1, ymm9_1 <=s (13787)@16,
  (-(12669))@16 <=s ymm9_2, ymm9_2 <=s (12669)@16, (-(12775))@16 <=s ymm9_3, ymm9_3 <=s (12775)@16,
  (-(12933))@16 <=s ymm6_0, ymm6_0 <=s (12933)@16, (-(12945))@16 <=s ymm6_1, ymm6_1 <=s (12945)@16,
  (-(13702))@16 <=s ymm6_2, ymm6_2 <=s (13702)@16, (-(13589))@16 <=s ymm6_3, ymm6_3 <=s (13589)@16,
  (-(13147))@16 <=s ymm8_0, ymm8_0 <=s (13147)@16, (-(13787))@16 <=s ymm8_1, ymm8_1 <=s (13787)@16,
  (-(12669))@16 <=s ymm8_2, ymm8_2 <=s (12669)@16, (-(12775))@16 <=s ymm8_3, ymm8_3 <=s (12775)@16,
  (-(12933))@16 <=s ymm11_0, ymm11_0 <=s (12933)@16, (-(12945))@16 <=s ymm11_1, ymm11_1 <=s (12945)@16,
  (-(13702))@16 <=s ymm11_2, ymm11_2 <=s (13702)@16, (-(13589))@16 <=s ymm11_3, ymm11_3 <=s (13589)@16,
  (-(13035))@16 <=s ymm10_4, ymm10_4 <=s (13035)@16, (-(12800))@16 <=s ymm10_5, ymm10_5 <=s (12800)@16,
  (-(13061))@16 <=s ymm10_6, ymm10_6 <=s (13061)@16, (-(12732))@16 <=s ymm10_7, ymm10_7 <=s (12732)@16,
  (-(12603))@16 <=s ymm3_4, ymm3_4 <=s (12603)@16, (-(12438))@16 <=s ymm3_5, ymm3_5 <=s (12438)@16,
  (-(11770))@16 <=s ymm3_6, ymm3_6 <=s (11770)@16, (-(12868))@16 <=s ymm3_7, ymm3_7 <=s (12868)@16,
  (-(13035))@16 <=s ymm7_4, ymm7_4 <=s (13035)@16, (-(12800))@16 <=s ymm7_5, ymm7_5 <=s (12800)@16,
  (-(13061))@16 <=s ymm7_6, ymm7_6 <=s (13061)@16, (-(12732))@16 <=s ymm7_7, ymm7_7 <=s (12732)@16,
  (-(12603))@16 <=s ymm4_4, ymm4_4 <=s (12603)@16, (-(12438))@16 <=s ymm4_5, ymm4_5 <=s (12438)@16,
  (-(11770))@16 <=s ymm4_6, ymm4_6 <=s (11770)@16, (-(12868))@16 <=s ymm4_7, ymm4_7 <=s (12868)@16,
  (-(13300))@16 <=s ymm9_4, ymm9_4 <=s (13300)@16, (-(13122))@16 <=s ymm9_5, ymm9_5 <=s (13122)@16,
  (-(13383))@16 <=s ymm9_6, ymm9_6 <=s (13383)@16, (-(12965))@16 <=s ymm9_7, ymm9_7 <=s (12965)@16,
  (-(12925))@16 <=s ymm6_4, ymm6_4 <=s (12925)@16, (-(12687))@16 <=s ymm6_5, ymm6_5 <=s (12687)@16,
  (-(12092))@16 <=s ymm6_6, ymm6_6 <=s (12092)@16, (-(13149))@16 <=s ymm6_7, ymm6_7 <=s (13149)@16,
  (-(13300))@16 <=s ymm8_4, ymm8_4 <=s (13300)@16, (-(13122))@16 <=s ymm8_5, ymm8_5 <=s (13122)@16,
  (-(13383))@16 <=s ymm8_6, ymm8_6 <=s (13383)@16, (-(12965))@16 <=s ymm8_7, ymm8_7 <=s (12965)@16,
  (-(12925))@16 <=s ymm11_4, ymm11_4 <=s (12925)@16, (-(12687))@16 <=s ymm11_5, ymm11_5 <=s (12687)@16,
  (-(12092))@16 <=s ymm11_6, ymm11_6 <=s (12092)@16, (-(13149))@16 <=s ymm11_7, ymm11_7 <=s (13149)@16,
  (-(12742))@16 <=s ymm10_8, ymm10_8 <=s (12742)@16, (-(12955))@16 <=s ymm10_9, ymm10_9 <=s (12955)@16,
  (-(13080))@16 <=s ymm10_a, ymm10_a <=s (13080)@16, (-(12667))@16 <=s ymm10_b, ymm10_b <=s (12667)@16,
  (-(12685))@16 <=s ymm3_8, ymm3_8 <=s (12685)@16, (-(13359))@16 <=s ymm3_9, ymm3_9 <=s (13359)@16,
  (-(12790))@16 <=s ymm3_a, ymm3_a <=s (12790)@16, (-(12479))@16 <=s ymm3_b, ymm3_b <=s (12479)@16,
  (-(12742))@16 <=s ymm7_8, ymm7_8 <=s (12742)@16, (-(12955))@16 <=s ymm7_9, ymm7_9 <=s (12955)@16,
  (-(13080))@16 <=s ymm7_a, ymm7_a <=s (13080)@16, (-(12667))@16 <=s ymm7_b, ymm7_b <=s (12667)@16,
  (-(12685))@16 <=s ymm4_8, ymm4_8 <=s (12685)@16, (-(13359))@16 <=s ymm4_9, ymm4_9 <=s (13359)@16,
  (-(12790))@16 <=s ymm4_a, ymm4_a <=s (12790)@16, (-(12479))@16 <=s ymm4_b, ymm4_b <=s (12479)@16,
  (-(13023))@16 <=s ymm9_8, ymm9_8 <=s (13023)@16, (-(13236))@16 <=s ymm9_9, ymm9_9 <=s (13236)@16,
  (-(13402))@16 <=s ymm9_a, ymm9_a <=s (13402)@16, (-(12948))@16 <=s ymm9_b, ymm9_b <=s (12948)@16,
  (-(12966))@16 <=s ymm6_8, ymm6_8 <=s (12966)@16, (-(13624))@16 <=s ymm6_9, ymm6_9 <=s (13624)@16,
  (-(13055))@16 <=s ymm6_a, ymm6_a <=s (13055)@16, (-(12712))@16 <=s ymm6_b, ymm6_b <=s (12712)@16,
  (-(13023))@16 <=s ymm8_8, ymm8_8 <=s (13023)@16, (-(13236))@16 <=s ymm8_9, ymm8_9 <=s (13236)@16,
  (-(13402))@16 <=s ymm8_a, ymm8_a <=s (13402)@16, (-(12948))@16 <=s ymm8_b, ymm8_b <=s (12948)@16,
  (-(12966))@16 <=s ymm11_8, ymm11_8 <=s (12966)@16, (-(13624))@16 <=s ymm11_9, ymm11_9 <=s (13624)@16,
  (-(13055))@16 <=s ymm11_a, ymm11_a <=s (13055)@16, (-(12712))@16 <=s ymm11_b, ymm11_b <=s (12712)@16,
  (-(12673))@16 <=s ymm10_c, ymm10_c <=s (12673)@16, (-(12961))@16 <=s ymm10_d, ymm10_d <=s (12961)@16,
  (-(12072))@16 <=s ymm10_e, ymm10_e <=s (12072)@16, (-(13265))@16 <=s ymm10_f, ymm10_f <=s (13265)@16,
  (-(12636))@16 <=s ymm3_c, ymm3_c <=s (12636)@16, (-(12859))@16 <=s ymm3_d, ymm3_d <=s (12859)@16,
  (-(12598))@16 <=s ymm3_e, ymm3_e <=s (12598)@16, (-(13024))@16 <=s ymm3_f, ymm3_f <=s (13024)@16,
  (-(12673))@16 <=s ymm7_c, ymm7_c <=s (12673)@16, (-(12961))@16 <=s ymm7_d, ymm7_d <=s (12961)@16,
  (-(12072))@16 <=s ymm7_e, ymm7_e <=s (12072)@16, (-(13265))@16 <=s ymm7_f, ymm7_f <=s (13265)@16,
  (-(12636))@16 <=s ymm4_c, ymm4_c <=s (12636)@16, (-(12859))@16 <=s ymm4_d, ymm4_d <=s (12859)@16,
  (-(12598))@16 <=s ymm4_e, ymm4_e <=s (12598)@16, (-(13024))@16 <=s ymm4_f, ymm4_f <=s (13024)@16,
  (-(12938))@16 <=s ymm9_c, ymm9_c <=s (12938)@16, (-(13226))@16 <=s ymm9_d, ymm9_d <=s (13226)@16,
  (-(12394))@16 <=s ymm9_e, ymm9_e <=s (12394)@16, (-(13514))@16 <=s ymm9_f, ymm9_f <=s (13514)@16,
  (-(12885))@16 <=s ymm6_c, ymm6_c <=s (12885)@16, (-(13092))@16 <=s ymm6_d, ymm6_d <=s (13092)@16,
  (-(12863))@16 <=s ymm6_e, ymm6_e <=s (12863)@16, (-(13305))@16 <=s ymm6_f, ymm6_f <=s (13305)@16,
  (-(12938))@16 <=s ymm8_c, ymm8_c <=s (12938)@16, (-(13226))@16 <=s ymm8_d, ymm8_d <=s (13226)@16,
  (-(12394))@16 <=s ymm8_e, ymm8_e <=s (12394)@16, (-(13514))@16 <=s ymm8_f, ymm8_f <=s (13514)@16,
  (-(12885))@16 <=s ymm11_c, ymm11_c <=s (12885)@16, (-(13092))@16 <=s ymm11_d, ymm11_d <=s (13092)@16,
  (-(12863))@16 <=s ymm11_e, ymm11_e <=s (12863)@16, (-(13305))@16 <=s ymm11_f, ymm11_f <=s (13305)@16
];

(* ===== Start of level 5, off 1 ===== *)
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555555871b *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x555555558720 *)
smull %mulH %mulLymm3 %ymm15 %ymm3;
mov [mulLymm3_0, mulLymm3_1, mulLymm3_2, mulLymm3_3, mulLymm3_4, mulLymm3_5, mulLymm3_6, mulLymm3_7, mulLymm3_8, mulLymm3_9, mulLymm3_a, mulLymm3_b, mulLymm3_c, mulLymm3_d, mulLymm3_e, mulLymm3_f] %mulLymm3;
mov %ymm3 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558725 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
sub %ymm3 %ymm3 %ymm13;
(* vpmullw %ymm1,%ymm4,%ymm12                      #! PC = 0x55555555872e *)
smull %mulHymm4 %mulL %ymm1 %ymm4;
cast %ymm12@sint16[16] %mulL;
(* vpmullw 0x140(%rdx),%ymm6,%ymm13                #! EA = L0x555555560840; Value = 0xd792d792d792d792; PC = 0x555555558732 *)
smull %mulHymm6 %mulL [L0x555555560840, L0x555555560842, L0x555555560844, L0x555555560846, L0x555555560848, L0x55555556084a, L0x55555556084c, L0x55555556084e, L0x555555560850, L0x555555560852, L0x555555560854, L0x555555560856, L0x555555560858, L0x55555556085a, L0x55555556085c, L0x55555556085e] %ymm6;
cast %ymm13@sint16[16] %mulL;
(* vpmullw 0x1c0(%rdx),%ymm11,%ymm14               #! EA = L0x5555555608c0; Value = 0x4029402940294029; PC = 0x55555555873a *)
smull %mulHymm11 %mulL [L0x5555555608c0, L0x5555555608c2, L0x5555555608c4, L0x5555555608c6, L0x5555555608c8, L0x5555555608ca, L0x5555555608cc, L0x5555555608ce, L0x5555555608d0, L0x5555555608d2, L0x5555555608d4, L0x5555555608d6, L0x5555555608d8, L0x5555555608da, L0x5555555608dc, L0x5555555608de] %ymm11;
cast %ymm14@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm4,%ymm4                       #! PC = 0x555555558742 *)
smull %mulH %mulLymm4 %ymm2 %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw 0x160(%rdx),%ymm6,%ymm6                 #! EA = L0x555555560860; Value = 0xf392f392f392f392; PC = 0x555555558746 *)
smull %mulH %mulLymm6 [L0x555555560860, L0x555555560862, L0x555555560864, L0x555555560866, L0x555555560868, L0x55555556086a, L0x55555556086c, L0x55555556086e, L0x555555560870, L0x555555560872, L0x555555560874, L0x555555560876, L0x555555560878, L0x55555556087a, L0x55555556087c, L0x55555556087e] %ymm6;
mov [mulLymm6_0, mulLymm6_1, mulLymm6_2, mulLymm6_3, mulLymm6_4, mulLymm6_5, mulLymm6_6, mulLymm6_7, mulLymm6_8, mulLymm6_9, mulLymm6_a, mulLymm6_b, mulLymm6_c, mulLymm6_d, mulLymm6_e, mulLymm6_f] %mulLymm6;
mov %ymm6 %mulH;
(* vpmulhw 0x1e0(%rdx),%ymm11,%ymm11               #! EA = L0x5555555608e0; Value = 0x0e290e290e290e29; PC = 0x55555555874e *)
smull %mulH %mulLymm11 [L0x5555555608e0, L0x5555555608e2, L0x5555555608e4, L0x5555555608e6, L0x5555555608e8, L0x5555555608ea, L0x5555555608ec, L0x5555555608ee, L0x5555555608f0, L0x5555555608f2, L0x5555555608f4, L0x5555555608f6, L0x5555555608f8, L0x5555555608fa, L0x5555555608fc, L0x5555555608fe] %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpaddw %ymm3,%ymm10,%ymm5                       #! PC = 0x555555558756 *)
add %ymm5 %ymm10 %ymm3;
(* vpsubw %ymm3,%ymm10,%ymm3                       #! PC = 0x55555555875a *)
sub %ymm3 %ymm10 %ymm3;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555875e *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x555555558762 *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x555555558766 *)
smull %mulH %mulLymm14 %ymm0 %ymm14;
mov [mulLymm14_0, mulLymm14_1, mulLymm14_2, mulLymm14_3, mulLymm14_4, mulLymm14_5, mulLymm14_6, mulLymm14_7, mulLymm14_8, mulLymm14_9, mulLymm14_a, mulLymm14_b, mulLymm14_c, mulLymm14_d, mulLymm14_e, mulLymm14_f] %mulLymm14;
mov %ymm14 %mulH;
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
add %ymm10 %ymm7 %ymm4;
(* vpsubw %ymm4,%ymm7,%ymm4                        #! PC = 0x55555555876e *)
sub %ymm4 %ymm7 %ymm4;
(* vpaddw %ymm6,%ymm9,%ymm7                        #! PC = 0x555555558772 *)
add %ymm7 %ymm9 %ymm6;
(* vpsubw %ymm6,%ymm9,%ymm6                        #! PC = 0x555555558776 *)
sub %ymm6 %ymm9 %ymm6;
(* vpaddw %ymm11,%ymm8,%ymm9                       #! PC = 0x55555555877a *)
add %ymm9 %ymm8 %ymm11;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555555877f *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm10,%ymm10                     #! PC = 0x555555558784 *)
sub %ymm10 %ymm10 %ymm12;
(* vpaddw %ymm12,%ymm4,%ymm4                       #! PC = 0x555555558789 *)
add %ymm4 %ymm4 %ymm12;
(* vpsubw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555555878e *)
sub %ymm7 %ymm7 %ymm13;
(* vpaddw %ymm13,%ymm6,%ymm6                       #! PC = 0x555555558793 *)
add %ymm6 %ymm6 %ymm13;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x555555558798 *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm11,%ymm11                     #! PC = 0x55555555879d *)
add %ymm11 %ymm11 %ymm14;
(* ===== End of level 5, off 1 ===== *)

(* ecut 13, rcut 13 *)

mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm5_1*((5805*x)**1) + ymm5_2*((5805*x)**2) + ymm5_3*((5805*x)**3)
  )
  [7681, x**4 - (-202)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm3_1*((5805*x)**1) + ymm3_2*((5805*x)**2) + ymm3_3*((5805*x)**3)
  )
  [7681, x**4 - (202)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_0 + ymm10_1*((5805*x)**1) + ymm10_2*((5805*x)**2) + ymm10_3*((5805*x)**3)
  )
  [7681, x**4 - (-243)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_0 + ymm4_1*((5805*x)**1) + ymm4_2*((5805*x)**2) + ymm4_3*((5805*x)**3)
  )
  [7681, x**4 - (243)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_0 + ymm7_1*((5805*x)**1) + ymm7_2*((5805*x)**2) + ymm7_3*((5805*x)**3)
  )
  [7681, x**4 - (766)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm6_1*((5805*x)**1) + ymm6_2*((5805*x)**2) + ymm6_3*((5805*x)**3)
  )
  [7681, x**4 - (-766)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_0 + ymm9_1*((5805*x)**1) + ymm9_2*((5805*x)**2) + ymm9_3*((5805*x)**3)
  )
  [7681, x**4 - (-2881)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_0 + ymm11_1*((5805*x)**1) + ymm11_2*((5805*x)**2) + ymm11_3*((5805*x)**3)
  )
  [7681, x**4 - (2881)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm5_5*((4600*x)**1) + ymm5_6*((4600*x)**2) + ymm5_7*((4600*x)**3)
  )
  [7681, x**4 - (2551)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm3_5*((4600*x)**1) + ymm3_6*((4600*x)**2) + ymm3_7*((4600*x)**3)
  )
  [7681, x**4 - (-2551)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_4 + ymm10_5*((4600*x)**1) + ymm10_6*((4600*x)**2) + ymm10_7*((4600*x)**3)
  )
  [7681, x**4 - (3411)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_4 + ymm4_5*((4600*x)**1) + ymm4_6*((4600*x)**2) + ymm4_7*((4600*x)**3)
  )
  [7681, x**4 - (-3411)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_4 + ymm7_5*((4600*x)**1) + ymm7_6*((4600*x)**2) + ymm7_7*((4600*x)**3)
  )
  [7681, x**4 - (-1080)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm6_5*((4600*x)**1) + ymm6_6*((4600*x)**2) + ymm6_7*((4600*x)**3)
  )
  [7681, x**4 - (1080)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_4 + ymm9_5*((4600*x)**1) + ymm9_6*((4600*x)**2) + ymm9_7*((4600*x)**3)
  )
  [7681, x**4 - (-2516)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_4 + ymm11_5*((4600*x)**1) + ymm11_6*((4600*x)**2) + ymm11_7*((4600*x)**3)
  )
  [7681, x**4 - (2516)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm5_9*((4236*x)**1) + ymm5_a*((4236*x)**2) + ymm5_b*((4236*x)**3)
  )
  [7681, x**4 - (584)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm3_9*((4236*x)**1) + ymm3_a*((4236*x)**2) + ymm3_b*((4236*x)**3)
  )
  [7681, x**4 - (-584)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_8 + ymm10_9*((4236*x)**1) + ymm10_a*((4236*x)**2) + ymm10_b*((4236*x)**3)
  )
  [7681, x**4 - (-1655)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_8 + ymm4_9*((4236*x)**1) + ymm4_a*((4236*x)**2) + ymm4_b*((4236*x)**3)
  )
  [7681, x**4 - (1655)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_8 + ymm7_9*((4236*x)**1) + ymm7_a*((4236*x)**2) + ymm7_b*((4236*x)**3)
  )
  [7681, x**4 - (1740)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm6_9*((4236*x)**1) + ymm6_a*((4236*x)**2) + ymm6_b*((4236*x)**3)
  )
  [7681, x**4 - (-1740)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_8 + ymm9_9*((4236*x)**1) + ymm9_a*((4236*x)**2) + ymm9_b*((4236*x)**3)
  )
  [7681, x**4 - (-2774)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_8 + ymm11_9*((4236*x)**1) + ymm11_a*((4236*x)**2) + ymm11_b*((4236*x)**3)
  )
  [7681, x**4 - (2774)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm5_d*((62*x)**1) + ymm5_e*((62*x)**2) + ymm5_f*((62*x)**3)
  )
  [7681, x**4 - (-2508)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm3_d*((62*x)**1) + ymm3_e*((62*x)**2) + ymm3_f*((62*x)**3)
  )
  [7681, x**4 - (2508)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm10_c + ymm10_d*((62*x)**1) + ymm10_e*((62*x)**2) + ymm10_f*((62*x)**3)
  )
  [7681, x**4 - (-2941)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm4_c + ymm4_d*((62*x)**1) + ymm4_e*((62*x)**2) + ymm4_f*((62*x)**3)
  )
  [7681, x**4 - (2941)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm7_c + ymm7_d*((62*x)**1) + ymm7_e*((62*x)**2) + ymm7_f*((62*x)**3)
  )
  [7681, x**4 - (-528)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm6_d*((62*x)**1) + ymm6_e*((62*x)**2) + ymm6_f*((62*x)**3)
  )
  [7681, x**4 - (528)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm9_c + ymm9_d*((62*x)**1) + ymm9_e*((62*x)**2) + ymm9_f*((62*x)**3)
  )
  [7681, x**4 - (-3449)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm11_c + ymm11_d*((62*x)**1) + ymm11_e*((62*x)**2) + ymm11_f*((62*x)**3)
  )
  [7681, x**4 - (3449)]
] && and [
  (-(17321))@16 <=s ymm5_0, ymm5_0 <=s (17321)@16, (-(17977))@16 <=s ymm5_1, ymm5_1 <=s (17977)@16,
  (-(16859))@16 <=s ymm5_2, ymm5_2 <=s (16859)@16, (-(16949))@16 <=s ymm5_3, ymm5_3 <=s (16949)@16,
  (-(17321))@16 <=s ymm3_0, ymm3_0 <=s (17321)@16, (-(17977))@16 <=s ymm3_1, ymm3_1 <=s (17977)@16,
  (-(16859))@16 <=s ymm3_2, ymm3_2 <=s (16859)@16, (-(16949))@16 <=s ymm3_3, ymm3_3 <=s (16949)@16,
  (-(17438))@16 <=s ymm10_0, ymm10_0 <=s (17438)@16, (-(18094))@16 <=s ymm10_1, ymm10_1 <=s (18094)@16,
  (-(17008))@16 <=s ymm10_2, ymm10_2 <=s (17008)@16, (-(17098))@16 <=s ymm10_3, ymm10_3 <=s (17098)@16,
  (-(17438))@16 <=s ymm4_0, ymm4_0 <=s (17438)@16, (-(18094))@16 <=s ymm4_1, ymm4_1 <=s (18094)@16,
  (-(17008))@16 <=s ymm4_2, ymm4_2 <=s (17008)@16, (-(17098))@16 <=s ymm4_3, ymm4_3 <=s (17098)@16,
  (-(17554))@16 <=s ymm7_0, ymm7_0 <=s (17554)@16, (-(18194))@16 <=s ymm7_1, ymm7_1 <=s (18194)@16,
  (-(17151))@16 <=s ymm7_2, ymm7_2 <=s (17151)@16, (-(17257))@16 <=s ymm7_3, ymm7_3 <=s (17257)@16,
  (-(17554))@16 <=s ymm6_0, ymm6_0 <=s (17554)@16, (-(18194))@16 <=s ymm6_1, ymm6_1 <=s (18194)@16,
  (-(17151))@16 <=s ymm6_2, ymm6_2 <=s (17151)@16, (-(17257))@16 <=s ymm6_3, ymm6_3 <=s (17257)@16,
  (-(17683))@16 <=s ymm9_0, ymm9_0 <=s (17683)@16, (-(18323))@16 <=s ymm9_1, ymm9_1 <=s (18323)@16,
  (-(17255))@16 <=s ymm9_2, ymm9_2 <=s (17255)@16, (-(17361))@16 <=s ymm9_3, ymm9_3 <=s (17361)@16,
  (-(17683))@16 <=s ymm11_0, ymm11_0 <=s (17683)@16, (-(18323))@16 <=s ymm11_1, ymm11_1 <=s (18323)@16,
  (-(17255))@16 <=s ymm11_2, ymm11_2 <=s (17255)@16, (-(17361))@16 <=s ymm11_3, ymm11_3 <=s (17361)@16,
  (-(17474))@16 <=s ymm5_4, ymm5_4 <=s (17474)@16, (-(17239))@16 <=s ymm5_5, ymm5_5 <=s (17239)@16,
  (-(17500))@16 <=s ymm5_6, ymm5_6 <=s (17500)@16, (-(17171))@16 <=s ymm5_7, ymm5_7 <=s (17171)@16,
  (-(17474))@16 <=s ymm3_4, ymm3_4 <=s (17474)@16, (-(17239))@16 <=s ymm3_5, ymm3_5 <=s (17239)@16,
  (-(17500))@16 <=s ymm3_6, ymm3_6 <=s (17500)@16, (-(17171))@16 <=s ymm3_7, ymm3_7 <=s (17171)@16,
  (-(17591))@16 <=s ymm10_4, ymm10_4 <=s (17591)@16, (-(17340))@16 <=s ymm10_5, ymm10_5 <=s (17340)@16,
  (-(17560))@16 <=s ymm10_6, ymm10_6 <=s (17560)@16, (-(17288))@16 <=s ymm10_7, ymm10_7 <=s (17288)@16,
  (-(17591))@16 <=s ymm4_4, ymm4_4 <=s (17591)@16, (-(17340))@16 <=s ymm4_5, ymm4_5 <=s (17340)@16,
  (-(17560))@16 <=s ymm4_6, ymm4_6 <=s (17560)@16, (-(17288))@16 <=s ymm4_7, ymm4_7 <=s (17288)@16,
  (-(17707))@16 <=s ymm7_4, ymm7_4 <=s (17707)@16, (-(17529))@16 <=s ymm7_5, ymm7_5 <=s (17529)@16,
  (-(17790))@16 <=s ymm7_6, ymm7_6 <=s (17790)@16, (-(17372))@16 <=s ymm7_7, ymm7_7 <=s (17372)@16,
  (-(17707))@16 <=s ymm6_4, ymm6_4 <=s (17707)@16, (-(17529))@16 <=s ymm6_5, ymm6_5 <=s (17529)@16,
  (-(17790))@16 <=s ymm6_6, ymm6_6 <=s (17790)@16, (-(17372))@16 <=s ymm6_7, ymm6_7 <=s (17372)@16,
  (-(17836))@16 <=s ymm9_4, ymm9_4 <=s (17836)@16, (-(17633))@16 <=s ymm9_5, ymm9_5 <=s (17633)@16,
  (-(17869))@16 <=s ymm9_6, ymm9_6 <=s (17869)@16, (-(17501))@16 <=s ymm9_7, ymm9_7 <=s (17501)@16,
  (-(17836))@16 <=s ymm11_4, ymm11_4 <=s (17836)@16, (-(17633))@16 <=s ymm11_5, ymm11_5 <=s (17633)@16,
  (-(17869))@16 <=s ymm11_6, ymm11_6 <=s (17869)@16, (-(17501))@16 <=s ymm11_7, ymm11_7 <=s (17501)@16,
  (-(17181))@16 <=s ymm5_8, ymm5_8 <=s (17181)@16, (-(17394))@16 <=s ymm5_9, ymm5_9 <=s (17394)@16,
  (-(17519))@16 <=s ymm5_a, ymm5_a <=s (17519)@16, (-(17106))@16 <=s ymm5_b, ymm5_b <=s (17106)@16,
  (-(17181))@16 <=s ymm3_8, ymm3_8 <=s (17181)@16, (-(17394))@16 <=s ymm3_9, ymm3_9 <=s (17394)@16,
  (-(17519))@16 <=s ymm3_a, ymm3_a <=s (17519)@16, (-(17106))@16 <=s ymm3_b, ymm3_b <=s (17106)@16,
  (-(17298))@16 <=s ymm10_8, ymm10_8 <=s (17298)@16, (-(17543))@16 <=s ymm10_9, ymm10_9 <=s (17543)@16,
  (-(17636))@16 <=s ymm10_a, ymm10_a <=s (17636)@16, (-(17207))@16 <=s ymm10_b, ymm10_b <=s (17207)@16,
  (-(17298))@16 <=s ymm4_8, ymm4_8 <=s (17298)@16, (-(17543))@16 <=s ymm4_9, ymm4_9 <=s (17543)@16,
  (-(17636))@16 <=s ymm4_a, ymm4_a <=s (17636)@16, (-(17207))@16 <=s ymm4_b, ymm4_b <=s (17207)@16,
  (-(17430))@16 <=s ymm7_8, ymm7_8 <=s (17430)@16, (-(17718))@16 <=s ymm7_9, ymm7_9 <=s (17718)@16,
  (-(17809))@16 <=s ymm7_a, ymm7_a <=s (17809)@16, (-(17355))@16 <=s ymm7_b, ymm7_b <=s (17355)@16,
  (-(17430))@16 <=s ymm6_8, ymm6_8 <=s (17430)@16, (-(17718))@16 <=s ymm6_9, ymm6_9 <=s (17718)@16,
  (-(17809))@16 <=s ymm6_a, ymm6_a <=s (17809)@16, (-(17355))@16 <=s ymm6_b, ymm6_b <=s (17355)@16,
  (-(17559))@16 <=s ymm9_8, ymm9_8 <=s (17559)@16, (-(17822))@16 <=s ymm9_9, ymm9_9 <=s (17822)@16,
  (-(17938))@16 <=s ymm9_a, ymm9_a <=s (17938)@16, (-(17459))@16 <=s ymm9_b, ymm9_b <=s (17459)@16,
  (-(17559))@16 <=s ymm11_8, ymm11_8 <=s (17559)@16, (-(17822))@16 <=s ymm11_9, ymm11_9 <=s (17822)@16,
  (-(17938))@16 <=s ymm11_a, ymm11_a <=s (17938)@16, (-(17459))@16 <=s ymm11_b, ymm11_b <=s (17459)@16,
  (-(17112))@16 <=s ymm5_c, ymm5_c <=s (17112)@16, (-(17400))@16 <=s ymm5_d, ymm5_d <=s (17400)@16,
  (-(16511))@16 <=s ymm5_e, ymm5_e <=s (16511)@16, (-(17704))@16 <=s ymm5_f, ymm5_f <=s (17704)@16,
  (-(17112))@16 <=s ymm3_c, ymm3_c <=s (17112)@16, (-(17400))@16 <=s ymm3_d, ymm3_d <=s (17400)@16,
  (-(16511))@16 <=s ymm3_e, ymm3_e <=s (16511)@16, (-(17704))@16 <=s ymm3_f, ymm3_f <=s (17704)@16,
  (-(17229))@16 <=s ymm10_c, ymm10_c <=s (17229)@16, (-(17517))@16 <=s ymm10_d, ymm10_d <=s (17517)@16,
  (-(16628))@16 <=s ymm10_e, ymm10_e <=s (16628)@16, (-(17837))@16 <=s ymm10_f, ymm10_f <=s (17837)@16,
  (-(17229))@16 <=s ymm4_c, ymm4_c <=s (17229)@16, (-(17517))@16 <=s ymm4_d, ymm4_d <=s (17517)@16,
  (-(16628))@16 <=s ymm4_e, ymm4_e <=s (16628)@16, (-(17837))@16 <=s ymm4_f, ymm4_f <=s (17837)@16,
  (-(17345))@16 <=s ymm7_c, ymm7_c <=s (17345)@16, (-(17633))@16 <=s ymm7_d, ymm7_d <=s (17633)@16,
  (-(16801))@16 <=s ymm7_e, ymm7_e <=s (16801)@16, (-(17996))@16 <=s ymm7_f, ymm7_f <=s (17996)@16,
  (-(17345))@16 <=s ymm6_c, ymm6_c <=s (17345)@16, (-(17633))@16 <=s ymm6_d, ymm6_d <=s (17633)@16,
  (-(16801))@16 <=s ymm6_e, ymm6_e <=s (16801)@16, (-(17996))@16 <=s ymm6_f, ymm6_f <=s (17996)@16,
  (-(17474))@16 <=s ymm9_c, ymm9_c <=s (17474)@16, (-(17762))@16 <=s ymm9_d, ymm9_d <=s (17762)@16,
  (-(16930))@16 <=s ymm9_e, ymm9_e <=s (16930)@16, (-(18075))@16 <=s ymm9_f, ymm9_f <=s (18075)@16,
  (-(17474))@16 <=s ymm11_c, ymm11_c <=s (17474)@16, (-(17762))@16 <=s ymm11_d, ymm11_d <=s (17762)@16,
  (-(16930))@16 <=s ymm11_e, ymm11_e <=s (16930)@16, (-(18075))@16 <=s ymm11_f, ymm11_f <=s (18075)@16
];

(* ===== Start of level 6, off 1 ===== *)
(* vpmullw 0x80(%rdx),%ymm5,%ymm12                 #! EA = L0x555555560780; Value = 0xfff7fff7fff7fff7; PC = 0x5555555587a2 *)
smull %mulHymm5 %mulL [L0x555555560780, L0x555555560782, L0x555555560784, L0x555555560786, L0x555555560788, L0x55555556078a, L0x55555556078c, L0x55555556078e, L0x555555560790, L0x555555560792, L0x555555560794, L0x555555560796, L0x555555560798, L0x55555556079a, L0x55555556079c, L0x55555556079e] %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw 0xa0(%rdx),%ymm5,%ymm5                  #! EA = L0x5555555607a0; Value = 0xf1f7f1f7f1f7f1f7; PC = 0x5555555587aa *)
smull %mulH %mulLymm5 [L0x5555555607a0, L0x5555555607a2, L0x5555555607a4, L0x5555555607a6, L0x5555555607a8, L0x5555555607aa, L0x5555555607ac, L0x5555555607ae, L0x5555555607b0, L0x5555555607b2, L0x5555555607b4, L0x5555555607b6, L0x5555555607b8, L0x5555555607ba, L0x5555555607bc, L0x5555555607be] %ymm5;
mov [mulLymm5_0, mulLymm5_1, mulLymm5_2, mulLymm5_3, mulLymm5_4, mulLymm5_5, mulLymm5_6, mulLymm5_7, mulLymm5_8, mulLymm5_9, mulLymm5_a, mulLymm5_b, mulLymm5_c, mulLymm5_d, mulLymm5_e, mulLymm5_f] %mulLymm5;
mov %ymm5 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555587b2 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm5 %ymm5 %ymm12;
(* vpbroadcastq 0x650(%rdx),%ymm12                 #! EA = L0x555555560d50; Value = 0x402970c1d792fff7; PC = 0x5555555587bb *)
broadcast %ymm12 16 [L0x555555560d50, L0x555555560d52, L0x555555560d54, L0x555555560d56];
(* vpbroadcastq 0x658(%rdx),%ymm13                 #! EA = L0x555555560d58; Value = 0x0e290ec1f392f1f7; PC = 0x5555555587c4 *)
broadcast %ymm13 16 [L0x555555560d58, L0x555555560d5a, L0x555555560d5c, L0x555555560d5e];
(* vpmullw %ymm12,%ymm3,%ymm12                     #! PC = 0x5555555587cd *)
smull %mulHymm3 %mulL %ymm12 %ymm3;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm3,%ymm3                      #! PC = 0x5555555587d2 *)
smull %mulH %mulLymm3 %ymm13 %ymm3;
mov [mulLymm3_0, mulLymm3_1, mulLymm3_2, mulLymm3_3, mulLymm3_4, mulLymm3_5, mulLymm3_6, mulLymm3_7, mulLymm3_8, mulLymm3_9, mulLymm3_a, mulLymm3_b, mulLymm3_c, mulLymm3_d, mulLymm3_e, mulLymm3_f] %mulLymm3;
mov %ymm3 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555587d7 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm3 %ymm3 %ymm12;
(* vpbroadcastq 0x660(%rdx),%ymm12                 #! EA = L0x555555560d60; Value = 0x3998d7921190fff7; PC = 0x5555555587e0 *)
broadcast %ymm12 16 [L0x555555560d60, L0x555555560d62, L0x555555560d64, L0x555555560d66];
(* vpbroadcastq 0x668(%rdx),%ymm13                 #! EA = L0x555555560d68; Value = 0x0998f392f190f1f7; PC = 0x5555555587e9 *)
broadcast %ymm13 16 [L0x555555560d68, L0x555555560d6a, L0x555555560d6c, L0x555555560d6e];
(* vpmullw %ymm12,%ymm10,%ymm12                    #! PC = 0x5555555587f2 *)
smull %mulHymm10 %mulL %ymm12 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm10,%ymm10                    #! PC = 0x5555555587f7 *)
smull %mulH %mulLymm10 %ymm13 %ymm10;
mov [mulLymm10_0, mulLymm10_1, mulLymm10_2, mulLymm10_3, mulLymm10_4, mulLymm10_5, mulLymm10_6, mulLymm10_7, mulLymm10_8, mulLymm10_9, mulLymm10_a, mulLymm10_b, mulLymm10_c, mulLymm10_d, mulLymm10_e, mulLymm10_f] %mulLymm10;
mov %ymm10 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555587fc *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm10 %ymm10 %ymm12;
(* vpbroadcastq 0x670(%rdx),%ymm12                 #! EA = L0x555555560d70; Value = 0x1c4cbfd7136efff7; PC = 0x555555558805 *)
broadcast %ymm12 16 [L0x555555560d70, L0x555555560d72, L0x555555560d74, L0x555555560d76];
(* vpbroadcastq 0x678(%rdx),%ymm13                 #! EA = L0x555555560d78; Value = 0x044cf1d7f76ef1f7; PC = 0x55555555880e *)
broadcast %ymm13 16 [L0x555555560d78, L0x555555560d7a, L0x555555560d7c, L0x555555560d7e];
(* vpmullw %ymm12,%ymm4,%ymm12                     #! PC = 0x555555558817 *)
smull %mulHymm4 %mulL %ymm12 %ymm4;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm4,%ymm4                      #! PC = 0x55555555881c *)
smull %mulH %mulLymm4 %ymm13 %ymm4;
mov [mulLymm4_0, mulLymm4_1, mulLymm4_2, mulLymm4_3, mulLymm4_4, mulLymm4_5, mulLymm4_6, mulLymm4_7, mulLymm4_8, mulLymm4_9, mulLymm4_a, mulLymm4_b, mulLymm4_c, mulLymm4_d, mulLymm4_e, mulLymm4_f] %mulLymm4;
mov %ymm4 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558821 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm4 %ymm4 %ymm12;
(* vpbroadcastq 0x680(%rdx),%ymm12                 #! EA = L0x555555560d80; Value = 0xb8f11190d279fff7; PC = 0x55555555882a *)
broadcast %ymm12 16 [L0x555555560d80, L0x555555560d82, L0x555555560d84, L0x555555560d86];
(* vpbroadcastq 0x688(%rdx),%ymm13                 #! EA = L0x555555560d88; Value = 0xf6f1f1900079f1f7; PC = 0x555555558833 *)
broadcast %ymm13 16 [L0x555555560d88, L0x555555560d8a, L0x555555560d8c, L0x555555560d8e];
(* vpmullw %ymm12,%ymm7,%ymm12                     #! PC = 0x55555555883c *)
smull %mulHymm7 %mulL %ymm12 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm7,%ymm7                      #! PC = 0x555555558841 *)
smull %mulH %mulLymm7 %ymm13 %ymm7;
mov [mulLymm7_0, mulLymm7_1, mulLymm7_2, mulLymm7_3, mulLymm7_4, mulLymm7_5, mulLymm7_6, mulLymm7_7, mulLymm7_8, mulLymm7_9, mulLymm7_a, mulLymm7_b, mulLymm7_c, mulLymm7_d, mulLymm7_e, mulLymm7_f] %mulLymm7;
mov %ymm7 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558846 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm7 %ymm7 %ymm12;
(* vpbroadcastq 0x690(%rdx),%ymm12                 #! EA = L0x555555560d90; Value = 0xb0a51c4ca7bffff7; PC = 0x55555555884f *)
broadcast %ymm12 16 [L0x555555560d90, L0x555555560d92, L0x555555560d94, L0x555555560d96];
(* vpbroadcastq 0x698(%rdx),%ymm13                 #! EA = L0x555555560d98; Value = 0x06a5044c09bff1f7; PC = 0x555555558858 *)
broadcast %ymm13 16 [L0x555555560d98, L0x555555560d9a, L0x555555560d9c, L0x555555560d9e];
(* vpmullw %ymm12,%ymm6,%ymm12                     #! PC = 0x555555558861 *)
smull %mulHymm6 %mulL %ymm12 %ymm6;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm6,%ymm6                      #! PC = 0x555555558866 *)
smull %mulH %mulLymm6 %ymm13 %ymm6;
mov [mulLymm6_0, mulLymm6_1, mulLymm6_2, mulLymm6_3, mulLymm6_4, mulLymm6_5, mulLymm6_6, mulLymm6_7, mulLymm6_8, mulLymm6_9, mulLymm6_a, mulLymm6_b, mulLymm6_c, mulLymm6_d, mulLymm6_e, mulLymm6_f] %mulLymm6;
mov %ymm6 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555555886b *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm6 %ymm6 %ymm12;
(* vpbroadcastq 0x6a0(%rdx),%ymm12                 #! EA = L0x555555560da0; Value = 0xa3363998b8f1fff7; PC = 0x555555558874 *)
broadcast %ymm12 16 [L0x555555560da0, L0x555555560da2, L0x555555560da4, L0x555555560da6];
(* vpbroadcastq 0x6a8(%rdx),%ymm13                 #! EA = L0x555555560da8; Value = 0xf7360998f6f1f1f7; PC = 0x55555555887d *)
broadcast %ymm13 16 [L0x555555560da8, L0x555555560daa, L0x555555560dac, L0x555555560dae];
(* vpmullw %ymm12,%ymm9,%ymm12                     #! PC = 0x555555558886 *)
smull %mulHymm9 %mulL %ymm12 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm9,%ymm9                      #! PC = 0x55555555888b *)
smull %mulH %mulLymm9 %ymm13 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x555555558890 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm9 %ymm9 %ymm12;
(* vpbroadcastq 0x6b0(%rdx),%ymm12                 #! EA = L0x555555560db0; Value = 0xa7bf136eae7afff7; PC = 0x555555558899 *)
broadcast %ymm12 16 [L0x555555560db0, L0x555555560db2, L0x555555560db4, L0x555555560db6];
(* vpbroadcastq 0x6b8(%rdx),%ymm13                 #! EA = L0x555555560db8; Value = 0x09bff76efa7af1f7; PC = 0x5555555588a2 *)
broadcast %ymm13 16 [L0x555555560db8, L0x555555560dba, L0x555555560dbc, L0x555555560dbe];
(* vpmullw %ymm12,%ymm11,%ymm12                    #! PC = 0x5555555588ab *)
smull %mulHymm11 %mulL %ymm12 %ymm11;
cast %ymm12@sint16[16] %mulL;
(* vpmulhw %ymm13,%ymm11,%ymm11                    #! PC = 0x5555555588b0 *)
smull %mulH %mulLymm11 %ymm13 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555588b5 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
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
sub %ymm11 %ymm11 %ymm12;
(* vmovsldup %ymm7,%ymm8                           #! PC = 0x5555555588be *)
mov [ymm7_0, ymm7_1, _, _,
ymm7_4, ymm7_5, _, _,
ymm7_8, ymm7_9, _, _,
ymm7_c, ymm7_d, _, _] %ymm7;
mov %ymm8 [ymm7_0, ymm7_1, ymm7_0, ymm7_1,
ymm7_4, ymm7_5, ymm7_4, ymm7_5,
ymm7_8, ymm7_9, ymm7_8, ymm7_9,
ymm7_c, ymm7_d, ymm7_c, ymm7_d];
(* vpblendd $0xaa,%ymm8,%ymm5,%ymm8                #! PC = 0x5555555588c2 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm8;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm5;
mov %ymm8 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm5,%ymm5                        #! PC = 0x5555555588c8 *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm5;
mov %ymm5 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x5555555588cd *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm7;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm5;
mov %ymm7 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vmovsldup %ymm6,%ymm5                           #! PC = 0x5555555588d3 *)
mov [ymm6_0, ymm6_1, _, _,
ymm6_4, ymm6_5, _, _,
ymm6_8, ymm6_9, _, _,
ymm6_c, ymm6_d, _, _] %ymm6;
mov %ymm5 [ymm6_0, ymm6_1, ymm6_0, ymm6_1,
ymm6_4, ymm6_5, ymm6_4, ymm6_5,
ymm6_8, ymm6_9, ymm6_8, ymm6_9,
ymm6_c, ymm6_d, ymm6_c, ymm6_d];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x5555555588d7 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm5;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm3;
mov %ymm5 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x5555555588dd *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm3;
mov %ymm3 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x5555555588e2 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm6;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm3;
mov %ymm6 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vmovsldup %ymm9,%ymm3                           #! PC = 0x5555555588e8 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm9;
mov %ymm3 [ymm9_0, ymm9_1, ymm9_0, ymm9_1,
ymm9_4, ymm9_5, ymm9_4, ymm9_5,
ymm9_8, ymm9_9, ymm9_8, ymm9_9,
ymm9_c, ymm9_d, ymm9_c, ymm9_d];
(* vpblendd $0xaa,%ymm3,%ymm10,%ymm3               #! PC = 0x5555555588ed *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm3;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm10;
mov %ymm3 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm10,%ymm10                      #! PC = 0x5555555588f3 *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm10;
mov %ymm10 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm9,%ymm10,%ymm9               #! PC = 0x5555555588f9 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm9;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm10;
mov %ymm9 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vmovsldup %ymm11,%ymm10                         #! PC = 0x5555555588ff *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm11;
mov %ymm10 [ymm11_0, ymm11_1, ymm11_0, ymm11_1,
ymm11_4, ymm11_5, ymm11_4, ymm11_5,
ymm11_8, ymm11_9, ymm11_8, ymm11_9,
ymm11_c, ymm11_d, ymm11_c, ymm11_d];
(* vpblendd $0xaa,%ymm10,%ymm4,%ymm10              #! PC = 0x555555558904 *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm10;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm4;
mov %ymm10 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555555890a *)
mov [_, _, _SRQ2, _SRQ3,
_, _, _SRQ6, _SRQ7,
_, _, _SRQa, _SRQb,
_, _, _SRQe, _SRQf] %ymm4;
mov %ymm4 [_SRQ2, _SRQ3, 0@sint16, 0@sint16,
_SRQ6, _SRQ7, 0@sint16, 0@sint16,
_SRQa, _SRQb, 0@sint16, 0@sint16,
_SRQe, _SRQf, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555555890f *)
mov [_, _, _BD2, _BD3,
_, _, _BD6, _BD7,
_, _, _BDa, _BDb,
_, _, _BDe, _BDf] %ymm11;
mov [_BD0, _BD1, _, _,
_BD4, _BD5, _, _,
_BD8, _BD9, _, _,
_BDc, _BDd, _, _] %ymm4;
mov %ymm11 [_BD0, _BD1, _BD2, _BD3, _BD4, _BD5, _BD6, _BD7, _BD8, _BD9, _BDa, _BDb, _BDc, _BDd, _BDe, _BDf];
(* vpslld $0x10,%ymm3,%ymm4                        #! PC = 0x555555558915 *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm3;
mov %ymm4 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm4,%ymm8,%ymm4                #! PC = 0x55555555891a *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm4;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm8;
mov %ymm4 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm8,%ymm8                        #! PC = 0x555555558920 *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm8;
mov %ymm8 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm3,%ymm8,%ymm3                #! PC = 0x555555558926 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm3;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm8;
mov %ymm3 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpslld $0x10,%ymm9,%ymm8                        #! PC = 0x55555555892c *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm9;
mov %ymm8 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x555555558932 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm8;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm7;
mov %ymm8 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm7,%ymm7                        #! PC = 0x555555558938 *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm7;
mov %ymm7 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm9,%ymm7,%ymm9                #! PC = 0x55555555893d *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm9;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm7;
mov %ymm9 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpslld $0x10,%ymm10,%ymm7                       #! PC = 0x555555558943 *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm10;
mov %ymm7 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm7,%ymm5,%ymm7                #! PC = 0x555555558949 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm7;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm5;
mov %ymm7 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm5,%ymm5                        #! PC = 0x55555555894f *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm5;
mov %ymm5 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm10,%ymm5,%ymm10              #! PC = 0x555555558954 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm10;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm5;
mov %ymm10 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpslld $0x10,%ymm11,%ymm5                       #! PC = 0x55555555895a *)
mov [_SLD0, _, _SLD2, _,
_SLD4, _, _SLD6, _,
_SLD8, _, _SLDa, _,
_SLDc, _, _SLDe, _] %ymm11;
mov %ymm5 [0@sint16, _SLD0, 0@sint16, _SLD2,
0@sint16, _SLD4, 0@sint16, _SLD6,
0@sint16, _SLD8, 0@sint16, _SLDa,
0@sint16, _SLDc, 0@sint16, _SLDe];
(* vpblendw $0xaa,%ymm5,%ymm6,%ymm5                #! PC = 0x555555558960 *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm5;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm6;
mov %ymm5 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x555555558966 *)
mov [_, _SRD1, _, _SRD3,
_, _SRD5, _, _SRD7,
_, _SRD9, _, _SRDb,
_, _SRDd, _, _SRDf] %ymm6;
mov %ymm6 [_SRD1, 0@sint16, _SRD3, 0@sint16,
_SRD5, 0@sint16, _SRD7, 0@sint16,
_SRD9, 0@sint16, _SRDb, 0@sint16,
_SRDd, 0@sint16, _SRDf, 0@sint16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555555896b *)
mov [_, _BW1, _, _BW3,
_, _BW5, _, _BW7,
_, _BW9, _, _BWb,
_, _BWd, _, _BWf] %ymm11;
mov [_BW0, _, _BW2, _,
_BW4, _, _BW6, _,
_BW8, _, _BWa, _,
_BWc, _, _BWe, _] %ymm6;
mov %ymm11 [_BW0, _BW1, _BW2, _BW3, _BW4, _BW5, _BW6, _BW7, _BW8, _BW9, _BWa, _BWb, _BWc, _BWd, _BWe, _BWf];
(* vpaddw %ymm8,%ymm4,%ymm6                        #! PC = 0x555555558971 *)
add %ymm6 %ymm4 %ymm8;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x555555558976 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm3,%ymm4                        #! PC = 0x55555555897b *)
add %ymm4 %ymm3 %ymm9;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x555555558980 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x555555558985 *)
add %ymm3 %ymm7 %ymm5;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x555555558989 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm11,%ymm10,%ymm7                      #! PC = 0x55555555898d *)
add %ymm7 %ymm10 %ymm11;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x555555558992 *)
sub %ymm11 %ymm10 %ymm11;
(* ===== End of level 6, off 1 ===== *)

(* ecut 14, rcut 14 *)

mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
cut
and [
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_0 + ymm4_0*((5805*1*x)**1)
  )
  [7681, x**2 - (1003)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_0 + ymm9_0*((5805*1*x)**1)
  )
  [7681, x**2 - (-1003)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_0 + ymm7_0*((5805*1925*x)**1)
  )
  [7681, x**2 - (1853)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_0 + ymm11_0*((5805*1925*x)**1)
  )
  [7681, x**2 - (-1853)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_1 + ymm4_1*((5805*7098*x)**1)
  )
  [7681, x**2 - (3041)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_1 + ymm9_1*((5805*7098*x)**1)
  )
  [7681, x**2 - (-3041)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_1 + ymm7_1*((5805*7154*x)**1)
  )
  [7681, x**2 - (2844)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_1 + ymm11_1*((5805*7154*x)**1)
  )
  [7681, x**2 - (-2844)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_2 + ymm4_2*((5805*2446*x)**1)
  )
  [7681, x**2 - (1408)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_2 + ymm9_2*((5805*2446*x)**1)
  )
  [7681, x**2 - (-1408)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_2 + ymm7_2*((5805*2132*x)**1)
  )
  [7681, x**2 - (1044)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_2 + ymm11_2*((5805*2132*x)**1)
  )
  [7681, x**2 - (-1044)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_3 + ymm4_3*((5805*2648*x)**1)
  )
  [7681, x**2 - (2722)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_3 + ymm9_3*((5805*2648*x)**1)
  )
  [7681, x**2 - (-2722)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_3 + ymm7_3*((5805*1366*x)**1)
  )
  [7681, x**2 - (-993)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_3 + ymm11_3*((5805*1366*x)**1)
  )
  [7681, x**2 - (993)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_4 + ymm4_4*((4600*1*x)**1)
  )
  [7681, x**2 - (3099)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_4 + ymm9_4*((4600*1*x)**1)
  )
  [7681, x**2 - (-3099)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_4 + ymm7_4*((4600*1925*x)**1)
  )
  [7681, x**2 - (648)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_4 + ymm11_4*((4600*1925*x)**1)
  )
  [7681, x**2 - (-648)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_5 + ymm4_5*((4600*7098*x)**1)
  )
  [7681, x**2 - (3078)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_5 + ymm9_5*((4600*7098*x)**1)
  )
  [7681, x**2 - (-3078)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_5 + ymm7_5*((4600*7154*x)**1)
  )
  [7681, x**2 - (-2562)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_5 + ymm11_5*((4600*7154*x)**1)
  )
  [7681, x**2 - (2562)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_6 + ymm4_6*((4600*2446*x)**1)
  )
  [7681, x**2 - (2880)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_6 + ymm9_6*((4600*2446*x)**1)
  )
  [7681, x**2 - (-2880)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_6 + ymm7_6*((4600*2132*x)**1)
  )
  [7681, x**2 - (3532)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_6 + ymm11_6*((4600*2132*x)**1)
  )
  [7681, x**2 - (-3532)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_7 + ymm4_7*((4600*2648*x)**1)
  )
  [7681, x**2 - (-1415)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_7 + ymm9_7*((4600*2648*x)**1)
  )
  [7681, x**2 - (1415)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_7 + ymm7_7*((4600*1366*x)**1)
  )
  [7681, x**2 - (-1682)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_7 + ymm11_7*((4600*1366*x)**1)
  )
  [7681, x**2 - (1682)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_8 + ymm4_8*((4236*1*x)**1)
  )
  [7681, x**2 - (-707)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_8 + ymm9_8*((4236*1*x)**1)
  )
  [7681, x**2 - (707)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_8 + ymm7_8*((4236*1925*x)**1)
  )
  [7681, x**2 - (2990)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_8 + ymm11_8*((4236*1925*x)**1)
  )
  [7681, x**2 - (-2990)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_9 + ymm4_9*((4236*7098*x)**1)
  )
  [7681, x**2 - (2681)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_9 + ymm9_9*((4236*7098*x)**1)
  )
  [7681, x**2 - (-2681)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_9 + ymm7_9*((4236*7154*x)**1)
  )
  [7681, x**2 - (-1438)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_9 + ymm11_9*((4236*7154*x)**1)
  )
  [7681, x**2 - (1438)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_a + ymm4_a*((4236*2446*x)**1)
  )
  [7681, x**2 - (-3780)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_a + ymm9_a*((4236*2446*x)**1)
  )
  [7681, x**2 - (3780)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_a + ymm7_a*((4236*2132*x)**1)
  )
  [7681, x**2 - (1125)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_a + ymm11_a*((4236*2132*x)**1)
  )
  [7681, x**2 - (-1125)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_b + ymm4_b*((4236*2648*x)**1)
  )
  [7681, x**2 - (417)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_b + ymm9_b*((4236*2648*x)**1)
  )
  [7681, x**2 - (-417)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_b + ymm7_b*((4236*1366*x)**1)
  )
  [7681, x**2 - (-2593)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_b + ymm11_b*((4236*1366*x)**1)
  )
  [7681, x**2 - (2593)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_c + ymm4_c*((62*1*x)**1)
  )
  [7681, x**2 - (-1097)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_c + ymm9_c*((62*1*x)**1)
  )
  [7681, x**2 - (1097)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_c + ymm7_c*((62*1925*x)**1)
  )
  [7681, x**2 - (1228)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_c + ymm11_c*((62*1925*x)**1)
  )
  [7681, x**2 - (-1228)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_d + ymm4_d*((62*7098*x)**1)
  )
  [7681, x**2 - (-1848)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_d + ymm9_d*((62*7098*x)**1)
  )
  [7681, x**2 - (1848)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_d + ymm7_d*((62*7154*x)**1)
  )
  [7681, x**2 - (550)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_d + ymm11_d*((62*7154*x)**1)
  )
  [7681, x**2 - (-550)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_e + ymm4_e*((62*2446*x)**1)
  )
  [7681, x**2 - (2044)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_e + ymm9_e*((62*2446*x)**1)
  )
  [7681, x**2 - (-2044)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_e + ymm7_e*((62*2132*x)**1)
  )
  [7681, x**2 - (1952)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_e + ymm11_e*((62*2132*x)**1)
  )
  [7681, x**2 - (-1952)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm6_f + ymm4_f*((62*2648*x)**1)
  )
  [7681, x**2 - (-1591)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm8_f + ymm9_f*((62*2648*x)**1)
  )
  [7681, x**2 - (1591)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm3_f + ymm7_f*((62*1366*x)**1)
  )
  [7681, x**2 - (2028)],
eqmod
  (inp_poly * inp_poly)
  (
    ymm5_f + ymm11_f*((62*1366*x)**1)
  )
  [7681, x**2 - (-2028)]
] && and [
  (-(8878))@16 <=s ymm6_0, ymm6_0 <=s (8878)@16, (-(8878))@16 <=s ymm4_0, ymm4_0 <=s (8878)@16,
  (-(8878))@16 <=s ymm8_0, ymm8_0 <=s (8878)@16, (-(8878))@16 <=s ymm9_0, ymm9_0 <=s (8878)@16,
  (-(9221))@16 <=s ymm3_0, ymm3_0 <=s (9221)@16, (-(9478))@16 <=s ymm7_0, ymm7_0 <=s (9478)@16,
  (-(9221))@16 <=s ymm5_0, ymm5_0 <=s (9221)@16, (-(9478))@16 <=s ymm11_0, ymm11_0 <=s (9478)@16,
  (-(9075))@16 <=s ymm6_1, ymm6_1 <=s (9075)@16, (-(9303))@16 <=s ymm4_1, ymm4_1 <=s (9303)@16,
  (-(9075))@16 <=s ymm8_1, ymm8_1 <=s (9075)@16, (-(9303))@16 <=s ymm9_1, ymm9_1 <=s (9303)@16,
  (-(9206))@16 <=s ymm3_1, ymm3_1 <=s (9206)@16, (-(8545))@16 <=s ymm7_1, ymm7_1 <=s (8545)@16,
  (-(9206))@16 <=s ymm5_1, ymm5_1 <=s (9206)@16, (-(8545))@16 <=s ymm11_1, ymm11_1 <=s (8545)@16,
  (-(9224))@16 <=s ymm6_2, ymm6_2 <=s (9224)@16, (-(8296))@16 <=s ymm4_2, ymm4_2 <=s (8296)@16,
  (-(9224))@16 <=s ymm8_2, ymm8_2 <=s (9224)@16, (-(8296))@16 <=s ymm9_2, ymm9_2 <=s (8296)@16,
  (-(8563))@16 <=s ymm3_2, ymm3_2 <=s (8563)@16, (-(8796))@16 <=s ymm7_2, ymm7_2 <=s (8796)@16,
  (-(8563))@16 <=s ymm5_2, ymm5_2 <=s (8563)@16, (-(8796))@16 <=s ymm11_2, ymm11_2 <=s (8796)@16,
  (-(8897))@16 <=s ymm6_3, ymm6_3 <=s (8897)@16, (-(8891))@16 <=s ymm4_3, ymm4_3 <=s (8891)@16,
  (-(8897))@16 <=s ymm8_3, ymm8_3 <=s (8897)@16, (-(8891))@16 <=s ymm9_3, ymm9_3 <=s (8891)@16,
  (-(8844))@16 <=s ymm3_3, ymm3_3 <=s (8844)@16, (-(8711))@16 <=s ymm7_3, ymm7_3 <=s (8711)@16,
  (-(8844))@16 <=s ymm5_3, ymm5_3 <=s (8844)@16, (-(8711))@16 <=s ymm11_3, ymm11_3 <=s (8711)@16,
  (-(8878))@16 <=s ymm6_4, ymm6_4 <=s (8878)@16, (-(8878))@16 <=s ymm4_4, ymm4_4 <=s (8878)@16,
  (-(8878))@16 <=s ymm8_4, ymm8_4 <=s (8878)@16, (-(8878))@16 <=s ymm9_4, ymm9_4 <=s (8878)@16,
  (-(9278))@16 <=s ymm3_4, ymm3_4 <=s (9278)@16, (-(9403))@16 <=s ymm7_4, ymm7_4 <=s (9403)@16,
  (-(9278))@16 <=s ymm5_4, ymm5_4 <=s (9278)@16, (-(9403))@16 <=s ymm11_4, ymm11_4 <=s (9403)@16,
  (-(9075))@16 <=s ymm6_5, ymm6_5 <=s (9075)@16, (-(9257))@16 <=s ymm4_5, ymm4_5 <=s (9257)@16,
  (-(9075))@16 <=s ymm8_5, ymm8_5 <=s (9075)@16, (-(9257))@16 <=s ymm9_5, ymm9_5 <=s (9257)@16,
  (-(9212))@16 <=s ymm3_5, ymm3_5 <=s (9212)@16, (-(8529))@16 <=s ymm7_5, ymm7_5 <=s (8529)@16,
  (-(9212))@16 <=s ymm5_5, ymm5_5 <=s (9212)@16, (-(8529))@16 <=s ymm11_5, ymm11_5 <=s (8529)@16,
  (-(9265))@16 <=s ymm6_6, ymm6_6 <=s (9265)@16, (-(8315))@16 <=s ymm4_6, ymm4_6 <=s (8315)@16,
  (-(9265))@16 <=s ymm8_6, ymm8_6 <=s (9265)@16, (-(8315))@16 <=s ymm9_6, ymm9_6 <=s (8315)@16,
  (-(8563))@16 <=s ymm3_6, ymm3_6 <=s (8563)@16, (-(8767))@16 <=s ymm7_6, ymm7_6 <=s (8767)@16,
  (-(8563))@16 <=s ymm5_6, ymm5_6 <=s (8563)@16, (-(8767))@16 <=s ymm11_6, ymm11_6 <=s (8767)@16,
  (-(8924))@16 <=s ymm6_7, ymm6_7 <=s (8924)@16, (-(8868))@16 <=s ymm4_7, ymm4_7 <=s (8868)@16,
  (-(8924))@16 <=s ymm8_7, ymm8_7 <=s (8924)@16, (-(8868))@16 <=s ymm9_7, ymm9_7 <=s (8868)@16,
  (-(8859))@16 <=s ymm3_7, ymm3_7 <=s (8859)@16, (-(8689))@16 <=s ymm7_7, ymm7_7 <=s (8689)@16,
  (-(8859))@16 <=s ymm5_7, ymm5_7 <=s (8859)@16, (-(8689))@16 <=s ymm11_7, ymm11_7 <=s (8689)@16,
  (-(8878))@16 <=s ymm6_8, ymm6_8 <=s (8878)@16, (-(8878))@16 <=s ymm4_8, ymm4_8 <=s (8878)@16,
  (-(8878))@16 <=s ymm8_8, ymm8_8 <=s (8878)@16, (-(8878))@16 <=s ymm9_8, ymm9_8 <=s (8878)@16,
  (-(9278))@16 <=s ymm3_8, ymm3_8 <=s (9278)@16, (-(9403))@16 <=s ymm7_8, ymm7_8 <=s (9403)@16,
  (-(9278))@16 <=s ymm5_8, ymm5_8 <=s (9278)@16, (-(9403))@16 <=s ymm11_8, ymm11_8 <=s (9403)@16,
  (-(9075))@16 <=s ymm6_9, ymm6_9 <=s (9075)@16, (-(9249))@16 <=s ymm4_9, ymm4_9 <=s (9249)@16,
  (-(9075))@16 <=s ymm8_9, ymm8_9 <=s (9075)@16, (-(9249))@16 <=s ymm9_9, ymm9_9 <=s (9249)@16,
  (-(9237))@16 <=s ymm3_9, ymm3_9 <=s (9237)@16, (-(8544))@16 <=s ymm7_9, ymm7_9 <=s (8544)@16,
  (-(9237))@16 <=s ymm5_9, ymm5_9 <=s (9237)@16, (-(8544))@16 <=s ymm11_9, ymm11_9 <=s (8544)@16,
  (-(9265))@16 <=s ymm6_a, ymm6_a <=s (9265)@16, (-(8315))@16 <=s ymm4_a, ymm4_a <=s (8315)@16,
  (-(9265))@16 <=s ymm8_a, ymm8_a <=s (9265)@16, (-(8315))@16 <=s ymm9_a, ymm9_a <=s (8315)@16,
  (-(8563))@16 <=s ymm3_a, ymm3_a <=s (8563)@16, (-(8767))@16 <=s ymm7_a, ymm7_a <=s (8767)@16,
  (-(8563))@16 <=s ymm5_a, ymm5_a <=s (8563)@16, (-(8767))@16 <=s ymm11_a, ymm11_a <=s (8767)@16,
  (-(8924))@16 <=s ymm6_b, ymm6_b <=s (8924)@16, (-(8868))@16 <=s ymm4_b, ymm4_b <=s (8868)@16,
  (-(8924))@16 <=s ymm8_b, ymm8_b <=s (8924)@16, (-(8868))@16 <=s ymm9_b, ymm9_b <=s (8868)@16,
  (-(8860))@16 <=s ymm3_b, ymm3_b <=s (8860)@16, (-(8689))@16 <=s ymm7_b, ymm7_b <=s (8689)@16,
  (-(8860))@16 <=s ymm5_b, ymm5_b <=s (8860)@16, (-(8689))@16 <=s ymm11_b, ymm11_b <=s (8689)@16,
  (-(8878))@16 <=s ymm6_c, ymm6_c <=s (8878)@16, (-(8878))@16 <=s ymm4_c, ymm4_c <=s (8878)@16,
  (-(8878))@16 <=s ymm8_c, ymm8_c <=s (8878)@16, (-(8878))@16 <=s ymm9_c, ymm9_c <=s (8878)@16,
  (-(9205))@16 <=s ymm3_c, ymm3_c <=s (9205)@16, (-(9434))@16 <=s ymm7_c, ymm7_c <=s (9434)@16,
  (-(9205))@16 <=s ymm5_c, ymm5_c <=s (9205)@16, (-(9434))@16 <=s ymm11_c, ymm11_c <=s (9434)@16,
  (-(9075))@16 <=s ymm6_d, ymm6_d <=s (9075)@16, (-(9284))@16 <=s ymm4_d, ymm4_d <=s (9284)@16,
  (-(9075))@16 <=s ymm8_d, ymm8_d <=s (9075)@16, (-(9284))@16 <=s ymm9_d, ymm9_d <=s (9284)@16,
  (-(9181))@16 <=s ymm3_d, ymm3_d <=s (9181)@16, (-(8548))@16 <=s ymm7_d, ymm7_d <=s (8548)@16,
  (-(9181))@16 <=s ymm5_d, ymm5_d <=s (9181)@16, (-(8548))@16 <=s ymm11_d, ymm11_d <=s (8548)@16,
  (-(9197))@16 <=s ymm6_e, ymm6_e <=s (9197)@16, (-(8338))@16 <=s ymm4_e, ymm4_e <=s (8338)@16,
  (-(9197))@16 <=s ymm8_e, ymm8_e <=s (9197)@16, (-(8338))@16 <=s ymm9_e, ymm9_e <=s (8338)@16,
  (-(8550))@16 <=s ymm3_e, ymm3_e <=s (8550)@16, (-(8781))@16 <=s ymm7_e, ymm7_e <=s (8781)@16,
  (-(8550))@16 <=s ymm5_e, ymm5_e <=s (8550)@16, (-(8781))@16 <=s ymm11_e, ymm11_e <=s (8781)@16,
  (-(8889))@16 <=s ymm6_f, ymm6_f <=s (8889)@16, (-(8884))@16 <=s ymm4_f, ymm4_f <=s (8884)@16,
  (-(8889))@16 <=s ymm8_f, ymm8_f <=s (8889)@16, (-(8884))@16 <=s ymm9_f, ymm9_f <=s (8884)@16,
  (-(8829))@16 <=s ymm3_f, ymm3_f <=s (8829)@16, (-(8729))@16 <=s ymm7_f, ymm7_f <=s (8729)@16,
  (-(8829))@16 <=s ymm5_f, ymm5_f <=s (8829)@16, (-(8729))@16 <=s ymm11_f, ymm11_f <=s (8729)@16
];

(* ===== Start of level 7, off 1 ===== *)
(* vpmullw %ymm1,%ymm9,%ymm12                      #! PC = 0x555555558997 *)
smull %mulHymm9 %mulL %ymm1 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm1,%ymm11,%ymm13                     #! PC = 0x55555555899b *)
smull %mulHymm11 %mulL %ymm1 %ymm11;
cast %ymm13@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555555899f *)
smull %mulH %mulLymm9 %ymm2 %ymm9;
mov [mulLymm9_0, mulLymm9_1, mulLymm9_2, mulLymm9_3, mulLymm9_4, mulLymm9_5, mulLymm9_6, mulLymm9_7, mulLymm9_8, mulLymm9_9, mulLymm9_a, mulLymm9_b, mulLymm9_c, mulLymm9_d, mulLymm9_e, mulLymm9_f] %mulLymm9;
mov %ymm9 %mulH;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x5555555589a3 *)
smull %mulH %mulLymm11 %ymm2 %ymm11;
mov [mulLymm11_0, mulLymm11_1, mulLymm11_2, mulLymm11_3, mulLymm11_4, mulLymm11_5, mulLymm11_6, mulLymm11_7, mulLymm11_8, mulLymm11_9, mulLymm11_a, mulLymm11_b, mulLymm11_c, mulLymm11_d, mulLymm11_e, mulLymm11_f] %mulLymm11;
mov %ymm11 %mulH;
(* vpaddw %ymm4,%ymm6,%ymm10                       #! PC = 0x5555555589a7 *)
add %ymm10 %ymm6 %ymm4;
(* vpsubw %ymm4,%ymm6,%ymm4                        #! PC = 0x5555555589ab *)
sub %ymm4 %ymm6 %ymm4;
(* vpaddw %ymm7,%ymm3,%ymm6                        #! PC = 0x5555555589af *)
add %ymm6 %ymm3 %ymm7;
(* vpsubw %ymm7,%ymm3,%ymm7                        #! PC = 0x5555555589b3 *)
sub %ymm7 %ymm3 %ymm7;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x5555555589b7 *)
smull %mulH %mulLymm12 %ymm0 %ymm12;
mov [mulLymm12_0, mulLymm12_1, mulLymm12_2, mulLymm12_3, mulLymm12_4, mulLymm12_5, mulLymm12_6, mulLymm12_7, mulLymm12_8, mulLymm12_9, mulLymm12_a, mulLymm12_b, mulLymm12_c, mulLymm12_d, mulLymm12_e, mulLymm12_f] %mulLymm12;
mov %ymm12 %mulH;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x5555555589bb *)
smull %mulH %mulLymm13 %ymm0 %ymm13;
mov [mulLymm13_0, mulLymm13_1, mulLymm13_2, mulLymm13_3, mulLymm13_4, mulLymm13_5, mulLymm13_6, mulLymm13_7, mulLymm13_8, mulLymm13_9, mulLymm13_a, mulLymm13_b, mulLymm13_c, mulLymm13_d, mulLymm13_e, mulLymm13_f] %mulLymm13;
mov %ymm13 %mulH;
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
add %ymm3 %ymm8 %ymm9;
(* vpsubw %ymm9,%ymm8,%ymm9                        #! PC = 0x5555555589c4 *)
sub %ymm9 %ymm8 %ymm9;
(* vpaddw %ymm11,%ymm5,%ymm8                       #! PC = 0x5555555589c9 *)
add %ymm8 %ymm5 %ymm11;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x5555555589ce *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x5555555589d3 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x5555555589d8 *)
add %ymm9 %ymm9 %ymm12;
(* vpsubw %ymm13,%ymm8,%ymm8                       #! PC = 0x5555555589dd *)
sub %ymm8 %ymm8 %ymm13;
(* vpaddw %ymm13,%ymm11,%ymm11                     #! PC = 0x5555555589e2 *)
add %ymm11 %ymm11 %ymm13;
(* vmovdqa %ymm10,0x100(%rdi)                      #! EA = L0x7fffffffb5e0; PC = 0x5555555589e7 *)
mov [L0x7fffffffb5e0, L0x7fffffffb5e2, L0x7fffffffb5e4, L0x7fffffffb5e6, L0x7fffffffb5e8, L0x7fffffffb5ea, L0x7fffffffb5ec, L0x7fffffffb5ee, L0x7fffffffb5f0, L0x7fffffffb5f2, L0x7fffffffb5f4, L0x7fffffffb5f6, L0x7fffffffb5f8, L0x7fffffffb5fa, L0x7fffffffb5fc, L0x7fffffffb5fe] %ymm10;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffffb600; PC = 0x5555555589ef *)
mov [L0x7fffffffb600, L0x7fffffffb602, L0x7fffffffb604, L0x7fffffffb606, L0x7fffffffb608, L0x7fffffffb60a, L0x7fffffffb60c, L0x7fffffffb60e, L0x7fffffffb610, L0x7fffffffb612, L0x7fffffffb614, L0x7fffffffb616, L0x7fffffffb618, L0x7fffffffb61a, L0x7fffffffb61c, L0x7fffffffb61e] %ymm4;
(* vmovdqa %ymm3,0x140(%rdi)                       #! EA = L0x7fffffffb620; PC = 0x5555555589f7 *)
mov [L0x7fffffffb620, L0x7fffffffb622, L0x7fffffffb624, L0x7fffffffb626, L0x7fffffffb628, L0x7fffffffb62a, L0x7fffffffb62c, L0x7fffffffb62e, L0x7fffffffb630, L0x7fffffffb632, L0x7fffffffb634, L0x7fffffffb636, L0x7fffffffb638, L0x7fffffffb63a, L0x7fffffffb63c, L0x7fffffffb63e] %ymm3;
(* vmovdqa %ymm9,0x160(%rdi)                       #! EA = L0x7fffffffb640; PC = 0x5555555589ff *)
mov [L0x7fffffffb640, L0x7fffffffb642, L0x7fffffffb644, L0x7fffffffb646, L0x7fffffffb648, L0x7fffffffb64a, L0x7fffffffb64c, L0x7fffffffb64e, L0x7fffffffb650, L0x7fffffffb652, L0x7fffffffb654, L0x7fffffffb656, L0x7fffffffb658, L0x7fffffffb65a, L0x7fffffffb65c, L0x7fffffffb65e] %ymm9;
(* vmovdqa %ymm6,0x180(%rdi)                       #! EA = L0x7fffffffb660; PC = 0x555555558a07 *)
mov [L0x7fffffffb660, L0x7fffffffb662, L0x7fffffffb664, L0x7fffffffb666, L0x7fffffffb668, L0x7fffffffb66a, L0x7fffffffb66c, L0x7fffffffb66e, L0x7fffffffb670, L0x7fffffffb672, L0x7fffffffb674, L0x7fffffffb676, L0x7fffffffb678, L0x7fffffffb67a, L0x7fffffffb67c, L0x7fffffffb67e] %ymm6;
(* vmovdqa %ymm7,0x1a0(%rdi)                       #! EA = L0x7fffffffb680; PC = 0x555555558a0f *)
mov [L0x7fffffffb680, L0x7fffffffb682, L0x7fffffffb684, L0x7fffffffb686, L0x7fffffffb688, L0x7fffffffb68a, L0x7fffffffb68c, L0x7fffffffb68e, L0x7fffffffb690, L0x7fffffffb692, L0x7fffffffb694, L0x7fffffffb696, L0x7fffffffb698, L0x7fffffffb69a, L0x7fffffffb69c, L0x7fffffffb69e] %ymm7;
(* vmovdqa %ymm8,0x1c0(%rdi)                       #! EA = L0x7fffffffb6a0; PC = 0x555555558a17 *)
mov [L0x7fffffffb6a0, L0x7fffffffb6a2, L0x7fffffffb6a4, L0x7fffffffb6a6, L0x7fffffffb6a8, L0x7fffffffb6aa, L0x7fffffffb6ac, L0x7fffffffb6ae, L0x7fffffffb6b0, L0x7fffffffb6b2, L0x7fffffffb6b4, L0x7fffffffb6b6, L0x7fffffffb6b8, L0x7fffffffb6ba, L0x7fffffffb6bc, L0x7fffffffb6be] %ymm8;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb6c0; PC = 0x555555558a1f *)
mov [L0x7fffffffb6c0, L0x7fffffffb6c2, L0x7fffffffb6c4, L0x7fffffffb6c6, L0x7fffffffb6c8, L0x7fffffffb6ca, L0x7fffffffb6cc, L0x7fffffffb6ce, L0x7fffffffb6d0, L0x7fffffffb6d2, L0x7fffffffb6d4, L0x7fffffffb6d6, L0x7fffffffb6d8, L0x7fffffffb6da, L0x7fffffffb6dc, L0x7fffffffb6de] %ymm11;
(* ===== End of level 7, off 1 ===== *)

(* ecut 15, rcut 15 *)

cut
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e0
  )
  [7681, x - (217)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb600
  )
  [7681, x - (-217)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb620
  )
  [7681, x - (3265)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb640
  )
  [7681, x - (-3265)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb660
  )
  [7681, x - (2067)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb680
  )
  [7681, x - (-2067)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a0
  )
  [7681, x - (-2951)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c0
  )
  [7681, x - (2951)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e2
  )
  [7681, x - (856)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb602
  )
  [7681, x - (-856)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb622
  )
  [7681, x - (-111)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb642
  )
  [7681, x - (111)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb662
  )
  [7681, x - (-3615)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb682
  )
  [7681, x - (3615)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a2
  )
  [7681, x - (1393)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c2
  )
  [7681, x - (-1393)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e4
  )
  [7681, x - (-3137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb604
  )
  [7681, x - (3137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb624
  )
  [7681, x - (-2671)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb644
  )
  [7681, x - (2671)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb664
  )
  [7681, x - (-1459)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb684
  )
  [7681, x - (1459)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a4
  )
  [7681, x - (-3086)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c4
  )
  [7681, x - (3086)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e6
  )
  [7681, x - (1784)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb606
  )
  [7681, x - (-1784)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb626
  )
  [7681, x - (1994)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb646
  )
  [7681, x - (-1994)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb666
  )
  [7681, x - (793)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb686
  )
  [7681, x - (-793)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a6
  )
  [7681, x - (-2050)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c6
  )
  [7681, x - (2050)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e8
  )
  [7681, x - (-536)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb608
  )
  [7681, x - (536)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb628
  )
  [7681, x - (572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb648
  )
  [7681, x - (-572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb668
  )
  [7681, x - (2717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb688
  )
  [7681, x - (-2717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a8
  )
  [7681, x - (2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c8
  )
  [7681, x - (-2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ea
  )
  [7681, x - (-1725)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60a
  )
  [7681, x - (1725)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62a
  )
  [7681, x - (-1885)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64a
  )
  [7681, x - (1885)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66a
  )
  [7681, x - (-2433)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68a
  )
  [7681, x - (2433)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6aa
  )
  [7681, x - (-3193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ca
  )
  [7681, x - (3193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ec
  )
  [7681, x - (-2481)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60c
  )
  [7681, x - (2481)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62c
  )
  [7681, x - (-2110)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64c
  )
  [7681, x - (2110)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66c
  )
  [7681, x - (1657)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68c
  )
  [7681, x - (-1657)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ac
  )
  [7681, x - (1499)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6cc
  )
  [7681, x - (-1499)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ee
  )
  [7681, x - (1717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60e
  )
  [7681, x - (-1717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62e
  )
  [7681, x - (-1775)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64e
  )
  [7681, x - (1775)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66e
  )
  [7681, x - (2395)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68e
  )
  [7681, x - (-2395)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ae
  )
  [7681, x - (1170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ce
  )
  [7681, x - (-1170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f0
  )
  [7681, x - (738)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb610
  )
  [7681, x - (-738)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb630
  )
  [7681, x - (-329)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb650
  )
  [7681, x - (329)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb670
  )
  [7681, x - (-3483)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb690
  )
  [7681, x - (3483)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b0
  )
  [7681, x - (335)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d0
  )
  [7681, x - (-335)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f2
  )
  [7681, x - (2805)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb612
  )
  [7681, x - (-2805)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb632
  )
  [7681, x - (-3280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb652
  )
  [7681, x - (3280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb672
  )
  [7681, x - (-118)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb692
  )
  [7681, x - (118)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b2
  )
  [7681, x - (-218)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d2
  )
  [7681, x - (218)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f4
  )
  [7681, x - (1897)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb614
  )
  [7681, x - (-1897)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb634
  )
  [7681, x - (3765)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb654
  )
  [7681, x - (-3765)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb674
  )
  [7681, x - (3250)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb694
  )
  [7681, x - (-3250)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b4
  )
  [7681, x - (-3239)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d4
  )
  [7681, x - (3239)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f6
  )
  [7681, x - (-1189)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb616
  )
  [7681, x - (1189)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb636
  )
  [7681, x - (-2457)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb656
  )
  [7681, x - (2457)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb676
  )
  [7681, x - (113)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb696
  )
  [7681, x - (-113)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b6
  )
  [7681, x - (1771)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d6
  )
  [7681, x - (-1771)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f8
  )
  [7681, x - (1115)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb618
  )
  [7681, x - (-1115)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb638
  )
  [7681, x - (-674)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb658
  )
  [7681, x - (674)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb678
  )
  [7681, x - (639)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb698
  )
  [7681, x - (-639)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b8
  )
  [7681, x - (-3376)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d8
  )
  [7681, x - (3376)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fa
  )
  [7681, x - (3832)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61a
  )
  [7681, x - (-3832)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63a
  )
  [7681, x - (1872)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65a
  )
  [7681, x - (-1872)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67a
  )
  [7681, x - (2840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69a
  )
  [7681, x - (-2840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ba
  )
  [7681, x - (1211)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6da
  )
  [7681, x - (-1211)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fc
  )
  [7681, x - (2252)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61c
  )
  [7681, x - (-2252)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63c
  )
  [7681, x - (1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65c
  )
  [7681, x - (-1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67c
  )
  [7681, x - (3016)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69c
  )
  [7681, x - (-3016)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6bc
  )
  [7681, x - (-2760)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6dc
  )
  [7681, x - (2760)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fe
  )
  [7681, x - (3751)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61e
  )
  [7681, x - (-3751)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63e
  )
  [7681, x - (-621)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65e
  )
  [7681, x - (621)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67e
  )
  [7681, x - (535)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69e
  )
  [7681, x - (-535)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6be
  )
  [7681, x - (2811)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6de
  )
  [7681, x - (-2811)]
&& and [
  (-(17756))@16 <=s L0x7fffffffb5e0, L0x7fffffffb5e0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb600, L0x7fffffffb600 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb620, L0x7fffffffb620 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb640, L0x7fffffffb640 <=s (13199)@16,
  (-(18699))@16 <=s L0x7fffffffb660, L0x7fffffffb660 <=s (18699)@16, (-(18699))@16 <=s L0x7fffffffb680, L0x7fffffffb680 <=s (18699)@16,
  (-(13583))@16 <=s L0x7fffffffb6a0, L0x7fffffffb6a0 <=s (13583)@16, (-(13583))@16 <=s L0x7fffffffb6c0, L0x7fffffffb6c0 <=s (13583)@16,
  (-(18378))@16 <=s L0x7fffffffb5e2, L0x7fffffffb5e2 <=s (18378)@16, (-(18378))@16 <=s L0x7fffffffb602, L0x7fffffffb602 <=s (18378)@16,
  (-(13437))@16 <=s L0x7fffffffb622, L0x7fffffffb622 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb642, L0x7fffffffb642 <=s (13437)@16,
  (-(17751))@16 <=s L0x7fffffffb662, L0x7fffffffb662 <=s (17751)@16, (-(17751))@16 <=s L0x7fffffffb682, L0x7fffffffb682 <=s (17751)@16,
  (-(13511))@16 <=s L0x7fffffffb6a2, L0x7fffffffb6a2 <=s (13511)@16, (-(13511))@16 <=s L0x7fffffffb6c2, L0x7fffffffb6c2 <=s (13511)@16,
  (-(17520))@16 <=s L0x7fffffffb5e4, L0x7fffffffb5e4 <=s (17520)@16, (-(17520))@16 <=s L0x7fffffffb604, L0x7fffffffb604 <=s (17520)@16,
  (-(13513))@16 <=s L0x7fffffffb624, L0x7fffffffb624 <=s (13513)@16, (-(13513))@16 <=s L0x7fffffffb644, L0x7fffffffb644 <=s (13513)@16,
  (-(17359))@16 <=s L0x7fffffffb664, L0x7fffffffb664 <=s (17359)@16, (-(17359))@16 <=s L0x7fffffffb684, L0x7fffffffb684 <=s (17359)@16,
  (-(12884))@16 <=s L0x7fffffffb6a4, L0x7fffffffb6a4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb6c4, L0x7fffffffb6c4 <=s (12884)@16,
  (-(17788))@16 <=s L0x7fffffffb5e6, L0x7fffffffb5e6 <=s (17788)@16, (-(17788))@16 <=s L0x7fffffffb606, L0x7fffffffb606 <=s (17788)@16,
  (-(13218))@16 <=s L0x7fffffffb626, L0x7fffffffb626 <=s (13218)@16, (-(13218))@16 <=s L0x7fffffffb646, L0x7fffffffb646 <=s (13218)@16,
  (-(17555))@16 <=s L0x7fffffffb666, L0x7fffffffb666 <=s (17555)@16, (-(17555))@16 <=s L0x7fffffffb686, L0x7fffffffb686 <=s (17555)@16,
  (-(13165))@16 <=s L0x7fffffffb6a6, L0x7fffffffb6a6 <=s (13165)@16, (-(13165))@16 <=s L0x7fffffffb6c6, L0x7fffffffb6c6 <=s (13165)@16,
  (-(17756))@16 <=s L0x7fffffffb5e8, L0x7fffffffb5e8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb608, L0x7fffffffb608 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb628, L0x7fffffffb628 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb648, L0x7fffffffb648 <=s (13199)@16,
  (-(18681))@16 <=s L0x7fffffffb668, L0x7fffffffb668 <=s (18681)@16, (-(18681))@16 <=s L0x7fffffffb688, L0x7fffffffb688 <=s (18681)@16,
  (-(13640))@16 <=s L0x7fffffffb6a8, L0x7fffffffb6a8 <=s (13640)@16, (-(13640))@16 <=s L0x7fffffffb6c8, L0x7fffffffb6c8 <=s (13640)@16,
  (-(18332))@16 <=s L0x7fffffffb5ea, L0x7fffffffb5ea <=s (18332)@16, (-(18332))@16 <=s L0x7fffffffb60a, L0x7fffffffb60a <=s (18332)@16,
  (-(13437))@16 <=s L0x7fffffffb62a, L0x7fffffffb62a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb64a, L0x7fffffffb64a <=s (13437)@16,
  (-(17741))@16 <=s L0x7fffffffb66a, L0x7fffffffb66a <=s (17741)@16, (-(17741))@16 <=s L0x7fffffffb68a, L0x7fffffffb68a <=s (17741)@16,
  (-(13517))@16 <=s L0x7fffffffb6aa, L0x7fffffffb6aa <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb6ca, L0x7fffffffb6ca <=s (13517)@16,
  (-(17580))@16 <=s L0x7fffffffb5ec, L0x7fffffffb5ec <=s (17580)@16, (-(17580))@16 <=s L0x7fffffffb60c, L0x7fffffffb60c <=s (17580)@16,
  (-(13554))@16 <=s L0x7fffffffb62c, L0x7fffffffb62c <=s (13554)@16, (-(13554))@16 <=s L0x7fffffffb64c, L0x7fffffffb64c <=s (13554)@16,
  (-(17330))@16 <=s L0x7fffffffb66c, L0x7fffffffb66c <=s (17330)@16, (-(17330))@16 <=s L0x7fffffffb68c, L0x7fffffffb68c <=s (17330)@16,
  (-(12884))@16 <=s L0x7fffffffb6ac, L0x7fffffffb6ac <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb6cc, L0x7fffffffb6cc <=s (12884)@16,
  (-(17792))@16 <=s L0x7fffffffb5ee, L0x7fffffffb5ee <=s (17792)@16, (-(17792))@16 <=s L0x7fffffffb60e, L0x7fffffffb60e <=s (17792)@16,
  (-(13245))@16 <=s L0x7fffffffb62e, L0x7fffffffb62e <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb64e, L0x7fffffffb64e <=s (13245)@16,
  (-(17548))@16 <=s L0x7fffffffb66e, L0x7fffffffb66e <=s (17548)@16, (-(17548))@16 <=s L0x7fffffffb68e, L0x7fffffffb68e <=s (17548)@16,
  (-(13180))@16 <=s L0x7fffffffb6ae, L0x7fffffffb6ae <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb6ce, L0x7fffffffb6ce <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb5f0, L0x7fffffffb5f0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb610, L0x7fffffffb610 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb630, L0x7fffffffb630 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb650, L0x7fffffffb650 <=s (13199)@16,
  (-(18681))@16 <=s L0x7fffffffb670, L0x7fffffffb670 <=s (18681)@16, (-(18681))@16 <=s L0x7fffffffb690, L0x7fffffffb690 <=s (18681)@16,
  (-(13640))@16 <=s L0x7fffffffb6b0, L0x7fffffffb6b0 <=s (13640)@16, (-(13640))@16 <=s L0x7fffffffb6d0, L0x7fffffffb6d0 <=s (13640)@16,
  (-(18324))@16 <=s L0x7fffffffb5f2, L0x7fffffffb5f2 <=s (18324)@16, (-(18324))@16 <=s L0x7fffffffb612, L0x7fffffffb612 <=s (18324)@16,
  (-(13437))@16 <=s L0x7fffffffb632, L0x7fffffffb632 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb652, L0x7fffffffb652 <=s (13437)@16,
  (-(17781))@16 <=s L0x7fffffffb672, L0x7fffffffb672 <=s (17781)@16, (-(17781))@16 <=s L0x7fffffffb692, L0x7fffffffb692 <=s (17781)@16,
  (-(13542))@16 <=s L0x7fffffffb6b2, L0x7fffffffb6b2 <=s (13542)@16, (-(13542))@16 <=s L0x7fffffffb6d2, L0x7fffffffb6d2 <=s (13542)@16,
  (-(17580))@16 <=s L0x7fffffffb5f4, L0x7fffffffb5f4 <=s (17580)@16, (-(17580))@16 <=s L0x7fffffffb614, L0x7fffffffb614 <=s (17580)@16,
  (-(13554))@16 <=s L0x7fffffffb634, L0x7fffffffb634 <=s (13554)@16, (-(13554))@16 <=s L0x7fffffffb654, L0x7fffffffb654 <=s (13554)@16,
  (-(17330))@16 <=s L0x7fffffffb674, L0x7fffffffb674 <=s (17330)@16, (-(17330))@16 <=s L0x7fffffffb694, L0x7fffffffb694 <=s (17330)@16,
  (-(12884))@16 <=s L0x7fffffffb6b4, L0x7fffffffb6b4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb6d4, L0x7fffffffb6d4 <=s (12884)@16,
  (-(17792))@16 <=s L0x7fffffffb5f6, L0x7fffffffb5f6 <=s (17792)@16, (-(17792))@16 <=s L0x7fffffffb616, L0x7fffffffb616 <=s (17792)@16,
  (-(13245))@16 <=s L0x7fffffffb636, L0x7fffffffb636 <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb656, L0x7fffffffb656 <=s (13245)@16,
  (-(17549))@16 <=s L0x7fffffffb676, L0x7fffffffb676 <=s (17549)@16, (-(17549))@16 <=s L0x7fffffffb696, L0x7fffffffb696 <=s (17549)@16,
  (-(13181))@16 <=s L0x7fffffffb6b6, L0x7fffffffb6b6 <=s (13181)@16, (-(13181))@16 <=s L0x7fffffffb6d6, L0x7fffffffb6d6 <=s (13181)@16,
  (-(17756))@16 <=s L0x7fffffffb5f8, L0x7fffffffb5f8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb618, L0x7fffffffb618 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb638, L0x7fffffffb638 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb658, L0x7fffffffb658 <=s (13199)@16,
  (-(18639))@16 <=s L0x7fffffffb678, L0x7fffffffb678 <=s (18639)@16, (-(18639))@16 <=s L0x7fffffffb698, L0x7fffffffb698 <=s (18639)@16,
  (-(13567))@16 <=s L0x7fffffffb6b8, L0x7fffffffb6b8 <=s (13567)@16, (-(13567))@16 <=s L0x7fffffffb6d8, L0x7fffffffb6d8 <=s (13567)@16,
  (-(18359))@16 <=s L0x7fffffffb5fa, L0x7fffffffb5fa <=s (18359)@16, (-(18359))@16 <=s L0x7fffffffb61a, L0x7fffffffb61a <=s (18359)@16,
  (-(13437))@16 <=s L0x7fffffffb63a, L0x7fffffffb63a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb65a, L0x7fffffffb65a <=s (13437)@16,
  (-(17729))@16 <=s L0x7fffffffb67a, L0x7fffffffb67a <=s (17729)@16, (-(17729))@16 <=s L0x7fffffffb69a, L0x7fffffffb69a <=s (17729)@16,
  (-(13486))@16 <=s L0x7fffffffb6ba, L0x7fffffffb6ba <=s (13486)@16, (-(13486))@16 <=s L0x7fffffffb6da, L0x7fffffffb6da <=s (13486)@16,
  (-(17535))@16 <=s L0x7fffffffb5fc, L0x7fffffffb5fc <=s (17535)@16, (-(17535))@16 <=s L0x7fffffffb61c, L0x7fffffffb61c <=s (17535)@16,
  (-(13502))@16 <=s L0x7fffffffb63c, L0x7fffffffb63c <=s (13502)@16, (-(13502))@16 <=s L0x7fffffffb65c, L0x7fffffffb65c <=s (13502)@16,
  (-(17331))@16 <=s L0x7fffffffb67c, L0x7fffffffb67c <=s (17331)@16, (-(17331))@16 <=s L0x7fffffffb69c, L0x7fffffffb69c <=s (17331)@16,
  (-(12871))@16 <=s L0x7fffffffb6bc, L0x7fffffffb6bc <=s (12871)@16, (-(12871))@16 <=s L0x7fffffffb6dc, L0x7fffffffb6dc <=s (12871)@16,
  (-(17773))@16 <=s L0x7fffffffb5fe, L0x7fffffffb5fe <=s (17773)@16, (-(17773))@16 <=s L0x7fffffffb61e, L0x7fffffffb61e <=s (17773)@16,
  (-(13210))@16 <=s L0x7fffffffb63e, L0x7fffffffb63e <=s (13210)@16, (-(13210))@16 <=s L0x7fffffffb65e, L0x7fffffffb65e <=s (13210)@16,
  (-(17558))@16 <=s L0x7fffffffb67e, L0x7fffffffb67e <=s (17558)@16, (-(17558))@16 <=s L0x7fffffffb69e, L0x7fffffffb69e <=s (17558)@16,
  (-(13150))@16 <=s L0x7fffffffb6be, L0x7fffffffb6be <=s (13150)@16, (-(13150))@16 <=s L0x7fffffffb6de, L0x7fffffffb6de <=s (13150)@16
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
  [7681, x - (62)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb500
  )
  [7681, x - (-62)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb520
  )
  [7681, x - (-2359)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb540
  )
  [7681, x - (2359)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb560
  )
  [7681, x - (-1604)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb580
  )
  [7681, x - (1604)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a0
  )
  [7681, x - (3546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c0
  )
  [7681, x - (-3546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e2
  )
  [7681, x - (-1950)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb502
  )
  [7681, x - (1950)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb522
  )
  [7681, x - (-1129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb542
  )
  [7681, x - (1129)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb562
  )
  [7681, x - (2259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb582
  )
  [7681, x - (-2259)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a2
  )
  [7681, x - (398)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c2
  )
  [7681, x - (-398)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e4
  )
  [7681, x - (201)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb504
  )
  [7681, x - (-201)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb524
  )
  [7681, x - (3626)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb544
  )
  [7681, x - (-3626)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb564
  )
  [7681, x - (2875)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb584
  )
  [7681, x - (-2875)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a4
  )
  [7681, x - (-1979)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c4
  )
  [7681, x - (1979)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e6
  )
  [7681, x - (1607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb506
  )
  [7681, x - (-1607)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb526
  )
  [7681, x - (1667)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb546
  )
  [7681, x - (-1667)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb566
  )
  [7681, x - (-1968)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb586
  )
  [7681, x - (1968)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a6
  )
  [7681, x - (-1683)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c6
  )
  [7681, x - (1683)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4e8
  )
  [7681, x - (-3445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb508
  )
  [7681, x - (3445)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb528
  )
  [7681, x - (2358)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb548
  )
  [7681, x - (-2358)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb568
  )
  [7681, x - (-321)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb588
  )
  [7681, x - (321)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5a8
  )
  [7681, x - (2922)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5c8
  )
  [7681, x - (-2922)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ea
  )
  [7681, x - (2799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50a
  )
  [7681, x - (-2799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52a
  )
  [7681, x - (1656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54a
  )
  [7681, x - (-1656)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56a
  )
  [7681, x - (3694)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58a
  )
  [7681, x - (-3694)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5aa
  )
  [7681, x - (185)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ca
  )
  [7681, x - (-185)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ec
  )
  [7681, x - (2583)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50c
  )
  [7681, x - (-2583)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52c
  )
  [7681, x - (2689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54c
  )
  [7681, x - (-2689)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56c
  )
  [7681, x - (2668)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58c
  )
  [7681, x - (-2668)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ac
  )
  [7681, x - (-669)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5cc
  )
  [7681, x - (669)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4ee
  )
  [7681, x - (-1704)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb50e
  )
  [7681, x - (1704)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb52e
  )
  [7681, x - (-3799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb54e
  )
  [7681, x - (3799)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb56e
  )
  [7681, x - (-413)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb58e
  )
  [7681, x - (413)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ae
  )
  [7681, x - (-763)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ce
  )
  [7681, x - (763)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f0
  )
  [7681, x - (-3081)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb510
  )
  [7681, x - (3081)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb530
  )
  [7681, x - (-94)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb550
  )
  [7681, x - (94)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb570
  )
  [7681, x - (3394)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb590
  )
  [7681, x - (-3394)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b0
  )
  [7681, x - (1193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d0
  )
  [7681, x - (-1193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f2
  )
  [7681, x - (2996)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb512
  )
  [7681, x - (-2996)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb532
  )
  [7681, x - (3452)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb552
  )
  [7681, x - (-3452)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb572
  )
  [7681, x - (-1131)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb592
  )
  [7681, x - (1131)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b2
  )
  [7681, x - (1035)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d2
  )
  [7681, x - (-1035)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f4
  )
  [7681, x - (542)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb514
  )
  [7681, x - (-542)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb534
  )
  [7681, x - (2173)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb554
  )
  [7681, x - (-2173)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb574
  )
  [7681, x - (-1266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb594
  )
  [7681, x - (1266)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b4
  )
  [7681, x - (-3120)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d4
  )
  [7681, x - (3120)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f6
  )
  [7681, x - (-1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb516
  )
  [7681, x - (1437)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb536
  )
  [7681, x - (-702)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb556
  )
  [7681, x - (702)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb576
  )
  [7681, x - (-1065)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb596
  )
  [7681, x - (1065)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b6
  )
  [7681, x - (506)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d6
  )
  [7681, x - (-506)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4f8
  )
  [7681, x - (-1876)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb518
  )
  [7681, x - (1876)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb538
  )
  [7681, x - (2002)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb558
  )
  [7681, x - (-2002)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb578
  )
  [7681, x - (-2012)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb598
  )
  [7681, x - (2012)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5b8
  )
  [7681, x - (1230)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5d8
  )
  [7681, x - (-1230)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fa
  )
  [7681, x - (-2197)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51a
  )
  [7681, x - (2197)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53a
  )
  [7681, x - (-2757)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55a
  )
  [7681, x - (2757)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57a
  )
  [7681, x - (3006)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59a
  )
  [7681, x - (-3006)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ba
  )
  [7681, x - (346)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5da
  )
  [7681, x - (-346)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fc
  )
  [7681, x - (2838)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51c
  )
  [7681, x - (-2838)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53c
  )
  [7681, x - (296)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55c
  )
  [7681, x - (-296)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57c
  )
  [7681, x - (1959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59c
  )
  [7681, x - (-1959)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5bc
  )
  [7681, x - (1406)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5dc
  )
  [7681, x - (-1406)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb4fe
  )
  [7681, x - (2169)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb51e
  )
  [7681, x - (-2169)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb53e
  )
  [7681, x - (-2372)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb55e
  )
  [7681, x - (2372)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb57e
  )
  [7681, x - (-3139)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb59e
  )
  [7681, x - (3139)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5be
  )
  [7681, x - (-3586)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5de
  )
  [7681, x - (3586)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e0
  )
  [7681, x - (217)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb600
  )
  [7681, x - (-217)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb620
  )
  [7681, x - (3265)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb640
  )
  [7681, x - (-3265)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb660
  )
  [7681, x - (2067)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb680
  )
  [7681, x - (-2067)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a0
  )
  [7681, x - (-2951)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c0
  )
  [7681, x - (2951)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e2
  )
  [7681, x - (856)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb602
  )
  [7681, x - (-856)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb622
  )
  [7681, x - (-111)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb642
  )
  [7681, x - (111)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb662
  )
  [7681, x - (-3615)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb682
  )
  [7681, x - (3615)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a2
  )
  [7681, x - (1393)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c2
  )
  [7681, x - (-1393)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e4
  )
  [7681, x - (-3137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb604
  )
  [7681, x - (3137)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb624
  )
  [7681, x - (-2671)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb644
  )
  [7681, x - (2671)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb664
  )
  [7681, x - (-1459)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb684
  )
  [7681, x - (1459)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a4
  )
  [7681, x - (-3086)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c4
  )
  [7681, x - (3086)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e6
  )
  [7681, x - (1784)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb606
  )
  [7681, x - (-1784)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb626
  )
  [7681, x - (1994)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb646
  )
  [7681, x - (-1994)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb666
  )
  [7681, x - (793)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb686
  )
  [7681, x - (-793)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a6
  )
  [7681, x - (-2050)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c6
  )
  [7681, x - (2050)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5e8
  )
  [7681, x - (-536)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb608
  )
  [7681, x - (536)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb628
  )
  [7681, x - (572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb648
  )
  [7681, x - (-572)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb668
  )
  [7681, x - (2717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb688
  )
  [7681, x - (-2717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6a8
  )
  [7681, x - (2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6c8
  )
  [7681, x - (-2546)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ea
  )
  [7681, x - (-1725)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60a
  )
  [7681, x - (1725)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62a
  )
  [7681, x - (-1885)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64a
  )
  [7681, x - (1885)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66a
  )
  [7681, x - (-2433)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68a
  )
  [7681, x - (2433)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6aa
  )
  [7681, x - (-3193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ca
  )
  [7681, x - (3193)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ec
  )
  [7681, x - (-2481)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60c
  )
  [7681, x - (2481)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62c
  )
  [7681, x - (-2110)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64c
  )
  [7681, x - (2110)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66c
  )
  [7681, x - (1657)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68c
  )
  [7681, x - (-1657)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ac
  )
  [7681, x - (1499)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6cc
  )
  [7681, x - (-1499)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5ee
  )
  [7681, x - (1717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb60e
  )
  [7681, x - (-1717)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb62e
  )
  [7681, x - (-1775)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb64e
  )
  [7681, x - (1775)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb66e
  )
  [7681, x - (2395)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb68e
  )
  [7681, x - (-2395)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ae
  )
  [7681, x - (1170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ce
  )
  [7681, x - (-1170)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f0
  )
  [7681, x - (738)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb610
  )
  [7681, x - (-738)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb630
  )
  [7681, x - (-329)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb650
  )
  [7681, x - (329)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb670
  )
  [7681, x - (-3483)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb690
  )
  [7681, x - (3483)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b0
  )
  [7681, x - (335)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d0
  )
  [7681, x - (-335)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f2
  )
  [7681, x - (2805)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb612
  )
  [7681, x - (-2805)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb632
  )
  [7681, x - (-3280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb652
  )
  [7681, x - (3280)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb672
  )
  [7681, x - (-118)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb692
  )
  [7681, x - (118)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b2
  )
  [7681, x - (-218)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d2
  )
  [7681, x - (218)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f4
  )
  [7681, x - (1897)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb614
  )
  [7681, x - (-1897)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb634
  )
  [7681, x - (3765)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb654
  )
  [7681, x - (-3765)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb674
  )
  [7681, x - (3250)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb694
  )
  [7681, x - (-3250)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b4
  )
  [7681, x - (-3239)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d4
  )
  [7681, x - (3239)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f6
  )
  [7681, x - (-1189)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb616
  )
  [7681, x - (1189)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb636
  )
  [7681, x - (-2457)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb656
  )
  [7681, x - (2457)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb676
  )
  [7681, x - (113)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb696
  )
  [7681, x - (-113)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b6
  )
  [7681, x - (1771)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d6
  )
  [7681, x - (-1771)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5f8
  )
  [7681, x - (1115)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb618
  )
  [7681, x - (-1115)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb638
  )
  [7681, x - (-674)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb658
  )
  [7681, x - (674)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb678
  )
  [7681, x - (639)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb698
  )
  [7681, x - (-639)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6b8
  )
  [7681, x - (-3376)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6d8
  )
  [7681, x - (3376)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fa
  )
  [7681, x - (3832)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61a
  )
  [7681, x - (-3832)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63a
  )
  [7681, x - (1872)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65a
  )
  [7681, x - (-1872)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67a
  )
  [7681, x - (2840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69a
  )
  [7681, x - (-2840)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6ba
  )
  [7681, x - (1211)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6da
  )
  [7681, x - (-1211)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fc
  )
  [7681, x - (2252)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61c
  )
  [7681, x - (-2252)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63c
  )
  [7681, x - (1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65c
  )
  [7681, x - (-1036)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67c
  )
  [7681, x - (3016)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69c
  )
  [7681, x - (-3016)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6bc
  )
  [7681, x - (-2760)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6dc
  )
  [7681, x - (2760)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb5fe
  )
  [7681, x - (3751)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb61e
  )
  [7681, x - (-3751)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb63e
  )
  [7681, x - (-621)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb65e
  )
  [7681, x - (621)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb67e
  )
  [7681, x - (535)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb69e
  )
  [7681, x - (-535)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6be
  )
  [7681, x - (2811)],
eqmod
  (inp_poly * inp_poly)
  (
    L0x7fffffffb6de
  )
  [7681, x - (-2811)]
] prove with [cuts [7, 15]] && and [
  (-(17756))@16 <=s L0x7fffffffb4e0, L0x7fffffffb4e0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb500, L0x7fffffffb500 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb520, L0x7fffffffb520 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb540, L0x7fffffffb540 <=s (13199)@16,
  (-(18617))@16 <=s L0x7fffffffb560, L0x7fffffffb560 <=s (18617)@16, (-(18617))@16 <=s L0x7fffffffb580, L0x7fffffffb580 <=s (18617)@16,
  (-(13624))@16 <=s L0x7fffffffb5a0, L0x7fffffffb5a0 <=s (13624)@16, (-(13624))@16 <=s L0x7fffffffb5c0, L0x7fffffffb5c0 <=s (13624)@16,
  (-(18291))@16 <=s L0x7fffffffb4e2, L0x7fffffffb4e2 <=s (18291)@16, (-(18291))@16 <=s L0x7fffffffb502, L0x7fffffffb502 <=s (18291)@16,
  (-(13437))@16 <=s L0x7fffffffb522, L0x7fffffffb522 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb542, L0x7fffffffb542 <=s (13437)@16,
  (-(17714))@16 <=s L0x7fffffffb562, L0x7fffffffb562 <=s (17714)@16, (-(17714))@16 <=s L0x7fffffffb582, L0x7fffffffb582 <=s (17714)@16,
  (-(13517))@16 <=s L0x7fffffffb5a2, L0x7fffffffb5a2 <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb5c2, L0x7fffffffb5c2 <=s (13517)@16,
  (-(17576))@16 <=s L0x7fffffffb4e4, L0x7fffffffb4e4 <=s (17576)@16, (-(17576))@16 <=s L0x7fffffffb504, L0x7fffffffb504 <=s (17576)@16,
  (-(13543))@16 <=s L0x7fffffffb524, L0x7fffffffb524 <=s (13543)@16, (-(13543))@16 <=s L0x7fffffffb544, L0x7fffffffb544 <=s (13543)@16,
  (-(17325))@16 <=s L0x7fffffffb564, L0x7fffffffb564 <=s (17325)@16, (-(17325))@16 <=s L0x7fffffffb584, L0x7fffffffb584 <=s (17325)@16,
  (-(12884))@16 <=s L0x7fffffffb5a4, L0x7fffffffb5a4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5c4, L0x7fffffffb5c4 <=s (12884)@16,
  (-(17768))@16 <=s L0x7fffffffb4e6, L0x7fffffffb4e6 <=s (17768)@16, (-(17768))@16 <=s L0x7fffffffb506, L0x7fffffffb506 <=s (17768)@16,
  (-(13245))@16 <=s L0x7fffffffb526, L0x7fffffffb526 <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb546, L0x7fffffffb546 <=s (13245)@16,
  (-(17583))@16 <=s L0x7fffffffb566, L0x7fffffffb566 <=s (17583)@16, (-(17583))@16 <=s L0x7fffffffb586, L0x7fffffffb586 <=s (17583)@16,
  (-(13180))@16 <=s L0x7fffffffb5a6, L0x7fffffffb5a6 <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5c6, L0x7fffffffb5c6 <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb4e8, L0x7fffffffb4e8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb508, L0x7fffffffb508 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb528, L0x7fffffffb528 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb548, L0x7fffffffb548 <=s (13199)@16,
  (-(18696))@16 <=s L0x7fffffffb568, L0x7fffffffb568 <=s (18696)@16, (-(18696))@16 <=s L0x7fffffffb588, L0x7fffffffb588 <=s (18696)@16,
  (-(13624))@16 <=s L0x7fffffffb5a8, L0x7fffffffb5a8 <=s (13624)@16, (-(13624))@16 <=s L0x7fffffffb5c8, L0x7fffffffb5c8 <=s (13624)@16,
  (-(18359))@16 <=s L0x7fffffffb4ea, L0x7fffffffb4ea <=s (18359)@16, (-(18359))@16 <=s L0x7fffffffb50a, L0x7fffffffb50a <=s (18359)@16,
  (-(13437))@16 <=s L0x7fffffffb52a, L0x7fffffffb52a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb54a, L0x7fffffffb54a <=s (13437)@16,
  (-(17756))@16 <=s L0x7fffffffb56a, L0x7fffffffb56a <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb58a, L0x7fffffffb58a <=s (17756)@16,
  (-(13517))@16 <=s L0x7fffffffb5aa, L0x7fffffffb5aa <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb5ca, L0x7fffffffb5ca <=s (13517)@16,
  (-(17553))@16 <=s L0x7fffffffb4ec, L0x7fffffffb4ec <=s (17553)@16, (-(17553))@16 <=s L0x7fffffffb50c, L0x7fffffffb50c <=s (17553)@16,
  (-(13527))@16 <=s L0x7fffffffb52c, L0x7fffffffb52c <=s (13527)@16, (-(13527))@16 <=s L0x7fffffffb54c, L0x7fffffffb54c <=s (13527)@16,
  (-(17344))@16 <=s L0x7fffffffb56c, L0x7fffffffb56c <=s (17344)@16, (-(17344))@16 <=s L0x7fffffffb58c, L0x7fffffffb58c <=s (17344)@16,
  (-(12884))@16 <=s L0x7fffffffb5ac, L0x7fffffffb5ac <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5cc, L0x7fffffffb5cc <=s (12884)@16,
  (-(17808))@16 <=s L0x7fffffffb4ee, L0x7fffffffb4ee <=s (17808)@16, (-(17808))@16 <=s L0x7fffffffb50e, L0x7fffffffb50e <=s (17808)@16,
  (-(13245))@16 <=s L0x7fffffffb52e, L0x7fffffffb52e <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb54e, L0x7fffffffb54e <=s (13245)@16,
  (-(17588))@16 <=s L0x7fffffffb56e, L0x7fffffffb56e <=s (17588)@16, (-(17588))@16 <=s L0x7fffffffb58e, L0x7fffffffb58e <=s (17588)@16,
  (-(13180))@16 <=s L0x7fffffffb5ae, L0x7fffffffb5ae <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5ce, L0x7fffffffb5ce <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb4f0, L0x7fffffffb4f0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb510, L0x7fffffffb510 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb530, L0x7fffffffb530 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb550, L0x7fffffffb550 <=s (13199)@16,
  (-(18696))@16 <=s L0x7fffffffb570, L0x7fffffffb570 <=s (18696)@16, (-(18696))@16 <=s L0x7fffffffb590, L0x7fffffffb590 <=s (18696)@16,
  (-(13624))@16 <=s L0x7fffffffb5b0, L0x7fffffffb5b0 <=s (13624)@16, (-(13624))@16 <=s L0x7fffffffb5d0, L0x7fffffffb5d0 <=s (13624)@16,
  (-(18359))@16 <=s L0x7fffffffb4f2, L0x7fffffffb4f2 <=s (18359)@16, (-(18359))@16 <=s L0x7fffffffb512, L0x7fffffffb512 <=s (18359)@16,
  (-(13437))@16 <=s L0x7fffffffb532, L0x7fffffffb532 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb552, L0x7fffffffb552 <=s (13437)@16,
  (-(17760))@16 <=s L0x7fffffffb572, L0x7fffffffb572 <=s (17760)@16, (-(17760))@16 <=s L0x7fffffffb592, L0x7fffffffb592 <=s (17760)@16,
  (-(13517))@16 <=s L0x7fffffffb5b2, L0x7fffffffb5b2 <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb5d2, L0x7fffffffb5d2 <=s (13517)@16,
  (-(17603))@16 <=s L0x7fffffffb4f4, L0x7fffffffb4f4 <=s (17603)@16, (-(17603))@16 <=s L0x7fffffffb514, L0x7fffffffb514 <=s (17603)@16,
  (-(13570))@16 <=s L0x7fffffffb534, L0x7fffffffb534 <=s (13570)@16, (-(13570))@16 <=s L0x7fffffffb554, L0x7fffffffb554 <=s (13570)@16,
  (-(17344))@16 <=s L0x7fffffffb574, L0x7fffffffb574 <=s (17344)@16, (-(17344))@16 <=s L0x7fffffffb594, L0x7fffffffb594 <=s (17344)@16,
  (-(12884))@16 <=s L0x7fffffffb5b4, L0x7fffffffb5b4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5d4, L0x7fffffffb5d4 <=s (12884)@16,
  (-(17811))@16 <=s L0x7fffffffb4f6, L0x7fffffffb4f6 <=s (17811)@16, (-(17811))@16 <=s L0x7fffffffb516, L0x7fffffffb516 <=s (17811)@16,
  (-(13245))@16 <=s L0x7fffffffb536, L0x7fffffffb536 <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb556, L0x7fffffffb556 <=s (13245)@16,
  (-(17588))@16 <=s L0x7fffffffb576, L0x7fffffffb576 <=s (17588)@16, (-(17588))@16 <=s L0x7fffffffb596, L0x7fffffffb596 <=s (17588)@16,
  (-(13180))@16 <=s L0x7fffffffb5b6, L0x7fffffffb5b6 <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5d6, L0x7fffffffb5d6 <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb4f8, L0x7fffffffb4f8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb518, L0x7fffffffb518 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb538, L0x7fffffffb538 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb558, L0x7fffffffb558 <=s (13199)@16,
  (-(18624))@16 <=s L0x7fffffffb578, L0x7fffffffb578 <=s (18624)@16, (-(18624))@16 <=s L0x7fffffffb598, L0x7fffffffb598 <=s (18624)@16,
  (-(13583))@16 <=s L0x7fffffffb5b8, L0x7fffffffb5b8 <=s (13583)@16, (-(13583))@16 <=s L0x7fffffffb5d8, L0x7fffffffb5d8 <=s (13583)@16,
  (-(18351))@16 <=s L0x7fffffffb4fa, L0x7fffffffb4fa <=s (18351)@16, (-(18351))@16 <=s L0x7fffffffb51a, L0x7fffffffb51a <=s (18351)@16,
  (-(13437))@16 <=s L0x7fffffffb53a, L0x7fffffffb53a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb55a, L0x7fffffffb55a <=s (13437)@16,
  (-(17750))@16 <=s L0x7fffffffb57a, L0x7fffffffb57a <=s (17750)@16, (-(17750))@16 <=s L0x7fffffffb59a, L0x7fffffffb59a <=s (17750)@16,
  (-(13511))@16 <=s L0x7fffffffb5ba, L0x7fffffffb5ba <=s (13511)@16, (-(13511))@16 <=s L0x7fffffffb5da, L0x7fffffffb5da <=s (13511)@16,
  (-(17516))@16 <=s L0x7fffffffb4fc, L0x7fffffffb4fc <=s (17516)@16, (-(17516))@16 <=s L0x7fffffffb51c, L0x7fffffffb51c <=s (17516)@16,
  (-(13513))@16 <=s L0x7fffffffb53c, L0x7fffffffb53c <=s (13513)@16, (-(13513))@16 <=s L0x7fffffffb55c, L0x7fffffffb55c <=s (13513)@16,
  (-(17359))@16 <=s L0x7fffffffb57c, L0x7fffffffb57c <=s (17359)@16, (-(17359))@16 <=s L0x7fffffffb59c, L0x7fffffffb59c <=s (17359)@16,
  (-(12884))@16 <=s L0x7fffffffb5bc, L0x7fffffffb5bc <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb5dc, L0x7fffffffb5dc <=s (12884)@16,
  (-(17806))@16 <=s L0x7fffffffb4fe, L0x7fffffffb4fe <=s (17806)@16, (-(17806))@16 <=s L0x7fffffffb51e, L0x7fffffffb51e <=s (17806)@16,
  (-(13236))@16 <=s L0x7fffffffb53e, L0x7fffffffb53e <=s (13236)@16, (-(13236))@16 <=s L0x7fffffffb55e, L0x7fffffffb55e <=s (13236)@16,
  (-(17559))@16 <=s L0x7fffffffb57e, L0x7fffffffb57e <=s (17559)@16, (-(17559))@16 <=s L0x7fffffffb59e, L0x7fffffffb59e <=s (17559)@16,
  (-(13180))@16 <=s L0x7fffffffb5be, L0x7fffffffb5be <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb5de, L0x7fffffffb5de <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb5e0, L0x7fffffffb5e0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb600, L0x7fffffffb600 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb620, L0x7fffffffb620 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb640, L0x7fffffffb640 <=s (13199)@16,
  (-(18699))@16 <=s L0x7fffffffb660, L0x7fffffffb660 <=s (18699)@16, (-(18699))@16 <=s L0x7fffffffb680, L0x7fffffffb680 <=s (18699)@16,
  (-(13583))@16 <=s L0x7fffffffb6a0, L0x7fffffffb6a0 <=s (13583)@16, (-(13583))@16 <=s L0x7fffffffb6c0, L0x7fffffffb6c0 <=s (13583)@16,
  (-(18378))@16 <=s L0x7fffffffb5e2, L0x7fffffffb5e2 <=s (18378)@16, (-(18378))@16 <=s L0x7fffffffb602, L0x7fffffffb602 <=s (18378)@16,
  (-(13437))@16 <=s L0x7fffffffb622, L0x7fffffffb622 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb642, L0x7fffffffb642 <=s (13437)@16,
  (-(17751))@16 <=s L0x7fffffffb662, L0x7fffffffb662 <=s (17751)@16, (-(17751))@16 <=s L0x7fffffffb682, L0x7fffffffb682 <=s (17751)@16,
  (-(13511))@16 <=s L0x7fffffffb6a2, L0x7fffffffb6a2 <=s (13511)@16, (-(13511))@16 <=s L0x7fffffffb6c2, L0x7fffffffb6c2 <=s (13511)@16,
  (-(17520))@16 <=s L0x7fffffffb5e4, L0x7fffffffb5e4 <=s (17520)@16, (-(17520))@16 <=s L0x7fffffffb604, L0x7fffffffb604 <=s (17520)@16,
  (-(13513))@16 <=s L0x7fffffffb624, L0x7fffffffb624 <=s (13513)@16, (-(13513))@16 <=s L0x7fffffffb644, L0x7fffffffb644 <=s (13513)@16,
  (-(17359))@16 <=s L0x7fffffffb664, L0x7fffffffb664 <=s (17359)@16, (-(17359))@16 <=s L0x7fffffffb684, L0x7fffffffb684 <=s (17359)@16,
  (-(12884))@16 <=s L0x7fffffffb6a4, L0x7fffffffb6a4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb6c4, L0x7fffffffb6c4 <=s (12884)@16,
  (-(17788))@16 <=s L0x7fffffffb5e6, L0x7fffffffb5e6 <=s (17788)@16, (-(17788))@16 <=s L0x7fffffffb606, L0x7fffffffb606 <=s (17788)@16,
  (-(13218))@16 <=s L0x7fffffffb626, L0x7fffffffb626 <=s (13218)@16, (-(13218))@16 <=s L0x7fffffffb646, L0x7fffffffb646 <=s (13218)@16,
  (-(17555))@16 <=s L0x7fffffffb666, L0x7fffffffb666 <=s (17555)@16, (-(17555))@16 <=s L0x7fffffffb686, L0x7fffffffb686 <=s (17555)@16,
  (-(13165))@16 <=s L0x7fffffffb6a6, L0x7fffffffb6a6 <=s (13165)@16, (-(13165))@16 <=s L0x7fffffffb6c6, L0x7fffffffb6c6 <=s (13165)@16,
  (-(17756))@16 <=s L0x7fffffffb5e8, L0x7fffffffb5e8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb608, L0x7fffffffb608 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb628, L0x7fffffffb628 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb648, L0x7fffffffb648 <=s (13199)@16,
  (-(18681))@16 <=s L0x7fffffffb668, L0x7fffffffb668 <=s (18681)@16, (-(18681))@16 <=s L0x7fffffffb688, L0x7fffffffb688 <=s (18681)@16,
  (-(13640))@16 <=s L0x7fffffffb6a8, L0x7fffffffb6a8 <=s (13640)@16, (-(13640))@16 <=s L0x7fffffffb6c8, L0x7fffffffb6c8 <=s (13640)@16,
  (-(18332))@16 <=s L0x7fffffffb5ea, L0x7fffffffb5ea <=s (18332)@16, (-(18332))@16 <=s L0x7fffffffb60a, L0x7fffffffb60a <=s (18332)@16,
  (-(13437))@16 <=s L0x7fffffffb62a, L0x7fffffffb62a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb64a, L0x7fffffffb64a <=s (13437)@16,
  (-(17741))@16 <=s L0x7fffffffb66a, L0x7fffffffb66a <=s (17741)@16, (-(17741))@16 <=s L0x7fffffffb68a, L0x7fffffffb68a <=s (17741)@16,
  (-(13517))@16 <=s L0x7fffffffb6aa, L0x7fffffffb6aa <=s (13517)@16, (-(13517))@16 <=s L0x7fffffffb6ca, L0x7fffffffb6ca <=s (13517)@16,
  (-(17580))@16 <=s L0x7fffffffb5ec, L0x7fffffffb5ec <=s (17580)@16, (-(17580))@16 <=s L0x7fffffffb60c, L0x7fffffffb60c <=s (17580)@16,
  (-(13554))@16 <=s L0x7fffffffb62c, L0x7fffffffb62c <=s (13554)@16, (-(13554))@16 <=s L0x7fffffffb64c, L0x7fffffffb64c <=s (13554)@16,
  (-(17330))@16 <=s L0x7fffffffb66c, L0x7fffffffb66c <=s (17330)@16, (-(17330))@16 <=s L0x7fffffffb68c, L0x7fffffffb68c <=s (17330)@16,
  (-(12884))@16 <=s L0x7fffffffb6ac, L0x7fffffffb6ac <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb6cc, L0x7fffffffb6cc <=s (12884)@16,
  (-(17792))@16 <=s L0x7fffffffb5ee, L0x7fffffffb5ee <=s (17792)@16, (-(17792))@16 <=s L0x7fffffffb60e, L0x7fffffffb60e <=s (17792)@16,
  (-(13245))@16 <=s L0x7fffffffb62e, L0x7fffffffb62e <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb64e, L0x7fffffffb64e <=s (13245)@16,
  (-(17548))@16 <=s L0x7fffffffb66e, L0x7fffffffb66e <=s (17548)@16, (-(17548))@16 <=s L0x7fffffffb68e, L0x7fffffffb68e <=s (17548)@16,
  (-(13180))@16 <=s L0x7fffffffb6ae, L0x7fffffffb6ae <=s (13180)@16, (-(13180))@16 <=s L0x7fffffffb6ce, L0x7fffffffb6ce <=s (13180)@16,
  (-(17756))@16 <=s L0x7fffffffb5f0, L0x7fffffffb5f0 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb610, L0x7fffffffb610 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb630, L0x7fffffffb630 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb650, L0x7fffffffb650 <=s (13199)@16,
  (-(18681))@16 <=s L0x7fffffffb670, L0x7fffffffb670 <=s (18681)@16, (-(18681))@16 <=s L0x7fffffffb690, L0x7fffffffb690 <=s (18681)@16,
  (-(13640))@16 <=s L0x7fffffffb6b0, L0x7fffffffb6b0 <=s (13640)@16, (-(13640))@16 <=s L0x7fffffffb6d0, L0x7fffffffb6d0 <=s (13640)@16,
  (-(18324))@16 <=s L0x7fffffffb5f2, L0x7fffffffb5f2 <=s (18324)@16, (-(18324))@16 <=s L0x7fffffffb612, L0x7fffffffb612 <=s (18324)@16,
  (-(13437))@16 <=s L0x7fffffffb632, L0x7fffffffb632 <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb652, L0x7fffffffb652 <=s (13437)@16,
  (-(17781))@16 <=s L0x7fffffffb672, L0x7fffffffb672 <=s (17781)@16, (-(17781))@16 <=s L0x7fffffffb692, L0x7fffffffb692 <=s (17781)@16,
  (-(13542))@16 <=s L0x7fffffffb6b2, L0x7fffffffb6b2 <=s (13542)@16, (-(13542))@16 <=s L0x7fffffffb6d2, L0x7fffffffb6d2 <=s (13542)@16,
  (-(17580))@16 <=s L0x7fffffffb5f4, L0x7fffffffb5f4 <=s (17580)@16, (-(17580))@16 <=s L0x7fffffffb614, L0x7fffffffb614 <=s (17580)@16,
  (-(13554))@16 <=s L0x7fffffffb634, L0x7fffffffb634 <=s (13554)@16, (-(13554))@16 <=s L0x7fffffffb654, L0x7fffffffb654 <=s (13554)@16,
  (-(17330))@16 <=s L0x7fffffffb674, L0x7fffffffb674 <=s (17330)@16, (-(17330))@16 <=s L0x7fffffffb694, L0x7fffffffb694 <=s (17330)@16,
  (-(12884))@16 <=s L0x7fffffffb6b4, L0x7fffffffb6b4 <=s (12884)@16, (-(12884))@16 <=s L0x7fffffffb6d4, L0x7fffffffb6d4 <=s (12884)@16,
  (-(17792))@16 <=s L0x7fffffffb5f6, L0x7fffffffb5f6 <=s (17792)@16, (-(17792))@16 <=s L0x7fffffffb616, L0x7fffffffb616 <=s (17792)@16,
  (-(13245))@16 <=s L0x7fffffffb636, L0x7fffffffb636 <=s (13245)@16, (-(13245))@16 <=s L0x7fffffffb656, L0x7fffffffb656 <=s (13245)@16,
  (-(17549))@16 <=s L0x7fffffffb676, L0x7fffffffb676 <=s (17549)@16, (-(17549))@16 <=s L0x7fffffffb696, L0x7fffffffb696 <=s (17549)@16,
  (-(13181))@16 <=s L0x7fffffffb6b6, L0x7fffffffb6b6 <=s (13181)@16, (-(13181))@16 <=s L0x7fffffffb6d6, L0x7fffffffb6d6 <=s (13181)@16,
  (-(17756))@16 <=s L0x7fffffffb5f8, L0x7fffffffb5f8 <=s (17756)@16, (-(17756))@16 <=s L0x7fffffffb618, L0x7fffffffb618 <=s (17756)@16,
  (-(13199))@16 <=s L0x7fffffffb638, L0x7fffffffb638 <=s (13199)@16, (-(13199))@16 <=s L0x7fffffffb658, L0x7fffffffb658 <=s (13199)@16,
  (-(18639))@16 <=s L0x7fffffffb678, L0x7fffffffb678 <=s (18639)@16, (-(18639))@16 <=s L0x7fffffffb698, L0x7fffffffb698 <=s (18639)@16,
  (-(13567))@16 <=s L0x7fffffffb6b8, L0x7fffffffb6b8 <=s (13567)@16, (-(13567))@16 <=s L0x7fffffffb6d8, L0x7fffffffb6d8 <=s (13567)@16,
  (-(18359))@16 <=s L0x7fffffffb5fa, L0x7fffffffb5fa <=s (18359)@16, (-(18359))@16 <=s L0x7fffffffb61a, L0x7fffffffb61a <=s (18359)@16,
  (-(13437))@16 <=s L0x7fffffffb63a, L0x7fffffffb63a <=s (13437)@16, (-(13437))@16 <=s L0x7fffffffb65a, L0x7fffffffb65a <=s (13437)@16,
  (-(17729))@16 <=s L0x7fffffffb67a, L0x7fffffffb67a <=s (17729)@16, (-(17729))@16 <=s L0x7fffffffb69a, L0x7fffffffb69a <=s (17729)@16,
  (-(13486))@16 <=s L0x7fffffffb6ba, L0x7fffffffb6ba <=s (13486)@16, (-(13486))@16 <=s L0x7fffffffb6da, L0x7fffffffb6da <=s (13486)@16,
  (-(17535))@16 <=s L0x7fffffffb5fc, L0x7fffffffb5fc <=s (17535)@16, (-(17535))@16 <=s L0x7fffffffb61c, L0x7fffffffb61c <=s (17535)@16,
  (-(13502))@16 <=s L0x7fffffffb63c, L0x7fffffffb63c <=s (13502)@16, (-(13502))@16 <=s L0x7fffffffb65c, L0x7fffffffb65c <=s (13502)@16,
  (-(17331))@16 <=s L0x7fffffffb67c, L0x7fffffffb67c <=s (17331)@16, (-(17331))@16 <=s L0x7fffffffb69c, L0x7fffffffb69c <=s (17331)@16,
  (-(12871))@16 <=s L0x7fffffffb6bc, L0x7fffffffb6bc <=s (12871)@16, (-(12871))@16 <=s L0x7fffffffb6dc, L0x7fffffffb6dc <=s (12871)@16,
  (-(17773))@16 <=s L0x7fffffffb5fe, L0x7fffffffb5fe <=s (17773)@16, (-(17773))@16 <=s L0x7fffffffb61e, L0x7fffffffb61e <=s (17773)@16,
  (-(13210))@16 <=s L0x7fffffffb63e, L0x7fffffffb63e <=s (13210)@16, (-(13210))@16 <=s L0x7fffffffb65e, L0x7fffffffb65e <=s (13210)@16,
  (-(17558))@16 <=s L0x7fffffffb67e, L0x7fffffffb67e <=s (17558)@16, (-(17558))@16 <=s L0x7fffffffb69e, L0x7fffffffb69e <=s (17558)@16,
  (-(13150))@16 <=s L0x7fffffffb6be, L0x7fffffffb6be <=s (13150)@16, (-(13150))@16 <=s L0x7fffffffb6de, L0x7fffffffb6de <=s (13150)@16
] prove with [cuts [7, 15]]
}
