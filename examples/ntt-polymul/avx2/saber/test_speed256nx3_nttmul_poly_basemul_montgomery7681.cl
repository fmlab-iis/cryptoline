(*
frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint test_speed256nx3_nttmul_poly_basemul_montgomery7681.cl
Parsing Cryptoline file:                [OK]            0.036435 seconds
Checking well-formedness:               [OK]            0.028773 seconds
Transforming to SSA form:               [OK]            0.007746 seconds
Normalizing specification:              [OK]            0.000119 seconds
Rewriting assignments:                  [OK]            0.006094 seconds
Verifying program safety:               [OK]            20.874697 seconds
Verifying range assertions:             [OK]            19.100239 seconds
Verifying range specification:          [OK]            25.387597 seconds
Rewriting value-preserved casting:      [OK]            0.000226 seconds
Verifying algebraic assertions:         [OK]            0.005369 seconds
Verifying algebraic specification:      [OK]            16.537004 seconds
Verification result:                    [OK]            81.989817 seconds
*)

proc main(

in1_000@sint16, in1_001@sint16, in1_002@sint16, in1_003@sint16, in1_004@sint16, in1_005@sint16, in1_006@sint16, in1_007@sint16, in1_008@sint16, in1_009@sint16, in1_010@sint16, in1_011@sint16, in1_012@sint16, in1_013@sint16, in1_014@sint16, in1_015@sint16, in1_016@sint16, in1_017@sint16, in1_018@sint16, in1_019@sint16, in1_020@sint16, in1_021@sint16, in1_022@sint16, in1_023@sint16, in1_024@sint16, in1_025@sint16, in1_026@sint16, in1_027@sint16, in1_028@sint16, in1_029@sint16, in1_030@sint16, in1_031@sint16, in1_032@sint16, in1_033@sint16, in1_034@sint16, in1_035@sint16, in1_036@sint16, in1_037@sint16, in1_038@sint16, in1_039@sint16, in1_040@sint16, in1_041@sint16, in1_042@sint16, in1_043@sint16, in1_044@sint16, in1_045@sint16, in1_046@sint16, in1_047@sint16, in1_048@sint16, in1_049@sint16, in1_050@sint16, in1_051@sint16, in1_052@sint16, in1_053@sint16, in1_054@sint16, in1_055@sint16, in1_056@sint16, in1_057@sint16, in1_058@sint16, in1_059@sint16, in1_060@sint16, in1_061@sint16, in1_062@sint16, in1_063@sint16, in1_064@sint16, in1_065@sint16, in1_066@sint16, in1_067@sint16, in1_068@sint16, in1_069@sint16, in1_070@sint16, in1_071@sint16, in1_072@sint16, in1_073@sint16, in1_074@sint16, in1_075@sint16, in1_076@sint16, in1_077@sint16, in1_078@sint16, in1_079@sint16, in1_080@sint16, in1_081@sint16, in1_082@sint16, in1_083@sint16, in1_084@sint16, in1_085@sint16, in1_086@sint16, in1_087@sint16, in1_088@sint16, in1_089@sint16, in1_090@sint16, in1_091@sint16, in1_092@sint16, in1_093@sint16, in1_094@sint16, in1_095@sint16, in1_096@sint16, in1_097@sint16, in1_098@sint16, in1_099@sint16, in1_100@sint16, in1_101@sint16, in1_102@sint16, in1_103@sint16, in1_104@sint16, in1_105@sint16, in1_106@sint16, in1_107@sint16, in1_108@sint16, in1_109@sint16, in1_110@sint16, in1_111@sint16, in1_112@sint16, in1_113@sint16, in1_114@sint16, in1_115@sint16, in1_116@sint16, in1_117@sint16, in1_118@sint16, in1_119@sint16, in1_120@sint16, in1_121@sint16, in1_122@sint16, in1_123@sint16, in1_124@sint16, in1_125@sint16, in1_126@sint16, in1_127@sint16, in1_128@sint16, in1_129@sint16, in1_130@sint16, in1_131@sint16, in1_132@sint16, in1_133@sint16, in1_134@sint16, in1_135@sint16, in1_136@sint16, in1_137@sint16, in1_138@sint16, in1_139@sint16, in1_140@sint16, in1_141@sint16, in1_142@sint16, in1_143@sint16, in1_144@sint16, in1_145@sint16, in1_146@sint16, in1_147@sint16, in1_148@sint16, in1_149@sint16, in1_150@sint16, in1_151@sint16, in1_152@sint16, in1_153@sint16, in1_154@sint16, in1_155@sint16, in1_156@sint16, in1_157@sint16, in1_158@sint16, in1_159@sint16, in1_160@sint16, in1_161@sint16, in1_162@sint16, in1_163@sint16, in1_164@sint16, in1_165@sint16, in1_166@sint16, in1_167@sint16, in1_168@sint16, in1_169@sint16, in1_170@sint16, in1_171@sint16, in1_172@sint16, in1_173@sint16, in1_174@sint16, in1_175@sint16, in1_176@sint16, in1_177@sint16, in1_178@sint16, in1_179@sint16, in1_180@sint16, in1_181@sint16, in1_182@sint16, in1_183@sint16, in1_184@sint16, in1_185@sint16, in1_186@sint16, in1_187@sint16, in1_188@sint16, in1_189@sint16, in1_190@sint16, in1_191@sint16, in1_192@sint16, in1_193@sint16, in1_194@sint16, in1_195@sint16, in1_196@sint16, in1_197@sint16, in1_198@sint16, in1_199@sint16, in1_200@sint16, in1_201@sint16, in1_202@sint16, in1_203@sint16, in1_204@sint16, in1_205@sint16, in1_206@sint16, in1_207@sint16, in1_208@sint16, in1_209@sint16, in1_210@sint16, in1_211@sint16, in1_212@sint16, in1_213@sint16, in1_214@sint16, in1_215@sint16, in1_216@sint16, in1_217@sint16, in1_218@sint16, in1_219@sint16, in1_220@sint16, in1_221@sint16, in1_222@sint16, in1_223@sint16, in1_224@sint16, in1_225@sint16, in1_226@sint16, in1_227@sint16, in1_228@sint16, in1_229@sint16, in1_230@sint16, in1_231@sint16, in1_232@sint16, in1_233@sint16, in1_234@sint16, in1_235@sint16, in1_236@sint16, in1_237@sint16, in1_238@sint16, in1_239@sint16, in1_240@sint16, in1_241@sint16, in1_242@sint16, in1_243@sint16, in1_244@sint16, in1_245@sint16, in1_246@sint16, in1_247@sint16, in1_248@sint16, in1_249@sint16, in1_250@sint16, in1_251@sint16, in1_252@sint16, in1_253@sint16, in1_254@sint16, in1_255@sint16, in2_000@sint16, in2_001@sint16, in2_002@sint16, in2_003@sint16, in2_004@sint16, in2_005@sint16, in2_006@sint16, in2_007@sint16, in2_008@sint16, in2_009@sint16, in2_010@sint16, in2_011@sint16, in2_012@sint16, in2_013@sint16, in2_014@sint16, in2_015@sint16, in2_016@sint16, in2_017@sint16, in2_018@sint16, in2_019@sint16, in2_020@sint16, in2_021@sint16, in2_022@sint16, in2_023@sint16, in2_024@sint16, in2_025@sint16, in2_026@sint16, in2_027@sint16, in2_028@sint16, in2_029@sint16, in2_030@sint16, in2_031@sint16, in2_032@sint16, in2_033@sint16, in2_034@sint16, in2_035@sint16, in2_036@sint16, in2_037@sint16, in2_038@sint16, in2_039@sint16, in2_040@sint16, in2_041@sint16, in2_042@sint16, in2_043@sint16, in2_044@sint16, in2_045@sint16, in2_046@sint16, in2_047@sint16, in2_048@sint16, in2_049@sint16, in2_050@sint16, in2_051@sint16, in2_052@sint16, in2_053@sint16, in2_054@sint16, in2_055@sint16, in2_056@sint16, in2_057@sint16, in2_058@sint16, in2_059@sint16, in2_060@sint16, in2_061@sint16, in2_062@sint16, in2_063@sint16, in2_064@sint16, in2_065@sint16, in2_066@sint16, in2_067@sint16, in2_068@sint16, in2_069@sint16, in2_070@sint16, in2_071@sint16, in2_072@sint16, in2_073@sint16, in2_074@sint16, in2_075@sint16, in2_076@sint16, in2_077@sint16, in2_078@sint16, in2_079@sint16, in2_080@sint16, in2_081@sint16, in2_082@sint16, in2_083@sint16, in2_084@sint16, in2_085@sint16, in2_086@sint16, in2_087@sint16, in2_088@sint16, in2_089@sint16, in2_090@sint16, in2_091@sint16, in2_092@sint16, in2_093@sint16, in2_094@sint16, in2_095@sint16, in2_096@sint16, in2_097@sint16, in2_098@sint16, in2_099@sint16, in2_100@sint16, in2_101@sint16, in2_102@sint16, in2_103@sint16, in2_104@sint16, in2_105@sint16, in2_106@sint16, in2_107@sint16, in2_108@sint16, in2_109@sint16, in2_110@sint16, in2_111@sint16, in2_112@sint16, in2_113@sint16, in2_114@sint16, in2_115@sint16, in2_116@sint16, in2_117@sint16, in2_118@sint16, in2_119@sint16, in2_120@sint16, in2_121@sint16, in2_122@sint16, in2_123@sint16, in2_124@sint16, in2_125@sint16, in2_126@sint16, in2_127@sint16, in2_128@sint16, in2_129@sint16, in2_130@sint16, in2_131@sint16, in2_132@sint16, in2_133@sint16, in2_134@sint16, in2_135@sint16, in2_136@sint16, in2_137@sint16, in2_138@sint16, in2_139@sint16, in2_140@sint16, in2_141@sint16, in2_142@sint16, in2_143@sint16, in2_144@sint16, in2_145@sint16, in2_146@sint16, in2_147@sint16, in2_148@sint16, in2_149@sint16, in2_150@sint16, in2_151@sint16, in2_152@sint16, in2_153@sint16, in2_154@sint16, in2_155@sint16, in2_156@sint16, in2_157@sint16, in2_158@sint16, in2_159@sint16, in2_160@sint16, in2_161@sint16, in2_162@sint16, in2_163@sint16, in2_164@sint16, in2_165@sint16, in2_166@sint16, in2_167@sint16, in2_168@sint16, in2_169@sint16, in2_170@sint16, in2_171@sint16, in2_172@sint16, in2_173@sint16, in2_174@sint16, in2_175@sint16, in2_176@sint16, in2_177@sint16, in2_178@sint16, in2_179@sint16, in2_180@sint16, in2_181@sint16, in2_182@sint16, in2_183@sint16, in2_184@sint16, in2_185@sint16, in2_186@sint16, in2_187@sint16, in2_188@sint16, in2_189@sint16, in2_190@sint16, in2_191@sint16, in2_192@sint16, in2_193@sint16, in2_194@sint16, in2_195@sint16, in2_196@sint16, in2_197@sint16, in2_198@sint16, in2_199@sint16, in2_200@sint16, in2_201@sint16, in2_202@sint16, in2_203@sint16, in2_204@sint16, in2_205@sint16, in2_206@sint16, in2_207@sint16, in2_208@sint16, in2_209@sint16, in2_210@sint16, in2_211@sint16, in2_212@sint16, in2_213@sint16, in2_214@sint16, in2_215@sint16, in2_216@sint16, in2_217@sint16, in2_218@sint16, in2_219@sint16, in2_220@sint16, in2_221@sint16, in2_222@sint16, in2_223@sint16, in2_224@sint16, in2_225@sint16, in2_226@sint16, in2_227@sint16, in2_228@sint16, in2_229@sint16, in2_230@sint16, in2_231@sint16, in2_232@sint16, in2_233@sint16, in2_234@sint16, in2_235@sint16, in2_236@sint16, in2_237@sint16, in2_238@sint16, in2_239@sint16, in2_240@sint16, in2_241@sint16, in2_242@sint16, in2_243@sint16, in2_244@sint16, in2_245@sint16, in2_246@sint16, in2_247@sint16, in2_248@sint16, in2_249@sint16, in2_250@sint16, in2_251@sint16, in2_252@sint16, in2_253@sint16, in2_254@sint16, in2_255@sint16

) =

{

(* algebraic precondition *)

true

&&

(* range precondition *)

and [
  (-17756)@16 <s in1_000, in1_000 <s 17756@16, (-17756)@16 <s in1_001, in1_001 <s 17756@16,
  (-13199)@16 <s in1_002, in1_002 <s 13199@16, (-13199)@16 <s in1_003, in1_003 <s 13199@16,
  (-18617)@16 <s in1_004, in1_004 <s 18617@16, (-18617)@16 <s in1_005, in1_005 <s 18617@16,
  (-13624)@16 <s in1_006, in1_006 <s 13624@16, (-13624)@16 <s in1_007, in1_007 <s 13624@16,
  (-18291)@16 <s in1_008, in1_008 <s 18291@16, (-18291)@16 <s in1_009, in1_009 <s 18291@16,
  (-13437)@16 <s in1_010, in1_010 <s 13437@16, (-13437)@16 <s in1_011, in1_011 <s 13437@16,
  (-17714)@16 <s in1_012, in1_012 <s 17714@16, (-17714)@16 <s in1_013, in1_013 <s 17714@16,
  (-13517)@16 <s in1_014, in1_014 <s 13517@16, (-13517)@16 <s in1_015, in1_015 <s 13517@16,
  (-17576)@16 <s in1_016, in1_016 <s 17576@16, (-17576)@16 <s in1_017, in1_017 <s 17576@16,
  (-13543)@16 <s in1_018, in1_018 <s 13543@16, (-13543)@16 <s in1_019, in1_019 <s 13543@16,
  (-17325)@16 <s in1_020, in1_020 <s 17325@16, (-17325)@16 <s in1_021, in1_021 <s 17325@16,
  (-12884)@16 <s in1_022, in1_022 <s 12884@16, (-12884)@16 <s in1_023, in1_023 <s 12884@16,
  (-17768)@16 <s in1_024, in1_024 <s 17768@16, (-17768)@16 <s in1_025, in1_025 <s 17768@16,
  (-13245)@16 <s in1_026, in1_026 <s 13245@16, (-13245)@16 <s in1_027, in1_027 <s 13245@16,
  (-17583)@16 <s in1_028, in1_028 <s 17583@16, (-17583)@16 <s in1_029, in1_029 <s 17583@16,
  (-13180)@16 <s in1_030, in1_030 <s 13180@16, (-13180)@16 <s in1_031, in1_031 <s 13180@16,
  (-17756)@16 <s in1_032, in1_032 <s 17756@16, (-17756)@16 <s in1_033, in1_033 <s 17756@16,
  (-13199)@16 <s in1_034, in1_034 <s 13199@16, (-13199)@16 <s in1_035, in1_035 <s 13199@16,
  (-18696)@16 <s in1_036, in1_036 <s 18696@16, (-18696)@16 <s in1_037, in1_037 <s 18696@16,
  (-13624)@16 <s in1_038, in1_038 <s 13624@16, (-13624)@16 <s in1_039, in1_039 <s 13624@16,
  (-18359)@16 <s in1_040, in1_040 <s 18359@16, (-18359)@16 <s in1_041, in1_041 <s 18359@16,
  (-13437)@16 <s in1_042, in1_042 <s 13437@16, (-13437)@16 <s in1_043, in1_043 <s 13437@16,
  (-17756)@16 <s in1_044, in1_044 <s 17756@16, (-17756)@16 <s in1_045, in1_045 <s 17756@16,
  (-13517)@16 <s in1_046, in1_046 <s 13517@16, (-13517)@16 <s in1_047, in1_047 <s 13517@16,
  (-17553)@16 <s in1_048, in1_048 <s 17553@16, (-17553)@16 <s in1_049, in1_049 <s 17553@16,
  (-13527)@16 <s in1_050, in1_050 <s 13527@16, (-13527)@16 <s in1_051, in1_051 <s 13527@16,
  (-17344)@16 <s in1_052, in1_052 <s 17344@16, (-17344)@16 <s in1_053, in1_053 <s 17344@16,
  (-12884)@16 <s in1_054, in1_054 <s 12884@16, (-12884)@16 <s in1_055, in1_055 <s 12884@16,
  (-17808)@16 <s in1_056, in1_056 <s 17808@16, (-17808)@16 <s in1_057, in1_057 <s 17808@16,
  (-13245)@16 <s in1_058, in1_058 <s 13245@16, (-13245)@16 <s in1_059, in1_059 <s 13245@16,
  (-17588)@16 <s in1_060, in1_060 <s 17588@16, (-17588)@16 <s in1_061, in1_061 <s 17588@16,
  (-13180)@16 <s in1_062, in1_062 <s 13180@16, (-13180)@16 <s in1_063, in1_063 <s 13180@16,
  (-17756)@16 <s in1_064, in1_064 <s 17756@16, (-17756)@16 <s in1_065, in1_065 <s 17756@16,
  (-13199)@16 <s in1_066, in1_066 <s 13199@16, (-13199)@16 <s in1_067, in1_067 <s 13199@16,
  (-18696)@16 <s in1_068, in1_068 <s 18696@16, (-18696)@16 <s in1_069, in1_069 <s 18696@16,
  (-13624)@16 <s in1_070, in1_070 <s 13624@16, (-13624)@16 <s in1_071, in1_071 <s 13624@16,
  (-18359)@16 <s in1_072, in1_072 <s 18359@16, (-18359)@16 <s in1_073, in1_073 <s 18359@16,
  (-13437)@16 <s in1_074, in1_074 <s 13437@16, (-13437)@16 <s in1_075, in1_075 <s 13437@16,
  (-17760)@16 <s in1_076, in1_076 <s 17760@16, (-17760)@16 <s in1_077, in1_077 <s 17760@16,
  (-13517)@16 <s in1_078, in1_078 <s 13517@16, (-13517)@16 <s in1_079, in1_079 <s 13517@16,
  (-17603)@16 <s in1_080, in1_080 <s 17603@16, (-17603)@16 <s in1_081, in1_081 <s 17603@16,
  (-13570)@16 <s in1_082, in1_082 <s 13570@16, (-13570)@16 <s in1_083, in1_083 <s 13570@16,
  (-17344)@16 <s in1_084, in1_084 <s 17344@16, (-17344)@16 <s in1_085, in1_085 <s 17344@16,
  (-12884)@16 <s in1_086, in1_086 <s 12884@16, (-12884)@16 <s in1_087, in1_087 <s 12884@16,
  (-17811)@16 <s in1_088, in1_088 <s 17811@16, (-17811)@16 <s in1_089, in1_089 <s 17811@16,
  (-13245)@16 <s in1_090, in1_090 <s 13245@16, (-13245)@16 <s in1_091, in1_091 <s 13245@16,
  (-17588)@16 <s in1_092, in1_092 <s 17588@16, (-17588)@16 <s in1_093, in1_093 <s 17588@16,
  (-13180)@16 <s in1_094, in1_094 <s 13180@16, (-13180)@16 <s in1_095, in1_095 <s 13180@16,
  (-17756)@16 <s in1_096, in1_096 <s 17756@16, (-17756)@16 <s in1_097, in1_097 <s 17756@16,
  (-13199)@16 <s in1_098, in1_098 <s 13199@16, (-13199)@16 <s in1_099, in1_099 <s 13199@16,
  (-18624)@16 <s in1_100, in1_100 <s 18624@16, (-18624)@16 <s in1_101, in1_101 <s 18624@16,
  (-13583)@16 <s in1_102, in1_102 <s 13583@16, (-13583)@16 <s in1_103, in1_103 <s 13583@16,
  (-18351)@16 <s in1_104, in1_104 <s 18351@16, (-18351)@16 <s in1_105, in1_105 <s 18351@16,
  (-13437)@16 <s in1_106, in1_106 <s 13437@16, (-13437)@16 <s in1_107, in1_107 <s 13437@16,
  (-17750)@16 <s in1_108, in1_108 <s 17750@16, (-17750)@16 <s in1_109, in1_109 <s 17750@16,
  (-13511)@16 <s in1_110, in1_110 <s 13511@16, (-13511)@16 <s in1_111, in1_111 <s 13511@16,
  (-17516)@16 <s in1_112, in1_112 <s 17516@16, (-17516)@16 <s in1_113, in1_113 <s 17516@16,
  (-13513)@16 <s in1_114, in1_114 <s 13513@16, (-13513)@16 <s in1_115, in1_115 <s 13513@16,
  (-17359)@16 <s in1_116, in1_116 <s 17359@16, (-17359)@16 <s in1_117, in1_117 <s 17359@16,
  (-12884)@16 <s in1_118, in1_118 <s 12884@16, (-12884)@16 <s in1_119, in1_119 <s 12884@16,
  (-17806)@16 <s in1_120, in1_120 <s 17806@16, (-17806)@16 <s in1_121, in1_121 <s 17806@16,
  (-13236)@16 <s in1_122, in1_122 <s 13236@16, (-13236)@16 <s in1_123, in1_123 <s 13236@16,
  (-17559)@16 <s in1_124, in1_124 <s 17559@16, (-17559)@16 <s in1_125, in1_125 <s 17559@16,
  (-13180)@16 <s in1_126, in1_126 <s 13180@16, (-13180)@16 <s in1_127, in1_127 <s 13180@16,
  (-17756)@16 <s in1_128, in1_128 <s 17756@16, (-17756)@16 <s in1_129, in1_129 <s 17756@16,
  (-13199)@16 <s in1_130, in1_130 <s 13199@16, (-13199)@16 <s in1_131, in1_131 <s 13199@16,
  (-18699)@16 <s in1_132, in1_132 <s 18699@16, (-18699)@16 <s in1_133, in1_133 <s 18699@16,
  (-13583)@16 <s in1_134, in1_134 <s 13583@16, (-13583)@16 <s in1_135, in1_135 <s 13583@16,
  (-18378)@16 <s in1_136, in1_136 <s 18378@16, (-18378)@16 <s in1_137, in1_137 <s 18378@16,
  (-13437)@16 <s in1_138, in1_138 <s 13437@16, (-13437)@16 <s in1_139, in1_139 <s 13437@16,
  (-17751)@16 <s in1_140, in1_140 <s 17751@16, (-17751)@16 <s in1_141, in1_141 <s 17751@16,
  (-13511)@16 <s in1_142, in1_142 <s 13511@16, (-13511)@16 <s in1_143, in1_143 <s 13511@16,
  (-17520)@16 <s in1_144, in1_144 <s 17520@16, (-17520)@16 <s in1_145, in1_145 <s 17520@16,
  (-13513)@16 <s in1_146, in1_146 <s 13513@16, (-13513)@16 <s in1_147, in1_147 <s 13513@16,
  (-17359)@16 <s in1_148, in1_148 <s 17359@16, (-17359)@16 <s in1_149, in1_149 <s 17359@16,
  (-12884)@16 <s in1_150, in1_150 <s 12884@16, (-12884)@16 <s in1_151, in1_151 <s 12884@16,
  (-17788)@16 <s in1_152, in1_152 <s 17788@16, (-17788)@16 <s in1_153, in1_153 <s 17788@16,
  (-13218)@16 <s in1_154, in1_154 <s 13218@16, (-13218)@16 <s in1_155, in1_155 <s 13218@16,
  (-17555)@16 <s in1_156, in1_156 <s 17555@16, (-17555)@16 <s in1_157, in1_157 <s 17555@16,
  (-13165)@16 <s in1_158, in1_158 <s 13165@16, (-13165)@16 <s in1_159, in1_159 <s 13165@16,
  (-17756)@16 <s in1_160, in1_160 <s 17756@16, (-17756)@16 <s in1_161, in1_161 <s 17756@16,
  (-13199)@16 <s in1_162, in1_162 <s 13199@16, (-13199)@16 <s in1_163, in1_163 <s 13199@16,
  (-18681)@16 <s in1_164, in1_164 <s 18681@16, (-18681)@16 <s in1_165, in1_165 <s 18681@16,
  (-13640)@16 <s in1_166, in1_166 <s 13640@16, (-13640)@16 <s in1_167, in1_167 <s 13640@16,
  (-18332)@16 <s in1_168, in1_168 <s 18332@16, (-18332)@16 <s in1_169, in1_169 <s 18332@16,
  (-13437)@16 <s in1_170, in1_170 <s 13437@16, (-13437)@16 <s in1_171, in1_171 <s 13437@16,
  (-17741)@16 <s in1_172, in1_172 <s 17741@16, (-17741)@16 <s in1_173, in1_173 <s 17741@16,
  (-13517)@16 <s in1_174, in1_174 <s 13517@16, (-13517)@16 <s in1_175, in1_175 <s 13517@16,
  (-17580)@16 <s in1_176, in1_176 <s 17580@16, (-17580)@16 <s in1_177, in1_177 <s 17580@16,
  (-13554)@16 <s in1_178, in1_178 <s 13554@16, (-13554)@16 <s in1_179, in1_179 <s 13554@16,
  (-17330)@16 <s in1_180, in1_180 <s 17330@16, (-17330)@16 <s in1_181, in1_181 <s 17330@16,
  (-12884)@16 <s in1_182, in1_182 <s 12884@16, (-12884)@16 <s in1_183, in1_183 <s 12884@16,
  (-17792)@16 <s in1_184, in1_184 <s 17792@16, (-17792)@16 <s in1_185, in1_185 <s 17792@16,
  (-13245)@16 <s in1_186, in1_186 <s 13245@16, (-13245)@16 <s in1_187, in1_187 <s 13245@16,
  (-17548)@16 <s in1_188, in1_188 <s 17548@16, (-17548)@16 <s in1_189, in1_189 <s 17548@16,
  (-13180)@16 <s in1_190, in1_190 <s 13180@16, (-13180)@16 <s in1_191, in1_191 <s 13180@16,
  (-17756)@16 <s in1_192, in1_192 <s 17756@16, (-17756)@16 <s in1_193, in1_193 <s 17756@16,
  (-13199)@16 <s in1_194, in1_194 <s 13199@16, (-13199)@16 <s in1_195, in1_195 <s 13199@16,
  (-18681)@16 <s in1_196, in1_196 <s 18681@16, (-18681)@16 <s in1_197, in1_197 <s 18681@16,
  (-13640)@16 <s in1_198, in1_198 <s 13640@16, (-13640)@16 <s in1_199, in1_199 <s 13640@16,
  (-18324)@16 <s in1_200, in1_200 <s 18324@16, (-18324)@16 <s in1_201, in1_201 <s 18324@16,
  (-13437)@16 <s in1_202, in1_202 <s 13437@16, (-13437)@16 <s in1_203, in1_203 <s 13437@16,
  (-17781)@16 <s in1_204, in1_204 <s 17781@16, (-17781)@16 <s in1_205, in1_205 <s 17781@16,
  (-13542)@16 <s in1_206, in1_206 <s 13542@16, (-13542)@16 <s in1_207, in1_207 <s 13542@16,
  (-17580)@16 <s in1_208, in1_208 <s 17580@16, (-17580)@16 <s in1_209, in1_209 <s 17580@16,
  (-13554)@16 <s in1_210, in1_210 <s 13554@16, (-13554)@16 <s in1_211, in1_211 <s 13554@16,
  (-17330)@16 <s in1_212, in1_212 <s 17330@16, (-17330)@16 <s in1_213, in1_213 <s 17330@16,
  (-12884)@16 <s in1_214, in1_214 <s 12884@16, (-12884)@16 <s in1_215, in1_215 <s 12884@16,
  (-17792)@16 <s in1_216, in1_216 <s 17792@16, (-17792)@16 <s in1_217, in1_217 <s 17792@16,
  (-13245)@16 <s in1_218, in1_218 <s 13245@16, (-13245)@16 <s in1_219, in1_219 <s 13245@16,
  (-17549)@16 <s in1_220, in1_220 <s 17549@16, (-17549)@16 <s in1_221, in1_221 <s 17549@16,
  (-13181)@16 <s in1_222, in1_222 <s 13181@16, (-13181)@16 <s in1_223, in1_223 <s 13181@16,
  (-17756)@16 <s in1_224, in1_224 <s 17756@16, (-17756)@16 <s in1_225, in1_225 <s 17756@16,
  (-13199)@16 <s in1_226, in1_226 <s 13199@16, (-13199)@16 <s in1_227, in1_227 <s 13199@16,
  (-18639)@16 <s in1_228, in1_228 <s 18639@16, (-18639)@16 <s in1_229, in1_229 <s 18639@16,
  (-13567)@16 <s in1_230, in1_230 <s 13567@16, (-13567)@16 <s in1_231, in1_231 <s 13567@16,
  (-18359)@16 <s in1_232, in1_232 <s 18359@16, (-18359)@16 <s in1_233, in1_233 <s 18359@16,
  (-13437)@16 <s in1_234, in1_234 <s 13437@16, (-13437)@16 <s in1_235, in1_235 <s 13437@16,
  (-17729)@16 <s in1_236, in1_236 <s 17729@16, (-17729)@16 <s in1_237, in1_237 <s 17729@16,
  (-13486)@16 <s in1_238, in1_238 <s 13486@16, (-13486)@16 <s in1_239, in1_239 <s 13486@16,
  (-17535)@16 <s in1_240, in1_240 <s 17535@16, (-17535)@16 <s in1_241, in1_241 <s 17535@16,
  (-13502)@16 <s in1_242, in1_242 <s 13502@16, (-13502)@16 <s in1_243, in1_243 <s 13502@16,
  (-17331)@16 <s in1_244, in1_244 <s 17331@16, (-17331)@16 <s in1_245, in1_245 <s 17331@16,
  (-12871)@16 <s in1_246, in1_246 <s 12871@16, (-12871)@16 <s in1_247, in1_247 <s 12871@16,
  (-17773)@16 <s in1_248, in1_248 <s 17773@16, (-17773)@16 <s in1_249, in1_249 <s 17773@16,
  (-13210)@16 <s in1_250, in1_250 <s 13210@16, (-13210)@16 <s in1_251, in1_251 <s 13210@16,
  (-17558)@16 <s in1_252, in1_252 <s 17558@16, (-17558)@16 <s in1_253, in1_253 <s 17558@16,
  (-13150)@16 <s in1_254, in1_254 <s 13150@16, (-13150)@16 <s in1_255, in1_255 <s 13150@16,
  (-17756)@16 <s in2_000, in2_000 <s 17756@16, (-17756)@16 <s in2_001, in2_001 <s 17756@16,
  (-13199)@16 <s in2_002, in2_002 <s 13199@16, (-13199)@16 <s in2_003, in2_003 <s 13199@16,
  (-18551)@16 <s in2_004, in2_004 <s 18551@16, (-18551)@16 <s in2_005, in2_005 <s 18551@16,
  (-13583)@16 <s in2_006, in2_006 <s 13583@16, (-13583)@16 <s in2_007, in2_007 <s 13583@16,
  (-18291)@16 <s in2_008, in2_008 <s 18291@16, (-18291)@16 <s in2_009, in2_009 <s 18291@16,
  (-13437)@16 <s in2_010, in2_010 <s 13437@16, (-13437)@16 <s in2_011, in2_011 <s 13437@16,
  (-17704)@16 <s in2_012, in2_012 <s 17704@16, (-17704)@16 <s in2_013, in2_013 <s 17704@16,
  (-13511)@16 <s in2_014, in2_014 <s 13511@16, (-13511)@16 <s in2_015, in2_015 <s 13511@16,
  (-17539)@16 <s in2_016, in2_016 <s 17539@16, (-17539)@16 <s in2_017, in2_017 <s 17539@16,
  (-13513)@16 <s in2_018, in2_018 <s 13513@16, (-13513)@16 <s in2_019, in2_019 <s 13513@16,
  (-17311)@16 <s in2_020, in2_020 <s 17311@16, (-17311)@16 <s in2_021, in2_021 <s 17311@16,
  (-12884)@16 <s in2_022, in2_022 <s 12884@16, (-12884)@16 <s in2_023, in2_023 <s 12884@16,
  (-17730)@16 <s in2_024, in2_024 <s 17730@16, (-17730)@16 <s in2_025, in2_025 <s 17730@16,
  (-13210)@16 <s in2_026, in2_026 <s 13210@16, (-13210)@16 <s in2_027, in2_027 <s 13210@16,
  (-17528)@16 <s in2_028, in2_028 <s 17528@16, (-17528)@16 <s in2_029, in2_029 <s 17528@16,
  (-13165)@16 <s in2_030, in2_030 <s 13165@16, (-13165)@16 <s in2_031, in2_031 <s 13165@16,
  (-17756)@16 <s in2_032, in2_032 <s 17756@16, (-17756)@16 <s in2_033, in2_033 <s 17756@16,
  (-13199)@16 <s in2_034, in2_034 <s 13199@16, (-13199)@16 <s in2_035, in2_035 <s 13199@16,
  (-18624)@16 <s in2_036, in2_036 <s 18624@16, (-18624)@16 <s in2_037, in2_037 <s 18624@16,
  (-13583)@16 <s in2_038, in2_038 <s 13583@16, (-13583)@16 <s in2_039, in2_039 <s 13583@16,
  (-18310)@16 <s in2_040, in2_040 <s 18310@16, (-18310)@16 <s in2_041, in2_041 <s 18310@16,
  (-13437)@16 <s in2_042, in2_042 <s 13437@16, (-13437)@16 <s in2_043, in2_043 <s 13437@16,
  (-17720)@16 <s in2_044, in2_044 <s 17720@16, (-17720)@16 <s in2_045, in2_045 <s 17720@16,
  (-13511)@16 <s in2_046, in2_046 <s 13511@16, (-13511)@16 <s in2_047, in2_047 <s 13511@16,
  (-17539)@16 <s in2_048, in2_048 <s 17539@16, (-17539)@16 <s in2_049, in2_049 <s 17539@16,
  (-13513)@16 <s in2_050, in2_050 <s 13513@16, (-13513)@16 <s in2_051, in2_051 <s 13513@16,
  (-17319)@16 <s in2_052, in2_052 <s 17319@16, (-17319)@16 <s in2_053, in2_053 <s 17319@16,
  (-12884)@16 <s in2_054, in2_054 <s 12884@16, (-12884)@16 <s in2_055, in2_055 <s 12884@16,
  (-17765)@16 <s in2_056, in2_056 <s 17765@16, (-17765)@16 <s in2_057, in2_057 <s 17765@16,
  (-13218)@16 <s in2_058, in2_058 <s 13218@16, (-13218)@16 <s in2_059, in2_059 <s 13218@16,
  (-17522)@16 <s in2_060, in2_060 <s 17522@16, (-17522)@16 <s in2_061, in2_061 <s 17522@16,
  (-13149)@16 <s in2_062, in2_062 <s 13149@16, (-13149)@16 <s in2_063, in2_063 <s 13149@16,
  (-17756)@16 <s in2_064, in2_064 <s 17756@16, (-17756)@16 <s in2_065, in2_065 <s 17756@16,
  (-13199)@16 <s in2_066, in2_066 <s 13199@16, (-13199)@16 <s in2_067, in2_067 <s 13199@16,
  (-18630)@16 <s in2_068, in2_068 <s 18630@16, (-18630)@16 <s in2_069, in2_069 <s 18630@16,
  (-13583)@16 <s in2_070, in2_070 <s 13583@16, (-13583)@16 <s in2_071, in2_071 <s 13583@16,
  (-18345)@16 <s in2_072, in2_072 <s 18345@16, (-18345)@16 <s in2_073, in2_073 <s 18345@16,
  (-13437)@16 <s in2_074, in2_074 <s 13437@16, (-13437)@16 <s in2_075, in2_075 <s 13437@16,
  (-17720)@16 <s in2_076, in2_076 <s 17720@16, (-17720)@16 <s in2_077, in2_077 <s 17720@16,
  (-13511)@16 <s in2_078, in2_078 <s 13511@16, (-13511)@16 <s in2_079, in2_079 <s 13511@16,
  (-17539)@16 <s in2_080, in2_080 <s 17539@16, (-17539)@16 <s in2_081, in2_081 <s 17539@16,
  (-13513)@16 <s in2_082, in2_082 <s 13513@16, (-13513)@16 <s in2_083, in2_083 <s 13513@16,
  (-17319)@16 <s in2_084, in2_084 <s 17319@16, (-17319)@16 <s in2_085, in2_085 <s 17319@16,
  (-12884)@16 <s in2_086, in2_086 <s 12884@16, (-12884)@16 <s in2_087, in2_087 <s 12884@16,
  (-17799)@16 <s in2_088, in2_088 <s 17799@16, (-17799)@16 <s in2_089, in2_089 <s 17799@16,
  (-13236)@16 <s in2_090, in2_090 <s 13236@16, (-13236)@16 <s in2_091, in2_091 <s 13236@16,
  (-17533)@16 <s in2_092, in2_092 <s 17533@16, (-17533)@16 <s in2_093, in2_093 <s 17533@16,
  (-13165)@16 <s in2_094, in2_094 <s 13165@16, (-13165)@16 <s in2_095, in2_095 <s 13165@16,
  (-17756)@16 <s in2_096, in2_096 <s 17756@16, (-17756)@16 <s in2_097, in2_097 <s 17756@16,
  (-13199)@16 <s in2_098, in2_098 <s 13199@16, (-13199)@16 <s in2_099, in2_099 <s 13199@16,
  (-18599)@16 <s in2_100, in2_100 <s 18599@16, (-18599)@16 <s in2_101, in2_101 <s 18599@16,
  (-13583)@16 <s in2_102, in2_102 <s 13583@16, (-13583)@16 <s in2_103, in2_103 <s 13583@16,
  (-18324)@16 <s in2_104, in2_104 <s 18324@16, (-18324)@16 <s in2_105, in2_105 <s 18324@16,
  (-13437)@16 <s in2_106, in2_106 <s 13437@16, (-13437)@16 <s in2_107, in2_107 <s 13437@16,
  (-17722)@16 <s in2_108, in2_108 <s 17722@16, (-17722)@16 <s in2_109, in2_109 <s 17722@16,
  (-13511)@16 <s in2_110, in2_110 <s 13511@16, (-13511)@16 <s in2_111, in2_111 <s 13511@16,
  (-17516)@16 <s in2_112, in2_112 <s 17516@16, (-17516)@16 <s in2_113, in2_113 <s 17516@16,
  (-13513)@16 <s in2_114, in2_114 <s 13513@16, (-13513)@16 <s in2_115, in2_115 <s 13513@16,
  (-17292)@16 <s in2_116, in2_116 <s 17292@16, (-17292)@16 <s in2_117, in2_117 <s 17292@16,
  (-12871)@16 <s in2_118, in2_118 <s 12871@16, (-12871)@16 <s in2_119, in2_119 <s 12871@16,
  (-17741)@16 <s in2_120, in2_120 <s 17741@16, (-17741)@16 <s in2_121, in2_121 <s 17741@16,
  (-13210)@16 <s in2_122, in2_122 <s 13210@16, (-13210)@16 <s in2_123, in2_123 <s 13210@16,
  (-17496)@16 <s in2_124, in2_124 <s 17496@16, (-17496)@16 <s in2_125, in2_125 <s 17496@16,
  (-13134)@16 <s in2_126, in2_126 <s 13134@16, (-13134)@16 <s in2_127, in2_127 <s 13134@16,
  (-17756)@16 <s in2_128, in2_128 <s 17756@16, (-17756)@16 <s in2_129, in2_129 <s 17756@16,
  (-13199)@16 <s in2_130, in2_130 <s 13199@16, (-13199)@16 <s in2_131, in2_131 <s 13199@16,
  (-18583)@16 <s in2_132, in2_132 <s 18583@16, (-18583)@16 <s in2_133, in2_133 <s 18583@16,
  (-13567)@16 <s in2_134, in2_134 <s 13567@16, (-13567)@16 <s in2_135, in2_135 <s 13567@16,
  (-18324)@16 <s in2_136, in2_136 <s 18324@16, (-18324)@16 <s in2_137, in2_137 <s 18324@16,
  (-13437)@16 <s in2_138, in2_138 <s 13437@16, (-13437)@16 <s in2_139, in2_139 <s 13437@16,
  (-17712)@16 <s in2_140, in2_140 <s 17712@16, (-17712)@16 <s in2_141, in2_141 <s 17712@16,
  (-13486)@16 <s in2_142, in2_142 <s 13486@16, (-13486)@16 <s in2_143, in2_143 <s 13486@16,
  (-17516)@16 <s in2_144, in2_144 <s 17516@16, (-17516)@16 <s in2_145, in2_145 <s 17516@16,
  (-13513)@16 <s in2_146, in2_146 <s 13513@16, (-13513)@16 <s in2_147, in2_147 <s 13513@16,
  (-17303)@16 <s in2_148, in2_148 <s 17303@16, (-17303)@16 <s in2_149, in2_149 <s 17303@16,
  (-12871)@16 <s in2_150, in2_150 <s 12871@16, (-12871)@16 <s in2_151, in2_151 <s 12871@16,
  (-17741)@16 <s in2_152, in2_152 <s 17741@16, (-17741)@16 <s in2_153, in2_153 <s 17741@16,
  (-13210)@16 <s in2_154, in2_154 <s 13210@16, (-13210)@16 <s in2_155, in2_155 <s 13210@16,
  (-17507)@16 <s in2_156, in2_156 <s 17507@16, (-17507)@16 <s in2_157, in2_157 <s 17507@16,
  (-13134)@16 <s in2_158, in2_158 <s 13134@16, (-13134)@16 <s in2_159, in2_159 <s 13134@16,
  (-17756)@16 <s in2_160, in2_160 <s 17756@16, (-17756)@16 <s in2_161, in2_161 <s 17756@16,
  (-13199)@16 <s in2_162, in2_162 <s 13199@16, (-13199)@16 <s in2_163, in2_163 <s 13199@16,
  (-18624)@16 <s in2_164, in2_164 <s 18624@16, (-18624)@16 <s in2_165, in2_165 <s 18624@16,
  (-13583)@16 <s in2_166, in2_166 <s 13583@16, (-13583)@16 <s in2_167, in2_167 <s 13583@16,
  (-18310)@16 <s in2_168, in2_168 <s 18310@16, (-18310)@16 <s in2_169, in2_169 <s 18310@16,
  (-13437)@16 <s in2_170, in2_170 <s 13437@16, (-13437)@16 <s in2_171, in2_171 <s 13437@16,
  (-17707)@16 <s in2_172, in2_172 <s 17707@16, (-17707)@16 <s in2_173, in2_173 <s 17707@16,
  (-13511)@16 <s in2_174, in2_174 <s 13511@16, (-13511)@16 <s in2_175, in2_175 <s 13511@16,
  (-17516)@16 <s in2_176, in2_176 <s 17516@16, (-17516)@16 <s in2_177, in2_177 <s 17516@16,
  (-13513)@16 <s in2_178, in2_178 <s 13513@16, (-13513)@16 <s in2_179, in2_179 <s 13513@16,
  (-17319)@16 <s in2_180, in2_180 <s 17319@16, (-17319)@16 <s in2_181, in2_181 <s 17319@16,
  (-12884)@16 <s in2_182, in2_182 <s 12884@16, (-12884)@16 <s in2_183, in2_183 <s 12884@16,
  (-17744)@16 <s in2_184, in2_184 <s 17744@16, (-17744)@16 <s in2_185, in2_185 <s 17744@16,
  (-13236)@16 <s in2_186, in2_186 <s 13236@16, (-13236)@16 <s in2_187, in2_187 <s 13236@16,
  (-17522)@16 <s in2_188, in2_188 <s 17522@16, (-17522)@16 <s in2_189, in2_189 <s 17522@16,
  (-13149)@16 <s in2_190, in2_190 <s 13149@16, (-13149)@16 <s in2_191, in2_191 <s 13149@16,
  (-17756)@16 <s in2_192, in2_192 <s 17756@16, (-17756)@16 <s in2_193, in2_193 <s 17756@16,
  (-13199)@16 <s in2_194, in2_194 <s 13199@16, (-13199)@16 <s in2_195, in2_195 <s 13199@16,
  (-18640)@16 <s in2_196, in2_196 <s 18640@16, (-18640)@16 <s in2_197, in2_197 <s 18640@16,
  (-13599)@16 <s in2_198, in2_198 <s 13599@16, (-13599)@16 <s in2_199, in2_199 <s 13599@16,
  (-18310)@16 <s in2_200, in2_200 <s 18310@16, (-18310)@16 <s in2_201, in2_201 <s 18310@16,
  (-13437)@16 <s in2_202, in2_202 <s 13437@16, (-13437)@16 <s in2_203, in2_203 <s 13437@16,
  (-17707)@16 <s in2_204, in2_204 <s 17707@16, (-17707)@16 <s in2_205, in2_205 <s 17707@16,
  (-13511)@16 <s in2_206, in2_206 <s 13511@16, (-13511)@16 <s in2_207, in2_207 <s 13511@16,
  (-17530)@16 <s in2_208, in2_208 <s 17530@16, (-17530)@16 <s in2_209, in2_209 <s 17530@16,
  (-13527)@16 <s in2_210, in2_210 <s 13527@16, (-13527)@16 <s in2_211, in2_211 <s 13527@16,
  (-17319)@16 <s in2_212, in2_212 <s 17319@16, (-17319)@16 <s in2_213, in2_213 <s 17319@16,
  (-12884)@16 <s in2_214, in2_214 <s 12884@16, (-12884)@16 <s in2_215, in2_215 <s 12884@16,
  (-17776)@16 <s in2_216, in2_216 <s 17776@16, (-17776)@16 <s in2_217, in2_217 <s 17776@16,
  (-13245)@16 <s in2_218, in2_218 <s 13245@16, (-13245)@16 <s in2_219, in2_219 <s 13245@16,
  (-17537)@16 <s in2_220, in2_220 <s 17537@16, (-17537)@16 <s in2_221, in2_221 <s 17537@16,
  (-13164)@16 <s in2_222, in2_222 <s 13164@16, (-13164)@16 <s in2_223, in2_223 <s 13164@16,
  (-17756)@16 <s in2_224, in2_224 <s 17756@16, (-17756)@16 <s in2_225, in2_225 <s 17756@16,
  (-13199)@16 <s in2_226, in2_226 <s 13199@16, (-13199)@16 <s in2_227, in2_227 <s 13199@16,
  (-18608)@16 <s in2_228, in2_228 <s 18608@16, (-18608)@16 <s in2_229, in2_229 <s 18608@16,
  (-13567)@16 <s in2_230, in2_230 <s 13567@16, (-13567)@16 <s in2_231, in2_231 <s 13567@16,
  (-18327)@16 <s in2_232, in2_232 <s 18327@16, (-18327)@16 <s in2_233, in2_233 <s 18327@16,
  (-13437)@16 <s in2_234, in2_234 <s 13437@16, (-13437)@16 <s in2_235, in2_235 <s 13437@16,
  (-17710)@16 <s in2_236, in2_236 <s 17710@16, (-17710)@16 <s in2_237, in2_237 <s 17710@16,
  (-13486)@16 <s in2_238, in2_238 <s 13486@16, (-13486)@16 <s in2_239, in2_239 <s 13486@16,
  (-17512)@16 <s in2_240, in2_240 <s 17512@16, (-17512)@16 <s in2_241, in2_241 <s 17512@16,
  (-13486)@16 <s in2_242, in2_242 <s 13486@16, (-13486)@16 <s in2_243, in2_243 <s 13486@16,
  (-17306)@16 <s in2_244, in2_244 <s 17306@16, (-17306)@16 <s in2_245, in2_245 <s 17306@16,
  (-12871)@16 <s in2_246, in2_246 <s 12871@16, (-12871)@16 <s in2_247, in2_247 <s 12871@16,
  (-17757)@16 <s in2_248, in2_248 <s 17757@16, (-17757)@16 <s in2_249, in2_249 <s 17757@16,
  (-13210)@16 <s in2_250, in2_250 <s 13210@16, (-13210)@16 <s in2_251, in2_251 <s 13210@16,
  (-17517)@16 <s in2_252, in2_252 <s 17517@16, (-17517)@16 <s in2_253, in2_253 <s 17517@16,
  (-13149)@16 <s in2_254, in2_254 <s 13149@16, (-13149)@16 <s in2_255, in2_255 <s 13149@16
]

}

