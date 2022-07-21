(* frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint ntt_fast.cl
Parsing Cryptoline file:                [OK]            0.109802 seconds
Checking well-formedness:               [OK]            0.027693 seconds
Transforming to SSA form:               [OK]            0.015379 seconds
Rewriting assignments:                  [OK]            0.022070 seconds
Verifying program safety:               [OK]            173.794938 seconds
Verifying range assertions:             [OK]            15.324068 seconds
Verifying range specification:          [OK]            175.768826 seconds
Rewriting value-preserved casting:      [OK]            0.000774 seconds
Verifying algebraic assertions:         [OK]            83.216711 seconds
Verifying algebraic specification:      [OK]            51.182438 seconds
Verification result:                    [OK]            499.472731 seconds
*)

(* quine: -v -isafety -jobs 16 -no_carry_constraint -slicing ntt_fast.cl
Parsing Cryptoline file:                [OK]            0.109507 seconds
Checking well-formedness:               [OK]            0.029281 seconds
Transforming to SSA form:               [OK]            0.030626 seconds
Rewriting assignments:                  [OK]            9.984859 seconds
Verifying program safety:               [OK]            325.017655 seconds
Verifying range assertions:             [OK]            110.161950 seconds
Verifying range specification:          [OK]            264.659974 seconds
Rewriting value-preserved casting:      [OK]            0.001526 seconds
Verifying algebraic assertions:         [OK]            198.749329 seconds
Verifying algebraic specification:      [OK]            136.934062 seconds
Verification result:                    [OK]            1045.691112 seconds

 -v -isafety -slicing -no_carry_constraint -jobs 16 ntt_fast.cl
 Parsing Cryptoline file:                [OK]            0.194602 seconds
 Checking well-formedness:               [OK]            0.052738 seconds
 Transforming to SSA form:               [OK]            0.034242 seconds
 Rewriting assignments:                  [OK]            0.051811 seconds
 Verifying program safety:               [OK]            547.106896 seconds
 Verifying range assertions:             [OK]            50.916378 seconds
 Verifying range specification:          [OK]            505.137297 seconds
 Rewriting value-preserved casting:      [OK]            0.000698 seconds
 Verifying algebraic assertions:         [OK]            140.793761 seconds
 Verifying algebraic specification:      [OK]            94.124697 seconds
 Verification result:                    [OK]            1338.433261 seconds
              
*)

proc main (
sint16 x,
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
  true
  &&
and [
(-3329)@16 <=s f000, f000 <s 3329@16,
(-3329)@16 <=s f001, f001 <s 3329@16,
(-3329)@16 <=s f002, f002 <s 3329@16,
(-3329)@16 <=s f003, f003 <s 3329@16,
(-3329)@16 <=s f004, f004 <s 3329@16,
(-3329)@16 <=s f005, f005 <s 3329@16,
(-3329)@16 <=s f006, f006 <s 3329@16,
(-3329)@16 <=s f007, f007 <s 3329@16,
(-3329)@16 <=s f008, f008 <s 3329@16,
(-3329)@16 <=s f009, f009 <s 3329@16,
(-3329)@16 <=s f010, f010 <s 3329@16,
(-3329)@16 <=s f011, f011 <s 3329@16,
(-3329)@16 <=s f012, f012 <s 3329@16,
(-3329)@16 <=s f013, f013 <s 3329@16,
(-3329)@16 <=s f014, f014 <s 3329@16,
(-3329)@16 <=s f015, f015 <s 3329@16,
(-3329)@16 <=s f016, f016 <s 3329@16,
(-3329)@16 <=s f017, f017 <s 3329@16,
(-3329)@16 <=s f018, f018 <s 3329@16,
(-3329)@16 <=s f019, f019 <s 3329@16,
(-3329)@16 <=s f020, f020 <s 3329@16,
(-3329)@16 <=s f021, f021 <s 3329@16,
(-3329)@16 <=s f022, f022 <s 3329@16,
(-3329)@16 <=s f023, f023 <s 3329@16,
(-3329)@16 <=s f024, f024 <s 3329@16,
(-3329)@16 <=s f025, f025 <s 3329@16,
(-3329)@16 <=s f026, f026 <s 3329@16,
(-3329)@16 <=s f027, f027 <s 3329@16,
(-3329)@16 <=s f028, f028 <s 3329@16,
(-3329)@16 <=s f029, f029 <s 3329@16,
(-3329)@16 <=s f030, f030 <s 3329@16,
(-3329)@16 <=s f031, f031 <s 3329@16,
(-3329)@16 <=s f032, f032 <s 3329@16,
(-3329)@16 <=s f033, f033 <s 3329@16,
(-3329)@16 <=s f034, f034 <s 3329@16,
(-3329)@16 <=s f035, f035 <s 3329@16,
(-3329)@16 <=s f036, f036 <s 3329@16,
(-3329)@16 <=s f037, f037 <s 3329@16,
(-3329)@16 <=s f038, f038 <s 3329@16,
(-3329)@16 <=s f039, f039 <s 3329@16,
(-3329)@16 <=s f040, f040 <s 3329@16,
(-3329)@16 <=s f041, f041 <s 3329@16,
(-3329)@16 <=s f042, f042 <s 3329@16,
(-3329)@16 <=s f043, f043 <s 3329@16,
(-3329)@16 <=s f044, f044 <s 3329@16,
(-3329)@16 <=s f045, f045 <s 3329@16,
(-3329)@16 <=s f046, f046 <s 3329@16,
(-3329)@16 <=s f047, f047 <s 3329@16,
(-3329)@16 <=s f048, f048 <s 3329@16,
(-3329)@16 <=s f049, f049 <s 3329@16,
(-3329)@16 <=s f050, f050 <s 3329@16,
(-3329)@16 <=s f051, f051 <s 3329@16,
(-3329)@16 <=s f052, f052 <s 3329@16,
(-3329)@16 <=s f053, f053 <s 3329@16,
(-3329)@16 <=s f054, f054 <s 3329@16,
(-3329)@16 <=s f055, f055 <s 3329@16,
(-3329)@16 <=s f056, f056 <s 3329@16,
(-3329)@16 <=s f057, f057 <s 3329@16,
(-3329)@16 <=s f058, f058 <s 3329@16,
(-3329)@16 <=s f059, f059 <s 3329@16,
(-3329)@16 <=s f060, f060 <s 3329@16,
(-3329)@16 <=s f061, f061 <s 3329@16,
(-3329)@16 <=s f062, f062 <s 3329@16,
(-3329)@16 <=s f063, f063 <s 3329@16,
(-3329)@16 <=s f064, f064 <s 3329@16,
(-3329)@16 <=s f065, f065 <s 3329@16,
(-3329)@16 <=s f066, f066 <s 3329@16,
(-3329)@16 <=s f067, f067 <s 3329@16,
(-3329)@16 <=s f068, f068 <s 3329@16,
(-3329)@16 <=s f069, f069 <s 3329@16,
(-3329)@16 <=s f070, f070 <s 3329@16,
(-3329)@16 <=s f071, f071 <s 3329@16,
(-3329)@16 <=s f072, f072 <s 3329@16,
(-3329)@16 <=s f073, f073 <s 3329@16,
(-3329)@16 <=s f074, f074 <s 3329@16,
(-3329)@16 <=s f075, f075 <s 3329@16,
(-3329)@16 <=s f076, f076 <s 3329@16,
(-3329)@16 <=s f077, f077 <s 3329@16,
(-3329)@16 <=s f078, f078 <s 3329@16,
(-3329)@16 <=s f079, f079 <s 3329@16,
(-3329)@16 <=s f080, f080 <s 3329@16,
(-3329)@16 <=s f081, f081 <s 3329@16,
(-3329)@16 <=s f082, f082 <s 3329@16,
(-3329)@16 <=s f083, f083 <s 3329@16,
(-3329)@16 <=s f084, f084 <s 3329@16,
(-3329)@16 <=s f085, f085 <s 3329@16,
(-3329)@16 <=s f086, f086 <s 3329@16,
(-3329)@16 <=s f087, f087 <s 3329@16,
(-3329)@16 <=s f088, f088 <s 3329@16,
(-3329)@16 <=s f089, f089 <s 3329@16,
(-3329)@16 <=s f090, f090 <s 3329@16,
(-3329)@16 <=s f091, f091 <s 3329@16,
(-3329)@16 <=s f092, f092 <s 3329@16,
(-3329)@16 <=s f093, f093 <s 3329@16,
(-3329)@16 <=s f094, f094 <s 3329@16,
(-3329)@16 <=s f095, f095 <s 3329@16,
(-3329)@16 <=s f096, f096 <s 3329@16,
(-3329)@16 <=s f097, f097 <s 3329@16,
(-3329)@16 <=s f098, f098 <s 3329@16,
(-3329)@16 <=s f099, f099 <s 3329@16,
(-3329)@16 <=s f100, f100 <s 3329@16,
(-3329)@16 <=s f101, f101 <s 3329@16,
(-3329)@16 <=s f102, f102 <s 3329@16,
(-3329)@16 <=s f103, f103 <s 3329@16,
(-3329)@16 <=s f104, f104 <s 3329@16,
(-3329)@16 <=s f105, f105 <s 3329@16,
(-3329)@16 <=s f106, f106 <s 3329@16,
(-3329)@16 <=s f107, f107 <s 3329@16,
(-3329)@16 <=s f108, f108 <s 3329@16,
(-3329)@16 <=s f109, f109 <s 3329@16,
(-3329)@16 <=s f110, f110 <s 3329@16,
(-3329)@16 <=s f111, f111 <s 3329@16,
(-3329)@16 <=s f112, f112 <s 3329@16,
(-3329)@16 <=s f113, f113 <s 3329@16,
(-3329)@16 <=s f114, f114 <s 3329@16,
(-3329)@16 <=s f115, f115 <s 3329@16,
(-3329)@16 <=s f116, f116 <s 3329@16,
(-3329)@16 <=s f117, f117 <s 3329@16,
(-3329)@16 <=s f118, f118 <s 3329@16,
(-3329)@16 <=s f119, f119 <s 3329@16,
(-3329)@16 <=s f120, f120 <s 3329@16,
(-3329)@16 <=s f121, f121 <s 3329@16,
(-3329)@16 <=s f122, f122 <s 3329@16,
(-3329)@16 <=s f123, f123 <s 3329@16,
(-3329)@16 <=s f124, f124 <s 3329@16,
(-3329)@16 <=s f125, f125 <s 3329@16,
(-3329)@16 <=s f126, f126 <s 3329@16,
(-3329)@16 <=s f127, f127 <s 3329@16,
(-3329)@16 <=s f128, f128 <s 3329@16,
(-3329)@16 <=s f129, f129 <s 3329@16,
(-3329)@16 <=s f130, f130 <s 3329@16,
(-3329)@16 <=s f131, f131 <s 3329@16,
(-3329)@16 <=s f132, f132 <s 3329@16,
(-3329)@16 <=s f133, f133 <s 3329@16,
(-3329)@16 <=s f134, f134 <s 3329@16,
(-3329)@16 <=s f135, f135 <s 3329@16,
(-3329)@16 <=s f136, f136 <s 3329@16,
(-3329)@16 <=s f137, f137 <s 3329@16,
(-3329)@16 <=s f138, f138 <s 3329@16,
(-3329)@16 <=s f139, f139 <s 3329@16,
(-3329)@16 <=s f140, f140 <s 3329@16,
(-3329)@16 <=s f141, f141 <s 3329@16,
(-3329)@16 <=s f142, f142 <s 3329@16,
(-3329)@16 <=s f143, f143 <s 3329@16,
(-3329)@16 <=s f144, f144 <s 3329@16,
(-3329)@16 <=s f145, f145 <s 3329@16,
(-3329)@16 <=s f146, f146 <s 3329@16,
(-3329)@16 <=s f147, f147 <s 3329@16,
(-3329)@16 <=s f148, f148 <s 3329@16,
(-3329)@16 <=s f149, f149 <s 3329@16,
(-3329)@16 <=s f150, f150 <s 3329@16,
(-3329)@16 <=s f151, f151 <s 3329@16,
(-3329)@16 <=s f152, f152 <s 3329@16,
(-3329)@16 <=s f153, f153 <s 3329@16,
(-3329)@16 <=s f154, f154 <s 3329@16,
(-3329)@16 <=s f155, f155 <s 3329@16,
(-3329)@16 <=s f156, f156 <s 3329@16,
(-3329)@16 <=s f157, f157 <s 3329@16,
(-3329)@16 <=s f158, f158 <s 3329@16,
(-3329)@16 <=s f159, f159 <s 3329@16,
(-3329)@16 <=s f160, f160 <s 3329@16,
(-3329)@16 <=s f161, f161 <s 3329@16,
(-3329)@16 <=s f162, f162 <s 3329@16,
(-3329)@16 <=s f163, f163 <s 3329@16,
(-3329)@16 <=s f164, f164 <s 3329@16,
(-3329)@16 <=s f165, f165 <s 3329@16,
(-3329)@16 <=s f166, f166 <s 3329@16,
(-3329)@16 <=s f167, f167 <s 3329@16,
(-3329)@16 <=s f168, f168 <s 3329@16,
(-3329)@16 <=s f169, f169 <s 3329@16,
(-3329)@16 <=s f170, f170 <s 3329@16,
(-3329)@16 <=s f171, f171 <s 3329@16,
(-3329)@16 <=s f172, f172 <s 3329@16,
(-3329)@16 <=s f173, f173 <s 3329@16,
(-3329)@16 <=s f174, f174 <s 3329@16,
(-3329)@16 <=s f175, f175 <s 3329@16,
(-3329)@16 <=s f176, f176 <s 3329@16,
(-3329)@16 <=s f177, f177 <s 3329@16,
(-3329)@16 <=s f178, f178 <s 3329@16,
(-3329)@16 <=s f179, f179 <s 3329@16,
(-3329)@16 <=s f180, f180 <s 3329@16,
(-3329)@16 <=s f181, f181 <s 3329@16,
(-3329)@16 <=s f182, f182 <s 3329@16,
(-3329)@16 <=s f183, f183 <s 3329@16,
(-3329)@16 <=s f184, f184 <s 3329@16,
(-3329)@16 <=s f185, f185 <s 3329@16,
(-3329)@16 <=s f186, f186 <s 3329@16,
(-3329)@16 <=s f187, f187 <s 3329@16,
(-3329)@16 <=s f188, f188 <s 3329@16,
(-3329)@16 <=s f189, f189 <s 3329@16,
(-3329)@16 <=s f190, f190 <s 3329@16,
(-3329)@16 <=s f191, f191 <s 3329@16,
(-3329)@16 <=s f192, f192 <s 3329@16,
(-3329)@16 <=s f193, f193 <s 3329@16,
(-3329)@16 <=s f194, f194 <s 3329@16,
(-3329)@16 <=s f195, f195 <s 3329@16,
(-3329)@16 <=s f196, f196 <s 3329@16,
(-3329)@16 <=s f197, f197 <s 3329@16,
(-3329)@16 <=s f198, f198 <s 3329@16,
(-3329)@16 <=s f199, f199 <s 3329@16,
(-3329)@16 <=s f200, f200 <s 3329@16,
(-3329)@16 <=s f201, f201 <s 3329@16,
(-3329)@16 <=s f202, f202 <s 3329@16,
(-3329)@16 <=s f203, f203 <s 3329@16,
(-3329)@16 <=s f204, f204 <s 3329@16,
(-3329)@16 <=s f205, f205 <s 3329@16,
(-3329)@16 <=s f206, f206 <s 3329@16,
(-3329)@16 <=s f207, f207 <s 3329@16,
(-3329)@16 <=s f208, f208 <s 3329@16,
(-3329)@16 <=s f209, f209 <s 3329@16,
(-3329)@16 <=s f210, f210 <s 3329@16,
(-3329)@16 <=s f211, f211 <s 3329@16,
(-3329)@16 <=s f212, f212 <s 3329@16,
(-3329)@16 <=s f213, f213 <s 3329@16,
(-3329)@16 <=s f214, f214 <s 3329@16,
(-3329)@16 <=s f215, f215 <s 3329@16,
(-3329)@16 <=s f216, f216 <s 3329@16,
(-3329)@16 <=s f217, f217 <s 3329@16,
(-3329)@16 <=s f218, f218 <s 3329@16,
(-3329)@16 <=s f219, f219 <s 3329@16,
(-3329)@16 <=s f220, f220 <s 3329@16,
(-3329)@16 <=s f221, f221 <s 3329@16,
(-3329)@16 <=s f222, f222 <s 3329@16,
(-3329)@16 <=s f223, f223 <s 3329@16,
(-3329)@16 <=s f224, f224 <s 3329@16,
(-3329)@16 <=s f225, f225 <s 3329@16,
(-3329)@16 <=s f226, f226 <s 3329@16,
(-3329)@16 <=s f227, f227 <s 3329@16,
(-3329)@16 <=s f228, f228 <s 3329@16,
(-3329)@16 <=s f229, f229 <s 3329@16,
(-3329)@16 <=s f230, f230 <s 3329@16,
(-3329)@16 <=s f231, f231 <s 3329@16,
(-3329)@16 <=s f232, f232 <s 3329@16,
(-3329)@16 <=s f233, f233 <s 3329@16,
(-3329)@16 <=s f234, f234 <s 3329@16,
(-3329)@16 <=s f235, f235 <s 3329@16,
(-3329)@16 <=s f236, f236 <s 3329@16,
(-3329)@16 <=s f237, f237 <s 3329@16,
(-3329)@16 <=s f238, f238 <s 3329@16,
(-3329)@16 <=s f239, f239 <s 3329@16,
(-3329)@16 <=s f240, f240 <s 3329@16,
(-3329)@16 <=s f241, f241 <s 3329@16,
(-3329)@16 <=s f242, f242 <s 3329@16,
(-3329)@16 <=s f243, f243 <s 3329@16,
(-3329)@16 <=s f244, f244 <s 3329@16,
(-3329)@16 <=s f245, f245 <s 3329@16,
(-3329)@16 <=s f246, f246 <s 3329@16,
(-3329)@16 <=s f247, f247 <s 3329@16,
(-3329)@16 <=s f248, f248 <s 3329@16,
(-3329)@16 <=s f249, f249 <s 3329@16,
(-3329)@16 <=s f250, f250 <s 3329@16,
(-3329)@16 <=s f251, f251 <s 3329@16,
(-3329)@16 <=s f252, f252 <s 3329@16,
(-3329)@16 <=s f253, f253 <s 3329@16,
(-3329)@16 <=s f254, f254 <s 3329@16,
(-3329)@16 <=s f255, f255 <s 3329@16
]
}

(* inits *)

nondet r0_b@uint16;
nondet r1_b@uint16;
mov L0x2001a730 f000; mov L0x2001a732 f001;
mov L0x2001a734 f002; mov L0x2001a736 f003;
mov L0x2001a738 f004; mov L0x2001a73a f005;
mov L0x2001a73c f006; mov L0x2001a73e f007;
mov L0x2001a740 f008; mov L0x2001a742 f009;
mov L0x2001a744 f010; mov L0x2001a746 f011;
mov L0x2001a748 f012; mov L0x2001a74a f013;
mov L0x2001a74c f014; mov L0x2001a74e f015;
mov L0x2001a750 f016; mov L0x2001a752 f017;
mov L0x2001a754 f018; mov L0x2001a756 f019;
mov L0x2001a758 f020; mov L0x2001a75a f021;
mov L0x2001a75c f022; mov L0x2001a75e f023;
mov L0x2001a760 f024; mov L0x2001a762 f025;
mov L0x2001a764 f026; mov L0x2001a766 f027;
mov L0x2001a768 f028; mov L0x2001a76a f029;
mov L0x2001a76c f030; mov L0x2001a76e f031;
mov L0x2001a770 f032; mov L0x2001a772 f033;
mov L0x2001a774 f034; mov L0x2001a776 f035;
mov L0x2001a778 f036; mov L0x2001a77a f037;
mov L0x2001a77c f038; mov L0x2001a77e f039;
mov L0x2001a780 f040; mov L0x2001a782 f041;
mov L0x2001a784 f042; mov L0x2001a786 f043;
mov L0x2001a788 f044; mov L0x2001a78a f045;
mov L0x2001a78c f046; mov L0x2001a78e f047;
mov L0x2001a790 f048; mov L0x2001a792 f049;
mov L0x2001a794 f050; mov L0x2001a796 f051;
mov L0x2001a798 f052; mov L0x2001a79a f053;
mov L0x2001a79c f054; mov L0x2001a79e f055;
mov L0x2001a7a0 f056; mov L0x2001a7a2 f057;
mov L0x2001a7a4 f058; mov L0x2001a7a6 f059;
mov L0x2001a7a8 f060; mov L0x2001a7aa f061;
mov L0x2001a7ac f062; mov L0x2001a7ae f063;
mov L0x2001a7b0 f064; mov L0x2001a7b2 f065;
mov L0x2001a7b4 f066; mov L0x2001a7b6 f067;
mov L0x2001a7b8 f068; mov L0x2001a7ba f069;
mov L0x2001a7bc f070; mov L0x2001a7be f071;
mov L0x2001a7c0 f072; mov L0x2001a7c2 f073;
mov L0x2001a7c4 f074; mov L0x2001a7c6 f075;
mov L0x2001a7c8 f076; mov L0x2001a7ca f077;
mov L0x2001a7cc f078; mov L0x2001a7ce f079;
mov L0x2001a7d0 f080; mov L0x2001a7d2 f081;
mov L0x2001a7d4 f082; mov L0x2001a7d6 f083;
mov L0x2001a7d8 f084; mov L0x2001a7da f085;
mov L0x2001a7dc f086; mov L0x2001a7de f087;
mov L0x2001a7e0 f088; mov L0x2001a7e2 f089;
mov L0x2001a7e4 f090; mov L0x2001a7e6 f091;
mov L0x2001a7e8 f092; mov L0x2001a7ea f093;
mov L0x2001a7ec f094; mov L0x2001a7ee f095;
mov L0x2001a7f0 f096; mov L0x2001a7f2 f097;
mov L0x2001a7f4 f098; mov L0x2001a7f6 f099;
mov L0x2001a7f8 f100; mov L0x2001a7fa f101;
mov L0x2001a7fc f102; mov L0x2001a7fe f103;
mov L0x2001a800 f104; mov L0x2001a802 f105;
mov L0x2001a804 f106; mov L0x2001a806 f107;
mov L0x2001a808 f108; mov L0x2001a80a f109;
mov L0x2001a80c f110; mov L0x2001a80e f111;
mov L0x2001a810 f112; mov L0x2001a812 f113;
mov L0x2001a814 f114; mov L0x2001a816 f115;
mov L0x2001a818 f116; mov L0x2001a81a f117;
mov L0x2001a81c f118; mov L0x2001a81e f119;
mov L0x2001a820 f120; mov L0x2001a822 f121;
mov L0x2001a824 f122; mov L0x2001a826 f123;
mov L0x2001a828 f124; mov L0x2001a82a f125;
mov L0x2001a82c f126; mov L0x2001a82e f127;
mov L0x2001a830 f128; mov L0x2001a832 f129;
mov L0x2001a834 f130; mov L0x2001a836 f131;
mov L0x2001a838 f132; mov L0x2001a83a f133;
mov L0x2001a83c f134; mov L0x2001a83e f135;
mov L0x2001a840 f136; mov L0x2001a842 f137;
mov L0x2001a844 f138; mov L0x2001a846 f139;
mov L0x2001a848 f140; mov L0x2001a84a f141;
mov L0x2001a84c f142; mov L0x2001a84e f143;
mov L0x2001a850 f144; mov L0x2001a852 f145;
mov L0x2001a854 f146; mov L0x2001a856 f147;
mov L0x2001a858 f148; mov L0x2001a85a f149;
mov L0x2001a85c f150; mov L0x2001a85e f151;
mov L0x2001a860 f152; mov L0x2001a862 f153;
mov L0x2001a864 f154; mov L0x2001a866 f155;
mov L0x2001a868 f156; mov L0x2001a86a f157;
mov L0x2001a86c f158; mov L0x2001a86e f159;
mov L0x2001a870 f160; mov L0x2001a872 f161;
mov L0x2001a874 f162; mov L0x2001a876 f163;
mov L0x2001a878 f164; mov L0x2001a87a f165;
mov L0x2001a87c f166; mov L0x2001a87e f167;
mov L0x2001a880 f168; mov L0x2001a882 f169;
mov L0x2001a884 f170; mov L0x2001a886 f171;
mov L0x2001a888 f172; mov L0x2001a88a f173;
mov L0x2001a88c f174; mov L0x2001a88e f175;
mov L0x2001a890 f176; mov L0x2001a892 f177;
mov L0x2001a894 f178; mov L0x2001a896 f179;
mov L0x2001a898 f180; mov L0x2001a89a f181;
mov L0x2001a89c f182; mov L0x2001a89e f183;
mov L0x2001a8a0 f184; mov L0x2001a8a2 f185;
mov L0x2001a8a4 f186; mov L0x2001a8a6 f187;
mov L0x2001a8a8 f188; mov L0x2001a8aa f189;
mov L0x2001a8ac f190; mov L0x2001a8ae f191;
mov L0x2001a8b0 f192; mov L0x2001a8b2 f193;
mov L0x2001a8b4 f194; mov L0x2001a8b6 f195;
mov L0x2001a8b8 f196; mov L0x2001a8ba f197;
mov L0x2001a8bc f198; mov L0x2001a8be f199;
mov L0x2001a8c0 f200; mov L0x2001a8c2 f201;
mov L0x2001a8c4 f202; mov L0x2001a8c6 f203;
mov L0x2001a8c8 f204; mov L0x2001a8ca f205;
mov L0x2001a8cc f206; mov L0x2001a8ce f207;
mov L0x2001a8d0 f208; mov L0x2001a8d2 f209;
mov L0x2001a8d4 f210; mov L0x2001a8d6 f211;
mov L0x2001a8d8 f212; mov L0x2001a8da f213;
mov L0x2001a8dc f214; mov L0x2001a8de f215;
mov L0x2001a8e0 f216; mov L0x2001a8e2 f217;
mov L0x2001a8e4 f218; mov L0x2001a8e6 f219;
mov L0x2001a8e8 f220; mov L0x2001a8ea f221;
mov L0x2001a8ec f222; mov L0x2001a8ee f223;
mov L0x2001a8f0 f224; mov L0x2001a8f2 f225;
mov L0x2001a8f4 f226; mov L0x2001a8f6 f227;
mov L0x2001a8f8 f228; mov L0x2001a8fa f229;
mov L0x2001a8fc f230; mov L0x2001a8fe f231;
mov L0x2001a900 f232; mov L0x2001a902 f233;
mov L0x2001a904 f234; mov L0x2001a906 f235;
mov L0x2001a908 f236; mov L0x2001a90a f237;
mov L0x2001a90c f238; mov L0x2001a90e f239;
mov L0x2001a910 f240; mov L0x2001a912 f241;
mov L0x2001a914 f242; mov L0x2001a916 f243;
mov L0x2001a918 f244; mov L0x2001a91a f245;
mov L0x2001a91c f246; mov L0x2001a91e f247;
mov L0x2001a920 f248; mov L0x2001a922 f249;
mov L0x2001a924 f250; mov L0x2001a926 f251;
mov L0x2001a928 f252; mov L0x2001a92a f253;
mov L0x2001a92c f254; mov L0x2001a92e f255;



(* twiddles *)

mov L0x800e4d4 2571@sint16; mov L0x800e4d6 2970@sint16;
mov L0x800e4d8 1812@sint16; mov L0x800e4da 1493@sint16;
mov L0x800e4dc 1422@sint16; mov L0x800e4de  287@sint16;
mov L0x800e4e0  202@sint16; mov L0x800e4e2 3158@sint16;
mov L0x800e4e4  573@sint16; mov L0x800e4e6 2004@sint16;
mov L0x800e4e8 1223@sint16; mov L0x800e4ea  652@sint16;
mov L0x800e4ec 2777@sint16; mov L0x800e4ee 1015@sint16;
mov L0x800e4f0  622@sint16; mov L0x800e4f2  264@sint16;
mov L0x800e4f4  383@sint16; mov L0x800e4f6 2036@sint16;
mov L0x800e4f8 1491@sint16; mov L0x800e4fa 3047@sint16;
mov L0x800e4fc 1785@sint16; mov L0x800e4fe 1577@sint16;
mov L0x800e500 2500@sint16; mov L0x800e502 1458@sint16;
mov L0x800e504  516@sint16; mov L0x800e506 3321@sint16;
mov L0x800e508 3009@sint16; mov L0x800e50a 2663@sint16;
mov L0x800e50c  182@sint16; mov L0x800e50e 1727@sint16;
mov L0x800e510 3199@sint16; mov L0x800e512 1711@sint16;
mov L0x800e514 2167@sint16; mov L0x800e516  126@sint16;
mov L0x800e518 1469@sint16; mov L0x800e51a  962@sint16;
mov L0x800e51c 2648@sint16; mov L0x800e51e 1017@sint16;
mov L0x800e520 2476@sint16; mov L0x800e522 3239@sint16;
mov L0x800e524 3058@sint16; mov L0x800e526  830@sint16;
mov L0x800e528 2127@sint16; mov L0x800e52a  732@sint16;
mov L0x800e52c  608@sint16; mov L0x800e52e  107@sint16;
mov L0x800e530 1908@sint16; mov L0x800e532 3082@sint16;
mov L0x800e534 2378@sint16; mov L0x800e536 1855@sint16;
mov L0x800e538 1787@sint16; mov L0x800e53a  411@sint16;
mov L0x800e53c 2931@sint16; mov L0x800e53e  961@sint16;
mov L0x800e540 1821@sint16; mov L0x800e542 2604@sint16;
mov L0x800e544 1468@sint16; mov L0x800e546 3124@sint16;
mov L0x800e548 1758@sint16; mov L0x800e54a  448@sint16;
mov L0x800e54c 2264@sint16; mov L0x800e54e  677@sint16;
mov L0x800e550 2054@sint16; mov L0x800e552 2226@sint16;
mov L0x800e554  430@sint16; mov L0x800e556  555@sint16;
mov L0x800e558  843@sint16; mov L0x800e55a 2078@sint16;
mov L0x800e55c  871@sint16; mov L0x800e55e 1550@sint16;
mov L0x800e560  105@sint16; mov L0x800e562  422@sint16;
mov L0x800e564  587@sint16; mov L0x800e566  177@sint16;
mov L0x800e568 3094@sint16; mov L0x800e56a 3038@sint16;
mov L0x800e56c 2869@sint16; mov L0x800e56e 1574@sint16;
mov L0x800e570 1653@sint16; mov L0x800e572 3083@sint16;
mov L0x800e574  778@sint16; mov L0x800e576 1159@sint16;
mov L0x800e578 3182@sint16; mov L0x800e57a 2552@sint16;
mov L0x800e57c 1483@sint16; mov L0x800e57e 2727@sint16;
mov L0x800e580 1119@sint16; mov L0x800e582 1739@sint16;
mov L0x800e584  644@sint16; mov L0x800e586 2457@sint16;
mov L0x800e588  349@sint16; mov L0x800e58a  418@sint16;
mov L0x800e58c  329@sint16; mov L0x800e58e 3173@sint16;
mov L0x800e590 3254@sint16; mov L0x800e592  817@sint16;
mov L0x800e594 1097@sint16; mov L0x800e596  603@sint16;
mov L0x800e598  610@sint16; mov L0x800e59a 1322@sint16;
mov L0x800e59c 2044@sint16; mov L0x800e59e 1864@sint16;
mov L0x800e5a0  384@sint16; mov L0x800e5a2 2114@sint16;
mov L0x800e5a4 3193@sint16; mov L0x800e5a6 1218@sint16;
mov L0x800e5a8 1994@sint16; mov L0x800e5aa 2455@sint16;
mov L0x800e5ac  220@sint16; mov L0x800e5ae 2142@sint16;
mov L0x800e5b0 1670@sint16; mov L0x800e5b2 2144@sint16;
mov L0x800e5b4 1799@sint16; mov L0x800e5b6 2051@sint16;
mov L0x800e5b8  794@sint16; mov L0x800e5ba 1819@sint16;
mov L0x800e5bc 2475@sint16; mov L0x800e5be 2459@sint16;
mov L0x800e5c0  478@sint16; mov L0x800e5c2 3221@sint16;
mov L0x800e5c4 3021@sint16; mov L0x800e5c6  996@sint16;
mov L0x800e5c8  991@sint16; mov L0x800e5ca  958@sint16;
mov L0x800e5cc 1869@sint16; mov L0x800e5ce 1522@sint16;
mov L0x800e5d0 1628@sint16;



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
f252*(x**252) + f253*(x**253) + f254*(x**254) + f255*(x**255)
 && true;

