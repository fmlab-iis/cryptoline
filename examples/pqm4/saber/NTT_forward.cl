(* server@szu: -v -jobs 26 -isafety -no_carry_constraint -slicing saber.cl 
Verifying program safety:               [OK]            1737.017168 seconds
Verifying range assertions:             [OK]            0.063659 seconds
Verifying range specification:          [OK]            1485.441777 seconds
Rewriting value-preserved casting:      [OK]            0.368162 seconds
Verifying algebraic assertions:         [OK]            108.764698 seconds
Verifying algebraic specification:      [OK]            42.161137 seconds
Verification result:                    [OK]            3374.008258 seconds
*)


proc main (
  sint32 x,
  sint16 a000, sint16 a001, sint16 a002, sint16 a003,
  sint16 a004, sint16 a005, sint16 a006, sint16 a007,
  sint16 a008, sint16 a009, sint16 a010, sint16 a011,
  sint16 a012, sint16 a013, sint16 a014, sint16 a015,
  sint16 a016, sint16 a017, sint16 a018, sint16 a019,
  sint16 a020, sint16 a021, sint16 a022, sint16 a023,
  sint16 a024, sint16 a025, sint16 a026, sint16 a027,
  sint16 a028, sint16 a029, sint16 a030, sint16 a031,
  sint16 a032, sint16 a033, sint16 a034, sint16 a035,
  sint16 a036, sint16 a037, sint16 a038, sint16 a039,
  sint16 a040, sint16 a041, sint16 a042, sint16 a043,
  sint16 a044, sint16 a045, sint16 a046, sint16 a047,
  sint16 a048, sint16 a049, sint16 a050, sint16 a051,
  sint16 a052, sint16 a053, sint16 a054, sint16 a055,
  sint16 a056, sint16 a057, sint16 a058, sint16 a059,
  sint16 a060, sint16 a061, sint16 a062, sint16 a063,
  sint16 a064, sint16 a065, sint16 a066, sint16 a067,
  sint16 a068, sint16 a069, sint16 a070, sint16 a071,
  sint16 a072, sint16 a073, sint16 a074, sint16 a075,
  sint16 a076, sint16 a077, sint16 a078, sint16 a079,
  sint16 a080, sint16 a081, sint16 a082, sint16 a083,
  sint16 a084, sint16 a085, sint16 a086, sint16 a087,
  sint16 a088, sint16 a089, sint16 a090, sint16 a091,
  sint16 a092, sint16 a093, sint16 a094, sint16 a095,
  sint16 a096, sint16 a097, sint16 a098, sint16 a099,
  sint16 a100, sint16 a101, sint16 a102, sint16 a103,
  sint16 a104, sint16 a105, sint16 a106, sint16 a107,
  sint16 a108, sint16 a109, sint16 a110, sint16 a111,
  sint16 a112, sint16 a113, sint16 a114, sint16 a115,
  sint16 a116, sint16 a117, sint16 a118, sint16 a119,
  sint16 a120, sint16 a121, sint16 a122, sint16 a123,
  sint16 a124, sint16 a125, sint16 a126, sint16 a127,
  sint16 a128, sint16 a129, sint16 a130, sint16 a131,
  sint16 a132, sint16 a133, sint16 a134, sint16 a135,
  sint16 a136, sint16 a137, sint16 a138, sint16 a139,
  sint16 a140, sint16 a141, sint16 a142, sint16 a143,
  sint16 a144, sint16 a145, sint16 a146, sint16 a147,
  sint16 a148, sint16 a149, sint16 a150, sint16 a151,
  sint16 a152, sint16 a153, sint16 a154, sint16 a155,
  sint16 a156, sint16 a157, sint16 a158, sint16 a159,
  sint16 a160, sint16 a161, sint16 a162, sint16 a163,
  sint16 a164, sint16 a165, sint16 a166, sint16 a167,
  sint16 a168, sint16 a169, sint16 a170, sint16 a171,
  sint16 a172, sint16 a173, sint16 a174, sint16 a175,
  sint16 a176, sint16 a177, sint16 a178, sint16 a179,
  sint16 a180, sint16 a181, sint16 a182, sint16 a183,
  sint16 a184, sint16 a185, sint16 a186, sint16 a187,
  sint16 a188, sint16 a189, sint16 a190, sint16 a191,
  sint16 a192, sint16 a193, sint16 a194, sint16 a195,
  sint16 a196, sint16 a197, sint16 a198, sint16 a199,
  sint16 a200, sint16 a201, sint16 a202, sint16 a203,
  sint16 a204, sint16 a205, sint16 a206, sint16 a207,
  sint16 a208, sint16 a209, sint16 a210, sint16 a211,
  sint16 a212, sint16 a213, sint16 a214, sint16 a215,
  sint16 a216, sint16 a217, sint16 a218, sint16 a219,
  sint16 a220, sint16 a221, sint16 a222, sint16 a223,
  sint16 a224, sint16 a225, sint16 a226, sint16 a227,
  sint16 a228, sint16 a229, sint16 a230, sint16 a231,
  sint16 a232, sint16 a233, sint16 a234, sint16 a235,
  sint16 a236, sint16 a237, sint16 a238, sint16 a239,
  sint16 a240, sint16 a241, sint16 a242, sint16 a243,
  sint16 a244, sint16 a245, sint16 a246, sint16 a247,
  sint16 a248, sint16 a249, sint16 a250, sint16 a251,
  sint16 a252, sint16 a253, sint16 a254, sint16 a255
) =

{
  true
  &&
  (* range *)
  and [
    (-4096)@16 <=s a000, a000 <s 4096@16,
    (-4096)@16 <=s a001, a001 <s 4096@16,
    (-4096)@16 <=s a002, a002 <s 4096@16,
    (-4096)@16 <=s a003, a003 <s 4096@16,
    (-4096)@16 <=s a004, a004 <s 4096@16,
    (-4096)@16 <=s a005, a005 <s 4096@16,
    (-4096)@16 <=s a006, a006 <s 4096@16,
    (-4096)@16 <=s a007, a007 <s 4096@16,
    (-4096)@16 <=s a008, a008 <s 4096@16,
    (-4096)@16 <=s a009, a009 <s 4096@16,
    (-4096)@16 <=s a010, a010 <s 4096@16,
    (-4096)@16 <=s a011, a011 <s 4096@16,
    (-4096)@16 <=s a012, a012 <s 4096@16,
    (-4096)@16 <=s a013, a013 <s 4096@16,
    (-4096)@16 <=s a014, a014 <s 4096@16,
    (-4096)@16 <=s a015, a015 <s 4096@16,
    (-4096)@16 <=s a016, a016 <s 4096@16,
    (-4096)@16 <=s a017, a017 <s 4096@16,
    (-4096)@16 <=s a018, a018 <s 4096@16,
    (-4096)@16 <=s a019, a019 <s 4096@16,
    (-4096)@16 <=s a020, a020 <s 4096@16,
    (-4096)@16 <=s a021, a021 <s 4096@16,
    (-4096)@16 <=s a022, a022 <s 4096@16,
    (-4096)@16 <=s a023, a023 <s 4096@16,
    (-4096)@16 <=s a024, a024 <s 4096@16,
    (-4096)@16 <=s a025, a025 <s 4096@16,
    (-4096)@16 <=s a026, a026 <s 4096@16,
    (-4096)@16 <=s a027, a027 <s 4096@16,
    (-4096)@16 <=s a028, a028 <s 4096@16,
    (-4096)@16 <=s a029, a029 <s 4096@16,
    (-4096)@16 <=s a030, a030 <s 4096@16,
    (-4096)@16 <=s a031, a031 <s 4096@16,
    (-4096)@16 <=s a032, a032 <s 4096@16,
    (-4096)@16 <=s a033, a033 <s 4096@16,
    (-4096)@16 <=s a034, a034 <s 4096@16,
    (-4096)@16 <=s a035, a035 <s 4096@16,
    (-4096)@16 <=s a036, a036 <s 4096@16,
    (-4096)@16 <=s a037, a037 <s 4096@16,
    (-4096)@16 <=s a038, a038 <s 4096@16,
    (-4096)@16 <=s a039, a039 <s 4096@16,
    (-4096)@16 <=s a040, a040 <s 4096@16,
    (-4096)@16 <=s a041, a041 <s 4096@16,
    (-4096)@16 <=s a042, a042 <s 4096@16,
    (-4096)@16 <=s a043, a043 <s 4096@16,
    (-4096)@16 <=s a044, a044 <s 4096@16,
    (-4096)@16 <=s a045, a045 <s 4096@16,
    (-4096)@16 <=s a046, a046 <s 4096@16,
    (-4096)@16 <=s a047, a047 <s 4096@16,
    (-4096)@16 <=s a048, a048 <s 4096@16,
    (-4096)@16 <=s a049, a049 <s 4096@16,
    (-4096)@16 <=s a050, a050 <s 4096@16,
    (-4096)@16 <=s a051, a051 <s 4096@16,
    (-4096)@16 <=s a052, a052 <s 4096@16,
    (-4096)@16 <=s a053, a053 <s 4096@16,
    (-4096)@16 <=s a054, a054 <s 4096@16,
    (-4096)@16 <=s a055, a055 <s 4096@16,
    (-4096)@16 <=s a056, a056 <s 4096@16,
    (-4096)@16 <=s a057, a057 <s 4096@16,
    (-4096)@16 <=s a058, a058 <s 4096@16,
    (-4096)@16 <=s a059, a059 <s 4096@16,
    (-4096)@16 <=s a060, a060 <s 4096@16,
    (-4096)@16 <=s a061, a061 <s 4096@16,
    (-4096)@16 <=s a062, a062 <s 4096@16,
    (-4096)@16 <=s a063, a063 <s 4096@16,
    (-4096)@16 <=s a064, a064 <s 4096@16,
    (-4096)@16 <=s a065, a065 <s 4096@16,
    (-4096)@16 <=s a066, a066 <s 4096@16,
    (-4096)@16 <=s a067, a067 <s 4096@16,
    (-4096)@16 <=s a068, a068 <s 4096@16,
    (-4096)@16 <=s a069, a069 <s 4096@16,
    (-4096)@16 <=s a070, a070 <s 4096@16,
    (-4096)@16 <=s a071, a071 <s 4096@16,
    (-4096)@16 <=s a072, a072 <s 4096@16,
    (-4096)@16 <=s a073, a073 <s 4096@16,
    (-4096)@16 <=s a074, a074 <s 4096@16,
    (-4096)@16 <=s a075, a075 <s 4096@16,
    (-4096)@16 <=s a076, a076 <s 4096@16,
    (-4096)@16 <=s a077, a077 <s 4096@16,
    (-4096)@16 <=s a078, a078 <s 4096@16,
    (-4096)@16 <=s a079, a079 <s 4096@16,
    (-4096)@16 <=s a080, a080 <s 4096@16,
    (-4096)@16 <=s a081, a081 <s 4096@16,
    (-4096)@16 <=s a082, a082 <s 4096@16,
    (-4096)@16 <=s a083, a083 <s 4096@16,
    (-4096)@16 <=s a084, a084 <s 4096@16,
    (-4096)@16 <=s a085, a085 <s 4096@16,
    (-4096)@16 <=s a086, a086 <s 4096@16,
    (-4096)@16 <=s a087, a087 <s 4096@16,
    (-4096)@16 <=s a088, a088 <s 4096@16,
    (-4096)@16 <=s a089, a089 <s 4096@16,
    (-4096)@16 <=s a090, a090 <s 4096@16,
    (-4096)@16 <=s a091, a091 <s 4096@16,
    (-4096)@16 <=s a092, a092 <s 4096@16,
    (-4096)@16 <=s a093, a093 <s 4096@16,
    (-4096)@16 <=s a094, a094 <s 4096@16,
    (-4096)@16 <=s a095, a095 <s 4096@16,
    (-4096)@16 <=s a096, a096 <s 4096@16,
    (-4096)@16 <=s a097, a097 <s 4096@16,
    (-4096)@16 <=s a098, a098 <s 4096@16,
    (-4096)@16 <=s a099, a099 <s 4096@16,
    (-4096)@16 <=s a100, a100 <s 4096@16,
    (-4096)@16 <=s a101, a101 <s 4096@16,
    (-4096)@16 <=s a102, a102 <s 4096@16,
    (-4096)@16 <=s a103, a103 <s 4096@16,
    (-4096)@16 <=s a104, a104 <s 4096@16,
    (-4096)@16 <=s a105, a105 <s 4096@16,
    (-4096)@16 <=s a106, a106 <s 4096@16,
    (-4096)@16 <=s a107, a107 <s 4096@16,
    (-4096)@16 <=s a108, a108 <s 4096@16,
    (-4096)@16 <=s a109, a109 <s 4096@16,
    (-4096)@16 <=s a110, a110 <s 4096@16,
    (-4096)@16 <=s a111, a111 <s 4096@16,
    (-4096)@16 <=s a112, a112 <s 4096@16,
    (-4096)@16 <=s a113, a113 <s 4096@16,
    (-4096)@16 <=s a114, a114 <s 4096@16,
    (-4096)@16 <=s a115, a115 <s 4096@16,
    (-4096)@16 <=s a116, a116 <s 4096@16,
    (-4096)@16 <=s a117, a117 <s 4096@16,
    (-4096)@16 <=s a118, a118 <s 4096@16,
    (-4096)@16 <=s a119, a119 <s 4096@16,
    (-4096)@16 <=s a120, a120 <s 4096@16,
    (-4096)@16 <=s a121, a121 <s 4096@16,
    (-4096)@16 <=s a122, a122 <s 4096@16,
    (-4096)@16 <=s a123, a123 <s 4096@16,
    (-4096)@16 <=s a124, a124 <s 4096@16,
    (-4096)@16 <=s a125, a125 <s 4096@16,
    (-4096)@16 <=s a126, a126 <s 4096@16,
    (-4096)@16 <=s a127, a127 <s 4096@16,
    (-4096)@16 <=s a128, a128 <s 4096@16,
    (-4096)@16 <=s a129, a129 <s 4096@16,
    (-4096)@16 <=s a130, a130 <s 4096@16,
    (-4096)@16 <=s a131, a131 <s 4096@16,
    (-4096)@16 <=s a132, a132 <s 4096@16,
    (-4096)@16 <=s a133, a133 <s 4096@16,
    (-4096)@16 <=s a134, a134 <s 4096@16,
    (-4096)@16 <=s a135, a135 <s 4096@16,
    (-4096)@16 <=s a136, a136 <s 4096@16,
    (-4096)@16 <=s a137, a137 <s 4096@16,
    (-4096)@16 <=s a138, a138 <s 4096@16,
    (-4096)@16 <=s a139, a139 <s 4096@16,
    (-4096)@16 <=s a140, a140 <s 4096@16,
    (-4096)@16 <=s a141, a141 <s 4096@16,
    (-4096)@16 <=s a142, a142 <s 4096@16,
    (-4096)@16 <=s a143, a143 <s 4096@16,
    (-4096)@16 <=s a144, a144 <s 4096@16,
    (-4096)@16 <=s a145, a145 <s 4096@16,
    (-4096)@16 <=s a146, a146 <s 4096@16,
    (-4096)@16 <=s a147, a147 <s 4096@16,
    (-4096)@16 <=s a148, a148 <s 4096@16,
    (-4096)@16 <=s a149, a149 <s 4096@16,
    (-4096)@16 <=s a150, a150 <s 4096@16,
    (-4096)@16 <=s a151, a151 <s 4096@16,
    (-4096)@16 <=s a152, a152 <s 4096@16,
    (-4096)@16 <=s a153, a153 <s 4096@16,
    (-4096)@16 <=s a154, a154 <s 4096@16,
    (-4096)@16 <=s a155, a155 <s 4096@16,
    (-4096)@16 <=s a156, a156 <s 4096@16,
    (-4096)@16 <=s a157, a157 <s 4096@16,
    (-4096)@16 <=s a158, a158 <s 4096@16,
    (-4096)@16 <=s a159, a159 <s 4096@16,
    (-4096)@16 <=s a160, a160 <s 4096@16,
    (-4096)@16 <=s a161, a161 <s 4096@16,
    (-4096)@16 <=s a162, a162 <s 4096@16,
    (-4096)@16 <=s a163, a163 <s 4096@16,
    (-4096)@16 <=s a164, a164 <s 4096@16,
    (-4096)@16 <=s a165, a165 <s 4096@16,
    (-4096)@16 <=s a166, a166 <s 4096@16,
    (-4096)@16 <=s a167, a167 <s 4096@16,
    (-4096)@16 <=s a168, a168 <s 4096@16,
    (-4096)@16 <=s a169, a169 <s 4096@16,
    (-4096)@16 <=s a170, a170 <s 4096@16,
    (-4096)@16 <=s a171, a171 <s 4096@16,
    (-4096)@16 <=s a172, a172 <s 4096@16,
    (-4096)@16 <=s a173, a173 <s 4096@16,
    (-4096)@16 <=s a174, a174 <s 4096@16,
    (-4096)@16 <=s a175, a175 <s 4096@16,
    (-4096)@16 <=s a176, a176 <s 4096@16,
    (-4096)@16 <=s a177, a177 <s 4096@16,
    (-4096)@16 <=s a178, a178 <s 4096@16,
    (-4096)@16 <=s a179, a179 <s 4096@16,
    (-4096)@16 <=s a180, a180 <s 4096@16,
    (-4096)@16 <=s a181, a181 <s 4096@16,
    (-4096)@16 <=s a182, a182 <s 4096@16,
    (-4096)@16 <=s a183, a183 <s 4096@16,
    (-4096)@16 <=s a184, a184 <s 4096@16,
    (-4096)@16 <=s a185, a185 <s 4096@16,
    (-4096)@16 <=s a186, a186 <s 4096@16,
    (-4096)@16 <=s a187, a187 <s 4096@16,
    (-4096)@16 <=s a188, a188 <s 4096@16,
    (-4096)@16 <=s a189, a189 <s 4096@16,
    (-4096)@16 <=s a190, a190 <s 4096@16,
    (-4096)@16 <=s a191, a191 <s 4096@16,
    (-4096)@16 <=s a192, a192 <s 4096@16,
    (-4096)@16 <=s a193, a193 <s 4096@16,
    (-4096)@16 <=s a194, a194 <s 4096@16,
    (-4096)@16 <=s a195, a195 <s 4096@16,
    (-4096)@16 <=s a196, a196 <s 4096@16,
    (-4096)@16 <=s a197, a197 <s 4096@16,
    (-4096)@16 <=s a198, a198 <s 4096@16,
    (-4096)@16 <=s a199, a199 <s 4096@16,
    (-4096)@16 <=s a200, a200 <s 4096@16,
    (-4096)@16 <=s a201, a201 <s 4096@16,
    (-4096)@16 <=s a202, a202 <s 4096@16,
    (-4096)@16 <=s a203, a203 <s 4096@16,
    (-4096)@16 <=s a204, a204 <s 4096@16,
    (-4096)@16 <=s a205, a205 <s 4096@16,
    (-4096)@16 <=s a206, a206 <s 4096@16,
    (-4096)@16 <=s a207, a207 <s 4096@16,
    (-4096)@16 <=s a208, a208 <s 4096@16,
    (-4096)@16 <=s a209, a209 <s 4096@16,
    (-4096)@16 <=s a210, a210 <s 4096@16,
    (-4096)@16 <=s a211, a211 <s 4096@16,
    (-4096)@16 <=s a212, a212 <s 4096@16,
    (-4096)@16 <=s a213, a213 <s 4096@16,
    (-4096)@16 <=s a214, a214 <s 4096@16,
    (-4096)@16 <=s a215, a215 <s 4096@16,
    (-4096)@16 <=s a216, a216 <s 4096@16,
    (-4096)@16 <=s a217, a217 <s 4096@16,
    (-4096)@16 <=s a218, a218 <s 4096@16,
    (-4096)@16 <=s a219, a219 <s 4096@16,
    (-4096)@16 <=s a220, a220 <s 4096@16,
    (-4096)@16 <=s a221, a221 <s 4096@16,
    (-4096)@16 <=s a222, a222 <s 4096@16,
    (-4096)@16 <=s a223, a223 <s 4096@16,
    (-4096)@16 <=s a224, a224 <s 4096@16,
    (-4096)@16 <=s a225, a225 <s 4096@16,
    (-4096)@16 <=s a226, a226 <s 4096@16,
    (-4096)@16 <=s a227, a227 <s 4096@16,
    (-4096)@16 <=s a228, a228 <s 4096@16,
    (-4096)@16 <=s a229, a229 <s 4096@16,
    (-4096)@16 <=s a230, a230 <s 4096@16,
    (-4096)@16 <=s a231, a231 <s 4096@16,
    (-4096)@16 <=s a232, a232 <s 4096@16,
    (-4096)@16 <=s a233, a233 <s 4096@16,
    (-4096)@16 <=s a234, a234 <s 4096@16,
    (-4096)@16 <=s a235, a235 <s 4096@16,
    (-4096)@16 <=s a236, a236 <s 4096@16,
    (-4096)@16 <=s a237, a237 <s 4096@16,
    (-4096)@16 <=s a238, a238 <s 4096@16,
    (-4096)@16 <=s a239, a239 <s 4096@16,
    (-4096)@16 <=s a240, a240 <s 4096@16,
    (-4096)@16 <=s a241, a241 <s 4096@16,
    (-4096)@16 <=s a242, a242 <s 4096@16,
    (-4096)@16 <=s a243, a243 <s 4096@16,
    (-4096)@16 <=s a244, a244 <s 4096@16,
    (-4096)@16 <=s a245, a245 <s 4096@16,
    (-4096)@16 <=s a246, a246 <s 4096@16,
    (-4096)@16 <=s a247, a247 <s 4096@16,
    (-4096)@16 <=s a248, a248 <s 4096@16,
    (-4096)@16 <=s a249, a249 <s 4096@16,
    (-4096)@16 <=s a250, a250 <s 4096@16,
    (-4096)@16 <=s a251, a251 <s 4096@16,
    (-4096)@16 <=s a252, a252 <s 4096@16,
    (-4096)@16 <=s a253, a253 <s 4096@16,
    (-4096)@16 <=s a254, a254 <s 4096@16,
    (-4096)@16 <=s a255, a255 <s 4096@16
  ]
}