(* inits *)
mov L0x7fffffff6d20 in1_000; mov L0x7fffffff6d22 in1_001; mov L0x7fffffff6d24 in1_002; mov L0x7fffffff6d26 in1_003;
mov L0x7fffffff6d28 in1_004; mov L0x7fffffff6d2a in1_005; mov L0x7fffffff6d2c in1_006; mov L0x7fffffff6d2e in1_007;
mov L0x7fffffff6d30 in1_008; mov L0x7fffffff6d32 in1_009; mov L0x7fffffff6d34 in1_010; mov L0x7fffffff6d36 in1_011;
mov L0x7fffffff6d38 in1_012; mov L0x7fffffff6d3a in1_013; mov L0x7fffffff6d3c in1_014; mov L0x7fffffff6d3e in1_015;
mov L0x7fffffff6d40 in1_016; mov L0x7fffffff6d42 in1_017; mov L0x7fffffff6d44 in1_018; mov L0x7fffffff6d46 in1_019;
mov L0x7fffffff6d48 in1_020; mov L0x7fffffff6d4a in1_021; mov L0x7fffffff6d4c in1_022; mov L0x7fffffff6d4e in1_023;
mov L0x7fffffff6d50 in1_024; mov L0x7fffffff6d52 in1_025; mov L0x7fffffff6d54 in1_026; mov L0x7fffffff6d56 in1_027;
mov L0x7fffffff6d58 in1_028; mov L0x7fffffff6d5a in1_029; mov L0x7fffffff6d5c in1_030; mov L0x7fffffff6d5e in1_031;
mov L0x7fffffff6d60 in1_032; mov L0x7fffffff6d62 in1_033; mov L0x7fffffff6d64 in1_034; mov L0x7fffffff6d66 in1_035;
mov L0x7fffffff6d68 in1_036; mov L0x7fffffff6d6a in1_037; mov L0x7fffffff6d6c in1_038; mov L0x7fffffff6d6e in1_039;
mov L0x7fffffff6d70 in1_040; mov L0x7fffffff6d72 in1_041; mov L0x7fffffff6d74 in1_042; mov L0x7fffffff6d76 in1_043;
mov L0x7fffffff6d78 in1_044; mov L0x7fffffff6d7a in1_045; mov L0x7fffffff6d7c in1_046; mov L0x7fffffff6d7e in1_047;
mov L0x7fffffff6d80 in1_048; mov L0x7fffffff6d82 in1_049; mov L0x7fffffff6d84 in1_050; mov L0x7fffffff6d86 in1_051;
mov L0x7fffffff6d88 in1_052; mov L0x7fffffff6d8a in1_053; mov L0x7fffffff6d8c in1_054; mov L0x7fffffff6d8e in1_055;
mov L0x7fffffff6d90 in1_056; mov L0x7fffffff6d92 in1_057; mov L0x7fffffff6d94 in1_058; mov L0x7fffffff6d96 in1_059;
mov L0x7fffffff6d98 in1_060; mov L0x7fffffff6d9a in1_061; mov L0x7fffffff6d9c in1_062; mov L0x7fffffff6d9e in1_063;
mov L0x7fffffff6da0 in1_064; mov L0x7fffffff6da2 in1_065; mov L0x7fffffff6da4 in1_066; mov L0x7fffffff6da6 in1_067;
mov L0x7fffffff6da8 in1_068; mov L0x7fffffff6daa in1_069; mov L0x7fffffff6dac in1_070; mov L0x7fffffff6dae in1_071;
mov L0x7fffffff6db0 in1_072; mov L0x7fffffff6db2 in1_073; mov L0x7fffffff6db4 in1_074; mov L0x7fffffff6db6 in1_075;
mov L0x7fffffff6db8 in1_076; mov L0x7fffffff6dba in1_077; mov L0x7fffffff6dbc in1_078; mov L0x7fffffff6dbe in1_079;
mov L0x7fffffff6dc0 in1_080; mov L0x7fffffff6dc2 in1_081; mov L0x7fffffff6dc4 in1_082; mov L0x7fffffff6dc6 in1_083;
mov L0x7fffffff6dc8 in1_084; mov L0x7fffffff6dca in1_085; mov L0x7fffffff6dcc in1_086; mov L0x7fffffff6dce in1_087;
mov L0x7fffffff6dd0 in1_088; mov L0x7fffffff6dd2 in1_089; mov L0x7fffffff6dd4 in1_090; mov L0x7fffffff6dd6 in1_091;
mov L0x7fffffff6dd8 in1_092; mov L0x7fffffff6dda in1_093; mov L0x7fffffff6ddc in1_094; mov L0x7fffffff6dde in1_095;
mov L0x7fffffff6de0 in1_096; mov L0x7fffffff6de2 in1_097; mov L0x7fffffff6de4 in1_098; mov L0x7fffffff6de6 in1_099;
mov L0x7fffffff6de8 in1_100; mov L0x7fffffff6dea in1_101; mov L0x7fffffff6dec in1_102; mov L0x7fffffff6dee in1_103;
mov L0x7fffffff6df0 in1_104; mov L0x7fffffff6df2 in1_105; mov L0x7fffffff6df4 in1_106; mov L0x7fffffff6df6 in1_107;
mov L0x7fffffff6df8 in1_108; mov L0x7fffffff6dfa in1_109; mov L0x7fffffff6dfc in1_110; mov L0x7fffffff6dfe in1_111;
mov L0x7fffffff6e00 in1_112; mov L0x7fffffff6e02 in1_113; mov L0x7fffffff6e04 in1_114; mov L0x7fffffff6e06 in1_115;
mov L0x7fffffff6e08 in1_116; mov L0x7fffffff6e0a in1_117; mov L0x7fffffff6e0c in1_118; mov L0x7fffffff6e0e in1_119;
mov L0x7fffffff6e10 in1_120; mov L0x7fffffff6e12 in1_121; mov L0x7fffffff6e14 in1_122; mov L0x7fffffff6e16 in1_123;
mov L0x7fffffff6e18 in1_124; mov L0x7fffffff6e1a in1_125; mov L0x7fffffff6e1c in1_126; mov L0x7fffffff6e1e in1_127;
mov L0x7fffffff6e20 in1_128; mov L0x7fffffff6e22 in1_129; mov L0x7fffffff6e24 in1_130; mov L0x7fffffff6e26 in1_131;
mov L0x7fffffff6e28 in1_132; mov L0x7fffffff6e2a in1_133; mov L0x7fffffff6e2c in1_134; mov L0x7fffffff6e2e in1_135;
mov L0x7fffffff6e30 in1_136; mov L0x7fffffff6e32 in1_137; mov L0x7fffffff6e34 in1_138; mov L0x7fffffff6e36 in1_139;
mov L0x7fffffff6e38 in1_140; mov L0x7fffffff6e3a in1_141; mov L0x7fffffff6e3c in1_142; mov L0x7fffffff6e3e in1_143;
mov L0x7fffffff6e40 in1_144; mov L0x7fffffff6e42 in1_145; mov L0x7fffffff6e44 in1_146; mov L0x7fffffff6e46 in1_147;
mov L0x7fffffff6e48 in1_148; mov L0x7fffffff6e4a in1_149; mov L0x7fffffff6e4c in1_150; mov L0x7fffffff6e4e in1_151;
mov L0x7fffffff6e50 in1_152; mov L0x7fffffff6e52 in1_153; mov L0x7fffffff6e54 in1_154; mov L0x7fffffff6e56 in1_155;
mov L0x7fffffff6e58 in1_156; mov L0x7fffffff6e5a in1_157; mov L0x7fffffff6e5c in1_158; mov L0x7fffffff6e5e in1_159;
mov L0x7fffffff6e60 in1_160; mov L0x7fffffff6e62 in1_161; mov L0x7fffffff6e64 in1_162; mov L0x7fffffff6e66 in1_163;
mov L0x7fffffff6e68 in1_164; mov L0x7fffffff6e6a in1_165; mov L0x7fffffff6e6c in1_166; mov L0x7fffffff6e6e in1_167;
mov L0x7fffffff6e70 in1_168; mov L0x7fffffff6e72 in1_169; mov L0x7fffffff6e74 in1_170; mov L0x7fffffff6e76 in1_171;
mov L0x7fffffff6e78 in1_172; mov L0x7fffffff6e7a in1_173; mov L0x7fffffff6e7c in1_174; mov L0x7fffffff6e7e in1_175;
mov L0x7fffffff6e80 in1_176; mov L0x7fffffff6e82 in1_177; mov L0x7fffffff6e84 in1_178; mov L0x7fffffff6e86 in1_179;
mov L0x7fffffff6e88 in1_180; mov L0x7fffffff6e8a in1_181; mov L0x7fffffff6e8c in1_182; mov L0x7fffffff6e8e in1_183;
mov L0x7fffffff6e90 in1_184; mov L0x7fffffff6e92 in1_185; mov L0x7fffffff6e94 in1_186; mov L0x7fffffff6e96 in1_187;
mov L0x7fffffff6e98 in1_188; mov L0x7fffffff6e9a in1_189; mov L0x7fffffff6e9c in1_190; mov L0x7fffffff6e9e in1_191;
mov L0x7fffffff6ea0 in1_192; mov L0x7fffffff6ea2 in1_193; mov L0x7fffffff6ea4 in1_194; mov L0x7fffffff6ea6 in1_195;
mov L0x7fffffff6ea8 in1_196; mov L0x7fffffff6eaa in1_197; mov L0x7fffffff6eac in1_198; mov L0x7fffffff6eae in1_199;
mov L0x7fffffff6eb0 in1_200; mov L0x7fffffff6eb2 in1_201; mov L0x7fffffff6eb4 in1_202; mov L0x7fffffff6eb6 in1_203;
mov L0x7fffffff6eb8 in1_204; mov L0x7fffffff6eba in1_205; mov L0x7fffffff6ebc in1_206; mov L0x7fffffff6ebe in1_207;
mov L0x7fffffff6ec0 in1_208; mov L0x7fffffff6ec2 in1_209; mov L0x7fffffff6ec4 in1_210; mov L0x7fffffff6ec6 in1_211;
mov L0x7fffffff6ec8 in1_212; mov L0x7fffffff6eca in1_213; mov L0x7fffffff6ecc in1_214; mov L0x7fffffff6ece in1_215;
mov L0x7fffffff6ed0 in1_216; mov L0x7fffffff6ed2 in1_217; mov L0x7fffffff6ed4 in1_218; mov L0x7fffffff6ed6 in1_219;
mov L0x7fffffff6ed8 in1_220; mov L0x7fffffff6eda in1_221; mov L0x7fffffff6edc in1_222; mov L0x7fffffff6ede in1_223;
mov L0x7fffffff6ee0 in1_224; mov L0x7fffffff6ee2 in1_225; mov L0x7fffffff6ee4 in1_226; mov L0x7fffffff6ee6 in1_227;
mov L0x7fffffff6ee8 in1_228; mov L0x7fffffff6eea in1_229; mov L0x7fffffff6eec in1_230; mov L0x7fffffff6eee in1_231;
mov L0x7fffffff6ef0 in1_232; mov L0x7fffffff6ef2 in1_233; mov L0x7fffffff6ef4 in1_234; mov L0x7fffffff6ef6 in1_235;
mov L0x7fffffff6ef8 in1_236; mov L0x7fffffff6efa in1_237; mov L0x7fffffff6efc in1_238; mov L0x7fffffff6efe in1_239;
mov L0x7fffffff6f00 in1_240; mov L0x7fffffff6f02 in1_241; mov L0x7fffffff6f04 in1_242; mov L0x7fffffff6f06 in1_243;
mov L0x7fffffff6f08 in1_244; mov L0x7fffffff6f0a in1_245; mov L0x7fffffff6f0c in1_246; mov L0x7fffffff6f0e in1_247;
mov L0x7fffffff6f10 in1_248; mov L0x7fffffff6f12 in1_249; mov L0x7fffffff6f14 in1_250; mov L0x7fffffff6f16 in1_251;
mov L0x7fffffff6f18 in1_252; mov L0x7fffffff6f1a in1_253; mov L0x7fffffff6f1c in1_254; mov L0x7fffffff6f1e in1_255;
mov L0x7fffffff6b20 in2_000; mov L0x7fffffff6b22 in2_001; mov L0x7fffffff6b24 in2_002; mov L0x7fffffff6b26 in2_003;
mov L0x7fffffff6b28 in2_004; mov L0x7fffffff6b2a in2_005; mov L0x7fffffff6b2c in2_006; mov L0x7fffffff6b2e in2_007;
mov L0x7fffffff6b30 in2_008; mov L0x7fffffff6b32 in2_009; mov L0x7fffffff6b34 in2_010; mov L0x7fffffff6b36 in2_011;
mov L0x7fffffff6b38 in2_012; mov L0x7fffffff6b3a in2_013; mov L0x7fffffff6b3c in2_014; mov L0x7fffffff6b3e in2_015;
mov L0x7fffffff6b40 in2_016; mov L0x7fffffff6b42 in2_017; mov L0x7fffffff6b44 in2_018; mov L0x7fffffff6b46 in2_019;
mov L0x7fffffff6b48 in2_020; mov L0x7fffffff6b4a in2_021; mov L0x7fffffff6b4c in2_022; mov L0x7fffffff6b4e in2_023;
mov L0x7fffffff6b50 in2_024; mov L0x7fffffff6b52 in2_025; mov L0x7fffffff6b54 in2_026; mov L0x7fffffff6b56 in2_027;
mov L0x7fffffff6b58 in2_028; mov L0x7fffffff6b5a in2_029; mov L0x7fffffff6b5c in2_030; mov L0x7fffffff6b5e in2_031;
mov L0x7fffffff6b60 in2_032; mov L0x7fffffff6b62 in2_033; mov L0x7fffffff6b64 in2_034; mov L0x7fffffff6b66 in2_035;
mov L0x7fffffff6b68 in2_036; mov L0x7fffffff6b6a in2_037; mov L0x7fffffff6b6c in2_038; mov L0x7fffffff6b6e in2_039;
mov L0x7fffffff6b70 in2_040; mov L0x7fffffff6b72 in2_041; mov L0x7fffffff6b74 in2_042; mov L0x7fffffff6b76 in2_043;
mov L0x7fffffff6b78 in2_044; mov L0x7fffffff6b7a in2_045; mov L0x7fffffff6b7c in2_046; mov L0x7fffffff6b7e in2_047;
mov L0x7fffffff6b80 in2_048; mov L0x7fffffff6b82 in2_049; mov L0x7fffffff6b84 in2_050; mov L0x7fffffff6b86 in2_051;
mov L0x7fffffff6b88 in2_052; mov L0x7fffffff6b8a in2_053; mov L0x7fffffff6b8c in2_054; mov L0x7fffffff6b8e in2_055;
mov L0x7fffffff6b90 in2_056; mov L0x7fffffff6b92 in2_057; mov L0x7fffffff6b94 in2_058; mov L0x7fffffff6b96 in2_059;
mov L0x7fffffff6b98 in2_060; mov L0x7fffffff6b9a in2_061; mov L0x7fffffff6b9c in2_062; mov L0x7fffffff6b9e in2_063;
mov L0x7fffffff6ba0 in2_064; mov L0x7fffffff6ba2 in2_065; mov L0x7fffffff6ba4 in2_066; mov L0x7fffffff6ba6 in2_067;
mov L0x7fffffff6ba8 in2_068; mov L0x7fffffff6baa in2_069; mov L0x7fffffff6bac in2_070; mov L0x7fffffff6bae in2_071;
mov L0x7fffffff6bb0 in2_072; mov L0x7fffffff6bb2 in2_073; mov L0x7fffffff6bb4 in2_074; mov L0x7fffffff6bb6 in2_075;
mov L0x7fffffff6bb8 in2_076; mov L0x7fffffff6bba in2_077; mov L0x7fffffff6bbc in2_078; mov L0x7fffffff6bbe in2_079;
mov L0x7fffffff6bc0 in2_080; mov L0x7fffffff6bc2 in2_081; mov L0x7fffffff6bc4 in2_082; mov L0x7fffffff6bc6 in2_083;
mov L0x7fffffff6bc8 in2_084; mov L0x7fffffff6bca in2_085; mov L0x7fffffff6bcc in2_086; mov L0x7fffffff6bce in2_087;
mov L0x7fffffff6bd0 in2_088; mov L0x7fffffff6bd2 in2_089; mov L0x7fffffff6bd4 in2_090; mov L0x7fffffff6bd6 in2_091;
mov L0x7fffffff6bd8 in2_092; mov L0x7fffffff6bda in2_093; mov L0x7fffffff6bdc in2_094; mov L0x7fffffff6bde in2_095;
mov L0x7fffffff6be0 in2_096; mov L0x7fffffff6be2 in2_097; mov L0x7fffffff6be4 in2_098; mov L0x7fffffff6be6 in2_099;
mov L0x7fffffff6be8 in2_100; mov L0x7fffffff6bea in2_101; mov L0x7fffffff6bec in2_102; mov L0x7fffffff6bee in2_103;
mov L0x7fffffff6bf0 in2_104; mov L0x7fffffff6bf2 in2_105; mov L0x7fffffff6bf4 in2_106; mov L0x7fffffff6bf6 in2_107;
mov L0x7fffffff6bf8 in2_108; mov L0x7fffffff6bfa in2_109; mov L0x7fffffff6bfc in2_110; mov L0x7fffffff6bfe in2_111;
mov L0x7fffffff6c00 in2_112; mov L0x7fffffff6c02 in2_113; mov L0x7fffffff6c04 in2_114; mov L0x7fffffff6c06 in2_115;
mov L0x7fffffff6c08 in2_116; mov L0x7fffffff6c0a in2_117; mov L0x7fffffff6c0c in2_118; mov L0x7fffffff6c0e in2_119;
mov L0x7fffffff6c10 in2_120; mov L0x7fffffff6c12 in2_121; mov L0x7fffffff6c14 in2_122; mov L0x7fffffff6c16 in2_123;
mov L0x7fffffff6c18 in2_124; mov L0x7fffffff6c1a in2_125; mov L0x7fffffff6c1c in2_126; mov L0x7fffffff6c1e in2_127;
mov L0x7fffffff6c20 in2_128; mov L0x7fffffff6c22 in2_129; mov L0x7fffffff6c24 in2_130; mov L0x7fffffff6c26 in2_131;
mov L0x7fffffff6c28 in2_132; mov L0x7fffffff6c2a in2_133; mov L0x7fffffff6c2c in2_134; mov L0x7fffffff6c2e in2_135;
mov L0x7fffffff6c30 in2_136; mov L0x7fffffff6c32 in2_137; mov L0x7fffffff6c34 in2_138; mov L0x7fffffff6c36 in2_139;
mov L0x7fffffff6c38 in2_140; mov L0x7fffffff6c3a in2_141; mov L0x7fffffff6c3c in2_142; mov L0x7fffffff6c3e in2_143;
mov L0x7fffffff6c40 in2_144; mov L0x7fffffff6c42 in2_145; mov L0x7fffffff6c44 in2_146; mov L0x7fffffff6c46 in2_147;
mov L0x7fffffff6c48 in2_148; mov L0x7fffffff6c4a in2_149; mov L0x7fffffff6c4c in2_150; mov L0x7fffffff6c4e in2_151;
mov L0x7fffffff6c50 in2_152; mov L0x7fffffff6c52 in2_153; mov L0x7fffffff6c54 in2_154; mov L0x7fffffff6c56 in2_155;
mov L0x7fffffff6c58 in2_156; mov L0x7fffffff6c5a in2_157; mov L0x7fffffff6c5c in2_158; mov L0x7fffffff6c5e in2_159;
mov L0x7fffffff6c60 in2_160; mov L0x7fffffff6c62 in2_161; mov L0x7fffffff6c64 in2_162; mov L0x7fffffff6c66 in2_163;
mov L0x7fffffff6c68 in2_164; mov L0x7fffffff6c6a in2_165; mov L0x7fffffff6c6c in2_166; mov L0x7fffffff6c6e in2_167;
mov L0x7fffffff6c70 in2_168; mov L0x7fffffff6c72 in2_169; mov L0x7fffffff6c74 in2_170; mov L0x7fffffff6c76 in2_171;
mov L0x7fffffff6c78 in2_172; mov L0x7fffffff6c7a in2_173; mov L0x7fffffff6c7c in2_174; mov L0x7fffffff6c7e in2_175;
mov L0x7fffffff6c80 in2_176; mov L0x7fffffff6c82 in2_177; mov L0x7fffffff6c84 in2_178; mov L0x7fffffff6c86 in2_179;
mov L0x7fffffff6c88 in2_180; mov L0x7fffffff6c8a in2_181; mov L0x7fffffff6c8c in2_182; mov L0x7fffffff6c8e in2_183;
mov L0x7fffffff6c90 in2_184; mov L0x7fffffff6c92 in2_185; mov L0x7fffffff6c94 in2_186; mov L0x7fffffff6c96 in2_187;
mov L0x7fffffff6c98 in2_188; mov L0x7fffffff6c9a in2_189; mov L0x7fffffff6c9c in2_190; mov L0x7fffffff6c9e in2_191;
mov L0x7fffffff6ca0 in2_192; mov L0x7fffffff6ca2 in2_193; mov L0x7fffffff6ca4 in2_194; mov L0x7fffffff6ca6 in2_195;
mov L0x7fffffff6ca8 in2_196; mov L0x7fffffff6caa in2_197; mov L0x7fffffff6cac in2_198; mov L0x7fffffff6cae in2_199;
mov L0x7fffffff6cb0 in2_200; mov L0x7fffffff6cb2 in2_201; mov L0x7fffffff6cb4 in2_202; mov L0x7fffffff6cb6 in2_203;
mov L0x7fffffff6cb8 in2_204; mov L0x7fffffff6cba in2_205; mov L0x7fffffff6cbc in2_206; mov L0x7fffffff6cbe in2_207;
mov L0x7fffffff6cc0 in2_208; mov L0x7fffffff6cc2 in2_209; mov L0x7fffffff6cc4 in2_210; mov L0x7fffffff6cc6 in2_211;
mov L0x7fffffff6cc8 in2_212; mov L0x7fffffff6cca in2_213; mov L0x7fffffff6ccc in2_214; mov L0x7fffffff6cce in2_215;
mov L0x7fffffff6cd0 in2_216; mov L0x7fffffff6cd2 in2_217; mov L0x7fffffff6cd4 in2_218; mov L0x7fffffff6cd6 in2_219;
mov L0x7fffffff6cd8 in2_220; mov L0x7fffffff6cda in2_221; mov L0x7fffffff6cdc in2_222; mov L0x7fffffff6cde in2_223;
mov L0x7fffffff6ce0 in2_224; mov L0x7fffffff6ce2 in2_225; mov L0x7fffffff6ce4 in2_226; mov L0x7fffffff6ce6 in2_227;
mov L0x7fffffff6ce8 in2_228; mov L0x7fffffff6cea in2_229; mov L0x7fffffff6cec in2_230; mov L0x7fffffff6cee in2_231;
mov L0x7fffffff6cf0 in2_232; mov L0x7fffffff6cf2 in2_233; mov L0x7fffffff6cf4 in2_234; mov L0x7fffffff6cf6 in2_235;
mov L0x7fffffff6cf8 in2_236; mov L0x7fffffff6cfa in2_237; mov L0x7fffffff6cfc in2_238; mov L0x7fffffff6cfe in2_239;
mov L0x7fffffff6d00 in2_240; mov L0x7fffffff6d02 in2_241; mov L0x7fffffff6d04 in2_242; mov L0x7fffffff6d06 in2_243;
mov L0x7fffffff6d08 in2_244; mov L0x7fffffff6d0a in2_245; mov L0x7fffffff6d0c in2_246; mov L0x7fffffff6d0e in2_247;
mov L0x7fffffff6d10 in2_248; mov L0x7fffffff6d12 in2_249; mov L0x7fffffff6d14 in2_250; mov L0x7fffffff6d16 in2_251;
mov L0x7fffffff6d18 in2_252; mov L0x7fffffff6d1a in2_253; mov L0x7fffffff6d1c in2_254; mov L0x7fffffff6d1e in2_255;