(* #! -> SP = 0x2001a4a8 *)
#! 0x2001a4a8 = 0x2001a4a8;
(* movw	r11, #3329	; 0xd01                         #! PC = 0x8005e84 *)
mov r11_b 3329@sint16;
mov r11_t 0@sint16;
(* movt	r11, #3327	; 0xcff                         #! PC = 0x8005e88 *)
mov r11_t 3327@sint16;
(* movw	r12, #16                                   #! PC = 0x8005e8c *)
mov r12_b 16@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a730; Value = 0x00000000; PC = 0x8005e94 *)
mov r2_b L0x2001a730;
mov r2_t L0x2001a732;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a770; Value = 0xffff0000; PC = 0x8005e98 *)
mov r3_b L0x2001a770;
mov r3_t L0x2001a772;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7b0; Value = 0xffff0000; PC = 0x8005e9c *)
mov r4_b L0x2001a7b0;
mov r4_t L0x2001a7b2;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7f0; Value = 0x0000ffff; PC = 0x8005ea0 *)
mov r5_b L0x2001a7f0;
mov r5_t L0x2001a7f2;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a830; Value = 0xffff0001; PC = 0x8005ea4 *)
mov r6_b L0x2001a830;
mov r6_t L0x2001a832;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a870; Value = 0x00010000; PC = 0x8005ea8 *)
mov r7_b L0x2001a870;
mov r7_t L0x2001a872;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8b0; Value = 0xffffffff; PC = 0x8005eac *)
mov r8_b L0x2001a8b0;
mov r8_t L0x2001a8b2;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8f0; Value = 0xffff0000; PC = 0x8005eb0 *)
mov r9_b L0x2001a8f0;
mov r9_t L0x2001a8f2;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a830; PC = 0x8006074 *)
mov L0x2001a830 r6_b;
mov L0x2001a832 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a870; PC = 0x8006078 *)
mov L0x2001a870 r7_b;
mov L0x2001a872 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8b0; PC = 0x800607c *)
mov L0x2001a8b0 r8_b;
mov L0x2001a8b2 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8f0; PC = 0x8006080 *)
mov L0x2001a8f0 r9_b;
mov L0x2001a8f2 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a770; PC = 0x8006084 *)
mov L0x2001a770 r3_b;
mov L0x2001a772 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7b0; PC = 0x8006088 *)
mov L0x2001a7b0 r4_b;
mov L0x2001a7b2 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7f0; PC = 0x800608c *)
mov L0x2001a7f0 r5_b;
mov L0x2001a7f2 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a730; PC = 0x8006090 *)
mov L0x2001a730 r2_b;
mov L0x2001a732 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000010; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a734; Value = 0x0000ffff; PC = 0x8005e94 *)
mov r2_b L0x2001a734;
mov r2_t L0x2001a736;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a774; Value = 0x00010000; PC = 0x8005e98 *)
mov r3_b L0x2001a774;
mov r3_t L0x2001a776;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7b4; Value = 0xfffe0000; PC = 0x8005e9c *)
mov r4_b L0x2001a7b4;
mov r4_t L0x2001a7b6;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7f4; Value = 0x0001ffff; PC = 0x8005ea0 *)
mov r5_b L0x2001a7f4;
mov r5_t L0x2001a7f6;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a834; Value = 0xffff0000; PC = 0x8005ea4 *)
mov r6_b L0x2001a834;
mov r6_t L0x2001a836;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a874; Value = 0x00000000; PC = 0x8005ea8 *)
mov r7_b L0x2001a874;
mov r7_t L0x2001a876;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8b4; Value = 0x00000000; PC = 0x8005eac *)
mov r8_b L0x2001a8b4;
mov r8_t L0x2001a8b6;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8f4; Value = 0x00010001; PC = 0x8005eb0 *)
mov r9_b L0x2001a8f4;
mov r9_t L0x2001a8f6;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a834; PC = 0x8006074 *)
mov L0x2001a834 r6_b;
mov L0x2001a836 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a874; PC = 0x8006078 *)
mov L0x2001a874 r7_b;
mov L0x2001a876 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8b4; PC = 0x800607c *)
mov L0x2001a8b4 r8_b;
mov L0x2001a8b6 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8f4; PC = 0x8006080 *)
mov L0x2001a8f4 r9_b;
mov L0x2001a8f6 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a774; PC = 0x8006084 *)
mov L0x2001a774 r3_b;
mov L0x2001a776 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7b4; PC = 0x8006088 *)
mov L0x2001a7b4 r4_b;
mov L0x2001a7b6 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7f4; PC = 0x800608c *)
mov L0x2001a7f4 r5_b;
mov L0x2001a7f6 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a734; PC = 0x8006090 *)
mov L0x2001a734 r2_b;
mov L0x2001a736 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000f; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a738; Value = 0xfffe0000; PC = 0x8005e94 *)
mov r2_b L0x2001a738;
mov r2_t L0x2001a73a;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a778; Value = 0xfffe0001; PC = 0x8005e98 *)
mov r3_b L0x2001a778;
mov r3_t L0x2001a77a;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7b8; Value = 0xfffe0001; PC = 0x8005e9c *)
mov r4_b L0x2001a7b8;
mov r4_t L0x2001a7ba;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7f8; Value = 0x00000001; PC = 0x8005ea0 *)
mov r5_b L0x2001a7f8;
mov r5_t L0x2001a7fa;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a838; Value = 0x00000001; PC = 0x8005ea4 *)
mov r6_b L0x2001a838;
mov r6_t L0x2001a83a;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a878; Value = 0x0000fffe; PC = 0x8005ea8 *)
mov r7_b L0x2001a878;
mov r7_t L0x2001a87a;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8b8; Value = 0xffff0000; PC = 0x8005eac *)
mov r8_b L0x2001a8b8;
mov r8_t L0x2001a8ba;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8f8; Value = 0x00010000; PC = 0x8005eb0 *)
mov r9_b L0x2001a8f8;
mov r9_t L0x2001a8fa;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a838; PC = 0x8006074 *)
mov L0x2001a838 r6_b;
mov L0x2001a83a r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a878; PC = 0x8006078 *)
mov L0x2001a878 r7_b;
mov L0x2001a87a r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8b8; PC = 0x800607c *)
mov L0x2001a8b8 r8_b;
mov L0x2001a8ba r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8f8; PC = 0x8006080 *)
mov L0x2001a8f8 r9_b;
mov L0x2001a8fa r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a778; PC = 0x8006084 *)
mov L0x2001a778 r3_b;
mov L0x2001a77a r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7b8; PC = 0x8006088 *)
mov L0x2001a7b8 r4_b;
mov L0x2001a7ba r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7f8; PC = 0x800608c *)
mov L0x2001a7f8 r5_b;
mov L0x2001a7fa r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a738; PC = 0x8006090 *)
mov L0x2001a738 r2_b;
mov L0x2001a73a r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000e; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a73c; Value = 0x00010001; PC = 0x8005e94 *)
mov r2_b L0x2001a73c;
mov r2_t L0x2001a73e;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a77c; Value = 0xfffe0000; PC = 0x8005e98 *)
mov r3_b L0x2001a77c;
mov r3_t L0x2001a77e;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7bc; Value = 0x00020000; PC = 0x8005e9c *)
mov r4_b L0x2001a7bc;
mov r4_t L0x2001a7be;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7fc; Value = 0x00000001; PC = 0x8005ea0 *)
mov r5_b L0x2001a7fc;
mov r5_t L0x2001a7fe;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a83c; Value = 0x0001fffe; PC = 0x8005ea4 *)
mov r6_b L0x2001a83c;
mov r6_t L0x2001a83e;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a87c; Value = 0x0000fffe; PC = 0x8005ea8 *)
mov r7_b L0x2001a87c;
mov r7_t L0x2001a87e;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8bc; Value = 0x0000fffe; PC = 0x8005eac *)
mov r8_b L0x2001a8bc;
mov r8_t L0x2001a8be;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8fc; Value = 0x00000001; PC = 0x8005eb0 *)
mov r9_b L0x2001a8fc;
mov r9_t L0x2001a8fe;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a83c; PC = 0x8006074 *)
mov L0x2001a83c r6_b;
mov L0x2001a83e r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a87c; PC = 0x8006078 *)
mov L0x2001a87c r7_b;
mov L0x2001a87e r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8bc; PC = 0x800607c *)
mov L0x2001a8bc r8_b;
mov L0x2001a8be r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a8fc; PC = 0x8006080 *)
mov L0x2001a8fc r9_b;
mov L0x2001a8fe r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a77c; PC = 0x8006084 *)
mov L0x2001a77c r3_b;
mov L0x2001a77e r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7bc; PC = 0x8006088 *)
mov L0x2001a7bc r4_b;
mov L0x2001a7be r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a7fc; PC = 0x800608c *)
mov L0x2001a7fc r5_b;
mov L0x2001a7fe r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a73c; PC = 0x8006090 *)
mov L0x2001a73c r2_b;
mov L0x2001a73e r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000d; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a740; Value = 0xffff0000; PC = 0x8005e94 *)
mov r2_b L0x2001a740;
mov r2_t L0x2001a742;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a780; Value = 0xffff0000; PC = 0x8005e98 *)
mov r3_b L0x2001a780;
mov r3_t L0x2001a782;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7c0; Value = 0x00010000; PC = 0x8005e9c *)
mov r4_b L0x2001a7c0;
mov r4_t L0x2001a7c2;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a800; Value = 0xffff0000; PC = 0x8005ea0 *)
mov r5_b L0x2001a800;
mov r5_t L0x2001a802;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a840; Value = 0xffff0000; PC = 0x8005ea4 *)
mov r6_b L0x2001a840;
mov r6_t L0x2001a842;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a880; Value = 0x00000001; PC = 0x8005ea8 *)
mov r7_b L0x2001a880;
mov r7_t L0x2001a882;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8c0; Value = 0x0000ffff; PC = 0x8005eac *)
mov r8_b L0x2001a8c0;
mov r8_t L0x2001a8c2;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a900; Value = 0x00020000; PC = 0x8005eb0 *)
mov r9_b L0x2001a900;
mov r9_t L0x2001a902;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a840; PC = 0x8006074 *)
mov L0x2001a840 r6_b;
mov L0x2001a842 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a880; PC = 0x8006078 *)
mov L0x2001a880 r7_b;
mov L0x2001a882 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8c0; PC = 0x800607c *)
mov L0x2001a8c0 r8_b;
mov L0x2001a8c2 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a900; PC = 0x8006080 *)
mov L0x2001a900 r9_b;
mov L0x2001a902 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a780; PC = 0x8006084 *)
mov L0x2001a780 r3_b;
mov L0x2001a782 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7c0; PC = 0x8006088 *)
mov L0x2001a7c0 r4_b;
mov L0x2001a7c2 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a800; PC = 0x800608c *)
mov L0x2001a800 r5_b;
mov L0x2001a802 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a740; PC = 0x8006090 *)
mov L0x2001a740 r2_b;
mov L0x2001a742 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000c; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a744; Value = 0x00000000; PC = 0x8005e94 *)
mov r2_b L0x2001a744;
mov r2_t L0x2001a746;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a784; Value = 0x00000000; PC = 0x8005e98 *)
mov r3_b L0x2001a784;
mov r3_t L0x2001a786;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7c4; Value = 0x00010001; PC = 0x8005e9c *)
mov r4_b L0x2001a7c4;
mov r4_t L0x2001a7c6;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a804; Value = 0x00010000; PC = 0x8005ea0 *)
mov r5_b L0x2001a804;
mov r5_t L0x2001a806;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a844; Value = 0xffff0000; PC = 0x8005ea4 *)
mov r6_b L0x2001a844;
mov r6_t L0x2001a846;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a884; Value = 0x0001ffff; PC = 0x8005ea8 *)
mov r7_b L0x2001a884;
mov r7_t L0x2001a886;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8c4; Value = 0x0000ffff; PC = 0x8005eac *)
mov r8_b L0x2001a8c4;
mov r8_t L0x2001a8c6;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a904; Value = 0x00020001; PC = 0x8005eb0 *)
mov r9_b L0x2001a904;
mov r9_t L0x2001a906;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a844; PC = 0x8006074 *)
mov L0x2001a844 r6_b;
mov L0x2001a846 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a884; PC = 0x8006078 *)
mov L0x2001a884 r7_b;
mov L0x2001a886 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8c4; PC = 0x800607c *)
mov L0x2001a8c4 r8_b;
mov L0x2001a8c6 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a904; PC = 0x8006080 *)
mov L0x2001a904 r9_b;
mov L0x2001a906 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a784; PC = 0x8006084 *)
mov L0x2001a784 r3_b;
mov L0x2001a786 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7c4; PC = 0x8006088 *)
mov L0x2001a7c4 r4_b;
mov L0x2001a7c6 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a804; PC = 0x800608c *)
mov L0x2001a804 r5_b;
mov L0x2001a806 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a744; PC = 0x8006090 *)
mov L0x2001a744 r2_b;
mov L0x2001a746 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000b; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a748; Value = 0x00000000; PC = 0x8005e94 *)
mov r2_b L0x2001a748;
mov r2_t L0x2001a74a;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a788; Value = 0x00000001; PC = 0x8005e98 *)
mov r3_b L0x2001a788;
mov r3_t L0x2001a78a;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7c8; Value = 0x00000000; PC = 0x8005e9c *)
mov r4_b L0x2001a7c8;
mov r4_t L0x2001a7ca;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a808; Value = 0x0000ffff; PC = 0x8005ea0 *)
mov r5_b L0x2001a808;
mov r5_t L0x2001a80a;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a848; Value = 0x0001ffff; PC = 0x8005ea4 *)
mov r6_b L0x2001a848;
mov r6_t L0x2001a84a;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a888; Value = 0x0000ffff; PC = 0x8005ea8 *)
mov r7_b L0x2001a888;
mov r7_t L0x2001a88a;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8c8; Value = 0x00010000; PC = 0x8005eac *)
mov r8_b L0x2001a8c8;
mov r8_t L0x2001a8ca;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a908; Value = 0x00000001; PC = 0x8005eb0 *)
mov r9_b L0x2001a908;
mov r9_t L0x2001a90a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a848; PC = 0x8006074 *)
mov L0x2001a848 r6_b;
mov L0x2001a84a r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a888; PC = 0x8006078 *)
mov L0x2001a888 r7_b;
mov L0x2001a88a r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8c8; PC = 0x800607c *)
mov L0x2001a8c8 r8_b;
mov L0x2001a8ca r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a908; PC = 0x8006080 *)
mov L0x2001a908 r9_b;
mov L0x2001a90a r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a788; PC = 0x8006084 *)
mov L0x2001a788 r3_b;
mov L0x2001a78a r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7c8; PC = 0x8006088 *)
mov L0x2001a7c8 r4_b;
mov L0x2001a7ca r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a808; PC = 0x800608c *)
mov L0x2001a808 r5_b;
mov L0x2001a80a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a748; PC = 0x8006090 *)
mov L0x2001a748 r2_b;
mov L0x2001a74a r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000a; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a74c; Value = 0x00000002; PC = 0x8005e94 *)
mov r2_b L0x2001a74c;
mov r2_t L0x2001a74e;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a78c; Value = 0x00010001; PC = 0x8005e98 *)
mov r3_b L0x2001a78c;
mov r3_t L0x2001a78e;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7cc; Value = 0xffffffff; PC = 0x8005e9c *)
mov r4_b L0x2001a7cc;
mov r4_t L0x2001a7ce;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a80c; Value = 0x00010000; PC = 0x8005ea0 *)
mov r5_b L0x2001a80c;
mov r5_t L0x2001a80e;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a84c; Value = 0x0001fffe; PC = 0x8005ea4 *)
mov r6_b L0x2001a84c;
mov r6_t L0x2001a84e;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a88c; Value = 0xfffefffe; PC = 0x8005ea8 *)
mov r7_b L0x2001a88c;
mov r7_t L0x2001a88e;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8cc; Value = 0x00000000; PC = 0x8005eac *)
mov r8_b L0x2001a8cc;
mov r8_t L0x2001a8ce;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a90c; Value = 0xffff0002; PC = 0x8005eb0 *)
mov r9_b L0x2001a90c;
mov r9_t L0x2001a90e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a84c; PC = 0x8006074 *)
mov L0x2001a84c r6_b;
mov L0x2001a84e r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a88c; PC = 0x8006078 *)
mov L0x2001a88c r7_b;
mov L0x2001a88e r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8cc; PC = 0x800607c *)
mov L0x2001a8cc r8_b;
mov L0x2001a8ce r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a90c; PC = 0x8006080 *)
mov L0x2001a90c r9_b;
mov L0x2001a90e r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a78c; PC = 0x8006084 *)
mov L0x2001a78c r3_b;
mov L0x2001a78e r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7cc; PC = 0x8006088 *)
mov L0x2001a7cc r4_b;
mov L0x2001a7ce r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a80c; PC = 0x800608c *)
mov L0x2001a80c r5_b;
mov L0x2001a80e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a74c; PC = 0x8006090 *)
mov L0x2001a74c r2_b;
mov L0x2001a74e r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000009; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a750; Value = 0xffffffff; PC = 0x8005e94 *)
mov r2_b L0x2001a750;
mov r2_t L0x2001a752;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a790; Value = 0x0001ffff; PC = 0x8005e98 *)
mov r3_b L0x2001a790;
mov r3_t L0x2001a792;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7d0; Value = 0x00010000; PC = 0x8005e9c *)
mov r4_b L0x2001a7d0;
mov r4_t L0x2001a7d2;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a810; Value = 0x00000000; PC = 0x8005ea0 *)
mov r5_b L0x2001a810;
mov r5_t L0x2001a812;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a850; Value = 0xffffffff; PC = 0x8005ea4 *)
mov r6_b L0x2001a850;
mov r6_t L0x2001a852;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a890; Value = 0x00000000; PC = 0x8005ea8 *)
mov r7_b L0x2001a890;
mov r7_t L0x2001a892;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8d0; Value = 0xffffffff; PC = 0x8005eac *)
mov r8_b L0x2001a8d0;
mov r8_t L0x2001a8d2;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a910; Value = 0x00010001; PC = 0x8005eb0 *)
mov r9_b L0x2001a910;
mov r9_t L0x2001a912;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a850; PC = 0x8006074 *)
mov L0x2001a850 r6_b;
mov L0x2001a852 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a890; PC = 0x8006078 *)
mov L0x2001a890 r7_b;
mov L0x2001a892 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8d0; PC = 0x800607c *)
mov L0x2001a8d0 r8_b;
mov L0x2001a8d2 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a910; PC = 0x8006080 *)
mov L0x2001a910 r9_b;
mov L0x2001a912 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a790; PC = 0x8006084 *)
mov L0x2001a790 r3_b;
mov L0x2001a792 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7d0; PC = 0x8006088 *)
mov L0x2001a7d0 r4_b;
mov L0x2001a7d2 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a810; PC = 0x800608c *)
mov L0x2001a810 r5_b;
mov L0x2001a812 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a750; PC = 0x8006090 *)
mov L0x2001a750 r2_b;
mov L0x2001a752 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000008; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a754; Value = 0x00010001; PC = 0x8005e94 *)
mov r2_b L0x2001a754;
mov r2_t L0x2001a756;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a794; Value = 0x00010001; PC = 0x8005e98 *)
mov r3_b L0x2001a794;
mov r3_t L0x2001a796;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7d4; Value = 0xfffe0000; PC = 0x8005e9c *)
mov r4_b L0x2001a7d4;
mov r4_t L0x2001a7d6;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a814; Value = 0xfffeffff; PC = 0x8005ea0 *)
mov r5_b L0x2001a814;
mov r5_t L0x2001a816;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a854; Value = 0x00010001; PC = 0x8005ea4 *)
mov r6_b L0x2001a854;
mov r6_t L0x2001a856;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a894; Value = 0x0000fffe; PC = 0x8005ea8 *)
mov r7_b L0x2001a894;
mov r7_t L0x2001a896;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8d4; Value = 0x0001ffff; PC = 0x8005eac *)
mov r8_b L0x2001a8d4;
mov r8_t L0x2001a8d6;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a914; Value = 0x0000ffff; PC = 0x8005eb0 *)
mov r9_b L0x2001a914;
mov r9_t L0x2001a916;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a854; PC = 0x8006074 *)
mov L0x2001a854 r6_b;
mov L0x2001a856 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a894; PC = 0x8006078 *)
mov L0x2001a894 r7_b;
mov L0x2001a896 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8d4; PC = 0x800607c *)
mov L0x2001a8d4 r8_b;
mov L0x2001a8d6 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a914; PC = 0x8006080 *)
mov L0x2001a914 r9_b;
mov L0x2001a916 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a794; PC = 0x8006084 *)
mov L0x2001a794 r3_b;
mov L0x2001a796 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7d4; PC = 0x8006088 *)
mov L0x2001a7d4 r4_b;
mov L0x2001a7d6 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a814; PC = 0x800608c *)
mov L0x2001a814 r5_b;
mov L0x2001a816 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a754; PC = 0x8006090 *)
mov L0x2001a754 r2_b;
mov L0x2001a756 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000007; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a758; Value = 0x00010001; PC = 0x8005e94 *)
mov r2_b L0x2001a758;
mov r2_t L0x2001a75a;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a798; Value = 0xffff0000; PC = 0x8005e98 *)
mov r3_b L0x2001a798;
mov r3_t L0x2001a79a;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7d8; Value = 0x00000000; PC = 0x8005e9c *)
mov r4_b L0x2001a7d8;
mov r4_t L0x2001a7da;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a818; Value = 0x00000000; PC = 0x8005ea0 *)
mov r5_b L0x2001a818;
mov r5_t L0x2001a81a;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a858; Value = 0xfffeffff; PC = 0x8005ea4 *)
mov r6_b L0x2001a858;
mov r6_t L0x2001a85a;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a898; Value = 0x00000000; PC = 0x8005ea8 *)
mov r7_b L0x2001a898;
mov r7_t L0x2001a89a;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8d8; Value = 0x00010001; PC = 0x8005eac *)
mov r8_b L0x2001a8d8;
mov r8_t L0x2001a8da;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a918; Value = 0xffff0001; PC = 0x8005eb0 *)
mov r9_b L0x2001a918;
mov r9_t L0x2001a91a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a858; PC = 0x8006074 *)
mov L0x2001a858 r6_b;
mov L0x2001a85a r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a898; PC = 0x8006078 *)
mov L0x2001a898 r7_b;
mov L0x2001a89a r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8d8; PC = 0x800607c *)
mov L0x2001a8d8 r8_b;
mov L0x2001a8da r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a918; PC = 0x8006080 *)
mov L0x2001a918 r9_b;
mov L0x2001a91a r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a798; PC = 0x8006084 *)
mov L0x2001a798 r3_b;
mov L0x2001a79a r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7d8; PC = 0x8006088 *)
mov L0x2001a7d8 r4_b;
mov L0x2001a7da r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a818; PC = 0x800608c *)
mov L0x2001a818 r5_b;
mov L0x2001a81a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a758; PC = 0x8006090 *)
mov L0x2001a758 r2_b;
mov L0x2001a75a r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000006; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a75c; Value = 0xffffffff; PC = 0x8005e94 *)
mov r2_b L0x2001a75c;
mov r2_t L0x2001a75e;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a79c; Value = 0x0001ffff; PC = 0x8005e98 *)
mov r3_b L0x2001a79c;
mov r3_t L0x2001a79e;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7dc; Value = 0x00010001; PC = 0x8005e9c *)
mov r4_b L0x2001a7dc;
mov r4_t L0x2001a7de;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a81c; Value = 0x00000001; PC = 0x8005ea0 *)
mov r5_b L0x2001a81c;
mov r5_t L0x2001a81e;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a85c; Value = 0x00000000; PC = 0x8005ea4 *)
mov r6_b L0x2001a85c;
mov r6_t L0x2001a85e;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a89c; Value = 0xfffeffff; PC = 0x8005ea8 *)
mov r7_b L0x2001a89c;
mov r7_t L0x2001a89e;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8dc; Value = 0x00000000; PC = 0x8005eac *)
mov r8_b L0x2001a8dc;
mov r8_t L0x2001a8de;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a91c; Value = 0x0000ffff; PC = 0x8005eb0 *)
mov r9_b L0x2001a91c;
mov r9_t L0x2001a91e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a85c; PC = 0x8006074 *)
mov L0x2001a85c r6_b;
mov L0x2001a85e r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a89c; PC = 0x8006078 *)
mov L0x2001a89c r7_b;
mov L0x2001a89e r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8dc; PC = 0x800607c *)
mov L0x2001a8dc r8_b;
mov L0x2001a8de r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a91c; PC = 0x8006080 *)
mov L0x2001a91c r9_b;
mov L0x2001a91e r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a79c; PC = 0x8006084 *)
mov L0x2001a79c r3_b;
mov L0x2001a79e r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7dc; PC = 0x8006088 *)
mov L0x2001a7dc r4_b;
mov L0x2001a7de r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a81c; PC = 0x800608c *)
mov L0x2001a81c r5_b;
mov L0x2001a81e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a75c; PC = 0x8006090 *)
mov L0x2001a75c r2_b;
mov L0x2001a75e r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000005; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a760; Value = 0x0000ffff; PC = 0x8005e94 *)
mov r2_b L0x2001a760;
mov r2_t L0x2001a762;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7a0; Value = 0x00010000; PC = 0x8005e98 *)
mov r3_b L0x2001a7a0;
mov r3_t L0x2001a7a2;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7e0; Value = 0x0000ffff; PC = 0x8005e9c *)
mov r4_b L0x2001a7e0;
mov r4_t L0x2001a7e2;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a820; Value = 0x00010001; PC = 0x8005ea0 *)
mov r5_b L0x2001a820;
mov r5_t L0x2001a822;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a860; Value = 0xffff0000; PC = 0x8005ea4 *)
mov r6_b L0x2001a860;
mov r6_t L0x2001a862;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8a0; Value = 0x00010000; PC = 0x8005ea8 *)
mov r7_b L0x2001a8a0;
mov r7_t L0x2001a8a2;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8e0; Value = 0x00000001; PC = 0x8005eac *)
mov r8_b L0x2001a8e0;
mov r8_t L0x2001a8e2;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a920; Value = 0x00010001; PC = 0x8005eb0 *)
mov r9_b L0x2001a920;
mov r9_t L0x2001a922;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a860; PC = 0x8006074 *)
mov L0x2001a860 r6_b;
mov L0x2001a862 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8a0; PC = 0x8006078 *)
mov L0x2001a8a0 r7_b;
mov L0x2001a8a2 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8e0; PC = 0x800607c *)
mov L0x2001a8e0 r8_b;
mov L0x2001a8e2 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a920; PC = 0x8006080 *)
mov L0x2001a920 r9_b;
mov L0x2001a922 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7a0; PC = 0x8006084 *)
mov L0x2001a7a0 r3_b;
mov L0x2001a7a2 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7e0; PC = 0x8006088 *)
mov L0x2001a7e0 r4_b;
mov L0x2001a7e2 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a820; PC = 0x800608c *)
mov L0x2001a820 r5_b;
mov L0x2001a822 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a760; PC = 0x8006090 *)
mov L0x2001a760 r2_b;
mov L0x2001a762 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000004; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a764; Value = 0x0000ffff; PC = 0x8005e94 *)
mov r2_b L0x2001a764;
mov r2_t L0x2001a766;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7a4; Value = 0x00000002; PC = 0x8005e98 *)
mov r3_b L0x2001a7a4;
mov r3_t L0x2001a7a6;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7e4; Value = 0x0000ffff; PC = 0x8005e9c *)
mov r4_b L0x2001a7e4;
mov r4_t L0x2001a7e6;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a824; Value = 0x00010001; PC = 0x8005ea0 *)
mov r5_b L0x2001a824;
mov r5_t L0x2001a826;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a864; Value = 0x0000ffff; PC = 0x8005ea4 *)
mov r6_b L0x2001a864;
mov r6_t L0x2001a866;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8a4; Value = 0xffff0001; PC = 0x8005ea8 *)
mov r7_b L0x2001a8a4;
mov r7_t L0x2001a8a6;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8e4; Value = 0xffff0001; PC = 0x8005eac *)
mov r8_b L0x2001a8e4;
mov r8_t L0x2001a8e6;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a924; Value = 0xffff0001; PC = 0x8005eb0 *)
mov r9_b L0x2001a924;
mov r9_t L0x2001a926;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a864; PC = 0x8006074 *)
mov L0x2001a864 r6_b;
mov L0x2001a866 r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8a4; PC = 0x8006078 *)
mov L0x2001a8a4 r7_b;
mov L0x2001a8a6 r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8e4; PC = 0x800607c *)
mov L0x2001a8e4 r8_b;
mov L0x2001a8e6 r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a924; PC = 0x8006080 *)
mov L0x2001a924 r9_b;
mov L0x2001a926 r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7a4; PC = 0x8006084 *)
mov L0x2001a7a4 r3_b;
mov L0x2001a7a6 r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7e4; PC = 0x8006088 *)
mov L0x2001a7e4 r4_b;
mov L0x2001a7e6 r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a824; PC = 0x800608c *)
mov L0x2001a824 r5_b;
mov L0x2001a826 r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a764; PC = 0x8006090 *)
mov L0x2001a764 r2_b;
mov L0x2001a766 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000003; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a768; Value = 0xffff0001; PC = 0x8005e94 *)
mov r2_b L0x2001a768;
mov r2_t L0x2001a76a;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7a8; Value = 0xffffffff; PC = 0x8005e98 *)
mov r3_b L0x2001a7a8;
mov r3_t L0x2001a7aa;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7e8; Value = 0x00010002; PC = 0x8005e9c *)
mov r4_b L0x2001a7e8;
mov r4_t L0x2001a7ea;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a828; Value = 0x00020000; PC = 0x8005ea0 *)
mov r5_b L0x2001a828;
mov r5_t L0x2001a82a;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a868; Value = 0x00010001; PC = 0x8005ea4 *)
mov r6_b L0x2001a868;
mov r6_t L0x2001a86a;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8a8; Value = 0x00010000; PC = 0x8005ea8 *)
mov r7_b L0x2001a8a8;
mov r7_t L0x2001a8aa;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8e8; Value = 0x0000ffff; PC = 0x8005eac *)
mov r8_b L0x2001a8e8;
mov r8_t L0x2001a8ea;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a928; Value = 0x00010000; PC = 0x8005eb0 *)
mov r9_b L0x2001a928;
mov r9_t L0x2001a92a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a868; PC = 0x8006074 *)
mov L0x2001a868 r6_b;
mov L0x2001a86a r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8a8; PC = 0x8006078 *)
mov L0x2001a8a8 r7_b;
mov L0x2001a8aa r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8e8; PC = 0x800607c *)
mov L0x2001a8e8 r8_b;
mov L0x2001a8ea r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a928; PC = 0x8006080 *)
mov L0x2001a928 r9_b;
mov L0x2001a92a r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7a8; PC = 0x8006084 *)
mov L0x2001a7a8 r3_b;
mov L0x2001a7aa r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7e8; PC = 0x8006088 *)
mov L0x2001a7e8 r4_b;
mov L0x2001a7ea r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a828; PC = 0x800608c *)
mov L0x2001a828 r5_b;
mov L0x2001a82a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a768; PC = 0x8006090 *)
mov L0x2001a768 r2_b;
mov L0x2001a76a r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000002; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x8005e90 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a76c; Value = 0x00010001; PC = 0x8005e94 *)
mov r2_b L0x2001a76c;
mov r2_t L0x2001a76e;
(* ldr.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7ac; Value = 0x00010000; PC = 0x8005e98 *)
mov r3_b L0x2001a7ac;
mov r3_t L0x2001a7ae;
(* ldr.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7ec; Value = 0xffff0001; PC = 0x8005e9c *)
mov r4_b L0x2001a7ec;
mov r4_t L0x2001a7ee;
(* ldr.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a82c; Value = 0x0000fffe; PC = 0x8005ea0 *)
mov r5_b L0x2001a82c;
mov r5_t L0x2001a82e;
(* ldr.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a86c; Value = 0xffff0000; PC = 0x8005ea4 *)
mov r6_b L0x2001a86c;
mov r6_t L0x2001a86e;
(* ldr.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8ac; Value = 0xfffe0000; PC = 0x8005ea8 *)
mov r7_b L0x2001a8ac;
mov r7_t L0x2001a8ae;
(* ldr.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8ec; Value = 0x0001ffff; PC = 0x8005eac *)
mov r8_b L0x2001a8ec;
mov r8_t L0x2001a8ee;
(* ldr.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a92c; Value = 0x0000fffe; PC = 0x8005eb0 *)
mov r9_b L0x2001a92c;
mov r9_t L0x2001a92e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4d4; Value = 0x0b9a0a0b; PC = 0x8005eb4 *)
mov r10_b L0x800e4d4;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x8005eb8 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x8005ebc *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ec0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ec4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x8005ec8 *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x8005ecc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ed0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x8005ed4 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005ed8 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8005edc *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8005ee0 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005ee4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005ee8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8005eec *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8005ef0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ef4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x8005ef8 *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005efc *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8005f00 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8005f04 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f08 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f0c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005f10 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005f14 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f18 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8005f1c *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8005f20 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8005f24 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x8005f28 *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f2c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f30 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005f34 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005f38 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f3c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8005f40 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8005f44 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4d6; Value = 0x07140b9a; PC = 0x8005f48 *)
mov r10_b L0x800e4d6;
mov r10_t L0x800e4d8;
(* smulbb	r12, r4, r10                             #! PC = 0x8005f4c *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8005f50 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f54 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f58 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8005f5c *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8005f60 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f64 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x8005f68 *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8005f6c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8005f70 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8005f74 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f78 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005f7c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8005f80 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8005f84 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005f88 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x8005f8c *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8005f90 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x8005f94 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x8005f98 *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005f9c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fa0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8005fa4 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8005fa8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x8005fb0 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8005fb4 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8005fb8 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8005fbc *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fc0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fc4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8005fc8 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8005fcc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005fd0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x8005fd4 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x8005fd8 *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4da; Value = 0x058e05d5; PC = 0x8005fdc *)
mov r10_b L0x800e4da;
mov r10_t L0x800e4dc;
(* smulbb	r12, r3, r10                             #! PC = 0x8005fe0 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8005fe4 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8005fe8 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8005fec *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8005ff0 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8005ff4 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8005ff8 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8005ffc *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006000 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006004 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006008 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800600c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006010 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006014 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006018 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800601c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006020 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006024 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4de; Value = 0x00ca011f; PC = 0x8006028 *)
mov r10_b L0x800e4de;
mov r10_t L0x800e4e0;
(* smulbb	r12, r7, r10                             #! PC = 0x800602c *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006030 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006034 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006038 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x800603c *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006040 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006044 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006048 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x800604c *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006050 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006054 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006058 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800605c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006060 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006064 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006068 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x800606c *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006070 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #256]	; 0x100                    #! EA = L0x2001a86c; PC = 0x8006074 *)
mov L0x2001a86c r6_b;
mov L0x2001a86e r6_t;
(* str.w	r7, [r0, #320]	; 0x140                    #! EA = L0x2001a8ac; PC = 0x8006078 *)
mov L0x2001a8ac r7_b;
mov L0x2001a8ae r7_t;
(* str.w	r8, [r0, #384]	; 0x180                    #! EA = L0x2001a8ec; PC = 0x800607c *)
mov L0x2001a8ec r8_b;
mov L0x2001a8ee r8_t;
(* str.w	r9, [r0, #448]	; 0x1c0                    #! EA = L0x2001a92c; PC = 0x8006080 *)
mov L0x2001a92c r9_b;
mov L0x2001a92e r9_t;
(* str.w	r3, [r0, #64]	; 0x40                      #! EA = L0x2001a7ac; PC = 0x8006084 *)
mov L0x2001a7ac r3_b;
mov L0x2001a7ae r3_t;
(* str.w	r4, [r0, #128]	; 0x80                     #! EA = L0x2001a7ec; PC = 0x8006088 *)
mov L0x2001a7ec r4_b;
mov L0x2001a7ee r4_t;
(* str.w	r5, [r0, #192]	; 0xc0                     #! EA = L0x2001a82c; PC = 0x800608c *)
mov L0x2001a82c r5_b;
mov L0x2001a82e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a76c; PC = 0x8006090 *)
mov L0x2001a76c r2_b;
mov L0x2001a76e r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000001; PC = 0x8006094 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x8006098 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x8005e90 <ntt_fast+16>                  #! PC = 0x800609c *)
#bne.w	0x8005e90 <ntt_fast+16>                  #! 0x800609c = 0x800609c;


(* END OF LAYERS 7+6+5 *)

(* LAYER 5 *)

cut
and [
eqmod 
(inp_poly * inp_poly)
(
L0x2001a730*(x**0) + L0x2001a732*(x**1) + 
L0x2001a734*(x**2) + L0x2001a736*(x**3) + 
L0x2001a738*(x**4) + L0x2001a73a*(x**5) + 
L0x2001a73c*(x**6) + L0x2001a73e*(x**7) + 
L0x2001a740*(x**8) + L0x2001a742*(x**9) + 
L0x2001a744*(x**10) + L0x2001a746*(x**11) + 
L0x2001a748*(x**12) + L0x2001a74a*(x**13) + 
L0x2001a74c*(x**14) + L0x2001a74e*(x**15) + 
L0x2001a750*(x**16) + L0x2001a752*(x**17) + 
L0x2001a754*(x**18) + L0x2001a756*(x**19) + 
L0x2001a758*(x**20) + L0x2001a75a*(x**21) + 
L0x2001a75c*(x**22) + L0x2001a75e*(x**23) + 
L0x2001a760*(x**24) + L0x2001a762*(x**25) + 
L0x2001a764*(x**26) + L0x2001a766*(x**27) + 
L0x2001a768*(x**28) + L0x2001a76a*(x**29) + 
L0x2001a76c*(x**30) + L0x2001a76e*(x**31)
)
[3329, x**32 - 2642],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a770*(x**0) + L0x2001a772*(x**1) + 
L0x2001a774*(x**2) + L0x2001a776*(x**3) + 
L0x2001a778*(x**4) + L0x2001a77a*(x**5) + 
L0x2001a77c*(x**6) + L0x2001a77e*(x**7) + 
L0x2001a780*(x**8) + L0x2001a782*(x**9) + 
L0x2001a784*(x**10) + L0x2001a786*(x**11) + 
L0x2001a788*(x**12) + L0x2001a78a*(x**13) + 
L0x2001a78c*(x**14) + L0x2001a78e*(x**15) + 
L0x2001a790*(x**16) + L0x2001a792*(x**17) + 
L0x2001a794*(x**18) + L0x2001a796*(x**19) + 
L0x2001a798*(x**20) + L0x2001a79a*(x**21) + 
L0x2001a79c*(x**22) + L0x2001a79e*(x**23) + 
L0x2001a7a0*(x**24) + L0x2001a7a2*(x**25) + 
L0x2001a7a4*(x**26) + L0x2001a7a6*(x**27) + 
L0x2001a7a8*(x**28) + L0x2001a7aa*(x**29) + 
L0x2001a7ac*(x**30) + L0x2001a7ae*(x**31)
)
[3329, x**32 - 687],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7b0*(x**0) + L0x2001a7b2*(x**1) + 
L0x2001a7b4*(x**2) + L0x2001a7b6*(x**3) + 
L0x2001a7b8*(x**4) + L0x2001a7ba*(x**5) + 
L0x2001a7bc*(x**6) + L0x2001a7be*(x**7) + 
L0x2001a7c0*(x**8) + L0x2001a7c2*(x**9) + 
L0x2001a7c4*(x**10) + L0x2001a7c6*(x**11) + 
L0x2001a7c8*(x**12) + L0x2001a7ca*(x**13) + 
L0x2001a7cc*(x**14) + L0x2001a7ce*(x**15) + 
L0x2001a7d0*(x**16) + L0x2001a7d2*(x**17) + 
L0x2001a7d4*(x**18) + L0x2001a7d6*(x**19) + 
L0x2001a7d8*(x**20) + L0x2001a7da*(x**21) + 
L0x2001a7dc*(x**22) + L0x2001a7de*(x**23) + 
L0x2001a7e0*(x**24) + L0x2001a7e2*(x**25) + 
L0x2001a7e4*(x**26) + L0x2001a7e6*(x**27) + 
L0x2001a7e8*(x**28) + L0x2001a7ea*(x**29) + 
L0x2001a7ec*(x**30) + L0x2001a7ee*(x**31)
)
[3329, x**32 - 630],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7f0*(x**0) + L0x2001a7f2*(x**1) + 
L0x2001a7f4*(x**2) + L0x2001a7f6*(x**3) + 
L0x2001a7f8*(x**4) + L0x2001a7fa*(x**5) + 
L0x2001a7fc*(x**6) + L0x2001a7fe*(x**7) + 
L0x2001a800*(x**8) + L0x2001a802*(x**9) + 
L0x2001a804*(x**10) + L0x2001a806*(x**11) + 
L0x2001a808*(x**12) + L0x2001a80a*(x**13) + 
L0x2001a80c*(x**14) + L0x2001a80e*(x**15) + 
L0x2001a810*(x**16) + L0x2001a812*(x**17) + 
L0x2001a814*(x**18) + L0x2001a816*(x**19) + 
L0x2001a818*(x**20) + L0x2001a81a*(x**21) + 
L0x2001a81c*(x**22) + L0x2001a81e*(x**23) + 
L0x2001a820*(x**24) + L0x2001a822*(x**25) + 
L0x2001a824*(x**26) + L0x2001a826*(x**27) + 
L0x2001a828*(x**28) + L0x2001a82a*(x**29) + 
L0x2001a82c*(x**30) + L0x2001a82e*(x**31)
)
[3329, x**32 - 2699],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a830*(x**0) + L0x2001a832*(x**1) + 
L0x2001a834*(x**2) + L0x2001a836*(x**3) + 
L0x2001a838*(x**4) + L0x2001a83a*(x**5) + 
L0x2001a83c*(x**6) + L0x2001a83e*(x**7) + 
L0x2001a840*(x**8) + L0x2001a842*(x**9) + 
L0x2001a844*(x**10) + L0x2001a846*(x**11) + 
L0x2001a848*(x**12) + L0x2001a84a*(x**13) + 
L0x2001a84c*(x**14) + L0x2001a84e*(x**15) + 
L0x2001a850*(x**16) + L0x2001a852*(x**17) + 
L0x2001a854*(x**18) + L0x2001a856*(x**19) + 
L0x2001a858*(x**20) + L0x2001a85a*(x**21) + 
L0x2001a85c*(x**22) + L0x2001a85e*(x**23) + 
L0x2001a860*(x**24) + L0x2001a862*(x**25) + 
L0x2001a864*(x**26) + L0x2001a866*(x**27) + 
L0x2001a868*(x**28) + L0x2001a86a*(x**29) + 
L0x2001a86c*(x**30) + L0x2001a86e*(x**31)
)
[3329, x**32 - 1897],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a870*(x**0) + L0x2001a872*(x**1) + 
L0x2001a874*(x**2) + L0x2001a876*(x**3) + 
L0x2001a878*(x**4) + L0x2001a87a*(x**5) + 
L0x2001a87c*(x**6) + L0x2001a87e*(x**7) + 
L0x2001a880*(x**8) + L0x2001a882*(x**9) + 
L0x2001a884*(x**10) + L0x2001a886*(x**11) + 
L0x2001a888*(x**12) + L0x2001a88a*(x**13) + 
L0x2001a88c*(x**14) + L0x2001a88e*(x**15) + 
L0x2001a890*(x**16) + L0x2001a892*(x**17) + 
L0x2001a894*(x**18) + L0x2001a896*(x**19) + 
L0x2001a898*(x**20) + L0x2001a89a*(x**21) + 
L0x2001a89c*(x**22) + L0x2001a89e*(x**23) + 
L0x2001a8a0*(x**24) + L0x2001a8a2*(x**25) + 
L0x2001a8a4*(x**26) + L0x2001a8a6*(x**27) + 
L0x2001a8a8*(x**28) + L0x2001a8aa*(x**29) + 
L0x2001a8ac*(x**30) + L0x2001a8ae*(x**31)
)
[3329, x**32 - 1432],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8b0*(x**0) + L0x2001a8b2*(x**1) + 
L0x2001a8b4*(x**2) + L0x2001a8b6*(x**3) + 
L0x2001a8b8*(x**4) + L0x2001a8ba*(x**5) + 
L0x2001a8bc*(x**6) + L0x2001a8be*(x**7) + 
L0x2001a8c0*(x**8) + L0x2001a8c2*(x**9) + 
L0x2001a8c4*(x**10) + L0x2001a8c6*(x**11) + 
L0x2001a8c8*(x**12) + L0x2001a8ca*(x**13) + 
L0x2001a8cc*(x**14) + L0x2001a8ce*(x**15) + 
L0x2001a8d0*(x**16) + L0x2001a8d2*(x**17) + 
L0x2001a8d4*(x**18) + L0x2001a8d6*(x**19) + 
L0x2001a8d8*(x**20) + L0x2001a8da*(x**21) + 
L0x2001a8dc*(x**22) + L0x2001a8de*(x**23) + 
L0x2001a8e0*(x**24) + L0x2001a8e2*(x**25) + 
L0x2001a8e4*(x**26) + L0x2001a8e6*(x**27) + 
L0x2001a8e8*(x**28) + L0x2001a8ea*(x**29) + 
L0x2001a8ec*(x**30) + L0x2001a8ee*(x**31)
)
[3329, x**32 - 848],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8f0*(x**0) + L0x2001a8f2*(x**1) + 
L0x2001a8f4*(x**2) + L0x2001a8f6*(x**3) + 
L0x2001a8f8*(x**4) + L0x2001a8fa*(x**5) + 
L0x2001a8fc*(x**6) + L0x2001a8fe*(x**7) + 
L0x2001a900*(x**8) + L0x2001a902*(x**9) + 
L0x2001a904*(x**10) + L0x2001a906*(x**11) + 
L0x2001a908*(x**12) + L0x2001a90a*(x**13) + 
L0x2001a90c*(x**14) + L0x2001a90e*(x**15) + 
L0x2001a910*(x**16) + L0x2001a912*(x**17) + 
L0x2001a914*(x**18) + L0x2001a916*(x**19) + 
L0x2001a918*(x**20) + L0x2001a91a*(x**21) + 
L0x2001a91c*(x**22) + L0x2001a91e*(x**23) + 
L0x2001a920*(x**24) + L0x2001a922*(x**25) + 
L0x2001a924*(x**26) + L0x2001a926*(x**27) + 
L0x2001a928*(x**28) + L0x2001a92a*(x**29) + 
L0x2001a92c*(x**30) + L0x2001a92e*(x**31)
)
[3329, x**32 - 2481]
]
&&
and [
   (-3)@16 * 3329@16 <s L0x2001a730, L0x2001a730 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a732, L0x2001a732 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a734, L0x2001a734 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a736, L0x2001a736 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a738, L0x2001a738 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a73a, L0x2001a73a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a73c, L0x2001a73c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a73e, L0x2001a73e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a740, L0x2001a740 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a742, L0x2001a742 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a744, L0x2001a744 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a746, L0x2001a746 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a748, L0x2001a748 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a74a, L0x2001a74a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a74c, L0x2001a74c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a74e, L0x2001a74e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a750, L0x2001a750 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a752, L0x2001a752 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a754, L0x2001a754 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a756, L0x2001a756 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a758, L0x2001a758 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a75a, L0x2001a75a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a75c, L0x2001a75c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a75e, L0x2001a75e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a760, L0x2001a760 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a762, L0x2001a762 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a764, L0x2001a764 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a766, L0x2001a766 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a768, L0x2001a768 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a76a, L0x2001a76a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a76c, L0x2001a76c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a76e, L0x2001a76e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a770, L0x2001a770 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a772, L0x2001a772 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a774, L0x2001a774 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a776, L0x2001a776 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a778, L0x2001a778 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a77a, L0x2001a77a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a77c, L0x2001a77c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a77e, L0x2001a77e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a780, L0x2001a780 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a782, L0x2001a782 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a784, L0x2001a784 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a786, L0x2001a786 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a788, L0x2001a788 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a78a, L0x2001a78a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a78c, L0x2001a78c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a78e, L0x2001a78e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a790, L0x2001a790 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a792, L0x2001a792 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a794, L0x2001a794 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a796, L0x2001a796 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a798, L0x2001a798 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a79a, L0x2001a79a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a79c, L0x2001a79c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a79e, L0x2001a79e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7a0, L0x2001a7a0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7a2, L0x2001a7a2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7a4, L0x2001a7a4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7a6, L0x2001a7a6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7a8, L0x2001a7a8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7aa, L0x2001a7aa <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ac, L0x2001a7ac <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ae, L0x2001a7ae <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7b0, L0x2001a7b0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7b2, L0x2001a7b2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7b4, L0x2001a7b4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7b6, L0x2001a7b6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7b8, L0x2001a7b8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ba, L0x2001a7ba <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7bc, L0x2001a7bc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7be, L0x2001a7be <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7c0, L0x2001a7c0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7c2, L0x2001a7c2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7c4, L0x2001a7c4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7c6, L0x2001a7c6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7c8, L0x2001a7c8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ca, L0x2001a7ca <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7cc, L0x2001a7cc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ce, L0x2001a7ce <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7d0, L0x2001a7d0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7d2, L0x2001a7d2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7d4, L0x2001a7d4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7d6, L0x2001a7d6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7d8, L0x2001a7d8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7da, L0x2001a7da <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7dc, L0x2001a7dc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7de, L0x2001a7de <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7e0, L0x2001a7e0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7e2, L0x2001a7e2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7e4, L0x2001a7e4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7e6, L0x2001a7e6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7e8, L0x2001a7e8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ea, L0x2001a7ea <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ec, L0x2001a7ec <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7ee, L0x2001a7ee <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7f0, L0x2001a7f0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7f2, L0x2001a7f2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7f4, L0x2001a7f4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7f6, L0x2001a7f6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7f8, L0x2001a7f8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7fa, L0x2001a7fa <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7fc, L0x2001a7fc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a7fe, L0x2001a7fe <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a800, L0x2001a800 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a802, L0x2001a802 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a804, L0x2001a804 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a806, L0x2001a806 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a808, L0x2001a808 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a80a, L0x2001a80a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a80c, L0x2001a80c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a80e, L0x2001a80e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a810, L0x2001a810 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a812, L0x2001a812 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a814, L0x2001a814 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a816, L0x2001a816 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a818, L0x2001a818 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a81a, L0x2001a81a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a81c, L0x2001a81c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a81e, L0x2001a81e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a820, L0x2001a820 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a822, L0x2001a822 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a824, L0x2001a824 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a826, L0x2001a826 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a828, L0x2001a828 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a82a, L0x2001a82a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a82c, L0x2001a82c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a82e, L0x2001a82e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a830, L0x2001a830 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a832, L0x2001a832 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a834, L0x2001a834 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a836, L0x2001a836 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a838, L0x2001a838 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a83a, L0x2001a83a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a83c, L0x2001a83c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a83e, L0x2001a83e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a840, L0x2001a840 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a842, L0x2001a842 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a844, L0x2001a844 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a846, L0x2001a846 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a848, L0x2001a848 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a84a, L0x2001a84a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a84c, L0x2001a84c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a84e, L0x2001a84e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a850, L0x2001a850 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a852, L0x2001a852 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a854, L0x2001a854 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a856, L0x2001a856 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a858, L0x2001a858 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a85a, L0x2001a85a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a85c, L0x2001a85c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a85e, L0x2001a85e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a860, L0x2001a860 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a862, L0x2001a862 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a864, L0x2001a864 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a866, L0x2001a866 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a868, L0x2001a868 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a86a, L0x2001a86a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a86c, L0x2001a86c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a86e, L0x2001a86e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a870, L0x2001a870 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a872, L0x2001a872 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a874, L0x2001a874 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a876, L0x2001a876 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a878, L0x2001a878 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a87a, L0x2001a87a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a87c, L0x2001a87c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a87e, L0x2001a87e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a880, L0x2001a880 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a882, L0x2001a882 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a884, L0x2001a884 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a886, L0x2001a886 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a888, L0x2001a888 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a88a, L0x2001a88a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a88c, L0x2001a88c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a88e, L0x2001a88e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a890, L0x2001a890 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a892, L0x2001a892 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a894, L0x2001a894 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a896, L0x2001a896 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a898, L0x2001a898 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a89a, L0x2001a89a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a89c, L0x2001a89c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a89e, L0x2001a89e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8a0, L0x2001a8a0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8a2, L0x2001a8a2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8a4, L0x2001a8a4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8a6, L0x2001a8a6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8a8, L0x2001a8a8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8aa, L0x2001a8aa <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ac, L0x2001a8ac <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ae, L0x2001a8ae <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8b0, L0x2001a8b0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8b2, L0x2001a8b2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8b4, L0x2001a8b4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8b6, L0x2001a8b6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8b8, L0x2001a8b8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ba, L0x2001a8ba <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8bc, L0x2001a8bc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8be, L0x2001a8be <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8c0, L0x2001a8c0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8c2, L0x2001a8c2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8c4, L0x2001a8c4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8c6, L0x2001a8c6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8c8, L0x2001a8c8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ca, L0x2001a8ca <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8cc, L0x2001a8cc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ce, L0x2001a8ce <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8d0, L0x2001a8d0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8d2, L0x2001a8d2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8d4, L0x2001a8d4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8d6, L0x2001a8d6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8d8, L0x2001a8d8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8da, L0x2001a8da <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8dc, L0x2001a8dc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8de, L0x2001a8de <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8e0, L0x2001a8e0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8e2, L0x2001a8e2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8e4, L0x2001a8e4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8e6, L0x2001a8e6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8e8, L0x2001a8e8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ea, L0x2001a8ea <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ec, L0x2001a8ec <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8ee, L0x2001a8ee <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8f0, L0x2001a8f0 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8f2, L0x2001a8f2 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8f4, L0x2001a8f4 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8f6, L0x2001a8f6 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8f8, L0x2001a8f8 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8fa, L0x2001a8fa <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8fc, L0x2001a8fc <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a8fe, L0x2001a8fe <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a900, L0x2001a900 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a902, L0x2001a902 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a904, L0x2001a904 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a906, L0x2001a906 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a908, L0x2001a908 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a90a, L0x2001a90a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a90c, L0x2001a90c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a90e, L0x2001a90e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a910, L0x2001a910 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a912, L0x2001a912 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a914, L0x2001a914 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a916, L0x2001a916 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a918, L0x2001a918 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a91a, L0x2001a91a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a91c, L0x2001a91c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a91e, L0x2001a91e <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a920, L0x2001a920 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a922, L0x2001a922 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a924, L0x2001a924 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a926, L0x2001a926 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a928, L0x2001a928 <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a92a, L0x2001a92a <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a92c, L0x2001a92c <s 3@16 * 3329@16,
   (-3)@16 * 3329@16 <s L0x2001a92e, L0x2001a92e <s 3@16 * 3329@16
];

(* sub.w	r0, r0, #64	; 0x40                        #! PC = 0x80060a0 *)
subs dontcare r0_b r0_b 64@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80060a4 *)
adds dontcare r1_b r1_b 14@uint16;
(* movw	r12, #8                                    #! PC = 0x80060a8 *)
mov r12_b 8@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a730; Value = 0x0b2aff80; PC = 0x80060b8 *)
mov r2_b L0x2001a730;
mov r2_t L0x2001a732;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a738; Value = 0x01adf6a1; PC = 0x80060bc *)
mov r3_b L0x2001a738;
mov r3_t L0x2001a73a;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a740; Value = 0x0538029e; PC = 0x80060c0 *)
mov r4_b L0x2001a740;
mov r4_t L0x2001a742;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a748; Value = 0xf9980a03; PC = 0x80060c4 *)
mov r5_b L0x2001a748;
mov r5_t L0x2001a74a;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a750; Value = 0x041b0c66; PC = 0x80060c8 *)
mov r6_b L0x2001a750;
mov r6_t L0x2001a752;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a758; Value = 0xfeb70969; PC = 0x80060cc *)
mov r7_b L0x2001a758;
mov r7_t L0x2001a75a;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a760; Value = 0x03bf007c; PC = 0x80060d0 *)
mov r8_b L0x2001a760;
mov r8_t L0x2001a762;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a768; Value = 0xf417f6be; PC = 0x80060d4 *)
mov r9_b L0x2001a768;
mov r9_t L0x2001a76a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4e2; Value = 0x023d0c56; PC = 0x80060d8 *)
mov r10_b L0x800e4e2;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4e4; Value = 0x07d4023d; PC = 0x800616c *)
mov r10_b L0x800e4e4;
mov r10_t L0x800e4e6;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4e8; Value = 0x028c04c7; PC = 0x8006200 *)
mov r10_b L0x800e4e8;
mov r10_t L0x800e4ea;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4ec; Value = 0x03f70ad9; PC = 0x800624c *)
mov r10_b L0x800e4ec;
mov r10_t L0x800e4ee;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a750; PC = 0x8006298 *)
mov L0x2001a750 r6_b;
mov L0x2001a752 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a758; PC = 0x800629c *)
mov L0x2001a758 r7_b;
mov L0x2001a75a r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a760; PC = 0x80062a0 *)
mov L0x2001a760 r8_b;
mov L0x2001a762 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a768; PC = 0x80062a4 *)
mov L0x2001a768 r9_b;
mov L0x2001a76a r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a738; PC = 0x80062a8 *)
mov L0x2001a738 r3_b;
mov L0x2001a73a r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a740; PC = 0x80062ac *)
mov L0x2001a740 r4_b;
mov L0x2001a742 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a748; PC = 0x80062b0 *)
mov L0x2001a748 r5_b;
mov L0x2001a74a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a730; PC = 0x80062b4 *)
mov L0x2001a730 r2_b;
mov L0x2001a732 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a734; Value = 0x0723fbe6; PC = 0x80060b8 *)
mov r2_b L0x2001a734;
mov r2_t L0x2001a736;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a73c; Value = 0xf945059d; PC = 0x80060bc *)
mov r3_b L0x2001a73c;
mov r3_t L0x2001a73e;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a744; Value = 0x06d1fe15; PC = 0x80060c0 *)
mov r4_b L0x2001a744;
mov r4_t L0x2001a746;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a74c; Value = 0xf92b0173; PC = 0x80060c4 *)
mov r5_b L0x2001a74c;
mov r5_t L0x2001a74e;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a754; Value = 0xfaf3f496; PC = 0x80060c8 *)
mov r6_b L0x2001a754;
mov r6_t L0x2001a756;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a75c; Value = 0x02780164; PC = 0x80060cc *)
mov r7_b L0x2001a75c;
mov r7_t L0x2001a75e;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a764; Value = 0x01cb03d4; PC = 0x80060d0 *)
mov r8_b L0x2001a764;
mov r8_t L0x2001a766;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a76c; Value = 0x0e6c01cc; PC = 0x80060d4 *)
mov r9_b L0x2001a76c;
mov r9_t L0x2001a76e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4e2; Value = 0x023d0c56; PC = 0x80060d8 *)
mov r10_b L0x800e4e2;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4e4; Value = 0x07d4023d; PC = 0x800616c *)
mov r10_b L0x800e4e4;
mov r10_t L0x800e4e6;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4e8; Value = 0x028c04c7; PC = 0x8006200 *)
mov r10_b L0x800e4e8;
mov r10_t L0x800e4ea;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4ec; Value = 0x03f70ad9; PC = 0x800624c *)
mov r10_b L0x800e4ec;
mov r10_t L0x800e4ee;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a754; PC = 0x8006298 *)
mov L0x2001a754 r6_b;
mov L0x2001a756 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a75c; PC = 0x800629c *)
mov L0x2001a75c r7_b;
mov L0x2001a75e r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a764; PC = 0x80062a0 *)
mov L0x2001a764 r8_b;
mov L0x2001a766 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a76c; PC = 0x80062a4 *)
mov L0x2001a76c r9_b;
mov L0x2001a76e r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a73c; PC = 0x80062a8 *)
mov L0x2001a73c r3_b;
mov L0x2001a73e r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a744; PC = 0x80062ac *)
mov L0x2001a744 r4_b;
mov L0x2001a746 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a74c; PC = 0x80062b0 *)
mov L0x2001a74c r5_b;
mov L0x2001a74e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a734; PC = 0x80062b4 *)
mov L0x2001a734 r2_b;
mov L0x2001a736 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000008; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a770; Value = 0x0780f450; PC = 0x80060b8 *)
mov r2_b L0x2001a770;
mov r2_t L0x2001a772;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a778; Value = 0x0a53f705; PC = 0x80060bc *)
mov r3_b L0x2001a778;
mov r3_t L0x2001a77a;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a780; Value = 0x016cfdb2; PC = 0x80060c0 *)
mov r4_b L0x2001a780;
mov r4_t L0x2001a782;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a788; Value = 0xf998027d; PC = 0x80060c4 *)
mov r5_b L0x2001a788;
mov r5_t L0x2001a78a;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a790; Value = 0x02d90068; PC = 0x80060c8 *)
mov r6_b L0x2001a790;
mov r6_t L0x2001a792;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a798; Value = 0xfff902c9; PC = 0x80060cc *)
mov r7_b L0x2001a798;
mov r7_t L0x2001a79a;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7a0; Value = 0x08c1050c; PC = 0x80060d0 *)
mov r8_b L0x2001a7a0;
mov r8_t L0x2001a7a2;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7a8; Value = 0xf98df160; PC = 0x80060d4 *)
mov r9_b L0x2001a7a8;
mov r9_t L0x2001a7aa;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4f0; Value = 0x0108026e; PC = 0x80060d8 *)
mov r10_b L0x800e4f0;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4f2; Value = 0x017f0108; PC = 0x800616c *)
mov r10_b L0x800e4f2;
mov r10_t L0x800e4f4;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4f6; Value = 0x05d307f4; PC = 0x8006200 *)
mov r10_b L0x800e4f6;
mov r10_t L0x800e4f8;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4fa; Value = 0x06f90be7; PC = 0x800624c *)
mov r10_b L0x800e4fa;
mov r10_t L0x800e4fc;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a790; PC = 0x8006298 *)
mov L0x2001a790 r6_b;
mov L0x2001a792 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a798; PC = 0x800629c *)
mov L0x2001a798 r7_b;
mov L0x2001a79a r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7a0; PC = 0x80062a0 *)
mov L0x2001a7a0 r8_b;
mov L0x2001a7a2 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7a8; PC = 0x80062a4 *)
mov L0x2001a7a8 r9_b;
mov L0x2001a7aa r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a778; PC = 0x80062a8 *)
mov L0x2001a778 r3_b;
mov L0x2001a77a r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a780; PC = 0x80062ac *)
mov L0x2001a780 r4_b;
mov L0x2001a782 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a788; PC = 0x80062b0 *)
mov L0x2001a788 r5_b;
mov L0x2001a78a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a770; PC = 0x80062b4 *)
mov L0x2001a770 r2_b;
mov L0x2001a772 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a774; Value = 0x11110418; PC = 0x80060b8 *)
mov r2_b L0x2001a774;
mov r2_t L0x2001a776;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a77c; Value = 0xee89fa03; PC = 0x80060bc *)
mov r3_b L0x2001a77c;
mov r3_t L0x2001a77e;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a784; Value = 0xffd5fc61; PC = 0x80060c0 *)
mov r4_b L0x2001a784;
mov r4_t L0x2001a786;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a78c; Value = 0x002f0369; PC = 0x80060c4 *)
mov r5_b L0x2001a78c;
mov r5_t L0x2001a78e;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a794; Value = 0x03f3ff3c; PC = 0x80060c8 *)
mov r6_b L0x2001a794;
mov r6_t L0x2001a796;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a79c; Value = 0xf7acf8c0; PC = 0x80060cc *)
mov r7_b L0x2001a79c;
mov r7_t L0x2001a79e;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7a4; Value = 0xfe850e34; PC = 0x80060d0 *)
mov r8_b L0x2001a7a4;
mov r8_t L0x2001a7a6;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7ac; Value = 0x03a0f8ac; PC = 0x80060d4 *)
mov r9_b L0x2001a7ac;
mov r9_t L0x2001a7ae;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4f0; Value = 0x0108026e; PC = 0x80060d8 *)
mov r10_b L0x800e4f0;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e4f2; Value = 0x017f0108; PC = 0x800616c *)
mov r10_b L0x800e4f2;
mov r10_t L0x800e4f4;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e4f6; Value = 0x05d307f4; PC = 0x8006200 *)
mov r10_b L0x800e4f6;
mov r10_t L0x800e4f8;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e4fa; Value = 0x06f90be7; PC = 0x800624c *)
mov r10_b L0x800e4fa;
mov r10_t L0x800e4fc;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a794; PC = 0x8006298 *)
mov L0x2001a794 r6_b;
mov L0x2001a796 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a79c; PC = 0x800629c *)
mov L0x2001a79c r7_b;
mov L0x2001a79e r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7a4; PC = 0x80062a0 *)
mov L0x2001a7a4 r8_b;
mov L0x2001a7a6 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7ac; PC = 0x80062a4 *)
mov L0x2001a7ac r9_b;
mov L0x2001a7ae r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a77c; PC = 0x80062a8 *)
mov L0x2001a77c r3_b;
mov L0x2001a77e r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a784; PC = 0x80062ac *)
mov L0x2001a784 r4_b;
mov L0x2001a786 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a78c; PC = 0x80062b0 *)
mov L0x2001a78c r5_b;
mov L0x2001a78e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a774; PC = 0x80062b4 *)
mov L0x2001a774 r2_b;
mov L0x2001a776 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000007; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a7b0; Value = 0x08fcfce8; PC = 0x80060b8 *)
mov r2_b L0x2001a7b0;
mov r2_t L0x2001a7b2;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a7b8; Value = 0xfc79f675; PC = 0x80060bc *)
mov r3_b L0x2001a7b8;
mov r3_t L0x2001a7ba;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a7c0; Value = 0x0bd70287; PC = 0x80060c0 *)
mov r4_b L0x2001a7c0;
mov r4_t L0x2001a7c2;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a7c8; Value = 0xf9e803bf; PC = 0x80060c4 *)
mov r5_b L0x2001a7c8;
mov r5_t L0x2001a7ca;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a7d0; Value = 0x05e20b0a; PC = 0x80060c8 *)
mov r6_b L0x2001a7d0;
mov r6_t L0x2001a7d2;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a7d8; Value = 0x02ca00d1; PC = 0x80060cc *)
mov r7_b L0x2001a7d8;
mov r7_t L0x2001a7da;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7e0; Value = 0x027d0153; PC = 0x80060d0 *)
mov r8_b L0x2001a7e0;
mov r8_t L0x2001a7e2;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7e8; Value = 0xfdaefcfd; PC = 0x80060d4 *)
mov r9_b L0x2001a7e8;
mov r9_t L0x2001a7ea;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4fe; Value = 0x09c40629; PC = 0x80060d8 *)
mov r10_b L0x800e4fe;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e500; Value = 0x05b209c4; PC = 0x800616c *)
mov r10_b L0x800e500;
mov r10_t L0x800e502;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e504; Value = 0x0cf90204; PC = 0x8006200 *)
mov r10_b L0x800e504;
mov r10_t L0x800e506;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e508; Value = 0x0a670bc1; PC = 0x800624c *)
mov r10_b L0x800e508;
mov r10_t L0x800e50a;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a7d0; PC = 0x8006298 *)
mov L0x2001a7d0 r6_b;
mov L0x2001a7d2 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a7d8; PC = 0x800629c *)
mov L0x2001a7d8 r7_b;
mov L0x2001a7da r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7e0; PC = 0x80062a0 *)
mov L0x2001a7e0 r8_b;
mov L0x2001a7e2 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7e8; PC = 0x80062a4 *)
mov L0x2001a7e8 r9_b;
mov L0x2001a7ea r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a7b8; PC = 0x80062a8 *)
mov L0x2001a7b8 r3_b;
mov L0x2001a7ba r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a7c0; PC = 0x80062ac *)
mov L0x2001a7c0 r4_b;
mov L0x2001a7c2 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a7c8; PC = 0x80062b0 *)
mov L0x2001a7c8 r5_b;
mov L0x2001a7ca r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a7b0; PC = 0x80062b4 *)
mov L0x2001a7b0 r2_b;
mov L0x2001a7b2 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a7b4; Value = 0x06f5fdb7; PC = 0x80060b8 *)
mov r2_b L0x2001a7b4;
mov r2_t L0x2001a7b6;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a7bc; Value = 0xfaaffdeb; PC = 0x80060bc *)
mov r3_b L0x2001a7bc;
mov r3_t L0x2001a7be;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a7c4; Value = 0x0a5d077f; PC = 0x80060c0 *)
mov r4_b L0x2001a7c4;
mov r4_t L0x2001a7c6;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a7cc; Value = 0xf633fb7d; PC = 0x80060c4 *)
mov r5_b L0x2001a7cc;
mov r5_t L0x2001a7ce;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a7d4; Value = 0xf024ff99; PC = 0x80060c8 *)
mov r6_b L0x2001a7d4;
mov r6_t L0x2001a7d6;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a7dc; Value = 0x0004000f; PC = 0x80060cc *)
mov r7_b L0x2001a7dc;
mov r7_t L0x2001a7de;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7e4; Value = 0xff71022d; PC = 0x80060d0 *)
mov r8_b L0x2001a7e4;
mov r8_t L0x2001a7e6;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7ec; Value = 0x00940795; PC = 0x80060d4 *)
mov r9_b L0x2001a7ec;
mov r9_t L0x2001a7ee;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e4fe; Value = 0x09c40629; PC = 0x80060d8 *)
mov r10_b L0x800e4fe;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e500; Value = 0x05b209c4; PC = 0x800616c *)
mov r10_b L0x800e500;
mov r10_t L0x800e502;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e504; Value = 0x0cf90204; PC = 0x8006200 *)
mov r10_b L0x800e504;
mov r10_t L0x800e506;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e508; Value = 0x0a670bc1; PC = 0x800624c *)
mov r10_b L0x800e508;
mov r10_t L0x800e50a;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a7d4; PC = 0x8006298 *)
mov L0x2001a7d4 r6_b;
mov L0x2001a7d6 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a7dc; PC = 0x800629c *)
mov L0x2001a7dc r7_b;
mov L0x2001a7de r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a7e4; PC = 0x80062a0 *)
mov L0x2001a7e4 r8_b;
mov L0x2001a7e6 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a7ec; PC = 0x80062a4 *)
mov L0x2001a7ec r9_b;
mov L0x2001a7ee r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a7bc; PC = 0x80062a8 *)
mov L0x2001a7bc r3_b;
mov L0x2001a7be r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a7c4; PC = 0x80062ac *)
mov L0x2001a7c4 r4_b;
mov L0x2001a7c6 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a7cc; PC = 0x80062b0 *)
mov L0x2001a7cc r5_b;
mov L0x2001a7ce r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a7b4; PC = 0x80062b4 *)
mov L0x2001a7b4 r2_b;
mov L0x2001a7b6 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000006; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a7f0; Value = 0xfd5af648; PC = 0x80060b8 *)
mov r2_b L0x2001a7f0;
mov r2_t L0x2001a7f2;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a7f8; Value = 0xf77f02e5; PC = 0x80060bc *)
mov r3_b L0x2001a7f8;
mov r3_t L0x2001a7fa;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a800; Value = 0x0681fd29; PC = 0x80060c0 *)
mov r4_b L0x2001a800;
mov r4_t L0x2001a802;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a808; Value = 0xf9e808c1; PC = 0x80060c4 *)
mov r5_b L0x2001a808;
mov r5_t L0x2001a80a;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a810; Value = 0x0c260124; PC = 0x80060c8 *)
mov r6_b L0x2001a810;
mov r6_t L0x2001a812;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a818; Value = 0xfc860c01; PC = 0x80060cc *)
mov r7_b L0x2001a818;
mov r7_t L0x2001a81a;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a820; Value = 0x0a03f921; PC = 0x80060d0 *)
mov r8_b L0x2001a820;
mov r8_t L0x2001a822;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a828; Value = 0xfbaa01e9; PC = 0x80060d4 *)
mov r9_b L0x2001a828;
mov r9_t L0x2001a82a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e50c; Value = 0x06bf00b6; PC = 0x80060d8 *)
mov r10_b L0x800e50c;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e50e; Value = 0x0c7f06bf; PC = 0x800616c *)
mov r10_b L0x800e50e;
mov r10_t L0x800e510;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e512; Value = 0x087706af; PC = 0x8006200 *)
mov r10_b L0x800e512;
mov r10_t L0x800e514;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e516; Value = 0x05bd007e; PC = 0x800624c *)
mov r10_b L0x800e516;
mov r10_t L0x800e518;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a810; PC = 0x8006298 *)
mov L0x2001a810 r6_b;
mov L0x2001a812 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a818; PC = 0x800629c *)
mov L0x2001a818 r7_b;
mov L0x2001a81a r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a820; PC = 0x80062a0 *)
mov L0x2001a820 r8_b;
mov L0x2001a822 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a828; PC = 0x80062a4 *)
mov L0x2001a828 r9_b;
mov L0x2001a82a r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a7f8; PC = 0x80062a8 *)
mov L0x2001a7f8 r3_b;
mov L0x2001a7fa r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a800; PC = 0x80062ac *)
mov L0x2001a800 r4_b;
mov L0x2001a802 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a808; PC = 0x80062b0 *)
mov L0x2001a808 r5_b;
mov L0x2001a80a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a7f0; PC = 0x80062b4 *)
mov L0x2001a7f0 r2_b;
mov L0x2001a7f2 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a7f4; Value = 0xf9d70247; PC = 0x80060b8 *)
mov r2_b L0x2001a7f4;
mov r2_t L0x2001a7f6;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a7fc; Value = 0x04870075; PC = 0x80060bc *)
mov r3_b L0x2001a7fc;
mov r3_t L0x2001a7fe;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a804; Value = 0x07fdfe0b; PC = 0x80060c0 *)
mov r4_b L0x2001a804;
mov r4_t L0x2001a806;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a80c; Value = 0xf773fdab; PC = 0x80060c4 *)
mov r5_b L0x2001a80c;
mov r5_t L0x2001a80e;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a814; Value = 0xf7faf399; PC = 0x80060c8 *)
mov r6_b L0x2001a814;
mov r6_t L0x2001a816;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a81c; Value = 0x05d405c9; PC = 0x80060cc *)
mov r7_b L0x2001a81c;
mov r7_t L0x2001a81e;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a824; Value = 0x003f04c7; PC = 0x80060d0 *)
mov r8_b L0x2001a824;
mov r8_t L0x2001a826;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a82c; Value = 0x0664fdf7; PC = 0x80060d4 *)
mov r9_b L0x2001a82c;
mov r9_t L0x2001a82e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e50c; Value = 0x06bf00b6; PC = 0x80060d8 *)
mov r10_b L0x800e50c;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e50e; Value = 0x0c7f06bf; PC = 0x800616c *)
mov r10_b L0x800e50e;
mov r10_t L0x800e510;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e512; Value = 0x087706af; PC = 0x8006200 *)
mov r10_b L0x800e512;
mov r10_t L0x800e514;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e516; Value = 0x05bd007e; PC = 0x800624c *)
mov r10_b L0x800e516;
mov r10_t L0x800e518;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a814; PC = 0x8006298 *)
mov L0x2001a814 r6_b;
mov L0x2001a816 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a81c; PC = 0x800629c *)
mov L0x2001a81c r7_b;
mov L0x2001a81e r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a824; PC = 0x80062a0 *)
mov L0x2001a824 r8_b;
mov L0x2001a826 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a82c; PC = 0x80062a4 *)
mov L0x2001a82c r9_b;
mov L0x2001a82e r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a7fc; PC = 0x80062a8 *)
mov L0x2001a7fc r3_b;
mov L0x2001a7fe r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a804; PC = 0x80062ac *)
mov L0x2001a804 r4_b;
mov L0x2001a806 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a80c; PC = 0x80062b0 *)
mov L0x2001a80c r5_b;
mov L0x2001a80e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a7f4; PC = 0x80062b4 *)
mov L0x2001a7f4 r2_b;
mov L0x2001a7f6 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000005; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a830; Value = 0xfca7067e; PC = 0x80060b8 *)
mov r2_b L0x2001a830;
mov r2_t L0x2001a832;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a838; Value = 0x03e009cf; PC = 0x80060bc *)
mov r3_b L0x2001a838;
mov r3_t L0x2001a83a;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a840; Value = 0xf46bff9d; PC = 0x80060c0 *)
mov r4_b L0x2001a840;
mov r4_t L0x2001a842;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a848; Value = 0x0353f73f; PC = 0x80060c4 *)
mov r5_b L0x2001a848;
mov r5_t L0x2001a84a;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a850; Value = 0xf962f7b9; PC = 0x80060c8 *)
mov r6_b L0x2001a850;
mov r6_t L0x2001a852;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a858; Value = 0x00b7f94a; PC = 0x80060cc *)
mov r7_b L0x2001a858;
mov r7_t L0x2001a85a;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a860; Value = 0xf5fd025f; PC = 0x80060d0 *)
mov r8_b L0x2001a860;
mov r8_t L0x2001a862;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a868; Value = 0x03320e76; PC = 0x80060d4 *)
mov r9_b L0x2001a868;
mov r9_t L0x2001a86a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e51a; Value = 0x0a5803c2; PC = 0x80060d8 *)
mov r10_b L0x800e51a;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e51c; Value = 0x03f90a58; PC = 0x800616c *)
mov r10_b L0x800e51c;
mov r10_t L0x800e51e;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e520; Value = 0x0ca709ac; PC = 0x8006200 *)
mov r10_b L0x800e520;
mov r10_t L0x800e522;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e524; Value = 0x033e0bf2; PC = 0x800624c *)
mov r10_b L0x800e524;
mov r10_t L0x800e526;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a850; PC = 0x8006298 *)
mov L0x2001a850 r6_b;
mov L0x2001a852 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a858; PC = 0x800629c *)
mov L0x2001a858 r7_b;
mov L0x2001a85a r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a860; PC = 0x80062a0 *)
mov L0x2001a860 r8_b;
mov L0x2001a862 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a868; PC = 0x80062a4 *)
mov L0x2001a868 r9_b;
mov L0x2001a86a r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a838; PC = 0x80062a8 *)
mov L0x2001a838 r3_b;
mov L0x2001a83a r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a840; PC = 0x80062ac *)
mov L0x2001a840 r4_b;
mov L0x2001a842 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a848; PC = 0x80062b0 *)
mov L0x2001a848 r5_b;
mov L0x2001a84a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a830; PC = 0x80062b4 *)
mov L0x2001a830 r2_b;
mov L0x2001a832 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a834; Value = 0xf99dffc6; PC = 0x80060b8 *)
mov r2_b L0x2001a834;
mov r2_t L0x2001a836;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a83c; Value = 0x04200520; PC = 0x80060bc *)
mov r3_b L0x2001a83c;
mov r3_t L0x2001a83e;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a844; Value = 0xfde3088b; PC = 0x80060c0 *)
mov r4_b L0x2001a844;
mov r4_t L0x2001a846;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a84c; Value = 0x07a9069f; PC = 0x80060c4 *)
mov r5_b L0x2001a84c;
mov r5_t L0x2001a84e;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a854; Value = 0x05af0511; PC = 0x80060c8 *)
mov r6_b L0x2001a854;
mov r6_t L0x2001a856;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a85c; Value = 0x00dffbf7; PC = 0x80060cc *)
mov r7_b L0x2001a85c;
mov r7_t L0x2001a85e;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a864; Value = 0x0676faa0; PC = 0x80060d0 *)
mov r8_b L0x2001a864;
mov r8_t L0x2001a866;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a86c; Value = 0xf804057d; PC = 0x80060d4 *)
mov r9_b L0x2001a86c;
mov r9_t L0x2001a86e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e51a; Value = 0x0a5803c2; PC = 0x80060d8 *)
mov r10_b L0x800e51a;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e51c; Value = 0x03f90a58; PC = 0x800616c *)
mov r10_b L0x800e51c;
mov r10_t L0x800e51e;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e520; Value = 0x0ca709ac; PC = 0x8006200 *)
mov r10_b L0x800e520;
mov r10_t L0x800e522;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e524; Value = 0x033e0bf2; PC = 0x800624c *)
mov r10_b L0x800e524;
mov r10_t L0x800e526;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a854; PC = 0x8006298 *)
mov L0x2001a854 r6_b;
mov L0x2001a856 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a85c; PC = 0x800629c *)
mov L0x2001a85c r7_b;
mov L0x2001a85e r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a864; PC = 0x80062a0 *)
mov L0x2001a864 r8_b;
mov L0x2001a866 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a86c; PC = 0x80062a4 *)
mov L0x2001a86c r9_b;
mov L0x2001a86e r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a83c; PC = 0x80062a8 *)
mov L0x2001a83c r3_b;
mov L0x2001a83e r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a844; PC = 0x80062ac *)
mov L0x2001a844 r4_b;
mov L0x2001a846 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a84c; PC = 0x80062b0 *)
mov L0x2001a84c r5_b;
mov L0x2001a84e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a834; PC = 0x80062b4 *)
mov L0x2001a834 r2_b;
mov L0x2001a836 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000004; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a870; Value = 0xfd030bdc; PC = 0x80060b8 *)
mov r2_b L0x2001a870;
mov r2_t L0x2001a872;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a878; Value = 0x02960261; PC = 0x80060bc *)
mov r3_b L0x2001a878;
mov r3_t L0x2001a87a;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a880; Value = 0xfec3063d; PC = 0x80060c0 *)
mov r4_b L0x2001a880;
mov r4_t L0x2001a882;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a888; Value = 0x0353fc41; PC = 0x80060c4 *)
mov r5_b L0x2001a888;
mov r5_t L0x2001a88a;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a890; Value = 0xffa6019f; PC = 0x80060c8 *)
mov r6_b L0x2001a890;
mov r6_t L0x2001a892;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a898; Value = 0xfa73f45e; PC = 0x80060cc *)
mov r7_b L0x2001a898;
mov r7_t L0x2001a89a;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8a0; Value = 0xfd83f815; PC = 0x80060d0 *)
mov r8_b L0x2001a8a0;
mov r8_t L0x2001a8a2;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8a8; Value = 0x08fc0346; PC = 0x80060d4 *)
mov r9_b L0x2001a8a8;
mov r9_t L0x2001a8aa;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e528; Value = 0x02dc084f; PC = 0x80060d8 *)
mov r10_b L0x800e528;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e52a; Value = 0x026002dc; PC = 0x800616c *)
mov r10_b L0x800e52a;
mov r10_t L0x800e52c;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e52e; Value = 0x0774006b; PC = 0x8006200 *)
mov r10_b L0x800e52e;
mov r10_t L0x800e530;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e532; Value = 0x094a0c0a; PC = 0x800624c *)
mov r10_b L0x800e532;
mov r10_t L0x800e534;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a890; PC = 0x8006298 *)
mov L0x2001a890 r6_b;
mov L0x2001a892 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a898; PC = 0x800629c *)
mov L0x2001a898 r7_b;
mov L0x2001a89a r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8a0; PC = 0x80062a0 *)
mov L0x2001a8a0 r8_b;
mov L0x2001a8a2 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8a8; PC = 0x80062a4 *)
mov L0x2001a8a8 r9_b;
mov L0x2001a8aa r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a878; PC = 0x80062a8 *)
mov L0x2001a878 r3_b;
mov L0x2001a87a r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a880; PC = 0x80062ac *)
mov L0x2001a880 r4_b;
mov L0x2001a882 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a888; PC = 0x80062b0 *)
mov L0x2001a888 r5_b;
mov L0x2001a88a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a870; PC = 0x80062b4 *)
mov L0x2001a870 r2_b;
mov L0x2001a872 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a874; Value = 0xfa830038; PC = 0x80060b8 *)
mov r2_b L0x2001a874;
mov r2_t L0x2001a876;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a87c; Value = 0x07c20798; PC = 0x80060bc *)
mov r3_b L0x2001a87c;
mov r3_t L0x2001a87e;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a884; Value = 0xf54dfcff; PC = 0x80060c0 *)
mov r4_b L0x2001a884;
mov r4_t L0x2001a886;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a88c; Value = 0x0527fab7; PC = 0x80060c4 *)
mov r5_b L0x2001a88c;
mov r5_t L0x2001a88e;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a894; Value = 0x01990d4b; PC = 0x80060c8 *)
mov r6_b L0x2001a894;
mov r6_t L0x2001a896;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a89c; Value = 0xfecf03b7; PC = 0x80060cc *)
mov r7_b L0x2001a89c;
mov r7_t L0x2001a89e;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8a4; Value = 0xff64f354; PC = 0x80060d0 *)
mov r8_b L0x2001a8a4;
mov r8_t L0x2001a8a6;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8ac; Value = 0xf5f4000f; PC = 0x80060d4 *)
mov r9_b L0x2001a8ac;
mov r9_t L0x2001a8ae;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e528; Value = 0x02dc084f; PC = 0x80060d8 *)
mov r10_b L0x800e528;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e52a; Value = 0x026002dc; PC = 0x800616c *)
mov r10_b L0x800e52a;
mov r10_t L0x800e52c;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e52e; Value = 0x0774006b; PC = 0x8006200 *)
mov r10_b L0x800e52e;
mov r10_t L0x800e530;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e532; Value = 0x094a0c0a; PC = 0x800624c *)
mov r10_b L0x800e532;
mov r10_t L0x800e534;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a894; PC = 0x8006298 *)
mov L0x2001a894 r6_b;
mov L0x2001a896 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a89c; PC = 0x800629c *)
mov L0x2001a89c r7_b;
mov L0x2001a89e r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8a4; PC = 0x80062a0 *)
mov L0x2001a8a4 r8_b;
mov L0x2001a8a6 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8ac; PC = 0x80062a4 *)
mov L0x2001a8ac r9_b;
mov L0x2001a8ae r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a87c; PC = 0x80062a8 *)
mov L0x2001a87c r3_b;
mov L0x2001a87e r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a884; PC = 0x80062ac *)
mov L0x2001a884 r4_b;
mov L0x2001a886 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a88c; PC = 0x80062b0 *)
mov L0x2001a88c r5_b;
mov L0x2001a88e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a874; PC = 0x80062b4 *)
mov L0x2001a874 r2_b;
mov L0x2001a876 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000003; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a8b0; Value = 0xf07200dd; PC = 0x80060b8 *)
mov r2_b L0x2001a8b0;
mov r2_t L0x2001a8b2;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a8b8; Value = 0x00730a5d; PC = 0x80060bc *)
mov r3_b L0x2001a8b8;
mov r3_t L0x2001a8ba;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a8c0; Value = 0xfbc4f77b; PC = 0x80060c0 *)
mov r4_b L0x2001a8c0;
mov r4_t L0x2001a8c2;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a8c8; Value = 0x092dfd83; PC = 0x80060c4 *)
mov r5_b L0x2001a8c8;
mov r5_t L0x2001a8ca;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a8d0; Value = 0xf79bf0d3; PC = 0x80060c8 *)
mov r6_b L0x2001a8d0;
mov r6_t L0x2001a8d2;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a8d8; Value = 0x02cef9ff; PC = 0x80060cc *)
mov r7_b L0x2001a8d8;
mov r7_t L0x2001a8da;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8e0; Value = 0xf73f028b; PC = 0x80060d0 *)
mov r8_b L0x2001a8e0;
mov r8_t L0x2001a8e2;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8e8; Value = 0x0cbd0054; PC = 0x80060d4 *)
mov r9_b L0x2001a8e8;
mov r9_t L0x2001a8ea;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e536; Value = 0x06fb073f; PC = 0x80060d8 *)
mov r10_b L0x800e536;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e538; Value = 0x019b06fb; PC = 0x800616c *)
mov r10_b L0x800e538;
mov r10_t L0x800e53a;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e53c; Value = 0x03c10b73; PC = 0x8006200 *)
mov r10_b L0x800e53c;
mov r10_t L0x800e53e;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e540; Value = 0x0a2c071d; PC = 0x800624c *)
mov r10_b L0x800e540;
mov r10_t L0x800e542;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a8d0; PC = 0x8006298 *)
mov L0x2001a8d0 r6_b;
mov L0x2001a8d2 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a8d8; PC = 0x800629c *)
mov L0x2001a8d8 r7_b;
mov L0x2001a8da r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8e0; PC = 0x80062a0 *)
mov L0x2001a8e0 r8_b;
mov L0x2001a8e2 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8e8; PC = 0x80062a4 *)
mov L0x2001a8e8 r9_b;
mov L0x2001a8ea r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a8b8; PC = 0x80062a8 *)
mov L0x2001a8b8 r3_b;
mov L0x2001a8ba r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a8c0; PC = 0x80062ac *)
mov L0x2001a8c0 r4_b;
mov L0x2001a8c2 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a8c8; PC = 0x80062b0 *)
mov L0x2001a8c8 r5_b;
mov L0x2001a8ca r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a8b0; PC = 0x80062b4 *)
mov L0x2001a8b0 r2_b;
mov L0x2001a8b2 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a8b4; Value = 0xfc87fada; PC = 0x80060b8 *)
mov r2_b L0x2001a8b4;
mov r2_t L0x2001a8b6;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a8bc; Value = 0x0cf2f89e; PC = 0x80060bc *)
mov r3_b L0x2001a8bc;
mov r3_t L0x2001a8be;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a8c4; Value = 0xfe690024; PC = 0x80060c0 *)
mov r4_b L0x2001a8c4;
mov r4_t L0x2001a8c6;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a8cc; Value = 0xffbbfc7c; PC = 0x80060c4 *)
mov r5_b L0x2001a8cc;
mov r5_t L0x2001a8ce;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a8d4; Value = 0x0742050c; PC = 0x80060c8 *)
mov r6_b L0x2001a8d4;
mov r6_t L0x2001a8d6;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a8dc; Value = 0x01a6fa93; PC = 0x80060cc *)
mov r7_b L0x2001a8dc;
mov r7_t L0x2001a8de;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8e4; Value = 0xfacffd53; PC = 0x80060d0 *)
mov r8_b L0x2001a8e4;
mov r8_t L0x2001a8e6;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8ec; Value = 0xfe05fdae; PC = 0x80060d4 *)
mov r9_b L0x2001a8ec;
mov r9_t L0x2001a8ee;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e536; Value = 0x06fb073f; PC = 0x80060d8 *)
mov r10_b L0x800e536;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e538; Value = 0x019b06fb; PC = 0x800616c *)
mov r10_b L0x800e538;
mov r10_t L0x800e53a;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e53c; Value = 0x03c10b73; PC = 0x8006200 *)
mov r10_b L0x800e53c;
mov r10_t L0x800e53e;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e540; Value = 0x0a2c071d; PC = 0x800624c *)
mov r10_b L0x800e540;
mov r10_t L0x800e542;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a8d4; PC = 0x8006298 *)
mov L0x2001a8d4 r6_b;
mov L0x2001a8d6 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a8dc; PC = 0x800629c *)
mov L0x2001a8dc r7_b;
mov L0x2001a8de r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a8e4; PC = 0x80062a0 *)
mov L0x2001a8e4 r8_b;
mov L0x2001a8e6 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a8ec; PC = 0x80062a4 *)
mov L0x2001a8ec r9_b;
mov L0x2001a8ee r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a8bc; PC = 0x80062a8 *)
mov L0x2001a8bc r3_b;
mov L0x2001a8be r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a8c4; PC = 0x80062ac *)
mov L0x2001a8c4 r4_b;
mov L0x2001a8c6 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a8cc; PC = 0x80062b0 *)
mov L0x2001a8cc r5_b;
mov L0x2001a8ce r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a8b4; PC = 0x80062b4 *)
mov L0x2001a8b4 r2_b;
mov L0x2001a8b6 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000002; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80060ac *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* movw	r12, #2                                    #! PC = 0x80060b0 *)
mov r12_b 2@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a8f0; Value = 0xfce405c9; PC = 0x80060b8 *)
mov r2_b L0x2001a8f0;
mov r2_t L0x2001a8f2;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a8f8; Value = 0xf90f0273; PC = 0x80060bc *)
mov r3_b L0x2001a8f8;
mov r3_t L0x2001a8fa;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a900; Value = 0xf80a02ab; PC = 0x80060c0 *)
mov r4_b L0x2001a900;
mov r4_t L0x2001a902;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a908; Value = 0x092df5fd; PC = 0x80060c4 *)
mov r5_b L0x2001a908;
mov r5_t L0x2001a90a;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a910; Value = 0xf659fcd1; PC = 0x80060c8 *)
mov r6_b L0x2001a910;
mov r6_t L0x2001a912;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a918; Value = 0x0410ff5d; PC = 0x80060cc *)
mov r7_b L0x2001a918;
mov r7_t L0x2001a91a;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a920; Value = 0xfc4102fd; PC = 0x80060d0 *)
mov r8_b L0x2001a920;
mov r8_t L0x2001a922;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a928; Value = 0x001106f4; PC = 0x80060d4 *)
mov r9_b L0x2001a928;
mov r9_t L0x2001a92a;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e544; Value = 0x0c3405bc; PC = 0x80060d8 *)
mov r10_b L0x800e544;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e546; Value = 0x06de0c34; PC = 0x800616c *)
mov r10_b L0x800e546;
mov r10_t L0x800e548;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e54a; Value = 0x08d801c0; PC = 0x8006200 *)
mov r10_b L0x800e54a;
mov r10_t L0x800e54c;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e54e; Value = 0x080602a5; PC = 0x800624c *)
mov r10_b L0x800e54e;
mov r10_t L0x800e550;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a910; PC = 0x8006298 *)
mov L0x2001a910 r6_b;
mov L0x2001a912 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a918; PC = 0x800629c *)
mov L0x2001a918 r7_b;
mov L0x2001a91a r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a920; PC = 0x80062a0 *)
mov L0x2001a920 r8_b;
mov L0x2001a922 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a928; PC = 0x80062a4 *)
mov L0x2001a928 r9_b;
mov L0x2001a92a r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a8f8; PC = 0x80062a8 *)
mov L0x2001a8f8 r3_b;
mov L0x2001a8fa r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a900; PC = 0x80062ac *)
mov L0x2001a900 r4_b;
mov L0x2001a902 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a908; PC = 0x80062b0 *)
mov L0x2001a908 r5_b;
mov L0x2001a90a r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a8f0; PC = 0x80062b4 *)
mov L0x2001a8f0 r2_b;
mov L0x2001a8f2 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000002; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a47c; PC = 0x80060b4 *)
mov L0x2001a47c r12_b;
mov L0x2001a47e r12_t;
(* ldr.w	r2, [r0]                                  #! EA = L0x2001a8f4; Value = 0xf6590524; PC = 0x80060b8 *)
mov r2_b L0x2001a8f4;
mov r2_t L0x2001a8f6;
(* ldr.w	r3, [r0, #8]                              #! EA = L0x2001a8fc; Value = 0x0030fcb2; PC = 0x80060bc *)
mov r3_b L0x2001a8fc;
mov r3_t L0x2001a8fe;
(* ldr.w	r4, [r0, #16]                             #! EA = L0x2001a904; Value = 0xf567fa52; PC = 0x80060c0 *)
mov r4_b L0x2001a904;
mov r4_t L0x2001a906;
(* ldr.w	r5, [r0, #24]                             #! EA = L0x2001a90c; Value = 0x0c75043a; PC = 0x80060c4 *)
mov r5_b L0x2001a90c;
mov r5_t L0x2001a90e;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x2001a914; Value = 0x0a7a019c; PC = 0x80060c8 *)
mov r6_b L0x2001a914;
mov r6_t L0x2001a916;
(* ldr.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a91c; Value = 0xfea805bb; PC = 0x80060cc *)
mov r7_b L0x2001a91c;
mov r7_t L0x2001a91e;
(* ldr.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a924; Value = 0xff57fbb5; PC = 0x80060d0 *)
mov r8_b L0x2001a924;
mov r8_t L0x2001a926;
(* ldr.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a92c; Value = 0xfb07fcca; PC = 0x80060d4 *)
mov r9_b L0x2001a92c;
mov r9_t L0x2001a92e;
(* ldrh.w	r10, [r1]                                #! EA = L0x800e544; Value = 0x0c3405bc; PC = 0x80060d8 *)
mov r10_b L0x800e544;
mov r10_t 0@sint16;
(* smulbb	r12, r6, r10                             #! PC = 0x80060dc *)
mull r12_t r12_b r6_b r10_b;
(* smultb	r6, r6, r10                              #! PC = 0x80060e0 *)
mull r6_t r6_b r6_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80060e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80060e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r6, r11                             #! PC = 0x80060ec *)
cast r6_sb@sint16 r6_b;
mull r12_t r12_b r6_sb r11_t;
(* smlabb	r12, r11, r12, r6                        #! PC = 0x80060f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r6_b;
adc r12_t tmp_t r6_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80060f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r6, r2, lr                               #! PC = 0x80060f8 *)
sub r6_b r2_b lr_b;
sub r6_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x80060fc *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006100 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006104 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006108 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800610c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006110 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006114 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006118 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r3, lr                               #! PC = 0x800611c *)
sub r7_b r3_b lr_b;
sub r7_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x8006120 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006124 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	r8, r8, r10                              #! PC = 0x8006128 *)
mull r8_t r8_b r8_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800612c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006130 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x8006134 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x8006138 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800613c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r4, lr                               #! PC = 0x8006140 *)
sub r8_b r4_b lr_b;
sub r8_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006144 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006148 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	r9, r9, r10                              #! PC = 0x800614c *)
mull r9_t r9_b r9_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006150 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006154 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006158 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x800615c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006160 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r5, lr                               #! PC = 0x8006164 *)
sub r9_b r5_b lr_b;
sub r9_t r5_t lr_t;
(* uadd16	r5, r5, lr                               #! PC = 0x8006168 *)
add r5_b r5_b lr_b;
add r5_t r5_t lr_t;
(* ldr.w	r10, [r1, #2]                             #! EA = L0x800e546; Value = 0x06de0c34; PC = 0x800616c *)
mov r10_b L0x800e546;
mov r10_t L0x800e548;
(* smulbb	r12, r4, r10                             #! PC = 0x8006170 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	r4, r4, r10                              #! PC = 0x8006174 *)
mull r4_t r4_b r4_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006178 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800617c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r4, r11                             #! PC = 0x8006180 *)
cast r4_sb@sint16 r4_b;
mull r12_t r12_b r4_sb r11_t;
(* smlabb	r12, r11, r12, r4                        #! PC = 0x8006184 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r4_b;
adc r12_t tmp_t r4_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006188 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r4, r2, lr                               #! PC = 0x800618c *)
sub r4_b r2_b lr_b;
sub r4_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006190 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbb	r12, r5, r10                             #! PC = 0x8006194 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	r5, r5, r10                              #! PC = 0x8006198 *)
mull r5_t r5_b r5_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800619c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061a0 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x80061a4 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x80061a8 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061ac *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r3, lr                               #! PC = 0x80061b0 *)
sub r5_b r3_b lr_b;
sub r5_t r3_t lr_t;
(* uadd16	r3, r3, lr                               #! PC = 0x80061b4 *)
add r3_b r3_b lr_b;
add r3_t r3_t lr_t;
(* smulbt	r12, r8, r10                             #! PC = 0x80061b8 *)
mull r12_t r12_b r8_b r10_t;
(* smultt	r8, r8, r10                              #! PC = 0x80061bc *)
mull r8_t r8_b r8_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061c0 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061c4 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r8, r11                             #! PC = 0x80061c8 *)
cast r8_sb@sint16 r8_b;
mull r12_t r12_b r8_sb r11_t;
(* smlabb	r12, r11, r12, r8                        #! PC = 0x80061cc *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r8_b;
adc r12_t tmp_t r8_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061d0 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r8, r6, lr                               #! PC = 0x80061d4 *)
sub r8_b r6_b lr_b;
sub r8_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x80061d8 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x80061dc *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x80061e0 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x80061e4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80061e8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x80061ec *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x80061f0 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x80061f4 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r7, lr                               #! PC = 0x80061f8 *)
sub r9_b r7_b lr_b;
sub r9_t r7_t lr_t;
(* uadd16	r7, r7, lr                               #! PC = 0x80061fc *)
add r7_b r7_b lr_b;
add r7_t r7_t lr_t;
(* ldr.w	r10, [r1, #6]                             #! EA = L0x800e54a; Value = 0x08d801c0; PC = 0x8006200 *)
mov r10_b L0x800e54a;
mov r10_t L0x800e54c;
(* smulbb	r12, r3, r10                             #! PC = 0x8006204 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x8006208 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x800620c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006210 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x8006214 *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006218 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800621c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006220 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x8006224 *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006228 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x800622c *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006230 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006234 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006238 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x800623c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006240 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x8006244 *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006248 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1, #10]                            #! EA = L0x800e54e; Value = 0x080602a5; PC = 0x800624c *)
mov r10_b L0x800e54e;
mov r10_t L0x800e550;
(* smulbb	r12, r7, r10                             #! PC = 0x8006250 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x8006254 *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006258 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800625c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006260 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x8006264 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006268 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x800626c *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006270 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x8006274 *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006278 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x800627c *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006280 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x8006284 *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006288 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x800628c *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006290 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x8006294 *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;
(* str.w	r6, [r0, #32]                             #! EA = L0x2001a914; PC = 0x8006298 *)
mov L0x2001a914 r6_b;
mov L0x2001a916 r6_t;
(* str.w	r7, [r0, #40]	; 0x28                      #! EA = L0x2001a91c; PC = 0x800629c *)
mov L0x2001a91c r7_b;
mov L0x2001a91e r7_t;
(* str.w	r8, [r0, #48]	; 0x30                      #! EA = L0x2001a924; PC = 0x80062a0 *)
mov L0x2001a924 r8_b;
mov L0x2001a926 r8_t;
(* str.w	r9, [r0, #56]	; 0x38                      #! EA = L0x2001a92c; PC = 0x80062a4 *)
mov L0x2001a92c r9_b;
mov L0x2001a92e r9_t;
(* str.w	r3, [r0, #8]                              #! EA = L0x2001a8fc; PC = 0x80062a8 *)
mov L0x2001a8fc r3_b;
mov L0x2001a8fe r3_t;
(* str.w	r4, [r0, #16]                             #! EA = L0x2001a904; PC = 0x80062ac *)
mov L0x2001a904 r4_b;
mov L0x2001a906 r4_t;
(* str.w	r5, [r0, #24]                             #! EA = L0x2001a90c; PC = 0x80062b0 *)
mov L0x2001a90c r5_b;
mov L0x2001a90e r5_t;
(* str.w	r2, [r0], #4                              #! EA = L0x2001a8f4; PC = 0x80062b4 *)
mov L0x2001a8f4 r2_b;
mov L0x2001a8f6 r2_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a47c; Value = 0x00000001; PC = 0x80062b8 *)
mov r12_b L0x2001a47c;
mov r12_t L0x2001a47e;
(* subs.w	r12, r12, #1                             #! PC = 0x80062bc *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060b4 <ntt_fast+564>                 #! PC = 0x80062c0 *)
#bne.w	0x80060b4 <ntt_fast+564>                 #! 0x80062c0 = 0x80062c0;
(* add.w	r0, r0, #56	; 0x38                        #! PC = 0x80062c4 *)
adds dontcare r0_b r0_b 56@uint16;
(* add.w	r1, r1, #14                               #! PC = 0x80062c8 *)
adds dontcare r1_b r1_b 14@uint16;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000001; PC = 0x80062cc *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x80062d0 *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80060ac <ntt_fast+556>                 #! PC = 0x80062d4 *)
#bne.w	0x80060ac <ntt_fast+556>                 #! 0x80062d4 = 0x80062d4;

(* END OF LAYERS 4+3+2 *)

cut
and [
eqmod 
(inp_poly * inp_poly)
(
L0x2001a730*(x**0) + L0x2001a732*(x**1) + 
L0x2001a734*(x**2) + L0x2001a736*(x**3)
)
[3329, x**4 - 289],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a738*(x**0) + L0x2001a73a*(x**1) + 
L0x2001a73c*(x**2) + L0x2001a73e*(x**3)
)
[3329, x**4 - 3040],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a740*(x**0) + L0x2001a742*(x**1) + 
L0x2001a744*(x**2) + L0x2001a746*(x**3)
)
[3329, x**4 - 331],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a748*(x**0) + L0x2001a74a*(x**1) + 
L0x2001a74c*(x**2) + L0x2001a74e*(x**3)
)
[3329, x**4 - 2998],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a750*(x**0) + L0x2001a752*(x**1) + 
L0x2001a754*(x**2) + L0x2001a756*(x**3)
)
[3329, x**4 - 3253],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a758*(x**0) + L0x2001a75a*(x**1) + 
L0x2001a75c*(x**2) + L0x2001a75e*(x**3)
)
[3329, x**4 - 76],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a760*(x**0) + L0x2001a762*(x**1) + 
L0x2001a764*(x**2) + L0x2001a766*(x**3)
)
[3329, x**4 - 1756],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a768*(x**0) + L0x2001a76a*(x**1) + 
L0x2001a76c*(x**2) + L0x2001a76e*(x**3)
)
[3329, x**4 - 1573],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a770*(x**0) + L0x2001a772*(x**1) + 
L0x2001a774*(x**2) + L0x2001a776*(x**3)
)
[3329, x**4 - 1197],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a778*(x**0) + L0x2001a77a*(x**1) + 
L0x2001a77c*(x**2) + L0x2001a77e*(x**3)
)
[3329, x**4 - 2132],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a780*(x**0) + L0x2001a782*(x**1) + 
L0x2001a784*(x**2) + L0x2001a786*(x**3)
)
[3329, x**4 - 2304],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a788*(x**0) + L0x2001a78a*(x**1) + 
L0x2001a78c*(x**2) + L0x2001a78e*(x**3)
)
[3329, x**4 - 1025],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a790*(x**0) + L0x2001a792*(x**1) + 
L0x2001a794*(x**2) + L0x2001a796*(x**3)
)
[3329, x**4 - 2277],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a798*(x**0) + L0x2001a79a*(x**1) + 
L0x2001a79c*(x**2) + L0x2001a79e*(x**3)
)
[3329, x**4 - 1052],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7a0*(x**0) + L0x2001a7a2*(x**1) + 
L0x2001a7a4*(x**2) + L0x2001a7a6*(x**3)
)
[3329, x**4 - 2055],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7a8*(x**0) + L0x2001a7aa*(x**1) + 
L0x2001a7ac*(x**2) + L0x2001a7ae*(x**3)
)
[3329, x**4 - 1274],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7b0*(x**0) + L0x2001a7b2*(x**1) + 
L0x2001a7b4*(x**2) + L0x2001a7b6*(x**3)
)
[3329, x**4 - 650],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7b8*(x**0) + L0x2001a7ba*(x**1) + 
L0x2001a7bc*(x**2) + L0x2001a7be*(x**3)
)
[3329, x**4 - 2679],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7c0*(x**0) + L0x2001a7c2*(x**1) + 
L0x2001a7c4*(x**2) + L0x2001a7c6*(x**3)
)
[3329, x**4 - 1977],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7c8*(x**0) + L0x2001a7ca*(x**1) + 
L0x2001a7cc*(x**2) + L0x2001a7ce*(x**3)
)
[3329, x**4 - 1352],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7d0*(x**0) + L0x2001a7d2*(x**1) + 
L0x2001a7d4*(x**2) + L0x2001a7d6*(x**3)
)
[3329, x**4 - 2513],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7d8*(x**0) + L0x2001a7da*(x**1) + 
L0x2001a7dc*(x**2) + L0x2001a7de*(x**3)
)
[3329, x**4 - 816],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7e0*(x**0) + L0x2001a7e2*(x**1) + 
L0x2001a7e4*(x**2) + L0x2001a7e6*(x**3)
)
[3329, x**4 - 632],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7e8*(x**0) + L0x2001a7ea*(x**1) + 
L0x2001a7ec*(x**2) + L0x2001a7ee*(x**3)
)
[3329, x**4 - 2697],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7f0*(x**0) + L0x2001a7f2*(x**1) + 
L0x2001a7f4*(x**2) + L0x2001a7f6*(x**3)
)
[3329, x**4 - 2865],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7f8*(x**0) + L0x2001a7fa*(x**1) + 
L0x2001a7fc*(x**2) + L0x2001a7fe*(x**3)
)
[3329, x**4 - 464],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a800*(x**0) + L0x2001a802*(x**1) + 
L0x2001a804*(x**2) + L0x2001a806*(x**3)
)
[3329, x**4 - 33],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a808*(x**0) + L0x2001a80a*(x**1) + 
L0x2001a80c*(x**2) + L0x2001a80e*(x**3)
)
[3329, x**4 - 3296],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a810*(x**0) + L0x2001a812*(x**1) + 
L0x2001a814*(x**2) + L0x2001a816*(x**3)
)
[3329, x**4 - 1320],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a818*(x**0) + L0x2001a81a*(x**1) + 
L0x2001a81c*(x**2) + L0x2001a81e*(x**3)
)
[3329, x**4 - 2009],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a820*(x**0) + L0x2001a822*(x**1) + 
L0x2001a824*(x**2) + L0x2001a826*(x**3)
)
[3329, x**4 - 1915],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a828*(x**0) + L0x2001a82a*(x**1) + 
L0x2001a82c*(x**2) + L0x2001a82e*(x**3)
)
[3329, x**4 - 1414],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a830*(x**0) + L0x2001a832*(x**1) + 
L0x2001a834*(x**2) + L0x2001a836*(x**3)
)
[3329, x**4 - 2319],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a838*(x**0) + L0x2001a83a*(x**1) + 
L0x2001a83c*(x**2) + L0x2001a83e*(x**3)
)
[3329, x**4 - 1010],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a840*(x**0) + L0x2001a842*(x**1) + 
L0x2001a844*(x**2) + L0x2001a846*(x**3)
)
[3329, x**4 - 1435],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a848*(x**0) + L0x2001a84a*(x**1) + 
L0x2001a84c*(x**2) + L0x2001a84e*(x**3)
)
[3329, x**4 - 1894],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a850*(x**0) + L0x2001a852*(x**1) + 
L0x2001a854*(x**2) + L0x2001a856*(x**3)
)
[3329, x**4 - 807],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a858*(x**0) + L0x2001a85a*(x**1) + 
L0x2001a85c*(x**2) + L0x2001a85e*(x**3)
)
[3329, x**4 - 2522],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a860*(x**0) + L0x2001a862*(x**1) + 
L0x2001a864*(x**2) + L0x2001a866*(x**3)
)
[3329, x**4 - 452],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a868*(x**0) + L0x2001a86a*(x**1) + 
L0x2001a86c*(x**2) + L0x2001a86e*(x**3)
)
[3329, x**4 - 2877],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a870*(x**0) + L0x2001a872*(x**1) + 
L0x2001a874*(x**2) + L0x2001a876*(x**3)
)
[3329, x**4 - 1438],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a878*(x**0) + L0x2001a87a*(x**1) + 
L0x2001a87c*(x**2) + L0x2001a87e*(x**3)
)
[3329, x**4 - 1891],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a880*(x**0) + L0x2001a882*(x**1) + 
L0x2001a884*(x**2) + L0x2001a886*(x**3)
)
[3329, x**4 - 2868],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a888*(x**0) + L0x2001a88a*(x**1) + 
L0x2001a88c*(x**2) + L0x2001a88e*(x**3)
)
[3329, x**4 - 461],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a890*(x**0) + L0x2001a892*(x**1) + 
L0x2001a894*(x**2) + L0x2001a896*(x**3)
)
[3329, x**4 - 1534],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a898*(x**0) + L0x2001a89a*(x**1) + 
L0x2001a89c*(x**2) + L0x2001a89e*(x**3)
)
[3329, x**4 - 1795],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8a0*(x**0) + L0x2001a8a2*(x**1) + 
L0x2001a8a4*(x**2) + L0x2001a8a6*(x**3)
)
[3329, x**4 - 2402],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8a8*(x**0) + L0x2001a8aa*(x**1) + 
L0x2001a8ac*(x**2) + L0x2001a8ae*(x**3)
)
[3329, x**4 - 927],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8b0*(x**0) + L0x2001a8b2*(x**1) + 
L0x2001a8b4*(x**2) + L0x2001a8b6*(x**3)
)
[3329, x**4 - 2647],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8b8*(x**0) + L0x2001a8ba*(x**1) + 
L0x2001a8bc*(x**2) + L0x2001a8be*(x**3)
)
[3329, x**4 - 682],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8c0*(x**0) + L0x2001a8c2*(x**1) + 
L0x2001a8c4*(x**2) + L0x2001a8c6*(x**3)
)
[3329, x**4 - 2617],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8c8*(x**0) + L0x2001a8ca*(x**1) + 
L0x2001a8cc*(x**2) + L0x2001a8ce*(x**3)
)
[3329, x**4 - 712],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8d0*(x**0) + L0x2001a8d2*(x**1) + 
L0x2001a8d4*(x**2) + L0x2001a8d6*(x**3)
)
[3329, x**4 - 1481],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8d8*(x**0) + L0x2001a8da*(x**1) + 
L0x2001a8dc*(x**2) + L0x2001a8de*(x**3)
)
[3329, x**4 - 1848],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8e0*(x**0) + L0x2001a8e2*(x**1) + 
L0x2001a8e4*(x**2) + L0x2001a8e6*(x**3)
)
[3329, x**4 - 648],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8e8*(x**0) + L0x2001a8ea*(x**1) + 
L0x2001a8ec*(x**2) + L0x2001a8ee*(x**3)
)
[3329, x**4 - 2681],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8f0*(x**0) + L0x2001a8f2*(x**1) + 
L0x2001a8f4*(x**2) + L0x2001a8f6*(x**3)
)
[3329, x**4 - 2474],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8f8*(x**0) + L0x2001a8fa*(x**1) + 
L0x2001a8fc*(x**2) + L0x2001a8fe*(x**3)
)
[3329, x**4 - 855],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a900*(x**0) + L0x2001a902*(x**1) + 
L0x2001a904*(x**2) + L0x2001a906*(x**3)
)
[3329, x**4 - 3110],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a908*(x**0) + L0x2001a90a*(x**1) + 
L0x2001a90c*(x**2) + L0x2001a90e*(x**3)
)
[3329, x**4 - 219],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a910*(x**0) + L0x2001a912*(x**1) + 
L0x2001a914*(x**2) + L0x2001a916*(x**3)
)
[3329, x**4 - 1227],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a918*(x**0) + L0x2001a91a*(x**1) + 
L0x2001a91c*(x**2) + L0x2001a91e*(x**3)
)
[3329, x**4 - 2102],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a920*(x**0) + L0x2001a922*(x**1) + 
L0x2001a924*(x**2) + L0x2001a926*(x**3)
)
[3329, x**4 - 910],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a928*(x**0) + L0x2001a92a*(x**1) + 
L0x2001a92c*(x**2) + L0x2001a92e*(x**3)
)
[3329, x**4 - 2419]
]
&&
and [
   (-5)@16 * 3329@16 <s L0x2001a730, L0x2001a730 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a732, L0x2001a732 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a734, L0x2001a734 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a736, L0x2001a736 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a738, L0x2001a738 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a73a, L0x2001a73a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a73c, L0x2001a73c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a73e, L0x2001a73e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a740, L0x2001a740 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a742, L0x2001a742 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a744, L0x2001a744 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a746, L0x2001a746 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a748, L0x2001a748 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a74a, L0x2001a74a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a74c, L0x2001a74c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a74e, L0x2001a74e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a750, L0x2001a750 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a752, L0x2001a752 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a754, L0x2001a754 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a756, L0x2001a756 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a758, L0x2001a758 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a75a, L0x2001a75a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a75c, L0x2001a75c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a75e, L0x2001a75e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a760, L0x2001a760 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a762, L0x2001a762 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a764, L0x2001a764 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a766, L0x2001a766 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a768, L0x2001a768 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a76a, L0x2001a76a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a76c, L0x2001a76c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a76e, L0x2001a76e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a770, L0x2001a770 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a772, L0x2001a772 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a774, L0x2001a774 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a776, L0x2001a776 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a778, L0x2001a778 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a77a, L0x2001a77a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a77c, L0x2001a77c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a77e, L0x2001a77e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a780, L0x2001a780 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a782, L0x2001a782 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a784, L0x2001a784 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a786, L0x2001a786 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a788, L0x2001a788 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a78a, L0x2001a78a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a78c, L0x2001a78c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a78e, L0x2001a78e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a790, L0x2001a790 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a792, L0x2001a792 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a794, L0x2001a794 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a796, L0x2001a796 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a798, L0x2001a798 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a79a, L0x2001a79a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a79c, L0x2001a79c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a79e, L0x2001a79e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7a0, L0x2001a7a0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7a2, L0x2001a7a2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7a4, L0x2001a7a4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7a6, L0x2001a7a6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7a8, L0x2001a7a8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7aa, L0x2001a7aa <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ac, L0x2001a7ac <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ae, L0x2001a7ae <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7b0, L0x2001a7b0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7b2, L0x2001a7b2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7b4, L0x2001a7b4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7b6, L0x2001a7b6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7b8, L0x2001a7b8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ba, L0x2001a7ba <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7bc, L0x2001a7bc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7be, L0x2001a7be <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7c0, L0x2001a7c0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7c2, L0x2001a7c2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7c4, L0x2001a7c4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7c6, L0x2001a7c6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7c8, L0x2001a7c8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ca, L0x2001a7ca <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7cc, L0x2001a7cc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ce, L0x2001a7ce <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7d0, L0x2001a7d0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7d2, L0x2001a7d2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7d4, L0x2001a7d4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7d6, L0x2001a7d6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7d8, L0x2001a7d8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7da, L0x2001a7da <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7dc, L0x2001a7dc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7de, L0x2001a7de <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7e0, L0x2001a7e0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7e2, L0x2001a7e2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7e4, L0x2001a7e4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7e6, L0x2001a7e6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7e8, L0x2001a7e8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ea, L0x2001a7ea <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ec, L0x2001a7ec <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7ee, L0x2001a7ee <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7f0, L0x2001a7f0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7f2, L0x2001a7f2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7f4, L0x2001a7f4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7f6, L0x2001a7f6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7f8, L0x2001a7f8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7fa, L0x2001a7fa <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7fc, L0x2001a7fc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a7fe, L0x2001a7fe <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a800, L0x2001a800 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a802, L0x2001a802 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a804, L0x2001a804 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a806, L0x2001a806 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a808, L0x2001a808 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a80a, L0x2001a80a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a80c, L0x2001a80c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a80e, L0x2001a80e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a810, L0x2001a810 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a812, L0x2001a812 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a814, L0x2001a814 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a816, L0x2001a816 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a818, L0x2001a818 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a81a, L0x2001a81a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a81c, L0x2001a81c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a81e, L0x2001a81e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a820, L0x2001a820 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a822, L0x2001a822 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a824, L0x2001a824 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a826, L0x2001a826 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a828, L0x2001a828 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a82a, L0x2001a82a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a82c, L0x2001a82c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a82e, L0x2001a82e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a830, L0x2001a830 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a832, L0x2001a832 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a834, L0x2001a834 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a836, L0x2001a836 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a838, L0x2001a838 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a83a, L0x2001a83a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a83c, L0x2001a83c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a83e, L0x2001a83e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a840, L0x2001a840 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a842, L0x2001a842 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a844, L0x2001a844 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a846, L0x2001a846 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a848, L0x2001a848 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a84a, L0x2001a84a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a84c, L0x2001a84c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a84e, L0x2001a84e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a850, L0x2001a850 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a852, L0x2001a852 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a854, L0x2001a854 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a856, L0x2001a856 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a858, L0x2001a858 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a85a, L0x2001a85a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a85c, L0x2001a85c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a85e, L0x2001a85e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a860, L0x2001a860 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a862, L0x2001a862 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a864, L0x2001a864 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a866, L0x2001a866 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a868, L0x2001a868 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a86a, L0x2001a86a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a86c, L0x2001a86c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a86e, L0x2001a86e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a870, L0x2001a870 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a872, L0x2001a872 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a874, L0x2001a874 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a876, L0x2001a876 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a878, L0x2001a878 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a87a, L0x2001a87a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a87c, L0x2001a87c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a87e, L0x2001a87e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a880, L0x2001a880 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a882, L0x2001a882 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a884, L0x2001a884 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a886, L0x2001a886 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a888, L0x2001a888 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a88a, L0x2001a88a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a88c, L0x2001a88c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a88e, L0x2001a88e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a890, L0x2001a890 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a892, L0x2001a892 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a894, L0x2001a894 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a896, L0x2001a896 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a898, L0x2001a898 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a89a, L0x2001a89a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a89c, L0x2001a89c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a89e, L0x2001a89e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8a0, L0x2001a8a0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8a2, L0x2001a8a2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8a4, L0x2001a8a4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8a6, L0x2001a8a6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8a8, L0x2001a8a8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8aa, L0x2001a8aa <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ac, L0x2001a8ac <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ae, L0x2001a8ae <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8b0, L0x2001a8b0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8b2, L0x2001a8b2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8b4, L0x2001a8b4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8b6, L0x2001a8b6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8b8, L0x2001a8b8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ba, L0x2001a8ba <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8bc, L0x2001a8bc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8be, L0x2001a8be <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8c0, L0x2001a8c0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8c2, L0x2001a8c2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8c4, L0x2001a8c4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8c6, L0x2001a8c6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8c8, L0x2001a8c8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ca, L0x2001a8ca <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8cc, L0x2001a8cc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ce, L0x2001a8ce <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8d0, L0x2001a8d0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8d2, L0x2001a8d2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8d4, L0x2001a8d4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8d6, L0x2001a8d6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8d8, L0x2001a8d8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8da, L0x2001a8da <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8dc, L0x2001a8dc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8de, L0x2001a8de <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8e0, L0x2001a8e0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8e2, L0x2001a8e2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8e4, L0x2001a8e4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8e6, L0x2001a8e6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8e8, L0x2001a8e8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ea, L0x2001a8ea <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ec, L0x2001a8ec <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8ee, L0x2001a8ee <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8f0, L0x2001a8f0 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8f2, L0x2001a8f2 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8f4, L0x2001a8f4 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8f6, L0x2001a8f6 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8f8, L0x2001a8f8 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8fa, L0x2001a8fa <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8fc, L0x2001a8fc <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a8fe, L0x2001a8fe <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a900, L0x2001a900 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a902, L0x2001a902 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a904, L0x2001a904 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a906, L0x2001a906 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a908, L0x2001a908 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a90a, L0x2001a90a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a90c, L0x2001a90c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a90e, L0x2001a90e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a910, L0x2001a910 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a912, L0x2001a912 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a914, L0x2001a914 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a916, L0x2001a916 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a918, L0x2001a918 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a91a, L0x2001a91a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a91c, L0x2001a91c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a91e, L0x2001a91e <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a920, L0x2001a920 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a922, L0x2001a922 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a924, L0x2001a924 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a926, L0x2001a926 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a928, L0x2001a928 <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a92a, L0x2001a92a <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a92c, L0x2001a92c <s 5@16 * 3329@16,
   (-5)@16 * 3329@16 <s L0x2001a92e, L0x2001a92e <s 5@16 * 3329@16
];