(* === params === *)

mov MOD 25166081@sint32;
mov Mprime 41877759@sint32;

(* === inits === *)

(* src *)
mov L0x20019848 a000;  mov L0x2001984a a001;
mov L0x2001984c a002;  mov L0x2001984e a003;
mov L0x20019850 a004;  mov L0x20019852 a005;
mov L0x20019854 a006;  mov L0x20019856 a007;
mov L0x20019858 a008;  mov L0x2001985a a009;
mov L0x2001985c a010;  mov L0x2001985e a011;
mov L0x20019860 a012;  mov L0x20019862 a013;
mov L0x20019864 a014;  mov L0x20019866 a015;
mov L0x20019868 a016;  mov L0x2001986a a017;
mov L0x2001986c a018;  mov L0x2001986e a019;
mov L0x20019870 a020;  mov L0x20019872 a021;
mov L0x20019874 a022;  mov L0x20019876 a023;
mov L0x20019878 a024;  mov L0x2001987a a025;
mov L0x2001987c a026;  mov L0x2001987e a027;
mov L0x20019880 a028;  mov L0x20019882 a029;
mov L0x20019884 a030;  mov L0x20019886 a031;
mov L0x20019888 a032;  mov L0x2001988a a033;
mov L0x2001988c a034;  mov L0x2001988e a035;
mov L0x20019890 a036;  mov L0x20019892 a037;
mov L0x20019894 a038;  mov L0x20019896 a039;
mov L0x20019898 a040;  mov L0x2001989a a041;
mov L0x2001989c a042;  mov L0x2001989e a043;
mov L0x200198a0 a044;  mov L0x200198a2 a045;
mov L0x200198a4 a046;  mov L0x200198a6 a047;
mov L0x200198a8 a048;  mov L0x200198aa a049;
mov L0x200198ac a050;  mov L0x200198ae a051;
mov L0x200198b0 a052;  mov L0x200198b2 a053;
mov L0x200198b4 a054;  mov L0x200198b6 a055;
mov L0x200198b8 a056;  mov L0x200198ba a057;
mov L0x200198bc a058;  mov L0x200198be a059;
mov L0x200198c0 a060;  mov L0x200198c2 a061;
mov L0x200198c4 a062;  mov L0x200198c6 a063;
mov L0x200198c8 a064;  mov L0x200198ca a065;
mov L0x200198cc a066;  mov L0x200198ce a067;
mov L0x200198d0 a068;  mov L0x200198d2 a069;
mov L0x200198d4 a070;  mov L0x200198d6 a071;
mov L0x200198d8 a072;  mov L0x200198da a073;
mov L0x200198dc a074;  mov L0x200198de a075;
mov L0x200198e0 a076;  mov L0x200198e2 a077;
mov L0x200198e4 a078;  mov L0x200198e6 a079;
mov L0x200198e8 a080;  mov L0x200198ea a081;
mov L0x200198ec a082;  mov L0x200198ee a083;
mov L0x200198f0 a084;  mov L0x200198f2 a085;
mov L0x200198f4 a086;  mov L0x200198f6 a087;
mov L0x200198f8 a088;  mov L0x200198fa a089;
mov L0x200198fc a090;  mov L0x200198fe a091;
mov L0x20019900 a092;  mov L0x20019902 a093;
mov L0x20019904 a094;  mov L0x20019906 a095;
mov L0x20019908 a096;  mov L0x2001990a a097;
mov L0x2001990c a098;  mov L0x2001990e a099;
mov L0x20019910 a100;  mov L0x20019912 a101;
mov L0x20019914 a102;  mov L0x20019916 a103;
mov L0x20019918 a104;  mov L0x2001991a a105;
mov L0x2001991c a106;  mov L0x2001991e a107;
mov L0x20019920 a108;  mov L0x20019922 a109;
mov L0x20019924 a110;  mov L0x20019926 a111;
mov L0x20019928 a112;  mov L0x2001992a a113;
mov L0x2001992c a114;  mov L0x2001992e a115;
mov L0x20019930 a116;  mov L0x20019932 a117;
mov L0x20019934 a118;  mov L0x20019936 a119;
mov L0x20019938 a120;  mov L0x2001993a a121;
mov L0x2001993c a122;  mov L0x2001993e a123;
mov L0x20019940 a124;  mov L0x20019942 a125;
mov L0x20019944 a126;  mov L0x20019946 a127;
mov L0x20019948 a128;  mov L0x2001994a a129;
mov L0x2001994c a130;  mov L0x2001994e a131;
mov L0x20019950 a132;  mov L0x20019952 a133;
mov L0x20019954 a134;  mov L0x20019956 a135;
mov L0x20019958 a136;  mov L0x2001995a a137;
mov L0x2001995c a138;  mov L0x2001995e a139;
mov L0x20019960 a140;  mov L0x20019962 a141;
mov L0x20019964 a142;  mov L0x20019966 a143;
mov L0x20019968 a144;  mov L0x2001996a a145;
mov L0x2001996c a146;  mov L0x2001996e a147;
mov L0x20019970 a148;  mov L0x20019972 a149;
mov L0x20019974 a150;  mov L0x20019976 a151;
mov L0x20019978 a152;  mov L0x2001997a a153;
mov L0x2001997c a154;  mov L0x2001997e a155;
mov L0x20019980 a156;  mov L0x20019982 a157;
mov L0x20019984 a158;  mov L0x20019986 a159;
mov L0x20019988 a160;  mov L0x2001998a a161;
mov L0x2001998c a162;  mov L0x2001998e a163;
mov L0x20019990 a164;  mov L0x20019992 a165;
mov L0x20019994 a166;  mov L0x20019996 a167;
mov L0x20019998 a168;  mov L0x2001999a a169;
mov L0x2001999c a170;  mov L0x2001999e a171;
mov L0x200199a0 a172;  mov L0x200199a2 a173;
mov L0x200199a4 a174;  mov L0x200199a6 a175;
mov L0x200199a8 a176;  mov L0x200199aa a177;
mov L0x200199ac a178;  mov L0x200199ae a179;
mov L0x200199b0 a180;  mov L0x200199b2 a181;
mov L0x200199b4 a182;  mov L0x200199b6 a183;
mov L0x200199b8 a184;  mov L0x200199ba a185;
mov L0x200199bc a186;  mov L0x200199be a187;
mov L0x200199c0 a188;  mov L0x200199c2 a189;
mov L0x200199c4 a190;  mov L0x200199c6 a191;
mov L0x200199c8 a192;  mov L0x200199ca a193;
mov L0x200199cc a194;  mov L0x200199ce a195;
mov L0x200199d0 a196;  mov L0x200199d2 a197;
mov L0x200199d4 a198;  mov L0x200199d6 a199;
mov L0x200199d8 a200;  mov L0x200199da a201;
mov L0x200199dc a202;  mov L0x200199de a203;
mov L0x200199e0 a204;  mov L0x200199e2 a205;
mov L0x200199e4 a206;  mov L0x200199e6 a207;
mov L0x200199e8 a208;  mov L0x200199ea a209;
mov L0x200199ec a210;  mov L0x200199ee a211;
mov L0x200199f0 a212;  mov L0x200199f2 a213;
mov L0x200199f4 a214;  mov L0x200199f6 a215;
mov L0x200199f8 a216;  mov L0x200199fa a217;
mov L0x200199fc a218;  mov L0x200199fe a219;
mov L0x20019a00 a220;  mov L0x20019a02 a221;
mov L0x20019a04 a222;  mov L0x20019a06 a223;
mov L0x20019a08 a224;  mov L0x20019a0a a225;
mov L0x20019a0c a226;  mov L0x20019a0e a227;
mov L0x20019a10 a228;  mov L0x20019a12 a229;
mov L0x20019a14 a230;  mov L0x20019a16 a231;
mov L0x20019a18 a232;  mov L0x20019a1a a233;
mov L0x20019a1c a234;  mov L0x20019a1e a235;
mov L0x20019a20 a236;  mov L0x20019a22 a237;
mov L0x20019a24 a238;  mov L0x20019a26 a239;
mov L0x20019a28 a240;  mov L0x20019a2a a241;
mov L0x20019a2c a242;  mov L0x20019a2e a243;
mov L0x20019a30 a244;  mov L0x20019a32 a245;
mov L0x20019a34 a246;  mov L0x20019a36 a247;
mov L0x20019a38 a248;  mov L0x20019a3a a249;
mov L0x20019a3c a250;  mov L0x20019a3e a251;
mov L0x20019a40 a252;  mov L0x20019a42 a253;
mov L0x20019a44 a254;  mov L0x20019a46 a255;

(* roots *)
mov L0x800d054 (  2921358)@sint32;  mov L0x800d058 (-10203707)@sint32;
mov L0x800d05c ( -1203107)@sint32;  mov L0x800d060 (  6577444)@sint32;
mov L0x800d064 (  1776511)@sint32;  mov L0x800d068 ( -4194664)@sint32;
mov L0x800d06c (  5735629)@sint32;  mov L0x800d070 (  7301157)@sint32;
mov L0x800d074 ( -4359117)@sint32;  mov L0x800d078 (  5669200)@sint32;
mov L0x800d07c ( -9600669)@sint32;  mov L0x800d080 ( 10575964)@sint32;
mov L0x800d084 (  8064557)@sint32;  mov L0x800d088 (  -819256)@sint32;
mov L0x800d08c ( -9084979)@sint32;  mov L0x800d090 ( -7944926)@sint32;
mov L0x800d094 (  1686897)@sint32;  mov L0x800d098 (  -588496)@sint32;
mov L0x800d09c ( -8693794)@sint32;  mov L0x800d0a0 ( -7460755)@sint32;
mov L0x800d0a4 (  2723061)@sint32;  mov L0x800d0a8 (-11637995)@sint32;
mov L0x800d0ac ( -4810496)@sint32;  mov L0x800d0b0 (  7146164)@sint32;
mov L0x800d0b4 (  4092287)@sint32;  mov L0x800d0b8 ( -3261033)@sint32;
mov L0x800d0bc ( -5563113)@sint32;  mov L0x800d0c0 (-11307548)@sint32;
mov L0x800d0c4 ( -7261676)@sint32;  mov L0x800d0c8 ( -4293923)@sint32;
mov L0x800d0cc ( -6267356)@sint32;  mov L0x800d0d0 ( -9567042)@sint32;
mov L0x800d0d4 ( 11980428)@sint32;  mov L0x800d0d8 (  6931502)@sint32;
mov L0x800d0dc (  2510833)@sint32;  mov L0x800d0e0 (  4034819)@sint32;
mov L0x800d0e4 ( -1988985)@sint32;  mov L0x800d0e8 ( -8060830)@sint32;
mov L0x800d0ec (-10319196)@sint32;  mov L0x800d0f0 ( -6726360)@sint32;
mov L0x800d0f4 ( 10171507)@sint32;  mov L0x800d0f8 (  8693725)@sint32;
mov L0x800d0fc (   647681)@sint32;  mov L0x800d100 ( -9344183)@sint32;
mov L0x800d104 (  2733537)@sint32;  mov L0x800d108 (   -42688)@sint32;
mov L0x800d10c ( 10505644)@sint32;  mov L0x800d110 ( -9502337)@sint32;
mov L0x800d114 ( 10910265)@sint32;  mov L0x800d118 (  2695651)@sint32;
mov L0x800d11c ( 11450840)@sint32;  mov L0x800d120 (-12030083)@sint32;
mov L0x800d124 (  5318976)@sint32;  mov L0x800d128 ( -1134236)@sint32;
mov L0x800d12c (  -614272)@sint32;  mov L0x800d130 ( -6236460)@sint32;
mov L0x800d134 ( -2559945)@sint32;  mov L0x800d138 (  -908786)@sint32;
mov L0x800d13c ( -2665284)@sint32;  mov L0x800d140 (  5184115)@sint32;
mov L0x800d144 ( -1069349)@sint32;  mov L0x800d148 ( -9233574)@sint32;
mov L0x800d14c ( 12174351)@sint32;

(* regs *)
nondet sp@uint32;
mov L0x20019690 sp;
nondet r0@uint32;
nondet r1@uint32;
mov r2 Mprime;
mov r3 MOD;

(* inp_poly *)
ghost inp_poly@bit :
  inp_poly * inp_poly = 
    a000 * (x**0) + a001 * (x**1) + a002 * (x**2) + a003 * (x**3) +
    a004 * (x**4) + a005 * (x**5) + a006 * (x**6) + a007 * (x**7) +
    a008 * (x**8) + a009 * (x**9) + a010 * (x**10) + a011 * (x**11) +
    a012 * (x**12) + a013 * (x**13) + a014 * (x**14) + a015 * (x**15) +
    a016 * (x**16) + a017 * (x**17) + a018 * (x**18) + a019 * (x**19) +
    a020 * (x**20) + a021 * (x**21) + a022 * (x**22) + a023 * (x**23) +
    a024 * (x**24) + a025 * (x**25) + a026 * (x**26) + a027 * (x**27) +
    a028 * (x**28) + a029 * (x**29) + a030 * (x**30) + a031 * (x**31) +
    a032 * (x**32) + a033 * (x**33) + a034 * (x**34) + a035 * (x**35) +
    a036 * (x**36) + a037 * (x**37) + a038 * (x**38) + a039 * (x**39) +
    a040 * (x**40) + a041 * (x**41) + a042 * (x**42) + a043 * (x**43) +
    a044 * (x**44) + a045 * (x**45) + a046 * (x**46) + a047 * (x**47) +
    a048 * (x**48) + a049 * (x**49) + a050 * (x**50) + a051 * (x**51) +
    a052 * (x**52) + a053 * (x**53) + a054 * (x**54) + a055 * (x**55) +
    a056 * (x**56) + a057 * (x**57) + a058 * (x**58) + a059 * (x**59) +
    a060 * (x**60) + a061 * (x**61) + a062 * (x**62) + a063 * (x**63) +
    a064 * (x**64) + a065 * (x**65) + a066 * (x**66) + a067 * (x**67) +
    a068 * (x**68) + a069 * (x**69) + a070 * (x**70) + a071 * (x**71) +
    a072 * (x**72) + a073 * (x**73) + a074 * (x**74) + a075 * (x**75) +
    a076 * (x**76) + a077 * (x**77) + a078 * (x**78) + a079 * (x**79) +
    a080 * (x**80) + a081 * (x**81) + a082 * (x**82) + a083 * (x**83) +
    a084 * (x**84) + a085 * (x**85) + a086 * (x**86) + a087 * (x**87) +
    a088 * (x**88) + a089 * (x**89) + a090 * (x**90) + a091 * (x**91) +
    a092 * (x**92) + a093 * (x**93) + a094 * (x**94) + a095 * (x**95) +
    a096 * (x**96) + a097 * (x**97) + a098 * (x**98) + a099 * (x**99) +
    a100 * (x**100) + a101 * (x**101) + a102 * (x**102) + a103 * (x**103) +
    a104 * (x**104) + a105 * (x**105) + a106 * (x**106) + a107 * (x**107) +
    a108 * (x**108) + a109 * (x**109) + a110 * (x**110) + a111 * (x**111) +
    a112 * (x**112) + a113 * (x**113) + a114 * (x**114) + a115 * (x**115) +
    a116 * (x**116) + a117 * (x**117) + a118 * (x**118) + a119 * (x**119) +
    a120 * (x**120) + a121 * (x**121) + a122 * (x**122) + a123 * (x**123) +
    a124 * (x**124) + a125 * (x**125) + a126 * (x**126) + a127 * (x**127) +
    a128 * (x**128) + a129 * (x**129) + a130 * (x**130) + a131 * (x**131) +
    a132 * (x**132) + a133 * (x**133) + a134 * (x**134) + a135 * (x**135) +
    a136 * (x**136) + a137 * (x**137) + a138 * (x**138) + a139 * (x**139) +
    a140 * (x**140) + a141 * (x**141) + a142 * (x**142) + a143 * (x**143) +
    a144 * (x**144) + a145 * (x**145) + a146 * (x**146) + a147 * (x**147) +
    a148 * (x**148) + a149 * (x**149) + a150 * (x**150) + a151 * (x**151) +
    a152 * (x**152) + a153 * (x**153) + a154 * (x**154) + a155 * (x**155) +
    a156 * (x**156) + a157 * (x**157) + a158 * (x**158) + a159 * (x**159) +
    a160 * (x**160) + a161 * (x**161) + a162 * (x**162) + a163 * (x**163) +
    a164 * (x**164) + a165 * (x**165) + a166 * (x**166) + a167 * (x**167) +
    a168 * (x**168) + a169 * (x**169) + a170 * (x**170) + a171 * (x**171) +
    a172 * (x**172) + a173 * (x**173) + a174 * (x**174) + a175 * (x**175) +
    a176 * (x**176) + a177 * (x**177) + a178 * (x**178) + a179 * (x**179) +
    a180 * (x**180) + a181 * (x**181) + a182 * (x**182) + a183 * (x**183) +
    a184 * (x**184) + a185 * (x**185) + a186 * (x**186) + a187 * (x**187) +
    a188 * (x**188) + a189 * (x**189) + a190 * (x**190) + a191 * (x**191) +
    a192 * (x**192) + a193 * (x**193) + a194 * (x**194) + a195 * (x**195) +
    a196 * (x**196) + a197 * (x**197) + a198 * (x**198) + a199 * (x**199) +
    a200 * (x**200) + a201 * (x**201) + a202 * (x**202) + a203 * (x**203) +
    a204 * (x**204) + a205 * (x**205) + a206 * (x**206) + a207 * (x**207) +
    a208 * (x**208) + a209 * (x**209) + a210 * (x**210) + a211 * (x**211) +
    a212 * (x**212) + a213 * (x**213) + a214 * (x**214) + a215 * (x**215) +
    a216 * (x**216) + a217 * (x**217) + a218 * (x**218) + a219 * (x**219) +
    a220 * (x**220) + a221 * (x**221) + a222 * (x**222) + a223 * (x**223) +
    a224 * (x**224) + a225 * (x**225) + a226 * (x**226) + a227 * (x**227) +
    a228 * (x**228) + a229 * (x**229) + a230 * (x**230) + a231 * (x**231) +
    a232 * (x**232) + a233 * (x**233) + a234 * (x**234) + a235 * (x**235) +
    a236 * (x**236) + a237 * (x**237) + a238 * (x**238) + a239 * (x**239) +
    a240 * (x**240) + a241 * (x**241) + a242 * (x**242) + a243 * (x**243) +
    a244 * (x**244) + a245 * (x**245) + a246 * (x**246) + a247 * (x**247) +
    a248 * (x**248) + a249 * (x**249) + a250 * (x**250) + a251 * (x**251) +
    a252 * (x**252) + a253 * (x**253) + a254 * (x**254) + a255 * (x**255)
  && true;