(* _16XP *)
mov L0x5555555607c0 (7681)@sint16; mov L0x5555555607c2 (7681)@sint16; mov L0x5555555607c4 (7681)@sint16; mov L0x5555555607c6 (7681)@sint16;
mov L0x5555555607c8 (7681)@sint16; mov L0x5555555607ca (7681)@sint16; mov L0x5555555607cc (7681)@sint16; mov L0x5555555607ce (7681)@sint16;
mov L0x5555555607d0 (7681)@sint16; mov L0x5555555607d2 (7681)@sint16; mov L0x5555555607d4 (7681)@sint16; mov L0x5555555607d6 (7681)@sint16;
mov L0x5555555607d8 (7681)@sint16; mov L0x5555555607da (7681)@sint16; mov L0x5555555607dc (7681)@sint16; mov L0x5555555607de (7681)@sint16;

(* _16XPINV *)
mov L0x5555555607e0 (-7679)@sint16; mov L0x5555555607e2 (-7679)@sint16; mov L0x5555555607e4 (-7679)@sint16; mov L0x5555555607e6 (-7679)@sint16;
mov L0x5555555607e8 (-7679)@sint16; mov L0x5555555607ea (-7679)@sint16; mov L0x5555555607ec (-7679)@sint16; mov L0x5555555607ee (-7679)@sint16;
mov L0x5555555607f0 (-7679)@sint16; mov L0x5555555607f2 (-7679)@sint16; mov L0x5555555607f4 (-7679)@sint16; mov L0x5555555607f6 (-7679)@sint16;
mov L0x5555555607f8 (-7679)@sint16; mov L0x5555555607fa (-7679)@sint16; mov L0x5555555607fc (-7679)@sint16; mov L0x5555555607fe (-7679)@sint16;

(* _16XF_PINV *)
mov L0x555555560880 (-2184)@sint16; mov L0x555555560882 (-2184)@sint16; mov L0x555555560884 (-2184)@sint16; mov L0x555555560886 (-2184)@sint16;
mov L0x555555560888 (-2184)@sint16; mov L0x55555556088a (-2184)@sint16; mov L0x55555556088c (-2184)@sint16; mov L0x55555556088e (-2184)@sint16;
mov L0x555555560890 (-2184)@sint16; mov L0x555555560892 (-2184)@sint16; mov L0x555555560894 (-2184)@sint16; mov L0x555555560896 (-2184)@sint16;
mov L0x555555560898 (-2184)@sint16; mov L0x55555556089a (-2184)@sint16; mov L0x55555556089c (-2184)@sint16; mov L0x55555556089e (-2184)@sint16;

(* _16XF *)
mov L0x5555555608a0 (1912)@sint16; mov L0x5555555608a2 (1912)@sint16; mov L0x5555555608a4 (1912)@sint16; mov L0x5555555608a6 (1912)@sint16;
mov L0x5555555608a8 (1912)@sint16; mov L0x5555555608aa (1912)@sint16; mov L0x5555555608ac (1912)@sint16; mov L0x5555555608ae (1912)@sint16;
mov L0x5555555608b0 (1912)@sint16; mov L0x5555555608b2 (1912)@sint16; mov L0x5555555608b4 (1912)@sint16; mov L0x5555555608b6 (1912)@sint16;
mov L0x5555555608b8 (1912)@sint16; mov L0x5555555608ba (1912)@sint16; mov L0x5555555608bc (1912)@sint16; mov L0x5555555608be (1912)@sint16;



#===== program start =====