(* sub.w	r0, r0, #512	; 0x200                      #! PC = 0x80062d8 *)
subs dontcare r0_b r0_b 512@uint16;
(* movw	r12, #16                                   #! PC = 0x80062dc *)
mov r12_b 16@sint16;
mov r12_t 0@sint16;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a730; Value = 0x0c2ff61d; PC = 0x80062e4 *)
mov r2_b L0x2001a730;
mov r2_t L0x2001a732;
mov r3_b L0x2001a734;
mov r3_t L0x2001a736;
mov r4_b L0x2001a738;
mov r4_t L0x2001a73a;
mov r5_b L0x2001a73c;
mov r5_t L0x2001a73e;
mov r6_b L0x2001a740;
mov r6_t L0x2001a742;
mov r7_b L0x2001a744;
mov r7_t L0x2001a746;
mov r8_b L0x2001a748;
mov r8_t L0x2001a74a;
mov r9_b L0x2001a74c;
mov r9_t L0x2001a74e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e552; Value = 0x01ae08b2; PC = 0x80062e8 *)
mov r10_b L0x800e552;
mov r10_t L0x800e554;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e556; Value = 0x034b022b; PC = 0x8006334 *)
mov r10_b L0x800e556;
mov r10_t L0x800e558;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b00@sint16, r2_t00@sint16, r3_b00@sint16, r3_t00@sint16,
      r4_b00@sint16, r4_t00@sint16, r5_b00@sint16, r5_t00@sint16,
      r6_b00@sint16, r6_t00@sint16, r7_b00@sint16, r7_t00@sint16, 
      r8_b00@sint16, r8_t00@sint16, r9_b00@sint16, r9_t00@sint16 :
  and [r2_b00 = r2_b, r2_t00 = r2_t, r3_b00 = r3_b, r3_t00 = r3_t,
       r4_b00 = r4_b, r4_t00 = r4_t, r5_b00 = r5_b, r5_t00 = r5_t, 
       r6_b00 = r6_b, r6_t00 = r6_t, r7_b00 = r7_b, r7_t00 = r7_t, 
       r8_b00 = r8_b, r8_t00 = r8_t, r9_b00 = r9_b, r9_t00 = r9_t ] &&
  and [r2_b00 = r2_b, r2_t00 = r2_t, r3_b00 = r3_b, r3_t00 = r3_t,
       r4_b00 = r4_b, r4_t00 = r4_t, r5_b00 = r5_b, r5_t00 = r5_t, 
       r6_b00 = r6_b, r6_t00 = r6_t, r7_b00 = r7_b, r7_t00 = r7_t, 
       r8_b00 = r8_b, r8_t00 = r8_t, r9_b00 = r9_b, r9_t00 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b00 (3329@16);
assert true && eqsmod r2_t r2_t00 (3329@16);
assert true && eqsmod r3_b r3_b00 (3329@16);
assert true && eqsmod r3_t r3_t00 (3329@16);
assert true && eqsmod r4_b r4_b00 (3329@16);
assert true && eqsmod r4_t r4_t00 (3329@16);
assert true && eqsmod r5_b r5_b00 (3329@16);
assert true && eqsmod r5_t r5_t00 (3329@16);
assert true && eqsmod r6_b r6_b00 (3329@16);
assert true && eqsmod r6_t r6_t00 (3329@16);
assert true && eqsmod r7_b r7_b00 (3329@16);
assert true && eqsmod r7_t r7_t00 (3329@16);
assert true && eqsmod r8_b r8_b00 (3329@16);
assert true && eqsmod r8_t r8_t00 (3329@16);
assert true && eqsmod r9_b r9_b00 (3329@16);
assert true && eqsmod r9_t r9_t00 (3329@16);
assume and [eqmod r2_b r2_b00 3329, eqmod r2_t r2_t00 3329,
            eqmod r3_b r3_b00 3329, eqmod r3_t r3_t00 3329,
            eqmod r4_b r4_b00 3329, eqmod r4_t r4_t00 3329,
            eqmod r5_b r5_b00 3329, eqmod r5_t r5_t00 3329,
            eqmod r6_b r6_b00 3329, eqmod r6_t r6_t00 3329,
            eqmod r7_b r7_b00 3329, eqmod r7_t r7_t00 3329,
            eqmod r8_b r8_b00 3329, eqmod r8_t r8_t00 3329,
            eqmod r9_b r9_b00 3329, eqmod r9_t r9_t00 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a730; PC = 0x8006484 *)
mov L0x2001a730 r2_b;
mov L0x2001a732 r2_t;
mov L0x2001a734 r3_b;
mov L0x2001a736 r3_t;
mov L0x2001a738 r4_b;
mov L0x2001a73a r4_t;
mov L0x2001a73c r5_b;
mov L0x2001a73e r5_t;
mov L0x2001a740 r6_b;
mov L0x2001a742 r6_t;
mov L0x2001a744 r7_b;
mov L0x2001a746 r7_t;
mov L0x2001a748 r8_b;
mov L0x2001a74a r8_t;
mov L0x2001a74c r9_b;
mov L0x2001a74e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000010; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a750; Value = 0x09f6063e; PC = 0x80062e4 *)
mov r2_b L0x2001a750;
mov r2_t L0x2001a752;
mov r3_b L0x2001a754;
mov r3_t L0x2001a756;
mov r4_b L0x2001a758;
mov r4_t L0x2001a75a;
mov r5_b L0x2001a75c;
mov r5_t L0x2001a75e;
mov r6_b L0x2001a760;
mov r6_t L0x2001a762;
mov r7_b L0x2001a764;
mov r7_t L0x2001a766;
mov r8_b L0x2001a768;
mov r8_t L0x2001a76a;
mov r9_b L0x2001a76c;
mov r9_t L0x2001a76e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e55a; Value = 0x0367081e; PC = 0x80062e8 *)
mov r10_b L0x800e55a;
mov r10_t L0x800e55c;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e55e; Value = 0x0069060e; PC = 0x8006334 *)
mov r10_b L0x800e55e;
mov r10_t L0x800e560;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b01@sint16, r2_t01@sint16, r3_b01@sint16, r3_t01@sint16,
      r4_b01@sint16, r4_t01@sint16, r5_b01@sint16, r5_t01@sint16,
      r6_b01@sint16, r6_t01@sint16, r7_b01@sint16, r7_t01@sint16, 
      r8_b01@sint16, r8_t01@sint16, r9_b01@sint16, r9_t01@sint16 :
  and [r2_b01 = r2_b, r2_t01 = r2_t, r3_b01 = r3_b, r3_t01 = r3_t,
       r4_b01 = r4_b, r4_t01 = r4_t, r5_b01 = r5_b, r5_t01 = r5_t, 
       r6_b01 = r6_b, r6_t01 = r6_t, r7_b01 = r7_b, r7_t01 = r7_t, 
       r8_b01 = r8_b, r8_t01 = r8_t, r9_b01 = r9_b, r9_t01 = r9_t ] &&
  and [r2_b01 = r2_b, r2_t01 = r2_t, r3_b01 = r3_b, r3_t01 = r3_t,
       r4_b01 = r4_b, r4_t01 = r4_t, r5_b01 = r5_b, r5_t01 = r5_t, 
       r6_b01 = r6_b, r6_t01 = r6_t, r7_b01 = r7_b, r7_t01 = r7_t, 
       r8_b01 = r8_b, r8_t01 = r8_t, r9_b01 = r9_b, r9_t01 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b01 (3329@16);
assert true && eqsmod r2_t r2_t01 (3329@16);
assert true && eqsmod r3_b r3_b01 (3329@16);
assert true && eqsmod r3_t r3_t01 (3329@16);
assert true && eqsmod r4_b r4_b01 (3329@16);
assert true && eqsmod r4_t r4_t01 (3329@16);
assert true && eqsmod r5_b r5_b01 (3329@16);
assert true && eqsmod r5_t r5_t01 (3329@16);
assert true && eqsmod r6_b r6_b01 (3329@16);
assert true && eqsmod r6_t r6_t01 (3329@16);
assert true && eqsmod r7_b r7_b01 (3329@16);
assert true && eqsmod r7_t r7_t01 (3329@16);
assert true && eqsmod r8_b r8_b01 (3329@16);
assert true && eqsmod r8_t r8_t01 (3329@16);
assert true && eqsmod r9_b r9_b01 (3329@16);
assert true && eqsmod r9_t r9_t01 (3329@16);
assume and [eqmod r2_b r2_b01 3329, eqmod r2_t r2_t01 3329,
            eqmod r3_b r3_b01 3329, eqmod r3_t r3_t01 3329,
            eqmod r4_b r4_b01 3329, eqmod r4_t r4_t01 3329,
            eqmod r5_b r5_b01 3329, eqmod r5_t r5_t01 3329,
            eqmod r6_b r6_b01 3329, eqmod r6_t r6_t01 3329,
            eqmod r7_b r7_b01 3329, eqmod r7_t r7_t01 3329,
            eqmod r8_b r8_b01 3329, eqmod r8_t r8_t01 3329,
            eqmod r9_b r9_b01 3329, eqmod r9_t r9_t01 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a750; PC = 0x8006484 *)
mov L0x2001a750 r2_b;
mov L0x2001a752 r2_t;
mov L0x2001a754 r3_b;
mov L0x2001a756 r3_t;
mov L0x2001a758 r4_b;
mov L0x2001a75a r4_t;
mov L0x2001a75c r5_b;
mov L0x2001a75e r5_t;
mov L0x2001a760 r6_b;
mov L0x2001a762 r6_t;
mov L0x2001a764 r7_b;
mov L0x2001a766 r7_t;
mov L0x2001a768 r8_b;
mov L0x2001a76a r8_t;
mov L0x2001a76c r9_b;
mov L0x2001a76e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000f; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a770; Value = 0x0739eff6; PC = 0x80062e4 *)
mov r2_b L0x2001a770;
mov r2_t L0x2001a772;
mov r3_b L0x2001a774;
mov r3_t L0x2001a776;
mov r4_b L0x2001a778;
mov r4_t L0x2001a77a;
mov r5_b L0x2001a77c;
mov r5_t L0x2001a77e;
mov r6_b L0x2001a780;
mov r6_t L0x2001a782;
mov r7_b L0x2001a784;
mov r7_t L0x2001a786;
mov r8_b L0x2001a788;
mov r8_t L0x2001a78a;
mov r9_b L0x2001a78c;
mov r9_t L0x2001a78e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e562; Value = 0x024b01a6; PC = 0x80062e8 *)
mov r10_b L0x800e562;
mov r10_t L0x800e564;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e566; Value = 0x0c1600b1; PC = 0x8006334 *)
mov r10_b L0x800e566;
mov r10_t L0x800e568;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b02@sint16, r2_t02@sint16, r3_b02@sint16, r3_t02@sint16,
      r4_b02@sint16, r4_t02@sint16, r5_b02@sint16, r5_t02@sint16,
      r6_b02@sint16, r6_t02@sint16, r7_b02@sint16, r7_t02@sint16, 
      r8_b02@sint16, r8_t02@sint16, r9_b02@sint16, r9_t02@sint16 :
  and [r2_b02 = r2_b, r2_t02 = r2_t, r3_b02 = r3_b, r3_t02 = r3_t,
       r4_b02 = r4_b, r4_t02 = r4_t, r5_b02 = r5_b, r5_t02 = r5_t, 
       r6_b02 = r6_b, r6_t02 = r6_t, r7_b02 = r7_b, r7_t02 = r7_t, 
       r8_b02 = r8_b, r8_t02 = r8_t, r9_b02 = r9_b, r9_t02 = r9_t ] &&
  and [r2_b02 = r2_b, r2_t02 = r2_t, r3_b02 = r3_b, r3_t02 = r3_t,
       r4_b02 = r4_b, r4_t02 = r4_t, r5_b02 = r5_b, r5_t02 = r5_t, 
       r6_b02 = r6_b, r6_t02 = r6_t, r7_b02 = r7_b, r7_t02 = r7_t, 
       r8_b02 = r8_b, r8_t02 = r8_t, r9_b02 = r9_b, r9_t02 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b02 (3329@16);
assert true && eqsmod r2_t r2_t02 (3329@16);
assert true && eqsmod r3_b r3_b02 (3329@16);
assert true && eqsmod r3_t r3_t02 (3329@16);
assert true && eqsmod r4_b r4_b02 (3329@16);
assert true && eqsmod r4_t r4_t02 (3329@16);
assert true && eqsmod r5_b r5_b02 (3329@16);
assert true && eqsmod r5_t r5_t02 (3329@16);
assert true && eqsmod r6_b r6_b02 (3329@16);
assert true && eqsmod r6_t r6_t02 (3329@16);
assert true && eqsmod r7_b r7_b02 (3329@16);
assert true && eqsmod r7_t r7_t02 (3329@16);
assert true && eqsmod r8_b r8_b02 (3329@16);
assert true && eqsmod r8_t r8_t02 (3329@16);
assert true && eqsmod r9_b r9_b02 (3329@16);
assert true && eqsmod r9_t r9_t02 (3329@16);
assume and [eqmod r2_b r2_b02 3329, eqmod r2_t r2_t02 3329,
            eqmod r3_b r3_b02 3329, eqmod r3_t r3_t02 3329,
            eqmod r4_b r4_b02 3329, eqmod r4_t r4_t02 3329,
            eqmod r5_b r5_b02 3329, eqmod r5_t r5_t02 3329,
            eqmod r6_b r6_b02 3329, eqmod r6_t r6_t02 3329,
            eqmod r7_b r7_b02 3329, eqmod r7_t r7_t02 3329,
            eqmod r8_b r8_b02 3329, eqmod r8_t r8_t02 3329,
            eqmod r9_b r9_b02 3329, eqmod r9_t r9_t02 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a770; PC = 0x8006484 *)
mov L0x2001a770 r2_b;
mov L0x2001a772 r2_t;
mov L0x2001a774 r3_b;
mov L0x2001a776 r3_t;
mov L0x2001a778 r4_b;
mov L0x2001a77a r4_t;
mov L0x2001a77c r5_b;
mov L0x2001a77e r5_t;
mov L0x2001a780 r6_b;
mov L0x2001a782 r6_t;
mov L0x2001a784 r7_b;
mov L0x2001a786 r7_t;
mov L0x2001a788 r8_b;
mov L0x2001a78a r8_t;
mov L0x2001a78c r9_b;
mov L0x2001a78e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000e; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a790; Value = 0xfc62ef01; PC = 0x80062e4 *)
mov r2_b L0x2001a790;
mov r2_t L0x2001a792;
mov r3_b L0x2001a794;
mov r3_t L0x2001a796;
mov r4_b L0x2001a798;
mov r4_t L0x2001a79a;
mov r5_b L0x2001a79c;
mov r5_t L0x2001a79e;
mov r6_b L0x2001a7a0;
mov r6_t L0x2001a7a2;
mov r7_b L0x2001a7a4;
mov r7_t L0x2001a7a6;
mov r8_b L0x2001a7a8;
mov r8_t L0x2001a7aa;
mov r9_b L0x2001a7ac;
mov r9_t L0x2001a7ae;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e56a; Value = 0x0b350bde; PC = 0x80062e8 *)
mov r10_b L0x800e56a;
mov r10_t L0x800e56c;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e56e; Value = 0x06750626; PC = 0x8006334 *)
mov r10_b L0x800e56e;
mov r10_t L0x800e570;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b03@sint16, r2_t03@sint16, r3_b03@sint16, r3_t03@sint16,
      r4_b03@sint16, r4_t03@sint16, r5_b03@sint16, r5_t03@sint16,
      r6_b03@sint16, r6_t03@sint16, r7_b03@sint16, r7_t03@sint16, 
      r8_b03@sint16, r8_t03@sint16, r9_b03@sint16, r9_t03@sint16 :
  and [r2_b03 = r2_b, r2_t03 = r2_t, r3_b03 = r3_b, r3_t03 = r3_t,
       r4_b03 = r4_b, r4_t03 = r4_t, r5_b03 = r5_b, r5_t03 = r5_t, 
       r6_b03 = r6_b, r6_t03 = r6_t, r7_b03 = r7_b, r7_t03 = r7_t, 
       r8_b03 = r8_b, r8_t03 = r8_t, r9_b03 = r9_b, r9_t03 = r9_t ] &&
  and [r2_b03 = r2_b, r2_t03 = r2_t, r3_b03 = r3_b, r3_t03 = r3_t,
       r4_b03 = r4_b, r4_t03 = r4_t, r5_b03 = r5_b, r5_t03 = r5_t, 
       r6_b03 = r6_b, r6_t03 = r6_t, r7_b03 = r7_b, r7_t03 = r7_t, 
       r8_b03 = r8_b, r8_t03 = r8_t, r9_b03 = r9_b, r9_t03 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b03 (3329@16);
assert true && eqsmod r2_t r2_t03 (3329@16);
assert true && eqsmod r3_b r3_b03 (3329@16);
assert true && eqsmod r3_t r3_t03 (3329@16);
assert true && eqsmod r4_b r4_b03 (3329@16);
assert true && eqsmod r4_t r4_t03 (3329@16);
assert true && eqsmod r5_b r5_b03 (3329@16);
assert true && eqsmod r5_t r5_t03 (3329@16);
assert true && eqsmod r6_b r6_b03 (3329@16);
assert true && eqsmod r6_t r6_t03 (3329@16);
assert true && eqsmod r7_b r7_b03 (3329@16);
assert true && eqsmod r7_t r7_t03 (3329@16);
assert true && eqsmod r8_b r8_b03 (3329@16);
assert true && eqsmod r8_t r8_t03 (3329@16);
assert true && eqsmod r9_b r9_b03 (3329@16);
assert true && eqsmod r9_t r9_t03 (3329@16);
assume and [eqmod r2_b r2_b03 3329, eqmod r2_t r2_t03 3329,
            eqmod r3_b r3_b03 3329, eqmod r3_t r3_t03 3329,
            eqmod r4_b r4_b03 3329, eqmod r4_t r4_t03 3329,
            eqmod r5_b r5_b03 3329, eqmod r5_t r5_t03 3329,
            eqmod r6_b r6_b03 3329, eqmod r6_t r6_t03 3329,
            eqmod r7_b r7_b03 3329, eqmod r7_t r7_t03 3329,
            eqmod r8_b r8_b03 3329, eqmod r8_t r8_t03 3329,
            eqmod r9_b r9_b03 3329, eqmod r9_t r9_t03 3329]
    && true;

(* Stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a790; PC = 0x8006484 *)
mov L0x2001a790 r2_b;
mov L0x2001a792 r2_t;
mov L0x2001a794 r3_b;
mov L0x2001a796 r3_t;
mov L0x2001a798 r4_b;
mov L0x2001a79a r4_t;
mov L0x2001a79c r5_b;
mov L0x2001a79e r5_t;
mov L0x2001a7a0 r6_b;
mov L0x2001a7a2 r6_t;
mov L0x2001a7a4 r7_b;
mov L0x2001a7a6 r7_t;
mov L0x2001a7a8 r8_b;
mov L0x2001a7aa r8_t;
mov L0x2001a7ac r9_b;
mov L0x2001a7ae r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000d; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a7b0; Value = 0x0965fedf; PC = 0x80062e4 *)
mov r2_b L0x2001a7b0;
mov r2_t L0x2001a7b2;
mov r3_b L0x2001a7b4;
mov r3_t L0x2001a7b6;
mov r4_b L0x2001a7b8;
mov r4_t L0x2001a7ba;
mov r5_b L0x2001a7bc;
mov r5_t L0x2001a7be;
mov r6_b L0x2001a7c0;
mov r6_t L0x2001a7c2;
mov r7_b L0x2001a7c4;
mov r7_t L0x2001a7c6;
mov r8_b L0x2001a7c8;
mov r8_t L0x2001a7ca;
mov r9_b L0x2001a7cc;
mov r9_t L0x2001a7ce;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e572; Value = 0x030a0c0b; PC = 0x80062e8 *)
mov r10_b L0x800e572;
mov r10_t L0x800e574;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e576; Value = 0x0c6e0487; PC = 0x8006334 *)
mov r10_b L0x800e576;
mov r10_t L0x800e578;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b04@sint16, r2_t04@sint16, r3_b04@sint16, r3_t04@sint16,
      r4_b04@sint16, r4_t04@sint16, r5_b04@sint16, r5_t04@sint16,
      r6_b04@sint16, r6_t04@sint16, r7_b04@sint16, r7_t04@sint16, 
      r8_b04@sint16, r8_t04@sint16, r9_b04@sint16, r9_t04@sint16 :
  and [r2_b04 = r2_b, r2_t04 = r2_t, r3_b04 = r3_b, r3_t04 = r3_t,
       r4_b04 = r4_b, r4_t04 = r4_t, r5_b04 = r5_b, r5_t04 = r5_t, 
       r6_b04 = r6_b, r6_t04 = r6_t, r7_b04 = r7_b, r7_t04 = r7_t, 
       r8_b04 = r8_b, r8_t04 = r8_t, r9_b04 = r9_b, r9_t04 = r9_t ] &&
  and [r2_b04 = r2_b, r2_t04 = r2_t, r3_b04 = r3_b, r3_t04 = r3_t,
       r4_b04 = r4_b, r4_t04 = r4_t, r5_b04 = r5_b, r5_t04 = r5_t, 
       r6_b04 = r6_b, r6_t04 = r6_t, r7_b04 = r7_b, r7_t04 = r7_t, 
       r8_b04 = r8_b, r8_t04 = r8_t, r9_b04 = r9_b, r9_t04 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b04 (3329@16);
assert true && eqsmod r2_t r2_t04 (3329@16);
assert true && eqsmod r3_b r3_b04 (3329@16);
assert true && eqsmod r3_t r3_t04 (3329@16);
assert true && eqsmod r4_b r4_b04 (3329@16);
assert true && eqsmod r4_t r4_t04 (3329@16);
assert true && eqsmod r5_b r5_b04 (3329@16);
assert true && eqsmod r5_t r5_t04 (3329@16);
assert true && eqsmod r6_b r6_b04 (3329@16);
assert true && eqsmod r6_t r6_t04 (3329@16);
assert true && eqsmod r7_b r7_b04 (3329@16);
assert true && eqsmod r7_t r7_t04 (3329@16);
assert true && eqsmod r8_b r8_b04 (3329@16);
assert true && eqsmod r8_t r8_t04 (3329@16);
assert true && eqsmod r9_b r9_b04 (3329@16);
assert true && eqsmod r9_t r9_t04 (3329@16);
assume and [eqmod r2_b r2_b04 3329, eqmod r2_t r2_t04 3329,
            eqmod r3_b r3_b04 3329, eqmod r3_t r3_t04 3329,
            eqmod r4_b r4_b04 3329, eqmod r4_t r4_t04 3329,
            eqmod r5_b r5_b04 3329, eqmod r5_t r5_t04 3329,
            eqmod r6_b r6_b04 3329, eqmod r6_t r6_t04 3329,
            eqmod r7_b r7_b04 3329, eqmod r7_t r7_t04 3329,
            eqmod r8_b r8_b04 3329, eqmod r8_t r8_t04 3329,
            eqmod r9_b r9_b04 3329, eqmod r9_t r9_t04 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a7b0; PC = 0x8006484 *)
mov L0x2001a7b0 r2_b;
mov L0x2001a7b2 r2_t;
mov L0x2001a7b4 r3_b;
mov L0x2001a7b6 r3_t;
mov L0x2001a7b8 r4_b;
mov L0x2001a7ba r4_t;
mov L0x2001a7bc r5_b;
mov L0x2001a7be r5_t;
mov L0x2001a7c0 r6_b;
mov L0x2001a7c2 r6_t;
mov L0x2001a7c4 r7_b;
mov L0x2001a7c6 r7_t;
mov L0x2001a7c8 r8_b;
mov L0x2001a7ca r8_t;
mov L0x2001a7cc r9_b;
mov L0x2001a7ce r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000c; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a7d0; Value = 0x004f0820; PC = 0x80062e4 *)
mov r2_b L0x2001a7d0;
mov r2_t L0x2001a7d2;
mov r3_b L0x2001a7d4;
mov r3_t L0x2001a7d6;
mov r4_b L0x2001a7d8;
mov r4_t L0x2001a7da;
mov r5_b L0x2001a7dc;
mov r5_t L0x2001a7de;
mov r6_b L0x2001a7e0;
mov r6_t L0x2001a7e2;
mov r7_b L0x2001a7e4;
mov r7_t L0x2001a7e6;
mov r8_b L0x2001a7e8;
mov r8_t L0x2001a7ea;
mov r9_b L0x2001a7ec;
mov r9_t L0x2001a7ee;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e57a; Value = 0x05cb09f8; PC = 0x80062e8 *)
mov r10_b L0x800e57a;
mov r10_t L0x800e57c;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e57e; Value = 0x045f0aa7; PC = 0x8006334 *)
mov r10_b L0x800e57e;
mov r10_t L0x800e580;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b05@sint16, r2_t05@sint16, r3_b05@sint16, r3_t05@sint16,
      r4_b05@sint16, r4_t05@sint16, r5_b05@sint16, r5_t05@sint16,
      r6_b05@sint16, r6_t05@sint16, r7_b05@sint16, r7_t05@sint16, 
      r8_b05@sint16, r8_t05@sint16, r9_b05@sint16, r9_t05@sint16 :
  and [r2_b05 = r2_b, r2_t05 = r2_t, r3_b05 = r3_b, r3_t05 = r3_t,
       r4_b05 = r4_b, r4_t05 = r4_t, r5_b05 = r5_b, r5_t05 = r5_t, 
       r6_b05 = r6_b, r6_t05 = r6_t, r7_b05 = r7_b, r7_t05 = r7_t, 
       r8_b05 = r8_b, r8_t05 = r8_t, r9_b05 = r9_b, r9_t05 = r9_t ] &&
  and [r2_b05 = r2_b, r2_t05 = r2_t, r3_b05 = r3_b, r3_t05 = r3_t,
       r4_b05 = r4_b, r4_t05 = r4_t, r5_b05 = r5_b, r5_t05 = r5_t, 
       r6_b05 = r6_b, r6_t05 = r6_t, r7_b05 = r7_b, r7_t05 = r7_t, 
       r8_b05 = r8_b, r8_t05 = r8_t, r9_b05 = r9_b, r9_t05 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b05 (3329@16);
assert true && eqsmod r2_t r2_t05 (3329@16);
assert true && eqsmod r3_b r3_b05 (3329@16);
assert true && eqsmod r3_t r3_t05 (3329@16);
assert true && eqsmod r4_b r4_b05 (3329@16);
assert true && eqsmod r4_t r4_t05 (3329@16);
assert true && eqsmod r5_b r5_b05 (3329@16);
assert true && eqsmod r5_t r5_t05 (3329@16);
assert true && eqsmod r6_b r6_b05 (3329@16);
assert true && eqsmod r6_t r6_t05 (3329@16);
assert true && eqsmod r7_b r7_b05 (3329@16);
assert true && eqsmod r7_t r7_t05 (3329@16);
assert true && eqsmod r8_b r8_b05 (3329@16);
assert true && eqsmod r8_t r8_t05 (3329@16);
assert true && eqsmod r9_b r9_b05 (3329@16);
assert true && eqsmod r9_t r9_t05 (3329@16);
assume and [eqmod r2_b r2_b05 3329, eqmod r2_t r2_t05 3329,
            eqmod r3_b r3_b05 3329, eqmod r3_t r3_t05 3329,
            eqmod r4_b r4_b05 3329, eqmod r4_t r4_t05 3329,
            eqmod r5_b r5_b05 3329, eqmod r5_t r5_t05 3329,
            eqmod r6_b r6_b05 3329, eqmod r6_t r6_t05 3329,
            eqmod r7_b r7_b05 3329, eqmod r7_t r7_t05 3329,
            eqmod r8_b r8_b05 3329, eqmod r8_t r8_t05 3329,
            eqmod r9_b r9_b05 3329, eqmod r9_t r9_t05 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a7d0; PC = 0x8006484 *)
mov L0x2001a7d0 r2_b;
mov L0x2001a7d2 r2_t;
mov L0x2001a7d4 r3_b;
mov L0x2001a7d6 r3_t;
mov L0x2001a7d8 r4_b;
mov L0x2001a7da r4_t;
mov L0x2001a7dc r5_b;
mov L0x2001a7de r5_t;
mov L0x2001a7e0 r6_b;
mov L0x2001a7e2 r6_t;
mov L0x2001a7e4 r7_b;
mov L0x2001a7e6 r7_t;
mov L0x2001a7e8 r8_b;
mov L0x2001a7ea r8_t;
mov L0x2001a7ec r9_b;
mov L0x2001a7ee r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000b; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a7f0; Value = 0xf51afc62; PC = 0x80062e4 *)
mov r2_b L0x2001a7f0;
mov r2_t L0x2001a7f2;
mov r3_b L0x2001a7f4;
mov r3_t L0x2001a7f6;
mov r4_b L0x2001a7f8;
mov r4_t L0x2001a7fa;
mov r5_b L0x2001a7fc;
mov r5_t L0x2001a7fe;
mov r6_b L0x2001a800;
mov r6_t L0x2001a802;
mov r7_b L0x2001a804;
mov r7_t L0x2001a806;
mov r8_b L0x2001a808;
mov r8_t L0x2001a80a;
mov r9_b L0x2001a80c;
mov r9_t L0x2001a80e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e582; Value = 0x028406cb; PC = 0x80062e8 *)
mov r10_b L0x800e582;
mov r10_t L0x800e584;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e586; Value = 0x015d0999; PC = 0x8006334 *)
mov r10_b L0x800e586;
mov r10_t L0x800e588;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b06@sint16, r2_t06@sint16, r3_b06@sint16, r3_t06@sint16,
      r4_b06@sint16, r4_t06@sint16, r5_b06@sint16, r5_t06@sint16,
      r6_b06@sint16, r6_t06@sint16, r7_b06@sint16, r7_t06@sint16, 
      r8_b06@sint16, r8_t06@sint16, r9_b06@sint16, r9_t06@sint16 :
  and [r2_b06 = r2_b, r2_t06 = r2_t, r3_b06 = r3_b, r3_t06 = r3_t,
       r4_b06 = r4_b, r4_t06 = r4_t, r5_b06 = r5_b, r5_t06 = r5_t, 
       r6_b06 = r6_b, r6_t06 = r6_t, r7_b06 = r7_b, r7_t06 = r7_t, 
       r8_b06 = r8_b, r8_t06 = r8_t, r9_b06 = r9_b, r9_t06 = r9_t ] &&
  and [r2_b06 = r2_b, r2_t06 = r2_t, r3_b06 = r3_b, r3_t06 = r3_t,
       r4_b06 = r4_b, r4_t06 = r4_t, r5_b06 = r5_b, r5_t06 = r5_t, 
       r6_b06 = r6_b, r6_t06 = r6_t, r7_b06 = r7_b, r7_t06 = r7_t, 
       r8_b06 = r8_b, r8_t06 = r8_t, r9_b06 = r9_b, r9_t06 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b06 (3329@16);
assert true && eqsmod r2_t r2_t06 (3329@16);
assert true && eqsmod r3_b r3_b06 (3329@16);
assert true && eqsmod r3_t r3_t06 (3329@16);
assert true && eqsmod r4_b r4_b06 (3329@16);
assert true && eqsmod r4_t r4_t06 (3329@16);
assert true && eqsmod r5_b r5_b06 (3329@16);
assert true && eqsmod r5_t r5_t06 (3329@16);
assert true && eqsmod r6_b r6_b06 (3329@16);
assert true && eqsmod r6_t r6_t06 (3329@16);
assert true && eqsmod r7_b r7_b06 (3329@16);
assert true && eqsmod r7_t r7_t06 (3329@16);
assert true && eqsmod r8_b r8_b06 (3329@16);
assert true && eqsmod r8_t r8_t06 (3329@16);
assert true && eqsmod r9_b r9_b06 (3329@16);
assert true && eqsmod r9_t r9_t06 (3329@16);
assume and [eqmod r2_b r2_b06 3329, eqmod r2_t r2_t06 3329,
            eqmod r3_b r3_b06 3329, eqmod r3_t r3_t06 3329,
            eqmod r4_b r4_b06 3329, eqmod r4_t r4_t06 3329,
            eqmod r5_b r5_b06 3329, eqmod r5_t r5_t06 3329,
            eqmod r6_b r6_b06 3329, eqmod r6_t r6_t06 3329,
            eqmod r7_b r7_b06 3329, eqmod r7_t r7_t06 3329,
            eqmod r8_b r8_b06 3329, eqmod r8_t r8_t06 3329,
            eqmod r9_b r9_b06 3329, eqmod r9_t r9_t06 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a7f0; PC = 0x8006484 *)
mov L0x2001a7f0 r2_b;
mov L0x2001a7f2 r2_t;
mov L0x2001a7f4 r3_b;
mov L0x2001a7f6 r3_t;
mov L0x2001a7f8 r4_b;
mov L0x2001a7fa r4_t;
mov L0x2001a7fc r5_b;
mov L0x2001a7fe r5_t;
mov L0x2001a800 r6_b;
mov L0x2001a802 r6_t;
mov L0x2001a804 r7_b;
mov L0x2001a806 r7_t;
mov L0x2001a808 r8_b;
mov L0x2001a80a r8_t;
mov L0x2001a80c r9_b;
mov L0x2001a80e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x0000000a; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a810; Value = 0x00d5f928; PC = 0x80062e4 *)
mov r2_b L0x2001a810;
mov r2_t L0x2001a812;
mov r3_b L0x2001a814;
mov r3_t L0x2001a816;
mov r4_b L0x2001a818;
mov r4_t L0x2001a81a;
mov r5_b L0x2001a81c;
mov r5_t L0x2001a81e;
mov r6_b L0x2001a820;
mov r6_t L0x2001a822;
mov r7_b L0x2001a824;
mov r7_t L0x2001a826;
mov r8_b L0x2001a828;
mov r8_t L0x2001a82a;
mov r9_b L0x2001a82c;
mov r9_t L0x2001a82e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e58a; Value = 0x014901a2; PC = 0x80062e8 *)
mov r10_b L0x800e58a;
mov r10_t L0x800e58c;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e58e; Value = 0x0cb60c65; PC = 0x8006334 *)
mov r10_b L0x800e58e;
mov r10_t L0x800e590;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b07@sint16, r2_t07@sint16, r3_b07@sint16, r3_t07@sint16,
      r4_b07@sint16, r4_t07@sint16, r5_b07@sint16, r5_t07@sint16,
      r6_b07@sint16, r6_t07@sint16, r7_b07@sint16, r7_t07@sint16, 
      r8_b07@sint16, r8_t07@sint16, r9_b07@sint16, r9_t07@sint16 :
  and [r2_b07 = r2_b, r2_t07 = r2_t, r3_b07 = r3_b, r3_t07 = r3_t,
       r4_b07 = r4_b, r4_t07 = r4_t, r5_b07 = r5_b, r5_t07 = r5_t, 
       r6_b07 = r6_b, r6_t07 = r6_t, r7_b07 = r7_b, r7_t07 = r7_t, 
       r8_b07 = r8_b, r8_t07 = r8_t, r9_b07 = r9_b, r9_t07 = r9_t ] &&
  and [r2_b07 = r2_b, r2_t07 = r2_t, r3_b07 = r3_b, r3_t07 = r3_t,
       r4_b07 = r4_b, r4_t07 = r4_t, r5_b07 = r5_b, r5_t07 = r5_t, 
       r6_b07 = r6_b, r6_t07 = r6_t, r7_b07 = r7_b, r7_t07 = r7_t, 
       r8_b07 = r8_b, r8_t07 = r8_t, r9_b07 = r9_b, r9_t07 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b07 (3329@16);
assert true && eqsmod r2_t r2_t07 (3329@16);
assert true && eqsmod r3_b r3_b07 (3329@16);
assert true && eqsmod r3_t r3_t07 (3329@16);
assert true && eqsmod r4_b r4_b07 (3329@16);
assert true && eqsmod r4_t r4_t07 (3329@16);
assert true && eqsmod r5_b r5_b07 (3329@16);
assert true && eqsmod r5_t r5_t07 (3329@16);
assert true && eqsmod r6_b r6_b07 (3329@16);
assert true && eqsmod r6_t r6_t07 (3329@16);
assert true && eqsmod r7_b r7_b07 (3329@16);
assert true && eqsmod r7_t r7_t07 (3329@16);
assert true && eqsmod r8_b r8_b07 (3329@16);
assert true && eqsmod r8_t r8_t07 (3329@16);
assert true && eqsmod r9_b r9_b07 (3329@16);
assert true && eqsmod r9_t r9_t07 (3329@16);
assume and [eqmod r2_b r2_b07 3329, eqmod r2_t r2_t07 3329,
            eqmod r3_b r3_b07 3329, eqmod r3_t r3_t07 3329,
            eqmod r4_b r4_b07 3329, eqmod r4_t r4_t07 3329,
            eqmod r5_b r5_b07 3329, eqmod r5_t r5_t07 3329,
            eqmod r6_b r6_b07 3329, eqmod r6_t r6_t07 3329,
            eqmod r7_b r7_b07 3329, eqmod r7_t r7_t07 3329,
            eqmod r8_b r8_b07 3329, eqmod r8_t r8_t07 3329,
            eqmod r9_b r9_b07 3329, eqmod r9_t r9_t07 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a810; PC = 0x8006484 *)
mov L0x2001a810 r2_b;
mov L0x2001a812 r2_t;
mov L0x2001a814 r3_b;
mov L0x2001a816 r3_t;
mov L0x2001a818 r4_b;
mov L0x2001a81a r4_t;
mov L0x2001a81c r5_b;
mov L0x2001a81e r5_t;
mov L0x2001a820 r6_b;
mov L0x2001a822 r6_t;
mov L0x2001a824 r7_b;
mov L0x2001a826 r7_t;
mov L0x2001a828 r8_b;
mov L0x2001a82a r8_t;
mov L0x2001a82c r9_b;
mov L0x2001a82e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000009; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a830; Value = 0xfabf00f3; PC = 0x80062e4 *)
mov r2_b L0x2001a830;
mov r2_t L0x2001a832;
mov r3_b L0x2001a834;
mov r3_t L0x2001a836;
mov r4_b L0x2001a838;
mov r4_t L0x2001a83a;
mov r5_b L0x2001a83c;
mov r5_t L0x2001a83e;
mov r6_b L0x2001a840;
mov r6_t L0x2001a842;
mov r7_b L0x2001a844;
mov r7_t L0x2001a846;
mov r8_b L0x2001a848;
mov r8_t L0x2001a84a;
mov r9_b L0x2001a84c;
mov r9_t L0x2001a84e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e592; Value = 0x04490331; PC = 0x80062e8 *)
mov r10_b L0x800e592;
mov r10_t L0x800e594;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e596; Value = 0x0262025b; PC = 0x8006334 *)
mov r10_b L0x800e596;
mov r10_t L0x800e598;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b08@sint16, r2_t08@sint16, r3_b08@sint16, r3_t08@sint16,
      r4_b08@sint16, r4_t08@sint16, r5_b08@sint16, r5_t08@sint16,
      r6_b08@sint16, r6_t08@sint16, r7_b08@sint16, r7_t08@sint16, 
      r8_b08@sint16, r8_t08@sint16, r9_b08@sint16, r9_t08@sint16 :
  and [r2_b08 = r2_b, r2_t08 = r2_t, r3_b08 = r3_b, r3_t08 = r3_t,
       r4_b08 = r4_b, r4_t08 = r4_t, r5_b08 = r5_b, r5_t08 = r5_t, 
       r6_b08 = r6_b, r6_t08 = r6_t, r7_b08 = r7_b, r7_t08 = r7_t, 
       r8_b08 = r8_b, r8_t08 = r8_t, r9_b08 = r9_b, r9_t08 = r9_t ] &&
  and [r2_b08 = r2_b, r2_t08 = r2_t, r3_b08 = r3_b, r3_t08 = r3_t,
       r4_b08 = r4_b, r4_t08 = r4_t, r5_b08 = r5_b, r5_t08 = r5_t, 
       r6_b08 = r6_b, r6_t08 = r6_t, r7_b08 = r7_b, r7_t08 = r7_t, 
       r8_b08 = r8_b, r8_t08 = r8_t, r9_b08 = r9_b, r9_t08 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b08 (3329@16);
assert true && eqsmod r2_t r2_t08 (3329@16);
assert true && eqsmod r3_b r3_b08 (3329@16);
assert true && eqsmod r3_t r3_t08 (3329@16);
assert true && eqsmod r4_b r4_b08 (3329@16);
assert true && eqsmod r4_t r4_t08 (3329@16);
assert true && eqsmod r5_b r5_b08 (3329@16);
assert true && eqsmod r5_t r5_t08 (3329@16);
assert true && eqsmod r6_b r6_b08 (3329@16);
assert true && eqsmod r6_t r6_t08 (3329@16);
assert true && eqsmod r7_b r7_b08 (3329@16);
assert true && eqsmod r7_t r7_t08 (3329@16);
assert true && eqsmod r8_b r8_b08 (3329@16);
assert true && eqsmod r8_t r8_t08 (3329@16);
assert true && eqsmod r9_b r9_b08 (3329@16);
assert true && eqsmod r9_t r9_t08 (3329@16);
assume and [eqmod r2_b r2_b08 3329, eqmod r2_t r2_t08 3329,
            eqmod r3_b r3_b08 3329, eqmod r3_t r3_t08 3329,
            eqmod r4_b r4_b08 3329, eqmod r4_t r4_t08 3329,
            eqmod r5_b r5_b08 3329, eqmod r5_t r5_t08 3329,
            eqmod r6_b r6_b08 3329, eqmod r6_t r6_t08 3329,
            eqmod r7_b r7_b08 3329, eqmod r7_t r7_t08 3329,
            eqmod r8_b r8_b08 3329, eqmod r8_t r8_t08 3329,
            eqmod r9_b r9_b08 3329, eqmod r9_t r9_t08 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a830; PC = 0x8006484 *)
mov L0x2001a830 r2_b;
mov L0x2001a832 r2_t;
mov L0x2001a834 r3_b;
mov L0x2001a836 r3_t;
mov L0x2001a838 r4_b;
mov L0x2001a83a r4_t;
mov L0x2001a83c r5_b;
mov L0x2001a83e r5_t;
mov L0x2001a840 r6_b;
mov L0x2001a842 r6_t;
mov L0x2001a844 r7_b;
mov L0x2001a846 r7_t;
mov L0x2001a848 r8_b;
mov L0x2001a84a r8_t;
mov L0x2001a84c r9_b;
mov L0x2001a84e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000008; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a850; Value = 0xfdda0aef; PC = 0x80062e4 *)
mov r2_b L0x2001a850;
mov r2_t L0x2001a852;
mov r3_b L0x2001a854;
mov r3_t L0x2001a856;
mov r4_b L0x2001a858;
mov r4_t L0x2001a85a;
mov r5_b L0x2001a85c;
mov r5_t L0x2001a85e;
mov r6_b L0x2001a860;
mov r6_t L0x2001a862;
mov r7_b L0x2001a864;
mov r7_t L0x2001a866;
mov r8_b L0x2001a868;
mov r8_t L0x2001a86a;
mov r9_b L0x2001a86c;
mov r9_t L0x2001a86e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e59a; Value = 0x07fc052a; PC = 0x80062e8 *)
mov r10_b L0x800e59a;
mov r10_t L0x800e59c;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e59e; Value = 0x01800748; PC = 0x8006334 *)
mov r10_b L0x800e59e;
mov r10_t L0x800e5a0;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b09@sint16, r2_t09@sint16, r3_b09@sint16, r3_t09@sint16,
      r4_b09@sint16, r4_t09@sint16, r5_b09@sint16, r5_t09@sint16,
      r6_b09@sint16, r6_t09@sint16, r7_b09@sint16, r7_t09@sint16, 
      r8_b09@sint16, r8_t09@sint16, r9_b09@sint16, r9_t09@sint16 :
  and [r2_b09 = r2_b, r2_t09 = r2_t, r3_b09 = r3_b, r3_t09 = r3_t,
       r4_b09 = r4_b, r4_t09 = r4_t, r5_b09 = r5_b, r5_t09 = r5_t, 
       r6_b09 = r6_b, r6_t09 = r6_t, r7_b09 = r7_b, r7_t09 = r7_t, 
       r8_b09 = r8_b, r8_t09 = r8_t, r9_b09 = r9_b, r9_t09 = r9_t ] &&
  and [r2_b09 = r2_b, r2_t09 = r2_t, r3_b09 = r3_b, r3_t09 = r3_t,
       r4_b09 = r4_b, r4_t09 = r4_t, r5_b09 = r5_b, r5_t09 = r5_t, 
       r6_b09 = r6_b, r6_t09 = r6_t, r7_b09 = r7_b, r7_t09 = r7_t, 
       r8_b09 = r8_b, r8_t09 = r8_t, r9_b09 = r9_b, r9_t09 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b09 (3329@16);
assert true && eqsmod r2_t r2_t09 (3329@16);
assert true && eqsmod r3_b r3_b09 (3329@16);
assert true && eqsmod r3_t r3_t09 (3329@16);
assert true && eqsmod r4_b r4_b09 (3329@16);
assert true && eqsmod r4_t r4_t09 (3329@16);
assert true && eqsmod r5_b r5_b09 (3329@16);
assert true && eqsmod r5_t r5_t09 (3329@16);
assert true && eqsmod r6_b r6_b09 (3329@16);
assert true && eqsmod r6_t r6_t09 (3329@16);
assert true && eqsmod r7_b r7_b09 (3329@16);
assert true && eqsmod r7_t r7_t09 (3329@16);
assert true && eqsmod r8_b r8_b09 (3329@16);
assert true && eqsmod r8_t r8_t09 (3329@16);
assert true && eqsmod r9_b r9_b09 (3329@16);
assert true && eqsmod r9_t r9_t09 (3329@16);
assume and [eqmod r2_b r2_b09 3329, eqmod r2_t r2_t09 3329,
            eqmod r3_b r3_b09 3329, eqmod r3_t r3_t09 3329,
            eqmod r4_b r4_b09 3329, eqmod r4_t r4_t09 3329,
            eqmod r5_b r5_b09 3329, eqmod r5_t r5_t09 3329,
            eqmod r6_b r6_b09 3329, eqmod r6_t r6_t09 3329,
            eqmod r7_b r7_b09 3329, eqmod r7_t r7_t09 3329,
            eqmod r8_b r8_b09 3329, eqmod r8_t r8_t09 3329,
            eqmod r9_b r9_b09 3329, eqmod r9_t r9_t09 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a850; PC = 0x8006484 *)
mov L0x2001a850 r2_b;
mov L0x2001a852 r2_t;
mov L0x2001a854 r3_b;
mov L0x2001a856 r3_t;
mov L0x2001a858 r4_b;
mov L0x2001a85a r4_t;
mov L0x2001a85c r5_b;
mov L0x2001a85e r5_t;
mov L0x2001a860 r6_b;
mov L0x2001a862 r6_t;
mov L0x2001a864 r7_b;
mov L0x2001a866 r7_t;
mov L0x2001a868 r8_b;
mov L0x2001a86a r8_t;
mov L0x2001a86c r9_b;
mov L0x2001a86e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000007; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a870; Value = 0xf1680d68; PC = 0x80062e4 *)
mov r2_b L0x2001a870;
mov r2_t L0x2001a872;
mov r3_b L0x2001a874;
mov r3_t L0x2001a876;
mov r4_b L0x2001a878;
mov r4_t L0x2001a87a;
mov r5_b L0x2001a87c;
mov r5_t L0x2001a87e;
mov r6_b L0x2001a880;
mov r6_t L0x2001a882;
mov r7_b L0x2001a884;
mov r7_t L0x2001a886;
mov r8_b L0x2001a888;
mov r8_t L0x2001a88a;
mov r9_b L0x2001a88c;
mov r9_t L0x2001a88e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5a2; Value = 0x0c790842; PC = 0x80062e8 *)
mov r10_b L0x800e5a2;
mov r10_t L0x800e5a4;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5a6; Value = 0x07ca04c2; PC = 0x8006334 *)
mov r10_b L0x800e5a6;
mov r10_t L0x800e5a8;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b10@sint16, r2_t10@sint16, r3_b10@sint16, r3_t10@sint16,
      r4_b10@sint16, r4_t10@sint16, r5_b10@sint16, r5_t10@sint16,
      r6_b10@sint16, r6_t10@sint16, r7_b10@sint16, r7_t10@sint16, 
      r8_b10@sint16, r8_t10@sint16, r9_b10@sint16, r9_t10@sint16 :
  and [r2_b10 = r2_b, r2_t10 = r2_t, r3_b10 = r3_b, r3_t10 = r3_t,
       r4_b10 = r4_b, r4_t10 = r4_t, r5_b10 = r5_b, r5_t10 = r5_t, 
       r6_b10 = r6_b, r6_t10 = r6_t, r7_b10 = r7_b, r7_t10 = r7_t, 
       r8_b10 = r8_b, r8_t10 = r8_t, r9_b10 = r9_b, r9_t10 = r9_t ] &&
  and [r2_b10 = r2_b, r2_t10 = r2_t, r3_b10 = r3_b, r3_t10 = r3_t,
       r4_b10 = r4_b, r4_t10 = r4_t, r5_b10 = r5_b, r5_t10 = r5_t, 
       r6_b10 = r6_b, r6_t10 = r6_t, r7_b10 = r7_b, r7_t10 = r7_t, 
       r8_b10 = r8_b, r8_t10 = r8_t, r9_b10 = r9_b, r9_t10 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b10 (3329@16);
assert true && eqsmod r2_t r2_t10 (3329@16);
assert true && eqsmod r3_b r3_b10 (3329@16);
assert true && eqsmod r3_t r3_t10 (3329@16);
assert true && eqsmod r4_b r4_b10 (3329@16);
assert true && eqsmod r4_t r4_t10 (3329@16);
assert true && eqsmod r5_b r5_b10 (3329@16);
assert true && eqsmod r5_t r5_t10 (3329@16);
assert true && eqsmod r6_b r6_b10 (3329@16);
assert true && eqsmod r6_t r6_t10 (3329@16);
assert true && eqsmod r7_b r7_b10 (3329@16);
assert true && eqsmod r7_t r7_t10 (3329@16);
assert true && eqsmod r8_b r8_b10 (3329@16);
assert true && eqsmod r8_t r8_t10 (3329@16);
assert true && eqsmod r9_b r9_b10 (3329@16);
assert true && eqsmod r9_t r9_t10 (3329@16);
assume and [eqmod r2_b r2_b10 3329, eqmod r2_t r2_t10 3329,
            eqmod r3_b r3_b10 3329, eqmod r3_t r3_t10 3329,
            eqmod r4_b r4_b10 3329, eqmod r4_t r4_t10 3329,
            eqmod r5_b r5_b10 3329, eqmod r5_t r5_t10 3329,
            eqmod r6_b r6_b10 3329, eqmod r6_t r6_t10 3329,
            eqmod r7_b r7_b10 3329, eqmod r7_t r7_t10 3329,
            eqmod r8_b r8_b10 3329, eqmod r8_t r8_t10 3329,
            eqmod r9_b r9_b10 3329, eqmod r9_t r9_t10 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a870; PC = 0x8006484 *)
mov L0x2001a870 r2_b;
mov L0x2001a872 r2_t;
mov L0x2001a874 r3_b;
mov L0x2001a876 r3_t;
mov L0x2001a878 r4_b;
mov L0x2001a87a r4_t;
mov L0x2001a87c r5_b;
mov L0x2001a87e r5_t;
mov L0x2001a880 r6_b;
mov L0x2001a882 r6_t;
mov L0x2001a884 r7_b;
mov L0x2001a886 r7_t;
mov L0x2001a888 r8_b;
mov L0x2001a88a r8_t;
mov L0x2001a88c r9_b;
mov L0x2001a88e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000006; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a890; Value = 0xfeb80007; PC = 0x80062e4 *)
mov r2_b L0x2001a890;
mov r2_t L0x2001a892;
mov r3_b L0x2001a894;
mov r3_t L0x2001a896;
mov r4_b L0x2001a898;
mov r4_t L0x2001a89a;
mov r5_b L0x2001a89c;
mov r5_t L0x2001a89e;
mov r6_b L0x2001a8a0;
mov r6_t L0x2001a8a2;
mov r7_b L0x2001a8a4;
mov r7_t L0x2001a8a6;
mov r8_b L0x2001a8a8;
mov r8_t L0x2001a8aa;
mov r9_b L0x2001a8ac;
mov r9_t L0x2001a8ae;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5aa; Value = 0x00dc0997; PC = 0x80062e8 *)
mov r10_b L0x800e5aa;
mov r10_t L0x800e5ac;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5ae; Value = 0x0686085e; PC = 0x8006334 *)
mov r10_b L0x800e5ae;
mov r10_t L0x800e5b0;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b11@sint16, r2_t11@sint16, r3_b11@sint16, r3_t11@sint16,
      r4_b11@sint16, r4_t11@sint16, r5_b11@sint16, r5_t11@sint16,
      r6_b11@sint16, r6_t11@sint16, r7_b11@sint16, r7_t11@sint16, 
      r8_b11@sint16, r8_t11@sint16, r9_b11@sint16, r9_t11@sint16 :
  and [r2_b11 = r2_b, r2_t11 = r2_t, r3_b11 = r3_b, r3_t11 = r3_t,
       r4_b11 = r4_b, r4_t11 = r4_t, r5_b11 = r5_b, r5_t11 = r5_t, 
       r6_b11 = r6_b, r6_t11 = r6_t, r7_b11 = r7_b, r7_t11 = r7_t, 
       r8_b11 = r8_b, r8_t11 = r8_t, r9_b11 = r9_b, r9_t11 = r9_t ] &&
  and [r2_b11 = r2_b, r2_t11 = r2_t, r3_b11 = r3_b, r3_t11 = r3_t,
       r4_b11 = r4_b, r4_t11 = r4_t, r5_b11 = r5_b, r5_t11 = r5_t, 
       r6_b11 = r6_b, r6_t11 = r6_t, r7_b11 = r7_b, r7_t11 = r7_t, 
       r8_b11 = r8_b, r8_t11 = r8_t, r9_b11 = r9_b, r9_t11 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b11 (3329@16);
assert true && eqsmod r2_t r2_t11 (3329@16);
assert true && eqsmod r3_b r3_b11 (3329@16);
assert true && eqsmod r3_t r3_t11 (3329@16);
assert true && eqsmod r4_b r4_b11 (3329@16);
assert true && eqsmod r4_t r4_t11 (3329@16);
assert true && eqsmod r5_b r5_b11 (3329@16);
assert true && eqsmod r5_t r5_t11 (3329@16);
assert true && eqsmod r6_b r6_b11 (3329@16);
assert true && eqsmod r6_t r6_t11 (3329@16);
assert true && eqsmod r7_b r7_b11 (3329@16);
assert true && eqsmod r7_t r7_t11 (3329@16);
assert true && eqsmod r8_b r8_b11 (3329@16);
assert true && eqsmod r8_t r8_t11 (3329@16);
assert true && eqsmod r9_b r9_b11 (3329@16);
assert true && eqsmod r9_t r9_t11 (3329@16);
assume and [eqmod r2_b r2_b11 3329, eqmod r2_t r2_t11 3329,
            eqmod r3_b r3_b11 3329, eqmod r3_t r3_t11 3329,
            eqmod r4_b r4_b11 3329, eqmod r4_t r4_t11 3329,
            eqmod r5_b r5_b11 3329, eqmod r5_t r5_t11 3329,
            eqmod r6_b r6_b11 3329, eqmod r6_t r6_t11 3329,
            eqmod r7_b r7_b11 3329, eqmod r7_t r7_t11 3329,
            eqmod r8_b r8_b11 3329, eqmod r8_t r8_t11 3329,
            eqmod r9_b r9_b11 3329, eqmod r9_t r9_t11 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a890; PC = 0x8006484 *)
mov L0x2001a890 r2_b;
mov L0x2001a892 r2_t;
mov L0x2001a894 r3_b;
mov L0x2001a896 r3_t;
mov L0x2001a898 r4_b;
mov L0x2001a89a r4_t;
mov L0x2001a89c r5_b;
mov L0x2001a89e r5_t;
mov L0x2001a8a0 r6_b;
mov L0x2001a8a2 r6_t;
mov L0x2001a8a4 r7_b;
mov L0x2001a8a6 r7_t;
mov L0x2001a8a8 r8_b;
mov L0x2001a8aa r8_t;
mov L0x2001a8ac r9_b;
mov L0x2001a8ae r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000005; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a8b0; Value = 0xf14307e1; PC = 0x80062e4 *)
mov r2_b L0x2001a8b0;
mov r2_t L0x2001a8b2;
mov r3_b L0x2001a8b4;
mov r3_t L0x2001a8b6;
mov r4_b L0x2001a8b8;
mov r4_t L0x2001a8ba;
mov r5_b L0x2001a8bc;
mov r5_t L0x2001a8be;
mov r6_b L0x2001a8c0;
mov r6_t L0x2001a8c2;
mov r7_b L0x2001a8c4;
mov r7_t L0x2001a8c6;
mov r8_b L0x2001a8c8;
mov r8_t L0x2001a8ca;
mov r9_b L0x2001a8cc;
mov r9_t L0x2001a8ce;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5b2; Value = 0x07070860; PC = 0x80062e8 *)
mov r10_b L0x800e5b2;
mov r10_t L0x800e5b4;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5b6; Value = 0x031a0803; PC = 0x8006334 *)
mov r10_b L0x800e5b6;
mov r10_t L0x800e5b8;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b12@sint16, r2_t12@sint16, r3_b12@sint16, r3_t12@sint16,
      r4_b12@sint16, r4_t12@sint16, r5_b12@sint16, r5_t12@sint16,
      r6_b12@sint16, r6_t12@sint16, r7_b12@sint16, r7_t12@sint16, 
      r8_b12@sint16, r8_t12@sint16, r9_b12@sint16, r9_t12@sint16 :
  and [r2_b12 = r2_b, r2_t12 = r2_t, r3_b12 = r3_b, r3_t12 = r3_t,
       r4_b12 = r4_b, r4_t12 = r4_t, r5_b12 = r5_b, r5_t12 = r5_t, 
       r6_b12 = r6_b, r6_t12 = r6_t, r7_b12 = r7_b, r7_t12 = r7_t, 
       r8_b12 = r8_b, r8_t12 = r8_t, r9_b12 = r9_b, r9_t12 = r9_t ] &&
  and [r2_b12 = r2_b, r2_t12 = r2_t, r3_b12 = r3_b, r3_t12 = r3_t,
       r4_b12 = r4_b, r4_t12 = r4_t, r5_b12 = r5_b, r5_t12 = r5_t, 
       r6_b12 = r6_b, r6_t12 = r6_t, r7_b12 = r7_b, r7_t12 = r7_t, 
       r8_b12 = r8_b, r8_t12 = r8_t, r9_b12 = r9_b, r9_t12 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b12 (3329@16);
assert true && eqsmod r2_t r2_t12 (3329@16);
assert true && eqsmod r3_b r3_b12 (3329@16);
assert true && eqsmod r3_t r3_t12 (3329@16);
assert true && eqsmod r4_b r4_b12 (3329@16);
assert true && eqsmod r4_t r4_t12 (3329@16);
assert true && eqsmod r5_b r5_b12 (3329@16);
assert true && eqsmod r5_t r5_t12 (3329@16);
assert true && eqsmod r6_b r6_b12 (3329@16);
assert true && eqsmod r6_t r6_t12 (3329@16);
assert true && eqsmod r7_b r7_b12 (3329@16);
assert true && eqsmod r7_t r7_t12 (3329@16);
assert true && eqsmod r8_b r8_b12 (3329@16);
assert true && eqsmod r8_t r8_t12 (3329@16);
assert true && eqsmod r9_b r9_b12 (3329@16);
assert true && eqsmod r9_t r9_t12 (3329@16);
assume and [eqmod r2_b r2_b12 3329, eqmod r2_t r2_t12 3329,
            eqmod r3_b r3_b12 3329, eqmod r3_t r3_t12 3329,
            eqmod r4_b r4_b12 3329, eqmod r4_t r4_t12 3329,
            eqmod r5_b r5_b12 3329, eqmod r5_t r5_t12 3329,
            eqmod r6_b r6_b12 3329, eqmod r6_t r6_t12 3329,
            eqmod r7_b r7_b12 3329, eqmod r7_t r7_t12 3329,
            eqmod r8_b r8_b12 3329, eqmod r8_t r8_t12 3329,
            eqmod r9_b r9_b12 3329, eqmod r9_t r9_t12 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a8b0; PC = 0x8006484 *)
mov L0x2001a8b0 r2_b;
mov L0x2001a8b2 r2_t;
mov L0x2001a8b4 r3_b;
mov L0x2001a8b6 r3_t;
mov L0x2001a8b8 r4_b;
mov L0x2001a8ba r4_t;
mov L0x2001a8bc r5_b;
mov L0x2001a8be r5_t;
mov L0x2001a8c0 r6_b;
mov L0x2001a8c2 r6_t;
mov L0x2001a8c4 r7_b;
mov L0x2001a8c6 r7_t;
mov L0x2001a8c8 r8_b;
mov L0x2001a8ca r8_t;
mov L0x2001a8cc r9_b;
mov L0x2001a8ce r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000004; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a8d0; Value = 0xf8670351; PC = 0x80062e4 *)
mov r2_b L0x2001a8d0;
mov r2_t L0x2001a8d2;
mov r3_b L0x2001a8d4;
mov r3_t L0x2001a8d6;
mov r4_b L0x2001a8d8;
mov r4_t L0x2001a8da;
mov r5_b L0x2001a8dc;
mov r5_t L0x2001a8de;
mov r6_b L0x2001a8e0;
mov r6_t L0x2001a8e2;
mov r7_b L0x2001a8e4;
mov r7_t L0x2001a8e6;
mov r8_b L0x2001a8e8;
mov r8_t L0x2001a8ea;
mov r9_b L0x2001a8ec;
mov r9_t L0x2001a8ee;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5ba; Value = 0x09ab071b; PC = 0x80062e8 *)
mov r10_b L0x800e5ba;
mov r10_t L0x800e5bc;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5be; Value = 0x01de099b; PC = 0x8006334 *)
mov r10_b L0x800e5be;
mov r10_t L0x800e5c0;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b13@sint16, r2_t13@sint16, r3_b13@sint16, r3_t13@sint16,
      r4_b13@sint16, r4_t13@sint16, r5_b13@sint16, r5_t13@sint16,
      r6_b13@sint16, r6_t13@sint16, r7_b13@sint16, r7_t13@sint16, 
      r8_b13@sint16, r8_t13@sint16, r9_b13@sint16, r9_t13@sint16 :
  and [r2_b13 = r2_b, r2_t13 = r2_t, r3_b13 = r3_b, r3_t13 = r3_t,
       r4_b13 = r4_b, r4_t13 = r4_t, r5_b13 = r5_b, r5_t13 = r5_t, 
       r6_b13 = r6_b, r6_t13 = r6_t, r7_b13 = r7_b, r7_t13 = r7_t, 
       r8_b13 = r8_b, r8_t13 = r8_t, r9_b13 = r9_b, r9_t13 = r9_t ] &&
  and [r2_b13 = r2_b, r2_t13 = r2_t, r3_b13 = r3_b, r3_t13 = r3_t,
       r4_b13 = r4_b, r4_t13 = r4_t, r5_b13 = r5_b, r5_t13 = r5_t, 
       r6_b13 = r6_b, r6_t13 = r6_t, r7_b13 = r7_b, r7_t13 = r7_t, 
       r8_b13 = r8_b, r8_t13 = r8_t, r9_b13 = r9_b, r9_t13 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b13 (3329@16);
assert true && eqsmod r2_t r2_t13 (3329@16);
assert true && eqsmod r3_b r3_b13 (3329@16);
assert true && eqsmod r3_t r3_t13 (3329@16);
assert true && eqsmod r4_b r4_b13 (3329@16);
assert true && eqsmod r4_t r4_t13 (3329@16);
assert true && eqsmod r5_b r5_b13 (3329@16);
assert true && eqsmod r5_t r5_t13 (3329@16);
assert true && eqsmod r6_b r6_b13 (3329@16);
assert true && eqsmod r6_t r6_t13 (3329@16);
assert true && eqsmod r7_b r7_b13 (3329@16);
assert true && eqsmod r7_t r7_t13 (3329@16);
assert true && eqsmod r8_b r8_b13 (3329@16);
assert true && eqsmod r8_t r8_t13 (3329@16);
assert true && eqsmod r9_b r9_b13 (3329@16);
assert true && eqsmod r9_t r9_t13 (3329@16);
assume and [eqmod r2_b r2_b13 3329, eqmod r2_t r2_t13 3329,
            eqmod r3_b r3_b13 3329, eqmod r3_t r3_t13 3329,
            eqmod r4_b r4_b13 3329, eqmod r4_t r4_t13 3329,
            eqmod r5_b r5_b13 3329, eqmod r5_t r5_t13 3329,
            eqmod r6_b r6_b13 3329, eqmod r6_t r6_t13 3329,
            eqmod r7_b r7_b13 3329, eqmod r7_t r7_t13 3329,
            eqmod r8_b r8_b13 3329, eqmod r8_t r8_t13 3329,
            eqmod r9_b r9_b13 3329, eqmod r9_t r9_t13 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a8d0; PC = 0x8006484 *)
mov L0x2001a8d0 r2_b;
mov L0x2001a8d2 r2_t;
mov L0x2001a8d4 r3_b;
mov L0x2001a8d6 r3_t;
mov L0x2001a8d8 r4_b;
mov L0x2001a8da r4_t;
mov L0x2001a8dc r5_b;
mov L0x2001a8de r5_t;
mov L0x2001a8e0 r6_b;
mov L0x2001a8e2 r6_t;
mov L0x2001a8e4 r7_b;
mov L0x2001a8e6 r7_t;
mov L0x2001a8e8 r8_b;
mov L0x2001a8ea r8_t;
mov L0x2001a8ec r9_b;
mov L0x2001a8ee r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000003; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a8f0; Value = 0xf646038c; PC = 0x80062e4 *)
mov r2_b L0x2001a8f0;
mov r2_t L0x2001a8f2;
mov r3_b L0x2001a8f4;
mov r3_t L0x2001a8f6;
mov r4_b L0x2001a8f8;
mov r4_t L0x2001a8fa;
mov r5_b L0x2001a8fc;
mov r5_t L0x2001a8fe;
mov r6_b L0x2001a900;
mov r6_t L0x2001a902;
mov r7_b L0x2001a904;
mov r7_t L0x2001a906;
mov r8_b L0x2001a908;
mov r8_t L0x2001a90a;
mov r9_b L0x2001a90c;
mov r9_t L0x2001a90e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5c2; Value = 0x0bcd0c95; PC = 0x80062e8 *)
mov r10_b L0x800e5c2;
mov r10_t L0x800e5c4;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5c6; Value = 0x03df03e4; PC = 0x8006334 *)
mov r10_b L0x800e5c6;
mov r10_t L0x800e5c8;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b14@sint16, r2_t14@sint16, r3_b14@sint16, r3_t14@sint16,
      r4_b14@sint16, r4_t14@sint16, r5_b14@sint16, r5_t14@sint16,
      r6_b14@sint16, r6_t14@sint16, r7_b14@sint16, r7_t14@sint16, 
      r8_b14@sint16, r8_t14@sint16, r9_b14@sint16, r9_t14@sint16 :
  and [r2_b14 = r2_b, r2_t14 = r2_t, r3_b14 = r3_b, r3_t14 = r3_t,
       r4_b14 = r4_b, r4_t14 = r4_t, r5_b14 = r5_b, r5_t14 = r5_t, 
       r6_b14 = r6_b, r6_t14 = r6_t, r7_b14 = r7_b, r7_t14 = r7_t, 
       r8_b14 = r8_b, r8_t14 = r8_t, r9_b14 = r9_b, r9_t14 = r9_t ] &&
  and [r2_b14 = r2_b, r2_t14 = r2_t, r3_b14 = r3_b, r3_t14 = r3_t,
       r4_b14 = r4_b, r4_t14 = r4_t, r5_b14 = r5_b, r5_t14 = r5_t, 
       r6_b14 = r6_b, r6_t14 = r6_t, r7_b14 = r7_b, r7_t14 = r7_t, 
       r8_b14 = r8_b, r8_t14 = r8_t, r9_b14 = r9_b, r9_t14 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b14 (3329@16);
assert true && eqsmod r2_t r2_t14 (3329@16);
assert true && eqsmod r3_b r3_b14 (3329@16);
assert true && eqsmod r3_t r3_t14 (3329@16);
assert true && eqsmod r4_b r4_b14 (3329@16);
assert true && eqsmod r4_t r4_t14 (3329@16);
assert true && eqsmod r5_b r5_b14 (3329@16);
assert true && eqsmod r5_t r5_t14 (3329@16);
assert true && eqsmod r6_b r6_b14 (3329@16);
assert true && eqsmod r6_t r6_t14 (3329@16);
assert true && eqsmod r7_b r7_b14 (3329@16);
assert true && eqsmod r7_t r7_t14 (3329@16);
assert true && eqsmod r8_b r8_b14 (3329@16);
assert true && eqsmod r8_t r8_t14 (3329@16);
assert true && eqsmod r9_b r9_b14 (3329@16);
assert true && eqsmod r9_t r9_t14 (3329@16);
assume and [eqmod r2_b r2_b14 3329, eqmod r2_t r2_t14 3329,
            eqmod r3_b r3_b14 3329, eqmod r3_t r3_t14 3329,
            eqmod r4_b r4_b14 3329, eqmod r4_t r4_t14 3329,
            eqmod r5_b r5_b14 3329, eqmod r5_t r5_t14 3329,
            eqmod r6_b r6_b14 3329, eqmod r6_t r6_t14 3329,
            eqmod r7_b r7_b14 3329, eqmod r7_t r7_t14 3329,
            eqmod r8_b r8_b14 3329, eqmod r8_t r8_t14 3329,
            eqmod r9_b r9_b14 3329, eqmod r9_t r9_t14 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a8f0; PC = 0x8006484 *)
mov L0x2001a8f0 r2_b;
mov L0x2001a8f2 r2_t;
mov L0x2001a8f4 r3_b;
mov L0x2001a8f6 r3_t;
mov L0x2001a8f8 r4_b;
mov L0x2001a8fa r4_t;
mov L0x2001a8fc r5_b;
mov L0x2001a8fe r5_t;
mov L0x2001a900 r6_b;
mov L0x2001a902 r6_t;
mov L0x2001a904 r7_b;
mov L0x2001a906 r7_t;
mov L0x2001a908 r8_b;
mov L0x2001a90a r8_t;
mov L0x2001a90c r9_b;
mov L0x2001a90e r9_t;
(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000002; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* str.w	r12, [sp, #-4]!                           #! EA = L0x2001a480; PC = 0x80062e0 *)
mov L0x2001a480 r12_b;
mov L0x2001a482 r12_t;
(* ldmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}    #! EA = L0x2001a910; Value = 0x04b70571; PC = 0x80062e4 *)
mov r2_b L0x2001a910;
mov r2_t L0x2001a912;
mov r3_b L0x2001a914;
mov r3_t L0x2001a916;
mov r4_b L0x2001a918;
mov r4_t L0x2001a91a;
mov r5_b L0x2001a91c;
mov r5_t L0x2001a91e;
mov r6_b L0x2001a920;
mov r6_t L0x2001a922;
mov r7_b L0x2001a924;
mov r7_t L0x2001a926;
mov r8_b L0x2001a928;
mov r8_t L0x2001a92a;
mov r9_b L0x2001a92c;
mov r9_t L0x2001a92e;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5ca; Value = 0x074d03be; PC = 0x80062e8 *)
mov r10_b L0x800e5ca;
mov r10_t L0x800e5cc;
(* smulbb	r12, r3, r10                             #! PC = 0x80062ec *)
mull r12_t r12_b r3_b r10_b;
(* smultb	r3, r3, r10                              #! PC = 0x80062f0 *)
mull r3_t r3_b r3_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x80062f4 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x80062f8 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r3, r11                             #! PC = 0x80062fc *)
cast r3_sb@sint16 r3_b;
mull r12_t r12_b r3_sb r11_t;
(* smlabb	r12, r11, r12, r3                        #! PC = 0x8006300 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r3_b;
adc r12_t tmp_t r3_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006304 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r3, r2, lr                               #! PC = 0x8006308 *)
sub r3_b r2_b lr_b;
sub r3_t r2_t lr_t;
(* uadd16	r2, r2, lr                               #! PC = 0x800630c *)
add r2_b r2_b lr_b;
add r2_t r2_t lr_t;
(* smulbt	r12, r5, r10                             #! PC = 0x8006310 *)
mull r12_t r12_b r5_b r10_t;
(* smultt	r5, r5, r10                              #! PC = 0x8006314 *)
mull r5_t r5_b r5_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006318 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x800631c *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r5, r11                             #! PC = 0x8006320 *)
cast r5_sb@sint16 r5_b;
mull r12_t r12_b r5_sb r11_t;
(* smlabb	r12, r11, r12, r5                        #! PC = 0x8006324 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r5_b;
adc r12_t tmp_t r5_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006328 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r5, r4, lr                               #! PC = 0x800632c *)
sub r5_b r4_b lr_b;
sub r5_t r4_t lr_t;
(* uadd16	r4, r4, lr                               #! PC = 0x8006330 *)
add r4_b r4_b lr_b;
add r4_t r4_t lr_t;
(* ldr.w	r10, [r1], #4                             #! EA = L0x800e5ce; Value = 0x065c05f2; PC = 0x8006334 *)
mov r10_b L0x800e5ce;
mov r10_t L0x800e5d0;
(* smulbb	r12, r7, r10                             #! PC = 0x8006338 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	r7, r7, r10                              #! PC = 0x800633c *)
mull r7_t r7_b r7_t r10_b;
(* smulbt	lr, r12, r11                             #! PC = 0x8006340 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006344 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r7, r11                             #! PC = 0x8006348 *)
cast r7_sb@sint16 r7_b;
mull r12_t r12_b r7_sb r11_t;
(* smlabb	r12, r11, r12, r7                        #! PC = 0x800634c *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r7_b;
adc r12_t tmp_t r7_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006350 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r7, r6, lr                               #! PC = 0x8006354 *)
sub r7_b r6_b lr_b;
sub r7_t r6_t lr_t;
(* uadd16	r6, r6, lr                               #! PC = 0x8006358 *)
add r6_b r6_b lr_b;
add r6_t r6_t lr_t;
(* smulbt	r12, r9, r10                             #! PC = 0x800635c *)
mull r12_t r12_b r9_b r10_t;
(* smultt	r9, r9, r10                              #! PC = 0x8006360 *)
mull r9_t r9_b r9_t r10_t;
(* smulbt	lr, r12, r11                             #! PC = 0x8006364 *)
cast r12_sb@sint16 r12_b;
mull lr_t lr_b r12_sb r11_t;
(* smlabb	lr, r11, lr, r12                         #! PC = 0x8006368 *)
cast lr_sb@sint16 lr_b;
mull tmp_t tmp_b r11_b lr_sb;
uadds carry lr_b tmp_b r12_b;
adc lr_t tmp_t r12_t carry;
assert eqmod lr_b 0 (2**16) && true;
assume lr_b = 0 && true;
(* smulbt	r12, r9, r11                             #! PC = 0x800636c *)
cast r9_sb@sint16 r9_b;
mull r12_t r12_b r9_sb r11_t;
(* smlabb	r12, r11, r12, r9                        #! PC = 0x8006370 *)
cast r12_sb@sint16 r12_b;
mull tmp_t tmp_b r11_b r12_sb;
uadds carry r12_b tmp_b r9_b;
adc r12_t tmp_t r9_t carry;
assert eqmod r12_b 0 (2**16) && true;
assume r12_b = 0 && true;
(* pkhtb	lr, r12, lr, asr #16                      #! PC = 0x8006374 *)
mov tmp_b lr_t;
mov tmp_t r12_t;
mov lr_b tmp_b;
mov lr_t tmp_t;
(* usub16	r9, r8, lr                               #! PC = 0x8006378 *)
sub r9_b r8_b lr_b;
sub r9_t r8_t lr_t;
(* uadd16	r8, r8, lr                               #! PC = 0x800637c *)
add r8_b r8_b lr_b;
add r8_t r8_t lr_t;

(* NOTE: double barrett reduction *)

ghost r2_b15@sint16, r2_t15@sint16, r3_b15@sint16, r3_t15@sint16,
      r4_b15@sint16, r4_t15@sint16, r5_b15@sint16, r5_t15@sint16,
      r6_b15@sint16, r6_t15@sint16, r7_b15@sint16, r7_t15@sint16, 
      r8_b15@sint16, r8_t15@sint16, r9_b15@sint16, r9_t15@sint16 :
  and [r2_b15 = r2_b, r2_t15 = r2_t, r3_b15 = r3_b, r3_t15 = r3_t,
       r4_b15 = r4_b, r4_t15 = r4_t, r5_b15 = r5_b, r5_t15 = r5_t, 
       r6_b15 = r6_b, r6_t15 = r6_t, r7_b15 = r7_b, r7_t15 = r7_t, 
       r8_b15 = r8_b, r8_t15 = r8_t, r9_b15 = r9_b, r9_t15 = r9_t ] &&
  and [r2_b15 = r2_b, r2_t15 = r2_t, r3_b15 = r3_b, r3_t15 = r3_t,
       r4_b15 = r4_b, r4_t15 = r4_t, r5_b15 = r5_b, r5_t15 = r5_t, 
       r6_b15 = r6_b, r6_t15 = r6_t, r7_b15 = r7_b, r7_t15 = r7_t, 
       r8_b15 = r8_b, r8_t15 = r8_t, r9_b15 = r9_b, r9_t15 = r9_t ];

(* movw	r10, #20159	; 0x4ebf                       #! PC = 0x8006380 *)
mov r10_b 20159@sint16;
mov r10_t 0@sint16;
(* smulbb	r12, r2, r10                             #! PC = 0x8006384 *)
mull r12_t r12_b r2_b r10_b;
(* smultb	lr, r2, r10                              #! PC = 0x8006388 *)
mull lr_t lr_b r2_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800638c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006390 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006394 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006398 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800639c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r2, r2, r12                              #! PC = 0x80063a0 *)
sub r2_b r2_b r12_b;
sub r2_t r2_t r12_t;
(* smulbb	r12, r3, r10                             #! PC = 0x80063a4 *)
mull r12_t r12_b r3_b r10_b;
(* smultb	lr, r3, r10                              #! PC = 0x80063a8 *)
mull lr_t lr_b r3_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ac *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063b0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063b4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063b8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063bc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r3, r3, r12                              #! PC = 0x80063c0 *)
sub r3_b r3_b r12_b;
sub r3_t r3_t r12_t;
(* smulbb	r12, r4, r10                             #! PC = 0x80063c4 *)
mull r12_t r12_b r4_b r10_b;
(* smultb	lr, r4, r10                              #! PC = 0x80063c8 *)
mull lr_t lr_b r4_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063cc *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063d0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063d4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063d8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063dc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r4, r4, r12                              #! PC = 0x80063e0 *)
sub r4_b r4_b r12_b;
sub r4_t r4_t r12_t;
(* smulbb	r12, r5, r10                             #! PC = 0x80063e4 *)
mull r12_t r12_b r5_b r10_b;
(* smultb	lr, r5, r10                              #! PC = 0x80063e8 *)
mull lr_t lr_b r5_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x80063ec *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x80063f0 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x80063f4 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x80063f8 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x80063fc *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r5, r5, r12                              #! PC = 0x8006400 *)
sub r5_b r5_b r12_b;
sub r5_t r5_t r12_t;
(* smulbb	r12, r6, r10                             #! PC = 0x8006404 *)
mull r12_t r12_b r6_b r10_b;
(* smultb	lr, r6, r10                              #! PC = 0x8006408 *)
mull lr_t lr_b r6_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800640c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006410 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006414 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006418 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800641c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r6, r6, r12                              #! PC = 0x8006420 *)
sub r6_b r6_b r12_b;
sub r6_t r6_t r12_t;
(* smulbb	r12, r7, r10                             #! PC = 0x8006424 *)
mull r12_t r12_b r7_b r10_b;
(* smultb	lr, r7, r10                              #! PC = 0x8006428 *)
mull lr_t lr_b r7_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800642c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006430 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006434 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006438 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800643c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r7, r7, r12                              #! PC = 0x8006440 *)
sub r7_b r7_b r12_b;
sub r7_t r7_t r12_t;
(* smulbb	r12, r8, r10                             #! PC = 0x8006444 *)
mull r12_t r12_b r8_b r10_b;
(* smultb	lr, r8, r10                              #! PC = 0x8006448 *)
mull lr_t lr_b r8_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800644c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006450 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006454 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006458 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800645c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r8, r8, r12                              #! PC = 0x8006460 *)
sub r8_b r8_b r12_b;
sub r8_t r8_t r12_t;
(* smulbb	r12, r9, r10                             #! PC = 0x8006464 *)
mull r12_t r12_b r9_b r10_b;
(* smultb	lr, r9, r10                              #! PC = 0x8006468 *)
mull lr_t lr_b r9_t r10_b;
(* mov.w	r12, r12, asr #26                         #! PC = 0x800646c *)
ssplit r12_b dontcare r12_t 10;
(* mov.w	lr, lr, asr #26                           #! PC = 0x8006470 *)
ssplit lr_b dontcare lr_t 10;
(* smulbb	r12, r12, r11                            #! PC = 0x8006474 *)
mull r12_t r12_b r12_b r11_b;
(* smulbb	lr, lr, r11                              #! PC = 0x8006478 *)
mull lr_t lr_b lr_b r11_b;
(* pkhbt	r12, r12, lr, lsl #16                     #! PC = 0x800647c *)
cast tmp_b@sint16 r12_b;
cast tmp_t@sint16 lr_b;
mov r12_b tmp_b;
mov r12_t tmp_t;
(* usub16	r9, r9, r12                              #! PC = 0x8006480 *)
sub r9_b r9_b r12_b;
sub r9_t r9_t r12_t;

assert true && eqsmod r2_b r2_b15 (3329@16);
assert true && eqsmod r2_t r2_t15 (3329@16);
assert true && eqsmod r3_b r3_b15 (3329@16);
assert true && eqsmod r3_t r3_t15 (3329@16);
assert true && eqsmod r4_b r4_b15 (3329@16);
assert true && eqsmod r4_t r4_t15 (3329@16);
assert true && eqsmod r5_b r5_b15 (3329@16);
assert true && eqsmod r5_t r5_t15 (3329@16);
assert true && eqsmod r6_b r6_b15 (3329@16);
assert true && eqsmod r6_t r6_t15 (3329@16);
assert true && eqsmod r7_b r7_b15 (3329@16);
assert true && eqsmod r7_t r7_t15 (3329@16);
assert true && eqsmod r8_b r8_b15 (3329@16);
assert true && eqsmod r8_t r8_t15 (3329@16);
assert true && eqsmod r9_b r9_b15 (3329@16);
assert true && eqsmod r9_t r9_t15 (3329@16);
assume and [eqmod r2_b r2_b15 3329, eqmod r2_t r2_t15 3329,
            eqmod r3_b r3_b15 3329, eqmod r3_t r3_t15 3329,
            eqmod r4_b r4_b15 3329, eqmod r4_t r4_t15 3329,
            eqmod r5_b r5_b15 3329, eqmod r5_t r5_t15 3329,
            eqmod r6_b r6_b15 3329, eqmod r6_t r6_t15 3329,
            eqmod r7_b r7_b15 3329, eqmod r7_t r7_t15 3329,
            eqmod r8_b r8_b15 3329, eqmod r8_t r8_t15 3329,
            eqmod r9_b r9_b15 3329, eqmod r9_t r9_t15 3329]
    && true;

(* stmia.w	[r0], {r2, r3, r4, r5, r6, r7, r8, r9}   #! EA = L0x2001a910; PC = 0x8006484 *)
mov L0x2001a910 r2_b;
mov L0x2001a912 r2_t;
mov L0x2001a914 r3_b;
mov L0x2001a916 r3_t;
mov L0x2001a918 r4_b;
mov L0x2001a91a r4_t;
mov L0x2001a91c r5_b;
mov L0x2001a91e r5_t;
mov L0x2001a920 r6_b;
mov L0x2001a922 r6_t;
mov L0x2001a924 r7_b;
mov L0x2001a926 r7_t;
mov L0x2001a928 r8_b;
mov L0x2001a92a r8_t;
mov L0x2001a92c r9_b;
mov L0x2001a92e r9_t;

(* ldr.w	r12, [sp], #4                             #! EA = L0x2001a480; Value = 0x00000001; PC = 0x8006488 *)
mov r12_b L0x2001a480;
mov r12_t L0x2001a482;
(* subs.w	r12, r12, #1                             #! PC = 0x800648c *)
subs dontcare r12_b r12_b 1@sint16;
(* #bne.w	0x80062e0 <ntt_fast+1120>                #! PC = 0x8006490 *)
#bne.w	0x80062e0 <ntt_fast+1120>                #! 0x8006490 = 0x8006490;
(* #ble.n	0x80036ec <polyvec_ntt+14>               #! PC = 0x8003704 *)
#ble.n	0x80036ec <polyvec_ntt+14>               #! 0x8003704 = 0x8003704;
(* #! -> SP = 0x2001a4c8 *)
#! 0x2001a4c8 = 0x2001a4c8;
(* #! -> SP = 0x2001a4c8 *)
#! 0x2001a4c8 = 0x2001a4c8;
(* #bl	0x80037bc <ntt>                             #! PC = 0x80042a4 *)
#bl	0x80037bc <ntt>                             #! 0x80042a4 = 0x80042a4;
(* #! -> SP = 0x2001a4b8 *)
#! 0x2001a4b8 = 0x2001a4b8;

{
and [
eqmod 
(inp_poly * inp_poly)
(
L0x2001a730*(x**0) + L0x2001a732*(x**1)
)
[3329, x**2 - 17],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a734*(x**0) + L0x2001a736*(x**1)
)
[3329, x**2 - 3312],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a738*(x**0) + L0x2001a73a*(x**1)
)
[3329, x**2 - 2761],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a73c*(x**0) + L0x2001a73e*(x**1)
)
[3329, x**2 - 568],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a740*(x**0) + L0x2001a742*(x**1)
)
[3329, x**2 - 583],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a744*(x**0) + L0x2001a746*(x**1)
)
[3329, x**2 - 2746],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a748*(x**0) + L0x2001a74a*(x**1)
)
[3329, x**2 - 2649],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a74c*(x**0) + L0x2001a74e*(x**1)
)
[3329, x**2 - 680],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a750*(x**0) + L0x2001a752*(x**1)
)
[3329, x**2 - 1637],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a754*(x**0) + L0x2001a756*(x**1)
)
[3329, x**2 - 1692],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a758*(x**0) + L0x2001a75a*(x**1)
)
[3329, x**2 - 723],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a75c*(x**0) + L0x2001a75e*(x**1)
)
[3329, x**2 - 2606],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a760*(x**0) + L0x2001a762*(x**1)
)
[3329, x**2 - 2288],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a764*(x**0) + L0x2001a766*(x**1)
)
[3329, x**2 - 1041],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a768*(x**0) + L0x2001a76a*(x**1)
)
[3329, x**2 - 1100],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a76c*(x**0) + L0x2001a76e*(x**1)
)
[3329, x**2 - 2229],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a770*(x**0) + L0x2001a772*(x**1)
)
[3329, x**2 - 1409],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a774*(x**0) + L0x2001a776*(x**1)
)
[3329, x**2 - 1920],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a778*(x**0) + L0x2001a77a*(x**1)
)
[3329, x**2 - 2662],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a77c*(x**0) + L0x2001a77e*(x**1)
)
[3329, x**2 - 667],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a780*(x**0) + L0x2001a782*(x**1)
)
[3329, x**2 - 3281],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a784*(x**0) + L0x2001a786*(x**1)
)
[3329, x**2 - 48],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a788*(x**0) + L0x2001a78a*(x**1)
)
[3329, x**2 - 233],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a78c*(x**0) + L0x2001a78e*(x**1)
)
[3329, x**2 - 3096],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a790*(x**0) + L0x2001a792*(x**1)
)
[3329, x**2 - 756],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a794*(x**0) + L0x2001a796*(x**1)
)
[3329, x**2 - 2573],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a798*(x**0) + L0x2001a79a*(x**1)
)
[3329, x**2 - 2156],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a79c*(x**0) + L0x2001a79e*(x**1)
)
[3329, x**2 - 1173],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7a0*(x**0) + L0x2001a7a2*(x**1)
)
[3329, x**2 - 3015],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7a4*(x**0) + L0x2001a7a6*(x**1)
)
[3329, x**2 - 314],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7a8*(x**0) + L0x2001a7aa*(x**1)
)
[3329, x**2 - 3050],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7ac*(x**0) + L0x2001a7ae*(x**1)
)
[3329, x**2 - 279],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7b0*(x**0) + L0x2001a7b2*(x**1)
)
[3329, x**2 - 1703],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7b4*(x**0) + L0x2001a7b6*(x**1)
)
[3329, x**2 - 1626],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7b8*(x**0) + L0x2001a7ba*(x**1)
)
[3329, x**2 - 1651],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7bc*(x**0) + L0x2001a7be*(x**1)
)
[3329, x**2 - 1678],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7c0*(x**0) + L0x2001a7c2*(x**1)
)
[3329, x**2 - 2789],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7c4*(x**0) + L0x2001a7c6*(x**1)
)
[3329, x**2 - 540],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7c8*(x**0) + L0x2001a7ca*(x**1)
)
[3329, x**2 - 1789],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7cc*(x**0) + L0x2001a7ce*(x**1)
)
[3329, x**2 - 1540],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7d0*(x**0) + L0x2001a7d2*(x**1)
)
[3329, x**2 - 1847],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7d4*(x**0) + L0x2001a7d6*(x**1)
)
[3329, x**2 - 1482],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7d8*(x**0) + L0x2001a7da*(x**1)
)
[3329, x**2 - 952],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7dc*(x**0) + L0x2001a7de*(x**1)
)
[3329, x**2 - 2377],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7e0*(x**0) + L0x2001a7e2*(x**1)
)
[3329, x**2 - 1461],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7e4*(x**0) + L0x2001a7e6*(x**1)
)
[3329, x**2 - 1868],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7e8*(x**0) + L0x2001a7ea*(x**1)
)
[3329, x**2 - 2687],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7ec*(x**0) + L0x2001a7ee*(x**1)
)
[3329, x**2 - 642],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7f0*(x**0) + L0x2001a7f2*(x**1)
)
[3329, x**2 - 939],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7f4*(x**0) + L0x2001a7f6*(x**1)
)
[3329, x**2 - 2390],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7f8*(x**0) + L0x2001a7fa*(x**1)
)
[3329, x**2 - 2308],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a7fc*(x**0) + L0x2001a7fe*(x**1)
)
[3329, x**2 - 1021],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a800*(x**0) + L0x2001a802*(x**1)
)
[3329, x**2 - 2437],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a804*(x**0) + L0x2001a806*(x**1)
)
[3329, x**2 - 892],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a808*(x**0) + L0x2001a80a*(x**1)
)
[3329, x**2 - 2388],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a80c*(x**0) + L0x2001a80e*(x**1)
)
[3329, x**2 - 941],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a810*(x**0) + L0x2001a812*(x**1)
)
[3329, x**2 - 733],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a814*(x**0) + L0x2001a816*(x**1)
)
[3329, x**2 - 2596],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a818*(x**0) + L0x2001a81a*(x**1)
)
[3329, x**2 - 2337],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a81c*(x**0) + L0x2001a81e*(x**1)
)
[3329, x**2 - 992],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a820*(x**0) + L0x2001a822*(x**1)
)
[3329, x**2 - 268],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a824*(x**0) + L0x2001a826*(x**1)
)
[3329, x**2 - 3061],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a828*(x**0) + L0x2001a82a*(x**1)
)
[3329, x**2 - 641],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a82c*(x**0) + L0x2001a82e*(x**1)
)
[3329, x**2 - 2688],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a830*(x**0) + L0x2001a832*(x**1)
)
[3329, x**2 - 1584],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a834*(x**0) + L0x2001a836*(x**1)
)
[3329, x**2 - 1745],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a838*(x**0) + L0x2001a83a*(x**1)
)
[3329, x**2 - 2298],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a83c*(x**0) + L0x2001a83e*(x**1)
)
[3329, x**2 - 1031],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a840*(x**0) + L0x2001a842*(x**1)
)
[3329, x**2 - 2037],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a844*(x**0) + L0x2001a846*(x**1)
)
[3329, x**2 - 1292],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a848*(x**0) + L0x2001a84a*(x**1)
)
[3329, x**2 - 3220],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a84c*(x**0) + L0x2001a84e*(x**1)
)
[3329, x**2 - 109],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a850*(x**0) + L0x2001a852*(x**1)
)
[3329, x**2 - 375],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a854*(x**0) + L0x2001a856*(x**1)
)
[3329, x**2 - 2954],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a858*(x**0) + L0x2001a85a*(x**1)
)
[3329, x**2 - 2549],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a85c*(x**0) + L0x2001a85e*(x**1)
)
[3329, x**2 - 780],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a860*(x**0) + L0x2001a862*(x**1)
)
[3329, x**2 - 2090],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a864*(x**0) + L0x2001a866*(x**1)
)
[3329, x**2 - 1239],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a868*(x**0) + L0x2001a86a*(x**1)
)
[3329, x**2 - 1645],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a86c*(x**0) + L0x2001a86e*(x**1)
)
[3329, x**2 - 1684],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a870*(x**0) + L0x2001a872*(x**1)
)
[3329, x**2 - 1063],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a874*(x**0) + L0x2001a876*(x**1)
)
[3329, x**2 - 2266],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a878*(x**0) + L0x2001a87a*(x**1)
)
[3329, x**2 - 319],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a87c*(x**0) + L0x2001a87e*(x**1)
)
[3329, x**2 - 3010],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a880*(x**0) + L0x2001a882*(x**1)
)
[3329, x**2 - 2773],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a884*(x**0) + L0x2001a886*(x**1)
)
[3329, x**2 - 556],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a888*(x**0) + L0x2001a88a*(x**1)
)
[3329, x**2 - 757],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a88c*(x**0) + L0x2001a88e*(x**1)
)
[3329, x**2 - 2572],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a890*(x**0) + L0x2001a892*(x**1)
)
[3329, x**2 - 2099],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a894*(x**0) + L0x2001a896*(x**1)
)
[3329, x**2 - 1230],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a898*(x**0) + L0x2001a89a*(x**1)
)
[3329, x**2 - 561],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a89c*(x**0) + L0x2001a89e*(x**1)
)
[3329, x**2 - 2768],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8a0*(x**0) + L0x2001a8a2*(x**1)
)
[3329, x**2 - 2466],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8a4*(x**0) + L0x2001a8a6*(x**1)
)
[3329, x**2 - 863],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8a8*(x**0) + L0x2001a8aa*(x**1)
)
[3329, x**2 - 2594],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8ac*(x**0) + L0x2001a8ae*(x**1)
)
[3329, x**2 - 735],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8b0*(x**0) + L0x2001a8b2*(x**1)
)
[3329, x**2 - 2804],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8b4*(x**0) + L0x2001a8b6*(x**1)
)
[3329, x**2 - 525],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8b8*(x**0) + L0x2001a8ba*(x**1)
)
[3329, x**2 - 1092],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8bc*(x**0) + L0x2001a8be*(x**1)
)
[3329, x**2 - 2237],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8c0*(x**0) + L0x2001a8c2*(x**1)
)
[3329, x**2 - 403],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8c4*(x**0) + L0x2001a8c6*(x**1)
)
[3329, x**2 - 2926],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8c8*(x**0) + L0x2001a8ca*(x**1)
)
[3329, x**2 - 1026],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8cc*(x**0) + L0x2001a8ce*(x**1)
)
[3329, x**2 - 2303],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8d0*(x**0) + L0x2001a8d2*(x**1)
)
[3329, x**2 - 1143],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8d4*(x**0) + L0x2001a8d6*(x**1)
)
[3329, x**2 - 2186],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8d8*(x**0) + L0x2001a8da*(x**1)
)
[3329, x**2 - 2150],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8dc*(x**0) + L0x2001a8de*(x**1)
)
[3329, x**2 - 1179],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8e0*(x**0) + L0x2001a8e2*(x**1)
)
[3329, x**2 - 2775],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8e4*(x**0) + L0x2001a8e6*(x**1)
)
[3329, x**2 - 554],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8e8*(x**0) + L0x2001a8ea*(x**1)
)
[3329, x**2 - 886],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8ec*(x**0) + L0x2001a8ee*(x**1)
)
[3329, x**2 - 2443],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8f0*(x**0) + L0x2001a8f2*(x**1)
)
[3329, x**2 - 1722],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8f4*(x**0) + L0x2001a8f6*(x**1)
)
[3329, x**2 - 1607],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8f8*(x**0) + L0x2001a8fa*(x**1)
)
[3329, x**2 - 1212],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a8fc*(x**0) + L0x2001a8fe*(x**1)
)
[3329, x**2 - 2117],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a900*(x**0) + L0x2001a902*(x**1)
)
[3329, x**2 - 1874],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a904*(x**0) + L0x2001a906*(x**1)
)
[3329, x**2 - 1455],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a908*(x**0) + L0x2001a90a*(x**1)
)
[3329, x**2 - 1029],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a90c*(x**0) + L0x2001a90e*(x**1)
)
[3329, x**2 - 2300],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a910*(x**0) + L0x2001a912*(x**1)
)
[3329, x**2 - 2110],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a914*(x**0) + L0x2001a916*(x**1)
)
[3329, x**2 - 1219],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a918*(x**0) + L0x2001a91a*(x**1)
)
[3329, x**2 - 2935],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a91c*(x**0) + L0x2001a91e*(x**1)
)
[3329, x**2 - 394],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a920*(x**0) + L0x2001a922*(x**1)
)
[3329, x**2 - 885],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a924*(x**0) + L0x2001a926*(x**1)
)
[3329, x**2 - 2444],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a928*(x**0) + L0x2001a92a*(x**1)
)
[3329, x**2 - 2154],
eqmod 
(inp_poly * inp_poly)
(
L0x2001a92c*(x**0) + L0x2001a92e*(x**1)
)
[3329, x**2 - 1175]
]
&&
and [
   0@16 <=s L0x2001a730, L0x2001a730 <=s 3329@16,
   0@16 <=s L0x2001a732, L0x2001a732 <=s 3329@16,
   0@16 <=s L0x2001a734, L0x2001a734 <=s 3329@16,
   0@16 <=s L0x2001a736, L0x2001a736 <=s 3329@16,
   0@16 <=s L0x2001a738, L0x2001a738 <=s 3329@16,
   0@16 <=s L0x2001a73a, L0x2001a73a <=s 3329@16,
   0@16 <=s L0x2001a73c, L0x2001a73c <=s 3329@16,
   0@16 <=s L0x2001a73e, L0x2001a73e <=s 3329@16,
   0@16 <=s L0x2001a740, L0x2001a740 <=s 3329@16,
   0@16 <=s L0x2001a742, L0x2001a742 <=s 3329@16,
   0@16 <=s L0x2001a744, L0x2001a744 <=s 3329@16,
   0@16 <=s L0x2001a746, L0x2001a746 <=s 3329@16,
   0@16 <=s L0x2001a748, L0x2001a748 <=s 3329@16,
   0@16 <=s L0x2001a74a, L0x2001a74a <=s 3329@16,
   0@16 <=s L0x2001a74c, L0x2001a74c <=s 3329@16,
   0@16 <=s L0x2001a74e, L0x2001a74e <=s 3329@16,
   0@16 <=s L0x2001a750, L0x2001a750 <=s 3329@16,
   0@16 <=s L0x2001a752, L0x2001a752 <=s 3329@16,
   0@16 <=s L0x2001a754, L0x2001a754 <=s 3329@16,
   0@16 <=s L0x2001a756, L0x2001a756 <=s 3329@16,
   0@16 <=s L0x2001a758, L0x2001a758 <=s 3329@16,
   0@16 <=s L0x2001a75a, L0x2001a75a <=s 3329@16,
   0@16 <=s L0x2001a75c, L0x2001a75c <=s 3329@16,
   0@16 <=s L0x2001a75e, L0x2001a75e <=s 3329@16,
   0@16 <=s L0x2001a760, L0x2001a760 <=s 3329@16,
   0@16 <=s L0x2001a762, L0x2001a762 <=s 3329@16,
   0@16 <=s L0x2001a764, L0x2001a764 <=s 3329@16,
   0@16 <=s L0x2001a766, L0x2001a766 <=s 3329@16,
   0@16 <=s L0x2001a768, L0x2001a768 <=s 3329@16,
   0@16 <=s L0x2001a76a, L0x2001a76a <=s 3329@16,
   0@16 <=s L0x2001a76c, L0x2001a76c <=s 3329@16,
   0@16 <=s L0x2001a76e, L0x2001a76e <=s 3329@16,
   0@16 <=s L0x2001a770, L0x2001a770 <=s 3329@16,
   0@16 <=s L0x2001a772, L0x2001a772 <=s 3329@16,
   0@16 <=s L0x2001a774, L0x2001a774 <=s 3329@16,
   0@16 <=s L0x2001a776, L0x2001a776 <=s 3329@16,
   0@16 <=s L0x2001a778, L0x2001a778 <=s 3329@16,
   0@16 <=s L0x2001a77a, L0x2001a77a <=s 3329@16,
   0@16 <=s L0x2001a77c, L0x2001a77c <=s 3329@16,
   0@16 <=s L0x2001a77e, L0x2001a77e <=s 3329@16,
   0@16 <=s L0x2001a780, L0x2001a780 <=s 3329@16,
   0@16 <=s L0x2001a782, L0x2001a782 <=s 3329@16,
   0@16 <=s L0x2001a784, L0x2001a784 <=s 3329@16,
   0@16 <=s L0x2001a786, L0x2001a786 <=s 3329@16,
   0@16 <=s L0x2001a788, L0x2001a788 <=s 3329@16,
   0@16 <=s L0x2001a78a, L0x2001a78a <=s 3329@16,
   0@16 <=s L0x2001a78c, L0x2001a78c <=s 3329@16,
   0@16 <=s L0x2001a78e, L0x2001a78e <=s 3329@16,
   0@16 <=s L0x2001a790, L0x2001a790 <=s 3329@16,
   0@16 <=s L0x2001a792, L0x2001a792 <=s 3329@16,
   0@16 <=s L0x2001a794, L0x2001a794 <=s 3329@16,
   0@16 <=s L0x2001a796, L0x2001a796 <=s 3329@16,
   0@16 <=s L0x2001a798, L0x2001a798 <=s 3329@16,
   0@16 <=s L0x2001a79a, L0x2001a79a <=s 3329@16,
   0@16 <=s L0x2001a79c, L0x2001a79c <=s 3329@16,
   0@16 <=s L0x2001a79e, L0x2001a79e <=s 3329@16,
   0@16 <=s L0x2001a7a0, L0x2001a7a0 <=s 3329@16,
   0@16 <=s L0x2001a7a2, L0x2001a7a2 <=s 3329@16,
   0@16 <=s L0x2001a7a4, L0x2001a7a4 <=s 3329@16,
   0@16 <=s L0x2001a7a6, L0x2001a7a6 <=s 3329@16,
   0@16 <=s L0x2001a7a8, L0x2001a7a8 <=s 3329@16,
   0@16 <=s L0x2001a7aa, L0x2001a7aa <=s 3329@16,
   0@16 <=s L0x2001a7ac, L0x2001a7ac <=s 3329@16,
   0@16 <=s L0x2001a7ae, L0x2001a7ae <=s 3329@16,
   0@16 <=s L0x2001a7b0, L0x2001a7b0 <=s 3329@16,
   0@16 <=s L0x2001a7b2, L0x2001a7b2 <=s 3329@16,
   0@16 <=s L0x2001a7b4, L0x2001a7b4 <=s 3329@16,
   0@16 <=s L0x2001a7b6, L0x2001a7b6 <=s 3329@16,
   0@16 <=s L0x2001a7b8, L0x2001a7b8 <=s 3329@16,
   0@16 <=s L0x2001a7ba, L0x2001a7ba <=s 3329@16,
   0@16 <=s L0x2001a7bc, L0x2001a7bc <=s 3329@16,
   0@16 <=s L0x2001a7be, L0x2001a7be <=s 3329@16,
   0@16 <=s L0x2001a7c0, L0x2001a7c0 <=s 3329@16,
   0@16 <=s L0x2001a7c2, L0x2001a7c2 <=s 3329@16,
   0@16 <=s L0x2001a7c4, L0x2001a7c4 <=s 3329@16,
   0@16 <=s L0x2001a7c6, L0x2001a7c6 <=s 3329@16,
   0@16 <=s L0x2001a7c8, L0x2001a7c8 <=s 3329@16,
   0@16 <=s L0x2001a7ca, L0x2001a7ca <=s 3329@16,
   0@16 <=s L0x2001a7cc, L0x2001a7cc <=s 3329@16,
   0@16 <=s L0x2001a7ce, L0x2001a7ce <=s 3329@16,
   0@16 <=s L0x2001a7d0, L0x2001a7d0 <=s 3329@16,
   0@16 <=s L0x2001a7d2, L0x2001a7d2 <=s 3329@16,
   0@16 <=s L0x2001a7d4, L0x2001a7d4 <=s 3329@16,
   0@16 <=s L0x2001a7d6, L0x2001a7d6 <=s 3329@16,
   0@16 <=s L0x2001a7d8, L0x2001a7d8 <=s 3329@16,
   0@16 <=s L0x2001a7da, L0x2001a7da <=s 3329@16,
   0@16 <=s L0x2001a7dc, L0x2001a7dc <=s 3329@16,
   0@16 <=s L0x2001a7de, L0x2001a7de <=s 3329@16,
   0@16 <=s L0x2001a7e0, L0x2001a7e0 <=s 3329@16,
   0@16 <=s L0x2001a7e2, L0x2001a7e2 <=s 3329@16,
   0@16 <=s L0x2001a7e4, L0x2001a7e4 <=s 3329@16,
   0@16 <=s L0x2001a7e6, L0x2001a7e6 <=s 3329@16,
   0@16 <=s L0x2001a7e8, L0x2001a7e8 <=s 3329@16,
   0@16 <=s L0x2001a7ea, L0x2001a7ea <=s 3329@16,
   0@16 <=s L0x2001a7ec, L0x2001a7ec <=s 3329@16,
   0@16 <=s L0x2001a7ee, L0x2001a7ee <=s 3329@16,
   0@16 <=s L0x2001a7f0, L0x2001a7f0 <=s 3329@16,
   0@16 <=s L0x2001a7f2, L0x2001a7f2 <=s 3329@16,
   0@16 <=s L0x2001a7f4, L0x2001a7f4 <=s 3329@16,
   0@16 <=s L0x2001a7f6, L0x2001a7f6 <=s 3329@16,
   0@16 <=s L0x2001a7f8, L0x2001a7f8 <=s 3329@16,
   0@16 <=s L0x2001a7fa, L0x2001a7fa <=s 3329@16,
   0@16 <=s L0x2001a7fc, L0x2001a7fc <=s 3329@16,
   0@16 <=s L0x2001a7fe, L0x2001a7fe <=s 3329@16,
   0@16 <=s L0x2001a800, L0x2001a800 <=s 3329@16,
   0@16 <=s L0x2001a802, L0x2001a802 <=s 3329@16,
   0@16 <=s L0x2001a804, L0x2001a804 <=s 3329@16,
   0@16 <=s L0x2001a806, L0x2001a806 <=s 3329@16,
   0@16 <=s L0x2001a808, L0x2001a808 <=s 3329@16,
   0@16 <=s L0x2001a80a, L0x2001a80a <=s 3329@16,
   0@16 <=s L0x2001a80c, L0x2001a80c <=s 3329@16,
   0@16 <=s L0x2001a80e, L0x2001a80e <=s 3329@16,
   0@16 <=s L0x2001a810, L0x2001a810 <=s 3329@16,
   0@16 <=s L0x2001a812, L0x2001a812 <=s 3329@16,
   0@16 <=s L0x2001a814, L0x2001a814 <=s 3329@16,
   0@16 <=s L0x2001a816, L0x2001a816 <=s 3329@16,
   0@16 <=s L0x2001a818, L0x2001a818 <=s 3329@16,
   0@16 <=s L0x2001a81a, L0x2001a81a <=s 3329@16,
   0@16 <=s L0x2001a81c, L0x2001a81c <=s 3329@16,
   0@16 <=s L0x2001a81e, L0x2001a81e <=s 3329@16,
   0@16 <=s L0x2001a820, L0x2001a820 <=s 3329@16,
   0@16 <=s L0x2001a822, L0x2001a822 <=s 3329@16,
   0@16 <=s L0x2001a824, L0x2001a824 <=s 3329@16,
   0@16 <=s L0x2001a826, L0x2001a826 <=s 3329@16,
   0@16 <=s L0x2001a828, L0x2001a828 <=s 3329@16,
   0@16 <=s L0x2001a82a, L0x2001a82a <=s 3329@16,
   0@16 <=s L0x2001a82c, L0x2001a82c <=s 3329@16,
   0@16 <=s L0x2001a82e, L0x2001a82e <=s 3329@16,
   0@16 <=s L0x2001a830, L0x2001a830 <=s 3329@16,
   0@16 <=s L0x2001a832, L0x2001a832 <=s 3329@16,
   0@16 <=s L0x2001a834, L0x2001a834 <=s 3329@16,
   0@16 <=s L0x2001a836, L0x2001a836 <=s 3329@16,
   0@16 <=s L0x2001a838, L0x2001a838 <=s 3329@16,
   0@16 <=s L0x2001a83a, L0x2001a83a <=s 3329@16,
   0@16 <=s L0x2001a83c, L0x2001a83c <=s 3329@16,
   0@16 <=s L0x2001a83e, L0x2001a83e <=s 3329@16,
   0@16 <=s L0x2001a840, L0x2001a840 <=s 3329@16,
   0@16 <=s L0x2001a842, L0x2001a842 <=s 3329@16,
   0@16 <=s L0x2001a844, L0x2001a844 <=s 3329@16,
   0@16 <=s L0x2001a846, L0x2001a846 <=s 3329@16,
   0@16 <=s L0x2001a848, L0x2001a848 <=s 3329@16,
   0@16 <=s L0x2001a84a, L0x2001a84a <=s 3329@16,
   0@16 <=s L0x2001a84c, L0x2001a84c <=s 3329@16,
   0@16 <=s L0x2001a84e, L0x2001a84e <=s 3329@16,
   0@16 <=s L0x2001a850, L0x2001a850 <=s 3329@16,
   0@16 <=s L0x2001a852, L0x2001a852 <=s 3329@16,
   0@16 <=s L0x2001a854, L0x2001a854 <=s 3329@16,
   0@16 <=s L0x2001a856, L0x2001a856 <=s 3329@16,
   0@16 <=s L0x2001a858, L0x2001a858 <=s 3329@16,
   0@16 <=s L0x2001a85a, L0x2001a85a <=s 3329@16,
   0@16 <=s L0x2001a85c, L0x2001a85c <=s 3329@16,
   0@16 <=s L0x2001a85e, L0x2001a85e <=s 3329@16,
   0@16 <=s L0x2001a860, L0x2001a860 <=s 3329@16,
   0@16 <=s L0x2001a862, L0x2001a862 <=s 3329@16,
   0@16 <=s L0x2001a864, L0x2001a864 <=s 3329@16,
   0@16 <=s L0x2001a866, L0x2001a866 <=s 3329@16,
   0@16 <=s L0x2001a868, L0x2001a868 <=s 3329@16,
   0@16 <=s L0x2001a86a, L0x2001a86a <=s 3329@16,
   0@16 <=s L0x2001a86c, L0x2001a86c <=s 3329@16,
   0@16 <=s L0x2001a86e, L0x2001a86e <=s 3329@16,
   0@16 <=s L0x2001a870, L0x2001a870 <=s 3329@16,
   0@16 <=s L0x2001a872, L0x2001a872 <=s 3329@16,
   0@16 <=s L0x2001a874, L0x2001a874 <=s 3329@16,
   0@16 <=s L0x2001a876, L0x2001a876 <=s 3329@16,
   0@16 <=s L0x2001a878, L0x2001a878 <=s 3329@16,
   0@16 <=s L0x2001a87a, L0x2001a87a <=s 3329@16,
   0@16 <=s L0x2001a87c, L0x2001a87c <=s 3329@16,
   0@16 <=s L0x2001a87e, L0x2001a87e <=s 3329@16,
   0@16 <=s L0x2001a880, L0x2001a880 <=s 3329@16,
   0@16 <=s L0x2001a882, L0x2001a882 <=s 3329@16,
   0@16 <=s L0x2001a884, L0x2001a884 <=s 3329@16,
   0@16 <=s L0x2001a886, L0x2001a886 <=s 3329@16,
   0@16 <=s L0x2001a888, L0x2001a888 <=s 3329@16,
   0@16 <=s L0x2001a88a, L0x2001a88a <=s 3329@16,
   0@16 <=s L0x2001a88c, L0x2001a88c <=s 3329@16,
   0@16 <=s L0x2001a88e, L0x2001a88e <=s 3329@16,
   0@16 <=s L0x2001a890, L0x2001a890 <=s 3329@16,
   0@16 <=s L0x2001a892, L0x2001a892 <=s 3329@16,
   0@16 <=s L0x2001a894, L0x2001a894 <=s 3329@16,
   0@16 <=s L0x2001a896, L0x2001a896 <=s 3329@16,
   0@16 <=s L0x2001a898, L0x2001a898 <=s 3329@16,
   0@16 <=s L0x2001a89a, L0x2001a89a <=s 3329@16,
   0@16 <=s L0x2001a89c, L0x2001a89c <=s 3329@16,
   0@16 <=s L0x2001a89e, L0x2001a89e <=s 3329@16,
   0@16 <=s L0x2001a8a0, L0x2001a8a0 <=s 3329@16,
   0@16 <=s L0x2001a8a2, L0x2001a8a2 <=s 3329@16,
   0@16 <=s L0x2001a8a4, L0x2001a8a4 <=s 3329@16,
   0@16 <=s L0x2001a8a6, L0x2001a8a6 <=s 3329@16,
   0@16 <=s L0x2001a8a8, L0x2001a8a8 <=s 3329@16,
   0@16 <=s L0x2001a8aa, L0x2001a8aa <=s 3329@16,
   0@16 <=s L0x2001a8ac, L0x2001a8ac <=s 3329@16,
   0@16 <=s L0x2001a8ae, L0x2001a8ae <=s 3329@16,
   0@16 <=s L0x2001a8b0, L0x2001a8b0 <=s 3329@16,
   0@16 <=s L0x2001a8b2, L0x2001a8b2 <=s 3329@16,
   0@16 <=s L0x2001a8b4, L0x2001a8b4 <=s 3329@16,
   0@16 <=s L0x2001a8b6, L0x2001a8b6 <=s 3329@16,
   0@16 <=s L0x2001a8b8, L0x2001a8b8 <=s 3329@16,
   0@16 <=s L0x2001a8ba, L0x2001a8ba <=s 3329@16,
   0@16 <=s L0x2001a8bc, L0x2001a8bc <=s 3329@16,
   0@16 <=s L0x2001a8be, L0x2001a8be <=s 3329@16,
   0@16 <=s L0x2001a8c0, L0x2001a8c0 <=s 3329@16,
   0@16 <=s L0x2001a8c2, L0x2001a8c2 <=s 3329@16,
   0@16 <=s L0x2001a8c4, L0x2001a8c4 <=s 3329@16,
   0@16 <=s L0x2001a8c6, L0x2001a8c6 <=s 3329@16,
   0@16 <=s L0x2001a8c8, L0x2001a8c8 <=s 3329@16,
   0@16 <=s L0x2001a8ca, L0x2001a8ca <=s 3329@16,
   0@16 <=s L0x2001a8cc, L0x2001a8cc <=s 3329@16,
   0@16 <=s L0x2001a8ce, L0x2001a8ce <=s 3329@16,
   0@16 <=s L0x2001a8d0, L0x2001a8d0 <=s 3329@16,
   0@16 <=s L0x2001a8d2, L0x2001a8d2 <=s 3329@16,
   0@16 <=s L0x2001a8d4, L0x2001a8d4 <=s 3329@16,
   0@16 <=s L0x2001a8d6, L0x2001a8d6 <=s 3329@16,
   0@16 <=s L0x2001a8d8, L0x2001a8d8 <=s 3329@16,
   0@16 <=s L0x2001a8da, L0x2001a8da <=s 3329@16,
   0@16 <=s L0x2001a8dc, L0x2001a8dc <=s 3329@16,
   0@16 <=s L0x2001a8de, L0x2001a8de <=s 3329@16,
   0@16 <=s L0x2001a8e0, L0x2001a8e0 <=s 3329@16,
   0@16 <=s L0x2001a8e2, L0x2001a8e2 <=s 3329@16,
   0@16 <=s L0x2001a8e4, L0x2001a8e4 <=s 3329@16,
   0@16 <=s L0x2001a8e6, L0x2001a8e6 <=s 3329@16,
   0@16 <=s L0x2001a8e8, L0x2001a8e8 <=s 3329@16,
   0@16 <=s L0x2001a8ea, L0x2001a8ea <=s 3329@16,
   0@16 <=s L0x2001a8ec, L0x2001a8ec <=s 3329@16,
   0@16 <=s L0x2001a8ee, L0x2001a8ee <=s 3329@16,
   0@16 <=s L0x2001a8f0, L0x2001a8f0 <=s 3329@16,
   0@16 <=s L0x2001a8f2, L0x2001a8f2 <=s 3329@16,
   0@16 <=s L0x2001a8f4, L0x2001a8f4 <=s 3329@16,
   0@16 <=s L0x2001a8f6, L0x2001a8f6 <=s 3329@16,
   0@16 <=s L0x2001a8f8, L0x2001a8f8 <=s 3329@16,
   0@16 <=s L0x2001a8fa, L0x2001a8fa <=s 3329@16,
   0@16 <=s L0x2001a8fc, L0x2001a8fc <=s 3329@16,
   0@16 <=s L0x2001a8fe, L0x2001a8fe <=s 3329@16,
   0@16 <=s L0x2001a900, L0x2001a900 <=s 3329@16,
   0@16 <=s L0x2001a902, L0x2001a902 <=s 3329@16,
   0@16 <=s L0x2001a904, L0x2001a904 <=s 3329@16,
   0@16 <=s L0x2001a906, L0x2001a906 <=s 3329@16,
   0@16 <=s L0x2001a908, L0x2001a908 <=s 3329@16,
   0@16 <=s L0x2001a90a, L0x2001a90a <=s 3329@16,
   0@16 <=s L0x2001a90c, L0x2001a90c <=s 3329@16,
   0@16 <=s L0x2001a90e, L0x2001a90e <=s 3329@16,
   0@16 <=s L0x2001a910, L0x2001a910 <=s 3329@16,
   0@16 <=s L0x2001a912, L0x2001a912 <=s 3329@16,
   0@16 <=s L0x2001a914, L0x2001a914 <=s 3329@16,
   0@16 <=s L0x2001a916, L0x2001a916 <=s 3329@16,
   0@16 <=s L0x2001a918, L0x2001a918 <=s 3329@16,
   0@16 <=s L0x2001a91a, L0x2001a91a <=s 3329@16,
   0@16 <=s L0x2001a91c, L0x2001a91c <=s 3329@16,
   0@16 <=s L0x2001a91e, L0x2001a91e <=s 3329@16,
   0@16 <=s L0x2001a920, L0x2001a920 <=s 3329@16,
   0@16 <=s L0x2001a922, L0x2001a922 <=s 3329@16,
   0@16 <=s L0x2001a924, L0x2001a924 <=s 3329@16,
   0@16 <=s L0x2001a926, L0x2001a926 <=s 3329@16,
   0@16 <=s L0x2001a928, L0x2001a928 <=s 3329@16,
   0@16 <=s L0x2001a92a, L0x2001a92a <=s 3329@16,
   0@16 <=s L0x2001a92c, L0x2001a92c <=s 3329@16,
   0@16 <=s L0x2001a92e, L0x2001a92e <=s 3329@16
]
}