(* vldr	s0, [sp]                                   #! EA = L0x20019690; PC = 0x8004ca0 *)
mov s0 L0x20019690;
(* mov.w	r4, r0                                    #! PC = 0x8004ca8 *)
mov r4 r0;
(* vmov	r0, s0                                     #! PC = 0x8004cac *)
mov r0 s0;
(* vmov	s0, s1, r4, r1                             #! PC = 0x8004cb0 *)
mov s0 r4;
mov s1 r1;
(* vmov	r1, s1                                     #! PC = 0x8004cb4 *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d054; PC = 0x8004cb8 *)
mov s4 L0x800d054;
mov s5 L0x800d058;
mov s6 L0x800d05c;
mov s7 L0x800d060;
mov s8 L0x800d064;
mov s9 L0x800d068;
mov s10 L0x800d06c;
(* vmov	s1, r1                                     #! PC = 0x8004cbc *)
mov s1 r1;
(* add.w	r12, r0, #64	; 0x40                       #! PC = 0x8004cc0 *)
adds discard r12 r0 64@uint32;
(* vmov	s2, r12                                    #! PC = 0x8004cc4 *)
mov s2 r12;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x20019888; Value = 0x0000ffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x20019888@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198c8; Value = 0x00000000; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198c8@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019908; Value = 0xffff0000; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019908@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019948; Value = 0x00000001; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019948@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x20019988; Value = 0x00020000; PC = 0x8004cd8 *)
vpc r9@sint32 L0x20019988@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199c8; Value = 0x0000ffff; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199c8@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a08; Value = 0x0000ffff; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a08@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019848; Value = 0xfffc0000; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019848@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ac8; PC = 0x8004de0 *)
mov L0x20019ac8 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b48; PC = 0x8004de4 *)
mov L0x20019b48 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bc8; PC = 0x8004de8 *)
mov L0x20019bc8 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c48; PC = 0x8004dec *)
mov L0x20019c48 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cc8; PC = 0x8004df0 *)
mov L0x20019cc8 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d48; PC = 0x8004df4 *)
mov L0x20019d48 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dc8; PC = 0x8004df8 *)
mov L0x20019dc8 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a48; PC = 0x8004dfc *)
mov L0x20019a48 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x2001988a; Value = 0xffff0000; PC = 0x8004e04 *)
vpc r5@sint32 L0x2001988a@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198ca; Value = 0x00010000; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198ca@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001990a; Value = 0x0001ffff; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001990a@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001994a; Value = 0xffff0000; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001994a@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x2001998a; Value = 0x00010002; PC = 0x8004e14 *)
vpc r9@sint32 L0x2001998a@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199ca; Value = 0x00010000; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199ca@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a0a; Value = 0x00000000; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a0a@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001984a; Value = 0x0001fffc; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001984a@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019acc; PC = 0x8004f1c *)
mov L0x20019acc r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b4c; PC = 0x8004f20 *)
mov L0x20019b4c r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bcc; PC = 0x8004f24 *)
mov L0x20019bcc r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c4c; PC = 0x8004f28 *)
mov L0x20019c4c r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019ccc; PC = 0x8004f2c *)
mov L0x20019ccc r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d4c; PC = 0x8004f30 *)
mov L0x20019d4c r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dcc; PC = 0x8004f34 *)
mov L0x20019dcc r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a4c; PC = 0x8004f38 *)
mov L0x20019a4c r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x2001988c; Value = 0xffffffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x2001988c@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198cc; Value = 0x00010001; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198cc@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001990c; Value = 0x00010001; PC = 0x8004cd0 *)
vpc r7@sint32 L0x2001990c@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001994c; Value = 0x0001ffff; PC = 0x8004cd4 *)
vpc r8@sint32 L0x2001994c@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x2001998c; Value = 0x00010001; PC = 0x8004cd8 *)
vpc r9@sint32 L0x2001998c@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199cc; Value = 0x00020001; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199cc@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a0c; Value = 0x00030000; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a0c@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001984c; Value = 0x00000001; PC = 0x8004ce4 *)
vpc r4@sint32 L0x2001984c@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ad0; PC = 0x8004de0 *)
mov L0x20019ad0 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b50; PC = 0x8004de4 *)
mov L0x20019b50 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bd0; PC = 0x8004de8 *)
mov L0x20019bd0 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c50; PC = 0x8004dec *)
mov L0x20019c50 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cd0; PC = 0x8004df0 *)
mov L0x20019cd0 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d50; PC = 0x8004df4 *)
mov L0x20019d50 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dd0; PC = 0x8004df8 *)
mov L0x20019dd0 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a50; PC = 0x8004dfc *)
mov L0x20019a50 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x2001988e; Value = 0xffffffff; PC = 0x8004e04 *)
vpc r5@sint32 L0x2001988e@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198ce; Value = 0x00000001; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198ce@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001990e; Value = 0x00000001; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001990e@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001994e; Value = 0xffff0001; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001994e@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x2001998e; Value = 0xffff0001; PC = 0x8004e14 *)
vpc r9@sint32 L0x2001998e@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199ce; Value = 0x00010002; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199ce@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a0e; Value = 0x00030003; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a0e@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001984e; Value = 0x00010000; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001984e@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ad4; PC = 0x8004f1c *)
mov L0x20019ad4 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b54; PC = 0x8004f20 *)
mov L0x20019b54 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bd4; PC = 0x8004f24 *)
mov L0x20019bd4 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c54; PC = 0x8004f28 *)
mov L0x20019c54 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cd4; PC = 0x8004f2c *)
mov L0x20019cd4 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d54; PC = 0x8004f30 *)
mov L0x20019d54 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dd4; PC = 0x8004f34 *)
mov L0x20019dd4 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a54; PC = 0x8004f38 *)
mov L0x20019a54 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x20019890; Value = 0xffffffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x20019890@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198d0; Value = 0x00020000; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198d0@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019910; Value = 0xffff0000; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019910@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019950; Value = 0xffffffff; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019950@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x20019990; Value = 0x0000ffff; PC = 0x8004cd8 *)
vpc r9@sint32 L0x20019990@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199d0; Value = 0xffff0001; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199d0@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a10; Value = 0xffff0003; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a10@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019850; Value = 0xffff0001; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019850@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ad8; PC = 0x8004de0 *)
mov L0x20019ad8 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b58; PC = 0x8004de4 *)
mov L0x20019b58 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bd8; PC = 0x8004de8 *)
mov L0x20019bd8 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c58; PC = 0x8004dec *)
mov L0x20019c58 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cd8; PC = 0x8004df0 *)
mov L0x20019cd8 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d58; PC = 0x8004df4 *)
mov L0x20019d58 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dd8; PC = 0x8004df8 *)
mov L0x20019dd8 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a58; PC = 0x8004dfc *)
mov L0x20019a58 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x20019892; Value = 0xffffffff; PC = 0x8004e04 *)
vpc r5@sint32 L0x20019892@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198d2; Value = 0xfffe0002; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198d2@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019912; Value = 0x0001ffff; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019912@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019952; Value = 0xffffffff; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019952@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x20019992; Value = 0xffff0000; PC = 0x8004e14 *)
vpc r9@sint32 L0x20019992@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199d2; Value = 0x0002ffff; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199d2@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a12; Value = 0x0000ffff; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a12@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019852; Value = 0x0000ffff; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019852@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019adc; PC = 0x8004f1c *)
mov L0x20019adc r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b5c; PC = 0x8004f20 *)
mov L0x20019b5c r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bdc; PC = 0x8004f24 *)
mov L0x20019bdc r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c5c; PC = 0x8004f28 *)
mov L0x20019c5c r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cdc; PC = 0x8004f2c *)
mov L0x20019cdc r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d5c; PC = 0x8004f30 *)
mov L0x20019d5c r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019ddc; PC = 0x8004f34 *)
mov L0x20019ddc r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a5c; PC = 0x8004f38 *)
mov L0x20019a5c r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x20019894; Value = 0x0001ffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x20019894@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198d4; Value = 0x0000fffe; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198d4@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019914; Value = 0xffff0001; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019914@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019954; Value = 0xffffffff; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019954@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x20019994; Value = 0xfffeffff; PC = 0x8004cd8 *)
vpc r9@sint32 L0x20019994@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199d4; Value = 0x00010002; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199d4@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a14; Value = 0xffff0000; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a14@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019854; Value = 0x00010000; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019854@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ae0; PC = 0x8004de0 *)
mov L0x20019ae0 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b60; PC = 0x8004de4 *)
mov L0x20019b60 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019be0; PC = 0x8004de8 *)
mov L0x20019be0 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c60; PC = 0x8004dec *)
mov L0x20019c60 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019ce0; PC = 0x8004df0 *)
mov L0x20019ce0 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d60; PC = 0x8004df4 *)
mov L0x20019d60 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019de0; PC = 0x8004df8 *)
mov L0x20019de0 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a60; PC = 0x8004dfc *)
mov L0x20019a60 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x20019896; Value = 0xffff0001; PC = 0x8004e04 *)
vpc r5@sint32 L0x20019896@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198d6; Value = 0x00000000; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198d6@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019916; Value = 0x0000ffff; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019916@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019956; Value = 0x0000ffff; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019956@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x20019996; Value = 0x0000fffe; PC = 0x8004e14 *)
vpc r9@sint32 L0x20019996@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199d6; Value = 0x00010001; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199d6@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a16; Value = 0x0002ffff; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a16@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019856; Value = 0x00000001; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019856@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ae4; PC = 0x8004f1c *)
mov L0x20019ae4 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b64; PC = 0x8004f20 *)
mov L0x20019b64 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019be4; PC = 0x8004f24 *)
mov L0x20019be4 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c64; PC = 0x8004f28 *)
mov L0x20019c64 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019ce4; PC = 0x8004f2c *)
mov L0x20019ce4 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d64; PC = 0x8004f30 *)
mov L0x20019d64 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019de4; PC = 0x8004f34 *)
mov L0x20019de4 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a64; PC = 0x8004f38 *)
mov L0x20019a64 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x20019898; Value = 0x0000ffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x20019898@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198d8; Value = 0xfffe0000; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198d8@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019918; Value = 0x00000000; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019918@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019958; Value = 0x00000000; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019958@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x20019998; Value = 0x00020000; PC = 0x8004cd8 *)
vpc r9@sint32 L0x20019998@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199d8; Value = 0xfffd0001; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199d8@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a18; Value = 0xfffe0002; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a18@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019858; Value = 0x00010000; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019858@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019ae8; PC = 0x8004de0 *)
mov L0x20019ae8 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b68; PC = 0x8004de4 *)
mov L0x20019b68 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019be8; PC = 0x8004de8 *)
mov L0x20019be8 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c68; PC = 0x8004dec *)
mov L0x20019c68 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019ce8; PC = 0x8004df0 *)
mov L0x20019ce8 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d68; PC = 0x8004df4 *)
mov L0x20019d68 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019de8; PC = 0x8004df8 *)
mov L0x20019de8 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a68; PC = 0x8004dfc *)
mov L0x20019a68 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x2001989a; Value = 0x00000000; PC = 0x8004e04 *)
vpc r5@sint32 L0x2001989a@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198da; Value = 0x0000fffe; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198da@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001991a; Value = 0xfffe0000; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001991a@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001995a; Value = 0x00010000; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001995a@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x2001999a; Value = 0x00010002; PC = 0x8004e14 *)
vpc r9@sint32 L0x2001999a@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199da; Value = 0xfffffffd; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199da@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a1a; Value = 0xfffefffe; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a1a@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001985a; Value = 0x00010001; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001985a@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019aec; PC = 0x8004f1c *)
mov L0x20019aec r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b6c; PC = 0x8004f20 *)
mov L0x20019b6c r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bec; PC = 0x8004f24 *)
mov L0x20019bec r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c6c; PC = 0x8004f28 *)
mov L0x20019c6c r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cec; PC = 0x8004f2c *)
mov L0x20019cec r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d6c; PC = 0x8004f30 *)
mov L0x20019d6c r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dec; PC = 0x8004f34 *)
mov L0x20019dec r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a6c; PC = 0x8004f38 *)
mov L0x20019a6c r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x2001989c; Value = 0x00000000; PC = 0x8004cc8 *)
vpc r5@sint32 L0x2001989c@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198dc; Value = 0x00000000; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198dc@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001991c; Value = 0x0001fffe; PC = 0x8004cd0 *)
vpc r7@sint32 L0x2001991c@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001995c; Value = 0x00000001; PC = 0x8004cd4 *)
vpc r8@sint32 L0x2001995c@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x2001999c; Value = 0x00010001; PC = 0x8004cd8 *)
vpc r9@sint32 L0x2001999c@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199dc; Value = 0x0000ffff; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199dc@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a1c; Value = 0x0001fffe; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a1c@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001985c; Value = 0x00010001; PC = 0x8004ce4 *)
vpc r4@sint32 L0x2001985c@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019af0; PC = 0x8004de0 *)
mov L0x20019af0 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b70; PC = 0x8004de4 *)
mov L0x20019b70 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bf0; PC = 0x8004de8 *)
mov L0x20019bf0 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c70; PC = 0x8004dec *)
mov L0x20019c70 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cf0; PC = 0x8004df0 *)
mov L0x20019cf0 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d70; PC = 0x8004df4 *)
mov L0x20019d70 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019df0; PC = 0x8004df8 *)
mov L0x20019df0 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a70; PC = 0x8004dfc *)
mov L0x20019a70 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x2001989e; Value = 0xffff0000; PC = 0x8004e04 *)
vpc r5@sint32 L0x2001989e@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198de; Value = 0x00030000; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198de@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001991e; Value = 0xfffe0001; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001991e@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001995e; Value = 0x00010000; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001995e@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x2001999e; Value = 0xfffe0001; PC = 0x8004e14 *)
vpc r9@sint32 L0x2001999e@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199de; Value = 0xffff0000; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199de@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a1e; Value = 0xfffe0001; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a1e@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001985e; Value = 0xffff0001; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001985e@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019af4; PC = 0x8004f1c *)
mov L0x20019af4 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b74; PC = 0x8004f20 *)
mov L0x20019b74 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bf4; PC = 0x8004f24 *)
mov L0x20019bf4 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c74; PC = 0x8004f28 *)
mov L0x20019c74 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cf4; PC = 0x8004f2c *)
mov L0x20019cf4 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d74; PC = 0x8004f30 *)
mov L0x20019d74 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019df4; PC = 0x8004f34 *)
mov L0x20019df4 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a74; PC = 0x8004f38 *)
mov L0x20019a74 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198a0; Value = 0x0002ffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198a0@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198e0; Value = 0x00020003; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198e0@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019920; Value = 0x0000fffe; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019920@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019960; Value = 0x00000001; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019960@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199a0; Value = 0xfffffffe; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199a0@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199e0; Value = 0x0002ffff; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199e0@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a20; Value = 0x0003fffe; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a20@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019860; Value = 0x0001ffff; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019860@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019af8; PC = 0x8004de0 *)
mov L0x20019af8 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b78; PC = 0x8004de4 *)
mov L0x20019b78 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bf8; PC = 0x8004de8 *)
mov L0x20019bf8 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c78; PC = 0x8004dec *)
mov L0x20019c78 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cf8; PC = 0x8004df0 *)
mov L0x20019cf8 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d78; PC = 0x8004df4 *)
mov L0x20019d78 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019df8; PC = 0x8004df8 *)
mov L0x20019df8 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a78; PC = 0x8004dfc *)
mov L0x20019a78 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198a2; Value = 0xffff0002; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198a2@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198e2; Value = 0x00020002; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198e2@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019922; Value = 0x00030000; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019922@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019962; Value = 0xffff0000; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019962@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199a2; Value = 0xffffffff; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199a2@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199e2; Value = 0x00010002; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199e2@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a22; Value = 0x00020003; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a22@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019862; Value = 0x00000001; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019862@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019afc; PC = 0x8004f1c *)
mov L0x20019afc r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b7c; PC = 0x8004f20 *)
mov L0x20019b7c r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019bfc; PC = 0x8004f24 *)
mov L0x20019bfc r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c7c; PC = 0x8004f28 *)
mov L0x20019c7c r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019cfc; PC = 0x8004f2c *)
mov L0x20019cfc r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d7c; PC = 0x8004f30 *)
mov L0x20019d7c r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019dfc; PC = 0x8004f34 *)
mov L0x20019dfc r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a7c; PC = 0x8004f38 *)
mov L0x20019a7c r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198a4; Value = 0xfffeffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198a4@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198e4; Value = 0x00000002; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198e4@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019924; Value = 0xffff0003; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019924@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019964; Value = 0x0001ffff; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019964@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199a4; Value = 0xfffeffff; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199a4@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199e4; Value = 0x00030001; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199e4@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a24; Value = 0xffff0002; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a24@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019864; Value = 0xffff0000; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019864@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b00; PC = 0x8004de0 *)
mov L0x20019b00 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b80; PC = 0x8004de4 *)
mov L0x20019b80 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c00; PC = 0x8004de8 *)
mov L0x20019c00 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c80; PC = 0x8004dec *)
mov L0x20019c80 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d00; PC = 0x8004df0 *)
mov L0x20019d00 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d80; PC = 0x8004df4 *)
mov L0x20019d80 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e00; PC = 0x8004df8 *)
mov L0x20019e00 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a80; PC = 0x8004dfc *)
mov L0x20019a80 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198a6; Value = 0xfffffffe; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198a6@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198e6; Value = 0xffff0000; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198e6@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019926; Value = 0x0002ffff; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019926@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019966; Value = 0x00030001; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019966@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199a6; Value = 0x0001fffe; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199a6@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199e6; Value = 0x00000003; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199e6@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a26; Value = 0x0002ffff; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a26@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019866; Value = 0x0001ffff; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019866@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b04; PC = 0x8004f1c *)
mov L0x20019b04 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b84; PC = 0x8004f20 *)
mov L0x20019b84 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c04; PC = 0x8004f24 *)
mov L0x20019c04 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c84; PC = 0x8004f28 *)
mov L0x20019c84 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d04; PC = 0x8004f2c *)
mov L0x20019d04 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d84; PC = 0x8004f30 *)
mov L0x20019d84 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e04; PC = 0x8004f34 *)
mov L0x20019e04 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a84; PC = 0x8004f38 *)
mov L0x20019a84 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198a8; Value = 0x0002ffff; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198a8@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198e8; Value = 0x0001ffff; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198e8@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019928; Value = 0x00000002; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019928@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019968; Value = 0xffff0003; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019968@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199a8; Value = 0x00010001; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199a8@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199e8; Value = 0x00000000; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199e8@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a28; Value = 0xffff0002; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a28@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019868; Value = 0xffff0001; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019868@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b08; PC = 0x8004de0 *)
mov L0x20019b08 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b88; PC = 0x8004de4 *)
mov L0x20019b88 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c08; PC = 0x8004de8 *)
mov L0x20019c08 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c88; PC = 0x8004dec *)
mov L0x20019c88 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d08; PC = 0x8004df0 *)
mov L0x20019d08 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d88; PC = 0x8004df4 *)
mov L0x20019d88 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e08; PC = 0x8004df8 *)
mov L0x20019e08 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a88; PC = 0x8004dfc *)
mov L0x20019a88 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198aa; Value = 0xfffe0002; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198aa@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198ea; Value = 0xffff0001; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198ea@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001992a; Value = 0xffff0000; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001992a@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001996a; Value = 0x0002ffff; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001996a@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199aa; Value = 0x00000001; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199aa@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199ea; Value = 0x00010000; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199ea@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a2a; Value = 0xfffeffff; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a2a@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001986a; Value = 0x0000ffff; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001986a@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b0c; PC = 0x8004f1c *)
mov L0x20019b0c r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b8c; PC = 0x8004f20 *)
mov L0x20019b8c r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c0c; PC = 0x8004f24 *)
mov L0x20019c0c r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c8c; PC = 0x8004f28 *)
mov L0x20019c8c r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d0c; PC = 0x8004f2c *)
mov L0x20019d0c r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d8c; PC = 0x8004f30 *)
mov L0x20019d8c r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e0c; PC = 0x8004f34 *)
mov L0x20019e0c r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a8c; PC = 0x8004f38 *)
mov L0x20019a8c r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198ac; Value = 0xfffffffe; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198ac@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198ec; Value = 0xfffeffff; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198ec@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001992c; Value = 0xffffffff; PC = 0x8004cd0 *)
vpc r7@sint32 L0x2001992c@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001996c; Value = 0xffff0002; PC = 0x8004cd4 *)
vpc r8@sint32 L0x2001996c@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199ac; Value = 0xffff0000; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199ac@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199ec; Value = 0xffff0001; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199ec@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a2c; Value = 0xfffefffe; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a2c@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001986c; Value = 0x00000000; PC = 0x8004ce4 *)
vpc r4@sint32 L0x2001986c@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b10; PC = 0x8004de0 *)
mov L0x20019b10 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b90; PC = 0x8004de4 *)
mov L0x20019b90 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c10; PC = 0x8004de8 *)
mov L0x20019c10 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c90; PC = 0x8004dec *)
mov L0x20019c90 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d10; PC = 0x8004df0 *)
mov L0x20019d10 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d90; PC = 0x8004df4 *)
mov L0x20019d90 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e10; PC = 0x8004df8 *)
mov L0x20019e10 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a90; PC = 0x8004dfc *)
mov L0x20019a90 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198ae; Value = 0x0004ffff; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198ae@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198ee; Value = 0xfffffffe; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198ee@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001992e; Value = 0xffffffff; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001992e@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001996e; Value = 0x0000ffff; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001996e@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199ae; Value = 0x0004ffff; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199ae@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199ee; Value = 0xffffffff; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199ee@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a2e; Value = 0x0000fffe; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a2e@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001986e; Value = 0xffff0000; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001986e@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b14; PC = 0x8004f1c *)
mov L0x20019b14 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b94; PC = 0x8004f20 *)
mov L0x20019b94 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c14; PC = 0x8004f24 *)
mov L0x20019c14 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c94; PC = 0x8004f28 *)
mov L0x20019c94 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d14; PC = 0x8004f2c *)
mov L0x20019d14 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d94; PC = 0x8004f30 *)
mov L0x20019d94 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e14; PC = 0x8004f34 *)
mov L0x20019e14 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a94; PC = 0x8004f38 *)
mov L0x20019a94 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198b0; Value = 0x00010004; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198b0@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198f0; Value = 0xffffffff; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198f0@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019930; Value = 0x0002ffff; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019930@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019970; Value = 0x00020000; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019970@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199b0; Value = 0x00010004; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199b0@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199f0; Value = 0xfffeffff; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199f0@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a30; Value = 0x00000000; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a30@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019870; Value = 0xffffffff; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019870@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b18; PC = 0x8004de0 *)
mov L0x20019b18 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b98; PC = 0x8004de4 *)
mov L0x20019b98 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c18; PC = 0x8004de8 *)
mov L0x20019c18 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c98; PC = 0x8004dec *)
mov L0x20019c98 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d18; PC = 0x8004df0 *)
mov L0x20019d18 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d98; PC = 0x8004df4 *)
mov L0x20019d98 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e18; PC = 0x8004df8 *)
mov L0x20019e18 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a98; PC = 0x8004dfc *)
mov L0x20019a98 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198b2; Value = 0x00010001; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198b2@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198f2; Value = 0x0000ffff; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198f2@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019932; Value = 0xffff0002; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019932@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019972; Value = 0xffff0002; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019972@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199b2; Value = 0x00010001; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199b2@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199f2; Value = 0x0001fffe; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199f2@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a32; Value = 0xffff0000; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a32@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019872; Value = 0x0000ffff; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019872@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b1c; PC = 0x8004f1c *)
mov L0x20019b1c r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019b9c; PC = 0x8004f20 *)
mov L0x20019b9c r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c1c; PC = 0x8004f24 *)
mov L0x20019c1c r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019c9c; PC = 0x8004f28 *)
mov L0x20019c9c r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d1c; PC = 0x8004f2c *)
mov L0x20019d1c r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019d9c; PC = 0x8004f30 *)
mov L0x20019d9c r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e1c; PC = 0x8004f34 *)
mov L0x20019e1c r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019a9c; PC = 0x8004f38 *)
mov L0x20019a9c r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198b4; Value = 0x00000001; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198b4@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198f4; Value = 0x00000000; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198f4@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019934; Value = 0x0001ffff; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019934@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019974; Value = 0x0000ffff; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019974@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199b4; Value = 0x00000001; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199b4@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199f4; Value = 0x00020001; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199f4@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a34; Value = 0x0000ffff; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a34@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019874; Value = 0x00000000; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019874@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b20; PC = 0x8004de0 *)
mov L0x20019b20 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019ba0; PC = 0x8004de4 *)
mov L0x20019ba0 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c20; PC = 0x8004de8 *)
mov L0x20019c20 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019ca0; PC = 0x8004dec *)
mov L0x20019ca0 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d20; PC = 0x8004df0 *)
mov L0x20019d20 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019da0; PC = 0x8004df4 *)
mov L0x20019da0 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e20; PC = 0x8004df8 *)
mov L0x20019e20 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019aa0; PC = 0x8004dfc *)
mov L0x20019aa0 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198b6; Value = 0x00020000; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198b6@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198f6; Value = 0x00010000; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198f6@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019936; Value = 0x00020001; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019936@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019976; Value = 0x00020000; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019976@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199b6; Value = 0xffff0000; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199b6@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199f6; Value = 0xffff0002; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199f6@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a36; Value = 0xfffd0000; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a36@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019876; Value = 0xffff0000; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019876@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b24; PC = 0x8004f1c *)
mov L0x20019b24 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019ba4; PC = 0x8004f20 *)
mov L0x20019ba4 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c24; PC = 0x8004f24 *)
mov L0x20019c24 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019ca4; PC = 0x8004f28 *)
mov L0x20019ca4 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d24; PC = 0x8004f2c *)
mov L0x20019d24 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019da4; PC = 0x8004f30 *)
mov L0x20019da4 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e24; PC = 0x8004f34 *)
mov L0x20019e24 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019aa4; PC = 0x8004f38 *)
mov L0x20019aa4 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198b8; Value = 0xfffe0002; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198b8@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198f8; Value = 0xffff0001; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198f8@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019938; Value = 0x00010002; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019938@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019978; Value = 0xffff0002; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019978@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199b8; Value = 0xfffeffff; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199b8@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199f8; Value = 0xfffeffff; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199f8@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a38; Value = 0x0003fffd; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a38@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019878; Value = 0x0000ffff; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019878@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b28; PC = 0x8004de0 *)
mov L0x20019b28 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019ba8; PC = 0x8004de4 *)
mov L0x20019ba8 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c28; PC = 0x8004de8 *)
mov L0x20019c28 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019ca8; PC = 0x8004dec *)
mov L0x20019ca8 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d28; PC = 0x8004df0 *)
mov L0x20019d28 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019da8; PC = 0x8004df4 *)
mov L0x20019da8 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e28; PC = 0x8004df8 *)
mov L0x20019e28 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019aa8; PC = 0x8004dfc *)
mov L0x20019aa8 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198ba; Value = 0x0000fffe; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198ba@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198fa; Value = 0x0000ffff; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198fa@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001993a; Value = 0x00010001; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001993a@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001997a; Value = 0x0000ffff; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001997a@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199ba; Value = 0xfffefffe; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199ba@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199fa; Value = 0x0000fffe; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199fa@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a3a; Value = 0xfffe0003; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a3a@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001987a; Value = 0x00010000; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001987a@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b2c; PC = 0x8004f1c *)
mov L0x20019b2c r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bac; PC = 0x8004f20 *)
mov L0x20019bac r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c2c; PC = 0x8004f24 *)
mov L0x20019c2c r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cac; PC = 0x8004f28 *)
mov L0x20019cac r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d2c; PC = 0x8004f2c *)
mov L0x20019d2c r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019dac; PC = 0x8004f30 *)
mov L0x20019dac r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e2c; PC = 0x8004f34 *)
mov L0x20019e2c r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019aac; PC = 0x8004f38 *)
mov L0x20019aac r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198bc; Value = 0xfffe0000; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198bc@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198fc; Value = 0x00000000; PC = 0x8004ccc *)
vpc r6@sint32 L0x200198fc@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001993c; Value = 0x00010001; PC = 0x8004cd0 *)
vpc r7@sint32 L0x2001993c@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001997c; Value = 0x00000000; PC = 0x8004cd4 *)
vpc r8@sint32 L0x2001997c@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199bc; Value = 0xfffefffe; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199bc@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199fc; Value = 0xfffe0000; PC = 0x8004cdc *)
vpc r10@sint32 L0x200199fc@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a3c; Value = 0xfffefffe; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a3c@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001987c; Value = 0x00000001; PC = 0x8004ce4 *)
vpc r4@sint32 L0x2001987c@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b30; PC = 0x8004de0 *)
mov L0x20019b30 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bb0; PC = 0x8004de4 *)
mov L0x20019bb0 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c30; PC = 0x8004de8 *)
mov L0x20019c30 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cb0; PC = 0x8004dec *)
mov L0x20019cb0 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d30; PC = 0x8004df0 *)
mov L0x20019d30 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019db0; PC = 0x8004df4 *)
mov L0x20019db0 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e30; PC = 0x8004df8 *)
mov L0x20019e30 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019ab0; PC = 0x8004dfc *)
mov L0x20019ab0 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198be; Value = 0x0001fffe; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198be@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x200198fe; Value = 0xfffd0000; PC = 0x8004e08 *)
vpc r6@sint32 L0x200198fe@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x2001993e; Value = 0xfffe0001; PC = 0x8004e0c *)
vpc r7@sint32 L0x2001993e@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x2001997e; Value = 0xffff0000; PC = 0x8004e10 *)
vpc r8@sint32 L0x2001997e@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199be; Value = 0x0000fffe; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199be@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x200199fe; Value = 0x0002fffe; PC = 0x8004e18 *)
vpc r10@sint32 L0x200199fe@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a3e; Value = 0x0001fffe; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a3e@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x2001987e; Value = 0x00030000; PC = 0x8004e20 *)
vpc r4@sint32 L0x2001987e@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b34; PC = 0x8004f1c *)
mov L0x20019b34 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bb4; PC = 0x8004f20 *)
mov L0x20019bb4 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c34; PC = 0x8004f24 *)
mov L0x20019c34 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cb4; PC = 0x8004f28 *)
mov L0x20019cb4 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d34; PC = 0x8004f2c *)
mov L0x20019d34 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019db4; PC = 0x8004f30 *)
mov L0x20019db4 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e34; PC = 0x8004f34 *)
mov L0x20019e34 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019ab4; PC = 0x8004f38 *)
mov L0x20019ab4 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198c0; Value = 0xffff0001; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198c0@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x20019900; Value = 0x0003fffd; PC = 0x8004ccc *)
vpc r6@sint32 L0x20019900@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019940; Value = 0xfffffffe; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019940@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019980; Value = 0x0002ffff; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019980@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199c0; Value = 0x00020000; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199c0@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x20019a00; Value = 0x00020002; PC = 0x8004cdc *)
vpc r10@sint32 L0x20019a00@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a40; Value = 0x00020001; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a40@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019880; Value = 0x00010003; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019880@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b38; PC = 0x8004de0 *)
mov L0x20019b38 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bb8; PC = 0x8004de4 *)
mov L0x20019bb8 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c38; PC = 0x8004de8 *)
mov L0x20019c38 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cb8; PC = 0x8004dec *)
mov L0x20019cb8 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d38; PC = 0x8004df0 *)
mov L0x20019d38 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019db8; PC = 0x8004df4 *)
mov L0x20019db8 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e38; PC = 0x8004df8 *)
mov L0x20019e38 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019ab8; PC = 0x8004dfc *)
mov L0x20019ab8 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198c2; Value = 0xfffeffff; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198c2@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x20019902; Value = 0xfffe0003; PC = 0x8004e08 *)
vpc r6@sint32 L0x20019902@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019942; Value = 0x0003ffff; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019942@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019982; Value = 0x00000002; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019982@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199c2; Value = 0x00010002; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199c2@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x20019a02; Value = 0xffff0002; PC = 0x8004e18 *)
vpc r10@sint32 L0x20019a02@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a42; Value = 0x00000002; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a42@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019882; Value = 0xfffe0001; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019882@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b3c; PC = 0x8004f1c *)
mov L0x20019b3c r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bbc; PC = 0x8004f20 *)
mov L0x20019bbc r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c3c; PC = 0x8004f24 *)
mov L0x20019c3c r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cbc; PC = 0x8004f28 *)
mov L0x20019cbc r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d3c; PC = 0x8004f2c *)
mov L0x20019d3c r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019dbc; PC = 0x8004f30 *)
mov L0x20019dbc r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e3c; PC = 0x8004f34 *)
mov L0x20019e3c r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019abc; PC = 0x8004f38 *)
mov L0x20019abc r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198c4; Value = 0x0001fffe; PC = 0x8004cc8 *)
vpc r5@sint32 L0x200198c4@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x20019904; Value = 0x0001fffe; PC = 0x8004ccc *)
vpc r6@sint32 L0x20019904@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019944; Value = 0x00010003; PC = 0x8004cd0 *)
vpc r7@sint32 L0x20019944@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019984; Value = 0x00010000; PC = 0x8004cd4 *)
vpc r8@sint32 L0x20019984@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199c4; Value = 0x00010001; PC = 0x8004cd8 *)
vpc r9@sint32 L0x200199c4@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x20019a04; Value = 0x0000ffff; PC = 0x8004cdc *)
vpc r10@sint32 L0x20019a04@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a44; Value = 0xfffe0000; PC = 0x8004ce0 *)
vpc r11@sint32 L0x20019a44@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019884; Value = 0x0001fffe; PC = 0x8004ce4 *)
vpc r4@sint32 L0x20019884@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004ce8 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004cec *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cf0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004cf4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004cf8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004cfc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004d00 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d04 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d08 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d0c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d10 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d14 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d18 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004d1c *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004d1e *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004d20 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004d22 *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004d24 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004d28 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004d2c *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004d30 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004d34 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004d38 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d3c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004d40 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d44 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d48 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004d4c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004d50 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004d54 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d58 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004d5c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004d60 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d64 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004d68 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004d6c *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004d6e *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004d70 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004d72 *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004d74 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004d78 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004d7c *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004d80 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004d84 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004d88 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d8c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004d90 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004d94 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004d98 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004d9c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004da0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004da4 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004da8 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dac *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004db0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004db4 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004db8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004dbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004dc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004dc4 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004dc6 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004dc8 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004dca *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004dcc *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004dd0 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004dd4 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004dd8 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004ddc *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b40; PC = 0x8004de0 *)
mov L0x20019b40 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bc0; PC = 0x8004de4 *)
mov L0x20019bc0 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c40; PC = 0x8004de8 *)
mov L0x20019c40 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cc0; PC = 0x8004dec *)
mov L0x20019cc0 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d40; PC = 0x8004df0 *)
mov L0x20019d40 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019dc0; PC = 0x8004df4 *)
mov L0x20019dc0 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e40; PC = 0x8004df8 *)
mov L0x20019e40 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019ac0; PC = 0x8004dfc *)
mov L0x20019ac0 r4;
(* vmov	s0, lr                                     #! PC = 0x8004e00 *)
mov s0 lr;
(* ldrsh.w	r5, [r0, #64]	; 0x40                    #! EA = L0x200198c6; Value = 0x00000001; PC = 0x8004e04 *)
vpc r5@sint32 L0x200198c6@sint16;
(* ldrsh.w	r6, [r0, #128]	; 0x80                   #! EA = L0x20019906; Value = 0x00000001; PC = 0x8004e08 *)
vpc r6@sint32 L0x20019906@sint16;
(* ldrsh.w	r7, [r0, #192]	; 0xc0                   #! EA = L0x20019946; Value = 0x00010001; PC = 0x8004e0c *)
vpc r7@sint32 L0x20019946@sint16;
(* ldrsh.w	r8, [r0, #256]	; 0x100                  #! EA = L0x20019986; Value = 0x00000001; PC = 0x8004e10 *)
vpc r8@sint32 L0x20019986@sint16;
(* ldrsh.w	r9, [r0, #320]	; 0x140                  #! EA = L0x200199c6; Value = 0xffff0001; PC = 0x8004e14 *)
vpc r9@sint32 L0x200199c6@sint16;
(* ldrsh.w	r10, [r0, #384]	; 0x180                 #! EA = L0x20019a06; Value = 0xffff0000; PC = 0x8004e18 *)
vpc r10@sint32 L0x20019a06@sint16;
(* ldrsh.w	r11, [r0, #448]	; 0x1c0                 #! EA = L0x20019a46; Value = 0x6fe3fffe; PC = 0x8004e1c *)
vpc r11@sint32 L0x20019a46@sint16;
(* ldrsh.w	r4, [r0], #2                            #! EA = L0x20019886; Value = 0xffff0001; PC = 0x8004e20 *)
vpc r4@sint32 L0x20019886@sint16;
(* vmov	r1, s4                                     #! PC = 0x8004e24 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004e28 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e2c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004e30 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004e34 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e38 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004e3c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e40 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e44 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e48 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e4c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e50 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004e54 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004e58 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004e5a *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004e5c *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004e5e *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004e60 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004e64 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004e68 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004e6c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004e70 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004e74 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e78 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004e7c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004e80 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e84 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004e88 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004e8c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004e90 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004e94 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004e98 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004e9c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ea0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004ea4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8004ea8 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8004eaa *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8004eac *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x8004eae *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8004eb0 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8004eb4 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8004eb8 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8004ebc *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8004ec0 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8004ec4 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ec8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8004ecc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8004ed0 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004ed4 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ed8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004edc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8004ee0 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004ee4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ee8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004eec *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8004ef0 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004ef4 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ef8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004efc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x8004f00 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x8004f02 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8004f04 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8004f06 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8004f08 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8004f0c *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x8004f10 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8004f14 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* vmov	lr, s0                                     #! PC = 0x8004f18 *)
mov lr s0;
(* str.w	r5, [lr, #128]	; 0x80                     #! EA = L0x20019b44; PC = 0x8004f1c *)
mov L0x20019b44 r5;
(* str.w	r6, [lr, #256]	; 0x100                    #! EA = L0x20019bc4; PC = 0x8004f20 *)
mov L0x20019bc4 r6;
(* str.w	r7, [lr, #384]	; 0x180                    #! EA = L0x20019c44; PC = 0x8004f24 *)
mov L0x20019c44 r7;
(* str.w	r8, [lr, #512]	; 0x200                    #! EA = L0x20019cc4; PC = 0x8004f28 *)
mov L0x20019cc4 r8;
(* str.w	r9, [lr, #640]	; 0x280                    #! EA = L0x20019d44; PC = 0x8004f2c *)
mov L0x20019d44 r9;
(* str.w	r10, [lr, #768]	; 0x300                   #! EA = L0x20019dc4; PC = 0x8004f30 *)
mov L0x20019dc4 r10;
(* str.w	r11, [lr, #896]	; 0x380                   #! EA = L0x20019e44; PC = 0x8004f34 *)
mov L0x20019e44 r11;
(* str.w	r4, [lr], #4                              #! EA = L0x20019ac4; PC = 0x8004f38 *)
mov L0x20019ac4 r4;
(* vmov	s0, lr                                     #! PC = 0x8004f3c *)
mov s0 lr;
(* vmov	r12, s2                                    #! PC = 0x8004f40 *)
mov r12 s2;


(* === layer 1_2_3 === *)
cut
  (* algebraic *)
  and [
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a48 * (x**0) + L0x20019a4c * (x**1) + 
            L0x20019a50 * (x**2) + L0x20019a54 * (x**3) + 
            L0x20019a58 * (x**4) + L0x20019a5c * (x**5) + 
            L0x20019a60 * (x**6) + L0x20019a64 * (x**7) + 
            L0x20019a68 * (x**8) + L0x20019a6c * (x**9) + 
            L0x20019a70 * (x**10) + L0x20019a74 * (x**11) + 
            L0x20019a78 * (x**12) + L0x20019a7c * (x**13) + 
            L0x20019a80 * (x**14) + L0x20019a84 * (x**15) + 
            L0x20019a88 * (x**16) + L0x20019a8c * (x**17) + 
            L0x20019a90 * (x**18) + L0x20019a94 * (x**19) + 
            L0x20019a98 * (x**20) + L0x20019a9c * (x**21) + 
            L0x20019aa0 * (x**22) + L0x20019aa4 * (x**23) + 
            L0x20019aa8 * (x**24) + L0x20019aac * (x**25) + 
            L0x20019ab0 * (x**26) + L0x20019ab4 * (x**27) + 
            L0x20019ab8 * (x**28) + L0x20019abc * (x**29) + 
            L0x20019ac0 * (x**30) + L0x20019ac4 * (x**31)
          )
          [25166081, x**32 - 22102028],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ac8 * (x**0) + L0x20019acc * (x**1) + 
            L0x20019ad0 * (x**2) + L0x20019ad4 * (x**3) + 
            L0x20019ad8 * (x**4) + L0x20019adc * (x**5) + 
            L0x20019ae0 * (x**6) + L0x20019ae4 * (x**7) + 
            L0x20019ae8 * (x**8) + L0x20019aec * (x**9) + 
            L0x20019af0 * (x**10) + L0x20019af4 * (x**11) + 
            L0x20019af8 * (x**12) + L0x20019afc * (x**13) + 
            L0x20019b00 * (x**14) + L0x20019b04 * (x**15) + 
            L0x20019b08 * (x**16) + L0x20019b0c * (x**17) + 
            L0x20019b10 * (x**18) + L0x20019b14 * (x**19) + 
            L0x20019b18 * (x**20) + L0x20019b1c * (x**21) + 
            L0x20019b20 * (x**22) + L0x20019b24 * (x**23) + 
            L0x20019b28 * (x**24) + L0x20019b2c * (x**25) + 
            L0x20019b30 * (x**26) + L0x20019b34 * (x**27) + 
            L0x20019b38 * (x**28) + L0x20019b3c * (x**29) + 
            L0x20019b40 * (x**30) + L0x20019b44 * (x**31)
          )
          [25166081, x**32 - 3064053],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b48 * (x**0) + L0x20019b4c * (x**1) + 
            L0x20019b50 * (x**2) + L0x20019b54 * (x**3) + 
            L0x20019b58 * (x**4) + L0x20019b5c * (x**5) + 
            L0x20019b60 * (x**6) + L0x20019b64 * (x**7) + 
            L0x20019b68 * (x**8) + L0x20019b6c * (x**9) + 
            L0x20019b70 * (x**10) + L0x20019b74 * (x**11) + 
            L0x20019b78 * (x**12) + L0x20019b7c * (x**13) + 
            L0x20019b80 * (x**14) + L0x20019b84 * (x**15) + 
            L0x20019b88 * (x**16) + L0x20019b8c * (x**17) + 
            L0x20019b90 * (x**18) + L0x20019b94 * (x**19) + 
            L0x20019b98 * (x**20) + L0x20019b9c * (x**21) + 
            L0x20019ba0 * (x**22) + L0x20019ba4 * (x**23) + 
            L0x20019ba8 * (x**24) + L0x20019bac * (x**25) + 
            L0x20019bb0 * (x**26) + L0x20019bb4 * (x**27) + 
            L0x20019bb8 * (x**28) + L0x20019bbc * (x**29) + 
            L0x20019bc0 * (x**30) + L0x20019bc4 * (x**31)
          )
          [25166081, x**32 - 18580179],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019bc8 * (x**0) + L0x20019bcc * (x**1) + 
            L0x20019bd0 * (x**2) + L0x20019bd4 * (x**3) + 
            L0x20019bd8 * (x**4) + L0x20019bdc * (x**5) + 
            L0x20019be0 * (x**6) + L0x20019be4 * (x**7) + 
            L0x20019be8 * (x**8) + L0x20019bec * (x**9) + 
            L0x20019bf0 * (x**10) + L0x20019bf4 * (x**11) + 
            L0x20019bf8 * (x**12) + L0x20019bfc * (x**13) + 
            L0x20019c00 * (x**14) + L0x20019c04 * (x**15) + 
            L0x20019c08 * (x**16) + L0x20019c0c * (x**17) + 
            L0x20019c10 * (x**18) + L0x20019c14 * (x**19) + 
            L0x20019c18 * (x**20) + L0x20019c1c * (x**21) + 
            L0x20019c20 * (x**22) + L0x20019c24 * (x**23) + 
            L0x20019c28 * (x**24) + L0x20019c2c * (x**25) + 
            L0x20019c30 * (x**26) + L0x20019c34 * (x**27) + 
            L0x20019c38 * (x**28) + L0x20019c3c * (x**29) + 
            L0x20019c40 * (x**30) + L0x20019c44 * (x**31)
          )
          [25166081, x**32 - 6585902],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c48 * (x**0) + L0x20019c4c * (x**1) + 
            L0x20019c50 * (x**2) + L0x20019c54 * (x**3) + 
            L0x20019c58 * (x**4) + L0x20019c5c * (x**5) + 
            L0x20019c60 * (x**6) + L0x20019c64 * (x**7) + 
            L0x20019c68 * (x**8) + L0x20019c6c * (x**9) + 
            L0x20019c70 * (x**10) + L0x20019c74 * (x**11) + 
            L0x20019c78 * (x**12) + L0x20019c7c * (x**13) + 
            L0x20019c80 * (x**14) + L0x20019c84 * (x**15) + 
            L0x20019c88 * (x**16) + L0x20019c8c * (x**17) + 
            L0x20019c90 * (x**18) + L0x20019c94 * (x**19) + 
            L0x20019c98 * (x**20) + L0x20019c9c * (x**21) + 
            L0x20019ca0 * (x**22) + L0x20019ca4 * (x**23) + 
            L0x20019ca8 * (x**24) + L0x20019cac * (x**25) + 
            L0x20019cb0 * (x**26) + L0x20019cb4 * (x**27) + 
            L0x20019cb8 * (x**28) + L0x20019cbc * (x**29) + 
            L0x20019cc0 * (x**30) + L0x20019cc4 * (x**31)
          )
          [25166081, x**32 - 6060580],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019cc8 * (x**0) + L0x20019ccc * (x**1) + 
            L0x20019cd0 * (x**2) + L0x20019cd4 * (x**3) + 
            L0x20019cd8 * (x**4) + L0x20019cdc * (x**5) + 
            L0x20019ce0 * (x**6) + L0x20019ce4 * (x**7) + 
            L0x20019ce8 * (x**8) + L0x20019cec * (x**9) + 
            L0x20019cf0 * (x**10) + L0x20019cf4 * (x**11) + 
            L0x20019cf8 * (x**12) + L0x20019cfc * (x**13) + 
            L0x20019d00 * (x**14) + L0x20019d04 * (x**15) + 
            L0x20019d08 * (x**16) + L0x20019d0c * (x**17) + 
            L0x20019d10 * (x**18) + L0x20019d14 * (x**19) + 
            L0x20019d18 * (x**20) + L0x20019d1c * (x**21) + 
            L0x20019d20 * (x**22) + L0x20019d24 * (x**23) + 
            L0x20019d28 * (x**24) + L0x20019d2c * (x**25) + 
            L0x20019d30 * (x**26) + L0x20019d34 * (x**27) + 
            L0x20019d38 * (x**28) + L0x20019d3c * (x**29) + 
            L0x20019d40 * (x**30) + L0x20019d44 * (x**31)
          )
          [25166081, x**32 - 19105501],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d48 * (x**0) + L0x20019d4c * (x**1) + 
            L0x20019d50 * (x**2) + L0x20019d54 * (x**3) + 
            L0x20019d58 * (x**4) + L0x20019d5c * (x**5) + 
            L0x20019d60 * (x**6) + L0x20019d64 * (x**7) + 
            L0x20019d68 * (x**8) + L0x20019d6c * (x**9) + 
            L0x20019d70 * (x**10) + L0x20019d74 * (x**11) + 
            L0x20019d78 * (x**12) + L0x20019d7c * (x**13) + 
            L0x20019d80 * (x**14) + L0x20019d84 * (x**15) + 
            L0x20019d88 * (x**16) + L0x20019d8c * (x**17) + 
            L0x20019d90 * (x**18) + L0x20019d94 * (x**19) + 
            L0x20019d98 * (x**20) + L0x20019d9c * (x**21) + 
            L0x20019da0 * (x**22) + L0x20019da4 * (x**23) + 
            L0x20019da8 * (x**24) + L0x20019dac * (x**25) + 
            L0x20019db0 * (x**26) + L0x20019db4 * (x**27) + 
            L0x20019db8 * (x**28) + L0x20019dbc * (x**29) + 
            L0x20019dc0 * (x**30) + L0x20019dc4 * (x**31)
          )
          [25166081, x**32 - 20730176],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019dc8 * (x**0) + L0x20019dcc * (x**1) + 
            L0x20019dd0 * (x**2) + L0x20019dd4 * (x**3) + 
            L0x20019dd8 * (x**4) + L0x20019ddc * (x**5) + 
            L0x20019de0 * (x**6) + L0x20019de4 * (x**7) + 
            L0x20019de8 * (x**8) + L0x20019dec * (x**9) + 
            L0x20019df0 * (x**10) + L0x20019df4 * (x**11) + 
            L0x20019df8 * (x**12) + L0x20019dfc * (x**13) + 
            L0x20019e00 * (x**14) + L0x20019e04 * (x**15) + 
            L0x20019e08 * (x**16) + L0x20019e0c * (x**17) + 
            L0x20019e10 * (x**18) + L0x20019e14 * (x**19) + 
            L0x20019e18 * (x**20) + L0x20019e1c * (x**21) + 
            L0x20019e20 * (x**22) + L0x20019e24 * (x**23) + 
            L0x20019e28 * (x**24) + L0x20019e2c * (x**25) + 
            L0x20019e30 * (x**26) + L0x20019e34 * (x**27) + 
            L0x20019e38 * (x**28) + L0x20019e3c * (x**29) + 
            L0x20019e40 * (x**30) + L0x20019e44 * (x**31)
          )
          [25166081, x**32 - 4435905]
  ]
  &&
  (* range *)
  and [
    4@32 * (-25166081)@32 <=s L0x20019a48, L0x20019a48 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a4c, L0x20019a4c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a50, L0x20019a50 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a54, L0x20019a54 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a58, L0x20019a58 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a5c, L0x20019a5c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a60, L0x20019a60 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a64, L0x20019a64 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a68, L0x20019a68 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a6c, L0x20019a6c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a70, L0x20019a70 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a74, L0x20019a74 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a78, L0x20019a78 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a7c, L0x20019a7c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a80, L0x20019a80 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a84, L0x20019a84 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a88, L0x20019a88 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a8c, L0x20019a8c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a90, L0x20019a90 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a94, L0x20019a94 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a98, L0x20019a98 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019a9c, L0x20019a9c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019aa0, L0x20019aa0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019aa4, L0x20019aa4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019aa8, L0x20019aa8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019aac, L0x20019aac <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ab0, L0x20019ab0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ab4, L0x20019ab4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ab8, L0x20019ab8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019abc, L0x20019abc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ac0, L0x20019ac0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ac4, L0x20019ac4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ac8, L0x20019ac8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019acc, L0x20019acc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ad0, L0x20019ad0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ad4, L0x20019ad4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ad8, L0x20019ad8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019adc, L0x20019adc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ae0, L0x20019ae0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ae4, L0x20019ae4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ae8, L0x20019ae8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019aec, L0x20019aec <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019af0, L0x20019af0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019af4, L0x20019af4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019af8, L0x20019af8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019afc, L0x20019afc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b00, L0x20019b00 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b04, L0x20019b04 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b08, L0x20019b08 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b0c, L0x20019b0c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b10, L0x20019b10 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b14, L0x20019b14 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b18, L0x20019b18 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b1c, L0x20019b1c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b20, L0x20019b20 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b24, L0x20019b24 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b28, L0x20019b28 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b2c, L0x20019b2c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b30, L0x20019b30 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b34, L0x20019b34 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b38, L0x20019b38 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b3c, L0x20019b3c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b40, L0x20019b40 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b44, L0x20019b44 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b48, L0x20019b48 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b4c, L0x20019b4c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b50, L0x20019b50 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b54, L0x20019b54 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b58, L0x20019b58 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b5c, L0x20019b5c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b60, L0x20019b60 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b64, L0x20019b64 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b68, L0x20019b68 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b6c, L0x20019b6c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b70, L0x20019b70 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b74, L0x20019b74 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b78, L0x20019b78 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b7c, L0x20019b7c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b80, L0x20019b80 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b84, L0x20019b84 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b88, L0x20019b88 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b8c, L0x20019b8c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b90, L0x20019b90 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b94, L0x20019b94 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b98, L0x20019b98 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019b9c, L0x20019b9c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ba0, L0x20019ba0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ba4, L0x20019ba4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ba8, L0x20019ba8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bac, L0x20019bac <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bb0, L0x20019bb0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bb4, L0x20019bb4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bb8, L0x20019bb8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bbc, L0x20019bbc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bc0, L0x20019bc0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bc4, L0x20019bc4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bc8, L0x20019bc8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bcc, L0x20019bcc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bd0, L0x20019bd0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bd4, L0x20019bd4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bd8, L0x20019bd8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bdc, L0x20019bdc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019be0, L0x20019be0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019be4, L0x20019be4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019be8, L0x20019be8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bec, L0x20019bec <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bf0, L0x20019bf0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bf4, L0x20019bf4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bf8, L0x20019bf8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019bfc, L0x20019bfc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c00, L0x20019c00 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c04, L0x20019c04 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c08, L0x20019c08 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c0c, L0x20019c0c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c10, L0x20019c10 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c14, L0x20019c14 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c18, L0x20019c18 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c1c, L0x20019c1c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c20, L0x20019c20 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c24, L0x20019c24 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c28, L0x20019c28 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c2c, L0x20019c2c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c30, L0x20019c30 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c34, L0x20019c34 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c38, L0x20019c38 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c3c, L0x20019c3c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c40, L0x20019c40 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c44, L0x20019c44 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c48, L0x20019c48 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c4c, L0x20019c4c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c50, L0x20019c50 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c54, L0x20019c54 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c58, L0x20019c58 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c5c, L0x20019c5c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c60, L0x20019c60 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c64, L0x20019c64 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c68, L0x20019c68 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c6c, L0x20019c6c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c70, L0x20019c70 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c74, L0x20019c74 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c78, L0x20019c78 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c7c, L0x20019c7c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c80, L0x20019c80 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c84, L0x20019c84 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c88, L0x20019c88 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c8c, L0x20019c8c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c90, L0x20019c90 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c94, L0x20019c94 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c98, L0x20019c98 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019c9c, L0x20019c9c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ca0, L0x20019ca0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ca4, L0x20019ca4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ca8, L0x20019ca8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cac, L0x20019cac <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cb0, L0x20019cb0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cb4, L0x20019cb4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cb8, L0x20019cb8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cbc, L0x20019cbc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cc0, L0x20019cc0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cc4, L0x20019cc4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cc8, L0x20019cc8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ccc, L0x20019ccc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cd0, L0x20019cd0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cd4, L0x20019cd4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cd8, L0x20019cd8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cdc, L0x20019cdc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ce0, L0x20019ce0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ce4, L0x20019ce4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ce8, L0x20019ce8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cec, L0x20019cec <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cf0, L0x20019cf0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cf4, L0x20019cf4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cf8, L0x20019cf8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019cfc, L0x20019cfc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d00, L0x20019d00 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d04, L0x20019d04 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d08, L0x20019d08 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d0c, L0x20019d0c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d10, L0x20019d10 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d14, L0x20019d14 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d18, L0x20019d18 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d1c, L0x20019d1c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d20, L0x20019d20 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d24, L0x20019d24 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d28, L0x20019d28 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d2c, L0x20019d2c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d30, L0x20019d30 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d34, L0x20019d34 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d38, L0x20019d38 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d3c, L0x20019d3c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d40, L0x20019d40 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d44, L0x20019d44 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d48, L0x20019d48 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d4c, L0x20019d4c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d50, L0x20019d50 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d54, L0x20019d54 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d58, L0x20019d58 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d5c, L0x20019d5c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d60, L0x20019d60 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d64, L0x20019d64 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d68, L0x20019d68 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d6c, L0x20019d6c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d70, L0x20019d70 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d74, L0x20019d74 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d78, L0x20019d78 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d7c, L0x20019d7c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d80, L0x20019d80 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d84, L0x20019d84 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d88, L0x20019d88 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d8c, L0x20019d8c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d90, L0x20019d90 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d94, L0x20019d94 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d98, L0x20019d98 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019d9c, L0x20019d9c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019da0, L0x20019da0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019da4, L0x20019da4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019da8, L0x20019da8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dac, L0x20019dac <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019db0, L0x20019db0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019db4, L0x20019db4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019db8, L0x20019db8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dbc, L0x20019dbc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dc0, L0x20019dc0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dc4, L0x20019dc4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dc8, L0x20019dc8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dcc, L0x20019dcc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dd0, L0x20019dd0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dd4, L0x20019dd4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dd8, L0x20019dd8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019ddc, L0x20019ddc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019de0, L0x20019de0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019de4, L0x20019de4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019de8, L0x20019de8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dec, L0x20019dec <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019df0, L0x20019df0 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019df4, L0x20019df4 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019df8, L0x20019df8 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019dfc, L0x20019dfc <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e00, L0x20019e00 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e04, L0x20019e04 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e08, L0x20019e08 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e0c, L0x20019e0c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e10, L0x20019e10 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e14, L0x20019e14 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e18, L0x20019e18 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e1c, L0x20019e1c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e20, L0x20019e20 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e24, L0x20019e24 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e28, L0x20019e28 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e2c, L0x20019e2c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e30, L0x20019e30 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e34, L0x20019e34 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e38, L0x20019e38 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e3c, L0x20019e3c <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e40, L0x20019e40 <s 4@32 * 25166081@32,
    4@32 * (-25166081)@32 <=s L0x20019e44, L0x20019e44 <s 4@32 * 25166081@32
  ]
;


(* vmov	r0, s0                                     #! PC = 0x8004f4c *)
mov r0 s0;
(* sub.w	r0, r0, #128	; 0x80                       #! PC = 0x8004f50 *)
subs discard r0 r0 128@uint32;
(* add.w	r12, r0, #1024	; 0x400                    #! PC = 0x8004f54 *)
adds discard r12 r0 1024@uint32;
(* vmov	s2, r12                                    #! PC = 0x8004f58 *)
mov s2 r12;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d070; PC = 0x8004f60 *)
mov s4 L0x800d070;
mov s5 L0x800d074;
mov s6 L0x800d078;
mov s7 L0x800d07c;
mov s8 L0x800d080;
mov s9 L0x800d084;
mov s10 L0x800d088;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019a48; Value = 0x00e16fe3; PC = 0x8004f70 *)
mov r4 L0x20019a48;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019a58; Value = 0xff5930b4; PC = 0x8004f74 *)
mov r5 L0x20019a58;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019a68; Value = 0xfff2283a; PC = 0x8004f78 *)
mov r6 L0x20019a68;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a78; Value = 0x00858b5a; PC = 0x8004f7c *)
mov r7 L0x20019a78;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a88; Value = 0x0163b233; PC = 0x8004f80 *)
mov r8 L0x20019a88;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019a98; Value = 0x00c64e54; PC = 0x8004f84 *)
mov r9 L0x20019a98;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019aa8; Value = 0x00793a24; PC = 0x8004f88 *)
mov r10 L0x20019aa8;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019ab8; Value = 0xff5ffefc; PC = 0x8004f8c *)
mov r11 L0x20019ab8;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019a58; PC = 0x8005084 *)
mov L0x20019a58 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019a68; PC = 0x8005088 *)
mov L0x20019a68 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a78; PC = 0x800508c *)
mov L0x20019a78 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a88; PC = 0x8005090 *)
mov L0x20019a88 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019a98; PC = 0x8005094 *)
mov L0x20019a98 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019aa8; PC = 0x8005098 *)
mov L0x20019aa8 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019ab8; PC = 0x800509c *)
mov L0x20019ab8 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019a48; PC = 0x80050a0 *)
mov L0x20019a48 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019a4c; Value = 0x005a8a7d; PC = 0x80050a4 *)
mov r4 L0x20019a4c;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019a5c; Value = 0xff1c5743; PC = 0x80050a8 *)
mov r5 L0x20019a5c;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019a6c; Value = 0x00532266; PC = 0x80050ac *)
mov r6 L0x20019a6c;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a7c; Value = 0x015c68fe; PC = 0x80050b0 *)
mov r7 L0x20019a7c;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a8c; Value = 0xfe0d5fea; PC = 0x80050b4 *)
mov r8 L0x20019a8c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019a9c; Value = 0x003e3c47; PC = 0x80050b8 *)
mov r9 L0x20019a9c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019aac; Value = 0x00231f6f; PC = 0x80050bc *)
mov r10 L0x20019aac;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019abc; Value = 0xffdb680d; PC = 0x80050c0 *)
mov r11 L0x20019abc;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019a5c; PC = 0x80051b8 *)
mov L0x20019a5c r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019a6c; PC = 0x80051bc *)
mov L0x20019a6c r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a7c; PC = 0x80051c0 *)
mov L0x20019a7c r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a8c; PC = 0x80051c4 *)
mov L0x20019a8c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019a9c; PC = 0x80051c8 *)
mov L0x20019a9c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019aac; PC = 0x80051cc *)
mov L0x20019aac r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019abc; PC = 0x80051d0 *)
mov L0x20019abc r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019a4c; PC = 0x80051d4 *)
mov L0x20019a4c r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019a50; Value = 0xfefd33f5; PC = 0x8004f70 *)
mov r4 L0x20019a50;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019a60; Value = 0xff409273; PC = 0x8004f74 *)
mov r5 L0x20019a60;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019a70; Value = 0xffd8ec3a; PC = 0x8004f78 *)
mov r6 L0x20019a70;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a80; Value = 0xff3d3b4c; PC = 0x8004f7c *)
mov r7 L0x20019a80;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a90; Value = 0x000141bf; PC = 0x8004f80 *)
mov r8 L0x20019a90;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019aa0; Value = 0xfee4f74d; PC = 0x8004f84 *)
mov r9 L0x20019aa0;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ab0; Value = 0x002cd502; PC = 0x8004f88 *)
mov r10 L0x20019ab0;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019ac0; Value = 0xff38bcf1; PC = 0x8004f8c *)
mov r11 L0x20019ac0;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019a60; PC = 0x8005084 *)
mov L0x20019a60 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019a70; PC = 0x8005088 *)
mov L0x20019a70 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a80; PC = 0x800508c *)
mov L0x20019a80 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a90; PC = 0x8005090 *)
mov L0x20019a90 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019aa0; PC = 0x8005094 *)
mov L0x20019aa0 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ab0; PC = 0x8005098 *)
mov L0x20019ab0 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019ac0; PC = 0x800509c *)
mov L0x20019ac0 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019a50; PC = 0x80050a0 *)
mov L0x20019a50 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019a54; Value = 0xfff07760; PC = 0x80050a4 *)
mov r4 L0x20019a54;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019a64; Value = 0x001271d8; PC = 0x80050a8 *)
mov r5 L0x20019a64;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019a74; Value = 0xffb44c36; PC = 0x80050ac *)
mov r6 L0x20019a74;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a84; Value = 0xffa7cc29; PC = 0x80050b0 *)
mov r7 L0x20019a84;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a94; Value = 0xffaeaa59; PC = 0x80050b4 *)
mov r8 L0x20019a94;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019aa4; Value = 0x00f207b2; PC = 0x80050b8 *)
mov r9 L0x20019aa4;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ab4; Value = 0xfff4c95d; PC = 0x80050bc *)
mov r10 L0x20019ab4;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019ac4; Value = 0x004fd6ae; PC = 0x80050c0 *)
mov r11 L0x20019ac4;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019a64; PC = 0x80051b8 *)
mov L0x20019a64 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019a74; PC = 0x80051bc *)
mov L0x20019a74 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019a84; PC = 0x80051c0 *)
mov L0x20019a84 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019a94; PC = 0x80051c4 *)
mov L0x20019a94 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019aa4; PC = 0x80051c8 *)
mov L0x20019aa4 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ab4; PC = 0x80051cc *)
mov L0x20019ab4 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019ac4; PC = 0x80051d0 *)
mov L0x20019ac4 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019a54; PC = 0x80051d4 *)
mov L0x20019a54 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d08c; PC = 0x8004f60 *)
mov s4 L0x800d08c;
mov s5 L0x800d090;
mov s6 L0x800d094;
mov s7 L0x800d098;
mov s8 L0x800d09c;
mov s9 L0x800d0a0;
mov s10 L0x800d0a4;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019ac8; Value = 0xfffc8e77; PC = 0x8004f70 *)
mov r4 L0x20019ac8;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019ad8; Value = 0xffc8d0f4; PC = 0x8004f74 *)
mov r5 L0x20019ad8;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019ae8; Value = 0x00a36554; PC = 0x8004f78 *)
mov r6 L0x20019ae8;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019af8; Value = 0x01f93c46; PC = 0x8004f7c *)
mov r7 L0x20019af8;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b08; Value = 0x016c0319; PC = 0x8004f80 *)
mov r8 L0x20019b08;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b18; Value = 0x001937b0; PC = 0x8004f84 *)
mov r9 L0x20019b18;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b28; Value = 0x00633c88; PC = 0x8004f88 *)
mov r10 L0x20019b28;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b38; Value = 0xfeb6c6f6; PC = 0x8004f8c *)
mov r11 L0x20019b38;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019ad8; PC = 0x8005084 *)
mov L0x20019ad8 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019ae8; PC = 0x8005088 *)
mov L0x20019ae8 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019af8; PC = 0x800508c *)
mov L0x20019af8 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b08; PC = 0x8005090 *)
mov L0x20019b08 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b18; PC = 0x8005094 *)
mov L0x20019b18 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b28; PC = 0x8005098 *)
mov L0x20019b28 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b38; PC = 0x800509c *)
mov L0x20019b38 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019ac8; PC = 0x80050a0 *)
mov L0x20019ac8 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019acc; Value = 0xffa5757b; PC = 0x80050a4 *)
mov r4 L0x20019acc;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019adc; Value = 0xfef06a1f; PC = 0x80050a8 *)
mov r5 L0x20019adc;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019aec; Value = 0x00d65c1a; PC = 0x80050ac *)
mov r6 L0x20019aec;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019afc; Value = 0xffe48cfa; PC = 0x80050b0 *)
mov r7 L0x20019afc;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b0c; Value = 0xff0a0098; PC = 0x80050b4 *)
mov r8 L0x20019b0c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b1c; Value = 0xfff2d1fd; PC = 0x80050b8 *)
mov r9 L0x20019b1c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b2c; Value = 0xfeb34d21; PC = 0x80050bc *)
mov r10 L0x20019b2c;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b3c; Value = 0xffd79025; PC = 0x80050c0 *)
mov r11 L0x20019b3c;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019adc; PC = 0x80051b8 *)
mov L0x20019adc r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019aec; PC = 0x80051bc *)
mov L0x20019aec r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019afc; PC = 0x80051c0 *)
mov L0x20019afc r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b0c; PC = 0x80051c4 *)
mov L0x20019b0c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b1c; PC = 0x80051c8 *)
mov L0x20019b1c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b2c; PC = 0x80051cc *)
mov L0x20019b2c r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b3c; PC = 0x80051d0 *)
mov L0x20019b3c r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019acc; PC = 0x80051d4 *)
mov L0x20019acc r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019ad0; Value = 0xfeafba1f; PC = 0x8004f70 *)
mov r4 L0x20019ad0;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019ae0; Value = 0x006121e7; PC = 0x8004f74 *)
mov r5 L0x20019ae0;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019af0; Value = 0x01051222; PC = 0x8004f78 *)
mov r6 L0x20019af0;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b00; Value = 0xfffaa134; PC = 0x8004f7c *)
mov r7 L0x20019b00;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b10; Value = 0xfef0732f; PC = 0x8004f80 *)
mov r8 L0x20019b10;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b20; Value = 0x003d0a59; PC = 0x8004f84 *)
mov r9 L0x20019b20;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b30; Value = 0xffd32b00; PC = 0x8004f88 *)
mov r10 L0x20019b30;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b40; Value = 0x001bdaa3; PC = 0x8004f8c *)
mov r11 L0x20019b40;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019ae0; PC = 0x8005084 *)
mov L0x20019ae0 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019af0; PC = 0x8005088 *)
mov L0x20019af0 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b00; PC = 0x800508c *)
mov L0x20019b00 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b10; PC = 0x8005090 *)
mov L0x20019b10 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b20; PC = 0x8005094 *)
mov L0x20019b20 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b30; PC = 0x8005098 *)
mov L0x20019b30 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b40; PC = 0x800509c *)
mov L0x20019b40 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019ad0; PC = 0x80050a0 *)
mov L0x20019ad0 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019ad4; Value = 0x01391c10; PC = 0x80050a4 *)
mov r4 L0x20019ad4;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019ae4; Value = 0xff0f8fd0; PC = 0x80050a8 *)
mov r5 L0x20019ae4;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019af4; Value = 0x004bb3cc; PC = 0x80050ac *)
mov r6 L0x20019af4;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b04; Value = 0x008c6665; PC = 0x80050b0 *)
mov r7 L0x20019b04;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b14; Value = 0xfe326157; PC = 0x80050b4 *)
mov r8 L0x20019b14;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b24; Value = 0x0039136a; PC = 0x80050b8 *)
mov r9 L0x20019b24;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b34; Value = 0xfee01b87; PC = 0x80050bc *)
mov r10 L0x20019b34;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b44; Value = 0xffaea1a8; PC = 0x80050c0 *)
mov r11 L0x20019b44;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019ae4; PC = 0x80051b8 *)
mov L0x20019ae4 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019af4; PC = 0x80051bc *)
mov L0x20019af4 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b04; PC = 0x80051c0 *)
mov L0x20019b04 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b14; PC = 0x80051c4 *)
mov L0x20019b14 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b24; PC = 0x80051c8 *)
mov L0x20019b24 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019b34; PC = 0x80051cc *)
mov L0x20019b34 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019b44; PC = 0x80051d0 *)
mov L0x20019b44 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019ad4; PC = 0x80051d4 *)
mov L0x20019ad4 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d0a8; PC = 0x8004f60 *)
mov s4 L0x800d0a8;
mov s5 L0x800d0ac;
mov s6 L0x800d0b0;
mov s7 L0x800d0b4;
mov s8 L0x800d0b8;
mov s9 L0x800d0bc;
mov s10 L0x800d0c0;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019b48; Value = 0x010c90c5; PC = 0x8004f70 *)
mov r4 L0x20019b48;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019b58; Value = 0xfec69dea; PC = 0x8004f74 *)
mov r5 L0x20019b58;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019b68; Value = 0xff52aaae; PC = 0x8004f78 *)
mov r6 L0x20019b68;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b78; Value = 0x007ad191; PC = 0x8004f7c *)
mov r7 L0x20019b78;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b88; Value = 0x004658fe; PC = 0x8004f80 *)
mov r8 L0x20019b88;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b98; Value = 0xfff59958; PC = 0x8004f84 *)
mov r9 L0x20019b98;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ba8; Value = 0xff730f3c; PC = 0x8004f88 *)
mov r10 L0x20019ba8;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bb8; Value = 0xfef1ad99; PC = 0x8004f8c *)
mov r11 L0x20019bb8;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019b58; PC = 0x8005084 *)
mov L0x20019b58 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019b68; PC = 0x8005088 *)
mov L0x20019b68 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b78; PC = 0x800508c *)
mov L0x20019b78 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b88; PC = 0x8005090 *)
mov L0x20019b88 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b98; PC = 0x8005094 *)
mov L0x20019b98 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ba8; PC = 0x8005098 *)
mov L0x20019ba8 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bb8; PC = 0x800509c *)
mov L0x20019bb8 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019b48; PC = 0x80050a0 *)
mov L0x20019b48 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019b4c; Value = 0x0019d225; PC = 0x80050a4 *)
mov r4 L0x20019b4c;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019b5c; Value = 0xff4a67ae; PC = 0x80050a8 *)
mov r5 L0x20019b5c;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019b6c; Value = 0xff0fce64; PC = 0x80050ac *)
mov r6 L0x20019b6c;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b7c; Value = 0xff7d3621; PC = 0x80050b0 *)
mov r7 L0x20019b7c;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b8c; Value = 0x008a0f4b; PC = 0x80050b4 *)
mov r8 L0x20019b8c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b9c; Value = 0x002030f3; PC = 0x80050b8 *)
mov r9 L0x20019b9c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019bac; Value = 0xff65d56e; PC = 0x80050bc *)
mov r10 L0x20019bac;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bbc; Value = 0xffc4dd55; PC = 0x80050c0 *)
mov r11 L0x20019bbc;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019b5c; PC = 0x80051b8 *)
mov L0x20019b5c r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019b6c; PC = 0x80051bc *)
mov L0x20019b6c r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b7c; PC = 0x80051c0 *)
mov L0x20019b7c r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b8c; PC = 0x80051c4 *)
mov L0x20019b8c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019b9c; PC = 0x80051c8 *)
mov L0x20019b9c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019bac; PC = 0x80051cc *)
mov L0x20019bac r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bbc; PC = 0x80051d0 *)
mov L0x20019bbc r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019b4c; PC = 0x80051d4 *)
mov L0x20019b4c r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019b50; Value = 0xff0ceaf3; PC = 0x8004f70 *)
mov r4 L0x20019b50;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019b60; Value = 0xff3506e5; PC = 0x8004f74 *)
mov r5 L0x20019b60;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019b70; Value = 0x0172fae8; PC = 0x8004f78 *)
mov r6 L0x20019b70;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b80; Value = 0xff2a459b; PC = 0x8004f7c *)
mov r7 L0x20019b80;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b90; Value = 0x003a93aa; PC = 0x8004f80 *)
mov r8 L0x20019b90;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ba0; Value = 0xffa58d28; PC = 0x8004f84 *)
mov r9 L0x20019ba0;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019bb0; Value = 0x00ad3a91; PC = 0x8004f88 *)
mov r10 L0x20019bb0;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bc0; Value = 0x00987fc5; PC = 0x8004f8c *)
mov r11 L0x20019bc0;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019b60; PC = 0x8005084 *)
mov L0x20019b60 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019b70; PC = 0x8005088 *)
mov L0x20019b70 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b80; PC = 0x800508c *)
mov L0x20019b80 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b90; PC = 0x8005090 *)
mov L0x20019b90 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ba0; PC = 0x8005094 *)
mov L0x20019ba0 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019bb0; PC = 0x8005098 *)
mov L0x20019bb0 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bc0; PC = 0x800509c *)
mov L0x20019bc0 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019b50; PC = 0x80050a0 *)
mov L0x20019b50 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019b54; Value = 0x014b1e7f; PC = 0x80050a4 *)
mov r4 L0x20019b54;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019b64; Value = 0xff194a4a; PC = 0x80050a8 *)
mov r5 L0x20019b64;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019b74; Value = 0xff4ee9da; PC = 0x80050ac *)
mov r6 L0x20019b74;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b84; Value = 0x0124c32c; PC = 0x80050b0 *)
mov r7 L0x20019b84;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b94; Value = 0x00550871; PC = 0x80050b4 *)
mov r8 L0x20019b94;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ba4; Value = 0xffae2233; PC = 0x80050b8 *)
mov r9 L0x20019ba4;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019bb4; Value = 0x008bc379; PC = 0x80050bc *)
mov r10 L0x20019bb4;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bc4; Value = 0x00c94dff; PC = 0x80050c0 *)
mov r11 L0x20019bc4;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019b64; PC = 0x80051b8 *)
mov L0x20019b64 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019b74; PC = 0x80051bc *)
mov L0x20019b74 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019b84; PC = 0x80051c0 *)
mov L0x20019b84 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019b94; PC = 0x80051c4 *)
mov L0x20019b94 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ba4; PC = 0x80051c8 *)
mov L0x20019ba4 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019bb4; PC = 0x80051cc *)
mov L0x20019bb4 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019bc4; PC = 0x80051d0 *)
mov L0x20019bc4 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019b54; PC = 0x80051d4 *)
mov L0x20019b54 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d0c4; PC = 0x8004f60 *)
mov s4 L0x800d0c4;
mov s5 L0x800d0c8;
mov s6 L0x800d0cc;
mov s7 L0x800d0d0;
mov s8 L0x800d0d4;
mov s9 L0x800d0d8;
mov s10 L0x800d0dc;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019bc8; Value = 0x00fc88b1; PC = 0x8004f70 *)
mov r4 L0x20019bc8;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019bd8; Value = 0xff3048a2; PC = 0x8004f74 *)
mov r5 L0x20019bd8;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019be8; Value = 0x0017c7c4; PC = 0x8004f78 *)
mov r6 L0x20019be8;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019bf8; Value = 0xffed7e9b; PC = 0x8004f7c *)
mov r7 L0x20019bf8;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c08; Value = 0xff9f3526; PC = 0x8004f80 *)
mov r8 L0x20019c08;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c18; Value = 0xff2ae0a0; PC = 0x8004f84 *)
mov r9 L0x20019c18;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c28; Value = 0xff7ea5b0; PC = 0x8004f88 *)
mov r10 L0x20019c28;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c38; Value = 0x001074b1; PC = 0x8004f8c *)
mov r11 L0x20019c38;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019bd8; PC = 0x8005084 *)
mov L0x20019bd8 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019be8; PC = 0x8005088 *)
mov L0x20019be8 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019bf8; PC = 0x800508c *)
mov L0x20019bf8 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c08; PC = 0x8005090 *)
mov L0x20019c08 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c18; PC = 0x8005094 *)
mov L0x20019c18 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c28; PC = 0x8005098 *)
mov L0x20019c28 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c38; PC = 0x800509c *)
mov L0x20019c38 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019bc8; PC = 0x80050a0 *)
mov L0x20019bc8 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019bcc; Value = 0xffe62dd3; PC = 0x80050a4 *)
mov r4 L0x20019bcc;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019bdc; Value = 0xffc1bf1c; PC = 0x80050a8 *)
mov r5 L0x20019bdc;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019bec; Value = 0xffc6b320; PC = 0x80050ac *)
mov r6 L0x20019bec;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019bfc; Value = 0xff41d3eb; PC = 0x80050b0 *)
mov r7 L0x20019bfc;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c0c; Value = 0xff77785f; PC = 0x80050b4 *)
mov r8 L0x20019c0c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c1c; Value = 0xff7cec61; PC = 0x80050b8 *)
mov r9 L0x20019c1c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c2c; Value = 0xfedca632; PC = 0x80050bc *)
mov r10 L0x20019c2c;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c3c; Value = 0x00565619; PC = 0x80050c0 *)
mov r11 L0x20019c3c;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019bdc; PC = 0x80051b8 *)
mov L0x20019bdc r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019bec; PC = 0x80051bc *)
mov L0x20019bec r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019bfc; PC = 0x80051c0 *)
mov L0x20019bfc r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c0c; PC = 0x80051c4 *)
mov L0x20019c0c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c1c; PC = 0x80051c8 *)
mov L0x20019c1c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c2c; PC = 0x80051cc *)
mov L0x20019c2c r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c3c; PC = 0x80051d0 *)
mov L0x20019c3c r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019bcc; PC = 0x80051d4 *)
mov L0x20019bcc r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019bd0; Value = 0x005f0f2d; PC = 0x8004f70 *)
mov r4 L0x20019bd0;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019be0; Value = 0xfe422cf1; PC = 0x8004f74 *)
mov r5 L0x20019be0;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019bf0; Value = 0x00961e90; PC = 0x8004f78 *)
mov r6 L0x20019bf0;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c00; Value = 0xfeb6c615; PC = 0x8004f7c *)
mov r7 L0x20019c00;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c10; Value = 0x00a1e304; PC = 0x8004f80 *)
mov r8 L0x20019c10;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c20; Value = 0xfe515962; PC = 0x8004f84 *)
mov r9 L0x20019c20;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c30; Value = 0xff52c571; PC = 0x8004f88 *)
mov r10 L0x20019c30;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c40; Value = 0x0012e89f; PC = 0x8004f8c *)
mov r11 L0x20019c40;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019be0; PC = 0x8005084 *)
mov L0x20019be0 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019bf0; PC = 0x8005088 *)
mov L0x20019bf0 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c00; PC = 0x800508c *)
mov L0x20019c00 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c10; PC = 0x8005090 *)
mov L0x20019c10 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c20; PC = 0x8005094 *)
mov L0x20019c20 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c30; PC = 0x8005098 *)
mov L0x20019c30 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c40; PC = 0x800509c *)
mov L0x20019c40 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019bd0; PC = 0x80050a0 *)
mov L0x20019bd0 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019bd4; Value = 0x007265e1; PC = 0x80050a4 *)
mov r4 L0x20019bd4;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019be4; Value = 0xfedd9c42; PC = 0x80050a8 *)
mov r5 L0x20019be4;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019bf4; Value = 0x00b11628; PC = 0x80050ac *)
mov r6 L0x20019bf4;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c04; Value = 0x018e2212; PC = 0x80050b0 *)
mov r7 L0x20019c04;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c14; Value = 0xfee2d40f; PC = 0x80050b4 *)
mov r8 L0x20019c14;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c24; Value = 0xff26c2b1; PC = 0x80050b8 *)
mov r9 L0x20019c24;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c34; Value = 0x009f57a3; PC = 0x80050bc *)
mov r10 L0x20019c34;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c44; Value = 0x021f517f; PC = 0x80050c0 *)
mov r11 L0x20019c44;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019be4; PC = 0x80051b8 *)
mov L0x20019be4 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019bf4; PC = 0x80051bc *)
mov L0x20019bf4 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c04; PC = 0x80051c0 *)
mov L0x20019c04 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c14; PC = 0x80051c4 *)
mov L0x20019c14 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c24; PC = 0x80051c8 *)
mov L0x20019c24 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019c34; PC = 0x80051cc *)
mov L0x20019c34 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019c44; PC = 0x80051d0 *)
mov L0x20019c44 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019bd4; PC = 0x80051d4 *)
mov L0x20019bd4 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d0e0; PC = 0x8004f60 *)
mov s4 L0x800d0e0;
mov s5 L0x800d0e4;
mov s6 L0x800d0e8;
mov s7 L0x800d0ec;
mov s8 L0x800d0f0;
mov s9 L0x800d0f4;
mov s10 L0x800d0f8;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019c48; Value = 0x0008c7e0; PC = 0x8004f70 *)
mov r4 L0x20019c48;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019c58; Value = 0xffb198bd; PC = 0x8004f74 *)
mov r5 L0x20019c58;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019c68; Value = 0xffa000b7; PC = 0x8004f78 *)
mov r6 L0x20019c68;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c78; Value = 0xfee8b7f5; PC = 0x8004f7c *)
mov r7 L0x20019c78;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c88; Value = 0xfe83a38a; PC = 0x8004f80 *)
mov r8 L0x20019c88;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c98; Value = 0xffc1a79f; PC = 0x8004f84 *)
mov r9 L0x20019c98;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ca8; Value = 0x001204a2; PC = 0x8004f88 *)
mov r10 L0x20019ca8;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cb8; Value = 0x00feda1c; PC = 0x8004f8c *)
mov r11 L0x20019cb8;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019c58; PC = 0x8005084 *)
mov L0x20019c58 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019c68; PC = 0x8005088 *)
mov L0x20019c68 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c78; PC = 0x800508c *)
mov L0x20019c78 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c88; PC = 0x8005090 *)
mov L0x20019c88 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c98; PC = 0x8005094 *)
mov L0x20019c98 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019ca8; PC = 0x8005098 *)
mov L0x20019ca8 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cb8; PC = 0x800509c *)
mov L0x20019cb8 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019c48; PC = 0x80050a0 *)
mov L0x20019c48 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019c4c; Value = 0x00589e89; PC = 0x80050a4 *)
mov r4 L0x20019c4c;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019c5c; Value = 0x00631f5f; PC = 0x80050a8 *)
mov r5 L0x20019c5c;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019c6c; Value = 0xffea69ad; PC = 0x80050ac *)
mov r6 L0x20019c6c;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c7c; Value = 0xffe844f9; PC = 0x80050b0 *)
mov r7 L0x20019c7c;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c8c; Value = 0x00e5adf0; PC = 0x80050b4 *)
mov r8 L0x20019c8c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c9c; Value = 0xff346bb2; PC = 0x80050b8 *)
mov r9 L0x20019c9c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019cac; Value = 0xffa50562; PC = 0x80050bc *)
mov r10 L0x20019cac;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cbc; Value = 0x002adee9; PC = 0x80050c0 *)
mov r11 L0x20019cbc;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019c5c; PC = 0x80051b8 *)
mov L0x20019c5c r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019c6c; PC = 0x80051bc *)
mov L0x20019c6c r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c7c; PC = 0x80051c0 *)
mov L0x20019c7c r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c8c; PC = 0x80051c4 *)
mov L0x20019c8c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019c9c; PC = 0x80051c8 *)
mov L0x20019c9c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019cac; PC = 0x80051cc *)
mov L0x20019cac r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cbc; PC = 0x80051d0 *)
mov L0x20019cbc r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019c4c; PC = 0x80051d4 *)
mov L0x20019c4c r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019c50; Value = 0x005ff984; PC = 0x8004f70 *)
mov r4 L0x20019c50;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019c60; Value = 0xffbdbce3; PC = 0x8004f74 *)
mov r5 L0x20019c60;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019c70; Value = 0x00afee0a; PC = 0x8004f78 *)
mov r6 L0x20019c70;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c80; Value = 0x0137e757; PC = 0x8004f7c *)
mov r7 L0x20019c80;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c90; Value = 0x00686ca8; PC = 0x8004f80 *)
mov r8 L0x20019c90;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ca0; Value = 0xff552247; PC = 0x8004f84 *)
mov r9 L0x20019ca0;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019cb0; Value = 0x00705dd0; PC = 0x8004f88 *)
mov r10 L0x20019cb0;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cc0; Value = 0x003bfa92; PC = 0x8004f8c *)
mov r11 L0x20019cc0;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019c60; PC = 0x8005084 *)
mov L0x20019c60 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019c70; PC = 0x8005088 *)
mov L0x20019c70 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c80; PC = 0x800508c *)
mov L0x20019c80 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c90; PC = 0x8005090 *)
mov L0x20019c90 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ca0; PC = 0x8005094 *)
mov L0x20019ca0 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019cb0; PC = 0x8005098 *)
mov L0x20019cb0 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cc0; PC = 0x800509c *)
mov L0x20019cc0 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019c50; PC = 0x80050a0 *)
mov L0x20019c50 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019c54; Value = 0x00046b49; PC = 0x80050a4 *)
mov r4 L0x20019c54;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019c64; Value = 0x000a1406; PC = 0x80050a8 *)
mov r5 L0x20019c64;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019c74; Value = 0x000df289; PC = 0x80050ac *)
mov r6 L0x20019c74;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c84; Value = 0xff0c081e; PC = 0x80050b0 *)
mov r7 L0x20019c84;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c94; Value = 0x00d8d3b2; PC = 0x80050b4 *)
mov r8 L0x20019c94;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ca4; Value = 0x0039ae62; PC = 0x80050b8 *)
mov r9 L0x20019ca4;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019cb4; Value = 0xffac7c1a; PC = 0x80050bc *)
mov r10 L0x20019cb4;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cc4; Value = 0xffa8e709; PC = 0x80050c0 *)
mov r11 L0x20019cc4;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019c64; PC = 0x80051b8 *)
mov L0x20019c64 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019c74; PC = 0x80051bc *)
mov L0x20019c74 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019c84; PC = 0x80051c0 *)
mov L0x20019c84 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019c94; PC = 0x80051c4 *)
mov L0x20019c94 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019ca4; PC = 0x80051c8 *)
mov L0x20019ca4 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019cb4; PC = 0x80051cc *)
mov L0x20019cb4 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019cc4; PC = 0x80051d0 *)
mov L0x20019cc4 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019c54; PC = 0x80051d4 *)
mov L0x20019c54 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d0fc; PC = 0x8004f60 *)
mov s4 L0x800d0fc;
mov s5 L0x800d100;
mov s6 L0x800d104;
mov s7 L0x800d108;
mov s8 L0x800d10c;
mov s9 L0x800d110;
mov s10 L0x800d114;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019cc8; Value = 0xfff8bfcc; PC = 0x8004f70 *)
mov r4 L0x20019cc8;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019cd8; Value = 0x004cdf99; PC = 0x8004f74 *)
mov r5 L0x20019cd8;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019ce8; Value = 0xfeeaebb5; PC = 0x8004f78 *)
mov r6 L0x20019ce8;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019cf8; Value = 0xffd9765d; PC = 0x8004f7c *)
mov r7 L0x20019cf8;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d08; Value = 0xff8c2d34; PC = 0x8004f80 *)
mov r8 L0x20019d08;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d18; Value = 0x011dde65; PC = 0x8004f84 *)
mov r9 L0x20019d18;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d28; Value = 0xff1184ae; PC = 0x8004f88 *)
mov r10 L0x20019d28;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d38; Value = 0x01c9e604; PC = 0x8004f8c *)
mov r11 L0x20019d38;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019cd8; PC = 0x8005084 *)
mov L0x20019cd8 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019ce8; PC = 0x8005088 *)
mov L0x20019ce8 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019cf8; PC = 0x800508c *)
mov L0x20019cf8 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d08; PC = 0x8005090 *)
mov L0x20019d08 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d18; PC = 0x8005094 *)
mov L0x20019d18 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d28; PC = 0x8005098 *)
mov L0x20019d28 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d38; PC = 0x800509c *)
mov L0x20019d38 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019cc8; PC = 0x80050a0 *)
mov L0x20019cc8 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019ccc; Value = 0xffa7616f; PC = 0x80050a4 *)
mov r4 L0x20019ccc;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019cdc; Value = 0x00b09935; PC = 0x80050a8 *)
mov r5 L0x20019cdc;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019cec; Value = 0x0049b3f3; PC = 0x80050ac *)
mov r6 L0x20019cec;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019cfc; Value = 0x0158b0ff; PC = 0x80050b0 *)
mov r7 L0x20019cfc;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d0c; Value = 0x01236b84; PC = 0x80050b4 *)
mov r8 L0x20019d0c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d1c; Value = 0x00391616; PC = 0x80050b8 *)
mov r9 L0x20019d1c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d2c; Value = 0x01231e1e; PC = 0x80050bc *)
mov r10 L0x20019d2c;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d3c; Value = 0xfec48ccd; PC = 0x80050c0 *)
mov r11 L0x20019d3c;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019cdc; PC = 0x80051b8 *)
mov L0x20019cdc r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019cec; PC = 0x80051bc *)
mov L0x20019cec r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019cfc; PC = 0x80051c0 *)
mov L0x20019cfc r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d0c; PC = 0x80051c4 *)
mov L0x20019d0c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d1c; PC = 0x80051c8 *)
mov L0x20019d1c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d2c; PC = 0x80051cc *)
mov L0x20019d2c r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d3c; PC = 0x80051d0 *)
mov L0x20019d3c r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019ccc; PC = 0x80051d4 *)
mov L0x20019ccc r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019cd0; Value = 0x00340c60; PC = 0x8004f70 *)
mov r4 L0x20019cd0;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019ce0; Value = 0x00a08ec3; PC = 0x8004f74 *)
mov r5 L0x20019ce0;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019cf0; Value = 0xff5199a4; PC = 0x8004f78 *)
mov r6 L0x20019cf0;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d00; Value = 0xfff1ac19; PC = 0x8004f7c *)
mov r7 L0x20019d00;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d10; Value = 0x00a5de6a; PC = 0x8004f80 *)
mov r8 L0x20019d10;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d20; Value = 0x00a9560d; PC = 0x8004f84 *)
mov r9 L0x20019d20;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d30; Value = 0xff8fa232; PC = 0x8004f88 *)
mov r10 L0x20019d30;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d40; Value = 0x000dfde2; PC = 0x8004f8c *)
mov r11 L0x20019d40;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019ce0; PC = 0x8005084 *)
mov L0x20019ce0 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019cf0; PC = 0x8005088 *)
mov L0x20019cf0 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d00; PC = 0x800508c *)
mov L0x20019d00 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d10; PC = 0x8005090 *)
mov L0x20019d10 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d20; PC = 0x8005094 *)
mov L0x20019d20 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d30; PC = 0x8005098 *)
mov L0x20019d30 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d40; PC = 0x800509c *)
mov L0x20019d40 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019cd0; PC = 0x80050a0 *)
mov L0x20019cd0 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019cd4; Value = 0xff337137; PC = 0x80050a4 *)
mov r4 L0x20019cd4;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019ce4; Value = 0xfff46450; PC = 0x80050a8 *)
mov r5 L0x20019ce4;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019cf4; Value = 0xfff20d79; PC = 0x80050ac *)
mov r6 L0x20019cf4;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d04; Value = 0xfe21333e; PC = 0x80050b0 *)
mov r7 L0x20019d04;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d14; Value = 0x00e4b0ae; PC = 0x80050b4 *)
mov r8 L0x20019d14;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d24; Value = 0xffdc2c78; PC = 0x80050b8 *)
mov r9 L0x20019d24;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d34; Value = 0x003da90c; PC = 0x80050bc *)
mov r10 L0x20019d34;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d44; Value = 0xff791a9f; PC = 0x80050c0 *)
mov r11 L0x20019d44;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019ce4; PC = 0x80051b8 *)
mov L0x20019ce4 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019cf4; PC = 0x80051bc *)
mov L0x20019cf4 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d04; PC = 0x80051c0 *)
mov L0x20019d04 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d14; PC = 0x80051c4 *)
mov L0x20019d14 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d24; PC = 0x80051c8 *)
mov L0x20019d24 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019d34; PC = 0x80051cc *)
mov L0x20019d34 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019d44; PC = 0x80051d0 *)
mov L0x20019d44 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019cd4; PC = 0x80051d4 *)
mov L0x20019cd4 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d118; PC = 0x8004f60 *)
mov s4 L0x800d118;
mov s5 L0x800d11c;
mov s6 L0x800d120;
mov s7 L0x800d124;
mov s8 L0x800d128;
mov s9 L0x800d12c;
mov s10 L0x800d130;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019d48; Value = 0xfefe20f8; PC = 0x8004f70 *)
mov r4 L0x20019d48;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019d58; Value = 0x00cf427d; PC = 0x8004f74 *)
mov r5 L0x20019d58;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019d68; Value = 0x00a0b7a1; PC = 0x8004f78 *)
mov r6 L0x20019d68;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d78; Value = 0xffdc96ac; PC = 0x8004f7c *)
mov r7 L0x20019d78;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d88; Value = 0xff17218c; PC = 0x8004f80 *)
mov r8 L0x20019d88;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d98; Value = 0xfed7e3b5; PC = 0x8004f84 *)
mov r9 L0x20019d98;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019da8; Value = 0x00e69366; PC = 0x8004f88 *)
mov r10 L0x20019da8;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019db8; Value = 0x0065b784; PC = 0x8004f8c *)
mov r11 L0x20019db8;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019d58; PC = 0x8005084 *)
mov L0x20019d58 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019d68; PC = 0x8005088 *)
mov L0x20019d68 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d78; PC = 0x800508c *)
mov L0x20019d78 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d88; PC = 0x8005090 *)
mov L0x20019d88 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d98; PC = 0x8005094 *)
mov L0x20019d98 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019da8; PC = 0x8005098 *)
mov L0x20019da8 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019db8; PC = 0x800509c *)
mov L0x20019db8 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019d48; PC = 0x80050a0 *)
mov L0x20019d48 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019d4c; Value = 0xff9d7171; PC = 0x80050a4 *)
mov r4 L0x20019d4c;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019d5c; Value = 0x00409d7f; PC = 0x80050a8 *)
mov r5 L0x20019d5c;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019d6c; Value = 0xff7c6663; PC = 0x80050ac *)
mov r6 L0x20019d6c;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d7c; Value = 0xff6f6982; PC = 0x80050b0 *)
mov r7 L0x20019d7c;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d8c; Value = 0x0072dac3; PC = 0x80050b4 *)
mov r8 L0x20019d8c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d9c; Value = 0xffb1f753; PC = 0x80050b8 *)
mov r9 L0x20019d9c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019dac; Value = 0x016d2556; PC = 0x80050bc *)
mov r10 L0x20019dac;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019dbc; Value = 0x0024d3a5; PC = 0x80050c0 *)
mov r11 L0x20019dbc;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019d5c; PC = 0x80051b8 *)
mov L0x20019d5c r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019d6c; PC = 0x80051bc *)
mov L0x20019d6c r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d7c; PC = 0x80051c0 *)
mov L0x20019d7c r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d8c; PC = 0x80051c4 *)
mov L0x20019d8c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019d9c; PC = 0x80051c8 *)
mov L0x20019d9c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019dac; PC = 0x80051cc *)
mov L0x20019dac r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019dbc; PC = 0x80051d0 *)
mov L0x20019dbc r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019d4c; PC = 0x80051d4 *)
mov L0x20019d4c r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019d50; Value = 0x016534af; PC = 0x8004f70 *)
mov r4 L0x20019d50;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019d60; Value = 0x00c71d84; PC = 0x8004f74 *)
mov r5 L0x20019d60;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019d70; Value = 0xfe8ea7ac; PC = 0x8004f78 *)
mov r6 L0x20019d70;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d80; Value = 0x00bafc5a; PC = 0x8004f7c *)
mov r7 L0x20019d80;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d90; Value = 0xff5b2342; PC = 0x8004f80 *)
mov r8 L0x20019d90;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019da0; Value = 0x02205944; PC = 0x8004f84 *)
mov r9 L0x20019da0;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019db0; Value = 0xff400f75; PC = 0x8004f88 *)
mov r10 L0x20019db0;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019dc0; Value = 0xff9162de; PC = 0x8004f8c *)
mov r11 L0x20019dc0;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019d60; PC = 0x8005084 *)
mov L0x20019d60 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019d70; PC = 0x8005088 *)
mov L0x20019d70 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d80; PC = 0x800508c *)
mov L0x20019d80 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d90; PC = 0x8005090 *)
mov L0x20019d90 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019da0; PC = 0x8005094 *)
mov L0x20019da0 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019db0; PC = 0x8005098 *)
mov L0x20019db0 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019dc0; PC = 0x800509c *)
mov L0x20019dc0 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019d50; PC = 0x80050a0 *)
mov L0x20019d50 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019d54; Value = 0xfe9feeb0; PC = 0x80050a4 *)
mov r4 L0x20019d54;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019d64; Value = 0x010aead9; PC = 0x80050a8 *)
mov r5 L0x20019d64;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019d74; Value = 0xffc93b02; PC = 0x80050ac *)
mov r6 L0x20019d74;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d84; Value = 0x005780c5; PC = 0x80050b0 *)
mov r7 L0x20019d84;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d94; Value = 0x013dff6d; PC = 0x80050b4 *)
mov r8 L0x20019d94;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019da4; Value = 0xff909465; PC = 0x80050b8 *)
mov r9 L0x20019da4;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019db4; Value = 0xffd25c63; PC = 0x80050bc *)
mov r10 L0x20019db4;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019dc4; Value = 0xff0d4165; PC = 0x80050c0 *)
mov r11 L0x20019dc4;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019d64; PC = 0x80051b8 *)
mov L0x20019d64 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019d74; PC = 0x80051bc *)
mov L0x20019d74 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019d84; PC = 0x80051c0 *)
mov L0x20019d84 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019d94; PC = 0x80051c4 *)
mov L0x20019d94 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019da4; PC = 0x80051c8 *)
mov L0x20019da4 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019db4; PC = 0x80051cc *)
mov L0x20019db4 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019dc4; PC = 0x80051d0 *)
mov L0x20019dc4 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019d54; PC = 0x80051d4 *)
mov L0x20019d54 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;
(* vmov	r1, s1                                     #! PC = 0x8004f5c *)
mov r1 s1;
(* vldmia	r1!, {s4-s10}                            #! EA = L0x800d134; PC = 0x8004f60 *)
mov s4 L0x800d134;
mov s5 L0x800d138;
mov s6 L0x800d13c;
mov s7 L0x800d140;
mov s8 L0x800d144;
mov s9 L0x800d148;
mov s10 L0x800d14c;
(* vmov	s1, r1                                     #! PC = 0x8004f64 *)
mov s1 r1;
(* add.w	lr, r0, #16                               #! PC = 0x8004f68 *)
adds discard lr r0 16@uint32;
(* vmov	s3, lr                                     #! PC = 0x8004f6c *)
mov s3 lr;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019dc8; Value = 0xfe193f8c; PC = 0x8004f70 *)
mov r4 L0x20019dc8;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019dd8; Value = 0x02195d01; PC = 0x8004f74 *)
mov r5 L0x20019dd8;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019de8; Value = 0x00d45bf3; PC = 0x8004f78 *)
mov r6 L0x20019de8;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019df8; Value = 0xfe7a232e; PC = 0x8004f7c *)
mov r7 L0x20019df8;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e08; Value = 0x0023ca4e; PC = 0x8004f80 *)
mov r8 L0x20019e08;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e18; Value = 0x00489643; PC = 0x8004f84 *)
mov r9 L0x20019e18;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e28; Value = 0x0027b7aa; PC = 0x8004f88 *)
mov r10 L0x20019e28;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e38; Value = 0xffb8a038; PC = 0x8004f8c *)
mov r11 L0x20019e38;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019dd8; PC = 0x8005084 *)
mov L0x20019dd8 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019de8; PC = 0x8005088 *)
mov L0x20019de8 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019df8; PC = 0x800508c *)
mov L0x20019df8 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e08; PC = 0x8005090 *)
mov L0x20019e08 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e18; PC = 0x8005094 *)
mov L0x20019e18 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e28; PC = 0x8005098 *)
mov L0x20019e28 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e38; PC = 0x800509c *)
mov L0x20019e38 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019dc8; PC = 0x80050a0 *)
mov L0x20019dc8 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019dcc; Value = 0x00628e87; PC = 0x80050a4 *)
mov r4 L0x20019dcc;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019ddc; Value = 0x0192c1b9; PC = 0x80050a8 *)
mov r5 L0x20019ddc;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019dec; Value = 0x004f7c01; PC = 0x80050ac *)
mov r6 L0x20019dec;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019dfc; Value = 0xff4fa08a; PC = 0x80050b0 *)
mov r7 L0x20019dfc;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e0c; Value = 0x006b2395; PC = 0x80050b4 *)
mov r8 L0x20019e0c;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e1c; Value = 0x01125b45; PC = 0x80050b8 *)
mov r9 L0x20019e1c;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e2c; Value = 0x00b1cefa; PC = 0x80050bc *)
mov r10 L0x20019e2c;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e3c; Value = 0x011d950d; PC = 0x80050c0 *)
mov r11 L0x20019e3c;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019ddc; PC = 0x80051b8 *)
mov L0x20019ddc r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019dec; PC = 0x80051bc *)
mov L0x20019dec r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019dfc; PC = 0x80051c0 *)
mov L0x20019dfc r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e0c; PC = 0x80051c4 *)
mov L0x20019e0c r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e1c; PC = 0x80051c8 *)
mov L0x20019e1c r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e2c; PC = 0x80051cc *)
mov L0x20019e2c r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e3c; PC = 0x80051d0 *)
mov L0x20019e3c r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019dcc; PC = 0x80051d4 *)
mov L0x20019dcc r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019dd0; Value = 0x00eddd41; PC = 0x8004f70 *)
mov r4 L0x20019dd0;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019de0; Value = 0x01c1aea6; PC = 0x8004f74 *)
mov r5 L0x20019de0;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019df0; Value = 0xfe88b8da; PC = 0x8004f78 *)
mov r6 L0x20019df0;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019e00; Value = 0x01028806; PC = 0x8004f7c *)
mov r7 L0x20019e00;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e10; Value = 0xffc86610; PC = 0x8004f80 *)
mov r8 L0x20019e10;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e20; Value = 0x00c84638; PC = 0x8004f84 *)
mov r9 L0x20019e20;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e30; Value = 0x00bff08d; PC = 0x8004f88 *)
mov r10 L0x20019e30;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e40; Value = 0x0024a4a6; PC = 0x8004f8c *)
mov r11 L0x20019e40;
(* vmov	r1, s4                                     #! PC = 0x8004f90 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x8004f94 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004f98 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x8004f9c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x8004fa0 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fa4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8004fa8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004fac *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fb0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8004fb4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8004fb8 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fbc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8004fc0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x8004fc4 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x8004fc6 *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x8004fc8 *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x8004fca *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8004fcc *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8004fd0 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8004fd4 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x8004fd8 *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8004fdc *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8004fe0 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004fe4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x8004fe8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8004fec *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8004ff0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8004ff4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x8004ff8 *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8004ffc *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005000 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005004 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005008 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x800500c *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005010 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005014 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x8005016 *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x8005018 *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800501a *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x800501c *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005020 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005024 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x8005028 *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x800502c *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005030 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005034 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x8005038 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x800503c *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005040 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005044 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005048 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x800504c *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005050 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005054 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x8005058 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x800505c *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005060 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005064 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005068 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x800506c *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x800506e *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x8005070 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x8005072 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x8005074 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x8005078 *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x800507c *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x8005080 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019de0; PC = 0x8005084 *)
mov L0x20019de0 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019df0; PC = 0x8005088 *)
mov L0x20019df0 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019e00; PC = 0x800508c *)
mov L0x20019e00 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e10; PC = 0x8005090 *)
mov L0x20019e10 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e20; PC = 0x8005094 *)
mov L0x20019e20 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e30; PC = 0x8005098 *)
mov L0x20019e30 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e40; PC = 0x800509c *)
mov L0x20019e40 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019dd0; PC = 0x80050a0 *)
mov L0x20019dd0 r4;
(* ldr.w	r4, [r0]                                  #! EA = L0x20019dd4; Value = 0xff411d00; PC = 0x80050a4 *)
mov r4 L0x20019dd4;
(* ldr.w	r5, [r0, #16]                             #! EA = L0x20019de4; Value = 0x01ddb4a5; PC = 0x80050a8 *)
mov r5 L0x20019de4;
(* ldr.w	r6, [r0, #32]                             #! EA = L0x20019df4; Value = 0x0036c500; PC = 0x80050ac *)
mov r6 L0x20019df4;
(* ldr.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019e04; Value = 0xff942c0b; PC = 0x80050b0 *)
mov r7 L0x20019e04;
(* ldr.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e14; Value = 0xffeb9403; PC = 0x80050b4 *)
mov r8 L0x20019e14;
(* ldr.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e24; Value = 0x005990c1; PC = 0x80050b8 *)
mov r9 L0x20019e24;
(* ldr.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e34; Value = 0x00437e77; PC = 0x80050bc *)
mov r10 L0x20019e34;
(* ldr.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e44; Value = 0xfee9a527; PC = 0x80050c0 *)
mov r11 L0x20019e44;
(* vmov	r1, s4                                     #! PC = 0x80050c4 *)
mov r1 s4;
(* smull	r12, r8, r8, r1                           #! PC = 0x80050c8 *)
smull r8 r12 r8 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050cc *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r8, lr, r3                           #! PC = 0x80050d0 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r8 tmp_h r8 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r9, r9, r1                           #! PC = 0x80050d4 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050d8 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x80050dc *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r10, r10, r1                         #! PC = 0x80050e0 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050e4 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x80050e8 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x80050ec *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x80050f0 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x80050f4 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r8                                      #! PC = 0x80050f8 *)
adds discard r4 r4 r8;
(* add	r5, r9                                      #! PC = 0x80050fa *)
adds discard r5 r5 r9;
(* add	r6, r10                                     #! PC = 0x80050fc *)
adds discard r6 r6 r10;
(* add	r7, r11                                     #! PC = 0x80050fe *)
adds discard r7 r7 r11;
(* sub.w	r8, r4, r8, lsl #1                        #! PC = 0x8005100 *)
shl tmp r8 1;
subs discard r8 r4 tmp;
(* sub.w	r9, r5, r9, lsl #1                        #! PC = 0x8005104 *)
shl tmp r9 1;
subs discard r9 r5 tmp;
(* sub.w	r10, r6, r10, lsl #1                      #! PC = 0x8005108 *)
shl tmp r10 1;
subs discard r10 r6 tmp;
(* sub.w	r11, r7, r11, lsl #1                      #! PC = 0x800510c *)
shl tmp r11 1;
subs discard r11 r7 tmp;
(* vmov	r1, s5                                     #! PC = 0x8005110 *)
mov r1 s5;
(* smull	r12, r6, r6, r1                           #! PC = 0x8005114 *)
smull r6 r12 r6 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005118 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r6, lr, r3                           #! PC = 0x800511c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r6 tmp_h r6 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005120 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005124 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x8005128 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s6                                     #! PC = 0x800512c *)
mov r1 s6;
(* smull	r12, r10, r10, r1                         #! PC = 0x8005130 *)
smull r10 r12 r10 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005134 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r10, lr, r3                          #! PC = 0x8005138 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r10 tmp_h r10 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* smull	r12, r11, r11, r1                         #! PC = 0x800513c *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005140 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x8005144 *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r6                                      #! PC = 0x8005148 *)
adds discard r4 r4 r6;
(* add	r5, r7                                      #! PC = 0x800514a *)
adds discard r5 r5 r7;
(* add	r8, r10                                     #! PC = 0x800514c *)
adds discard r8 r8 r10;
(* add	r9, r11                                     #! PC = 0x800514e *)
adds discard r9 r9 r11;
(* sub.w	r6, r4, r6, lsl #1                        #! PC = 0x8005150 *)
shl tmp r6 1;
subs discard r6 r4 tmp;
(* sub.w	r7, r5, r7, lsl #1                        #! PC = 0x8005154 *)
shl tmp r7 1;
subs discard r7 r5 tmp;
(* sub.w	r10, r8, r10, lsl #1                      #! PC = 0x8005158 *)
shl tmp r10 1;
subs discard r10 r8 tmp;
(* sub.w	r11, r9, r11, lsl #1                      #! PC = 0x800515c *)
shl tmp r11 1;
subs discard r11 r9 tmp;
(* vmov	r1, s7                                     #! PC = 0x8005160 *)
mov r1 s7;
(* smull	r12, r5, r5, r1                           #! PC = 0x8005164 *)
smull r5 r12 r5 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005168 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r5, lr, r3                           #! PC = 0x800516c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r5 tmp_h r5 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s8                                     #! PC = 0x8005170 *)
mov r1 s8;
(* smull	r12, r7, r7, r1                           #! PC = 0x8005174 *)
smull r7 r12 r7 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005178 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r7, lr, r3                           #! PC = 0x800517c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r7 tmp_h r7 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s9                                     #! PC = 0x8005180 *)
mov r1 s9;
(* smull	r12, r9, r9, r1                           #! PC = 0x8005184 *)
smull r9 r12 r9 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005188 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r9, lr, r3                           #! PC = 0x800518c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r9 tmp_h r9 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* vmov	r1, s10                                    #! PC = 0x8005190 *)
mov r1 s10;
(* smull	r12, r11, r11, r1                         #! PC = 0x8005194 *)
smull r11 r12 r11 r1;
(* mul.w	lr, r12, r2                               #! PC = 0x8005198 *)
cast r12_s@sint32 r12;
mull discard lr r12_s r2;
(* smlal	r12, r11, lr, r3                          #! PC = 0x800519c *)
cast lr@sint32 lr;
smull tmp_h tmp_l lr r3;
uadds carry r12 tmp_l r12;
sadc r11 tmp_h r11 carry;
assert eqmod r12 0 (2**32) && true;
assume eq r12 0 && true;
(* add	r4, r5                                      #! PC = 0x80051a0 *)
adds discard r4 r4 r5;
(* add	r6, r7                                      #! PC = 0x80051a2 *)
adds discard r6 r6 r7;
(* add	r8, r9                                      #! PC = 0x80051a4 *)
adds discard r8 r8 r9;
(* add	r10, r11                                    #! PC = 0x80051a6 *)
adds discard r10 r10 r11;
(* sub.w	r5, r4, r5, lsl #1                        #! PC = 0x80051a8 *)
shl tmp r5 1;
subs discard r5 r4 tmp;
(* sub.w	r7, r6, r7, lsl #1                        #! PC = 0x80051ac *)
shl tmp r7 1;
subs discard r7 r6 tmp;
(* sub.w	r9, r8, r9, lsl #1                        #! PC = 0x80051b0 *)
shl tmp r9 1;
subs discard r9 r8 tmp;
(* sub.w	r11, r10, r11, lsl #1                     #! PC = 0x80051b4 *)
shl tmp r11 1;
subs discard r11 r10 tmp;
(* str.w	r5, [r0, #16]                             #! EA = L0x20019de4; PC = 0x80051b8 *)
mov L0x20019de4 r5;
(* str.w	r6, [r0, #32]                             #! EA = L0x20019df4; PC = 0x80051bc *)
mov L0x20019df4 r6;
(* str.w	r7, [r0, #48]	; 0x30                      #! EA = L0x20019e04; PC = 0x80051c0 *)
mov L0x20019e04 r7;
(* str.w	r8, [r0, #64]	; 0x40                      #! EA = L0x20019e14; PC = 0x80051c4 *)
mov L0x20019e14 r8;
(* str.w	r9, [r0, #80]	; 0x50                      #! EA = L0x20019e24; PC = 0x80051c8 *)
mov L0x20019e24 r9;
(* str.w	r10, [r0, #96]	; 0x60                     #! EA = L0x20019e34; PC = 0x80051cc *)
mov L0x20019e34 r10;
(* str.w	r11, [r0, #112]	; 0x70                    #! EA = L0x20019e44; PC = 0x80051d0 *)
mov L0x20019e44 r11;
(* str.w	r4, [r0], #4                              #! EA = L0x20019dd4; PC = 0x80051d4 *)
mov L0x20019dd4 r4;
(* vmov	lr, s3                                     #! PC = 0x80051d8 *)
mov lr s3;
(* add.w	r0, r0, #112	; 0x70                       #! PC = 0x80051e4 *)
adds discard r0 r0 112@uint32;
(* vmov	r12, s2                                    #! PC = 0x80051e8 *)
mov r12 s2;


(* === layer 4_5_6 === *)
{
  (* algebraic *)
  and [
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a48 * (x**0) + L0x20019a4c * (x**1) + 
            L0x20019a50 * (x**2) + L0x20019a54 * (x**3)
          )
          [25166081, x**4 - 9849271],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a58 * (x**0) + L0x20019a5c * (x**1) + 
            L0x20019a60 * (x**2) + L0x20019a64 * (x**3)
          )
          [25166081, x**4 - 15316810],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a68 * (x**0) + L0x20019a6c * (x**1) + 
            L0x20019a70 * (x**2) + L0x20019a74 * (x**3)
          )
          [25166081, x**4 - 3773600],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a78 * (x**0) + L0x20019a7c * (x**1) + 
            L0x20019a80 * (x**2) + L0x20019a84 * (x**3)
          )
          [25166081, x**4 - 21392481],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a88 * (x**0) + L0x20019a8c * (x**1) + 
            L0x20019a90 * (x**2) + L0x20019a94 * (x**3)
          )
          [25166081, x**4 - 21715468],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019a98 * (x**0) + L0x20019a9c * (x**1) + 
            L0x20019aa0 * (x**2) + L0x20019aa4 * (x**3)
          )
          [25166081, x**4 - 3450613],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019aa8 * (x**0) + L0x20019aac * (x**1) + 
            L0x20019ab0 * (x**2) + L0x20019ab4 * (x**3)
          )
          [25166081, x**4 - 22783829],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ab8 * (x**0) + L0x20019abc * (x**1) + 
            L0x20019ac0 * (x**2) + L0x20019ac4 * (x**3)
          )
          [25166081, x**4 - 2382252],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ac8 * (x**0) + L0x20019acc * (x**1) + 
            L0x20019ad0 * (x**2) + L0x20019ad4 * (x**3)
          )
          [25166081, x**4 - 22990379],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ad8 * (x**0) + L0x20019adc * (x**1) + 
            L0x20019ae0 * (x**2) + L0x20019ae4 * (x**3)
          )
          [25166081, x**4 - 2175702],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ae8 * (x**0) + L0x20019aec * (x**1) + 
            L0x20019af0 * (x**2) + L0x20019af4 * (x**3)
          )
          [25166081, x**4 - 20348569],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019af8 * (x**0) + L0x20019afc * (x**1) + 
            L0x20019b00 * (x**2) + L0x20019b04 * (x**3)
          )
          [25166081, x**4 - 4817512],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b08 * (x**0) + L0x20019b0c * (x**1) + 
            L0x20019b10 * (x**2) + L0x20019b14 * (x**3)
          )
          [25166081, x**4 - 11666526],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b18 * (x**0) + L0x20019b1c * (x**1) + 
            L0x20019b20 * (x**2) + L0x20019b24 * (x**3)
          )
          [25166081, x**4 - 13499555],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b28 * (x**0) + L0x20019b2c * (x**1) + 
            L0x20019b30 * (x**2) + L0x20019b34 * (x**3)
          )
          [25166081, x**4 - 91549],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b38 * (x**0) + L0x20019b3c * (x**1) + 
            L0x20019b40 * (x**2) + L0x20019b44 * (x**3)
          )
          [25166081, x**4 - 25074532],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b48 * (x**0) + L0x20019b4c * (x**1) + 
            L0x20019b50 * (x**2) + L0x20019b54 * (x**3)
          )
          [25166081, x**4 - 13586079],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b58 * (x**0) + L0x20019b5c * (x**1) + 
            L0x20019b60 * (x**2) + L0x20019b64 * (x**3)
          )
          [25166081, x**4 - 11580002],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b68 * (x**0) + L0x20019b6c * (x**1) + 
            L0x20019b70 * (x**2) + L0x20019b74 * (x**3)
          )
          [25166081, x**4 - 13600017],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b78 * (x**0) + L0x20019b7c * (x**1) + 
            L0x20019b80 * (x**2) + L0x20019b84 * (x**3)
          )
          [25166081, x**4 - 11566064],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b88 * (x**0) + L0x20019b8c * (x**1) + 
            L0x20019b90 * (x**2) + L0x20019b94 * (x**3)
          )
          [25166081, x**4 - 7063743],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019b98 * (x**0) + L0x20019b9c * (x**1) + 
            L0x20019ba0 * (x**2) + L0x20019ba4 * (x**3)
          )
          [25166081, x**4 - 18102338],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ba8 * (x**0) + L0x20019bac * (x**1) + 
            L0x20019bb0 * (x**2) + L0x20019bb4 * (x**3)
          )
          [25166081, x**4 - 14966334],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019bb8 * (x**0) + L0x20019bbc * (x**1) + 
            L0x20019bc0 * (x**2) + L0x20019bc4 * (x**3)
          )
          [25166081, x**4 - 10199747],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019bc8 * (x**0) + L0x20019bcc * (x**1) + 
            L0x20019bd0 * (x**2) + L0x20019bd4 * (x**3)
          )
          [25166081, x**4 - 6767963],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019bd8 * (x**0) + L0x20019bdc * (x**1) + 
            L0x20019be0 * (x**2) + L0x20019be4 * (x**3)
          )
          [25166081, x**4 - 18398118],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019be8 * (x**0) + L0x20019bec * (x**1) + 
            L0x20019bf0 * (x**2) + L0x20019bf4 * (x**3)
          )
          [25166081, x**4 - 6836706],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019bf8 * (x**0) + L0x20019bfc * (x**1) + 
            L0x20019c00 * (x**2) + L0x20019c04 * (x**3)
          )
          [25166081, x**4 - 18329375],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c08 * (x**0) + L0x20019c0c * (x**1) + 
            L0x20019c10 * (x**2) + L0x20019c14 * (x**3)
          )
          [25166081, x**4 - 2376375],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c18 * (x**0) + L0x20019c1c * (x**1) + 
            L0x20019c20 * (x**2) + L0x20019c24 * (x**3)
          )
          [25166081, x**4 - 22789706],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c28 * (x**0) + L0x20019c2c * (x**1) + 
            L0x20019c30 * (x**2) + L0x20019c34 * (x**3)
          )
          [25166081, x**4 - 17372579],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c38 * (x**0) + L0x20019c3c * (x**1) + 
            L0x20019c40 * (x**2) + L0x20019c44 * (x**3)
          )
          [25166081, x**4 - 7793502],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c48 * (x**0) + L0x20019c4c * (x**1) + 
            L0x20019c50 * (x**2) + L0x20019c54 * (x**3)
          )
          [25166081, x**4 - 11257497],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c58 * (x**0) + L0x20019c5c * (x**1) + 
            L0x20019c60 * (x**2) + L0x20019c64 * (x**3)
          )
          [25166081, x**4 - 13908584],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c68 * (x**0) + L0x20019c6c * (x**1) + 
            L0x20019c70 * (x**2) + L0x20019c74 * (x**3)
          )
          [25166081, x**4 - 3205585],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c78 * (x**0) + L0x20019c7c * (x**1) + 
            L0x20019c80 * (x**2) + L0x20019c84 * (x**3)
          )
          [25166081, x**4 - 21960496],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c88 * (x**0) + L0x20019c8c * (x**1) + 
            L0x20019c90 * (x**2) + L0x20019c94 * (x**3)
          )
          [25166081, x**4 - 13138404],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019c98 * (x**0) + L0x20019c9c * (x**1) + 
            L0x20019ca0 * (x**2) + L0x20019ca4 * (x**3)
          )
          [25166081, x**4 - 12027677],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ca8 * (x**0) + L0x20019cac * (x**1) + 
            L0x20019cb0 * (x**2) + L0x20019cb4 * (x**3)
          )
          [25166081, x**4 - 13052373],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019cb8 * (x**0) + L0x20019cbc * (x**1) + 
            L0x20019cc0 * (x**2) + L0x20019cc4 * (x**3)
          )
          [25166081, x**4 - 12113708],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019cc8 * (x**0) + L0x20019ccc * (x**1) + 
            L0x20019cd0 * (x**2) + L0x20019cd4 * (x**3)
          )
          [25166081, x**4 - 19474337],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019cd8 * (x**0) + L0x20019cdc * (x**1) + 
            L0x20019ce0 * (x**2) + L0x20019ce4 * (x**3)
          )
          [25166081, x**4 - 5691744],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019ce8 * (x**0) + L0x20019cec * (x**1) + 
            L0x20019cf0 * (x**2) + L0x20019cf4 * (x**3)
          )
          [25166081, x**4 - 12583566],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019cf8 * (x**0) + L0x20019cfc * (x**1) + 
            L0x20019d00 * (x**2) + L0x20019d04 * (x**3)
          )
          [25166081, x**4 - 12582515],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d08 * (x**0) + L0x20019d0c * (x**1) + 
            L0x20019d10 * (x**2) + L0x20019d14 * (x**3)
          )
          [25166081, x**4 - 4283752],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d18 * (x**0) + L0x20019d1c * (x**1) + 
            L0x20019d20 * (x**2) + L0x20019d24 * (x**3)
          )
          [25166081, x**4 - 20882329],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d28 * (x**0) + L0x20019d2c * (x**1) + 
            L0x20019d30 * (x**2) + L0x20019d34 * (x**3)
          )
          [25166081, x**4 - 18295001],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d38 * (x**0) + L0x20019d3c * (x**1) + 
            L0x20019d40 * (x**2) + L0x20019d44 * (x**3)
          )
          [25166081, x**4 - 6871080],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d48 * (x**0) + L0x20019d4c * (x**1) + 
            L0x20019d50 * (x**2) + L0x20019d54 * (x**3)
          )
          [25166081, x**4 - 7038058],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d58 * (x**0) + L0x20019d5c * (x**1) + 
            L0x20019d60 * (x**2) + L0x20019d64 * (x**3)
          )
          [25166081, x**4 - 18128023],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d68 * (x**0) + L0x20019d6c * (x**1) + 
            L0x20019d70 * (x**2) + L0x20019d74 * (x**3)
          )
          [25166081, x**4 - 18026180],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d78 * (x**0) + L0x20019d7c * (x**1) + 
            L0x20019d80 * (x**2) + L0x20019d84 * (x**3)
          )
          [25166081, x**4 - 7139901],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d88 * (x**0) + L0x20019d8c * (x**1) + 
            L0x20019d90 * (x**2) + L0x20019d94 * (x**3)
          )
          [25166081, x**4 - 14761830],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019d98 * (x**0) + L0x20019d9c * (x**1) + 
            L0x20019da0 * (x**2) + L0x20019da4 * (x**3)
          )
          [25166081, x**4 - 10404251],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019da8 * (x**0) + L0x20019dac * (x**1) + 
            L0x20019db0 * (x**2) + L0x20019db4 * (x**3)
          )
          [25166081, x**4 - 21664729],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019db8 * (x**0) + L0x20019dbc * (x**1) + 
            L0x20019dc0 * (x**2) + L0x20019dc4 * (x**3)
          )
          [25166081, x**4 - 3501352],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019dc8 * (x**0) + L0x20019dcc * (x**1) + 
            L0x20019dd0 * (x**2) + L0x20019dd4 * (x**3)
          )
          [25166081, x**4 - 8242393],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019dd8 * (x**0) + L0x20019ddc * (x**1) + 
            L0x20019de0 * (x**2) + L0x20019de4 * (x**3)
          )
          [25166081, x**4 - 16923688],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019de8 * (x**0) + L0x20019dec * (x**1) + 
            L0x20019df0 * (x**2) + L0x20019df4 * (x**3)
          )
          [25166081, x**4 - 9868967],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019df8 * (x**0) + L0x20019dfc * (x**1) + 
            L0x20019e00 * (x**2) + L0x20019e04 * (x**3)
          )
          [25166081, x**4 - 15297114],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019e08 * (x**0) + L0x20019e0c * (x**1) + 
            L0x20019e10 * (x**2) + L0x20019e14 * (x**3)
          )
          [25166081, x**4 - 18216472],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019e18 * (x**0) + L0x20019e1c * (x**1) + 
            L0x20019e20 * (x**2) + L0x20019e24 * (x**3)
          )
          [25166081, x**4 - 6949609],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019e28 * (x**0) + L0x20019e2c * (x**1) + 
            L0x20019e30 * (x**2) + L0x20019e34 * (x**3)
          )
          [25166081, x**4 - 2603275],
    eqmod (inp_poly * inp_poly)
          (
            L0x20019e38 * (x**0) + L0x20019e3c * (x**1) + 
            L0x20019e40 * (x**2) + L0x20019e44 * (x**3)
          )
          [25166081, x**4 - 22562806]
  ]
  &&
  (* range *)
  and [
    7@32 * (-25166081)@32 <=s L0x20019a48, L0x20019a48 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a4c, L0x20019a4c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a50, L0x20019a50 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a54, L0x20019a54 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a58, L0x20019a58 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a5c, L0x20019a5c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a60, L0x20019a60 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a64, L0x20019a64 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a68, L0x20019a68 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a6c, L0x20019a6c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a70, L0x20019a70 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a74, L0x20019a74 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a78, L0x20019a78 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a7c, L0x20019a7c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a80, L0x20019a80 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a84, L0x20019a84 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a88, L0x20019a88 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a8c, L0x20019a8c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a90, L0x20019a90 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a94, L0x20019a94 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a98, L0x20019a98 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019a9c, L0x20019a9c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019aa0, L0x20019aa0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019aa4, L0x20019aa4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019aa8, L0x20019aa8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019aac, L0x20019aac <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ab0, L0x20019ab0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ab4, L0x20019ab4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ab8, L0x20019ab8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019abc, L0x20019abc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ac0, L0x20019ac0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ac4, L0x20019ac4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ac8, L0x20019ac8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019acc, L0x20019acc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ad0, L0x20019ad0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ad4, L0x20019ad4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ad8, L0x20019ad8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019adc, L0x20019adc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ae0, L0x20019ae0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ae4, L0x20019ae4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ae8, L0x20019ae8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019aec, L0x20019aec <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019af0, L0x20019af0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019af4, L0x20019af4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019af8, L0x20019af8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019afc, L0x20019afc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b00, L0x20019b00 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b04, L0x20019b04 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b08, L0x20019b08 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b0c, L0x20019b0c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b10, L0x20019b10 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b14, L0x20019b14 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b18, L0x20019b18 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b1c, L0x20019b1c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b20, L0x20019b20 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b24, L0x20019b24 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b28, L0x20019b28 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b2c, L0x20019b2c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b30, L0x20019b30 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b34, L0x20019b34 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b38, L0x20019b38 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b3c, L0x20019b3c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b40, L0x20019b40 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b44, L0x20019b44 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b48, L0x20019b48 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b4c, L0x20019b4c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b50, L0x20019b50 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b54, L0x20019b54 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b58, L0x20019b58 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b5c, L0x20019b5c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b60, L0x20019b60 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b64, L0x20019b64 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b68, L0x20019b68 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b6c, L0x20019b6c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b70, L0x20019b70 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b74, L0x20019b74 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b78, L0x20019b78 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b7c, L0x20019b7c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b80, L0x20019b80 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b84, L0x20019b84 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b88, L0x20019b88 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b8c, L0x20019b8c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b90, L0x20019b90 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b94, L0x20019b94 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b98, L0x20019b98 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019b9c, L0x20019b9c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ba0, L0x20019ba0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ba4, L0x20019ba4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ba8, L0x20019ba8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bac, L0x20019bac <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bb0, L0x20019bb0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bb4, L0x20019bb4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bb8, L0x20019bb8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bbc, L0x20019bbc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bc0, L0x20019bc0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bc4, L0x20019bc4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bc8, L0x20019bc8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bcc, L0x20019bcc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bd0, L0x20019bd0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bd4, L0x20019bd4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bd8, L0x20019bd8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bdc, L0x20019bdc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019be0, L0x20019be0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019be4, L0x20019be4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019be8, L0x20019be8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bec, L0x20019bec <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bf0, L0x20019bf0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bf4, L0x20019bf4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bf8, L0x20019bf8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019bfc, L0x20019bfc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c00, L0x20019c00 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c04, L0x20019c04 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c08, L0x20019c08 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c0c, L0x20019c0c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c10, L0x20019c10 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c14, L0x20019c14 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c18, L0x20019c18 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c1c, L0x20019c1c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c20, L0x20019c20 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c24, L0x20019c24 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c28, L0x20019c28 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c2c, L0x20019c2c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c30, L0x20019c30 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c34, L0x20019c34 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c38, L0x20019c38 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c3c, L0x20019c3c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c40, L0x20019c40 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c44, L0x20019c44 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c48, L0x20019c48 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c4c, L0x20019c4c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c50, L0x20019c50 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c54, L0x20019c54 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c58, L0x20019c58 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c5c, L0x20019c5c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c60, L0x20019c60 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c64, L0x20019c64 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c68, L0x20019c68 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c6c, L0x20019c6c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c70, L0x20019c70 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c74, L0x20019c74 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c78, L0x20019c78 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c7c, L0x20019c7c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c80, L0x20019c80 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c84, L0x20019c84 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c88, L0x20019c88 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c8c, L0x20019c8c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c90, L0x20019c90 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c94, L0x20019c94 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c98, L0x20019c98 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019c9c, L0x20019c9c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ca0, L0x20019ca0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ca4, L0x20019ca4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ca8, L0x20019ca8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cac, L0x20019cac <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cb0, L0x20019cb0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cb4, L0x20019cb4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cb8, L0x20019cb8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cbc, L0x20019cbc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cc0, L0x20019cc0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cc4, L0x20019cc4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cc8, L0x20019cc8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ccc, L0x20019ccc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cd0, L0x20019cd0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cd4, L0x20019cd4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cd8, L0x20019cd8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cdc, L0x20019cdc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ce0, L0x20019ce0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ce4, L0x20019ce4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ce8, L0x20019ce8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cec, L0x20019cec <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cf0, L0x20019cf0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cf4, L0x20019cf4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cf8, L0x20019cf8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019cfc, L0x20019cfc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d00, L0x20019d00 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d04, L0x20019d04 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d08, L0x20019d08 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d0c, L0x20019d0c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d10, L0x20019d10 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d14, L0x20019d14 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d18, L0x20019d18 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d1c, L0x20019d1c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d20, L0x20019d20 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d24, L0x20019d24 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d28, L0x20019d28 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d2c, L0x20019d2c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d30, L0x20019d30 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d34, L0x20019d34 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d38, L0x20019d38 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d3c, L0x20019d3c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d40, L0x20019d40 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d44, L0x20019d44 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d48, L0x20019d48 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d4c, L0x20019d4c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d50, L0x20019d50 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d54, L0x20019d54 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d58, L0x20019d58 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d5c, L0x20019d5c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d60, L0x20019d60 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d64, L0x20019d64 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d68, L0x20019d68 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d6c, L0x20019d6c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d70, L0x20019d70 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d74, L0x20019d74 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d78, L0x20019d78 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d7c, L0x20019d7c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d80, L0x20019d80 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d84, L0x20019d84 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d88, L0x20019d88 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d8c, L0x20019d8c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d90, L0x20019d90 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d94, L0x20019d94 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d98, L0x20019d98 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019d9c, L0x20019d9c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019da0, L0x20019da0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019da4, L0x20019da4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019da8, L0x20019da8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dac, L0x20019dac <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019db0, L0x20019db0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019db4, L0x20019db4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019db8, L0x20019db8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dbc, L0x20019dbc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dc0, L0x20019dc0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dc4, L0x20019dc4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dc8, L0x20019dc8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dcc, L0x20019dcc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dd0, L0x20019dd0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dd4, L0x20019dd4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dd8, L0x20019dd8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019ddc, L0x20019ddc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019de0, L0x20019de0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019de4, L0x20019de4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019de8, L0x20019de8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dec, L0x20019dec <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019df0, L0x20019df0 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019df4, L0x20019df4 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019df8, L0x20019df8 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019dfc, L0x20019dfc <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e00, L0x20019e00 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e04, L0x20019e04 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e08, L0x20019e08 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e0c, L0x20019e0c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e10, L0x20019e10 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e14, L0x20019e14 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e18, L0x20019e18 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e1c, L0x20019e1c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e20, L0x20019e20 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e24, L0x20019e24 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e28, L0x20019e28 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e2c, L0x20019e2c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e30, L0x20019e30 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e34, L0x20019e34 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e38, L0x20019e38 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e3c, L0x20019e3c <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e40, L0x20019e40 <s 7@32 * 25166081@32,
    7@32 * (-25166081)@32 <=s L0x20019e44, L0x20019e44 <s 7@32 * 25166081@32
  ]
}