(* #! -> SP = 0x7fffffff6778 *)
#! 0x7fffffff6778 = 0x7fffffff6778;
(* vmovdqa (%rcx),%ymm0                            #! EA = L0x5555555607c0; Value = 0x1e011e011e011e01; PC = 0x555555558b7d *)
mov ymm0_0 L0x5555555607c0;
mov ymm0_1 L0x5555555607c2;
mov ymm0_2 L0x5555555607c4;
mov ymm0_3 L0x5555555607c6;
mov ymm0_4 L0x5555555607c8;
mov ymm0_5 L0x5555555607ca;
mov ymm0_6 L0x5555555607cc;
mov ymm0_7 L0x5555555607ce;
mov ymm0_8 L0x5555555607d0;
mov ymm0_9 L0x5555555607d2;
mov ymm0_a L0x5555555607d4;
mov ymm0_b L0x5555555607d6;
mov ymm0_c L0x5555555607d8;
mov ymm0_d L0x5555555607da;
mov ymm0_e L0x5555555607dc;
mov ymm0_f L0x5555555607de;
(* vmovdqa 0x20(%rcx),%ymm1                        #! EA = L0x5555555607e0; Value = 0xe201e201e201e201; PC = 0x555555558b81 *)
mov ymm1_0 L0x5555555607e0;
mov ymm1_1 L0x5555555607e2;
mov ymm1_2 L0x5555555607e4;
mov ymm1_3 L0x5555555607e6;
mov ymm1_4 L0x5555555607e8;
mov ymm1_5 L0x5555555607ea;
mov ymm1_6 L0x5555555607ec;
mov ymm1_7 L0x5555555607ee;
mov ymm1_8 L0x5555555607f0;
mov ymm1_9 L0x5555555607f2;
mov ymm1_a L0x5555555607f4;
mov ymm1_b L0x5555555607f6;
mov ymm1_c L0x5555555607f8;
mov ymm1_d L0x5555555607fa;
mov ymm1_e L0x5555555607fc;
mov ymm1_f L0x5555555607fe;
(* vmovdqa 0xc0(%rcx),%ymm14                       #! EA = L0x555555560880; Value = 0xf778f778f778f778; PC = 0x555555558b86 *)
mov ymm14_0 L0x555555560880;
mov ymm14_1 L0x555555560882;
mov ymm14_2 L0x555555560884;
mov ymm14_3 L0x555555560886;
mov ymm14_4 L0x555555560888;
mov ymm14_5 L0x55555556088a;
mov ymm14_6 L0x55555556088c;
mov ymm14_7 L0x55555556088e;
mov ymm14_8 L0x555555560890;
mov ymm14_9 L0x555555560892;
mov ymm14_a L0x555555560894;
mov ymm14_b L0x555555560896;
mov ymm14_c L0x555555560898;
mov ymm14_d L0x55555556089a;
mov ymm14_e L0x55555556089c;
mov ymm14_f L0x55555556089e;
(* vmovdqa 0xe0(%rcx),%ymm15                       #! EA = L0x5555555608a0; Value = 0x0778077807780778; PC = 0x555555558b8e *)
mov ymm15_0 L0x5555555608a0;
mov ymm15_1 L0x5555555608a2;
mov ymm15_2 L0x5555555608a4;
mov ymm15_3 L0x5555555608a6;
mov ymm15_4 L0x5555555608a8;
mov ymm15_5 L0x5555555608aa;
mov ymm15_6 L0x5555555608ac;
mov ymm15_7 L0x5555555608ae;
mov ymm15_8 L0x5555555608b0;
mov ymm15_9 L0x5555555608b2;
mov ymm15_a L0x5555555608b4;
mov ymm15_b L0x5555555608b6;
mov ymm15_c L0x5555555608b8;
mov ymm15_d L0x5555555608ba;
mov ymm15_e L0x5555555608bc;
mov ymm15_f L0x5555555608be;
(* vmovdqa (%rsi),%ymm4                            #! EA = L0x7fffffff6d20; Value = 0x0000000000000000; PC = 0x555555558b96 *)
mov ymm4_0 L0x7fffffff6d20;
mov ymm4_1 L0x7fffffff6d22;
mov ymm4_2 L0x7fffffff6d24;
mov ymm4_3 L0x7fffffff6d26;
mov ymm4_4 L0x7fffffff6d28;
mov ymm4_5 L0x7fffffff6d2a;
mov ymm4_6 L0x7fffffff6d2c;
mov ymm4_7 L0x7fffffff6d2e;
mov ymm4_8 L0x7fffffff6d30;
mov ymm4_9 L0x7fffffff6d32;
mov ymm4_a L0x7fffffff6d34;
mov ymm4_b L0x7fffffff6d36;
mov ymm4_c L0x7fffffff6d38;
mov ymm4_d L0x7fffffff6d3a;
mov ymm4_e L0x7fffffff6d3c;
mov ymm4_f L0x7fffffff6d3e;
(* vmovdqa (%rdx),%ymm5                            #! EA = L0x7fffffff6b20; Value = 0x0000000000000000; PC = 0x555555558b9a *)
mov ymm5_0 L0x7fffffff6b20;
mov ymm5_1 L0x7fffffff6b22;
mov ymm5_2 L0x7fffffff6b24;
mov ymm5_3 L0x7fffffff6b26;
mov ymm5_4 L0x7fffffff6b28;
mov ymm5_5 L0x7fffffff6b2a;
mov ymm5_6 L0x7fffffff6b2c;
mov ymm5_7 L0x7fffffff6b2e;
mov ymm5_8 L0x7fffffff6b30;
mov ymm5_9 L0x7fffffff6b32;
mov ymm5_a L0x7fffffff6b34;
mov ymm5_b L0x7fffffff6b36;
mov ymm5_c L0x7fffffff6b38;
mov ymm5_d L0x7fffffff6b3a;
mov ymm5_e L0x7fffffff6b3c;
mov ymm5_f L0x7fffffff6b3e;
(* vmovdqa 0x20(%rsi),%ymm6                        #! EA = L0x7fffffff6d40; Value = 0x0000000000000000; PC = 0x555555558b9e *)
mov ymm6_0 L0x7fffffff6d40;
mov ymm6_1 L0x7fffffff6d42;
mov ymm6_2 L0x7fffffff6d44;
mov ymm6_3 L0x7fffffff6d46;
mov ymm6_4 L0x7fffffff6d48;
mov ymm6_5 L0x7fffffff6d4a;
mov ymm6_6 L0x7fffffff6d4c;
mov ymm6_7 L0x7fffffff6d4e;
mov ymm6_8 L0x7fffffff6d50;
mov ymm6_9 L0x7fffffff6d52;
mov ymm6_a L0x7fffffff6d54;
mov ymm6_b L0x7fffffff6d56;
mov ymm6_c L0x7fffffff6d58;
mov ymm6_d L0x7fffffff6d5a;
mov ymm6_e L0x7fffffff6d5c;
mov ymm6_f L0x7fffffff6d5e;
(* vmovdqa 0x20(%rdx),%ymm7                        #! EA = L0x7fffffff6b40; Value = 0x0000000000000000; PC = 0x555555558ba3 *)
mov ymm7_0 L0x7fffffff6b40;
mov ymm7_1 L0x7fffffff6b42;
mov ymm7_2 L0x7fffffff6b44;
mov ymm7_3 L0x7fffffff6b46;
mov ymm7_4 L0x7fffffff6b48;
mov ymm7_5 L0x7fffffff6b4a;
mov ymm7_6 L0x7fffffff6b4c;
mov ymm7_7 L0x7fffffff6b4e;
mov ymm7_8 L0x7fffffff6b50;
mov ymm7_9 L0x7fffffff6b52;
mov ymm7_a L0x7fffffff6b54;
mov ymm7_b L0x7fffffff6b56;
mov ymm7_c L0x7fffffff6b58;
mov ymm7_d L0x7fffffff6b5a;
mov ymm7_e L0x7fffffff6b5c;
mov ymm7_f L0x7fffffff6b5e;
(* vmovdqa 0x40(%rsi),%ymm8                        #! EA = L0x7fffffff6d60; Value = 0x0000000000000000; PC = 0x555555558ba8 *)
mov ymm8_0 L0x7fffffff6d60;
mov ymm8_1 L0x7fffffff6d62;
mov ymm8_2 L0x7fffffff6d64;
mov ymm8_3 L0x7fffffff6d66;
mov ymm8_4 L0x7fffffff6d68;
mov ymm8_5 L0x7fffffff6d6a;
mov ymm8_6 L0x7fffffff6d6c;
mov ymm8_7 L0x7fffffff6d6e;
mov ymm8_8 L0x7fffffff6d70;
mov ymm8_9 L0x7fffffff6d72;
mov ymm8_a L0x7fffffff6d74;
mov ymm8_b L0x7fffffff6d76;
mov ymm8_c L0x7fffffff6d78;
mov ymm8_d L0x7fffffff6d7a;
mov ymm8_e L0x7fffffff6d7c;
mov ymm8_f L0x7fffffff6d7e;
(* vmovdqa 0x40(%rdx),%ymm9                        #! EA = L0x7fffffff6b60; Value = 0x0000000000000000; PC = 0x555555558bad *)
mov ymm9_0 L0x7fffffff6b60;
mov ymm9_1 L0x7fffffff6b62;
mov ymm9_2 L0x7fffffff6b64;
mov ymm9_3 L0x7fffffff6b66;
mov ymm9_4 L0x7fffffff6b68;
mov ymm9_5 L0x7fffffff6b6a;
mov ymm9_6 L0x7fffffff6b6c;
mov ymm9_7 L0x7fffffff6b6e;
mov ymm9_8 L0x7fffffff6b70;
mov ymm9_9 L0x7fffffff6b72;
mov ymm9_a L0x7fffffff6b74;
mov ymm9_b L0x7fffffff6b76;
mov ymm9_c L0x7fffffff6b78;
mov ymm9_d L0x7fffffff6b7a;
mov ymm9_e L0x7fffffff6b7c;
mov ymm9_f L0x7fffffff6b7e;
(* vmovdqa 0x60(%rsi),%ymm10                       #! EA = L0x7fffffff6d80; Value = 0x0000000000000000; PC = 0x555555558bb2 *)
mov ymm10_0 L0x7fffffff6d80;
mov ymm10_1 L0x7fffffff6d82;
mov ymm10_2 L0x7fffffff6d84;
mov ymm10_3 L0x7fffffff6d86;
mov ymm10_4 L0x7fffffff6d88;
mov ymm10_5 L0x7fffffff6d8a;
mov ymm10_6 L0x7fffffff6d8c;
mov ymm10_7 L0x7fffffff6d8e;
mov ymm10_8 L0x7fffffff6d90;
mov ymm10_9 L0x7fffffff6d92;
mov ymm10_a L0x7fffffff6d94;
mov ymm10_b L0x7fffffff6d96;
mov ymm10_c L0x7fffffff6d98;
mov ymm10_d L0x7fffffff6d9a;
mov ymm10_e L0x7fffffff6d9c;
mov ymm10_f L0x7fffffff6d9e;
(* vmovdqa 0x60(%rdx),%ymm11                       #! EA = L0x7fffffff6b80; Value = 0x0000000000000000; PC = 0x555555558bb7 *)
mov ymm11_0 L0x7fffffff6b80;
mov ymm11_1 L0x7fffffff6b82;
mov ymm11_2 L0x7fffffff6b84;
mov ymm11_3 L0x7fffffff6b86;
mov ymm11_4 L0x7fffffff6b88;
mov ymm11_5 L0x7fffffff6b8a;
mov ymm11_6 L0x7fffffff6b8c;
mov ymm11_7 L0x7fffffff6b8e;
mov ymm11_8 L0x7fffffff6b90;
mov ymm11_9 L0x7fffffff6b92;
mov ymm11_a L0x7fffffff6b94;
mov ymm11_b L0x7fffffff6b96;
mov ymm11_c L0x7fffffff6b98;
mov ymm11_d L0x7fffffff6b9a;
mov ymm11_e L0x7fffffff6b9c;
mov ymm11_f L0x7fffffff6b9e;
(* vpmullw %ymm5,%ymm4,%ymm3                       #! PC = 0x555555558bbc *)
smull mulHymm4_0 mulL_0 ymm5_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm5_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm5_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm5_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm5_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm5_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm5_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm5_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm5_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm5_9 ymm4_9;
smull mulHymm4_a mulL_a ymm5_a ymm4_a;
smull mulHymm4_b mulL_b ymm5_b ymm4_b;
smull mulHymm4_c mulL_c ymm5_c ymm4_c;
smull mulHymm4_d mulL_d ymm5_d ymm4_d;
smull mulHymm4_e mulL_e ymm5_e ymm4_e;
smull mulHymm4_f mulL_f ymm5_f ymm4_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmulhw %ymm5,%ymm4,%ymm4                       #! PC = 0x555555558bc0 *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm5_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm5_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm5_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm5_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm5_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm5_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm5_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm5_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm5_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm5_9;
smull mulH_a mulLymm4_a ymm4_a ymm5_a;
smull mulH_b mulLymm4_b ymm4_b ymm5_b;
smull mulH_c mulLymm4_c ymm4_c ymm5_c;
smull mulH_d mulLymm4_d ymm4_d ymm5_d;
smull mulH_e mulLymm4_e ymm4_e ymm5_e;
smull mulH_f mulLymm4_f ymm4_f ymm5_f;
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
(* vpmullw %ymm7,%ymm6,%ymm5                       #! PC = 0x555555558bc4 *)
smull mulHymm6_0 mulL_0 ymm7_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm7_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm7_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm7_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm7_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm7_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm7_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm7_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm7_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm7_9 ymm6_9;
smull mulHymm6_a mulL_a ymm7_a ymm6_a;
smull mulHymm6_b mulL_b ymm7_b ymm6_b;
smull mulHymm6_c mulL_c ymm7_c ymm6_c;
smull mulHymm6_d mulL_d ymm7_d ymm6_d;
smull mulHymm6_e mulL_e ymm7_e ymm6_e;
smull mulHymm6_f mulL_f ymm7_f ymm6_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmulhw %ymm7,%ymm6,%ymm6                       #! PC = 0x555555558bc8 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm7_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm7_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm7_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm7_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm7_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm7_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm7_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm7_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm7_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm7_9;
smull mulH_a mulLymm6_a ymm6_a ymm7_a;
smull mulH_b mulLymm6_b ymm6_b ymm7_b;
smull mulH_c mulLymm6_c ymm6_c ymm7_c;
smull mulH_d mulLymm6_d ymm6_d ymm7_d;
smull mulH_e mulLymm6_e ymm6_e ymm7_e;
smull mulH_f mulLymm6_f ymm6_f ymm7_f;
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
(* vpmullw %ymm9,%ymm8,%ymm7                       #! PC = 0x555555558bcc *)
smull mulHymm8_0 mulL_0 ymm9_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm9_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm9_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm9_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm9_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm9_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm9_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm9_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm9_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm9_9 ymm8_9;
smull mulHymm8_a mulL_a ymm9_a ymm8_a;
smull mulHymm8_b mulL_b ymm9_b ymm8_b;
smull mulHymm8_c mulL_c ymm9_c ymm8_c;
smull mulHymm8_d mulL_d ymm9_d ymm8_d;
smull mulHymm8_e mulL_e ymm9_e ymm8_e;
smull mulHymm8_f mulL_f ymm9_f ymm8_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm9,%ymm8,%ymm8                       #! PC = 0x555555558bd1 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm9_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm9_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm9_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm9_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm9_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm9_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm9_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm9_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm9_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm9_9;
smull mulH_a mulLymm8_a ymm8_a ymm9_a;
smull mulH_b mulLymm8_b ymm8_b ymm9_b;
smull mulH_c mulLymm8_c ymm8_c ymm9_c;
smull mulH_d mulLymm8_d ymm8_d ymm9_d;
smull mulH_e mulLymm8_e ymm8_e ymm9_e;
smull mulH_f mulLymm8_f ymm8_f ymm9_f;
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
(* vpmullw %ymm11,%ymm10,%ymm9                     #! PC = 0x555555558bd6 *)
smull mulHymm10_0 mulL_0 ymm11_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm11_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm11_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm11_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm11_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm11_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm11_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm11_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm11_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm11_9 ymm10_9;
smull mulHymm10_a mulL_a ymm11_a ymm10_a;
smull mulHymm10_b mulL_b ymm11_b ymm10_b;
smull mulHymm10_c mulL_c ymm11_c ymm10_c;
smull mulHymm10_d mulL_d ymm11_d ymm10_d;
smull mulHymm10_e mulL_e ymm11_e ymm10_e;
smull mulHymm10_f mulL_f ymm11_f ymm10_f;
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm11,%ymm10,%ymm10                    #! PC = 0x555555558bdb *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm11_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm11_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm11_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm11_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm11_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm11_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm11_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm11_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm11_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm11_9;
smull mulH_a mulLymm10_a ymm10_a ymm11_a;
smull mulH_b mulLymm10_b ymm10_b ymm11_b;
smull mulH_c mulLymm10_c ymm10_c ymm11_c;
smull mulH_d mulLymm10_d ymm10_d ymm11_d;
smull mulH_e mulLymm10_e ymm10_e ymm11_e;
smull mulH_f mulLymm10_f ymm10_f ymm11_f;
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
(* vpmullw %ymm1,%ymm3,%ymm3                       #! PC = 0x555555558be0 *)
smull mulHymm3_0 mulL_0 ymm1_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm1_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm1_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm1_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm1_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm1_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm1_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm1_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm1_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm1_9 ymm3_9;
smull mulHymm3_a mulL_a ymm1_a ymm3_a;
smull mulHymm3_b mulL_b ymm1_b ymm3_b;
smull mulHymm3_c mulL_c ymm1_c ymm3_c;
smull mulHymm3_d mulL_d ymm1_d ymm3_d;
smull mulHymm3_e mulL_e ymm1_e ymm3_e;
smull mulHymm3_f mulL_f ymm1_f ymm3_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm5,%ymm5                       #! PC = 0x555555558be4 *)
smull mulHymm5_0 mulL_0 ymm1_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm1_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm1_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm1_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm1_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm1_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm1_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm1_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm1_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm1_9 ymm5_9;
smull mulHymm5_a mulL_a ymm1_a ymm5_a;
smull mulHymm5_b mulL_b ymm1_b ymm5_b;
smull mulHymm5_c mulL_c ymm1_c ymm5_c;
smull mulHymm5_d mulL_d ymm1_d ymm5_d;
smull mulHymm5_e mulL_e ymm1_e ymm5_e;
smull mulHymm5_f mulL_f ymm1_f ymm5_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm7,%ymm7                       #! PC = 0x555555558be8 *)
smull mulHymm7_0 mulL_0 ymm1_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm1_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm1_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm1_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm1_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm1_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm1_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm1_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm1_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm1_9 ymm7_9;
smull mulHymm7_a mulL_a ymm1_a ymm7_a;
smull mulHymm7_b mulL_b ymm1_b ymm7_b;
smull mulHymm7_c mulL_c ymm1_c ymm7_c;
smull mulHymm7_d mulL_d ymm1_d ymm7_d;
smull mulHymm7_e mulL_e ymm1_e ymm7_e;
smull mulHymm7_f mulL_f ymm1_f ymm7_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm9,%ymm9                       #! PC = 0x555555558bec *)
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
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm0,%ymm3,%ymm3                       #! PC = 0x555555558bf0 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm0_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm0_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm0_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm0_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm0_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm0_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm0_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm0_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm0_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm0_9;
smull mulH_a mulLymm3_a ymm3_a ymm0_a;
smull mulH_b mulLymm3_b ymm3_b ymm0_b;
smull mulH_c mulLymm3_c ymm3_c ymm0_c;
smull mulH_d mulLymm3_d ymm3_d ymm0_d;
smull mulH_e mulLymm3_e ymm3_e ymm0_e;
smull mulH_f mulLymm3_f ymm3_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x555555558bf4 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm0_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm0_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm0_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm0_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm0_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm0_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm0_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm0_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm0_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm0_9;
smull mulH_a mulLymm5_a ymm5_a ymm0_a;
smull mulH_b mulLymm5_b ymm5_b ymm0_b;
smull mulH_c mulLymm5_c ymm5_c ymm0_c;
smull mulH_d mulLymm5_d ymm5_d ymm0_d;
smull mulH_e mulLymm5_e ymm5_e ymm0_e;
smull mulH_f mulLymm5_f ymm5_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558bf8 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x555555558bfc *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm0_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm0_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm0_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm0_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm0_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm0_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm0_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm0_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm0_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm0_9;
smull mulH_a mulLymm9_a ymm9_a ymm0_a;
smull mulH_b mulLymm9_b ymm9_b ymm0_b;
smull mulH_c mulLymm9_c ymm9_c ymm0_c;
smull mulH_d mulLymm9_d ymm9_d ymm0_d;
smull mulH_e mulLymm9_e ymm9_e ymm0_e;
smull mulH_f mulLymm9_f ymm9_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
];
assume and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
] && true;
(* vpsubw %ymm3,%ymm4,%ymm3                        #! PC = 0x555555558c00 *)
sub ymm3_0 ymm4_0 ymm3_0;
sub ymm3_1 ymm4_1 ymm3_1;
sub ymm3_2 ymm4_2 ymm3_2;
sub ymm3_3 ymm4_3 ymm3_3;
sub ymm3_4 ymm4_4 ymm3_4;
sub ymm3_5 ymm4_5 ymm3_5;
sub ymm3_6 ymm4_6 ymm3_6;
sub ymm3_7 ymm4_7 ymm3_7;
sub ymm3_8 ymm4_8 ymm3_8;
sub ymm3_9 ymm4_9 ymm3_9;
sub ymm3_a ymm4_a ymm3_a;
sub ymm3_b ymm4_b ymm3_b;
sub ymm3_c ymm4_c ymm3_c;
sub ymm3_d ymm4_d ymm3_d;
sub ymm3_e ymm4_e ymm3_e;
sub ymm3_f ymm4_f ymm3_f;
(* vpsubw %ymm5,%ymm6,%ymm4                        #! PC = 0x555555558c04 *)
sub ymm4_0 ymm6_0 ymm5_0;
sub ymm4_1 ymm6_1 ymm5_1;
sub ymm4_2 ymm6_2 ymm5_2;
sub ymm4_3 ymm6_3 ymm5_3;
sub ymm4_4 ymm6_4 ymm5_4;
sub ymm4_5 ymm6_5 ymm5_5;
sub ymm4_6 ymm6_6 ymm5_6;
sub ymm4_7 ymm6_7 ymm5_7;
sub ymm4_8 ymm6_8 ymm5_8;
sub ymm4_9 ymm6_9 ymm5_9;
sub ymm4_a ymm6_a ymm5_a;
sub ymm4_b ymm6_b ymm5_b;
sub ymm4_c ymm6_c ymm5_c;
sub ymm4_d ymm6_d ymm5_d;
sub ymm4_e ymm6_e ymm5_e;
sub ymm4_f ymm6_f ymm5_f;
(* vpsubw %ymm7,%ymm8,%ymm5                        #! PC = 0x555555558c08 *)
sub ymm5_0 ymm8_0 ymm7_0;
sub ymm5_1 ymm8_1 ymm7_1;
sub ymm5_2 ymm8_2 ymm7_2;
sub ymm5_3 ymm8_3 ymm7_3;
sub ymm5_4 ymm8_4 ymm7_4;
sub ymm5_5 ymm8_5 ymm7_5;
sub ymm5_6 ymm8_6 ymm7_6;
sub ymm5_7 ymm8_7 ymm7_7;
sub ymm5_8 ymm8_8 ymm7_8;
sub ymm5_9 ymm8_9 ymm7_9;
sub ymm5_a ymm8_a ymm7_a;
sub ymm5_b ymm8_b ymm7_b;
sub ymm5_c ymm8_c ymm7_c;
sub ymm5_d ymm8_d ymm7_d;
sub ymm5_e ymm8_e ymm7_e;
sub ymm5_f ymm8_f ymm7_f;
(* vpsubw %ymm9,%ymm10,%ymm6                       #! PC = 0x555555558c0c *)
sub ymm6_0 ymm10_0 ymm9_0;
sub ymm6_1 ymm10_1 ymm9_1;
sub ymm6_2 ymm10_2 ymm9_2;
sub ymm6_3 ymm10_3 ymm9_3;
sub ymm6_4 ymm10_4 ymm9_4;
sub ymm6_5 ymm10_5 ymm9_5;
sub ymm6_6 ymm10_6 ymm9_6;
sub ymm6_7 ymm10_7 ymm9_7;
sub ymm6_8 ymm10_8 ymm9_8;
sub ymm6_9 ymm10_9 ymm9_9;
sub ymm6_a ymm10_a ymm9_a;
sub ymm6_b ymm10_b ymm9_b;
sub ymm6_c ymm10_c ymm9_c;
sub ymm6_d ymm10_d ymm9_d;
sub ymm6_e ymm10_e ymm9_e;
sub ymm6_f ymm10_f ymm9_f;
(* vpmullw %ymm14,%ymm3,%ymm7                      #! PC = 0x555555558c11 *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x555555558c16 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558c1b *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
];
assume and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
] && true;
(* vpsubw %ymm7,%ymm3,%ymm3                        #! PC = 0x555555558c1f *)
sub ymm3_0 ymm3_0 ymm7_0;
sub ymm3_1 ymm3_1 ymm7_1;
sub ymm3_2 ymm3_2 ymm7_2;
sub ymm3_3 ymm3_3 ymm7_3;
sub ymm3_4 ymm3_4 ymm7_4;
sub ymm3_5 ymm3_5 ymm7_5;
sub ymm3_6 ymm3_6 ymm7_6;
sub ymm3_7 ymm3_7 ymm7_7;
sub ymm3_8 ymm3_8 ymm7_8;
sub ymm3_9 ymm3_9 ymm7_9;
sub ymm3_a ymm3_a ymm7_a;
sub ymm3_b ymm3_b ymm7_b;
sub ymm3_c ymm3_c ymm7_c;
sub ymm3_d ymm3_d ymm7_d;
sub ymm3_e ymm3_e ymm7_e;
sub ymm3_f ymm3_f ymm7_f;
(* vpmullw %ymm14,%ymm4,%ymm7                      #! PC = 0x555555558c23 *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x555555558c28 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558c2d *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
];
assume and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
] && true;
(* vpsubw %ymm7,%ymm4,%ymm4                        #! PC = 0x555555558c31 *)
sub ymm4_0 ymm4_0 ymm7_0;
sub ymm4_1 ymm4_1 ymm7_1;
sub ymm4_2 ymm4_2 ymm7_2;
sub ymm4_3 ymm4_3 ymm7_3;
sub ymm4_4 ymm4_4 ymm7_4;
sub ymm4_5 ymm4_5 ymm7_5;
sub ymm4_6 ymm4_6 ymm7_6;
sub ymm4_7 ymm4_7 ymm7_7;
sub ymm4_8 ymm4_8 ymm7_8;
sub ymm4_9 ymm4_9 ymm7_9;
sub ymm4_a ymm4_a ymm7_a;
sub ymm4_b ymm4_b ymm7_b;
sub ymm4_c ymm4_c ymm7_c;
sub ymm4_d ymm4_d ymm7_d;
sub ymm4_e ymm4_e ymm7_e;
sub ymm4_f ymm4_f ymm7_f;
(* vpmullw %ymm14,%ymm5,%ymm7                      #! PC = 0x555555558c35 *)
smull mulHymm5_0 mulL_0 ymm14_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm14_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm14_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm14_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm14_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm14_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm14_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm14_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm14_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm14_9 ymm5_9;
smull mulHymm5_a mulL_a ymm14_a ymm5_a;
smull mulHymm5_b mulL_b ymm14_b ymm5_b;
smull mulHymm5_c mulL_c ymm14_c ymm5_c;
smull mulHymm5_d mulL_d ymm14_d ymm5_d;
smull mulHymm5_e mulL_e ymm14_e ymm5_e;
smull mulHymm5_f mulL_f ymm14_f ymm5_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm5,%ymm5                      #! PC = 0x555555558c3a *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm15_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm15_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm15_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm15_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm15_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm15_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm15_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm15_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm15_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm15_9;
smull mulH_a mulLymm5_a ymm5_a ymm15_a;
smull mulH_b mulLymm5_b ymm5_b ymm15_b;
smull mulH_c mulLymm5_c ymm5_c ymm15_c;
smull mulH_d mulLymm5_d ymm5_d ymm15_d;
smull mulH_e mulLymm5_e ymm5_e ymm15_e;
smull mulH_f mulLymm5_f ymm5_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558c3f *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
];
assume and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
] && true;
(* vpsubw %ymm7,%ymm5,%ymm5                        #! PC = 0x555555558c43 *)
sub ymm5_0 ymm5_0 ymm7_0;
sub ymm5_1 ymm5_1 ymm7_1;
sub ymm5_2 ymm5_2 ymm7_2;
sub ymm5_3 ymm5_3 ymm7_3;
sub ymm5_4 ymm5_4 ymm7_4;
sub ymm5_5 ymm5_5 ymm7_5;
sub ymm5_6 ymm5_6 ymm7_6;
sub ymm5_7 ymm5_7 ymm7_7;
sub ymm5_8 ymm5_8 ymm7_8;
sub ymm5_9 ymm5_9 ymm7_9;
sub ymm5_a ymm5_a ymm7_a;
sub ymm5_b ymm5_b ymm7_b;
sub ymm5_c ymm5_c ymm7_c;
sub ymm5_d ymm5_d ymm7_d;
sub ymm5_e ymm5_e ymm7_e;
sub ymm5_f ymm5_f ymm7_f;
(* vpmullw %ymm14,%ymm6,%ymm7                      #! PC = 0x555555558c47 *)
smull mulHymm6_0 mulL_0 ymm14_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm14_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm14_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm14_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm14_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm14_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm14_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm14_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm14_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm14_9 ymm6_9;
smull mulHymm6_a mulL_a ymm14_a ymm6_a;
smull mulHymm6_b mulL_b ymm14_b ymm6_b;
smull mulHymm6_c mulL_c ymm14_c ymm6_c;
smull mulHymm6_d mulL_d ymm14_d ymm6_d;
smull mulHymm6_e mulL_e ymm14_e ymm6_e;
smull mulHymm6_f mulL_f ymm14_f ymm6_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm6,%ymm6                      #! PC = 0x555555558c4c *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm15_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm15_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm15_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm15_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm15_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm15_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm15_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm15_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm15_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm15_9;
smull mulH_a mulLymm6_a ymm6_a ymm15_a;
smull mulH_b mulLymm6_b ymm6_b ymm15_b;
smull mulH_c mulLymm6_c ymm6_c ymm15_c;
smull mulH_d mulLymm6_d ymm6_d ymm15_d;
smull mulH_e mulLymm6_e ymm6_e ymm15_e;
smull mulH_f mulLymm6_f ymm6_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558c51 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
];
assume and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
] && true;
(* vpsubw %ymm7,%ymm6,%ymm6                        #! PC = 0x555555558c55 *)
sub ymm6_0 ymm6_0 ymm7_0;
sub ymm6_1 ymm6_1 ymm7_1;
sub ymm6_2 ymm6_2 ymm7_2;
sub ymm6_3 ymm6_3 ymm7_3;
sub ymm6_4 ymm6_4 ymm7_4;
sub ymm6_5 ymm6_5 ymm7_5;
sub ymm6_6 ymm6_6 ymm7_6;
sub ymm6_7 ymm6_7 ymm7_7;
sub ymm6_8 ymm6_8 ymm7_8;
sub ymm6_9 ymm6_9 ymm7_9;
sub ymm6_a ymm6_a ymm7_a;
sub ymm6_b ymm6_b ymm7_b;
sub ymm6_c ymm6_c ymm7_c;
sub ymm6_d ymm6_d ymm7_d;
sub ymm6_e ymm6_e ymm7_e;
sub ymm6_f ymm6_f ymm7_f;
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffff6d20; PC = 0x555555558c59 *)
mov L0x7fffffff6d20 ymm3_0;
mov L0x7fffffff6d22 ymm3_1;
mov L0x7fffffff6d24 ymm3_2;
mov L0x7fffffff6d26 ymm3_3;
mov L0x7fffffff6d28 ymm3_4;
mov L0x7fffffff6d2a ymm3_5;
mov L0x7fffffff6d2c ymm3_6;
mov L0x7fffffff6d2e ymm3_7;
mov L0x7fffffff6d30 ymm3_8;
mov L0x7fffffff6d32 ymm3_9;
mov L0x7fffffff6d34 ymm3_a;
mov L0x7fffffff6d36 ymm3_b;
mov L0x7fffffff6d38 ymm3_c;
mov L0x7fffffff6d3a ymm3_d;
mov L0x7fffffff6d3c ymm3_e;
mov L0x7fffffff6d3e ymm3_f;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffff6d40; PC = 0x555555558c5d *)
mov L0x7fffffff6d40 ymm4_0;
mov L0x7fffffff6d42 ymm4_1;
mov L0x7fffffff6d44 ymm4_2;
mov L0x7fffffff6d46 ymm4_3;
mov L0x7fffffff6d48 ymm4_4;
mov L0x7fffffff6d4a ymm4_5;
mov L0x7fffffff6d4c ymm4_6;
mov L0x7fffffff6d4e ymm4_7;
mov L0x7fffffff6d50 ymm4_8;
mov L0x7fffffff6d52 ymm4_9;
mov L0x7fffffff6d54 ymm4_a;
mov L0x7fffffff6d56 ymm4_b;
mov L0x7fffffff6d58 ymm4_c;
mov L0x7fffffff6d5a ymm4_d;
mov L0x7fffffff6d5c ymm4_e;
mov L0x7fffffff6d5e ymm4_f;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffff6d60; PC = 0x555555558c62 *)
mov L0x7fffffff6d60 ymm5_0;
mov L0x7fffffff6d62 ymm5_1;
mov L0x7fffffff6d64 ymm5_2;
mov L0x7fffffff6d66 ymm5_3;
mov L0x7fffffff6d68 ymm5_4;
mov L0x7fffffff6d6a ymm5_5;
mov L0x7fffffff6d6c ymm5_6;
mov L0x7fffffff6d6e ymm5_7;
mov L0x7fffffff6d70 ymm5_8;
mov L0x7fffffff6d72 ymm5_9;
mov L0x7fffffff6d74 ymm5_a;
mov L0x7fffffff6d76 ymm5_b;
mov L0x7fffffff6d78 ymm5_c;
mov L0x7fffffff6d7a ymm5_d;
mov L0x7fffffff6d7c ymm5_e;
mov L0x7fffffff6d7e ymm5_f;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffff6d80; PC = 0x555555558c67 *)
mov L0x7fffffff6d80 ymm6_0;
mov L0x7fffffff6d82 ymm6_1;
mov L0x7fffffff6d84 ymm6_2;
mov L0x7fffffff6d86 ymm6_3;
mov L0x7fffffff6d88 ymm6_4;
mov L0x7fffffff6d8a ymm6_5;
mov L0x7fffffff6d8c ymm6_6;
mov L0x7fffffff6d8e ymm6_7;
mov L0x7fffffff6d90 ymm6_8;
mov L0x7fffffff6d92 ymm6_9;
mov L0x7fffffff6d94 ymm6_a;
mov L0x7fffffff6d96 ymm6_b;
mov L0x7fffffff6d98 ymm6_c;
mov L0x7fffffff6d9a ymm6_d;
mov L0x7fffffff6d9c ymm6_e;
mov L0x7fffffff6d9e ymm6_f;
(* vmovdqa 0x80(%rsi),%ymm4                        #! EA = L0x7fffffff6da0; Value = 0x0000000000000000; PC = 0x555555558c6c *)
mov ymm4_0 L0x7fffffff6da0;
mov ymm4_1 L0x7fffffff6da2;
mov ymm4_2 L0x7fffffff6da4;
mov ymm4_3 L0x7fffffff6da6;
mov ymm4_4 L0x7fffffff6da8;
mov ymm4_5 L0x7fffffff6daa;
mov ymm4_6 L0x7fffffff6dac;
mov ymm4_7 L0x7fffffff6dae;
mov ymm4_8 L0x7fffffff6db0;
mov ymm4_9 L0x7fffffff6db2;
mov ymm4_a L0x7fffffff6db4;
mov ymm4_b L0x7fffffff6db6;
mov ymm4_c L0x7fffffff6db8;
mov ymm4_d L0x7fffffff6dba;
mov ymm4_e L0x7fffffff6dbc;
mov ymm4_f L0x7fffffff6dbe;
(* vmovdqa 0x80(%rdx),%ymm5                        #! EA = L0x7fffffff6ba0; Value = 0x0000000000000000; PC = 0x555555558c74 *)
mov ymm5_0 L0x7fffffff6ba0;
mov ymm5_1 L0x7fffffff6ba2;
mov ymm5_2 L0x7fffffff6ba4;
mov ymm5_3 L0x7fffffff6ba6;
mov ymm5_4 L0x7fffffff6ba8;
mov ymm5_5 L0x7fffffff6baa;
mov ymm5_6 L0x7fffffff6bac;
mov ymm5_7 L0x7fffffff6bae;
mov ymm5_8 L0x7fffffff6bb0;
mov ymm5_9 L0x7fffffff6bb2;
mov ymm5_a L0x7fffffff6bb4;
mov ymm5_b L0x7fffffff6bb6;
mov ymm5_c L0x7fffffff6bb8;
mov ymm5_d L0x7fffffff6bba;
mov ymm5_e L0x7fffffff6bbc;
mov ymm5_f L0x7fffffff6bbe;
(* vmovdqa 0xa0(%rsi),%ymm6                        #! EA = L0x7fffffff6dc0; Value = 0x0000000000000000; PC = 0x555555558c7c *)
mov ymm6_0 L0x7fffffff6dc0;
mov ymm6_1 L0x7fffffff6dc2;
mov ymm6_2 L0x7fffffff6dc4;
mov ymm6_3 L0x7fffffff6dc6;
mov ymm6_4 L0x7fffffff6dc8;
mov ymm6_5 L0x7fffffff6dca;
mov ymm6_6 L0x7fffffff6dcc;
mov ymm6_7 L0x7fffffff6dce;
mov ymm6_8 L0x7fffffff6dd0;
mov ymm6_9 L0x7fffffff6dd2;
mov ymm6_a L0x7fffffff6dd4;
mov ymm6_b L0x7fffffff6dd6;
mov ymm6_c L0x7fffffff6dd8;
mov ymm6_d L0x7fffffff6dda;
mov ymm6_e L0x7fffffff6ddc;
mov ymm6_f L0x7fffffff6dde;
(* vmovdqa 0xa0(%rdx),%ymm7                        #! EA = L0x7fffffff6bc0; Value = 0x0000000000000000; PC = 0x555555558c84 *)
mov ymm7_0 L0x7fffffff6bc0;
mov ymm7_1 L0x7fffffff6bc2;
mov ymm7_2 L0x7fffffff6bc4;
mov ymm7_3 L0x7fffffff6bc6;
mov ymm7_4 L0x7fffffff6bc8;
mov ymm7_5 L0x7fffffff6bca;
mov ymm7_6 L0x7fffffff6bcc;
mov ymm7_7 L0x7fffffff6bce;
mov ymm7_8 L0x7fffffff6bd0;
mov ymm7_9 L0x7fffffff6bd2;
mov ymm7_a L0x7fffffff6bd4;
mov ymm7_b L0x7fffffff6bd6;
mov ymm7_c L0x7fffffff6bd8;
mov ymm7_d L0x7fffffff6bda;
mov ymm7_e L0x7fffffff6bdc;
mov ymm7_f L0x7fffffff6bde;
(* vmovdqa 0xc0(%rsi),%ymm8                        #! EA = L0x7fffffff6de0; Value = 0x0000000000000000; PC = 0x555555558c8c *)
mov ymm8_0 L0x7fffffff6de0;
mov ymm8_1 L0x7fffffff6de2;
mov ymm8_2 L0x7fffffff6de4;
mov ymm8_3 L0x7fffffff6de6;
mov ymm8_4 L0x7fffffff6de8;
mov ymm8_5 L0x7fffffff6dea;
mov ymm8_6 L0x7fffffff6dec;
mov ymm8_7 L0x7fffffff6dee;
mov ymm8_8 L0x7fffffff6df0;
mov ymm8_9 L0x7fffffff6df2;
mov ymm8_a L0x7fffffff6df4;
mov ymm8_b L0x7fffffff6df6;
mov ymm8_c L0x7fffffff6df8;
mov ymm8_d L0x7fffffff6dfa;
mov ymm8_e L0x7fffffff6dfc;
mov ymm8_f L0x7fffffff6dfe;
(* vmovdqa 0xc0(%rdx),%ymm9                        #! EA = L0x7fffffff6be0; Value = 0x0000000000000000; PC = 0x555555558c94 *)
mov ymm9_0 L0x7fffffff6be0;
mov ymm9_1 L0x7fffffff6be2;
mov ymm9_2 L0x7fffffff6be4;
mov ymm9_3 L0x7fffffff6be6;
mov ymm9_4 L0x7fffffff6be8;
mov ymm9_5 L0x7fffffff6bea;
mov ymm9_6 L0x7fffffff6bec;
mov ymm9_7 L0x7fffffff6bee;
mov ymm9_8 L0x7fffffff6bf0;
mov ymm9_9 L0x7fffffff6bf2;
mov ymm9_a L0x7fffffff6bf4;
mov ymm9_b L0x7fffffff6bf6;
mov ymm9_c L0x7fffffff6bf8;
mov ymm9_d L0x7fffffff6bfa;
mov ymm9_e L0x7fffffff6bfc;
mov ymm9_f L0x7fffffff6bfe;
(* vmovdqa 0xe0(%rsi),%ymm10                       #! EA = L0x7fffffff6e00; Value = 0x0000000000000000; PC = 0x555555558c9c *)
mov ymm10_0 L0x7fffffff6e00;
mov ymm10_1 L0x7fffffff6e02;
mov ymm10_2 L0x7fffffff6e04;
mov ymm10_3 L0x7fffffff6e06;
mov ymm10_4 L0x7fffffff6e08;
mov ymm10_5 L0x7fffffff6e0a;
mov ymm10_6 L0x7fffffff6e0c;
mov ymm10_7 L0x7fffffff6e0e;
mov ymm10_8 L0x7fffffff6e10;
mov ymm10_9 L0x7fffffff6e12;
mov ymm10_a L0x7fffffff6e14;
mov ymm10_b L0x7fffffff6e16;
mov ymm10_c L0x7fffffff6e18;
mov ymm10_d L0x7fffffff6e1a;
mov ymm10_e L0x7fffffff6e1c;
mov ymm10_f L0x7fffffff6e1e;
(* vmovdqa 0xe0(%rdx),%ymm11                       #! EA = L0x7fffffff6c00; Value = 0x0000000000000000; PC = 0x555555558ca4 *)
mov ymm11_0 L0x7fffffff6c00;
mov ymm11_1 L0x7fffffff6c02;
mov ymm11_2 L0x7fffffff6c04;
mov ymm11_3 L0x7fffffff6c06;
mov ymm11_4 L0x7fffffff6c08;
mov ymm11_5 L0x7fffffff6c0a;
mov ymm11_6 L0x7fffffff6c0c;
mov ymm11_7 L0x7fffffff6c0e;
mov ymm11_8 L0x7fffffff6c10;
mov ymm11_9 L0x7fffffff6c12;
mov ymm11_a L0x7fffffff6c14;
mov ymm11_b L0x7fffffff6c16;
mov ymm11_c L0x7fffffff6c18;
mov ymm11_d L0x7fffffff6c1a;
mov ymm11_e L0x7fffffff6c1c;
mov ymm11_f L0x7fffffff6c1e;
(* vpmullw %ymm5,%ymm4,%ymm3                       #! PC = 0x555555558cac *)
smull mulHymm4_0 mulL_0 ymm5_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm5_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm5_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm5_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm5_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm5_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm5_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm5_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm5_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm5_9 ymm4_9;
smull mulHymm4_a mulL_a ymm5_a ymm4_a;
smull mulHymm4_b mulL_b ymm5_b ymm4_b;
smull mulHymm4_c mulL_c ymm5_c ymm4_c;
smull mulHymm4_d mulL_d ymm5_d ymm4_d;
smull mulHymm4_e mulL_e ymm5_e ymm4_e;
smull mulHymm4_f mulL_f ymm5_f ymm4_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmulhw %ymm5,%ymm4,%ymm4                       #! PC = 0x555555558cb0 *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm5_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm5_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm5_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm5_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm5_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm5_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm5_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm5_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm5_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm5_9;
smull mulH_a mulLymm4_a ymm4_a ymm5_a;
smull mulH_b mulLymm4_b ymm4_b ymm5_b;
smull mulH_c mulLymm4_c ymm4_c ymm5_c;
smull mulH_d mulLymm4_d ymm4_d ymm5_d;
smull mulH_e mulLymm4_e ymm4_e ymm5_e;
smull mulH_f mulLymm4_f ymm4_f ymm5_f;
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
(* vpmullw %ymm7,%ymm6,%ymm5                       #! PC = 0x555555558cb4 *)
smull mulHymm6_0 mulL_0 ymm7_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm7_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm7_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm7_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm7_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm7_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm7_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm7_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm7_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm7_9 ymm6_9;
smull mulHymm6_a mulL_a ymm7_a ymm6_a;
smull mulHymm6_b mulL_b ymm7_b ymm6_b;
smull mulHymm6_c mulL_c ymm7_c ymm6_c;
smull mulHymm6_d mulL_d ymm7_d ymm6_d;
smull mulHymm6_e mulL_e ymm7_e ymm6_e;
smull mulHymm6_f mulL_f ymm7_f ymm6_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmulhw %ymm7,%ymm6,%ymm6                       #! PC = 0x555555558cb8 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm7_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm7_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm7_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm7_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm7_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm7_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm7_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm7_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm7_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm7_9;
smull mulH_a mulLymm6_a ymm6_a ymm7_a;
smull mulH_b mulLymm6_b ymm6_b ymm7_b;
smull mulH_c mulLymm6_c ymm6_c ymm7_c;
smull mulH_d mulLymm6_d ymm6_d ymm7_d;
smull mulH_e mulLymm6_e ymm6_e ymm7_e;
smull mulH_f mulLymm6_f ymm6_f ymm7_f;
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
(* vpmullw %ymm9,%ymm8,%ymm7                       #! PC = 0x555555558cbc *)
smull mulHymm8_0 mulL_0 ymm9_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm9_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm9_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm9_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm9_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm9_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm9_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm9_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm9_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm9_9 ymm8_9;
smull mulHymm8_a mulL_a ymm9_a ymm8_a;
smull mulHymm8_b mulL_b ymm9_b ymm8_b;
smull mulHymm8_c mulL_c ymm9_c ymm8_c;
smull mulHymm8_d mulL_d ymm9_d ymm8_d;
smull mulHymm8_e mulL_e ymm9_e ymm8_e;
smull mulHymm8_f mulL_f ymm9_f ymm8_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm9,%ymm8,%ymm8                       #! PC = 0x555555558cc1 *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm9_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm9_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm9_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm9_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm9_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm9_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm9_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm9_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm9_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm9_9;
smull mulH_a mulLymm8_a ymm8_a ymm9_a;
smull mulH_b mulLymm8_b ymm8_b ymm9_b;
smull mulH_c mulLymm8_c ymm8_c ymm9_c;
smull mulH_d mulLymm8_d ymm8_d ymm9_d;
smull mulH_e mulLymm8_e ymm8_e ymm9_e;
smull mulH_f mulLymm8_f ymm8_f ymm9_f;
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
(* vpmullw %ymm11,%ymm10,%ymm9                     #! PC = 0x555555558cc6 *)
smull mulHymm10_0 mulL_0 ymm11_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm11_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm11_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm11_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm11_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm11_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm11_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm11_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm11_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm11_9 ymm10_9;
smull mulHymm10_a mulL_a ymm11_a ymm10_a;
smull mulHymm10_b mulL_b ymm11_b ymm10_b;
smull mulHymm10_c mulL_c ymm11_c ymm10_c;
smull mulHymm10_d mulL_d ymm11_d ymm10_d;
smull mulHymm10_e mulL_e ymm11_e ymm10_e;
smull mulHymm10_f mulL_f ymm11_f ymm10_f;
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm11,%ymm10,%ymm10                    #! PC = 0x555555558ccb *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm11_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm11_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm11_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm11_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm11_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm11_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm11_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm11_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm11_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm11_9;
smull mulH_a mulLymm10_a ymm10_a ymm11_a;
smull mulH_b mulLymm10_b ymm10_b ymm11_b;
smull mulH_c mulLymm10_c ymm10_c ymm11_c;
smull mulH_d mulLymm10_d ymm10_d ymm11_d;
smull mulH_e mulLymm10_e ymm10_e ymm11_e;
smull mulH_f mulLymm10_f ymm10_f ymm11_f;
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
(* vpmullw %ymm1,%ymm3,%ymm3                       #! PC = 0x555555558cd0 *)
smull mulHymm3_0 mulL_0 ymm1_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm1_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm1_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm1_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm1_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm1_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm1_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm1_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm1_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm1_9 ymm3_9;
smull mulHymm3_a mulL_a ymm1_a ymm3_a;
smull mulHymm3_b mulL_b ymm1_b ymm3_b;
smull mulHymm3_c mulL_c ymm1_c ymm3_c;
smull mulHymm3_d mulL_d ymm1_d ymm3_d;
smull mulHymm3_e mulL_e ymm1_e ymm3_e;
smull mulHymm3_f mulL_f ymm1_f ymm3_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm5,%ymm5                       #! PC = 0x555555558cd4 *)
smull mulHymm5_0 mulL_0 ymm1_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm1_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm1_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm1_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm1_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm1_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm1_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm1_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm1_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm1_9 ymm5_9;
smull mulHymm5_a mulL_a ymm1_a ymm5_a;
smull mulHymm5_b mulL_b ymm1_b ymm5_b;
smull mulHymm5_c mulL_c ymm1_c ymm5_c;
smull mulHymm5_d mulL_d ymm1_d ymm5_d;
smull mulHymm5_e mulL_e ymm1_e ymm5_e;
smull mulHymm5_f mulL_f ymm1_f ymm5_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm7,%ymm7                       #! PC = 0x555555558cd8 *)
smull mulHymm7_0 mulL_0 ymm1_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm1_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm1_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm1_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm1_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm1_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm1_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm1_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm1_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm1_9 ymm7_9;
smull mulHymm7_a mulL_a ymm1_a ymm7_a;
smull mulHymm7_b mulL_b ymm1_b ymm7_b;
smull mulHymm7_c mulL_c ymm1_c ymm7_c;
smull mulHymm7_d mulL_d ymm1_d ymm7_d;
smull mulHymm7_e mulL_e ymm1_e ymm7_e;
smull mulHymm7_f mulL_f ymm1_f ymm7_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm9,%ymm9                       #! PC = 0x555555558cdc *)
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
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm0,%ymm3,%ymm3                       #! PC = 0x555555558ce0 *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm0_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm0_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm0_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm0_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm0_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm0_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm0_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm0_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm0_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm0_9;
smull mulH_a mulLymm3_a ymm3_a ymm0_a;
smull mulH_b mulLymm3_b ymm3_b ymm0_b;
smull mulH_c mulLymm3_c ymm3_c ymm0_c;
smull mulH_d mulLymm3_d ymm3_d ymm0_d;
smull mulH_e mulLymm3_e ymm3_e ymm0_e;
smull mulH_f mulLymm3_f ymm3_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x555555558ce4 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm0_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm0_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm0_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm0_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm0_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm0_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm0_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm0_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm0_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm0_9;
smull mulH_a mulLymm5_a ymm5_a ymm0_a;
smull mulH_b mulLymm5_b ymm5_b ymm0_b;
smull mulH_c mulLymm5_c ymm5_c ymm0_c;
smull mulH_d mulLymm5_d ymm5_d ymm0_d;
smull mulH_e mulLymm5_e ymm5_e ymm0_e;
smull mulH_f mulLymm5_f ymm5_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558ce8 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x555555558cec *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm0_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm0_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm0_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm0_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm0_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm0_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm0_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm0_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm0_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm0_9;
smull mulH_a mulLymm9_a ymm9_a ymm0_a;
smull mulH_b mulLymm9_b ymm9_b ymm0_b;
smull mulH_c mulLymm9_c ymm9_c ymm0_c;
smull mulH_d mulLymm9_d ymm9_d ymm0_d;
smull mulH_e mulLymm9_e ymm9_e ymm0_e;
smull mulH_f mulLymm9_f ymm9_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
];
assume and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
] && true;
(* vpsubw %ymm3,%ymm4,%ymm3                        #! PC = 0x555555558cf0 *)
sub ymm3_0 ymm4_0 ymm3_0;
sub ymm3_1 ymm4_1 ymm3_1;
sub ymm3_2 ymm4_2 ymm3_2;
sub ymm3_3 ymm4_3 ymm3_3;
sub ymm3_4 ymm4_4 ymm3_4;
sub ymm3_5 ymm4_5 ymm3_5;
sub ymm3_6 ymm4_6 ymm3_6;
sub ymm3_7 ymm4_7 ymm3_7;
sub ymm3_8 ymm4_8 ymm3_8;
sub ymm3_9 ymm4_9 ymm3_9;
sub ymm3_a ymm4_a ymm3_a;
sub ymm3_b ymm4_b ymm3_b;
sub ymm3_c ymm4_c ymm3_c;
sub ymm3_d ymm4_d ymm3_d;
sub ymm3_e ymm4_e ymm3_e;
sub ymm3_f ymm4_f ymm3_f;
(* vpsubw %ymm5,%ymm6,%ymm4                        #! PC = 0x555555558cf4 *)
sub ymm4_0 ymm6_0 ymm5_0;
sub ymm4_1 ymm6_1 ymm5_1;
sub ymm4_2 ymm6_2 ymm5_2;
sub ymm4_3 ymm6_3 ymm5_3;
sub ymm4_4 ymm6_4 ymm5_4;
sub ymm4_5 ymm6_5 ymm5_5;
sub ymm4_6 ymm6_6 ymm5_6;
sub ymm4_7 ymm6_7 ymm5_7;
sub ymm4_8 ymm6_8 ymm5_8;
sub ymm4_9 ymm6_9 ymm5_9;
sub ymm4_a ymm6_a ymm5_a;
sub ymm4_b ymm6_b ymm5_b;
sub ymm4_c ymm6_c ymm5_c;
sub ymm4_d ymm6_d ymm5_d;
sub ymm4_e ymm6_e ymm5_e;
sub ymm4_f ymm6_f ymm5_f;
(* vpsubw %ymm7,%ymm8,%ymm5                        #! PC = 0x555555558cf8 *)
sub ymm5_0 ymm8_0 ymm7_0;
sub ymm5_1 ymm8_1 ymm7_1;
sub ymm5_2 ymm8_2 ymm7_2;
sub ymm5_3 ymm8_3 ymm7_3;
sub ymm5_4 ymm8_4 ymm7_4;
sub ymm5_5 ymm8_5 ymm7_5;
sub ymm5_6 ymm8_6 ymm7_6;
sub ymm5_7 ymm8_7 ymm7_7;
sub ymm5_8 ymm8_8 ymm7_8;
sub ymm5_9 ymm8_9 ymm7_9;
sub ymm5_a ymm8_a ymm7_a;
sub ymm5_b ymm8_b ymm7_b;
sub ymm5_c ymm8_c ymm7_c;
sub ymm5_d ymm8_d ymm7_d;
sub ymm5_e ymm8_e ymm7_e;
sub ymm5_f ymm8_f ymm7_f;
(* vpsubw %ymm9,%ymm10,%ymm6                       #! PC = 0x555555558cfc *)
sub ymm6_0 ymm10_0 ymm9_0;
sub ymm6_1 ymm10_1 ymm9_1;
sub ymm6_2 ymm10_2 ymm9_2;
sub ymm6_3 ymm10_3 ymm9_3;
sub ymm6_4 ymm10_4 ymm9_4;
sub ymm6_5 ymm10_5 ymm9_5;
sub ymm6_6 ymm10_6 ymm9_6;
sub ymm6_7 ymm10_7 ymm9_7;
sub ymm6_8 ymm10_8 ymm9_8;
sub ymm6_9 ymm10_9 ymm9_9;
sub ymm6_a ymm10_a ymm9_a;
sub ymm6_b ymm10_b ymm9_b;
sub ymm6_c ymm10_c ymm9_c;
sub ymm6_d ymm10_d ymm9_d;
sub ymm6_e ymm10_e ymm9_e;
sub ymm6_f ymm10_f ymm9_f;
(* vpmullw %ymm14,%ymm3,%ymm7                      #! PC = 0x555555558d01 *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x555555558d06 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558d0b *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
];
assume and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
] && true;
(* vpsubw %ymm7,%ymm3,%ymm3                        #! PC = 0x555555558d0f *)
sub ymm3_0 ymm3_0 ymm7_0;
sub ymm3_1 ymm3_1 ymm7_1;
sub ymm3_2 ymm3_2 ymm7_2;
sub ymm3_3 ymm3_3 ymm7_3;
sub ymm3_4 ymm3_4 ymm7_4;
sub ymm3_5 ymm3_5 ymm7_5;
sub ymm3_6 ymm3_6 ymm7_6;
sub ymm3_7 ymm3_7 ymm7_7;
sub ymm3_8 ymm3_8 ymm7_8;
sub ymm3_9 ymm3_9 ymm7_9;
sub ymm3_a ymm3_a ymm7_a;
sub ymm3_b ymm3_b ymm7_b;
sub ymm3_c ymm3_c ymm7_c;
sub ymm3_d ymm3_d ymm7_d;
sub ymm3_e ymm3_e ymm7_e;
sub ymm3_f ymm3_f ymm7_f;
(* vpmullw %ymm14,%ymm4,%ymm7                      #! PC = 0x555555558d13 *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x555555558d18 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558d1d *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
];
assume and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
] && true;
(* vpsubw %ymm7,%ymm4,%ymm4                        #! PC = 0x555555558d21 *)
sub ymm4_0 ymm4_0 ymm7_0;
sub ymm4_1 ymm4_1 ymm7_1;
sub ymm4_2 ymm4_2 ymm7_2;
sub ymm4_3 ymm4_3 ymm7_3;
sub ymm4_4 ymm4_4 ymm7_4;
sub ymm4_5 ymm4_5 ymm7_5;
sub ymm4_6 ymm4_6 ymm7_6;
sub ymm4_7 ymm4_7 ymm7_7;
sub ymm4_8 ymm4_8 ymm7_8;
sub ymm4_9 ymm4_9 ymm7_9;
sub ymm4_a ymm4_a ymm7_a;
sub ymm4_b ymm4_b ymm7_b;
sub ymm4_c ymm4_c ymm7_c;
sub ymm4_d ymm4_d ymm7_d;
sub ymm4_e ymm4_e ymm7_e;
sub ymm4_f ymm4_f ymm7_f;
(* vpmullw %ymm14,%ymm5,%ymm7                      #! PC = 0x555555558d25 *)
smull mulHymm5_0 mulL_0 ymm14_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm14_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm14_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm14_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm14_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm14_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm14_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm14_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm14_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm14_9 ymm5_9;
smull mulHymm5_a mulL_a ymm14_a ymm5_a;
smull mulHymm5_b mulL_b ymm14_b ymm5_b;
smull mulHymm5_c mulL_c ymm14_c ymm5_c;
smull mulHymm5_d mulL_d ymm14_d ymm5_d;
smull mulHymm5_e mulL_e ymm14_e ymm5_e;
smull mulHymm5_f mulL_f ymm14_f ymm5_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm5,%ymm5                      #! PC = 0x555555558d2a *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm15_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm15_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm15_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm15_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm15_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm15_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm15_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm15_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm15_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm15_9;
smull mulH_a mulLymm5_a ymm5_a ymm15_a;
smull mulH_b mulLymm5_b ymm5_b ymm15_b;
smull mulH_c mulLymm5_c ymm5_c ymm15_c;
smull mulH_d mulLymm5_d ymm5_d ymm15_d;
smull mulH_e mulLymm5_e ymm5_e ymm15_e;
smull mulH_f mulLymm5_f ymm5_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558d2f *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
];
assume and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
] && true;
(* vpsubw %ymm7,%ymm5,%ymm5                        #! PC = 0x555555558d33 *)
sub ymm5_0 ymm5_0 ymm7_0;
sub ymm5_1 ymm5_1 ymm7_1;
sub ymm5_2 ymm5_2 ymm7_2;
sub ymm5_3 ymm5_3 ymm7_3;
sub ymm5_4 ymm5_4 ymm7_4;
sub ymm5_5 ymm5_5 ymm7_5;
sub ymm5_6 ymm5_6 ymm7_6;
sub ymm5_7 ymm5_7 ymm7_7;
sub ymm5_8 ymm5_8 ymm7_8;
sub ymm5_9 ymm5_9 ymm7_9;
sub ymm5_a ymm5_a ymm7_a;
sub ymm5_b ymm5_b ymm7_b;
sub ymm5_c ymm5_c ymm7_c;
sub ymm5_d ymm5_d ymm7_d;
sub ymm5_e ymm5_e ymm7_e;
sub ymm5_f ymm5_f ymm7_f;
(* vpmullw %ymm14,%ymm6,%ymm7                      #! PC = 0x555555558d37 *)
smull mulHymm6_0 mulL_0 ymm14_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm14_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm14_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm14_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm14_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm14_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm14_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm14_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm14_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm14_9 ymm6_9;
smull mulHymm6_a mulL_a ymm14_a ymm6_a;
smull mulHymm6_b mulL_b ymm14_b ymm6_b;
smull mulHymm6_c mulL_c ymm14_c ymm6_c;
smull mulHymm6_d mulL_d ymm14_d ymm6_d;
smull mulHymm6_e mulL_e ymm14_e ymm6_e;
smull mulHymm6_f mulL_f ymm14_f ymm6_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm6,%ymm6                      #! PC = 0x555555558d3c *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm15_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm15_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm15_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm15_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm15_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm15_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm15_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm15_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm15_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm15_9;
smull mulH_a mulLymm6_a ymm6_a ymm15_a;
smull mulH_b mulLymm6_b ymm6_b ymm15_b;
smull mulH_c mulLymm6_c ymm6_c ymm15_c;
smull mulH_d mulLymm6_d ymm6_d ymm15_d;
smull mulH_e mulLymm6_e ymm6_e ymm15_e;
smull mulH_f mulLymm6_f ymm6_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558d41 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
];
assume and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
] && true;
(* vpsubw %ymm7,%ymm6,%ymm6                        #! PC = 0x555555558d45 *)
sub ymm6_0 ymm6_0 ymm7_0;
sub ymm6_1 ymm6_1 ymm7_1;
sub ymm6_2 ymm6_2 ymm7_2;
sub ymm6_3 ymm6_3 ymm7_3;
sub ymm6_4 ymm6_4 ymm7_4;
sub ymm6_5 ymm6_5 ymm7_5;
sub ymm6_6 ymm6_6 ymm7_6;
sub ymm6_7 ymm6_7 ymm7_7;
sub ymm6_8 ymm6_8 ymm7_8;
sub ymm6_9 ymm6_9 ymm7_9;
sub ymm6_a ymm6_a ymm7_a;
sub ymm6_b ymm6_b ymm7_b;
sub ymm6_c ymm6_c ymm7_c;
sub ymm6_d ymm6_d ymm7_d;
sub ymm6_e ymm6_e ymm7_e;
sub ymm6_f ymm6_f ymm7_f;
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffff6da0; PC = 0x555555558d49 *)
mov L0x7fffffff6da0 ymm3_0;
mov L0x7fffffff6da2 ymm3_1;
mov L0x7fffffff6da4 ymm3_2;
mov L0x7fffffff6da6 ymm3_3;
mov L0x7fffffff6da8 ymm3_4;
mov L0x7fffffff6daa ymm3_5;
mov L0x7fffffff6dac ymm3_6;
mov L0x7fffffff6dae ymm3_7;
mov L0x7fffffff6db0 ymm3_8;
mov L0x7fffffff6db2 ymm3_9;
mov L0x7fffffff6db4 ymm3_a;
mov L0x7fffffff6db6 ymm3_b;
mov L0x7fffffff6db8 ymm3_c;
mov L0x7fffffff6dba ymm3_d;
mov L0x7fffffff6dbc ymm3_e;
mov L0x7fffffff6dbe ymm3_f;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffff6dc0; PC = 0x555555558d51 *)
mov L0x7fffffff6dc0 ymm4_0;
mov L0x7fffffff6dc2 ymm4_1;
mov L0x7fffffff6dc4 ymm4_2;
mov L0x7fffffff6dc6 ymm4_3;
mov L0x7fffffff6dc8 ymm4_4;
mov L0x7fffffff6dca ymm4_5;
mov L0x7fffffff6dcc ymm4_6;
mov L0x7fffffff6dce ymm4_7;
mov L0x7fffffff6dd0 ymm4_8;
mov L0x7fffffff6dd2 ymm4_9;
mov L0x7fffffff6dd4 ymm4_a;
mov L0x7fffffff6dd6 ymm4_b;
mov L0x7fffffff6dd8 ymm4_c;
mov L0x7fffffff6dda ymm4_d;
mov L0x7fffffff6ddc ymm4_e;
mov L0x7fffffff6dde ymm4_f;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffff6de0; PC = 0x555555558d59 *)
mov L0x7fffffff6de0 ymm5_0;
mov L0x7fffffff6de2 ymm5_1;
mov L0x7fffffff6de4 ymm5_2;
mov L0x7fffffff6de6 ymm5_3;
mov L0x7fffffff6de8 ymm5_4;
mov L0x7fffffff6dea ymm5_5;
mov L0x7fffffff6dec ymm5_6;
mov L0x7fffffff6dee ymm5_7;
mov L0x7fffffff6df0 ymm5_8;
mov L0x7fffffff6df2 ymm5_9;
mov L0x7fffffff6df4 ymm5_a;
mov L0x7fffffff6df6 ymm5_b;
mov L0x7fffffff6df8 ymm5_c;
mov L0x7fffffff6dfa ymm5_d;
mov L0x7fffffff6dfc ymm5_e;
mov L0x7fffffff6dfe ymm5_f;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffff6e00; PC = 0x555555558d61 *)
mov L0x7fffffff6e00 ymm6_0;
mov L0x7fffffff6e02 ymm6_1;
mov L0x7fffffff6e04 ymm6_2;
mov L0x7fffffff6e06 ymm6_3;
mov L0x7fffffff6e08 ymm6_4;
mov L0x7fffffff6e0a ymm6_5;
mov L0x7fffffff6e0c ymm6_6;
mov L0x7fffffff6e0e ymm6_7;
mov L0x7fffffff6e10 ymm6_8;
mov L0x7fffffff6e12 ymm6_9;
mov L0x7fffffff6e14 ymm6_a;
mov L0x7fffffff6e16 ymm6_b;
mov L0x7fffffff6e18 ymm6_c;
mov L0x7fffffff6e1a ymm6_d;
mov L0x7fffffff6e1c ymm6_e;
mov L0x7fffffff6e1e ymm6_f;
(* vmovdqa 0x100(%rsi),%ymm4                       #! EA = L0x7fffffff6e20; Value = 0x0000000000000000; PC = 0x555555558d69 *)
mov ymm4_0 L0x7fffffff6e20;
mov ymm4_1 L0x7fffffff6e22;
mov ymm4_2 L0x7fffffff6e24;
mov ymm4_3 L0x7fffffff6e26;
mov ymm4_4 L0x7fffffff6e28;
mov ymm4_5 L0x7fffffff6e2a;
mov ymm4_6 L0x7fffffff6e2c;
mov ymm4_7 L0x7fffffff6e2e;
mov ymm4_8 L0x7fffffff6e30;
mov ymm4_9 L0x7fffffff6e32;
mov ymm4_a L0x7fffffff6e34;
mov ymm4_b L0x7fffffff6e36;
mov ymm4_c L0x7fffffff6e38;
mov ymm4_d L0x7fffffff6e3a;
mov ymm4_e L0x7fffffff6e3c;
mov ymm4_f L0x7fffffff6e3e;
(* vmovdqa 0x100(%rdx),%ymm5                       #! EA = L0x7fffffff6c20; Value = 0x0000000000000000; PC = 0x555555558d71 *)
mov ymm5_0 L0x7fffffff6c20;
mov ymm5_1 L0x7fffffff6c22;
mov ymm5_2 L0x7fffffff6c24;
mov ymm5_3 L0x7fffffff6c26;
mov ymm5_4 L0x7fffffff6c28;
mov ymm5_5 L0x7fffffff6c2a;
mov ymm5_6 L0x7fffffff6c2c;
mov ymm5_7 L0x7fffffff6c2e;
mov ymm5_8 L0x7fffffff6c30;
mov ymm5_9 L0x7fffffff6c32;
mov ymm5_a L0x7fffffff6c34;
mov ymm5_b L0x7fffffff6c36;
mov ymm5_c L0x7fffffff6c38;
mov ymm5_d L0x7fffffff6c3a;
mov ymm5_e L0x7fffffff6c3c;
mov ymm5_f L0x7fffffff6c3e;
(* vmovdqa 0x120(%rsi),%ymm6                       #! EA = L0x7fffffff6e40; Value = 0x0000000000000000; PC = 0x555555558d79 *)
mov ymm6_0 L0x7fffffff6e40;
mov ymm6_1 L0x7fffffff6e42;
mov ymm6_2 L0x7fffffff6e44;
mov ymm6_3 L0x7fffffff6e46;
mov ymm6_4 L0x7fffffff6e48;
mov ymm6_5 L0x7fffffff6e4a;
mov ymm6_6 L0x7fffffff6e4c;
mov ymm6_7 L0x7fffffff6e4e;
mov ymm6_8 L0x7fffffff6e50;
mov ymm6_9 L0x7fffffff6e52;
mov ymm6_a L0x7fffffff6e54;
mov ymm6_b L0x7fffffff6e56;
mov ymm6_c L0x7fffffff6e58;
mov ymm6_d L0x7fffffff6e5a;
mov ymm6_e L0x7fffffff6e5c;
mov ymm6_f L0x7fffffff6e5e;
(* vmovdqa 0x120(%rdx),%ymm7                       #! EA = L0x7fffffff6c40; Value = 0x0000000000000000; PC = 0x555555558d81 *)
mov ymm7_0 L0x7fffffff6c40;
mov ymm7_1 L0x7fffffff6c42;
mov ymm7_2 L0x7fffffff6c44;
mov ymm7_3 L0x7fffffff6c46;
mov ymm7_4 L0x7fffffff6c48;
mov ymm7_5 L0x7fffffff6c4a;
mov ymm7_6 L0x7fffffff6c4c;
mov ymm7_7 L0x7fffffff6c4e;
mov ymm7_8 L0x7fffffff6c50;
mov ymm7_9 L0x7fffffff6c52;
mov ymm7_a L0x7fffffff6c54;
mov ymm7_b L0x7fffffff6c56;
mov ymm7_c L0x7fffffff6c58;
mov ymm7_d L0x7fffffff6c5a;
mov ymm7_e L0x7fffffff6c5c;
mov ymm7_f L0x7fffffff6c5e;
(* vmovdqa 0x140(%rsi),%ymm8                       #! EA = L0x7fffffff6e60; Value = 0x0000000000000000; PC = 0x555555558d89 *)
mov ymm8_0 L0x7fffffff6e60;
mov ymm8_1 L0x7fffffff6e62;
mov ymm8_2 L0x7fffffff6e64;
mov ymm8_3 L0x7fffffff6e66;
mov ymm8_4 L0x7fffffff6e68;
mov ymm8_5 L0x7fffffff6e6a;
mov ymm8_6 L0x7fffffff6e6c;
mov ymm8_7 L0x7fffffff6e6e;
mov ymm8_8 L0x7fffffff6e70;
mov ymm8_9 L0x7fffffff6e72;
mov ymm8_a L0x7fffffff6e74;
mov ymm8_b L0x7fffffff6e76;
mov ymm8_c L0x7fffffff6e78;
mov ymm8_d L0x7fffffff6e7a;
mov ymm8_e L0x7fffffff6e7c;
mov ymm8_f L0x7fffffff6e7e;
(* vmovdqa 0x140(%rdx),%ymm9                       #! EA = L0x7fffffff6c60; Value = 0x0000000000000000; PC = 0x555555558d91 *)
mov ymm9_0 L0x7fffffff6c60;
mov ymm9_1 L0x7fffffff6c62;
mov ymm9_2 L0x7fffffff6c64;
mov ymm9_3 L0x7fffffff6c66;
mov ymm9_4 L0x7fffffff6c68;
mov ymm9_5 L0x7fffffff6c6a;
mov ymm9_6 L0x7fffffff6c6c;
mov ymm9_7 L0x7fffffff6c6e;
mov ymm9_8 L0x7fffffff6c70;
mov ymm9_9 L0x7fffffff6c72;
mov ymm9_a L0x7fffffff6c74;
mov ymm9_b L0x7fffffff6c76;
mov ymm9_c L0x7fffffff6c78;
mov ymm9_d L0x7fffffff6c7a;
mov ymm9_e L0x7fffffff6c7c;
mov ymm9_f L0x7fffffff6c7e;
(* vmovdqa 0x160(%rsi),%ymm10                      #! EA = L0x7fffffff6e80; Value = 0x0000000000000000; PC = 0x555555558d99 *)
mov ymm10_0 L0x7fffffff6e80;
mov ymm10_1 L0x7fffffff6e82;
mov ymm10_2 L0x7fffffff6e84;
mov ymm10_3 L0x7fffffff6e86;
mov ymm10_4 L0x7fffffff6e88;
mov ymm10_5 L0x7fffffff6e8a;
mov ymm10_6 L0x7fffffff6e8c;
mov ymm10_7 L0x7fffffff6e8e;
mov ymm10_8 L0x7fffffff6e90;
mov ymm10_9 L0x7fffffff6e92;
mov ymm10_a L0x7fffffff6e94;
mov ymm10_b L0x7fffffff6e96;
mov ymm10_c L0x7fffffff6e98;
mov ymm10_d L0x7fffffff6e9a;
mov ymm10_e L0x7fffffff6e9c;
mov ymm10_f L0x7fffffff6e9e;
(* vmovdqa 0x160(%rdx),%ymm11                      #! EA = L0x7fffffff6c80; Value = 0x0000000000000000; PC = 0x555555558da1 *)
mov ymm11_0 L0x7fffffff6c80;
mov ymm11_1 L0x7fffffff6c82;
mov ymm11_2 L0x7fffffff6c84;
mov ymm11_3 L0x7fffffff6c86;
mov ymm11_4 L0x7fffffff6c88;
mov ymm11_5 L0x7fffffff6c8a;
mov ymm11_6 L0x7fffffff6c8c;
mov ymm11_7 L0x7fffffff6c8e;
mov ymm11_8 L0x7fffffff6c90;
mov ymm11_9 L0x7fffffff6c92;
mov ymm11_a L0x7fffffff6c94;
mov ymm11_b L0x7fffffff6c96;
mov ymm11_c L0x7fffffff6c98;
mov ymm11_d L0x7fffffff6c9a;
mov ymm11_e L0x7fffffff6c9c;
mov ymm11_f L0x7fffffff6c9e;
(* vpmullw %ymm5,%ymm4,%ymm3                       #! PC = 0x555555558da9 *)
smull mulHymm4_0 mulL_0 ymm5_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm5_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm5_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm5_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm5_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm5_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm5_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm5_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm5_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm5_9 ymm4_9;
smull mulHymm4_a mulL_a ymm5_a ymm4_a;
smull mulHymm4_b mulL_b ymm5_b ymm4_b;
smull mulHymm4_c mulL_c ymm5_c ymm4_c;
smull mulHymm4_d mulL_d ymm5_d ymm4_d;
smull mulHymm4_e mulL_e ymm5_e ymm4_e;
smull mulHymm4_f mulL_f ymm5_f ymm4_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmulhw %ymm5,%ymm4,%ymm4                       #! PC = 0x555555558dad *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm5_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm5_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm5_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm5_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm5_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm5_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm5_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm5_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm5_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm5_9;
smull mulH_a mulLymm4_a ymm4_a ymm5_a;
smull mulH_b mulLymm4_b ymm4_b ymm5_b;
smull mulH_c mulLymm4_c ymm4_c ymm5_c;
smull mulH_d mulLymm4_d ymm4_d ymm5_d;
smull mulH_e mulLymm4_e ymm4_e ymm5_e;
smull mulH_f mulLymm4_f ymm4_f ymm5_f;
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
(* vpmullw %ymm7,%ymm6,%ymm5                       #! PC = 0x555555558db1 *)
smull mulHymm6_0 mulL_0 ymm7_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm7_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm7_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm7_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm7_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm7_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm7_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm7_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm7_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm7_9 ymm6_9;
smull mulHymm6_a mulL_a ymm7_a ymm6_a;
smull mulHymm6_b mulL_b ymm7_b ymm6_b;
smull mulHymm6_c mulL_c ymm7_c ymm6_c;
smull mulHymm6_d mulL_d ymm7_d ymm6_d;
smull mulHymm6_e mulL_e ymm7_e ymm6_e;
smull mulHymm6_f mulL_f ymm7_f ymm6_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmulhw %ymm7,%ymm6,%ymm6                       #! PC = 0x555555558db5 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm7_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm7_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm7_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm7_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm7_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm7_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm7_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm7_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm7_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm7_9;
smull mulH_a mulLymm6_a ymm6_a ymm7_a;
smull mulH_b mulLymm6_b ymm6_b ymm7_b;
smull mulH_c mulLymm6_c ymm6_c ymm7_c;
smull mulH_d mulLymm6_d ymm6_d ymm7_d;
smull mulH_e mulLymm6_e ymm6_e ymm7_e;
smull mulH_f mulLymm6_f ymm6_f ymm7_f;
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
(* vpmullw %ymm9,%ymm8,%ymm7                       #! PC = 0x555555558db9 *)
smull mulHymm8_0 mulL_0 ymm9_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm9_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm9_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm9_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm9_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm9_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm9_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm9_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm9_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm9_9 ymm8_9;
smull mulHymm8_a mulL_a ymm9_a ymm8_a;
smull mulHymm8_b mulL_b ymm9_b ymm8_b;
smull mulHymm8_c mulL_c ymm9_c ymm8_c;
smull mulHymm8_d mulL_d ymm9_d ymm8_d;
smull mulHymm8_e mulL_e ymm9_e ymm8_e;
smull mulHymm8_f mulL_f ymm9_f ymm8_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm9,%ymm8,%ymm8                       #! PC = 0x555555558dbe *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm9_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm9_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm9_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm9_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm9_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm9_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm9_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm9_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm9_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm9_9;
smull mulH_a mulLymm8_a ymm8_a ymm9_a;
smull mulH_b mulLymm8_b ymm8_b ymm9_b;
smull mulH_c mulLymm8_c ymm8_c ymm9_c;
smull mulH_d mulLymm8_d ymm8_d ymm9_d;
smull mulH_e mulLymm8_e ymm8_e ymm9_e;
smull mulH_f mulLymm8_f ymm8_f ymm9_f;
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
(* vpmullw %ymm11,%ymm10,%ymm9                     #! PC = 0x555555558dc3 *)
smull mulHymm10_0 mulL_0 ymm11_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm11_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm11_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm11_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm11_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm11_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm11_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm11_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm11_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm11_9 ymm10_9;
smull mulHymm10_a mulL_a ymm11_a ymm10_a;
smull mulHymm10_b mulL_b ymm11_b ymm10_b;
smull mulHymm10_c mulL_c ymm11_c ymm10_c;
smull mulHymm10_d mulL_d ymm11_d ymm10_d;
smull mulHymm10_e mulL_e ymm11_e ymm10_e;
smull mulHymm10_f mulL_f ymm11_f ymm10_f;
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm11,%ymm10,%ymm10                    #! PC = 0x555555558dc8 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm11_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm11_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm11_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm11_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm11_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm11_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm11_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm11_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm11_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm11_9;
smull mulH_a mulLymm10_a ymm10_a ymm11_a;
smull mulH_b mulLymm10_b ymm10_b ymm11_b;
smull mulH_c mulLymm10_c ymm10_c ymm11_c;
smull mulH_d mulLymm10_d ymm10_d ymm11_d;
smull mulH_e mulLymm10_e ymm10_e ymm11_e;
smull mulH_f mulLymm10_f ymm10_f ymm11_f;
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
(* vpmullw %ymm1,%ymm3,%ymm3                       #! PC = 0x555555558dcd *)
smull mulHymm3_0 mulL_0 ymm1_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm1_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm1_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm1_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm1_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm1_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm1_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm1_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm1_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm1_9 ymm3_9;
smull mulHymm3_a mulL_a ymm1_a ymm3_a;
smull mulHymm3_b mulL_b ymm1_b ymm3_b;
smull mulHymm3_c mulL_c ymm1_c ymm3_c;
smull mulHymm3_d mulL_d ymm1_d ymm3_d;
smull mulHymm3_e mulL_e ymm1_e ymm3_e;
smull mulHymm3_f mulL_f ymm1_f ymm3_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm5,%ymm5                       #! PC = 0x555555558dd1 *)
smull mulHymm5_0 mulL_0 ymm1_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm1_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm1_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm1_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm1_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm1_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm1_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm1_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm1_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm1_9 ymm5_9;
smull mulHymm5_a mulL_a ymm1_a ymm5_a;
smull mulHymm5_b mulL_b ymm1_b ymm5_b;
smull mulHymm5_c mulL_c ymm1_c ymm5_c;
smull mulHymm5_d mulL_d ymm1_d ymm5_d;
smull mulHymm5_e mulL_e ymm1_e ymm5_e;
smull mulHymm5_f mulL_f ymm1_f ymm5_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm7,%ymm7                       #! PC = 0x555555558dd5 *)
smull mulHymm7_0 mulL_0 ymm1_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm1_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm1_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm1_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm1_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm1_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm1_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm1_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm1_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm1_9 ymm7_9;
smull mulHymm7_a mulL_a ymm1_a ymm7_a;
smull mulHymm7_b mulL_b ymm1_b ymm7_b;
smull mulHymm7_c mulL_c ymm1_c ymm7_c;
smull mulHymm7_d mulL_d ymm1_d ymm7_d;
smull mulHymm7_e mulL_e ymm1_e ymm7_e;
smull mulHymm7_f mulL_f ymm1_f ymm7_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm9,%ymm9                       #! PC = 0x555555558dd9 *)
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
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm0,%ymm3,%ymm3                       #! PC = 0x555555558ddd *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm0_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm0_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm0_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm0_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm0_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm0_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm0_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm0_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm0_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm0_9;
smull mulH_a mulLymm3_a ymm3_a ymm0_a;
smull mulH_b mulLymm3_b ymm3_b ymm0_b;
smull mulH_c mulLymm3_c ymm3_c ymm0_c;
smull mulH_d mulLymm3_d ymm3_d ymm0_d;
smull mulH_e mulLymm3_e ymm3_e ymm0_e;
smull mulH_f mulLymm3_f ymm3_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x555555558de1 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm0_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm0_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm0_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm0_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm0_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm0_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm0_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm0_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm0_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm0_9;
smull mulH_a mulLymm5_a ymm5_a ymm0_a;
smull mulH_b mulLymm5_b ymm5_b ymm0_b;
smull mulH_c mulLymm5_c ymm5_c ymm0_c;
smull mulH_d mulLymm5_d ymm5_d ymm0_d;
smull mulH_e mulLymm5_e ymm5_e ymm0_e;
smull mulH_f mulLymm5_f ymm5_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558de5 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x555555558de9 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm0_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm0_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm0_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm0_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm0_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm0_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm0_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm0_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm0_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm0_9;
smull mulH_a mulLymm9_a ymm9_a ymm0_a;
smull mulH_b mulLymm9_b ymm9_b ymm0_b;
smull mulH_c mulLymm9_c ymm9_c ymm0_c;
smull mulH_d mulLymm9_d ymm9_d ymm0_d;
smull mulH_e mulLymm9_e ymm9_e ymm0_e;
smull mulH_f mulLymm9_f ymm9_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
];
assume and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
] && true;
(* vpsubw %ymm3,%ymm4,%ymm3                        #! PC = 0x555555558ded *)
sub ymm3_0 ymm4_0 ymm3_0;
sub ymm3_1 ymm4_1 ymm3_1;
sub ymm3_2 ymm4_2 ymm3_2;
sub ymm3_3 ymm4_3 ymm3_3;
sub ymm3_4 ymm4_4 ymm3_4;
sub ymm3_5 ymm4_5 ymm3_5;
sub ymm3_6 ymm4_6 ymm3_6;
sub ymm3_7 ymm4_7 ymm3_7;
sub ymm3_8 ymm4_8 ymm3_8;
sub ymm3_9 ymm4_9 ymm3_9;
sub ymm3_a ymm4_a ymm3_a;
sub ymm3_b ymm4_b ymm3_b;
sub ymm3_c ymm4_c ymm3_c;
sub ymm3_d ymm4_d ymm3_d;
sub ymm3_e ymm4_e ymm3_e;
sub ymm3_f ymm4_f ymm3_f;
(* vpsubw %ymm5,%ymm6,%ymm4                        #! PC = 0x555555558df1 *)
sub ymm4_0 ymm6_0 ymm5_0;
sub ymm4_1 ymm6_1 ymm5_1;
sub ymm4_2 ymm6_2 ymm5_2;
sub ymm4_3 ymm6_3 ymm5_3;
sub ymm4_4 ymm6_4 ymm5_4;
sub ymm4_5 ymm6_5 ymm5_5;
sub ymm4_6 ymm6_6 ymm5_6;
sub ymm4_7 ymm6_7 ymm5_7;
sub ymm4_8 ymm6_8 ymm5_8;
sub ymm4_9 ymm6_9 ymm5_9;
sub ymm4_a ymm6_a ymm5_a;
sub ymm4_b ymm6_b ymm5_b;
sub ymm4_c ymm6_c ymm5_c;
sub ymm4_d ymm6_d ymm5_d;
sub ymm4_e ymm6_e ymm5_e;
sub ymm4_f ymm6_f ymm5_f;
(* vpsubw %ymm7,%ymm8,%ymm5                        #! PC = 0x555555558df5 *)
sub ymm5_0 ymm8_0 ymm7_0;
sub ymm5_1 ymm8_1 ymm7_1;
sub ymm5_2 ymm8_2 ymm7_2;
sub ymm5_3 ymm8_3 ymm7_3;
sub ymm5_4 ymm8_4 ymm7_4;
sub ymm5_5 ymm8_5 ymm7_5;
sub ymm5_6 ymm8_6 ymm7_6;
sub ymm5_7 ymm8_7 ymm7_7;
sub ymm5_8 ymm8_8 ymm7_8;
sub ymm5_9 ymm8_9 ymm7_9;
sub ymm5_a ymm8_a ymm7_a;
sub ymm5_b ymm8_b ymm7_b;
sub ymm5_c ymm8_c ymm7_c;
sub ymm5_d ymm8_d ymm7_d;
sub ymm5_e ymm8_e ymm7_e;
sub ymm5_f ymm8_f ymm7_f;
(* vpsubw %ymm9,%ymm10,%ymm6                       #! PC = 0x555555558df9 *)
sub ymm6_0 ymm10_0 ymm9_0;
sub ymm6_1 ymm10_1 ymm9_1;
sub ymm6_2 ymm10_2 ymm9_2;
sub ymm6_3 ymm10_3 ymm9_3;
sub ymm6_4 ymm10_4 ymm9_4;
sub ymm6_5 ymm10_5 ymm9_5;
sub ymm6_6 ymm10_6 ymm9_6;
sub ymm6_7 ymm10_7 ymm9_7;
sub ymm6_8 ymm10_8 ymm9_8;
sub ymm6_9 ymm10_9 ymm9_9;
sub ymm6_a ymm10_a ymm9_a;
sub ymm6_b ymm10_b ymm9_b;
sub ymm6_c ymm10_c ymm9_c;
sub ymm6_d ymm10_d ymm9_d;
sub ymm6_e ymm10_e ymm9_e;
sub ymm6_f ymm10_f ymm9_f;
(* vpmullw %ymm14,%ymm3,%ymm7                      #! PC = 0x555555558dfe *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x555555558e03 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558e08 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
];
assume and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
] && true;
(* vpsubw %ymm7,%ymm3,%ymm3                        #! PC = 0x555555558e0c *)
sub ymm3_0 ymm3_0 ymm7_0;
sub ymm3_1 ymm3_1 ymm7_1;
sub ymm3_2 ymm3_2 ymm7_2;
sub ymm3_3 ymm3_3 ymm7_3;
sub ymm3_4 ymm3_4 ymm7_4;
sub ymm3_5 ymm3_5 ymm7_5;
sub ymm3_6 ymm3_6 ymm7_6;
sub ymm3_7 ymm3_7 ymm7_7;
sub ymm3_8 ymm3_8 ymm7_8;
sub ymm3_9 ymm3_9 ymm7_9;
sub ymm3_a ymm3_a ymm7_a;
sub ymm3_b ymm3_b ymm7_b;
sub ymm3_c ymm3_c ymm7_c;
sub ymm3_d ymm3_d ymm7_d;
sub ymm3_e ymm3_e ymm7_e;
sub ymm3_f ymm3_f ymm7_f;
(* vpmullw %ymm14,%ymm4,%ymm7                      #! PC = 0x555555558e10 *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x555555558e15 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558e1a *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
];
assume and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
] && true;
(* vpsubw %ymm7,%ymm4,%ymm4                        #! PC = 0x555555558e1e *)
sub ymm4_0 ymm4_0 ymm7_0;
sub ymm4_1 ymm4_1 ymm7_1;
sub ymm4_2 ymm4_2 ymm7_2;
sub ymm4_3 ymm4_3 ymm7_3;
sub ymm4_4 ymm4_4 ymm7_4;
sub ymm4_5 ymm4_5 ymm7_5;
sub ymm4_6 ymm4_6 ymm7_6;
sub ymm4_7 ymm4_7 ymm7_7;
sub ymm4_8 ymm4_8 ymm7_8;
sub ymm4_9 ymm4_9 ymm7_9;
sub ymm4_a ymm4_a ymm7_a;
sub ymm4_b ymm4_b ymm7_b;
sub ymm4_c ymm4_c ymm7_c;
sub ymm4_d ymm4_d ymm7_d;
sub ymm4_e ymm4_e ymm7_e;
sub ymm4_f ymm4_f ymm7_f;
(* vpmullw %ymm14,%ymm5,%ymm7                      #! PC = 0x555555558e22 *)
smull mulHymm5_0 mulL_0 ymm14_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm14_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm14_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm14_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm14_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm14_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm14_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm14_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm14_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm14_9 ymm5_9;
smull mulHymm5_a mulL_a ymm14_a ymm5_a;
smull mulHymm5_b mulL_b ymm14_b ymm5_b;
smull mulHymm5_c mulL_c ymm14_c ymm5_c;
smull mulHymm5_d mulL_d ymm14_d ymm5_d;
smull mulHymm5_e mulL_e ymm14_e ymm5_e;
smull mulHymm5_f mulL_f ymm14_f ymm5_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm5,%ymm5                      #! PC = 0x555555558e27 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm15_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm15_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm15_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm15_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm15_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm15_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm15_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm15_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm15_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm15_9;
smull mulH_a mulLymm5_a ymm5_a ymm15_a;
smull mulH_b mulLymm5_b ymm5_b ymm15_b;
smull mulH_c mulLymm5_c ymm5_c ymm15_c;
smull mulH_d mulLymm5_d ymm5_d ymm15_d;
smull mulH_e mulLymm5_e ymm5_e ymm15_e;
smull mulH_f mulLymm5_f ymm5_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558e2c *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
];
assume and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
] && true;
(* vpsubw %ymm7,%ymm5,%ymm5                        #! PC = 0x555555558e30 *)
sub ymm5_0 ymm5_0 ymm7_0;
sub ymm5_1 ymm5_1 ymm7_1;
sub ymm5_2 ymm5_2 ymm7_2;
sub ymm5_3 ymm5_3 ymm7_3;
sub ymm5_4 ymm5_4 ymm7_4;
sub ymm5_5 ymm5_5 ymm7_5;
sub ymm5_6 ymm5_6 ymm7_6;
sub ymm5_7 ymm5_7 ymm7_7;
sub ymm5_8 ymm5_8 ymm7_8;
sub ymm5_9 ymm5_9 ymm7_9;
sub ymm5_a ymm5_a ymm7_a;
sub ymm5_b ymm5_b ymm7_b;
sub ymm5_c ymm5_c ymm7_c;
sub ymm5_d ymm5_d ymm7_d;
sub ymm5_e ymm5_e ymm7_e;
sub ymm5_f ymm5_f ymm7_f;
(* vpmullw %ymm14,%ymm6,%ymm7                      #! PC = 0x555555558e34 *)
smull mulHymm6_0 mulL_0 ymm14_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm14_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm14_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm14_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm14_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm14_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm14_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm14_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm14_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm14_9 ymm6_9;
smull mulHymm6_a mulL_a ymm14_a ymm6_a;
smull mulHymm6_b mulL_b ymm14_b ymm6_b;
smull mulHymm6_c mulL_c ymm14_c ymm6_c;
smull mulHymm6_d mulL_d ymm14_d ymm6_d;
smull mulHymm6_e mulL_e ymm14_e ymm6_e;
smull mulHymm6_f mulL_f ymm14_f ymm6_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm6,%ymm6                      #! PC = 0x555555558e39 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm15_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm15_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm15_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm15_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm15_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm15_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm15_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm15_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm15_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm15_9;
smull mulH_a mulLymm6_a ymm6_a ymm15_a;
smull mulH_b mulLymm6_b ymm6_b ymm15_b;
smull mulH_c mulLymm6_c ymm6_c ymm15_c;
smull mulH_d mulLymm6_d ymm6_d ymm15_d;
smull mulH_e mulLymm6_e ymm6_e ymm15_e;
smull mulH_f mulLymm6_f ymm6_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558e3e *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
];
assume and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
] && true;
(* vpsubw %ymm7,%ymm6,%ymm6                        #! PC = 0x555555558e42 *)
sub ymm6_0 ymm6_0 ymm7_0;
sub ymm6_1 ymm6_1 ymm7_1;
sub ymm6_2 ymm6_2 ymm7_2;
sub ymm6_3 ymm6_3 ymm7_3;
sub ymm6_4 ymm6_4 ymm7_4;
sub ymm6_5 ymm6_5 ymm7_5;
sub ymm6_6 ymm6_6 ymm7_6;
sub ymm6_7 ymm6_7 ymm7_7;
sub ymm6_8 ymm6_8 ymm7_8;
sub ymm6_9 ymm6_9 ymm7_9;
sub ymm6_a ymm6_a ymm7_a;
sub ymm6_b ymm6_b ymm7_b;
sub ymm6_c ymm6_c ymm7_c;
sub ymm6_d ymm6_d ymm7_d;
sub ymm6_e ymm6_e ymm7_e;
sub ymm6_f ymm6_f ymm7_f;
(* vmovdqa %ymm3,0x100(%rdi)                       #! EA = L0x7fffffff6e20; PC = 0x555555558e46 *)
mov L0x7fffffff6e20 ymm3_0;
mov L0x7fffffff6e22 ymm3_1;
mov L0x7fffffff6e24 ymm3_2;
mov L0x7fffffff6e26 ymm3_3;
mov L0x7fffffff6e28 ymm3_4;
mov L0x7fffffff6e2a ymm3_5;
mov L0x7fffffff6e2c ymm3_6;
mov L0x7fffffff6e2e ymm3_7;
mov L0x7fffffff6e30 ymm3_8;
mov L0x7fffffff6e32 ymm3_9;
mov L0x7fffffff6e34 ymm3_a;
mov L0x7fffffff6e36 ymm3_b;
mov L0x7fffffff6e38 ymm3_c;
mov L0x7fffffff6e3a ymm3_d;
mov L0x7fffffff6e3c ymm3_e;
mov L0x7fffffff6e3e ymm3_f;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffff6e40; PC = 0x555555558e4e *)
mov L0x7fffffff6e40 ymm4_0;
mov L0x7fffffff6e42 ymm4_1;
mov L0x7fffffff6e44 ymm4_2;
mov L0x7fffffff6e46 ymm4_3;
mov L0x7fffffff6e48 ymm4_4;
mov L0x7fffffff6e4a ymm4_5;
mov L0x7fffffff6e4c ymm4_6;
mov L0x7fffffff6e4e ymm4_7;
mov L0x7fffffff6e50 ymm4_8;
mov L0x7fffffff6e52 ymm4_9;
mov L0x7fffffff6e54 ymm4_a;
mov L0x7fffffff6e56 ymm4_b;
mov L0x7fffffff6e58 ymm4_c;
mov L0x7fffffff6e5a ymm4_d;
mov L0x7fffffff6e5c ymm4_e;
mov L0x7fffffff6e5e ymm4_f;
(* vmovdqa %ymm5,0x140(%rdi)                       #! EA = L0x7fffffff6e60; PC = 0x555555558e56 *)
mov L0x7fffffff6e60 ymm5_0;
mov L0x7fffffff6e62 ymm5_1;
mov L0x7fffffff6e64 ymm5_2;
mov L0x7fffffff6e66 ymm5_3;
mov L0x7fffffff6e68 ymm5_4;
mov L0x7fffffff6e6a ymm5_5;
mov L0x7fffffff6e6c ymm5_6;
mov L0x7fffffff6e6e ymm5_7;
mov L0x7fffffff6e70 ymm5_8;
mov L0x7fffffff6e72 ymm5_9;
mov L0x7fffffff6e74 ymm5_a;
mov L0x7fffffff6e76 ymm5_b;
mov L0x7fffffff6e78 ymm5_c;
mov L0x7fffffff6e7a ymm5_d;
mov L0x7fffffff6e7c ymm5_e;
mov L0x7fffffff6e7e ymm5_f;
(* vmovdqa %ymm6,0x160(%rdi)                       #! EA = L0x7fffffff6e80; PC = 0x555555558e5e *)
mov L0x7fffffff6e80 ymm6_0;
mov L0x7fffffff6e82 ymm6_1;
mov L0x7fffffff6e84 ymm6_2;
mov L0x7fffffff6e86 ymm6_3;
mov L0x7fffffff6e88 ymm6_4;
mov L0x7fffffff6e8a ymm6_5;
mov L0x7fffffff6e8c ymm6_6;
mov L0x7fffffff6e8e ymm6_7;
mov L0x7fffffff6e90 ymm6_8;
mov L0x7fffffff6e92 ymm6_9;
mov L0x7fffffff6e94 ymm6_a;
mov L0x7fffffff6e96 ymm6_b;
mov L0x7fffffff6e98 ymm6_c;
mov L0x7fffffff6e9a ymm6_d;
mov L0x7fffffff6e9c ymm6_e;
mov L0x7fffffff6e9e ymm6_f;
(* vmovdqa 0x180(%rsi),%ymm4                       #! EA = L0x7fffffff6ea0; Value = 0x0000000000000000; PC = 0x555555558e66 *)
mov ymm4_0 L0x7fffffff6ea0;
mov ymm4_1 L0x7fffffff6ea2;
mov ymm4_2 L0x7fffffff6ea4;
mov ymm4_3 L0x7fffffff6ea6;
mov ymm4_4 L0x7fffffff6ea8;
mov ymm4_5 L0x7fffffff6eaa;
mov ymm4_6 L0x7fffffff6eac;
mov ymm4_7 L0x7fffffff6eae;
mov ymm4_8 L0x7fffffff6eb0;
mov ymm4_9 L0x7fffffff6eb2;
mov ymm4_a L0x7fffffff6eb4;
mov ymm4_b L0x7fffffff6eb6;
mov ymm4_c L0x7fffffff6eb8;
mov ymm4_d L0x7fffffff6eba;
mov ymm4_e L0x7fffffff6ebc;
mov ymm4_f L0x7fffffff6ebe;
(* vmovdqa 0x180(%rdx),%ymm5                       #! EA = L0x7fffffff6ca0; Value = 0x0000000000000000; PC = 0x555555558e6e *)
mov ymm5_0 L0x7fffffff6ca0;
mov ymm5_1 L0x7fffffff6ca2;
mov ymm5_2 L0x7fffffff6ca4;
mov ymm5_3 L0x7fffffff6ca6;
mov ymm5_4 L0x7fffffff6ca8;
mov ymm5_5 L0x7fffffff6caa;
mov ymm5_6 L0x7fffffff6cac;
mov ymm5_7 L0x7fffffff6cae;
mov ymm5_8 L0x7fffffff6cb0;
mov ymm5_9 L0x7fffffff6cb2;
mov ymm5_a L0x7fffffff6cb4;
mov ymm5_b L0x7fffffff6cb6;
mov ymm5_c L0x7fffffff6cb8;
mov ymm5_d L0x7fffffff6cba;
mov ymm5_e L0x7fffffff6cbc;
mov ymm5_f L0x7fffffff6cbe;
(* vmovdqa 0x1a0(%rsi),%ymm6                       #! EA = L0x7fffffff6ec0; Value = 0x0000000000000000; PC = 0x555555558e76 *)
mov ymm6_0 L0x7fffffff6ec0;
mov ymm6_1 L0x7fffffff6ec2;
mov ymm6_2 L0x7fffffff6ec4;
mov ymm6_3 L0x7fffffff6ec6;
mov ymm6_4 L0x7fffffff6ec8;
mov ymm6_5 L0x7fffffff6eca;
mov ymm6_6 L0x7fffffff6ecc;
mov ymm6_7 L0x7fffffff6ece;
mov ymm6_8 L0x7fffffff6ed0;
mov ymm6_9 L0x7fffffff6ed2;
mov ymm6_a L0x7fffffff6ed4;
mov ymm6_b L0x7fffffff6ed6;
mov ymm6_c L0x7fffffff6ed8;
mov ymm6_d L0x7fffffff6eda;
mov ymm6_e L0x7fffffff6edc;
mov ymm6_f L0x7fffffff6ede;
(* vmovdqa 0x1a0(%rdx),%ymm7                       #! EA = L0x7fffffff6cc0; Value = 0x0000000000000000; PC = 0x555555558e7e *)
mov ymm7_0 L0x7fffffff6cc0;
mov ymm7_1 L0x7fffffff6cc2;
mov ymm7_2 L0x7fffffff6cc4;
mov ymm7_3 L0x7fffffff6cc6;
mov ymm7_4 L0x7fffffff6cc8;
mov ymm7_5 L0x7fffffff6cca;
mov ymm7_6 L0x7fffffff6ccc;
mov ymm7_7 L0x7fffffff6cce;
mov ymm7_8 L0x7fffffff6cd0;
mov ymm7_9 L0x7fffffff6cd2;
mov ymm7_a L0x7fffffff6cd4;
mov ymm7_b L0x7fffffff6cd6;
mov ymm7_c L0x7fffffff6cd8;
mov ymm7_d L0x7fffffff6cda;
mov ymm7_e L0x7fffffff6cdc;
mov ymm7_f L0x7fffffff6cde;
(* vmovdqa 0x1c0(%rsi),%ymm8                       #! EA = L0x7fffffff6ee0; Value = 0x0000000000000000; PC = 0x555555558e86 *)
mov ymm8_0 L0x7fffffff6ee0;
mov ymm8_1 L0x7fffffff6ee2;
mov ymm8_2 L0x7fffffff6ee4;
mov ymm8_3 L0x7fffffff6ee6;
mov ymm8_4 L0x7fffffff6ee8;
mov ymm8_5 L0x7fffffff6eea;
mov ymm8_6 L0x7fffffff6eec;
mov ymm8_7 L0x7fffffff6eee;
mov ymm8_8 L0x7fffffff6ef0;
mov ymm8_9 L0x7fffffff6ef2;
mov ymm8_a L0x7fffffff6ef4;
mov ymm8_b L0x7fffffff6ef6;
mov ymm8_c L0x7fffffff6ef8;
mov ymm8_d L0x7fffffff6efa;
mov ymm8_e L0x7fffffff6efc;
mov ymm8_f L0x7fffffff6efe;
(* vmovdqa 0x1c0(%rdx),%ymm9                       #! EA = L0x7fffffff6ce0; Value = 0x0000000000000000; PC = 0x555555558e8e *)
mov ymm9_0 L0x7fffffff6ce0;
mov ymm9_1 L0x7fffffff6ce2;
mov ymm9_2 L0x7fffffff6ce4;
mov ymm9_3 L0x7fffffff6ce6;
mov ymm9_4 L0x7fffffff6ce8;
mov ymm9_5 L0x7fffffff6cea;
mov ymm9_6 L0x7fffffff6cec;
mov ymm9_7 L0x7fffffff6cee;
mov ymm9_8 L0x7fffffff6cf0;
mov ymm9_9 L0x7fffffff6cf2;
mov ymm9_a L0x7fffffff6cf4;
mov ymm9_b L0x7fffffff6cf6;
mov ymm9_c L0x7fffffff6cf8;
mov ymm9_d L0x7fffffff6cfa;
mov ymm9_e L0x7fffffff6cfc;
mov ymm9_f L0x7fffffff6cfe;
(* vmovdqa 0x1e0(%rsi),%ymm10                      #! EA = L0x7fffffff6f00; Value = 0x0000000000000000; PC = 0x555555558e96 *)
mov ymm10_0 L0x7fffffff6f00;
mov ymm10_1 L0x7fffffff6f02;
mov ymm10_2 L0x7fffffff6f04;
mov ymm10_3 L0x7fffffff6f06;
mov ymm10_4 L0x7fffffff6f08;
mov ymm10_5 L0x7fffffff6f0a;
mov ymm10_6 L0x7fffffff6f0c;
mov ymm10_7 L0x7fffffff6f0e;
mov ymm10_8 L0x7fffffff6f10;
mov ymm10_9 L0x7fffffff6f12;
mov ymm10_a L0x7fffffff6f14;
mov ymm10_b L0x7fffffff6f16;
mov ymm10_c L0x7fffffff6f18;
mov ymm10_d L0x7fffffff6f1a;
mov ymm10_e L0x7fffffff6f1c;
mov ymm10_f L0x7fffffff6f1e;
(* vmovdqa 0x1e0(%rdx),%ymm11                      #! EA = L0x7fffffff6d00; Value = 0x0000000000000000; PC = 0x555555558e9e *)
mov ymm11_0 L0x7fffffff6d00;
mov ymm11_1 L0x7fffffff6d02;
mov ymm11_2 L0x7fffffff6d04;
mov ymm11_3 L0x7fffffff6d06;
mov ymm11_4 L0x7fffffff6d08;
mov ymm11_5 L0x7fffffff6d0a;
mov ymm11_6 L0x7fffffff6d0c;
mov ymm11_7 L0x7fffffff6d0e;
mov ymm11_8 L0x7fffffff6d10;
mov ymm11_9 L0x7fffffff6d12;
mov ymm11_a L0x7fffffff6d14;
mov ymm11_b L0x7fffffff6d16;
mov ymm11_c L0x7fffffff6d18;
mov ymm11_d L0x7fffffff6d1a;
mov ymm11_e L0x7fffffff6d1c;
mov ymm11_f L0x7fffffff6d1e;
(* vpmullw %ymm5,%ymm4,%ymm3                       #! PC = 0x555555558ea6 *)
smull mulHymm4_0 mulL_0 ymm5_0 ymm4_0;
smull mulHymm4_1 mulL_1 ymm5_1 ymm4_1;
smull mulHymm4_2 mulL_2 ymm5_2 ymm4_2;
smull mulHymm4_3 mulL_3 ymm5_3 ymm4_3;
smull mulHymm4_4 mulL_4 ymm5_4 ymm4_4;
smull mulHymm4_5 mulL_5 ymm5_5 ymm4_5;
smull mulHymm4_6 mulL_6 ymm5_6 ymm4_6;
smull mulHymm4_7 mulL_7 ymm5_7 ymm4_7;
smull mulHymm4_8 mulL_8 ymm5_8 ymm4_8;
smull mulHymm4_9 mulL_9 ymm5_9 ymm4_9;
smull mulHymm4_a mulL_a ymm5_a ymm4_a;
smull mulHymm4_b mulL_b ymm5_b ymm4_b;
smull mulHymm4_c mulL_c ymm5_c ymm4_c;
smull mulHymm4_d mulL_d ymm5_d ymm4_d;
smull mulHymm4_e mulL_e ymm5_e ymm4_e;
smull mulHymm4_f mulL_f ymm5_f ymm4_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmulhw %ymm5,%ymm4,%ymm4                       #! PC = 0x555555558eaa *)
smull mulH_0 mulLymm4_0 ymm4_0 ymm5_0;
smull mulH_1 mulLymm4_1 ymm4_1 ymm5_1;
smull mulH_2 mulLymm4_2 ymm4_2 ymm5_2;
smull mulH_3 mulLymm4_3 ymm4_3 ymm5_3;
smull mulH_4 mulLymm4_4 ymm4_4 ymm5_4;
smull mulH_5 mulLymm4_5 ymm4_5 ymm5_5;
smull mulH_6 mulLymm4_6 ymm4_6 ymm5_6;
smull mulH_7 mulLymm4_7 ymm4_7 ymm5_7;
smull mulH_8 mulLymm4_8 ymm4_8 ymm5_8;
smull mulH_9 mulLymm4_9 ymm4_9 ymm5_9;
smull mulH_a mulLymm4_a ymm4_a ymm5_a;
smull mulH_b mulLymm4_b ymm4_b ymm5_b;
smull mulH_c mulLymm4_c ymm4_c ymm5_c;
smull mulH_d mulLymm4_d ymm4_d ymm5_d;
smull mulH_e mulLymm4_e ymm4_e ymm5_e;
smull mulH_f mulLymm4_f ymm4_f ymm5_f;
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
(* vpmullw %ymm7,%ymm6,%ymm5                       #! PC = 0x555555558eae *)
smull mulHymm6_0 mulL_0 ymm7_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm7_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm7_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm7_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm7_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm7_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm7_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm7_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm7_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm7_9 ymm6_9;
smull mulHymm6_a mulL_a ymm7_a ymm6_a;
smull mulHymm6_b mulL_b ymm7_b ymm6_b;
smull mulHymm6_c mulL_c ymm7_c ymm6_c;
smull mulHymm6_d mulL_d ymm7_d ymm6_d;
smull mulHymm6_e mulL_e ymm7_e ymm6_e;
smull mulHymm6_f mulL_f ymm7_f ymm6_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmulhw %ymm7,%ymm6,%ymm6                       #! PC = 0x555555558eb2 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm7_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm7_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm7_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm7_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm7_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm7_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm7_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm7_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm7_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm7_9;
smull mulH_a mulLymm6_a ymm6_a ymm7_a;
smull mulH_b mulLymm6_b ymm6_b ymm7_b;
smull mulH_c mulLymm6_c ymm6_c ymm7_c;
smull mulH_d mulLymm6_d ymm6_d ymm7_d;
smull mulH_e mulLymm6_e ymm6_e ymm7_e;
smull mulH_f mulLymm6_f ymm6_f ymm7_f;
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
(* vpmullw %ymm9,%ymm8,%ymm7                       #! PC = 0x555555558eb6 *)
smull mulHymm8_0 mulL_0 ymm9_0 ymm8_0;
smull mulHymm8_1 mulL_1 ymm9_1 ymm8_1;
smull mulHymm8_2 mulL_2 ymm9_2 ymm8_2;
smull mulHymm8_3 mulL_3 ymm9_3 ymm8_3;
smull mulHymm8_4 mulL_4 ymm9_4 ymm8_4;
smull mulHymm8_5 mulL_5 ymm9_5 ymm8_5;
smull mulHymm8_6 mulL_6 ymm9_6 ymm8_6;
smull mulHymm8_7 mulL_7 ymm9_7 ymm8_7;
smull mulHymm8_8 mulL_8 ymm9_8 ymm8_8;
smull mulHymm8_9 mulL_9 ymm9_9 ymm8_9;
smull mulHymm8_a mulL_a ymm9_a ymm8_a;
smull mulHymm8_b mulL_b ymm9_b ymm8_b;
smull mulHymm8_c mulL_c ymm9_c ymm8_c;
smull mulHymm8_d mulL_d ymm9_d ymm8_d;
smull mulHymm8_e mulL_e ymm9_e ymm8_e;
smull mulHymm8_f mulL_f ymm9_f ymm8_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm9,%ymm8,%ymm8                       #! PC = 0x555555558ebb *)
smull mulH_0 mulLymm8_0 ymm8_0 ymm9_0;
smull mulH_1 mulLymm8_1 ymm8_1 ymm9_1;
smull mulH_2 mulLymm8_2 ymm8_2 ymm9_2;
smull mulH_3 mulLymm8_3 ymm8_3 ymm9_3;
smull mulH_4 mulLymm8_4 ymm8_4 ymm9_4;
smull mulH_5 mulLymm8_5 ymm8_5 ymm9_5;
smull mulH_6 mulLymm8_6 ymm8_6 ymm9_6;
smull mulH_7 mulLymm8_7 ymm8_7 ymm9_7;
smull mulH_8 mulLymm8_8 ymm8_8 ymm9_8;
smull mulH_9 mulLymm8_9 ymm8_9 ymm9_9;
smull mulH_a mulLymm8_a ymm8_a ymm9_a;
smull mulH_b mulLymm8_b ymm8_b ymm9_b;
smull mulH_c mulLymm8_c ymm8_c ymm9_c;
smull mulH_d mulLymm8_d ymm8_d ymm9_d;
smull mulH_e mulLymm8_e ymm8_e ymm9_e;
smull mulH_f mulLymm8_f ymm8_f ymm9_f;
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
(* vpmullw %ymm11,%ymm10,%ymm9                     #! PC = 0x555555558ec0 *)
smull mulHymm10_0 mulL_0 ymm11_0 ymm10_0;
smull mulHymm10_1 mulL_1 ymm11_1 ymm10_1;
smull mulHymm10_2 mulL_2 ymm11_2 ymm10_2;
smull mulHymm10_3 mulL_3 ymm11_3 ymm10_3;
smull mulHymm10_4 mulL_4 ymm11_4 ymm10_4;
smull mulHymm10_5 mulL_5 ymm11_5 ymm10_5;
smull mulHymm10_6 mulL_6 ymm11_6 ymm10_6;
smull mulHymm10_7 mulL_7 ymm11_7 ymm10_7;
smull mulHymm10_8 mulL_8 ymm11_8 ymm10_8;
smull mulHymm10_9 mulL_9 ymm11_9 ymm10_9;
smull mulHymm10_a mulL_a ymm11_a ymm10_a;
smull mulHymm10_b mulL_b ymm11_b ymm10_b;
smull mulHymm10_c mulL_c ymm11_c ymm10_c;
smull mulHymm10_d mulL_d ymm11_d ymm10_d;
smull mulHymm10_e mulL_e ymm11_e ymm10_e;
smull mulHymm10_f mulL_f ymm11_f ymm10_f;
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm11,%ymm10,%ymm10                    #! PC = 0x555555558ec5 *)
smull mulH_0 mulLymm10_0 ymm10_0 ymm11_0;
smull mulH_1 mulLymm10_1 ymm10_1 ymm11_1;
smull mulH_2 mulLymm10_2 ymm10_2 ymm11_2;
smull mulH_3 mulLymm10_3 ymm10_3 ymm11_3;
smull mulH_4 mulLymm10_4 ymm10_4 ymm11_4;
smull mulH_5 mulLymm10_5 ymm10_5 ymm11_5;
smull mulH_6 mulLymm10_6 ymm10_6 ymm11_6;
smull mulH_7 mulLymm10_7 ymm10_7 ymm11_7;
smull mulH_8 mulLymm10_8 ymm10_8 ymm11_8;
smull mulH_9 mulLymm10_9 ymm10_9 ymm11_9;
smull mulH_a mulLymm10_a ymm10_a ymm11_a;
smull mulH_b mulLymm10_b ymm10_b ymm11_b;
smull mulH_c mulLymm10_c ymm10_c ymm11_c;
smull mulH_d mulLymm10_d ymm10_d ymm11_d;
smull mulH_e mulLymm10_e ymm10_e ymm11_e;
smull mulH_f mulLymm10_f ymm10_f ymm11_f;
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
(* vpmullw %ymm1,%ymm3,%ymm3                       #! PC = 0x555555558eca *)
smull mulHymm3_0 mulL_0 ymm1_0 ymm3_0;
smull mulHymm3_1 mulL_1 ymm1_1 ymm3_1;
smull mulHymm3_2 mulL_2 ymm1_2 ymm3_2;
smull mulHymm3_3 mulL_3 ymm1_3 ymm3_3;
smull mulHymm3_4 mulL_4 ymm1_4 ymm3_4;
smull mulHymm3_5 mulL_5 ymm1_5 ymm3_5;
smull mulHymm3_6 mulL_6 ymm1_6 ymm3_6;
smull mulHymm3_7 mulL_7 ymm1_7 ymm3_7;
smull mulHymm3_8 mulL_8 ymm1_8 ymm3_8;
smull mulHymm3_9 mulL_9 ymm1_9 ymm3_9;
smull mulHymm3_a mulL_a ymm1_a ymm3_a;
smull mulHymm3_b mulL_b ymm1_b ymm3_b;
smull mulHymm3_c mulL_c ymm1_c ymm3_c;
smull mulHymm3_d mulL_d ymm1_d ymm3_d;
smull mulHymm3_e mulL_e ymm1_e ymm3_e;
smull mulHymm3_f mulL_f ymm1_f ymm3_f;
cast ymm3_0@sint16 mulL_0;
cast ymm3_1@sint16 mulL_1;
cast ymm3_2@sint16 mulL_2;
cast ymm3_3@sint16 mulL_3;
cast ymm3_4@sint16 mulL_4;
cast ymm3_5@sint16 mulL_5;
cast ymm3_6@sint16 mulL_6;
cast ymm3_7@sint16 mulL_7;
cast ymm3_8@sint16 mulL_8;
cast ymm3_9@sint16 mulL_9;
cast ymm3_a@sint16 mulL_a;
cast ymm3_b@sint16 mulL_b;
cast ymm3_c@sint16 mulL_c;
cast ymm3_d@sint16 mulL_d;
cast ymm3_e@sint16 mulL_e;
cast ymm3_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm5,%ymm5                       #! PC = 0x555555558ece *)
smull mulHymm5_0 mulL_0 ymm1_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm1_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm1_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm1_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm1_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm1_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm1_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm1_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm1_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm1_9 ymm5_9;
smull mulHymm5_a mulL_a ymm1_a ymm5_a;
smull mulHymm5_b mulL_b ymm1_b ymm5_b;
smull mulHymm5_c mulL_c ymm1_c ymm5_c;
smull mulHymm5_d mulL_d ymm1_d ymm5_d;
smull mulHymm5_e mulL_e ymm1_e ymm5_e;
smull mulHymm5_f mulL_f ymm1_f ymm5_f;
cast ymm5_0@sint16 mulL_0;
cast ymm5_1@sint16 mulL_1;
cast ymm5_2@sint16 mulL_2;
cast ymm5_3@sint16 mulL_3;
cast ymm5_4@sint16 mulL_4;
cast ymm5_5@sint16 mulL_5;
cast ymm5_6@sint16 mulL_6;
cast ymm5_7@sint16 mulL_7;
cast ymm5_8@sint16 mulL_8;
cast ymm5_9@sint16 mulL_9;
cast ymm5_a@sint16 mulL_a;
cast ymm5_b@sint16 mulL_b;
cast ymm5_c@sint16 mulL_c;
cast ymm5_d@sint16 mulL_d;
cast ymm5_e@sint16 mulL_e;
cast ymm5_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm7,%ymm7                       #! PC = 0x555555558ed2 *)
smull mulHymm7_0 mulL_0 ymm1_0 ymm7_0;
smull mulHymm7_1 mulL_1 ymm1_1 ymm7_1;
smull mulHymm7_2 mulL_2 ymm1_2 ymm7_2;
smull mulHymm7_3 mulL_3 ymm1_3 ymm7_3;
smull mulHymm7_4 mulL_4 ymm1_4 ymm7_4;
smull mulHymm7_5 mulL_5 ymm1_5 ymm7_5;
smull mulHymm7_6 mulL_6 ymm1_6 ymm7_6;
smull mulHymm7_7 mulL_7 ymm1_7 ymm7_7;
smull mulHymm7_8 mulL_8 ymm1_8 ymm7_8;
smull mulHymm7_9 mulL_9 ymm1_9 ymm7_9;
smull mulHymm7_a mulL_a ymm1_a ymm7_a;
smull mulHymm7_b mulL_b ymm1_b ymm7_b;
smull mulHymm7_c mulL_c ymm1_c ymm7_c;
smull mulHymm7_d mulL_d ymm1_d ymm7_d;
smull mulHymm7_e mulL_e ymm1_e ymm7_e;
smull mulHymm7_f mulL_f ymm1_f ymm7_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmullw %ymm1,%ymm9,%ymm9                       #! PC = 0x555555558ed6 *)
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
cast ymm9_0@sint16 mulL_0;
cast ymm9_1@sint16 mulL_1;
cast ymm9_2@sint16 mulL_2;
cast ymm9_3@sint16 mulL_3;
cast ymm9_4@sint16 mulL_4;
cast ymm9_5@sint16 mulL_5;
cast ymm9_6@sint16 mulL_6;
cast ymm9_7@sint16 mulL_7;
cast ymm9_8@sint16 mulL_8;
cast ymm9_9@sint16 mulL_9;
cast ymm9_a@sint16 mulL_a;
cast ymm9_b@sint16 mulL_b;
cast ymm9_c@sint16 mulL_c;
cast ymm9_d@sint16 mulL_d;
cast ymm9_e@sint16 mulL_e;
cast ymm9_f@sint16 mulL_f;
(* vpmulhw %ymm0,%ymm3,%ymm3                       #! PC = 0x555555558eda *)
smull mulH_0 mulLymm3_0 ymm3_0 ymm0_0;
smull mulH_1 mulLymm3_1 ymm3_1 ymm0_1;
smull mulH_2 mulLymm3_2 ymm3_2 ymm0_2;
smull mulH_3 mulLymm3_3 ymm3_3 ymm0_3;
smull mulH_4 mulLymm3_4 ymm3_4 ymm0_4;
smull mulH_5 mulLymm3_5 ymm3_5 ymm0_5;
smull mulH_6 mulLymm3_6 ymm3_6 ymm0_6;
smull mulH_7 mulLymm3_7 ymm3_7 ymm0_7;
smull mulH_8 mulLymm3_8 ymm3_8 ymm0_8;
smull mulH_9 mulLymm3_9 ymm3_9 ymm0_9;
smull mulH_a mulLymm3_a ymm3_a ymm0_a;
smull mulH_b mulLymm3_b ymm3_b ymm0_b;
smull mulH_c mulLymm3_c ymm3_c ymm0_c;
smull mulH_d mulLymm3_d ymm3_d ymm0_d;
smull mulH_e mulLymm3_e ymm3_e ymm0_e;
smull mulH_f mulLymm3_f ymm3_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm5,%ymm5                       #! PC = 0x555555558ede *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm0_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm0_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm0_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm0_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm0_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm0_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm0_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm0_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm0_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm0_9;
smull mulH_a mulLymm5_a ymm5_a ymm0_a;
smull mulH_b mulLymm5_b ymm5_b ymm0_b;
smull mulH_c mulLymm5_c ymm5_c ymm0_c;
smull mulH_d mulLymm5_d ymm5_d ymm0_d;
smull mulH_e mulLymm5_e ymm5_e ymm0_e;
smull mulH_f mulLymm5_f ymm5_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558ee2 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
(* vpmulhw %ymm0,%ymm9,%ymm9                       #! PC = 0x555555558ee6 *)
smull mulH_0 mulLymm9_0 ymm9_0 ymm0_0;
smull mulH_1 mulLymm9_1 ymm9_1 ymm0_1;
smull mulH_2 mulLymm9_2 ymm9_2 ymm0_2;
smull mulH_3 mulLymm9_3 ymm9_3 ymm0_3;
smull mulH_4 mulLymm9_4 ymm9_4 ymm0_4;
smull mulH_5 mulLymm9_5 ymm9_5 ymm0_5;
smull mulH_6 mulLymm9_6 ymm9_6 ymm0_6;
smull mulH_7 mulLymm9_7 ymm9_7 ymm0_7;
smull mulH_8 mulLymm9_8 ymm9_8 ymm0_8;
smull mulH_9 mulLymm9_9 ymm9_9 ymm0_9;
smull mulH_a mulLymm9_a ymm9_a ymm0_a;
smull mulH_b mulLymm9_b ymm9_b ymm0_b;
smull mulH_c mulLymm9_c ymm9_c ymm0_c;
smull mulH_d mulLymm9_d ymm9_d ymm0_d;
smull mulH_e mulLymm9_e ymm9_e ymm0_e;
smull mulH_f mulLymm9_f ymm9_f ymm0_f;
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
assert true && and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
];
assume and [
mulLymm3_0 = mulLymm4_0, mulLymm3_1 = mulLymm4_1,
mulLymm3_2 = mulLymm4_2, mulLymm3_3 = mulLymm4_3,
mulLymm3_4 = mulLymm4_4, mulLymm3_5 = mulLymm4_5,
mulLymm3_6 = mulLymm4_6, mulLymm3_7 = mulLymm4_7,
mulLymm3_8 = mulLymm4_8, mulLymm3_9 = mulLymm4_9,
mulLymm3_a = mulLymm4_a, mulLymm3_b = mulLymm4_b,
mulLymm3_c = mulLymm4_c, mulLymm3_d = mulLymm4_d,
mulLymm3_e = mulLymm4_e, mulLymm3_f = mulLymm4_f,
mulLymm5_0 = mulLymm6_0, mulLymm5_1 = mulLymm6_1,
mulLymm5_2 = mulLymm6_2, mulLymm5_3 = mulLymm6_3,
mulLymm5_4 = mulLymm6_4, mulLymm5_5 = mulLymm6_5,
mulLymm5_6 = mulLymm6_6, mulLymm5_7 = mulLymm6_7,
mulLymm5_8 = mulLymm6_8, mulLymm5_9 = mulLymm6_9,
mulLymm5_a = mulLymm6_a, mulLymm5_b = mulLymm6_b,
mulLymm5_c = mulLymm6_c, mulLymm5_d = mulLymm6_d,
mulLymm5_e = mulLymm6_e, mulLymm5_f = mulLymm6_f,
mulLymm7_0 = mulLymm8_0, mulLymm7_1 = mulLymm8_1,
mulLymm7_2 = mulLymm8_2, mulLymm7_3 = mulLymm8_3,
mulLymm7_4 = mulLymm8_4, mulLymm7_5 = mulLymm8_5,
mulLymm7_6 = mulLymm8_6, mulLymm7_7 = mulLymm8_7,
mulLymm7_8 = mulLymm8_8, mulLymm7_9 = mulLymm8_9,
mulLymm7_a = mulLymm8_a, mulLymm7_b = mulLymm8_b,
mulLymm7_c = mulLymm8_c, mulLymm7_d = mulLymm8_d,
mulLymm7_e = mulLymm8_e, mulLymm7_f = mulLymm8_f,
mulLymm9_0 = mulLymm10_0, mulLymm9_1 = mulLymm10_1,
mulLymm9_2 = mulLymm10_2, mulLymm9_3 = mulLymm10_3,
mulLymm9_4 = mulLymm10_4, mulLymm9_5 = mulLymm10_5,
mulLymm9_6 = mulLymm10_6, mulLymm9_7 = mulLymm10_7,
mulLymm9_8 = mulLymm10_8, mulLymm9_9 = mulLymm10_9,
mulLymm9_a = mulLymm10_a, mulLymm9_b = mulLymm10_b,
mulLymm9_c = mulLymm10_c, mulLymm9_d = mulLymm10_d,
mulLymm9_e = mulLymm10_e, mulLymm9_f = mulLymm10_f
] && true;
(* vpsubw %ymm3,%ymm4,%ymm3                        #! PC = 0x555555558eea *)
sub ymm3_0 ymm4_0 ymm3_0;
sub ymm3_1 ymm4_1 ymm3_1;
sub ymm3_2 ymm4_2 ymm3_2;
sub ymm3_3 ymm4_3 ymm3_3;
sub ymm3_4 ymm4_4 ymm3_4;
sub ymm3_5 ymm4_5 ymm3_5;
sub ymm3_6 ymm4_6 ymm3_6;
sub ymm3_7 ymm4_7 ymm3_7;
sub ymm3_8 ymm4_8 ymm3_8;
sub ymm3_9 ymm4_9 ymm3_9;
sub ymm3_a ymm4_a ymm3_a;
sub ymm3_b ymm4_b ymm3_b;
sub ymm3_c ymm4_c ymm3_c;
sub ymm3_d ymm4_d ymm3_d;
sub ymm3_e ymm4_e ymm3_e;
sub ymm3_f ymm4_f ymm3_f;
(* vpsubw %ymm5,%ymm6,%ymm4                        #! PC = 0x555555558eee *)
sub ymm4_0 ymm6_0 ymm5_0;
sub ymm4_1 ymm6_1 ymm5_1;
sub ymm4_2 ymm6_2 ymm5_2;
sub ymm4_3 ymm6_3 ymm5_3;
sub ymm4_4 ymm6_4 ymm5_4;
sub ymm4_5 ymm6_5 ymm5_5;
sub ymm4_6 ymm6_6 ymm5_6;
sub ymm4_7 ymm6_7 ymm5_7;
sub ymm4_8 ymm6_8 ymm5_8;
sub ymm4_9 ymm6_9 ymm5_9;
sub ymm4_a ymm6_a ymm5_a;
sub ymm4_b ymm6_b ymm5_b;
sub ymm4_c ymm6_c ymm5_c;
sub ymm4_d ymm6_d ymm5_d;
sub ymm4_e ymm6_e ymm5_e;
sub ymm4_f ymm6_f ymm5_f;
(* vpsubw %ymm7,%ymm8,%ymm5                        #! PC = 0x555555558ef2 *)
sub ymm5_0 ymm8_0 ymm7_0;
sub ymm5_1 ymm8_1 ymm7_1;
sub ymm5_2 ymm8_2 ymm7_2;
sub ymm5_3 ymm8_3 ymm7_3;
sub ymm5_4 ymm8_4 ymm7_4;
sub ymm5_5 ymm8_5 ymm7_5;
sub ymm5_6 ymm8_6 ymm7_6;
sub ymm5_7 ymm8_7 ymm7_7;
sub ymm5_8 ymm8_8 ymm7_8;
sub ymm5_9 ymm8_9 ymm7_9;
sub ymm5_a ymm8_a ymm7_a;
sub ymm5_b ymm8_b ymm7_b;
sub ymm5_c ymm8_c ymm7_c;
sub ymm5_d ymm8_d ymm7_d;
sub ymm5_e ymm8_e ymm7_e;
sub ymm5_f ymm8_f ymm7_f;
(* vpsubw %ymm9,%ymm10,%ymm6                       #! PC = 0x555555558ef6 *)
sub ymm6_0 ymm10_0 ymm9_0;
sub ymm6_1 ymm10_1 ymm9_1;
sub ymm6_2 ymm10_2 ymm9_2;
sub ymm6_3 ymm10_3 ymm9_3;
sub ymm6_4 ymm10_4 ymm9_4;
sub ymm6_5 ymm10_5 ymm9_5;
sub ymm6_6 ymm10_6 ymm9_6;
sub ymm6_7 ymm10_7 ymm9_7;
sub ymm6_8 ymm10_8 ymm9_8;
sub ymm6_9 ymm10_9 ymm9_9;
sub ymm6_a ymm10_a ymm9_a;
sub ymm6_b ymm10_b ymm9_b;
sub ymm6_c ymm10_c ymm9_c;
sub ymm6_d ymm10_d ymm9_d;
sub ymm6_e ymm10_e ymm9_e;
sub ymm6_f ymm10_f ymm9_f;
(* vpmullw %ymm14,%ymm3,%ymm7                      #! PC = 0x555555558efb *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm3,%ymm3                      #! PC = 0x555555558f00 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558f05 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
];
assume and [
mulLymm7_0 = mulLymm3_0, mulLymm7_1 = mulLymm3_1,
mulLymm7_2 = mulLymm3_2, mulLymm7_3 = mulLymm3_3,
mulLymm7_4 = mulLymm3_4, mulLymm7_5 = mulLymm3_5,
mulLymm7_6 = mulLymm3_6, mulLymm7_7 = mulLymm3_7,
mulLymm7_8 = mulLymm3_8, mulLymm7_9 = mulLymm3_9,
mulLymm7_a = mulLymm3_a, mulLymm7_b = mulLymm3_b,
mulLymm7_c = mulLymm3_c, mulLymm7_d = mulLymm3_d,
mulLymm7_e = mulLymm3_e, mulLymm7_f = mulLymm3_f
] && true;
(* vpsubw %ymm7,%ymm3,%ymm3                        #! PC = 0x555555558f09 *)
sub ymm3_0 ymm3_0 ymm7_0;
sub ymm3_1 ymm3_1 ymm7_1;
sub ymm3_2 ymm3_2 ymm7_2;
sub ymm3_3 ymm3_3 ymm7_3;
sub ymm3_4 ymm3_4 ymm7_4;
sub ymm3_5 ymm3_5 ymm7_5;
sub ymm3_6 ymm3_6 ymm7_6;
sub ymm3_7 ymm3_7 ymm7_7;
sub ymm3_8 ymm3_8 ymm7_8;
sub ymm3_9 ymm3_9 ymm7_9;
sub ymm3_a ymm3_a ymm7_a;
sub ymm3_b ymm3_b ymm7_b;
sub ymm3_c ymm3_c ymm7_c;
sub ymm3_d ymm3_d ymm7_d;
sub ymm3_e ymm3_e ymm7_e;
sub ymm3_f ymm3_f ymm7_f;
(* vpmullw %ymm14,%ymm4,%ymm7                      #! PC = 0x555555558f0d *)
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
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm4,%ymm4                      #! PC = 0x555555558f12 *)
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558f17 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
];
assume and [
mulLymm7_0 = mulLymm4_0, mulLymm7_1 = mulLymm4_1,
mulLymm7_2 = mulLymm4_2, mulLymm7_3 = mulLymm4_3,
mulLymm7_4 = mulLymm4_4, mulLymm7_5 = mulLymm4_5,
mulLymm7_6 = mulLymm4_6, mulLymm7_7 = mulLymm4_7,
mulLymm7_8 = mulLymm4_8, mulLymm7_9 = mulLymm4_9,
mulLymm7_a = mulLymm4_a, mulLymm7_b = mulLymm4_b,
mulLymm7_c = mulLymm4_c, mulLymm7_d = mulLymm4_d,
mulLymm7_e = mulLymm4_e, mulLymm7_f = mulLymm4_f
] && true;
(* vpsubw %ymm7,%ymm4,%ymm4                        #! PC = 0x555555558f1b *)
sub ymm4_0 ymm4_0 ymm7_0;
sub ymm4_1 ymm4_1 ymm7_1;
sub ymm4_2 ymm4_2 ymm7_2;
sub ymm4_3 ymm4_3 ymm7_3;
sub ymm4_4 ymm4_4 ymm7_4;
sub ymm4_5 ymm4_5 ymm7_5;
sub ymm4_6 ymm4_6 ymm7_6;
sub ymm4_7 ymm4_7 ymm7_7;
sub ymm4_8 ymm4_8 ymm7_8;
sub ymm4_9 ymm4_9 ymm7_9;
sub ymm4_a ymm4_a ymm7_a;
sub ymm4_b ymm4_b ymm7_b;
sub ymm4_c ymm4_c ymm7_c;
sub ymm4_d ymm4_d ymm7_d;
sub ymm4_e ymm4_e ymm7_e;
sub ymm4_f ymm4_f ymm7_f;
(* vpmullw %ymm14,%ymm5,%ymm7                      #! PC = 0x555555558f1f *)
smull mulHymm5_0 mulL_0 ymm14_0 ymm5_0;
smull mulHymm5_1 mulL_1 ymm14_1 ymm5_1;
smull mulHymm5_2 mulL_2 ymm14_2 ymm5_2;
smull mulHymm5_3 mulL_3 ymm14_3 ymm5_3;
smull mulHymm5_4 mulL_4 ymm14_4 ymm5_4;
smull mulHymm5_5 mulL_5 ymm14_5 ymm5_5;
smull mulHymm5_6 mulL_6 ymm14_6 ymm5_6;
smull mulHymm5_7 mulL_7 ymm14_7 ymm5_7;
smull mulHymm5_8 mulL_8 ymm14_8 ymm5_8;
smull mulHymm5_9 mulL_9 ymm14_9 ymm5_9;
smull mulHymm5_a mulL_a ymm14_a ymm5_a;
smull mulHymm5_b mulL_b ymm14_b ymm5_b;
smull mulHymm5_c mulL_c ymm14_c ymm5_c;
smull mulHymm5_d mulL_d ymm14_d ymm5_d;
smull mulHymm5_e mulL_e ymm14_e ymm5_e;
smull mulHymm5_f mulL_f ymm14_f ymm5_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm5,%ymm5                      #! PC = 0x555555558f24 *)
smull mulH_0 mulLymm5_0 ymm5_0 ymm15_0;
smull mulH_1 mulLymm5_1 ymm5_1 ymm15_1;
smull mulH_2 mulLymm5_2 ymm5_2 ymm15_2;
smull mulH_3 mulLymm5_3 ymm5_3 ymm15_3;
smull mulH_4 mulLymm5_4 ymm5_4 ymm15_4;
smull mulH_5 mulLymm5_5 ymm5_5 ymm15_5;
smull mulH_6 mulLymm5_6 ymm5_6 ymm15_6;
smull mulH_7 mulLymm5_7 ymm5_7 ymm15_7;
smull mulH_8 mulLymm5_8 ymm5_8 ymm15_8;
smull mulH_9 mulLymm5_9 ymm5_9 ymm15_9;
smull mulH_a mulLymm5_a ymm5_a ymm15_a;
smull mulH_b mulLymm5_b ymm5_b ymm15_b;
smull mulH_c mulLymm5_c ymm5_c ymm15_c;
smull mulH_d mulLymm5_d ymm5_d ymm15_d;
smull mulH_e mulLymm5_e ymm5_e ymm15_e;
smull mulH_f mulLymm5_f ymm5_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558f29 *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
];
assume and [
mulLymm7_0 = mulLymm5_0, mulLymm7_1 = mulLymm5_1,
mulLymm7_2 = mulLymm5_2, mulLymm7_3 = mulLymm5_3,
mulLymm7_4 = mulLymm5_4, mulLymm7_5 = mulLymm5_5,
mulLymm7_6 = mulLymm5_6, mulLymm7_7 = mulLymm5_7,
mulLymm7_8 = mulLymm5_8, mulLymm7_9 = mulLymm5_9,
mulLymm7_a = mulLymm5_a, mulLymm7_b = mulLymm5_b,
mulLymm7_c = mulLymm5_c, mulLymm7_d = mulLymm5_d,
mulLymm7_e = mulLymm5_e, mulLymm7_f = mulLymm5_f
] && true;
(* vpsubw %ymm7,%ymm5,%ymm5                        #! PC = 0x555555558f2d *)
sub ymm5_0 ymm5_0 ymm7_0;
sub ymm5_1 ymm5_1 ymm7_1;
sub ymm5_2 ymm5_2 ymm7_2;
sub ymm5_3 ymm5_3 ymm7_3;
sub ymm5_4 ymm5_4 ymm7_4;
sub ymm5_5 ymm5_5 ymm7_5;
sub ymm5_6 ymm5_6 ymm7_6;
sub ymm5_7 ymm5_7 ymm7_7;
sub ymm5_8 ymm5_8 ymm7_8;
sub ymm5_9 ymm5_9 ymm7_9;
sub ymm5_a ymm5_a ymm7_a;
sub ymm5_b ymm5_b ymm7_b;
sub ymm5_c ymm5_c ymm7_c;
sub ymm5_d ymm5_d ymm7_d;
sub ymm5_e ymm5_e ymm7_e;
sub ymm5_f ymm5_f ymm7_f;
(* vpmullw %ymm14,%ymm6,%ymm7                      #! PC = 0x555555558f31 *)
smull mulHymm6_0 mulL_0 ymm14_0 ymm6_0;
smull mulHymm6_1 mulL_1 ymm14_1 ymm6_1;
smull mulHymm6_2 mulL_2 ymm14_2 ymm6_2;
smull mulHymm6_3 mulL_3 ymm14_3 ymm6_3;
smull mulHymm6_4 mulL_4 ymm14_4 ymm6_4;
smull mulHymm6_5 mulL_5 ymm14_5 ymm6_5;
smull mulHymm6_6 mulL_6 ymm14_6 ymm6_6;
smull mulHymm6_7 mulL_7 ymm14_7 ymm6_7;
smull mulHymm6_8 mulL_8 ymm14_8 ymm6_8;
smull mulHymm6_9 mulL_9 ymm14_9 ymm6_9;
smull mulHymm6_a mulL_a ymm14_a ymm6_a;
smull mulHymm6_b mulL_b ymm14_b ymm6_b;
smull mulHymm6_c mulL_c ymm14_c ymm6_c;
smull mulHymm6_d mulL_d ymm14_d ymm6_d;
smull mulHymm6_e mulL_e ymm14_e ymm6_e;
smull mulHymm6_f mulL_f ymm14_f ymm6_f;
cast ymm7_0@sint16 mulL_0;
cast ymm7_1@sint16 mulL_1;
cast ymm7_2@sint16 mulL_2;
cast ymm7_3@sint16 mulL_3;
cast ymm7_4@sint16 mulL_4;
cast ymm7_5@sint16 mulL_5;
cast ymm7_6@sint16 mulL_6;
cast ymm7_7@sint16 mulL_7;
cast ymm7_8@sint16 mulL_8;
cast ymm7_9@sint16 mulL_9;
cast ymm7_a@sint16 mulL_a;
cast ymm7_b@sint16 mulL_b;
cast ymm7_c@sint16 mulL_c;
cast ymm7_d@sint16 mulL_d;
cast ymm7_e@sint16 mulL_e;
cast ymm7_f@sint16 mulL_f;
(* vpmulhw %ymm15,%ymm6,%ymm6                      #! PC = 0x555555558f36 *)
smull mulH_0 mulLymm6_0 ymm6_0 ymm15_0;
smull mulH_1 mulLymm6_1 ymm6_1 ymm15_1;
smull mulH_2 mulLymm6_2 ymm6_2 ymm15_2;
smull mulH_3 mulLymm6_3 ymm6_3 ymm15_3;
smull mulH_4 mulLymm6_4 ymm6_4 ymm15_4;
smull mulH_5 mulLymm6_5 ymm6_5 ymm15_5;
smull mulH_6 mulLymm6_6 ymm6_6 ymm15_6;
smull mulH_7 mulLymm6_7 ymm6_7 ymm15_7;
smull mulH_8 mulLymm6_8 ymm6_8 ymm15_8;
smull mulH_9 mulLymm6_9 ymm6_9 ymm15_9;
smull mulH_a mulLymm6_a ymm6_a ymm15_a;
smull mulH_b mulLymm6_b ymm6_b ymm15_b;
smull mulH_c mulLymm6_c ymm6_c ymm15_c;
smull mulH_d mulLymm6_d ymm6_d ymm15_d;
smull mulH_e mulLymm6_e ymm6_e ymm15_e;
smull mulH_f mulLymm6_f ymm6_f ymm15_f;
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
(* vpmulhw %ymm0,%ymm7,%ymm7                       #! PC = 0x555555558f3b *)
smull mulH_0 mulLymm7_0 ymm7_0 ymm0_0;
smull mulH_1 mulLymm7_1 ymm7_1 ymm0_1;
smull mulH_2 mulLymm7_2 ymm7_2 ymm0_2;
smull mulH_3 mulLymm7_3 ymm7_3 ymm0_3;
smull mulH_4 mulLymm7_4 ymm7_4 ymm0_4;
smull mulH_5 mulLymm7_5 ymm7_5 ymm0_5;
smull mulH_6 mulLymm7_6 ymm7_6 ymm0_6;
smull mulH_7 mulLymm7_7 ymm7_7 ymm0_7;
smull mulH_8 mulLymm7_8 ymm7_8 ymm0_8;
smull mulH_9 mulLymm7_9 ymm7_9 ymm0_9;
smull mulH_a mulLymm7_a ymm7_a ymm0_a;
smull mulH_b mulLymm7_b ymm7_b ymm0_b;
smull mulH_c mulLymm7_c ymm7_c ymm0_c;
smull mulH_d mulLymm7_d ymm7_d ymm0_d;
smull mulH_e mulLymm7_e ymm7_e ymm0_e;
smull mulH_f mulLymm7_f ymm7_f ymm0_f;
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
assert true && and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
];
assume and [
mulLymm7_0 = mulLymm6_0, mulLymm7_1 = mulLymm6_1,
mulLymm7_2 = mulLymm6_2, mulLymm7_3 = mulLymm6_3,
mulLymm7_4 = mulLymm6_4, mulLymm7_5 = mulLymm6_5,
mulLymm7_6 = mulLymm6_6, mulLymm7_7 = mulLymm6_7,
mulLymm7_8 = mulLymm6_8, mulLymm7_9 = mulLymm6_9,
mulLymm7_a = mulLymm6_a, mulLymm7_b = mulLymm6_b,
mulLymm7_c = mulLymm6_c, mulLymm7_d = mulLymm6_d,
mulLymm7_e = mulLymm6_e, mulLymm7_f = mulLymm6_f
] && true;
(* vpsubw %ymm7,%ymm6,%ymm6                        #! PC = 0x555555558f3f *)
sub ymm6_0 ymm6_0 ymm7_0;
sub ymm6_1 ymm6_1 ymm7_1;
sub ymm6_2 ymm6_2 ymm7_2;
sub ymm6_3 ymm6_3 ymm7_3;
sub ymm6_4 ymm6_4 ymm7_4;
sub ymm6_5 ymm6_5 ymm7_5;
sub ymm6_6 ymm6_6 ymm7_6;
sub ymm6_7 ymm6_7 ymm7_7;
sub ymm6_8 ymm6_8 ymm7_8;
sub ymm6_9 ymm6_9 ymm7_9;
sub ymm6_a ymm6_a ymm7_a;
sub ymm6_b ymm6_b ymm7_b;
sub ymm6_c ymm6_c ymm7_c;
sub ymm6_d ymm6_d ymm7_d;
sub ymm6_e ymm6_e ymm7_e;
sub ymm6_f ymm6_f ymm7_f;
(* vmovdqa %ymm3,0x180(%rdi)                       #! EA = L0x7fffffff6ea0; PC = 0x555555558f43 *)
mov L0x7fffffff6ea0 ymm3_0;
mov L0x7fffffff6ea2 ymm3_1;
mov L0x7fffffff6ea4 ymm3_2;
mov L0x7fffffff6ea6 ymm3_3;
mov L0x7fffffff6ea8 ymm3_4;
mov L0x7fffffff6eaa ymm3_5;
mov L0x7fffffff6eac ymm3_6;
mov L0x7fffffff6eae ymm3_7;
mov L0x7fffffff6eb0 ymm3_8;
mov L0x7fffffff6eb2 ymm3_9;
mov L0x7fffffff6eb4 ymm3_a;
mov L0x7fffffff6eb6 ymm3_b;
mov L0x7fffffff6eb8 ymm3_c;
mov L0x7fffffff6eba ymm3_d;
mov L0x7fffffff6ebc ymm3_e;
mov L0x7fffffff6ebe ymm3_f;
(* vmovdqa %ymm4,0x1a0(%rdi)                       #! EA = L0x7fffffff6ec0; PC = 0x555555558f4b *)
mov L0x7fffffff6ec0 ymm4_0;
mov L0x7fffffff6ec2 ymm4_1;
mov L0x7fffffff6ec4 ymm4_2;
mov L0x7fffffff6ec6 ymm4_3;
mov L0x7fffffff6ec8 ymm4_4;
mov L0x7fffffff6eca ymm4_5;
mov L0x7fffffff6ecc ymm4_6;
mov L0x7fffffff6ece ymm4_7;
mov L0x7fffffff6ed0 ymm4_8;
mov L0x7fffffff6ed2 ymm4_9;
mov L0x7fffffff6ed4 ymm4_a;
mov L0x7fffffff6ed6 ymm4_b;
mov L0x7fffffff6ed8 ymm4_c;
mov L0x7fffffff6eda ymm4_d;
mov L0x7fffffff6edc ymm4_e;
mov L0x7fffffff6ede ymm4_f;
(* vmovdqa %ymm5,0x1c0(%rdi)                       #! EA = L0x7fffffff6ee0; PC = 0x555555558f53 *)
mov L0x7fffffff6ee0 ymm5_0;
mov L0x7fffffff6ee2 ymm5_1;
mov L0x7fffffff6ee4 ymm5_2;
mov L0x7fffffff6ee6 ymm5_3;
mov L0x7fffffff6ee8 ymm5_4;
mov L0x7fffffff6eea ymm5_5;
mov L0x7fffffff6eec ymm5_6;
mov L0x7fffffff6eee ymm5_7;
mov L0x7fffffff6ef0 ymm5_8;
mov L0x7fffffff6ef2 ymm5_9;
mov L0x7fffffff6ef4 ymm5_a;
mov L0x7fffffff6ef6 ymm5_b;
mov L0x7fffffff6ef8 ymm5_c;
mov L0x7fffffff6efa ymm5_d;
mov L0x7fffffff6efc ymm5_e;
mov L0x7fffffff6efe ymm5_f;
(* vmovdqa %ymm6,0x1e0(%rdi)                       #! EA = L0x7fffffff6f00; PC = 0x555555558f5b *)
mov L0x7fffffff6f00 ymm6_0;
mov L0x7fffffff6f02 ymm6_1;
mov L0x7fffffff6f04 ymm6_2;
mov L0x7fffffff6f06 ymm6_3;
mov L0x7fffffff6f08 ymm6_4;
mov L0x7fffffff6f0a ymm6_5;
mov L0x7fffffff6f0c ymm6_6;
mov L0x7fffffff6f0e ymm6_7;
mov L0x7fffffff6f10 ymm6_8;
mov L0x7fffffff6f12 ymm6_9;
mov L0x7fffffff6f14 ymm6_a;
mov L0x7fffffff6f16 ymm6_b;
mov L0x7fffffff6f18 ymm6_c;
mov L0x7fffffff6f1a ymm6_d;
mov L0x7fffffff6f1c ymm6_e;
mov L0x7fffffff6f1e ymm6_f;
(* #! <- SP = 0x7fffffff6778 *)
#! 0x7fffffff6778 = 0x7fffffff6778;
(* #retq                                           #! PC = 0x555555558f63 *)
#retq                                           #! 0x555555558f63 = 0x555555558f63;

{

(* algebraic postcondition *)

and [
  eqmod (in1_000 * in2_000) (2**8 * L0x7fffffff6d20) [7681],
  eqmod (in1_001 * in2_001) (2**8 * L0x7fffffff6d22) [7681],
  eqmod (in1_002 * in2_002) (2**8 * L0x7fffffff6d24) [7681],
  eqmod (in1_003 * in2_003) (2**8 * L0x7fffffff6d26) [7681],
  eqmod (in1_004 * in2_004) (2**8 * L0x7fffffff6d28) [7681],
  eqmod (in1_005 * in2_005) (2**8 * L0x7fffffff6d2a) [7681],
  eqmod (in1_006 * in2_006) (2**8 * L0x7fffffff6d2c) [7681],
  eqmod (in1_007 * in2_007) (2**8 * L0x7fffffff6d2e) [7681],
  eqmod (in1_008 * in2_008) (2**8 * L0x7fffffff6d30) [7681],
  eqmod (in1_009 * in2_009) (2**8 * L0x7fffffff6d32) [7681],
  eqmod (in1_010 * in2_010) (2**8 * L0x7fffffff6d34) [7681],
  eqmod (in1_011 * in2_011) (2**8 * L0x7fffffff6d36) [7681],
  eqmod (in1_012 * in2_012) (2**8 * L0x7fffffff6d38) [7681],
  eqmod (in1_013 * in2_013) (2**8 * L0x7fffffff6d3a) [7681],
  eqmod (in1_014 * in2_014) (2**8 * L0x7fffffff6d3c) [7681],
  eqmod (in1_015 * in2_015) (2**8 * L0x7fffffff6d3e) [7681],
  eqmod (in1_016 * in2_016) (2**8 * L0x7fffffff6d40) [7681],
  eqmod (in1_017 * in2_017) (2**8 * L0x7fffffff6d42) [7681],
  eqmod (in1_018 * in2_018) (2**8 * L0x7fffffff6d44) [7681],
  eqmod (in1_019 * in2_019) (2**8 * L0x7fffffff6d46) [7681],
  eqmod (in1_020 * in2_020) (2**8 * L0x7fffffff6d48) [7681],
  eqmod (in1_021 * in2_021) (2**8 * L0x7fffffff6d4a) [7681],
  eqmod (in1_022 * in2_022) (2**8 * L0x7fffffff6d4c) [7681],
  eqmod (in1_023 * in2_023) (2**8 * L0x7fffffff6d4e) [7681],
  eqmod (in1_024 * in2_024) (2**8 * L0x7fffffff6d50) [7681],
  eqmod (in1_025 * in2_025) (2**8 * L0x7fffffff6d52) [7681],
  eqmod (in1_026 * in2_026) (2**8 * L0x7fffffff6d54) [7681],
  eqmod (in1_027 * in2_027) (2**8 * L0x7fffffff6d56) [7681],
  eqmod (in1_028 * in2_028) (2**8 * L0x7fffffff6d58) [7681],
  eqmod (in1_029 * in2_029) (2**8 * L0x7fffffff6d5a) [7681],
  eqmod (in1_030 * in2_030) (2**8 * L0x7fffffff6d5c) [7681],
  eqmod (in1_031 * in2_031) (2**8 * L0x7fffffff6d5e) [7681],
  eqmod (in1_032 * in2_032) (2**8 * L0x7fffffff6d60) [7681],
  eqmod (in1_033 * in2_033) (2**8 * L0x7fffffff6d62) [7681],
  eqmod (in1_034 * in2_034) (2**8 * L0x7fffffff6d64) [7681],
  eqmod (in1_035 * in2_035) (2**8 * L0x7fffffff6d66) [7681],
  eqmod (in1_036 * in2_036) (2**8 * L0x7fffffff6d68) [7681],
  eqmod (in1_037 * in2_037) (2**8 * L0x7fffffff6d6a) [7681],
  eqmod (in1_038 * in2_038) (2**8 * L0x7fffffff6d6c) [7681],
  eqmod (in1_039 * in2_039) (2**8 * L0x7fffffff6d6e) [7681],
  eqmod (in1_040 * in2_040) (2**8 * L0x7fffffff6d70) [7681],
  eqmod (in1_041 * in2_041) (2**8 * L0x7fffffff6d72) [7681],
  eqmod (in1_042 * in2_042) (2**8 * L0x7fffffff6d74) [7681],
  eqmod (in1_043 * in2_043) (2**8 * L0x7fffffff6d76) [7681],
  eqmod (in1_044 * in2_044) (2**8 * L0x7fffffff6d78) [7681],
  eqmod (in1_045 * in2_045) (2**8 * L0x7fffffff6d7a) [7681],
  eqmod (in1_046 * in2_046) (2**8 * L0x7fffffff6d7c) [7681],
  eqmod (in1_047 * in2_047) (2**8 * L0x7fffffff6d7e) [7681],
  eqmod (in1_048 * in2_048) (2**8 * L0x7fffffff6d80) [7681],
  eqmod (in1_049 * in2_049) (2**8 * L0x7fffffff6d82) [7681],
  eqmod (in1_050 * in2_050) (2**8 * L0x7fffffff6d84) [7681],
  eqmod (in1_051 * in2_051) (2**8 * L0x7fffffff6d86) [7681],
  eqmod (in1_052 * in2_052) (2**8 * L0x7fffffff6d88) [7681],
  eqmod (in1_053 * in2_053) (2**8 * L0x7fffffff6d8a) [7681],
  eqmod (in1_054 * in2_054) (2**8 * L0x7fffffff6d8c) [7681],
  eqmod (in1_055 * in2_055) (2**8 * L0x7fffffff6d8e) [7681],
  eqmod (in1_056 * in2_056) (2**8 * L0x7fffffff6d90) [7681],
  eqmod (in1_057 * in2_057) (2**8 * L0x7fffffff6d92) [7681],
  eqmod (in1_058 * in2_058) (2**8 * L0x7fffffff6d94) [7681],
  eqmod (in1_059 * in2_059) (2**8 * L0x7fffffff6d96) [7681],
  eqmod (in1_060 * in2_060) (2**8 * L0x7fffffff6d98) [7681],
  eqmod (in1_061 * in2_061) (2**8 * L0x7fffffff6d9a) [7681],
  eqmod (in1_062 * in2_062) (2**8 * L0x7fffffff6d9c) [7681],
  eqmod (in1_063 * in2_063) (2**8 * L0x7fffffff6d9e) [7681],
  eqmod (in1_064 * in2_064) (2**8 * L0x7fffffff6da0) [7681],
  eqmod (in1_065 * in2_065) (2**8 * L0x7fffffff6da2) [7681],
  eqmod (in1_066 * in2_066) (2**8 * L0x7fffffff6da4) [7681],
  eqmod (in1_067 * in2_067) (2**8 * L0x7fffffff6da6) [7681],
  eqmod (in1_068 * in2_068) (2**8 * L0x7fffffff6da8) [7681],
  eqmod (in1_069 * in2_069) (2**8 * L0x7fffffff6daa) [7681],
  eqmod (in1_070 * in2_070) (2**8 * L0x7fffffff6dac) [7681],
  eqmod (in1_071 * in2_071) (2**8 * L0x7fffffff6dae) [7681],
  eqmod (in1_072 * in2_072) (2**8 * L0x7fffffff6db0) [7681],
  eqmod (in1_073 * in2_073) (2**8 * L0x7fffffff6db2) [7681],
  eqmod (in1_074 * in2_074) (2**8 * L0x7fffffff6db4) [7681],
  eqmod (in1_075 * in2_075) (2**8 * L0x7fffffff6db6) [7681],
  eqmod (in1_076 * in2_076) (2**8 * L0x7fffffff6db8) [7681],
  eqmod (in1_077 * in2_077) (2**8 * L0x7fffffff6dba) [7681],
  eqmod (in1_078 * in2_078) (2**8 * L0x7fffffff6dbc) [7681],
  eqmod (in1_079 * in2_079) (2**8 * L0x7fffffff6dbe) [7681],
  eqmod (in1_080 * in2_080) (2**8 * L0x7fffffff6dc0) [7681],
  eqmod (in1_081 * in2_081) (2**8 * L0x7fffffff6dc2) [7681],
  eqmod (in1_082 * in2_082) (2**8 * L0x7fffffff6dc4) [7681],
  eqmod (in1_083 * in2_083) (2**8 * L0x7fffffff6dc6) [7681],
  eqmod (in1_084 * in2_084) (2**8 * L0x7fffffff6dc8) [7681],
  eqmod (in1_085 * in2_085) (2**8 * L0x7fffffff6dca) [7681],
  eqmod (in1_086 * in2_086) (2**8 * L0x7fffffff6dcc) [7681],
  eqmod (in1_087 * in2_087) (2**8 * L0x7fffffff6dce) [7681],
  eqmod (in1_088 * in2_088) (2**8 * L0x7fffffff6dd0) [7681],
  eqmod (in1_089 * in2_089) (2**8 * L0x7fffffff6dd2) [7681],
  eqmod (in1_090 * in2_090) (2**8 * L0x7fffffff6dd4) [7681],
  eqmod (in1_091 * in2_091) (2**8 * L0x7fffffff6dd6) [7681],
  eqmod (in1_092 * in2_092) (2**8 * L0x7fffffff6dd8) [7681],
  eqmod (in1_093 * in2_093) (2**8 * L0x7fffffff6dda) [7681],
  eqmod (in1_094 * in2_094) (2**8 * L0x7fffffff6ddc) [7681],
  eqmod (in1_095 * in2_095) (2**8 * L0x7fffffff6dde) [7681],
  eqmod (in1_096 * in2_096) (2**8 * L0x7fffffff6de0) [7681],
  eqmod (in1_097 * in2_097) (2**8 * L0x7fffffff6de2) [7681],
  eqmod (in1_098 * in2_098) (2**8 * L0x7fffffff6de4) [7681],
  eqmod (in1_099 * in2_099) (2**8 * L0x7fffffff6de6) [7681],
  eqmod (in1_100 * in2_100) (2**8 * L0x7fffffff6de8) [7681],
  eqmod (in1_101 * in2_101) (2**8 * L0x7fffffff6dea) [7681],
  eqmod (in1_102 * in2_102) (2**8 * L0x7fffffff6dec) [7681],
  eqmod (in1_103 * in2_103) (2**8 * L0x7fffffff6dee) [7681],
  eqmod (in1_104 * in2_104) (2**8 * L0x7fffffff6df0) [7681],
  eqmod (in1_105 * in2_105) (2**8 * L0x7fffffff6df2) [7681],
  eqmod (in1_106 * in2_106) (2**8 * L0x7fffffff6df4) [7681],
  eqmod (in1_107 * in2_107) (2**8 * L0x7fffffff6df6) [7681],
  eqmod (in1_108 * in2_108) (2**8 * L0x7fffffff6df8) [7681],
  eqmod (in1_109 * in2_109) (2**8 * L0x7fffffff6dfa) [7681],
  eqmod (in1_110 * in2_110) (2**8 * L0x7fffffff6dfc) [7681],
  eqmod (in1_111 * in2_111) (2**8 * L0x7fffffff6dfe) [7681],
  eqmod (in1_112 * in2_112) (2**8 * L0x7fffffff6e00) [7681],
  eqmod (in1_113 * in2_113) (2**8 * L0x7fffffff6e02) [7681],
  eqmod (in1_114 * in2_114) (2**8 * L0x7fffffff6e04) [7681],
  eqmod (in1_115 * in2_115) (2**8 * L0x7fffffff6e06) [7681],
  eqmod (in1_116 * in2_116) (2**8 * L0x7fffffff6e08) [7681],
  eqmod (in1_117 * in2_117) (2**8 * L0x7fffffff6e0a) [7681],
  eqmod (in1_118 * in2_118) (2**8 * L0x7fffffff6e0c) [7681],
  eqmod (in1_119 * in2_119) (2**8 * L0x7fffffff6e0e) [7681],
  eqmod (in1_120 * in2_120) (2**8 * L0x7fffffff6e10) [7681],
  eqmod (in1_121 * in2_121) (2**8 * L0x7fffffff6e12) [7681],
  eqmod (in1_122 * in2_122) (2**8 * L0x7fffffff6e14) [7681],
  eqmod (in1_123 * in2_123) (2**8 * L0x7fffffff6e16) [7681],
  eqmod (in1_124 * in2_124) (2**8 * L0x7fffffff6e18) [7681],
  eqmod (in1_125 * in2_125) (2**8 * L0x7fffffff6e1a) [7681],
  eqmod (in1_126 * in2_126) (2**8 * L0x7fffffff6e1c) [7681],
  eqmod (in1_127 * in2_127) (2**8 * L0x7fffffff6e1e) [7681],
  eqmod (in1_128 * in2_128) (2**8 * L0x7fffffff6e20) [7681],
  eqmod (in1_129 * in2_129) (2**8 * L0x7fffffff6e22) [7681],
  eqmod (in1_130 * in2_130) (2**8 * L0x7fffffff6e24) [7681],
  eqmod (in1_131 * in2_131) (2**8 * L0x7fffffff6e26) [7681],
  eqmod (in1_132 * in2_132) (2**8 * L0x7fffffff6e28) [7681],
  eqmod (in1_133 * in2_133) (2**8 * L0x7fffffff6e2a) [7681],
  eqmod (in1_134 * in2_134) (2**8 * L0x7fffffff6e2c) [7681],
  eqmod (in1_135 * in2_135) (2**8 * L0x7fffffff6e2e) [7681],
  eqmod (in1_136 * in2_136) (2**8 * L0x7fffffff6e30) [7681],
  eqmod (in1_137 * in2_137) (2**8 * L0x7fffffff6e32) [7681],
  eqmod (in1_138 * in2_138) (2**8 * L0x7fffffff6e34) [7681],
  eqmod (in1_139 * in2_139) (2**8 * L0x7fffffff6e36) [7681],
  eqmod (in1_140 * in2_140) (2**8 * L0x7fffffff6e38) [7681],
  eqmod (in1_141 * in2_141) (2**8 * L0x7fffffff6e3a) [7681],
  eqmod (in1_142 * in2_142) (2**8 * L0x7fffffff6e3c) [7681],
  eqmod (in1_143 * in2_143) (2**8 * L0x7fffffff6e3e) [7681],
  eqmod (in1_144 * in2_144) (2**8 * L0x7fffffff6e40) [7681],
  eqmod (in1_145 * in2_145) (2**8 * L0x7fffffff6e42) [7681],
  eqmod (in1_146 * in2_146) (2**8 * L0x7fffffff6e44) [7681],
  eqmod (in1_147 * in2_147) (2**8 * L0x7fffffff6e46) [7681],
  eqmod (in1_148 * in2_148) (2**8 * L0x7fffffff6e48) [7681],
  eqmod (in1_149 * in2_149) (2**8 * L0x7fffffff6e4a) [7681],
  eqmod (in1_150 * in2_150) (2**8 * L0x7fffffff6e4c) [7681],
  eqmod (in1_151 * in2_151) (2**8 * L0x7fffffff6e4e) [7681],
  eqmod (in1_152 * in2_152) (2**8 * L0x7fffffff6e50) [7681],
  eqmod (in1_153 * in2_153) (2**8 * L0x7fffffff6e52) [7681],
  eqmod (in1_154 * in2_154) (2**8 * L0x7fffffff6e54) [7681],
  eqmod (in1_155 * in2_155) (2**8 * L0x7fffffff6e56) [7681],
  eqmod (in1_156 * in2_156) (2**8 * L0x7fffffff6e58) [7681],
  eqmod (in1_157 * in2_157) (2**8 * L0x7fffffff6e5a) [7681],
  eqmod (in1_158 * in2_158) (2**8 * L0x7fffffff6e5c) [7681],
  eqmod (in1_159 * in2_159) (2**8 * L0x7fffffff6e5e) [7681],
  eqmod (in1_160 * in2_160) (2**8 * L0x7fffffff6e60) [7681],
  eqmod (in1_161 * in2_161) (2**8 * L0x7fffffff6e62) [7681],
  eqmod (in1_162 * in2_162) (2**8 * L0x7fffffff6e64) [7681],
  eqmod (in1_163 * in2_163) (2**8 * L0x7fffffff6e66) [7681],
  eqmod (in1_164 * in2_164) (2**8 * L0x7fffffff6e68) [7681],
  eqmod (in1_165 * in2_165) (2**8 * L0x7fffffff6e6a) [7681],
  eqmod (in1_166 * in2_166) (2**8 * L0x7fffffff6e6c) [7681],
  eqmod (in1_167 * in2_167) (2**8 * L0x7fffffff6e6e) [7681],
  eqmod (in1_168 * in2_168) (2**8 * L0x7fffffff6e70) [7681],
  eqmod (in1_169 * in2_169) (2**8 * L0x7fffffff6e72) [7681],
  eqmod (in1_170 * in2_170) (2**8 * L0x7fffffff6e74) [7681],
  eqmod (in1_171 * in2_171) (2**8 * L0x7fffffff6e76) [7681],
  eqmod (in1_172 * in2_172) (2**8 * L0x7fffffff6e78) [7681],
  eqmod (in1_173 * in2_173) (2**8 * L0x7fffffff6e7a) [7681],
  eqmod (in1_174 * in2_174) (2**8 * L0x7fffffff6e7c) [7681],
  eqmod (in1_175 * in2_175) (2**8 * L0x7fffffff6e7e) [7681],
  eqmod (in1_176 * in2_176) (2**8 * L0x7fffffff6e80) [7681],
  eqmod (in1_177 * in2_177) (2**8 * L0x7fffffff6e82) [7681],
  eqmod (in1_178 * in2_178) (2**8 * L0x7fffffff6e84) [7681],
  eqmod (in1_179 * in2_179) (2**8 * L0x7fffffff6e86) [7681],
  eqmod (in1_180 * in2_180) (2**8 * L0x7fffffff6e88) [7681],
  eqmod (in1_181 * in2_181) (2**8 * L0x7fffffff6e8a) [7681],
  eqmod (in1_182 * in2_182) (2**8 * L0x7fffffff6e8c) [7681],
  eqmod (in1_183 * in2_183) (2**8 * L0x7fffffff6e8e) [7681],
  eqmod (in1_184 * in2_184) (2**8 * L0x7fffffff6e90) [7681],
  eqmod (in1_185 * in2_185) (2**8 * L0x7fffffff6e92) [7681],
  eqmod (in1_186 * in2_186) (2**8 * L0x7fffffff6e94) [7681],
  eqmod (in1_187 * in2_187) (2**8 * L0x7fffffff6e96) [7681],
  eqmod (in1_188 * in2_188) (2**8 * L0x7fffffff6e98) [7681],
  eqmod (in1_189 * in2_189) (2**8 * L0x7fffffff6e9a) [7681],
  eqmod (in1_190 * in2_190) (2**8 * L0x7fffffff6e9c) [7681],
  eqmod (in1_191 * in2_191) (2**8 * L0x7fffffff6e9e) [7681],
  eqmod (in1_192 * in2_192) (2**8 * L0x7fffffff6ea0) [7681],
  eqmod (in1_193 * in2_193) (2**8 * L0x7fffffff6ea2) [7681],
  eqmod (in1_194 * in2_194) (2**8 * L0x7fffffff6ea4) [7681],
  eqmod (in1_195 * in2_195) (2**8 * L0x7fffffff6ea6) [7681],
  eqmod (in1_196 * in2_196) (2**8 * L0x7fffffff6ea8) [7681],
  eqmod (in1_197 * in2_197) (2**8 * L0x7fffffff6eaa) [7681],
  eqmod (in1_198 * in2_198) (2**8 * L0x7fffffff6eac) [7681],
  eqmod (in1_199 * in2_199) (2**8 * L0x7fffffff6eae) [7681],
  eqmod (in1_200 * in2_200) (2**8 * L0x7fffffff6eb0) [7681],
  eqmod (in1_201 * in2_201) (2**8 * L0x7fffffff6eb2) [7681],
  eqmod (in1_202 * in2_202) (2**8 * L0x7fffffff6eb4) [7681],
  eqmod (in1_203 * in2_203) (2**8 * L0x7fffffff6eb6) [7681],
  eqmod (in1_204 * in2_204) (2**8 * L0x7fffffff6eb8) [7681],
  eqmod (in1_205 * in2_205) (2**8 * L0x7fffffff6eba) [7681],
  eqmod (in1_206 * in2_206) (2**8 * L0x7fffffff6ebc) [7681],
  eqmod (in1_207 * in2_207) (2**8 * L0x7fffffff6ebe) [7681],
  eqmod (in1_208 * in2_208) (2**8 * L0x7fffffff6ec0) [7681],
  eqmod (in1_209 * in2_209) (2**8 * L0x7fffffff6ec2) [7681],
  eqmod (in1_210 * in2_210) (2**8 * L0x7fffffff6ec4) [7681],
  eqmod (in1_211 * in2_211) (2**8 * L0x7fffffff6ec6) [7681],
  eqmod (in1_212 * in2_212) (2**8 * L0x7fffffff6ec8) [7681],
  eqmod (in1_213 * in2_213) (2**8 * L0x7fffffff6eca) [7681],
  eqmod (in1_214 * in2_214) (2**8 * L0x7fffffff6ecc) [7681],
  eqmod (in1_215 * in2_215) (2**8 * L0x7fffffff6ece) [7681],
  eqmod (in1_216 * in2_216) (2**8 * L0x7fffffff6ed0) [7681],
  eqmod (in1_217 * in2_217) (2**8 * L0x7fffffff6ed2) [7681],
  eqmod (in1_218 * in2_218) (2**8 * L0x7fffffff6ed4) [7681],
  eqmod (in1_219 * in2_219) (2**8 * L0x7fffffff6ed6) [7681],
  eqmod (in1_220 * in2_220) (2**8 * L0x7fffffff6ed8) [7681],
  eqmod (in1_221 * in2_221) (2**8 * L0x7fffffff6eda) [7681],
  eqmod (in1_222 * in2_222) (2**8 * L0x7fffffff6edc) [7681],
  eqmod (in1_223 * in2_223) (2**8 * L0x7fffffff6ede) [7681],
  eqmod (in1_224 * in2_224) (2**8 * L0x7fffffff6ee0) [7681],
  eqmod (in1_225 * in2_225) (2**8 * L0x7fffffff6ee2) [7681],
  eqmod (in1_226 * in2_226) (2**8 * L0x7fffffff6ee4) [7681],
  eqmod (in1_227 * in2_227) (2**8 * L0x7fffffff6ee6) [7681],
  eqmod (in1_228 * in2_228) (2**8 * L0x7fffffff6ee8) [7681],
  eqmod (in1_229 * in2_229) (2**8 * L0x7fffffff6eea) [7681],
  eqmod (in1_230 * in2_230) (2**8 * L0x7fffffff6eec) [7681],
  eqmod (in1_231 * in2_231) (2**8 * L0x7fffffff6eee) [7681],
  eqmod (in1_232 * in2_232) (2**8 * L0x7fffffff6ef0) [7681],
  eqmod (in1_233 * in2_233) (2**8 * L0x7fffffff6ef2) [7681],
  eqmod (in1_234 * in2_234) (2**8 * L0x7fffffff6ef4) [7681],
  eqmod (in1_235 * in2_235) (2**8 * L0x7fffffff6ef6) [7681],
  eqmod (in1_236 * in2_236) (2**8 * L0x7fffffff6ef8) [7681],
  eqmod (in1_237 * in2_237) (2**8 * L0x7fffffff6efa) [7681],
  eqmod (in1_238 * in2_238) (2**8 * L0x7fffffff6efc) [7681],
  eqmod (in1_239 * in2_239) (2**8 * L0x7fffffff6efe) [7681],
  eqmod (in1_240 * in2_240) (2**8 * L0x7fffffff6f00) [7681],
  eqmod (in1_241 * in2_241) (2**8 * L0x7fffffff6f02) [7681],
  eqmod (in1_242 * in2_242) (2**8 * L0x7fffffff6f04) [7681],
  eqmod (in1_243 * in2_243) (2**8 * L0x7fffffff6f06) [7681],
  eqmod (in1_244 * in2_244) (2**8 * L0x7fffffff6f08) [7681],
  eqmod (in1_245 * in2_245) (2**8 * L0x7fffffff6f0a) [7681],
  eqmod (in1_246 * in2_246) (2**8 * L0x7fffffff6f0c) [7681],
  eqmod (in1_247 * in2_247) (2**8 * L0x7fffffff6f0e) [7681],
  eqmod (in1_248 * in2_248) (2**8 * L0x7fffffff6f10) [7681],
  eqmod (in1_249 * in2_249) (2**8 * L0x7fffffff6f12) [7681],
  eqmod (in1_250 * in2_250) (2**8 * L0x7fffffff6f14) [7681],
  eqmod (in1_251 * in2_251) (2**8 * L0x7fffffff6f16) [7681],
  eqmod (in1_252 * in2_252) (2**8 * L0x7fffffff6f18) [7681],
  eqmod (in1_253 * in2_253) (2**8 * L0x7fffffff6f1a) [7681],
  eqmod (in1_254 * in2_254) (2**8 * L0x7fffffff6f1c) [7681],
  eqmod (in1_255 * in2_255) (2**8 * L0x7fffffff6f1e) [7681]
]

&&

(* range postcondition *)

and [
  (-4318)@16 <s L0x7fffffff6d20, L0x7fffffff6d20 <s 4318@16, (-4318)@16 <s L0x7fffffff6d22, L0x7fffffff6d22 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d24, L0x7fffffff6d24 <s 4199@16, (-4199)@16 <s L0x7fffffff6d26, L0x7fffffff6d26 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d28, L0x7fffffff6d28 <s 4318@16, (-4318)@16 <s L0x7fffffff6d2a, L0x7fffffff6d2a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d2c, L0x7fffffff6d2c <s 4199@16, (-4199)@16 <s L0x7fffffff6d2e, L0x7fffffff6d2e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d30, L0x7fffffff6d30 <s 4318@16, (-4318)@16 <s L0x7fffffff6d32, L0x7fffffff6d32 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d34, L0x7fffffff6d34 <s 4199@16, (-4199)@16 <s L0x7fffffff6d36, L0x7fffffff6d36 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d38, L0x7fffffff6d38 <s 4318@16, (-4318)@16 <s L0x7fffffff6d3a, L0x7fffffff6d3a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d3c, L0x7fffffff6d3c <s 4199@16, (-4199)@16 <s L0x7fffffff6d3e, L0x7fffffff6d3e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d40, L0x7fffffff6d40 <s 4318@16, (-4318)@16 <s L0x7fffffff6d42, L0x7fffffff6d42 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d44, L0x7fffffff6d44 <s 4199@16, (-4199)@16 <s L0x7fffffff6d46, L0x7fffffff6d46 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d48, L0x7fffffff6d48 <s 4318@16, (-4318)@16 <s L0x7fffffff6d4a, L0x7fffffff6d4a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d4c, L0x7fffffff6d4c <s 4199@16, (-4199)@16 <s L0x7fffffff6d4e, L0x7fffffff6d4e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d50, L0x7fffffff6d50 <s 4318@16, (-4318)@16 <s L0x7fffffff6d52, L0x7fffffff6d52 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d54, L0x7fffffff6d54 <s 4199@16, (-4199)@16 <s L0x7fffffff6d56, L0x7fffffff6d56 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d58, L0x7fffffff6d58 <s 4318@16, (-4318)@16 <s L0x7fffffff6d5a, L0x7fffffff6d5a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d5c, L0x7fffffff6d5c <s 4199@16, (-4199)@16 <s L0x7fffffff6d5e, L0x7fffffff6d5e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d60, L0x7fffffff6d60 <s 4318@16, (-4318)@16 <s L0x7fffffff6d62, L0x7fffffff6d62 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d64, L0x7fffffff6d64 <s 4199@16, (-4199)@16 <s L0x7fffffff6d66, L0x7fffffff6d66 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d68, L0x7fffffff6d68 <s 4318@16, (-4318)@16 <s L0x7fffffff6d6a, L0x7fffffff6d6a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d6c, L0x7fffffff6d6c <s 4199@16, (-4199)@16 <s L0x7fffffff6d6e, L0x7fffffff6d6e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d70, L0x7fffffff6d70 <s 4318@16, (-4318)@16 <s L0x7fffffff6d72, L0x7fffffff6d72 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d74, L0x7fffffff6d74 <s 4199@16, (-4199)@16 <s L0x7fffffff6d76, L0x7fffffff6d76 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d78, L0x7fffffff6d78 <s 4318@16, (-4318)@16 <s L0x7fffffff6d7a, L0x7fffffff6d7a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d7c, L0x7fffffff6d7c <s 4199@16, (-4199)@16 <s L0x7fffffff6d7e, L0x7fffffff6d7e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d80, L0x7fffffff6d80 <s 4318@16, (-4318)@16 <s L0x7fffffff6d82, L0x7fffffff6d82 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d84, L0x7fffffff6d84 <s 4199@16, (-4199)@16 <s L0x7fffffff6d86, L0x7fffffff6d86 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d88, L0x7fffffff6d88 <s 4318@16, (-4318)@16 <s L0x7fffffff6d8a, L0x7fffffff6d8a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d8c, L0x7fffffff6d8c <s 4199@16, (-4199)@16 <s L0x7fffffff6d8e, L0x7fffffff6d8e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d90, L0x7fffffff6d90 <s 4318@16, (-4318)@16 <s L0x7fffffff6d92, L0x7fffffff6d92 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d94, L0x7fffffff6d94 <s 4199@16, (-4199)@16 <s L0x7fffffff6d96, L0x7fffffff6d96 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6d98, L0x7fffffff6d98 <s 4318@16, (-4318)@16 <s L0x7fffffff6d9a, L0x7fffffff6d9a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6d9c, L0x7fffffff6d9c <s 4199@16, (-4199)@16 <s L0x7fffffff6d9e, L0x7fffffff6d9e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6da0, L0x7fffffff6da0 <s 4318@16, (-4318)@16 <s L0x7fffffff6da2, L0x7fffffff6da2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6da4, L0x7fffffff6da4 <s 4199@16, (-4199)@16 <s L0x7fffffff6da6, L0x7fffffff6da6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6da8, L0x7fffffff6da8 <s 4318@16, (-4318)@16 <s L0x7fffffff6daa, L0x7fffffff6daa <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dac, L0x7fffffff6dac <s 4199@16, (-4199)@16 <s L0x7fffffff6dae, L0x7fffffff6dae <s 4199@16,
  (-4318)@16 <s L0x7fffffff6db0, L0x7fffffff6db0 <s 4318@16, (-4318)@16 <s L0x7fffffff6db2, L0x7fffffff6db2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6db4, L0x7fffffff6db4 <s 4199@16, (-4199)@16 <s L0x7fffffff6db6, L0x7fffffff6db6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6db8, L0x7fffffff6db8 <s 4318@16, (-4318)@16 <s L0x7fffffff6dba, L0x7fffffff6dba <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dbc, L0x7fffffff6dbc <s 4199@16, (-4199)@16 <s L0x7fffffff6dbe, L0x7fffffff6dbe <s 4199@16,
  (-4318)@16 <s L0x7fffffff6dc0, L0x7fffffff6dc0 <s 4318@16, (-4318)@16 <s L0x7fffffff6dc2, L0x7fffffff6dc2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dc4, L0x7fffffff6dc4 <s 4199@16, (-4199)@16 <s L0x7fffffff6dc6, L0x7fffffff6dc6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6dc8, L0x7fffffff6dc8 <s 4318@16, (-4318)@16 <s L0x7fffffff6dca, L0x7fffffff6dca <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dcc, L0x7fffffff6dcc <s 4199@16, (-4199)@16 <s L0x7fffffff6dce, L0x7fffffff6dce <s 4199@16,
  (-4318)@16 <s L0x7fffffff6dd0, L0x7fffffff6dd0 <s 4318@16, (-4318)@16 <s L0x7fffffff6dd2, L0x7fffffff6dd2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dd4, L0x7fffffff6dd4 <s 4199@16, (-4199)@16 <s L0x7fffffff6dd6, L0x7fffffff6dd6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6dd8, L0x7fffffff6dd8 <s 4318@16, (-4318)@16 <s L0x7fffffff6dda, L0x7fffffff6dda <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ddc, L0x7fffffff6ddc <s 4199@16, (-4199)@16 <s L0x7fffffff6dde, L0x7fffffff6dde <s 4199@16,
  (-4318)@16 <s L0x7fffffff6de0, L0x7fffffff6de0 <s 4318@16, (-4318)@16 <s L0x7fffffff6de2, L0x7fffffff6de2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6de4, L0x7fffffff6de4 <s 4199@16, (-4199)@16 <s L0x7fffffff6de6, L0x7fffffff6de6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6de8, L0x7fffffff6de8 <s 4318@16, (-4318)@16 <s L0x7fffffff6dea, L0x7fffffff6dea <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dec, L0x7fffffff6dec <s 4199@16, (-4199)@16 <s L0x7fffffff6dee, L0x7fffffff6dee <s 4199@16,
  (-4318)@16 <s L0x7fffffff6df0, L0x7fffffff6df0 <s 4318@16, (-4318)@16 <s L0x7fffffff6df2, L0x7fffffff6df2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6df4, L0x7fffffff6df4 <s 4199@16, (-4199)@16 <s L0x7fffffff6df6, L0x7fffffff6df6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6df8, L0x7fffffff6df8 <s 4318@16, (-4318)@16 <s L0x7fffffff6dfa, L0x7fffffff6dfa <s 4318@16,
  (-4199)@16 <s L0x7fffffff6dfc, L0x7fffffff6dfc <s 4199@16, (-4199)@16 <s L0x7fffffff6dfe, L0x7fffffff6dfe <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e00, L0x7fffffff6e00 <s 4318@16, (-4318)@16 <s L0x7fffffff6e02, L0x7fffffff6e02 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e04, L0x7fffffff6e04 <s 4199@16, (-4199)@16 <s L0x7fffffff6e06, L0x7fffffff6e06 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e08, L0x7fffffff6e08 <s 4318@16, (-4318)@16 <s L0x7fffffff6e0a, L0x7fffffff6e0a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e0c, L0x7fffffff6e0c <s 4199@16, (-4199)@16 <s L0x7fffffff6e0e, L0x7fffffff6e0e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e10, L0x7fffffff6e10 <s 4318@16, (-4318)@16 <s L0x7fffffff6e12, L0x7fffffff6e12 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e14, L0x7fffffff6e14 <s 4199@16, (-4199)@16 <s L0x7fffffff6e16, L0x7fffffff6e16 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e18, L0x7fffffff6e18 <s 4318@16, (-4318)@16 <s L0x7fffffff6e1a, L0x7fffffff6e1a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e1c, L0x7fffffff6e1c <s 4199@16, (-4199)@16 <s L0x7fffffff6e1e, L0x7fffffff6e1e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e20, L0x7fffffff6e20 <s 4318@16, (-4318)@16 <s L0x7fffffff6e22, L0x7fffffff6e22 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e24, L0x7fffffff6e24 <s 4199@16, (-4199)@16 <s L0x7fffffff6e26, L0x7fffffff6e26 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e28, L0x7fffffff6e28 <s 4318@16, (-4318)@16 <s L0x7fffffff6e2a, L0x7fffffff6e2a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e2c, L0x7fffffff6e2c <s 4199@16, (-4199)@16 <s L0x7fffffff6e2e, L0x7fffffff6e2e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e30, L0x7fffffff6e30 <s 4318@16, (-4318)@16 <s L0x7fffffff6e32, L0x7fffffff6e32 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e34, L0x7fffffff6e34 <s 4199@16, (-4199)@16 <s L0x7fffffff6e36, L0x7fffffff6e36 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e38, L0x7fffffff6e38 <s 4318@16, (-4318)@16 <s L0x7fffffff6e3a, L0x7fffffff6e3a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e3c, L0x7fffffff6e3c <s 4199@16, (-4199)@16 <s L0x7fffffff6e3e, L0x7fffffff6e3e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e40, L0x7fffffff6e40 <s 4318@16, (-4318)@16 <s L0x7fffffff6e42, L0x7fffffff6e42 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e44, L0x7fffffff6e44 <s 4199@16, (-4199)@16 <s L0x7fffffff6e46, L0x7fffffff6e46 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e48, L0x7fffffff6e48 <s 4318@16, (-4318)@16 <s L0x7fffffff6e4a, L0x7fffffff6e4a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e4c, L0x7fffffff6e4c <s 4199@16, (-4199)@16 <s L0x7fffffff6e4e, L0x7fffffff6e4e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e50, L0x7fffffff6e50 <s 4318@16, (-4318)@16 <s L0x7fffffff6e52, L0x7fffffff6e52 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e54, L0x7fffffff6e54 <s 4199@16, (-4199)@16 <s L0x7fffffff6e56, L0x7fffffff6e56 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e58, L0x7fffffff6e58 <s 4318@16, (-4318)@16 <s L0x7fffffff6e5a, L0x7fffffff6e5a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e5c, L0x7fffffff6e5c <s 4199@16, (-4199)@16 <s L0x7fffffff6e5e, L0x7fffffff6e5e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e60, L0x7fffffff6e60 <s 4318@16, (-4318)@16 <s L0x7fffffff6e62, L0x7fffffff6e62 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e64, L0x7fffffff6e64 <s 4199@16, (-4199)@16 <s L0x7fffffff6e66, L0x7fffffff6e66 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e68, L0x7fffffff6e68 <s 4318@16, (-4318)@16 <s L0x7fffffff6e6a, L0x7fffffff6e6a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e6c, L0x7fffffff6e6c <s 4199@16, (-4199)@16 <s L0x7fffffff6e6e, L0x7fffffff6e6e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e70, L0x7fffffff6e70 <s 4318@16, (-4318)@16 <s L0x7fffffff6e72, L0x7fffffff6e72 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e74, L0x7fffffff6e74 <s 4199@16, (-4199)@16 <s L0x7fffffff6e76, L0x7fffffff6e76 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e78, L0x7fffffff6e78 <s 4318@16, (-4318)@16 <s L0x7fffffff6e7a, L0x7fffffff6e7a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e7c, L0x7fffffff6e7c <s 4199@16, (-4199)@16 <s L0x7fffffff6e7e, L0x7fffffff6e7e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e80, L0x7fffffff6e80 <s 4318@16, (-4318)@16 <s L0x7fffffff6e82, L0x7fffffff6e82 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e84, L0x7fffffff6e84 <s 4199@16, (-4199)@16 <s L0x7fffffff6e86, L0x7fffffff6e86 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e88, L0x7fffffff6e88 <s 4318@16, (-4318)@16 <s L0x7fffffff6e8a, L0x7fffffff6e8a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e8c, L0x7fffffff6e8c <s 4199@16, (-4199)@16 <s L0x7fffffff6e8e, L0x7fffffff6e8e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e90, L0x7fffffff6e90 <s 4318@16, (-4318)@16 <s L0x7fffffff6e92, L0x7fffffff6e92 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e94, L0x7fffffff6e94 <s 4199@16, (-4199)@16 <s L0x7fffffff6e96, L0x7fffffff6e96 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6e98, L0x7fffffff6e98 <s 4318@16, (-4318)@16 <s L0x7fffffff6e9a, L0x7fffffff6e9a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6e9c, L0x7fffffff6e9c <s 4199@16, (-4199)@16 <s L0x7fffffff6e9e, L0x7fffffff6e9e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ea0, L0x7fffffff6ea0 <s 4318@16, (-4318)@16 <s L0x7fffffff6ea2, L0x7fffffff6ea2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ea4, L0x7fffffff6ea4 <s 4199@16, (-4199)@16 <s L0x7fffffff6ea6, L0x7fffffff6ea6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ea8, L0x7fffffff6ea8 <s 4318@16, (-4318)@16 <s L0x7fffffff6eaa, L0x7fffffff6eaa <s 4318@16,
  (-4199)@16 <s L0x7fffffff6eac, L0x7fffffff6eac <s 4199@16, (-4199)@16 <s L0x7fffffff6eae, L0x7fffffff6eae <s 4199@16,
  (-4318)@16 <s L0x7fffffff6eb0, L0x7fffffff6eb0 <s 4318@16, (-4318)@16 <s L0x7fffffff6eb2, L0x7fffffff6eb2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6eb4, L0x7fffffff6eb4 <s 4199@16, (-4199)@16 <s L0x7fffffff6eb6, L0x7fffffff6eb6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6eb8, L0x7fffffff6eb8 <s 4318@16, (-4318)@16 <s L0x7fffffff6eba, L0x7fffffff6eba <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ebc, L0x7fffffff6ebc <s 4199@16, (-4199)@16 <s L0x7fffffff6ebe, L0x7fffffff6ebe <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ec0, L0x7fffffff6ec0 <s 4318@16, (-4318)@16 <s L0x7fffffff6ec2, L0x7fffffff6ec2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ec4, L0x7fffffff6ec4 <s 4199@16, (-4199)@16 <s L0x7fffffff6ec6, L0x7fffffff6ec6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ec8, L0x7fffffff6ec8 <s 4318@16, (-4318)@16 <s L0x7fffffff6eca, L0x7fffffff6eca <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ecc, L0x7fffffff6ecc <s 4199@16, (-4199)@16 <s L0x7fffffff6ece, L0x7fffffff6ece <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ed0, L0x7fffffff6ed0 <s 4318@16, (-4318)@16 <s L0x7fffffff6ed2, L0x7fffffff6ed2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ed4, L0x7fffffff6ed4 <s 4199@16, (-4199)@16 <s L0x7fffffff6ed6, L0x7fffffff6ed6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ed8, L0x7fffffff6ed8 <s 4318@16, (-4318)@16 <s L0x7fffffff6eda, L0x7fffffff6eda <s 4318@16,
  (-4199)@16 <s L0x7fffffff6edc, L0x7fffffff6edc <s 4199@16, (-4199)@16 <s L0x7fffffff6ede, L0x7fffffff6ede <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ee0, L0x7fffffff6ee0 <s 4318@16, (-4318)@16 <s L0x7fffffff6ee2, L0x7fffffff6ee2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ee4, L0x7fffffff6ee4 <s 4199@16, (-4199)@16 <s L0x7fffffff6ee6, L0x7fffffff6ee6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ee8, L0x7fffffff6ee8 <s 4318@16, (-4318)@16 <s L0x7fffffff6eea, L0x7fffffff6eea <s 4318@16,
  (-4199)@16 <s L0x7fffffff6eec, L0x7fffffff6eec <s 4199@16, (-4199)@16 <s L0x7fffffff6eee, L0x7fffffff6eee <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ef0, L0x7fffffff6ef0 <s 4318@16, (-4318)@16 <s L0x7fffffff6ef2, L0x7fffffff6ef2 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6ef4, L0x7fffffff6ef4 <s 4199@16, (-4199)@16 <s L0x7fffffff6ef6, L0x7fffffff6ef6 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6ef8, L0x7fffffff6ef8 <s 4318@16, (-4318)@16 <s L0x7fffffff6efa, L0x7fffffff6efa <s 4318@16,
  (-4199)@16 <s L0x7fffffff6efc, L0x7fffffff6efc <s 4199@16, (-4199)@16 <s L0x7fffffff6efe, L0x7fffffff6efe <s 4199@16,
  (-4318)@16 <s L0x7fffffff6f00, L0x7fffffff6f00 <s 4318@16, (-4318)@16 <s L0x7fffffff6f02, L0x7fffffff6f02 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6f04, L0x7fffffff6f04 <s 4199@16, (-4199)@16 <s L0x7fffffff6f06, L0x7fffffff6f06 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6f08, L0x7fffffff6f08 <s 4318@16, (-4318)@16 <s L0x7fffffff6f0a, L0x7fffffff6f0a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6f0c, L0x7fffffff6f0c <s 4199@16, (-4199)@16 <s L0x7fffffff6f0e, L0x7fffffff6f0e <s 4199@16,
  (-4318)@16 <s L0x7fffffff6f10, L0x7fffffff6f10 <s 4318@16, (-4318)@16 <s L0x7fffffff6f12, L0x7fffffff6f12 <s 4318@16,
  (-4199)@16 <s L0x7fffffff6f14, L0x7fffffff6f14 <s 4199@16, (-4199)@16 <s L0x7fffffff6f16, L0x7fffffff6f16 <s 4199@16,
  (-4318)@16 <s L0x7fffffff6f18, L0x7fffffff6f18 <s 4318@16, (-4318)@16 <s L0x7fffffff6f1a, L0x7fffffff6f1a <s 4318@16,
  (-4199)@16 <s L0x7fffffff6f1c, L0x7fffffff6f1c <s 4199@16, (-4199)@16 <s L0x7fffffff6f1e, L0x7fffffff6f1e <s 4199@16
]

}
