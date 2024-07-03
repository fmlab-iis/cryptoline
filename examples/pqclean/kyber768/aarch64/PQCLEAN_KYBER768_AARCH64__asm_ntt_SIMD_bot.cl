(* quine: cv.exe -v -slicing -isafety -jobs 40 -vo lex -enable_rewriting:eqmod -no_carry_constraint PQCLEAN_KYBER768_AARCH64__asm_ntt_SIMD_bot.cl
Parsing CryptoLine file:                    [OK]            0.1261 seconds
Checking well-formedness:                   [OK]            0.0342 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.0329 seconds
Normalizing specification:                  [OK]            0.0270 seconds
Rewriting assignments:                      [OK]            0.0263 seconds
Verifying program safety:                   [OK]            37.8725 seconds
Verifying range assertions:                 [OK]            0.0131 seconds
Verifying range specification:              [OK]            0.2323 seconds
Rewriting value-preserved casting:          [OK]            0.0188 seconds
Verifying algebraic assertions:             [OK]            90.9883 seconds
Verifying algebraic specification:          [OK]            54.6463 seconds
Procedure verification:                     [OK]            183.3274 seconds

Summary
-------
Verification result:                        [OK]            183.4898 seconds
*)
proc main (
int16 L0xffffffffc400,int16 L0xffffffffc402,int16 L0xffffffffc404,int16 L0xffffffffc406,
int16 L0xffffffffc408,int16 L0xffffffffc40a,int16 L0xffffffffc40c,int16 L0xffffffffc40e,
int16 L0xffffffffc410,int16 L0xffffffffc412,int16 L0xffffffffc414,int16 L0xffffffffc416,
int16 L0xffffffffc418,int16 L0xffffffffc41a,int16 L0xffffffffc41c,int16 L0xffffffffc41e,
int16 L0xffffffffc420,int16 L0xffffffffc422,int16 L0xffffffffc424,int16 L0xffffffffc426,
int16 L0xffffffffc428,int16 L0xffffffffc42a,int16 L0xffffffffc42c,int16 L0xffffffffc42e,
int16 L0xffffffffc430,int16 L0xffffffffc432,int16 L0xffffffffc434,int16 L0xffffffffc436,
int16 L0xffffffffc438,int16 L0xffffffffc43a,int16 L0xffffffffc43c,int16 L0xffffffffc43e,
int16 L0xffffffffc440,int16 L0xffffffffc442,int16 L0xffffffffc444,int16 L0xffffffffc446,
int16 L0xffffffffc448,int16 L0xffffffffc44a,int16 L0xffffffffc44c,int16 L0xffffffffc44e,
int16 L0xffffffffc450,int16 L0xffffffffc452,int16 L0xffffffffc454,int16 L0xffffffffc456,
int16 L0xffffffffc458,int16 L0xffffffffc45a,int16 L0xffffffffc45c,int16 L0xffffffffc45e,
int16 L0xffffffffc460,int16 L0xffffffffc462,int16 L0xffffffffc464,int16 L0xffffffffc466,
int16 L0xffffffffc468,int16 L0xffffffffc46a,int16 L0xffffffffc46c,int16 L0xffffffffc46e,
int16 L0xffffffffc470,int16 L0xffffffffc472,int16 L0xffffffffc474,int16 L0xffffffffc476,
int16 L0xffffffffc478,int16 L0xffffffffc47a,int16 L0xffffffffc47c,int16 L0xffffffffc47e,
int16 L0xffffffffc480,int16 L0xffffffffc482,int16 L0xffffffffc484,int16 L0xffffffffc486,
int16 L0xffffffffc488,int16 L0xffffffffc48a,int16 L0xffffffffc48c,int16 L0xffffffffc48e,
int16 L0xffffffffc490,int16 L0xffffffffc492,int16 L0xffffffffc494,int16 L0xffffffffc496,
int16 L0xffffffffc498,int16 L0xffffffffc49a,int16 L0xffffffffc49c,int16 L0xffffffffc49e,
int16 L0xffffffffc4a0,int16 L0xffffffffc4a2,int16 L0xffffffffc4a4,int16 L0xffffffffc4a6,
int16 L0xffffffffc4a8,int16 L0xffffffffc4aa,int16 L0xffffffffc4ac,int16 L0xffffffffc4ae,
int16 L0xffffffffc4b0,int16 L0xffffffffc4b2,int16 L0xffffffffc4b4,int16 L0xffffffffc4b6,
int16 L0xffffffffc4b8,int16 L0xffffffffc4ba,int16 L0xffffffffc4bc,int16 L0xffffffffc4be,
int16 L0xffffffffc4c0,int16 L0xffffffffc4c2,int16 L0xffffffffc4c4,int16 L0xffffffffc4c6,
int16 L0xffffffffc4c8,int16 L0xffffffffc4ca,int16 L0xffffffffc4cc,int16 L0xffffffffc4ce,
int16 L0xffffffffc4d0,int16 L0xffffffffc4d2,int16 L0xffffffffc4d4,int16 L0xffffffffc4d6,
int16 L0xffffffffc4d8,int16 L0xffffffffc4da,int16 L0xffffffffc4dc,int16 L0xffffffffc4de,
int16 L0xffffffffc4e0,int16 L0xffffffffc4e2,int16 L0xffffffffc4e4,int16 L0xffffffffc4e6,
int16 L0xffffffffc4e8,int16 L0xffffffffc4ea,int16 L0xffffffffc4ec,int16 L0xffffffffc4ee,
int16 L0xffffffffc4f0,int16 L0xffffffffc4f2,int16 L0xffffffffc4f4,int16 L0xffffffffc4f6,
int16 L0xffffffffc4f8,int16 L0xffffffffc4fa,int16 L0xffffffffc4fc,int16 L0xffffffffc4fe,
int16 L0xffffffffc500,int16 L0xffffffffc502,int16 L0xffffffffc504,int16 L0xffffffffc506,
int16 L0xffffffffc508,int16 L0xffffffffc50a,int16 L0xffffffffc50c,int16 L0xffffffffc50e,
int16 L0xffffffffc510,int16 L0xffffffffc512,int16 L0xffffffffc514,int16 L0xffffffffc516,
int16 L0xffffffffc518,int16 L0xffffffffc51a,int16 L0xffffffffc51c,int16 L0xffffffffc51e,
int16 L0xffffffffc520,int16 L0xffffffffc522,int16 L0xffffffffc524,int16 L0xffffffffc526,
int16 L0xffffffffc528,int16 L0xffffffffc52a,int16 L0xffffffffc52c,int16 L0xffffffffc52e,
int16 L0xffffffffc530,int16 L0xffffffffc532,int16 L0xffffffffc534,int16 L0xffffffffc536,
int16 L0xffffffffc538,int16 L0xffffffffc53a,int16 L0xffffffffc53c,int16 L0xffffffffc53e,
int16 L0xffffffffc540,int16 L0xffffffffc542,int16 L0xffffffffc544,int16 L0xffffffffc546,
int16 L0xffffffffc548,int16 L0xffffffffc54a,int16 L0xffffffffc54c,int16 L0xffffffffc54e,
int16 L0xffffffffc550,int16 L0xffffffffc552,int16 L0xffffffffc554,int16 L0xffffffffc556,
int16 L0xffffffffc558,int16 L0xffffffffc55a,int16 L0xffffffffc55c,int16 L0xffffffffc55e,
int16 L0xffffffffc560,int16 L0xffffffffc562,int16 L0xffffffffc564,int16 L0xffffffffc566,
int16 L0xffffffffc568,int16 L0xffffffffc56a,int16 L0xffffffffc56c,int16 L0xffffffffc56e,
int16 L0xffffffffc570,int16 L0xffffffffc572,int16 L0xffffffffc574,int16 L0xffffffffc576,
int16 L0xffffffffc578,int16 L0xffffffffc57a,int16 L0xffffffffc57c,int16 L0xffffffffc57e,
int16 L0xffffffffc580,int16 L0xffffffffc582,int16 L0xffffffffc584,int16 L0xffffffffc586,
int16 L0xffffffffc588,int16 L0xffffffffc58a,int16 L0xffffffffc58c,int16 L0xffffffffc58e,
int16 L0xffffffffc590,int16 L0xffffffffc592,int16 L0xffffffffc594,int16 L0xffffffffc596,
int16 L0xffffffffc598,int16 L0xffffffffc59a,int16 L0xffffffffc59c,int16 L0xffffffffc59e,
int16 L0xffffffffc5a0,int16 L0xffffffffc5a2,int16 L0xffffffffc5a4,int16 L0xffffffffc5a6,
int16 L0xffffffffc5a8,int16 L0xffffffffc5aa,int16 L0xffffffffc5ac,int16 L0xffffffffc5ae,
int16 L0xffffffffc5b0,int16 L0xffffffffc5b2,int16 L0xffffffffc5b4,int16 L0xffffffffc5b6,
int16 L0xffffffffc5b8,int16 L0xffffffffc5ba,int16 L0xffffffffc5bc,int16 L0xffffffffc5be,
int16 L0xffffffffc5c0,int16 L0xffffffffc5c2,int16 L0xffffffffc5c4,int16 L0xffffffffc5c6,
int16 L0xffffffffc5c8,int16 L0xffffffffc5ca,int16 L0xffffffffc5cc,int16 L0xffffffffc5ce,
int16 L0xffffffffc5d0,int16 L0xffffffffc5d2,int16 L0xffffffffc5d4,int16 L0xffffffffc5d6,
int16 L0xffffffffc5d8,int16 L0xffffffffc5da,int16 L0xffffffffc5dc,int16 L0xffffffffc5de,
int16 L0xffffffffc5e0,int16 L0xffffffffc5e2,int16 L0xffffffffc5e4,int16 L0xffffffffc5e6,
int16 L0xffffffffc5e8,int16 L0xffffffffc5ea,int16 L0xffffffffc5ec,int16 L0xffffffffc5ee,
int16 L0xffffffffc5f0,int16 L0xffffffffc5f2,int16 L0xffffffffc5f4,int16 L0xffffffffc5f6,
int16 L0xffffffffc5f8,int16 L0xffffffffc5fa,int16 L0xffffffffc5fc,int16 L0xffffffffc5fe,
int16 A00,int16 A01,int16 A02,int16 A03,int16 A04,int16 A05,int16 A06,int16 A07,
int16 A08,int16 A09,int16 A0a,int16 A0b,int16 A0c,int16 A0d,int16 A0e,int16 A0f,
int16 A10,int16 A11,int16 A12,int16 A13,int16 A14,int16 A15,int16 A16,int16 A17,
int16 A18,int16 A19,int16 A1a,int16 A1b,int16 A1c,int16 A1d,int16 A1e,int16 A1f,
int16 A20,int16 A21,int16 A22,int16 A23,int16 A24,int16 A25,int16 A26,int16 A27,
int16 A28,int16 A29,int16 A2a,int16 A2b,int16 A2c,int16 A2d,int16 A2e,int16 A2f,
int16 A30,int16 A31,int16 A32,int16 A33,int16 A34,int16 A35,int16 A36,int16 A37,
int16 A38,int16 A39,int16 A3a,int16 A3b,int16 A3c,int16 A3d,int16 A3e,int16 A3f,
int16 A40,int16 A41,int16 A42,int16 A43,int16 A44,int16 A45,int16 A46,int16 A47,
int16 A48,int16 A49,int16 A4a,int16 A4b,int16 A4c,int16 A4d,int16 A4e,int16 A4f,
int16 A50,int16 A51,int16 A52,int16 A53,int16 A54,int16 A55,int16 A56,int16 A57,
int16 A58,int16 A59,int16 A5a,int16 A5b,int16 A5c,int16 A5d,int16 A5e,int16 A5f,
int16 A60,int16 A61,int16 A62,int16 A63,int16 A64,int16 A65,int16 A66,int16 A67,
int16 A68,int16 A69,int16 A6a,int16 A6b,int16 A6c,int16 A6d,int16 A6e,int16 A6f,
int16 A70,int16 A71,int16 A72,int16 A73,int16 A74,int16 A75,int16 A76,int16 A77,
int16 A78,int16 A79,int16 A7a,int16 A7b,int16 A7c,int16 A7d,int16 A7e,int16 A7f,
int16 A80,int16 A81,int16 A82,int16 A83,int16 A84,int16 A85,int16 A86,int16 A87,
int16 A88,int16 A89,int16 A8a,int16 A8b,int16 A8c,int16 A8d,int16 A8e,int16 A8f,
int16 A90,int16 A91,int16 A92,int16 A93,int16 A94,int16 A95,int16 A96,int16 A97,
int16 A98,int16 A99,int16 A9a,int16 A9b,int16 A9c,int16 A9d,int16 A9e,int16 A9f,
int16 Aa0,int16 Aa1,int16 Aa2,int16 Aa3,int16 Aa4,int16 Aa5,int16 Aa6,int16 Aa7,
int16 Aa8,int16 Aa9,int16 Aaa,int16 Aab,int16 Aac,int16 Aad,int16 Aae,int16 Aaf,
int16 Ab0,int16 Ab1,int16 Ab2,int16 Ab3,int16 Ab4,int16 Ab5,int16 Ab6,int16 Ab7,
int16 Ab8,int16 Ab9,int16 Aba,int16 Abb,int16 Abc,int16 Abd,int16 Abe,int16 Abf,
int16 Ac0,int16 Ac1,int16 Ac2,int16 Ac3,int16 Ac4,int16 Ac5,int16 Ac6,int16 Ac7,
int16 Ac8,int16 Ac9,int16 Aca,int16 Acb,int16 Acc,int16 Acd,int16 Ace,int16 Acf,
int16 Ad0,int16 Ad1,int16 Ad2,int16 Ad3,int16 Ad4,int16 Ad5,int16 Ad6,int16 Ad7,
int16 Ad8,int16 Ad9,int16 Ada,int16 Adb,int16 Adc,int16 Add,int16 Ade,int16 Adf,
int16 Ae0,int16 Ae1,int16 Ae2,int16 Ae3,int16 Ae4,int16 Ae5,int16 Ae6,int16 Ae7,
int16 Ae8,int16 Ae9,int16 Aea,int16 Aeb,int16 Aec,int16 Aed,int16 Aee,int16 Aef,
int16 Af0,int16 Af1,int16 Af2,int16 Af3,int16 Af4,int16 Af5,int16 Af6,int16 Af7,
int16 Af8,int16 Af9,int16 Afa,int16 Afb,int16 Afc,int16 Afd,int16 Afe,int16 Aff,
int16 Q, int16 Q2, int16 NQ, int16 NQ2, int16 X,
int16 F00,int16 F08,int16 F10,int16 F18,int16 F20,int16 F28,int16 F30,int16 F38,
int16 F40,int16 F48,int16 F50,int16 F58,int16 F60,int16 F68,int16 F70,int16 F78,
int16 F80,int16 F88,int16 F90,int16 F98,int16 Fa0,int16 Fa8,int16 Fb0,int16 Fb8,
int16 Fc0,int16 Fc8,int16 Fd0,int16 Fd8,int16 Fe0,int16 Fe8,int16 Ff0,int16 Ff8
) =
{
   Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
   F00**2 = A00*X**  0 + A01*X**  1 + A02*X**  2 + A03*X**  3 + A04*X**  4 +
            A05*X**  5 + A06*X**  6 + A07*X**  7 /\
   F08**2 = A08*X**  8 + A09*X**  9 + A0a*X** 10 + A0b*X** 11 + A0c*X** 12 +
            A0d*X** 13 + A0e*X** 14 + A0f*X** 15 /\
   F10**2 = A10*X** 16 + A11*X** 17 + A12*X** 18 + A13*X** 19 + A14*X** 20 +
            A15*X** 21 + A16*X** 22 + A17*X** 23 /\
   F18**2 = A18*X** 24 + A19*X** 25 + A1a*X** 26 + A1b*X** 27 + A1c*X** 28 +
            A1d*X** 29 + A1e*X** 30 + A1f*X** 31 /\
   F20**2 = A20*X** 32 + A21*X** 33 + A22*X** 34 + A23*X** 35 + A24*X** 36 +
            A25*X** 37 + A26*X** 38 + A27*X** 39 /\
   F28**2 = A28*X** 40 + A29*X** 41 + A2a*X** 42 + A2b*X** 43 + A2c*X** 44 +
            A2d*X** 45 + A2e*X** 46 + A2f*X** 47 /\
   F30**2 = A30*X** 48 + A31*X** 49 + A32*X** 50 + A33*X** 51 + A34*X** 52 +
            A35*X** 53 + A36*X** 54 + A37*X** 55 /\
   F38**2 = A38*X** 56 + A39*X** 57 + A3a*X** 58 + A3b*X** 59 + A3c*X** 60 +
            A3d*X** 61 + A3e*X** 62 + A3f*X** 63 /\
   F40**2 = A40*X** 64 + A41*X** 65 + A42*X** 66 + A43*X** 67 + A44*X** 68 +
            A45*X** 69 + A46*X** 70 + A47*X** 71 /\
   F48**2 = A48*X** 72 + A49*X** 73 + A4a*X** 74 + A4b*X** 75 + A4c*X** 76 +
            A4d*X** 77 + A4e*X** 78 + A4f*X** 79 /\
   F50**2 = A50*X** 80 + A51*X** 81 + A52*X** 82 + A53*X** 83 + A54*X** 84 +
            A55*X** 85 + A56*X** 86 + A57*X** 87 /\
   F58**2 = A58*X** 88 + A59*X** 89 + A5a*X** 90 + A5b*X** 91 + A5c*X** 92 +
            A5d*X** 93 + A5e*X** 94 + A5f*X** 95 /\
   F60**2 = A60*X** 96 + A61*X** 97 + A62*X** 98 + A63*X** 99 + A64*X**100 +
            A65*X**101 + A66*X**102 + A67*X**103 /\
   F68**2 = A68*X**104 + A69*X**105 + A6a*X**106 + A6b*X**107 + A6c*X**108 +
            A6d*X**109 + A6e*X**110 + A6f*X**111 /\
   F70**2 = A70*X**112 + A71*X**113 + A72*X**114 + A73*X**115 + A74*X**116 +
            A75*X**117 + A76*X**118 + A77*X**119 /\
   F78**2 = A78*X**120 + A79*X**121 + A7a*X**122 + A7b*X**123 + A7c*X**124 +
            A7d*X**125 + A7e*X**126 + A7f*X**127 /\
   F80**2 = A80*X**128 + A81*X**129 + A82*X**130 + A83*X**131 + A84*X**132 +
            A85*X**133 + A86*X**134 + A87*X**135 /\
   F88**2 = A88*X**136 + A89*X**137 + A8a*X**138 + A8b*X**139 + A8c*X**140 +
            A8d*X**141 + A8e*X**142 + A8f*X**143 /\
   F90**2 = A90*X**144 + A91*X**145 + A92*X**146 + A93*X**147 + A94*X**148 +
            A95*X**149 + A96*X**150 + A97*X**151 /\
   F98**2 = A98*X**152 + A99*X**153 + A9a*X**154 + A9b*X**155 + A9c*X**156 +
            A9d*X**157 + A9e*X**158 + A9f*X**159 /\
   Fa0**2 = Aa0*X**160 + Aa1*X**161 + Aa2*X**162 + Aa3*X**163 + Aa4*X**164 +
            Aa5*X**165 + Aa6*X**166 + Aa7*X**167 /\
   Fa8**2 = Aa8*X**168 + Aa9*X**169 + Aaa*X**170 + Aab*X**171 + Aac*X**172 +
            Aad*X**173 + Aae*X**174 + Aaf*X**175 /\
   Fb0**2 = Ab0*X**176 + Ab1*X**177 + Ab2*X**178 + Ab3*X**179 + Ab4*X**180 +
            Ab5*X**181 + Ab6*X**182 + Ab7*X**183 /\
   Fb8**2 = Ab8*X**184 + Ab9*X**185 + Aba*X**186 + Abb*X**187 + Abc*X**188 +
            Abd*X**189 + Abe*X**190 + Abf*X**191 /\
   Fc0**2 = Ac0*X**192 + Ac1*X**193 + Ac2*X**194 + Ac3*X**195 + Ac4*X**196 +
            Ac5*X**197 + Ac6*X**198 + Ac7*X**199 /\
   Fc8**2 = Ac8*X**200 + Ac9*X**201 + Aca*X**202 + Acb*X**203 + Acc*X**204 +
            Acd*X**205 + Ace*X**206 + Acf*X**207 /\
   Fd0**2 = Ad0*X**208 + Ad1*X**209 + Ad2*X**210 + Ad3*X**211 + Ad4*X**212 +
            Ad5*X**213 + Ad6*X**214 + Ad7*X**215 /\
   Fd8**2 = Ad8*X**216 + Ad9*X**217 + Ada*X**218 + Adb*X**219 + Adc*X**220 +
            Add*X**221 + Ade*X**222 + Adf*X**223 /\
   Fe0**2 = Ae0*X**224 + Ae1*X**225 + Ae2*X**226 + Ae3*X**227 + Ae4*X**228 +
            Ae5*X**229 + Ae6*X**230 + Ae7*X**231 /\
   Fe8**2 = Ae8*X**232 + Ae9*X**233 + Aea*X**234 + Aeb*X**235 + Aec*X**236 +
            Aed*X**237 + Aee*X**238 + Aef*X**239 /\
   Ff0**2 = Af0*X**240 + Af1*X**241 + Af2*X**242 + Af3*X**243 + Af4*X**244 +
            Af5*X**245 + Af6*X**246 + Af7*X**247 /\
   Ff8**2 = Af8*X**248 + Af9*X**249 + Afa*X**250 + Afb*X**251 + Afc*X**252 +
            Afd*X**253 + Afe*X**254 + Aff*X**255 /\
   eqmod (poly X [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,
                  L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**8] /\
   eqmod (poly X [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,
                  L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**136] /\
   eqmod (poly X [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
                  L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**72] /\
   eqmod (poly X [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
                  L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**200] /\
   eqmod (poly X [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
                  L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**40] /\
   eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
                  L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**168] /\
   eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
                  L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**104] /\
   eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
                  L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**232] /\
   eqmod (poly X [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,
                  L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**24] /\
   eqmod (poly X [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,
                  L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**152] /\
   eqmod (poly X [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
                  L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**88] /\
   eqmod (poly X [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
                  L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**216] /\
   eqmod (poly X [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
                  L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**56] /\
   eqmod (poly X [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,
                  L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**184] /\
   eqmod (poly X [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,
                  L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**120] /\
   eqmod (poly X [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,
                  L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee])
         (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
          F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
         [Q, X**16 - 17**248] /\
   eqmod (X**8*
          poly X [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,
                  L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**8] /\
   eqmod (X**8*
          poly X [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,
                  L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**136] /\
   eqmod (X**8*
          poly X [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
                  L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**72] /\
   eqmod (X**8*
          poly X [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
                  L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**200] /\
   eqmod (X**8*
          poly X [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
                  L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**40] /\
   eqmod (X**8*
          poly X [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
                  L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**168] /\
   eqmod (X**8*
          poly X [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
                  L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**104] /\
   eqmod (X**8*
          poly X [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
                  L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**232] /\
   eqmod (X**8*
          poly X [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,
                  L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**24] /\
   eqmod (X**8*
          poly X [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,
                  L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**152] /\
   eqmod (X**8*
          poly X [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
                  L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**88] /\
   eqmod (X**8*
          poly X [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
                  L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**216] /\
   eqmod (X**8*
          poly X [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
                  L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**56] /\
   eqmod (X**8*
          poly X [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,
                  L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**184] /\
   eqmod (X**8*
          poly X [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,
                  L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**120] /\
   eqmod (X**8*
          poly X [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,
                  L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**248] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc400, L0xffffffffc402] /\
   [L0xffffffffc400, L0xffffffffc402] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc404, L0xffffffffc406] /\
   [L0xffffffffc404, L0xffffffffc406] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc408, L0xffffffffc40a] /\
   [L0xffffffffc408, L0xffffffffc40a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc40c, L0xffffffffc40e] /\
   [L0xffffffffc40c, L0xffffffffc40e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc420, L0xffffffffc422] /\
   [L0xffffffffc420, L0xffffffffc422] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc424, L0xffffffffc426] /\
   [L0xffffffffc424, L0xffffffffc426] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc428, L0xffffffffc42a] /\
   [L0xffffffffc428, L0xffffffffc42a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc42c, L0xffffffffc42e] /\
   [L0xffffffffc42c, L0xffffffffc42e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc440, L0xffffffffc442] /\
   [L0xffffffffc440, L0xffffffffc442] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc444, L0xffffffffc446] /\
   [L0xffffffffc444, L0xffffffffc446] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc448, L0xffffffffc44a] /\
   [L0xffffffffc448, L0xffffffffc44a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc44c, L0xffffffffc44e] /\
   [L0xffffffffc44c, L0xffffffffc44e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc460, L0xffffffffc462] /\
   [L0xffffffffc460, L0xffffffffc462] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc464, L0xffffffffc466] /\
   [L0xffffffffc464, L0xffffffffc466] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc468, L0xffffffffc46a] /\
   [L0xffffffffc468, L0xffffffffc46a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc46c, L0xffffffffc46e] /\
   [L0xffffffffc46c, L0xffffffffc46e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc480, L0xffffffffc482] /\
   [L0xffffffffc480, L0xffffffffc482] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc484, L0xffffffffc486] /\
   [L0xffffffffc484, L0xffffffffc486] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc488, L0xffffffffc48a] /\
   [L0xffffffffc488, L0xffffffffc48a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc48c, L0xffffffffc48e] /\
   [L0xffffffffc48c, L0xffffffffc48e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a0, L0xffffffffc4a2] /\
   [L0xffffffffc4a0, L0xffffffffc4a2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a4, L0xffffffffc4a6] /\
   [L0xffffffffc4a4, L0xffffffffc4a6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a8, L0xffffffffc4aa] /\
   [L0xffffffffc4a8, L0xffffffffc4aa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ac, L0xffffffffc4ae] /\
   [L0xffffffffc4ac, L0xffffffffc4ae] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c0, L0xffffffffc4c2] /\
   [L0xffffffffc4c0, L0xffffffffc4c2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c4, L0xffffffffc4c6] /\
   [L0xffffffffc4c4, L0xffffffffc4c6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c8, L0xffffffffc4ca] /\
   [L0xffffffffc4c8, L0xffffffffc4ca] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4cc, L0xffffffffc4ce] /\
   [L0xffffffffc4cc, L0xffffffffc4ce] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e0, L0xffffffffc4e2] /\
   [L0xffffffffc4e0, L0xffffffffc4e2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e4, L0xffffffffc4e6] /\
   [L0xffffffffc4e4, L0xffffffffc4e6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e8, L0xffffffffc4ea] /\
   [L0xffffffffc4e8, L0xffffffffc4ea] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ec, L0xffffffffc4ee] /\
   [L0xffffffffc4ec, L0xffffffffc4ee] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc500, L0xffffffffc502] /\
   [L0xffffffffc500, L0xffffffffc502] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc504, L0xffffffffc506] /\
   [L0xffffffffc504, L0xffffffffc506] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc508, L0xffffffffc50a] /\
   [L0xffffffffc508, L0xffffffffc50a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc50c, L0xffffffffc50e] /\
   [L0xffffffffc50c, L0xffffffffc50e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc520, L0xffffffffc522] /\
   [L0xffffffffc520, L0xffffffffc522] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc524, L0xffffffffc526] /\
   [L0xffffffffc524, L0xffffffffc526] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc528, L0xffffffffc52a] /\
   [L0xffffffffc528, L0xffffffffc52a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc52c, L0xffffffffc52e] /\
   [L0xffffffffc52c, L0xffffffffc52e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc540, L0xffffffffc542] /\
   [L0xffffffffc540, L0xffffffffc542] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc544, L0xffffffffc546] /\
   [L0xffffffffc544, L0xffffffffc546] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc548, L0xffffffffc54a] /\
   [L0xffffffffc548, L0xffffffffc54a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc54c, L0xffffffffc54e] /\
   [L0xffffffffc54c, L0xffffffffc54e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc560, L0xffffffffc562] /\
   [L0xffffffffc560, L0xffffffffc562] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc564, L0xffffffffc566] /\
   [L0xffffffffc564, L0xffffffffc566] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc568, L0xffffffffc56a] /\
   [L0xffffffffc568, L0xffffffffc56a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc56c, L0xffffffffc56e] /\
   [L0xffffffffc56c, L0xffffffffc56e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc580, L0xffffffffc582] /\
   [L0xffffffffc580, L0xffffffffc582] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc584, L0xffffffffc586] /\
   [L0xffffffffc584, L0xffffffffc586] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc588, L0xffffffffc58a] /\
   [L0xffffffffc588, L0xffffffffc58a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc58c, L0xffffffffc58e] /\
   [L0xffffffffc58c, L0xffffffffc58e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a0, L0xffffffffc5a2] /\
   [L0xffffffffc5a0, L0xffffffffc5a2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a4, L0xffffffffc5a6] /\
   [L0xffffffffc5a4, L0xffffffffc5a6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a8, L0xffffffffc5aa] /\
   [L0xffffffffc5a8, L0xffffffffc5aa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ac, L0xffffffffc5ae] /\
   [L0xffffffffc5ac, L0xffffffffc5ae] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c0, L0xffffffffc5c2] /\
   [L0xffffffffc5c0, L0xffffffffc5c2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c4, L0xffffffffc5c6] /\
   [L0xffffffffc5c4, L0xffffffffc5c6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c8, L0xffffffffc5ca] /\
   [L0xffffffffc5c8, L0xffffffffc5ca] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5cc, L0xffffffffc5ce] /\
   [L0xffffffffc5cc, L0xffffffffc5ce] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e0, L0xffffffffc5e2] /\
   [L0xffffffffc5e0, L0xffffffffc5e2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e4, L0xffffffffc5e6] /\
   [L0xffffffffc5e4, L0xffffffffc5e6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e8, L0xffffffffc5ea] /\
   [L0xffffffffc5e8, L0xffffffffc5ea] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ec, L0xffffffffc5ee] /\
   [L0xffffffffc5ec, L0xffffffffc5ee] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc410, L0xffffffffc412] /\
   [L0xffffffffc410, L0xffffffffc412] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc414, L0xffffffffc416] /\
   [L0xffffffffc414, L0xffffffffc416] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc418, L0xffffffffc41a] /\
   [L0xffffffffc418, L0xffffffffc41a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc41c, L0xffffffffc41e] /\
   [L0xffffffffc41c, L0xffffffffc41e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc430, L0xffffffffc432] /\
   [L0xffffffffc430, L0xffffffffc432] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc434, L0xffffffffc436] /\
   [L0xffffffffc434, L0xffffffffc436] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc438, L0xffffffffc43a] /\
   [L0xffffffffc438, L0xffffffffc43a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc43c, L0xffffffffc43e] /\
   [L0xffffffffc43c, L0xffffffffc43e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc450, L0xffffffffc452] /\
   [L0xffffffffc450, L0xffffffffc452] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc454, L0xffffffffc456] /\
   [L0xffffffffc454, L0xffffffffc456] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc458, L0xffffffffc45a] /\
   [L0xffffffffc458, L0xffffffffc45a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc45c, L0xffffffffc45e] /\
   [L0xffffffffc45c, L0xffffffffc45e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc470, L0xffffffffc472] /\
   [L0xffffffffc470, L0xffffffffc472] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc474, L0xffffffffc476] /\
   [L0xffffffffc474, L0xffffffffc476] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc478, L0xffffffffc47a] /\
   [L0xffffffffc478, L0xffffffffc47a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc47c, L0xffffffffc47e] /\
   [L0xffffffffc47c, L0xffffffffc47e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc490, L0xffffffffc492] /\
   [L0xffffffffc490, L0xffffffffc492] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc494, L0xffffffffc496] /\
   [L0xffffffffc494, L0xffffffffc496] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc498, L0xffffffffc49a] /\
   [L0xffffffffc498, L0xffffffffc49a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc49c, L0xffffffffc49e] /\
   [L0xffffffffc49c, L0xffffffffc49e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b0, L0xffffffffc4b2] /\
   [L0xffffffffc4b0, L0xffffffffc4b2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b4, L0xffffffffc4b6] /\
   [L0xffffffffc4b4, L0xffffffffc4b6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b8, L0xffffffffc4ba] /\
   [L0xffffffffc4b8, L0xffffffffc4ba] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4bc, L0xffffffffc4be] /\
   [L0xffffffffc4bc, L0xffffffffc4be] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d0, L0xffffffffc4d2] /\
   [L0xffffffffc4d0, L0xffffffffc4d2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d4, L0xffffffffc4d6] /\
   [L0xffffffffc4d4, L0xffffffffc4d6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d8, L0xffffffffc4da] /\
   [L0xffffffffc4d8, L0xffffffffc4da] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4dc, L0xffffffffc4de] /\
   [L0xffffffffc4dc, L0xffffffffc4de] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f0, L0xffffffffc4f2] /\
   [L0xffffffffc4f0, L0xffffffffc4f2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f4, L0xffffffffc4f6] /\
   [L0xffffffffc4f4, L0xffffffffc4f6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f8, L0xffffffffc4fa] /\
   [L0xffffffffc4f8, L0xffffffffc4fa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4fc, L0xffffffffc4fe] /\
   [L0xffffffffc4fc, L0xffffffffc4fe] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc510, L0xffffffffc512] /\
   [L0xffffffffc510, L0xffffffffc512] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc514, L0xffffffffc516] /\
   [L0xffffffffc514, L0xffffffffc516] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc518, L0xffffffffc51a] /\
   [L0xffffffffc518, L0xffffffffc51a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc51c, L0xffffffffc51e] /\
   [L0xffffffffc51c, L0xffffffffc51e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc530, L0xffffffffc532] /\
   [L0xffffffffc530, L0xffffffffc532] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc534, L0xffffffffc536] /\
   [L0xffffffffc534, L0xffffffffc536] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc538, L0xffffffffc53a] /\
   [L0xffffffffc538, L0xffffffffc53a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc53c, L0xffffffffc53e] /\
   [L0xffffffffc53c, L0xffffffffc53e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc550, L0xffffffffc552] /\
   [L0xffffffffc550, L0xffffffffc552] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc554, L0xffffffffc556] /\
   [L0xffffffffc554, L0xffffffffc556] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc558, L0xffffffffc55a] /\
   [L0xffffffffc558, L0xffffffffc55a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc55c, L0xffffffffc55e] /\
   [L0xffffffffc55c, L0xffffffffc55e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc570, L0xffffffffc572] /\
   [L0xffffffffc570, L0xffffffffc572] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc574, L0xffffffffc576] /\
   [L0xffffffffc574, L0xffffffffc576] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc578, L0xffffffffc57a] /\
   [L0xffffffffc578, L0xffffffffc57a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc57c, L0xffffffffc57e] /\
   [L0xffffffffc57c, L0xffffffffc57e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc590, L0xffffffffc592] /\
   [L0xffffffffc590, L0xffffffffc592] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc594, L0xffffffffc596] /\
   [L0xffffffffc594, L0xffffffffc596] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc598, L0xffffffffc59a] /\
   [L0xffffffffc598, L0xffffffffc59a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc59c, L0xffffffffc59e] /\
   [L0xffffffffc59c, L0xffffffffc59e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b0, L0xffffffffc5b2] /\
   [L0xffffffffc5b0, L0xffffffffc5b2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b4, L0xffffffffc5b6] /\
   [L0xffffffffc5b4, L0xffffffffc5b6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b8, L0xffffffffc5ba] /\
   [L0xffffffffc5b8, L0xffffffffc5ba] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5bc, L0xffffffffc5be] /\
   [L0xffffffffc5bc, L0xffffffffc5be] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d0, L0xffffffffc5d2] /\
   [L0xffffffffc5d0, L0xffffffffc5d2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d4, L0xffffffffc5d6] /\
   [L0xffffffffc5d4, L0xffffffffc5d6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d8, L0xffffffffc5da] /\
   [L0xffffffffc5d8, L0xffffffffc5da] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5dc, L0xffffffffc5de] /\
   [L0xffffffffc5dc, L0xffffffffc5de] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f0, L0xffffffffc5f2] /\
   [L0xffffffffc5f0, L0xffffffffc5f2] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f4, L0xffffffffc5f6] /\
   [L0xffffffffc5f4, L0xffffffffc5f6] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f8, L0xffffffffc5fa] /\
   [L0xffffffffc5f8, L0xffffffffc5fa] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5fc, L0xffffffffc5fe] /\
   [L0xffffffffc5fc, L0xffffffffc5fe] < [4*Q+Q2, 4*Q+Q2]
&&
   Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc400, L0xffffffffc402] /\
   [L0xffffffffc400, L0xffffffffc402] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc404, L0xffffffffc406] /\
   [L0xffffffffc404, L0xffffffffc406] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc408, L0xffffffffc40a] /\
   [L0xffffffffc408, L0xffffffffc40a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc40c, L0xffffffffc40e] /\
   [L0xffffffffc40c, L0xffffffffc40e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc420, L0xffffffffc422] /\
   [L0xffffffffc420, L0xffffffffc422] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc424, L0xffffffffc426] /\
   [L0xffffffffc424, L0xffffffffc426] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc428, L0xffffffffc42a] /\
   [L0xffffffffc428, L0xffffffffc42a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc42c, L0xffffffffc42e] /\
   [L0xffffffffc42c, L0xffffffffc42e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc440, L0xffffffffc442] /\
   [L0xffffffffc440, L0xffffffffc442] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc444, L0xffffffffc446] /\
   [L0xffffffffc444, L0xffffffffc446] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc448, L0xffffffffc44a] /\
   [L0xffffffffc448, L0xffffffffc44a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc44c, L0xffffffffc44e] /\
   [L0xffffffffc44c, L0xffffffffc44e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc460, L0xffffffffc462] /\
   [L0xffffffffc460, L0xffffffffc462] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc464, L0xffffffffc466] /\
   [L0xffffffffc464, L0xffffffffc466] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc468, L0xffffffffc46a] /\
   [L0xffffffffc468, L0xffffffffc46a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc46c, L0xffffffffc46e] /\
   [L0xffffffffc46c, L0xffffffffc46e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc480, L0xffffffffc482] /\
   [L0xffffffffc480, L0xffffffffc482] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc484, L0xffffffffc486] /\
   [L0xffffffffc484, L0xffffffffc486] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc488, L0xffffffffc48a] /\
   [L0xffffffffc488, L0xffffffffc48a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc48c, L0xffffffffc48e] /\
   [L0xffffffffc48c, L0xffffffffc48e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a0, L0xffffffffc4a2] /\
   [L0xffffffffc4a0, L0xffffffffc4a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a4, L0xffffffffc4a6] /\
   [L0xffffffffc4a4, L0xffffffffc4a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a8, L0xffffffffc4aa] /\
   [L0xffffffffc4a8, L0xffffffffc4aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ac, L0xffffffffc4ae] /\
   [L0xffffffffc4ac, L0xffffffffc4ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c0, L0xffffffffc4c2] /\
   [L0xffffffffc4c0, L0xffffffffc4c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c4, L0xffffffffc4c6] /\
   [L0xffffffffc4c4, L0xffffffffc4c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c8, L0xffffffffc4ca] /\
   [L0xffffffffc4c8, L0xffffffffc4ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4cc, L0xffffffffc4ce] /\
   [L0xffffffffc4cc, L0xffffffffc4ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e0, L0xffffffffc4e2] /\
   [L0xffffffffc4e0, L0xffffffffc4e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e4, L0xffffffffc4e6] /\
   [L0xffffffffc4e4, L0xffffffffc4e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e8, L0xffffffffc4ea] /\
   [L0xffffffffc4e8, L0xffffffffc4ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ec, L0xffffffffc4ee] /\
   [L0xffffffffc4ec, L0xffffffffc4ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc500, L0xffffffffc502] /\
   [L0xffffffffc500, L0xffffffffc502] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc504, L0xffffffffc506] /\
   [L0xffffffffc504, L0xffffffffc506] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc508, L0xffffffffc50a] /\
   [L0xffffffffc508, L0xffffffffc50a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc50c, L0xffffffffc50e] /\
   [L0xffffffffc50c, L0xffffffffc50e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc520, L0xffffffffc522] /\
   [L0xffffffffc520, L0xffffffffc522] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc524, L0xffffffffc526] /\
   [L0xffffffffc524, L0xffffffffc526] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc528, L0xffffffffc52a] /\
   [L0xffffffffc528, L0xffffffffc52a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc52c, L0xffffffffc52e] /\
   [L0xffffffffc52c, L0xffffffffc52e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc540, L0xffffffffc542] /\
   [L0xffffffffc540, L0xffffffffc542] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc544, L0xffffffffc546] /\
   [L0xffffffffc544, L0xffffffffc546] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc548, L0xffffffffc54a] /\
   [L0xffffffffc548, L0xffffffffc54a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc54c, L0xffffffffc54e] /\
   [L0xffffffffc54c, L0xffffffffc54e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc560, L0xffffffffc562] /\
   [L0xffffffffc560, L0xffffffffc562] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc564, L0xffffffffc566] /\
   [L0xffffffffc564, L0xffffffffc566] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc568, L0xffffffffc56a] /\
   [L0xffffffffc568, L0xffffffffc56a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc56c, L0xffffffffc56e] /\
   [L0xffffffffc56c, L0xffffffffc56e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc580, L0xffffffffc582] /\
   [L0xffffffffc580, L0xffffffffc582] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc584, L0xffffffffc586] /\
   [L0xffffffffc584, L0xffffffffc586] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc588, L0xffffffffc58a] /\
   [L0xffffffffc588, L0xffffffffc58a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc58c, L0xffffffffc58e] /\
   [L0xffffffffc58c, L0xffffffffc58e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a0, L0xffffffffc5a2] /\
   [L0xffffffffc5a0, L0xffffffffc5a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a4, L0xffffffffc5a6] /\
   [L0xffffffffc5a4, L0xffffffffc5a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a8, L0xffffffffc5aa] /\
   [L0xffffffffc5a8, L0xffffffffc5aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ac, L0xffffffffc5ae] /\
   [L0xffffffffc5ac, L0xffffffffc5ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c0, L0xffffffffc5c2] /\
   [L0xffffffffc5c0, L0xffffffffc5c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c4, L0xffffffffc5c6] /\
   [L0xffffffffc5c4, L0xffffffffc5c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c8, L0xffffffffc5ca] /\
   [L0xffffffffc5c8, L0xffffffffc5ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5cc, L0xffffffffc5ce] /\
   [L0xffffffffc5cc, L0xffffffffc5ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e0, L0xffffffffc5e2] /\
   [L0xffffffffc5e0, L0xffffffffc5e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e4, L0xffffffffc5e6] /\
   [L0xffffffffc5e4, L0xffffffffc5e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e8, L0xffffffffc5ea] /\
   [L0xffffffffc5e8, L0xffffffffc5ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ec, L0xffffffffc5ee] /\
   [L0xffffffffc5ec, L0xffffffffc5ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc410, L0xffffffffc412] /\
   [L0xffffffffc410, L0xffffffffc412] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc414, L0xffffffffc416] /\
   [L0xffffffffc414, L0xffffffffc416] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc418, L0xffffffffc41a] /\
   [L0xffffffffc418, L0xffffffffc41a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc41c, L0xffffffffc41e] /\
   [L0xffffffffc41c, L0xffffffffc41e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc430, L0xffffffffc432] /\
   [L0xffffffffc430, L0xffffffffc432] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc434, L0xffffffffc436] /\
   [L0xffffffffc434, L0xffffffffc436] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc438, L0xffffffffc43a] /\
   [L0xffffffffc438, L0xffffffffc43a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc43c, L0xffffffffc43e] /\
   [L0xffffffffc43c, L0xffffffffc43e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc450, L0xffffffffc452] /\
   [L0xffffffffc450, L0xffffffffc452] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc454, L0xffffffffc456] /\
   [L0xffffffffc454, L0xffffffffc456] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc458, L0xffffffffc45a] /\
   [L0xffffffffc458, L0xffffffffc45a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc45c, L0xffffffffc45e] /\
   [L0xffffffffc45c, L0xffffffffc45e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc470, L0xffffffffc472] /\
   [L0xffffffffc470, L0xffffffffc472] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc474, L0xffffffffc476] /\
   [L0xffffffffc474, L0xffffffffc476] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc478, L0xffffffffc47a] /\
   [L0xffffffffc478, L0xffffffffc47a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc47c, L0xffffffffc47e] /\
   [L0xffffffffc47c, L0xffffffffc47e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc490, L0xffffffffc492] /\
   [L0xffffffffc490, L0xffffffffc492] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc494, L0xffffffffc496] /\
   [L0xffffffffc494, L0xffffffffc496] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc498, L0xffffffffc49a] /\
   [L0xffffffffc498, L0xffffffffc49a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc49c, L0xffffffffc49e] /\
   [L0xffffffffc49c, L0xffffffffc49e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b0, L0xffffffffc4b2] /\
   [L0xffffffffc4b0, L0xffffffffc4b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b4, L0xffffffffc4b6] /\
   [L0xffffffffc4b4, L0xffffffffc4b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b8, L0xffffffffc4ba] /\
   [L0xffffffffc4b8, L0xffffffffc4ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4bc, L0xffffffffc4be] /\
   [L0xffffffffc4bc, L0xffffffffc4be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d0, L0xffffffffc4d2] /\
   [L0xffffffffc4d0, L0xffffffffc4d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d4, L0xffffffffc4d6] /\
   [L0xffffffffc4d4, L0xffffffffc4d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d8, L0xffffffffc4da] /\
   [L0xffffffffc4d8, L0xffffffffc4da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4dc, L0xffffffffc4de] /\
   [L0xffffffffc4dc, L0xffffffffc4de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f0, L0xffffffffc4f2] /\
   [L0xffffffffc4f0, L0xffffffffc4f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f4, L0xffffffffc4f6] /\
   [L0xffffffffc4f4, L0xffffffffc4f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f8, L0xffffffffc4fa] /\
   [L0xffffffffc4f8, L0xffffffffc4fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4fc, L0xffffffffc4fe] /\
   [L0xffffffffc4fc, L0xffffffffc4fe] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc510, L0xffffffffc512] /\
   [L0xffffffffc510, L0xffffffffc512] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc514, L0xffffffffc516] /\
   [L0xffffffffc514, L0xffffffffc516] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc518, L0xffffffffc51a] /\
   [L0xffffffffc518, L0xffffffffc51a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc51c, L0xffffffffc51e] /\
   [L0xffffffffc51c, L0xffffffffc51e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc530, L0xffffffffc532] /\
   [L0xffffffffc530, L0xffffffffc532] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc534, L0xffffffffc536] /\
   [L0xffffffffc534, L0xffffffffc536] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc538, L0xffffffffc53a] /\
   [L0xffffffffc538, L0xffffffffc53a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc53c, L0xffffffffc53e] /\
   [L0xffffffffc53c, L0xffffffffc53e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc550, L0xffffffffc552] /\
   [L0xffffffffc550, L0xffffffffc552] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc554, L0xffffffffc556] /\
   [L0xffffffffc554, L0xffffffffc556] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc558, L0xffffffffc55a] /\
   [L0xffffffffc558, L0xffffffffc55a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc55c, L0xffffffffc55e] /\
   [L0xffffffffc55c, L0xffffffffc55e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc570, L0xffffffffc572] /\
   [L0xffffffffc570, L0xffffffffc572] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc574, L0xffffffffc576] /\
   [L0xffffffffc574, L0xffffffffc576] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc578, L0xffffffffc57a] /\
   [L0xffffffffc578, L0xffffffffc57a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc57c, L0xffffffffc57e] /\
   [L0xffffffffc57c, L0xffffffffc57e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc590, L0xffffffffc592] /\
   [L0xffffffffc590, L0xffffffffc592] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc594, L0xffffffffc596] /\
   [L0xffffffffc594, L0xffffffffc596] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc598, L0xffffffffc59a] /\
   [L0xffffffffc598, L0xffffffffc59a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc59c, L0xffffffffc59e] /\
   [L0xffffffffc59c, L0xffffffffc59e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b0, L0xffffffffc5b2] /\
   [L0xffffffffc5b0, L0xffffffffc5b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b4, L0xffffffffc5b6] /\
   [L0xffffffffc5b4, L0xffffffffc5b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b8, L0xffffffffc5ba] /\
   [L0xffffffffc5b8, L0xffffffffc5ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5bc, L0xffffffffc5be] /\
   [L0xffffffffc5bc, L0xffffffffc5be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d0, L0xffffffffc5d2] /\
   [L0xffffffffc5d0, L0xffffffffc5d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d4, L0xffffffffc5d6] /\
   [L0xffffffffc5d4, L0xffffffffc5d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d8, L0xffffffffc5da] /\
   [L0xffffffffc5d8, L0xffffffffc5da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5dc, L0xffffffffc5de] /\
   [L0xffffffffc5dc, L0xffffffffc5de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f0, L0xffffffffc5f2] /\
   [L0xffffffffc5f0, L0xffffffffc5f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f4, L0xffffffffc5f6] /\
   [L0xffffffffc5f4, L0xffffffffc5f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f8, L0xffffffffc5fa] /\
   [L0xffffffffc5f8, L0xffffffffc5fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5fc, L0xffffffffc5fe] /\
   [L0xffffffffc5fc, L0xffffffffc5fe] <s [4@16*Q+Q2, 4@16*Q+Q2]
}

(******** nondets ********)


nondet sp@uint64;nondet x0@uint64;nondet x1@uint64;
nondet  %v0@sint16[8];
nondet  %v8@sint16[8];nondet  %v9@sint16[8];nondet %v10@sint16[8];nondet %v11@sint16[8];
nondet %v12@sint16[8];nondet %v13@sint16[8];nondet %v14@sint16[8];nondet %v15@sint16[8];



(******** constants ********)


mov L0x414860 0x0d01@int16;
mov L0x414868 0x4ebf@int16;
mov L0x414880 (     0)@int16; mov L0x414882 (     0)@int16;
mov L0x414884 (-15749)@int16; mov L0x414886 ( -1600)@int16;
mov L0x414888 ( -7373)@int16; mov L0x41488a (  -749)@int16;
mov L0x41488c (  -394)@int16; mov L0x41488e (   -40)@int16;
mov L0x414890 ( -6762)@int16; mov L0x414892 (  -687)@int16;
mov L0x414894 (  6201)@int16; mov L0x414896 (   630)@int16;
mov L0x414898 (-14095)@int16; mov L0x41489a ( -1432)@int16;
mov L0x41489c (  8347)@int16; mov L0x41489e (   848)@int16;
mov L0x4148a0 ( 10453)@int16; mov L0x4148a2 (  1062)@int16;
mov L0x4148a4 (-13879)@int16; mov L0x4148a6 ( -1410)@int16;
mov L0x4148a8 (  1900)@int16; mov L0x4148aa (   193)@int16;
mov L0x4148ac (  7845)@int16; mov L0x4148ae (   797)@int16;
mov L0x4148b0 ( -5345)@int16; mov L0x4148b2 (  -543)@int16;
mov L0x4148b4 (  -679)@int16; mov L0x4148b6 (   -69)@int16;
mov L0x4148b8 (  5601)@int16; mov L0x4148ba (   569)@int16;
mov L0x4148bc (-15582)@int16; mov L0x4148be ( -1583)@int16;
mov L0x4148c0 (     0)@int16; mov L0x4148c2 (     0)@int16;
mov L0x4148c4 (     0)@int16; mov L0x4148c6 (     0)@int16;
mov L0x4148c8 (     0)@int16; mov L0x4148ca (     0)@int16;
mov L0x4148cc (     0)@int16; mov L0x4148ce (     0)@int16;
mov L0x4148d0 (     0)@int16; mov L0x4148d2 (     0)@int16;
mov L0x4148d4 (     0)@int16; mov L0x4148d6 (     0)@int16;
mov L0x4148d8 (     0)@int16; mov L0x4148da (     0)@int16;
mov L0x4148dc (     0)@int16; mov L0x4148de (     0)@int16;
mov L0x4148e0 (  2914)@int16; mov L0x4148e2 (  2914)@int16;
mov L0x4148e4 ( 14036)@int16; mov L0x4148e6 ( 14036)@int16;
mov L0x4148e8 ( -8682)@int16; mov L0x4148ea ( -8682)@int16;
mov L0x4148ec (-12156)@int16; mov L0x4148ee (-12156)@int16;
mov L0x4148f0 (   296)@int16; mov L0x4148f2 (   296)@int16;
mov L0x4148f4 (  1426)@int16; mov L0x4148f6 (  1426)@int16;
mov L0x4148f8 (  -882)@int16; mov L0x4148fa (  -882)@int16;
mov L0x4148fc ( -1235)@int16; mov L0x4148fe ( -1235)@int16;
mov L0x414900 (  2845)@int16; mov L0x414902 (  2845)@int16;
mov L0x414904 ( -9942)@int16; mov L0x414906 ( -9942)@int16;
mov L0x414908 (  -748)@int16; mov L0x41490a (  -748)@int16;
mov L0x41490c (  7943)@int16; mov L0x41490e (  7943)@int16;
mov L0x414910 (   289)@int16; mov L0x414912 (   289)@int16;
mov L0x414914 ( -1010)@int16; mov L0x414916 ( -1010)@int16;
mov L0x414918 (   -76)@int16; mov L0x41491a (   -76)@int16;
mov L0x41491c (   807)@int16; mov L0x41491e (   807)@int16;
mov L0x414920 (  3258)@int16; mov L0x414922 (  3258)@int16;
mov L0x414924 ( 14125)@int16; mov L0x414926 ( 14125)@int16;
mov L0x414928 (-15483)@int16; mov L0x41492a (-15483)@int16;
mov L0x41492c (  4449)@int16; mov L0x41492e (  4449)@int16;
mov L0x414930 (   331)@int16; mov L0x414932 (   331)@int16;
mov L0x414934 (  1435)@int16; mov L0x414936 (  1435)@int16;
mov L0x414938 ( -1573)@int16; mov L0x41493a ( -1573)@int16;
mov L0x41493c (   452)@int16; mov L0x41493e (   452)@int16;
mov L0x414940 (   167)@int16; mov L0x414942 (   167)@int16;
mov L0x414944 ( 15592)@int16; mov L0x414946 ( 15592)@int16;
mov L0x414948 ( 16113)@int16; mov L0x41494a ( 16113)@int16;
mov L0x41494c (  3691)@int16; mov L0x41494e (  3691)@int16;
mov L0x414950 (    17)@int16; mov L0x414952 (    17)@int16;
mov L0x414954 (  1584)@int16; mov L0x414956 (  1584)@int16;
mov L0x414958 (  1637)@int16; mov L0x41495a (  1637)@int16;
mov L0x41495c (   375)@int16; mov L0x41495e (   375)@int16;
mov L0x414960 ( -5591)@int16; mov L0x414962 ( -5591)@int16;
mov L0x414964 (-10148)@int16; mov L0x414966 (-10148)@int16;
mov L0x414968 (  7117)@int16; mov L0x41496a (  7117)@int16;
mov L0x41496c ( -7678)@int16; mov L0x41496e ( -7678)@int16;
mov L0x414970 (  -568)@int16; mov L0x414972 (  -568)@int16;
mov L0x414974 ( -1031)@int16; mov L0x414976 ( -1031)@int16;
mov L0x414978 (   723)@int16; mov L0x41497a (   723)@int16;
mov L0x41497c (  -780)@int16; mov L0x41497e (  -780)@int16;
mov L0x414980 (  5739)@int16; mov L0x414982 (  5739)@int16;
mov L0x414984 (-12717)@int16; mov L0x414986 (-12717)@int16;
mov L0x414988 (-10247)@int16; mov L0x41498a (-10247)@int16;
mov L0x41498c (-12196)@int16; mov L0x41498e (-12196)@int16;
mov L0x414990 (   583)@int16; mov L0x414992 (   583)@int16;
mov L0x414994 ( -1292)@int16; mov L0x414996 ( -1292)@int16;
mov L0x414998 ( -1041)@int16; mov L0x41499a ( -1041)@int16;
mov L0x41499c ( -1239)@int16; mov L0x41499e ( -1239)@int16;
mov L0x4149a0 ( -6693)@int16; mov L0x4149a2 ( -6693)@int16;
mov L0x4149a4 ( -1073)@int16; mov L0x4149a6 ( -1073)@int16;
mov L0x4149a8 ( 10828)@int16; mov L0x4149aa ( 10828)@int16;
mov L0x4149ac ( 16192)@int16; mov L0x4149ae ( 16192)@int16;
mov L0x4149b0 (  -680)@int16; mov L0x4149b2 (  -680)@int16;
mov L0x4149b4 (  -109)@int16; mov L0x4149b6 (  -109)@int16;
mov L0x4149b8 (  1100)@int16; mov L0x4149ba (  1100)@int16;
mov L0x4149bc (  1645)@int16; mov L0x4149be (  1645)@int16;
mov L0x4149c0 (     0)@int16; mov L0x4149c2 (     0)@int16;
mov L0x4149c4 (     0)@int16; mov L0x4149c6 (     0)@int16;
mov L0x4149c8 (     0)@int16; mov L0x4149ca (     0)@int16;
mov L0x4149cc (     0)@int16; mov L0x4149ce (     0)@int16;
mov L0x4149d0 (     0)@int16; mov L0x4149d2 (     0)@int16;
mov L0x4149d4 (     0)@int16; mov L0x4149d6 (     0)@int16;
mov L0x4149d8 (     0)@int16; mov L0x4149da (     0)@int16;
mov L0x4149dc (     0)@int16; mov L0x4149de (     0)@int16;
mov L0x4149e0 ( 13180)@int16; mov L0x4149e2 ( 13180)@int16;
mov L0x4149e4 (  5266)@int16; mov L0x4149e6 (  5266)@int16;
mov L0x4149e8 ( 14529)@int16; mov L0x4149ea ( 14529)@int16;
mov L0x4149ec ( -4400)@int16; mov L0x4149ee ( -4400)@int16;
mov L0x4149f0 (  1339)@int16; mov L0x4149f2 (  1339)@int16;
mov L0x4149f4 (   535)@int16; mov L0x4149f6 (   535)@int16;
mov L0x4149f8 (  1476)@int16; mov L0x4149fa (  1476)@int16;
mov L0x4149fc (  -447)@int16; mov L0x4149fe (  -447)@int16;
mov L0x414a00 ( 11782)@int16; mov L0x414a02 ( 11782)@int16;
mov L0x414a04 ( 14155)@int16; mov L0x414a06 ( 14155)@int16;
mov L0x414a08 (-10355)@int16; mov L0x414a0a (-10355)@int16;
mov L0x414a0c ( 15099)@int16; mov L0x414a0e ( 15099)@int16;
mov L0x414a10 (  1197)@int16; mov L0x414a12 (  1197)@int16;
mov L0x414a14 (  1438)@int16; mov L0x414a16 (  1438)@int16;
mov L0x414a18 ( -1052)@int16; mov L0x414a1a ( -1052)@int16;
mov L0x414a1c (  1534)@int16; mov L0x414a1e (  1534)@int16;
mov L0x414a20 (-10089)@int16; mov L0x414a22 (-10089)@int16;
mov L0x414a24 ( -4538)@int16; mov L0x414a26 ( -4538)@int16;
mov L0x414a28 (-12540)@int16; mov L0x414a2a (-12540)@int16;
mov L0x414a2c ( -9125)@int16; mov L0x414a2e ( -9125)@int16;
mov L0x414a30 ( -1025)@int16; mov L0x414a32 ( -1025)@int16;
mov L0x414a34 (  -461)@int16; mov L0x414a36 (  -461)@int16;
mov L0x414a38 ( -1274)@int16; mov L0x414a3a ( -1274)@int16;
mov L0x414a3c (  -927)@int16; mov L0x414a3e (  -927)@int16;
mov L0x414a40 ( 13869)@int16; mov L0x414a42 ( 13869)@int16;
mov L0x414a44 ( 10463)@int16; mov L0x414a46 ( 10463)@int16;
mov L0x414a48 (  7441)@int16; mov L0x414a4a (  7441)@int16;
mov L0x414a4c (-12107)@int16; mov L0x414a4e (-12107)@int16;
mov L0x414a50 (  1409)@int16; mov L0x414a52 (  1409)@int16;
mov L0x414a54 (  1063)@int16; mov L0x414a56 (  1063)@int16;
mov L0x414a58 (   756)@int16; mov L0x414a5a (   756)@int16;
mov L0x414a5c ( -1230)@int16; mov L0x414a5e ( -1230)@int16;
mov L0x414a60 ( -6565)@int16; mov L0x414a62 ( -6565)@int16;
mov L0x414a64 (  3140)@int16; mov L0x414a66 (  3140)@int16;
mov L0x414a68 (-11546)@int16; mov L0x414a6a (-11546)@int16;
mov L0x414a6c (  5522)@int16; mov L0x414a6e (  5522)@int16;
mov L0x414a70 (  -667)@int16; mov L0x414a72 (  -667)@int16;
mov L0x414a74 (   319)@int16; mov L0x414a76 (   319)@int16;
mov L0x414a78 ( -1173)@int16; mov L0x414a7a ( -1173)@int16;
mov L0x414a7c (   561)@int16; mov L0x414a7e (   561)@int16;
mov L0x414a80 (  -472)@int16; mov L0x414a82 (  -472)@int16;
mov L0x414a84 ( -5473)@int16; mov L0x414a86 ( -5473)@int16;
mov L0x414a88 ( -3091)@int16; mov L0x414a8a ( -3091)@int16;
mov L0x414a8c ( -8495)@int16; mov L0x414a8e ( -8495)@int16;
mov L0x414a90 (   -48)@int16; mov L0x414a92 (   -48)@int16;
mov L0x414a94 (  -556)@int16; mov L0x414a96 (  -556)@int16;
mov L0x414a98 (  -314)@int16; mov L0x414a9a (  -314)@int16;
mov L0x414a9c (  -863)@int16; mov L0x414a9e (  -863)@int16;
mov L0x414aa0 (  2293)@int16; mov L0x414aa2 (  2293)@int16;
mov L0x414aa4 (  7451)@int16; mov L0x414aa6 (  7451)@int16;
mov L0x414aa8 ( -2746)@int16; mov L0x414aaa ( -2746)@int16;
mov L0x414aac ( -7235)@int16; mov L0x414aae ( -7235)@int16;
mov L0x414ab0 (   233)@int16; mov L0x414ab2 (   233)@int16;
mov L0x414ab4 (   757)@int16; mov L0x414ab6 (   757)@int16;
mov L0x414ab8 (  -279)@int16; mov L0x414aba (  -279)@int16;
mov L0x414abc (  -735)@int16; mov L0x414abe (  -735)@int16;
mov L0x414ac0 (     0)@int16; mov L0x414ac2 (     0)@int16;
mov L0x414ac4 (     0)@int16; mov L0x414ac6 (     0)@int16;
mov L0x414ac8 (     0)@int16; mov L0x414aca (     0)@int16;
mov L0x414acc (     0)@int16; mov L0x414ace (     0)@int16;
mov L0x414ad0 (     0)@int16; mov L0x414ad2 (     0)@int16;
mov L0x414ad4 (     0)@int16; mov L0x414ad6 (     0)@int16;
mov L0x414ad8 (     0)@int16; mov L0x414ada (     0)@int16;
mov L0x414adc (     0)@int16; mov L0x414ade (     0)@int16;
mov L0x414ae0 ( -2786)@int16; mov L0x414ae2 ( -2786)@int16;
mov L0x414ae4 ( -9213)@int16; mov L0x414ae6 ( -9213)@int16;
mov L0x414ae8 (   551)@int16; mov L0x414aea (   551)@int16;
mov L0x414aec ( -4429)@int16; mov L0x414aee ( -4429)@int16;
mov L0x414af0 (  -283)@int16; mov L0x414af2 (  -283)@int16;
mov L0x414af4 (  -936)@int16; mov L0x414af6 (  -936)@int16;
mov L0x414af8 (    56)@int16; mov L0x414afa (    56)@int16;
mov L0x414afc (  -450)@int16; mov L0x414afe (  -450)@int16;
mov L0x414b00 (  6398)@int16; mov L0x414b02 (  6398)@int16;
mov L0x414b04 ( -6713)@int16; mov L0x414b06 ( -6713)@int16;
mov L0x414b08 ( -8032)@int16; mov L0x414b0a ( -8032)@int16;
mov L0x414b0c ( 14578)@int16; mov L0x414b0e ( 14578)@int16;
mov L0x414b10 (   650)@int16; mov L0x414b12 (   650)@int16;
mov L0x414b14 (  -682)@int16; mov L0x414b16 (  -682)@int16;
mov L0x414b18 (  -816)@int16; mov L0x414b1a (  -816)@int16;
mov L0x414b1c (  1481)@int16; mov L0x414b1e (  1481)@int16;
mov L0x414b20 (-13308)@int16; mov L0x414b22 (-13308)@int16;
mov L0x414b24 ( -7008)@int16; mov L0x414b26 ( -7008)@int16;
mov L0x414b28 (  6221)@int16; mov L0x414b2a (  6221)@int16;
mov L0x414b2c (  6378)@int16; mov L0x414b2e (  6378)@int16;
mov L0x414b30 ( -1352)@int16; mov L0x414b32 ( -1352)@int16;
mov L0x414b34 (  -712)@int16; mov L0x414b36 (  -712)@int16;
mov L0x414b38 (   632)@int16; mov L0x414b3a (   632)@int16;
mov L0x414b3c (   648)@int16; mov L0x414b3e (   648)@int16;
mov L0x414b40 (-16005)@int16; mov L0x414b42 (-16005)@int16;
mov L0x414b44 ( -5168)@int16; mov L0x414b46 ( -5168)@int16;
mov L0x414b48 (-14588)@int16; mov L0x414b4a (-14588)@int16;
mov L0x414b4c ( 11251)@int16; mov L0x414b4e ( 11251)@int16;
mov L0x414b50 ( -1626)@int16; mov L0x414b52 ( -1626)@int16;
mov L0x414b54 (  -525)@int16; mov L0x414b56 (  -525)@int16;
mov L0x414b58 ( -1482)@int16; mov L0x414b5a ( -1482)@int16;
mov L0x414b5c (  1143)@int16; mov L0x414b5e (  1143)@int16;
mov L0x414b60 ( 16251)@int16; mov L0x414b62 ( 16251)@int16;
mov L0x414b64 ( 10749)@int16; mov L0x414b66 ( 10749)@int16;
mov L0x414b68 (  9371)@int16; mov L0x414b6a (  9371)@int16;
mov L0x414b6c (-11605)@int16; mov L0x414b6e (-11605)@int16;
mov L0x414b70 (  1651)@int16; mov L0x414b72 (  1651)@int16;
mov L0x414b74 (  1092)@int16; mov L0x414b76 (  1092)@int16;
mov L0x414b78 (   952)@int16; mov L0x414b7a (   952)@int16;
mov L0x414b7c ( -1179)@int16; mov L0x414b7e ( -1179)@int16;
mov L0x414b80 ( -5315)@int16; mov L0x414b82 ( -5315)@int16;
mov L0x414b84 (  3967)@int16; mov L0x414b86 (  3967)@int16;
mov L0x414b88 ( 14381)@int16; mov L0x414b8a ( 14381)@int16;
mov L0x414b8c ( -5453)@int16; mov L0x414b8e ( -5453)@int16;
mov L0x414b90 (  -540)@int16; mov L0x414b92 (  -540)@int16;
mov L0x414b94 (   403)@int16; mov L0x414b96 (   403)@int16;
mov L0x414b98 (  1461)@int16; mov L0x414b9a (  1461)@int16;
mov L0x414b9c (  -554)@int16; mov L0x414b9e (  -554)@int16;
mov L0x414ba0 (-15159)@int16; mov L0x414ba2 (-15159)@int16;
mov L0x414ba4 ( 10099)@int16; mov L0x414ba6 ( 10099)@int16;
mov L0x414ba8 ( -6319)@int16; mov L0x414baa ( -6319)@int16;
mov L0x414bac (  8721)@int16; mov L0x414bae (  8721)@int16;
mov L0x414bb0 ( -1540)@int16; mov L0x414bb2 ( -1540)@int16;
mov L0x414bb4 (  1026)@int16; mov L0x414bb6 (  1026)@int16;
mov L0x414bb8 (  -642)@int16; mov L0x414bba (  -642)@int16;
mov L0x414bbc (   886)@int16; mov L0x414bbe (   886)@int16;
mov L0x414bc0 (     0)@int16; mov L0x414bc2 (     0)@int16;
mov L0x414bc4 (     0)@int16; mov L0x414bc6 (     0)@int16;
mov L0x414bc8 (     0)@int16; mov L0x414bca (     0)@int16;
mov L0x414bcc (     0)@int16; mov L0x414bce (     0)@int16;
mov L0x414bd0 (     0)@int16; mov L0x414bd2 (     0)@int16;
mov L0x414bd4 (     0)@int16; mov L0x414bd6 (     0)@int16;
mov L0x414bd8 (     0)@int16; mov L0x414bda (     0)@int16;
mov L0x414bdc (     0)@int16; mov L0x414bde (     0)@int16;
mov L0x414be0 (-10719)@int16; mov L0x414be2 (-10719)@int16;
mov L0x414be4 (-13338)@int16; mov L0x414be6 (-13338)@int16;
mov L0x414be8 ( 13121)@int16; mov L0x414bea ( 13121)@int16;
mov L0x414bec (  8081)@int16; mov L0x414bee (  8081)@int16;
mov L0x414bf0 ( -1089)@int16; mov L0x414bf2 ( -1089)@int16;
mov L0x414bf4 ( -1355)@int16; mov L0x414bf6 ( -1355)@int16;
mov L0x414bf8 (  1333)@int16; mov L0x414bfa (  1333)@int16;
mov L0x414bfc (   821)@int16; mov L0x414bfe (   821)@int16;
mov L0x414c00 ( -4567)@int16; mov L0x414c02 ( -4567)@int16;
mov L0x414c04 ( -8416)@int16; mov L0x414c06 ( -8416)@int16;
mov L0x414c08 ( 12993)@int16; mov L0x414c0a ( 12993)@int16;
mov L0x414c0c ( 12078)@int16; mov L0x414c0e ( 12078)@int16;
mov L0x414c10 (  -464)@int16; mov L0x414c12 (  -464)@int16;
mov L0x414c14 (  -855)@int16; mov L0x414c16 (  -855)@int16;
mov L0x414c18 (  1320)@int16; mov L0x414c1a (  1320)@int16;
mov L0x414c1c (  1227)@int16; mov L0x414c1e (  1227)@int16;
mov L0x414c20 (   325)@int16; mov L0x414c22 (   325)@int16;
mov L0x414c24 ( -2156)@int16; mov L0x414c26 ( -2156)@int16;
mov L0x414c28 (-13918)@int16; mov L0x414c2a (-13918)@int16;
mov L0x414c2c (  8957)@int16; mov L0x414c2e (  8957)@int16;
mov L0x414c30 (    33)@int16; mov L0x414c32 (    33)@int16;
mov L0x414c34 (  -219)@int16; mov L0x414c36 (  -219)@int16;
mov L0x414c38 ( -1414)@int16; mov L0x414c3a ( -1414)@int16;
mov L0x414c3c (   910)@int16; mov L0x414c3e (   910)@int16;
mov L0x414c40 (  9243)@int16; mov L0x414c42 (  9243)@int16;
mov L0x414c44 (-15818)@int16; mov L0x414c46 (-15818)@int16;
mov L0x414c48 (  7215)@int16; mov L0x414c4a (  7215)@int16;
mov L0x414c4c (-11999)@int16; mov L0x414c4e (-11999)@int16;
mov L0x414c50 (   939)@int16; mov L0x414c52 (   939)@int16;
mov L0x414c54 ( -1607)@int16; mov L0x414c56 ( -1607)@int16;
mov L0x414c58 (   733)@int16; mov L0x414c5a (   733)@int16;
mov L0x414c5c ( -1219)@int16; mov L0x414c5e ( -1219)@int16;
mov L0x414c60 (-10050)@int16; mov L0x414c62 (-10050)@int16;
mov L0x414c64 ( 11930)@int16; mov L0x414c66 ( 11930)@int16;
mov L0x414c68 ( -9764)@int16; mov L0x414c6a ( -9764)@int16;
mov L0x414c6c ( -3878)@int16; mov L0x414c6e ( -3878)@int16;
mov L0x414c70 ( -1021)@int16; mov L0x414c72 ( -1021)@int16;
mov L0x414c74 (  1212)@int16; mov L0x414c76 (  1212)@int16;
mov L0x414c78 (  -992)@int16; mov L0x414c7a (  -992)@int16;
mov L0x414c7c (  -394)@int16; mov L0x414c7e (  -394)@int16;
mov L0x414c80 ( -8780)@int16; mov L0x414c82 ( -8780)@int16;
mov L0x414c84 (-14322)@int16; mov L0x414c86 (-14322)@int16;
mov L0x414c88 (  2638)@int16; mov L0x414c8a (  2638)@int16;
mov L0x414c8c (  8711)@int16; mov L0x414c8e (  8711)@int16;
mov L0x414c90 (  -892)@int16; mov L0x414c92 (  -892)@int16;
mov L0x414c94 ( -1455)@int16; mov L0x414c96 ( -1455)@int16;
mov L0x414c98 (   268)@int16; mov L0x414c9a (   268)@int16;
mov L0x414c9c (   885)@int16; mov L0x414c9e (   885)@int16;
mov L0x414ca0 ( -9262)@int16; mov L0x414ca2 ( -9262)@int16;
mov L0x414ca4 ( 10129)@int16; mov L0x414ca6 ( 10129)@int16;
mov L0x414ca8 (  6309)@int16; mov L0x414caa (  6309)@int16;
mov L0x414cac (-11566)@int16; mov L0x414cae (-11566)@int16;
mov L0x414cb0 (  -941)@int16; mov L0x414cb2 (  -941)@int16;
mov L0x414cb4 (  1029)@int16; mov L0x414cb6 (  1029)@int16;
mov L0x414cb8 (   641)@int16; mov L0x414cba (   641)@int16;
mov L0x414cbc ( -1175)@int16; mov L0x414cbe ( -1175)@int16;



(* #! -> SP = 0xffffffffb450 *)
#! 0xffffffffb450 = 0xffffffffb450;
(* sub	sp, sp, #0x40                               #! PC = 0x411934 *)
subc dc sp sp 0x40@uint64;
(* stp	d8, d9, [sp]                                #! EA = L0xffffffffb410; PC = 0x411938 *)
mov [L0xffffffffb410,L0xffffffffb412,L0xffffffffb414,L0xffffffffb416] %v8[0:4];
mov [L0xffffffffb418,L0xffffffffb41a,L0xffffffffb41c,L0xffffffffb41e] %v9[0:4];
(* stp	d10, d11, [sp, #16]                         #! EA = L0xffffffffb420; PC = 0x41193c *)
mov [L0xffffffffb420,L0xffffffffb422,L0xffffffffb424,L0xffffffffb426] %v10[0:4];
mov [L0xffffffffb428,L0xffffffffb42a,L0xffffffffb42c,L0xffffffffb42e] %v11[0:4];
(* stp	d12, d13, [sp, #32]                         #! EA = L0xffffffffb430; PC = 0x411940 *)
mov [L0xffffffffb430,L0xffffffffb432,L0xffffffffb434,L0xffffffffb436] %v12[0:4];
mov [L0xffffffffb438,L0xffffffffb43a,L0xffffffffb43c,L0xffffffffb43e] %v13[0:4];
(* stp	d14, d15, [sp, #48]                         #! EA = L0xffffffffb440; PC = 0x411944 *)
mov [L0xffffffffb440,L0xffffffffb442,L0xffffffffb444,L0xffffffffb446] %v14[0:4];
mov [L0xffffffffb448,L0xffffffffb44a,L0xffffffffb44c,L0xffffffffb44e] %v15[0:4];
(* ldrsh	w8, [x2]                                  #! EA = L0x414860; Value = 0x7ff6fdf60cff0d01; PC = 0x411948 *)
mov %v8 [L0x414860]++%v8[1:8];
(* ldrsh	w9, [x2, #8]                              #! EA = L0x414868; Value = 0x0a3a020013b04ebf; PC = 0x41194c *)
mov %v9 [L0x414868]++%v9[1:8];
(* add	x10, x1, #0x40                              #! PC = 0x411950 *)
adds dc x10 x1 0x40@uint64;
(* add	x0, x0, #0x0                                #! PC = 0x411954 *)
adds dc x0 x0 0x0@uint64;
(* add	x1, x0, #0x100                              #! PC = 0x411958 *)
adds dc x1 x0 0x100@uint64;
(* mov	v0.h[0], w8                                 #! PC = 0x41195c *)
mov %v0 [%v8[0]]++%v0[1:8];
(* mov	v0.h[1], w9                                 #! PC = 0x411960 *)
mov %v0 %v0[0:1]++[%v9[0]]++%v0[2:8];

(* CUT 0 0 *)
cut 
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc410, L0xffffffffc412] /\
   [L0xffffffffc410, L0xffffffffc412] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc414, L0xffffffffc416] /\
   [L0xffffffffc414, L0xffffffffc416] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc418, L0xffffffffc41a] /\
   [L0xffffffffc418, L0xffffffffc41a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc41c, L0xffffffffc41e] /\
   [L0xffffffffc41c, L0xffffffffc41e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc430, L0xffffffffc432] /\
   [L0xffffffffc430, L0xffffffffc432] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc434, L0xffffffffc436] /\
   [L0xffffffffc434, L0xffffffffc436] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc438, L0xffffffffc43a] /\
   [L0xffffffffc438, L0xffffffffc43a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc43c, L0xffffffffc43e] /\
   [L0xffffffffc43c, L0xffffffffc43e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc510, L0xffffffffc512] /\
   [L0xffffffffc510, L0xffffffffc512] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc514, L0xffffffffc516] /\
   [L0xffffffffc514, L0xffffffffc516] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc518, L0xffffffffc51a] /\
   [L0xffffffffc518, L0xffffffffc51a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc51c, L0xffffffffc51e] /\
   [L0xffffffffc51c, L0xffffffffc51e] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc530, L0xffffffffc532] /\
   [L0xffffffffc530, L0xffffffffc532] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc534, L0xffffffffc536] /\
   [L0xffffffffc534, L0xffffffffc536] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc538, L0xffffffffc53a] /\
   [L0xffffffffc538, L0xffffffffc53a] < [4*Q+Q2, 4*Q+Q2] /\
   [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc53c, L0xffffffffc53e] /\
   [L0xffffffffc53c, L0xffffffffc53e] < [4*Q+Q2, 4*Q+Q2]
   prove with [precondition]
&&
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc410, L0xffffffffc412] /\
   [L0xffffffffc410, L0xffffffffc412] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc414, L0xffffffffc416] /\
   [L0xffffffffc414, L0xffffffffc416] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc418, L0xffffffffc41a] /\
   [L0xffffffffc418, L0xffffffffc41a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc41c, L0xffffffffc41e] /\
   [L0xffffffffc41c, L0xffffffffc41e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc430, L0xffffffffc432] /\
   [L0xffffffffc430, L0xffffffffc432] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc434, L0xffffffffc436] /\
   [L0xffffffffc434, L0xffffffffc436] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc438, L0xffffffffc43a] /\
   [L0xffffffffc438, L0xffffffffc43a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc43c, L0xffffffffc43e] /\
   [L0xffffffffc43c, L0xffffffffc43e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc510, L0xffffffffc512] /\
   [L0xffffffffc510, L0xffffffffc512] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc514, L0xffffffffc516] /\
   [L0xffffffffc514, L0xffffffffc516] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc518, L0xffffffffc51a] /\
   [L0xffffffffc518, L0xffffffffc51a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc51c, L0xffffffffc51e] /\
   [L0xffffffffc51c, L0xffffffffc51e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc530, L0xffffffffc532] /\
   [L0xffffffffc530, L0xffffffffc532] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc534, L0xffffffffc536] /\
   [L0xffffffffc534, L0xffffffffc536] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc538, L0xffffffffc53a] /\
   [L0xffffffffc538, L0xffffffffc53a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
   [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc53c, L0xffffffffc53e] /\
   [L0xffffffffc53c, L0xffffffffc53e] <s [4@16*Q+Q2, 4@16*Q+Q2]
   prove with [precondition];
   
(* ldr	q28, [x0, #16]                              #! EA = L0xffffffffc410; Value = 0x0c61f9540460fcde; PC = 0x411964 *)
mov %v28 [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e];
(* ldr	q29, [x1, #16]                              #! EA = L0xffffffffc510; Value = 0x00a70e4bf526ff7f; PC = 0x411968 *)
mov %v29 [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e];
(* ldr	q30, [x0, #48]                              #! EA = L0xffffffffc430; Value = 0x014102d60610085e; PC = 0x41196c *)
mov %v30 [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e];
(* ldr	q31, [x1, #48]                              #! EA = L0xffffffffc530; Value = 0xfb1f02cbf3b0ffbb; PC = 0x411970 *)
mov %v31 [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e];
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x411974 *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x411978 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q1, [x10, #16]                              #! EA = L0x4148d0; Value = 0x0000000000000000; PC = 0x41197c *)
mov %v1 [L0x4148d0,L0x4148d2,L0x4148d4,L0x4148d6,L0x4148d8,L0x4148da,L0x4148dc,L0x4148de];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x411980 *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x411984 *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q2, [x10, #32]                              #! EA = L0x4148e0; Value = 0x36d436d40b620b62; PC = 0x411988 *)
mov %v2 [L0x4148e0,L0x4148e2,L0x4148e4,L0x4148e6,L0x4148e8,L0x4148ea,L0x4148ec,L0x4148ee];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x41198c *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x411990 *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q3, [x10, #48]                              #! EA = L0x4148f0; Value = 0x0592059201280128; PC = 0x411994 *)
mov %v3 [L0x4148f0,L0x4148f2,L0x4148f4,L0x4148f6,L0x4148f8,L0x4148fa,L0x4148fc,L0x4148fe];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x411998 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x41199c *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc400; Value = 0x00d1f9ce0eddf9af; PC = 0x4119a0 *)
mov %v24 [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e];

ghost %v29o0@int16[8],%v31o0@int16[8] :
      %v29o0 = %v29 /\ %v31o0 = %v31
   && %v29o0 = %v29 /\ %v31o0 = %v31;
      
(* mul	v18.8h, v29.8h, v3.8h                       #! PC = 0x4119a4 *)
mull %mdc %v18 %v29 %v3; cast %v18@int16[8] %v18;
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc500; Value = 0xf559058b00b501bd; PC = 0x4119a8 *)
mov %v25 [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e];
(* mul	v19.8h, v31.8h, v3.8h                       #! PC = 0x4119ac *)
mull %mdc %v19 %v31 %v3; cast %v19@int16[8] %v19;
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc420; Value = 0x0nd75fdfe07770551; PC = 0x4119b0 *)
mov %v26 [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x4119b4 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x4119b8 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc520; Value = 0xfde1fa01f8990b3f; PC = 0x4119bc *)
mov %v27 [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x4119c0 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x4119c4 *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* sqrdmulh	v29.8h, v29.8h, v2.8h                  #! PC = 0x4119c8 *)
smulj %LO %v29 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x4119cc *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* sqrdmulh	v31.8h, v31.8h, v2.8h                  #! PC = 0x4119d0 *)
smulj %LO %v31 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x4119d4 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* mls	v18.8h, v29.8h, v0.h[0]                     #! PC = 0x4119d8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x4119dc *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x4119e0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v18 (%v29o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;

assume eqmod %v18 (%v29o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x4119e4 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q4, [x10, #64]                              #! EA = L0x414900; Value = 0xd92ad92a0b1d0b1d; PC = 0x4119e8 *)
mov %v4 [L0x414900,L0x414902,L0x414904,L0x414906,L0x414908,L0x41490a,L0x41490c,L0x41490e];

(* CUT 1 1 *)
cut
   Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v18 (%v29o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v28o0@int16[8],%v30o0@int16[8] :
      %v28o0 = %v28 /\ %v30o0 = %v30
   && %v28o0 = %v28 /\ %v30o0 = %v30;
      
(* sub	v29.8h, v25.8h, v18.8h                      #! PC = 0x4119ec *)
sub %v29 %v25 %v18;
(* mul	v16.8h, v28.8h, v3.8h                       #! PC = 0x4119f0 *)
mull %mdc %v16 %v28 %v3; cast %v16@int16[8] %v16;
(* ldr	q5, [x10, #80]                              #! EA = L0x414910; Value = 0xfc0efc0e01210121; PC = 0x4119f4 *)
mov %v5 [L0x414910,L0x414912,L0x414914,L0x414916,L0x414918,L0x41491a,L0x41491c,L0x41491e];
(* sub	v31.8h, v27.8h, v19.8h                      #! PC = 0x4119f8 *)
sub %v31 %v27 %v19;
(* mul	v17.8h, v30.8h, v3.8h                       #! PC = 0x4119fc *)
mull %mdc %v17 %v30 %v3; cast %v17@int16[8] %v17;
(* ldr	q6, [x10, #96]                              #! EA = L0x414920; Value = 0x372d372d0cba0cba; PC = 0x411a00 *)
mov %v6 [L0x414920,L0x414922,L0x414924,L0x414926,L0x414928,L0x41492a,L0x41492c,L0x41492e];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411a04 *)
add %v25 %v25 %v18;
(* sqrdmulh	v28.8h, v28.8h, v2.8h                  #! PC = 0x411a08 *)
smulj %LO %v28 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* ldr	q7, [x10, #112]                             #! EA = L0x414930; Value = 0x059b059b014b014b; PC = 0x411a0c *)
mov %v7 [L0x414930,L0x414932,L0x414934,L0x414936,L0x414938,L0x41493a,L0x41493c,L0x41493e];
(* add	v27.8h, v27.8h, v19.8h                      #! PC = 0x411a10 *)
add %v27 %v27 %v19;
(* sqrdmulh	v30.8h, v30.8h, v2.8h                  #! PC = 0x411a14 *)
smulj %LO %v30 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v28.8h, v0.h[0]                     #! PC = 0x411a18 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411a1c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;

assert eqmod %v16 (%v28o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;

assume eqmod %v16 (%v28o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, precondition] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
       %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
       %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
       %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
       %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 2 2 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly X [L0xffffffffc404,L0xffffffffc406]+X**8*poly X [L0xffffffffc414,L0xffffffffc416])
          [Q, X**8 - 17**4] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly X [L0xffffffffc504,L0xffffffffc506]+X**8*poly X [L0xffffffffc514,L0xffffffffc516])
          [Q, X**8 - 17**12] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly X [L0xffffffffc424,L0xffffffffc426]+X**8*poly X [L0xffffffffc434,L0xffffffffc436])
          [Q, X**8 - 17**68] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly X [L0xffffffffc524,L0xffffffffc526]+X**8*poly X [L0xffffffffc534,L0xffffffffc536])
          [Q, X**8 - 17**76] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly X [L0xffffffffc40c,L0xffffffffc40e]+X**8*poly X [L0xffffffffc41c,L0xffffffffc41e])
          [Q, X**8 - 17**4] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly X [L0xffffffffc50c,L0xffffffffc50e]+X**8*poly X [L0xffffffffc51c,L0xffffffffc51e])
          [Q, X**8 - 17**12] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly X [L0xffffffffc42c,L0xffffffffc42e]+X**8*poly X [L0xffffffffc43c,L0xffffffffc43e])
          [Q, X**8 - 17**68] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly X [L0xffffffffc52c,L0xffffffffc52e]+X**8*poly X [L0xffffffffc53c,L0xffffffffc53e])
          [Q, X**8 - 17**76] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly X [L0xffffffffc404,L0xffffffffc406]+X**8*poly X [L0xffffffffc414,L0xffffffffc416])
          [Q, X**8 - 17**132] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly X [L0xffffffffc504,L0xffffffffc506]+X**8*poly X [L0xffffffffc514,L0xffffffffc516])
          [Q, X**8 - 17**140] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly X [L0xffffffffc424,L0xffffffffc426]+X**8*poly X [L0xffffffffc434,L0xffffffffc436])
          [Q, X**8 - 17**196] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly X [L0xffffffffc524,L0xffffffffc526]+X**8*poly X [L0xffffffffc534,L0xffffffffc536])
          [Q, X**8 - 17**204] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly X [L0xffffffffc40c,L0xffffffffc40e]+X**8*poly X [L0xffffffffc41c,L0xffffffffc41e])
          [Q, X**8 - 17**132] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly X [L0xffffffffc50c,L0xffffffffc50e]+X**8*poly X [L0xffffffffc51c,L0xffffffffc51e])
          [Q, X**8 - 17**140] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly X [L0xffffffffc42c,L0xffffffffc42e]+X**8*poly X [L0xffffffffc43c,L0xffffffffc43e])
          [Q, X**8 - 17**196] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly X [L0xffffffffc52c,L0xffffffffc52e]+X**8*poly X [L0xffffffffc53c,L0xffffffffc53e])
          [Q, X**8 - 17**204] /\
    eqmod %v16 (%v28o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o0 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
    %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
    %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
    %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
    %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]    
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
    %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
    %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
    %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
    %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [precondition];

ghost %v27o1@int16[8],%v31o1@int16[8]:
      %v27o1 = %v27 /\ %v31o1 = %v31
   && %v27o1 = %v27 /\ %v31o1 = %v31;

(* ldr	q8, [x10, #128]                             #! EA = L0x414940; Value = 0x3ce83ce800a700a7; PC = 0x411a20 *)
mov %v8 [L0x414940,L0x414942,L0x414944,L0x414946,L0x414948,L0x41494a,L0x41494c,L0x41494e];
(* sub	v28.8h, v24.8h, v16.8h                      #! PC = 0x411a24 *)
sub %v28 %v24 %v16;
(* mul	v18.8h, v27.8h, v5.8h                       #! PC = 0x411a28 *)
mull %mdc %v18 %v27 %v5; cast %v18@int16[8] %v18;
(* ldr	q9, [x10, #144]                             #! EA = L0x414950; Value = 0x0630063000110011; PC = 0x411a2c *)
mov %v9 [L0x414950,L0x414952,L0x414954,L0x414956,L0x414958,L0x41495a,L0x41495c,L0x41495e];
(* sub	v30.8h, v26.8h, v17.8h                      #! PC = 0x411a30 *)
sub %v30 %v26 %v17;
(* mul	v19.8h, v31.8h, v7.8h                       #! PC = 0x411a34 *)
mull %mdc %v19 %v31 %v7; cast %v19@int16[8] %v19;
(* ldr	q10, [x10, #160]                            #! EA = L0x414960; Value = 0xd85cd85cea29ea29; PC = 0x411a38 *)
mov %v10 [L0x414960,L0x414962,L0x414964,L0x414966,L0x414968,L0x41496a,L0x41496c,L0x41496e];
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411a3c *)
add %v24 %v24 %v16;
(* sqrdmulh	v27.8h, v27.8h, v4.8h                  #! PC = 0x411a40 *)
smulj %LO %v27 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* ldr	q11, [x10, #176]                            #! EA = L0x414970; Value = 0xfbf9fbf9fdc8fdc8; PC = 0x411a44 *)
mov %v11 [L0x414970,L0x414972,L0x414974,L0x414976,L0x414978,L0x41497a,L0x41497c,L0x41497e];
(* add	v26.8h, v26.8h, v17.8h                      #! PC = 0x411a48 *)
add %v26 %v26 %v17;
(* sqrdmulh	v31.8h, v31.8h, v6.8h                  #! PC = 0x411a4c *)
smulj %LO %v31 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v18.8h, v27.8h, v0.h[0]                     #! PC = 0x411a50 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411a54 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v18 (%v27o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o1 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;

assume eqmod %v18 (%v27o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o1 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, precondition] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
       %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
       %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
       %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
       %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 3 3 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly X [L0xffffffffc400,L0xffffffffc402]+X**8*poly X [L0xffffffffc410,L0xffffffffc412])
          [Q, X**8 - 17**4] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly X [L0xffffffffc500,L0xffffffffc502]+X**8*poly X [L0xffffffffc510,L0xffffffffc512])
          [Q, X**8 - 17**12] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly X [L0xffffffffc420,L0xffffffffc422]+X**8*poly X [L0xffffffffc430,L0xffffffffc432])
          [Q, X**8 - 17**68] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly X [L0xffffffffc520,L0xffffffffc522]+X**8*poly X [L0xffffffffc530,L0xffffffffc532])
          [Q, X**8 - 17**76] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly X [L0xffffffffc408,L0xffffffffc40a]+X**8*poly X [L0xffffffffc418,L0xffffffffc41a])
          [Q, X**8 - 17**4] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly X [L0xffffffffc508,L0xffffffffc50a]+X**8*poly X [L0xffffffffc518,L0xffffffffc51a])
          [Q, X**8 - 17**12] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly X [L0xffffffffc428,L0xffffffffc42a]+X**8*poly X [L0xffffffffc438,L0xffffffffc43a])
          [Q, X**8 - 17**68] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly X [L0xffffffffc528,L0xffffffffc52a]+X**8*poly X [L0xffffffffc538,L0xffffffffc53a])
          [Q, X**8 - 17**76] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly X [L0xffffffffc400,L0xffffffffc402]+X**8*poly X [L0xffffffffc410,L0xffffffffc412])
          [Q, X**8 - 17**132] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly X [L0xffffffffc500,L0xffffffffc502]+X**8*poly X [L0xffffffffc510,L0xffffffffc512])
          [Q, X**8 - 17**140] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly X [L0xffffffffc420,L0xffffffffc422]+X**8*poly X [L0xffffffffc430,L0xffffffffc432])
          [Q, X**8 - 17**196] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly X [L0xffffffffc520,L0xffffffffc522]+X**8*poly X [L0xffffffffc530,L0xffffffffc532])
          [Q, X**8 - 17**204] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly X [L0xffffffffc408,L0xffffffffc40a]+X**8*poly X [L0xffffffffc418,L0xffffffffc41a])
          [Q, X**8 - 17**132] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly X [L0xffffffffc508,L0xffffffffc50a]+X**8*poly X [L0xffffffffc518,L0xffffffffc51a])
          [Q, X**8 - 17**140] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly X [L0xffffffffc428,L0xffffffffc42a]+X**8*poly X [L0xffffffffc438,L0xffffffffc43a])
          [Q, X**8 - 17**196] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly X [L0xffffffffc528,L0xffffffffc52a]+X**8*poly X [L0xffffffffc538,L0xffffffffc53a])
          [Q, X**8 - 17**204] /\
    eqmod %v18 (%v27o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o1 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
    %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
    %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
    %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
    %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
    %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
    %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
    %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
    %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [precondition];

ghost %v26o1@int16[8],%v30o1@int16[8]:
      %v26o1 = %v26 /\ %v30o1 = %v30
   && %v26o1 = %v26 /\ %v30o1 = %v30;

(* ldr	q12, [x10, #192]                            #! EA = L0x414980; Value = 0xce53ce53166b166b; PC = 0x411a58 *)
mov %v12 [L0x414980,L0x414982,L0x414984,L0x414986,L0x414988,L0x41498a,L0x41498c,L0x41498e];
(* sub	v27.8h, v25.8h, v18.8h                      #! PC = 0x411a5c *)
sub %v27 %v25 %v18;
(* mul	v16.8h, v26.8h, v5.8h                       #! PC = 0x411a60 *)
mull %mdc %v16 %v26 %v5; cast %v16@int16[8] %v16;
(* ldr	q13, [x10, #208]                            #! EA = L0x414990; Value = 0xfaf4faf402470247; PC = 0x411a64 *)
mov %v13 [L0x414990,L0x414992,L0x414994,L0x414996,L0x414998,L0x41499a,L0x41499c,L0x41499e];
(* sub	v31.8h, v29.8h, v19.8h                      #! PC = 0x411a68 *)
sub %v31 %v29 %v19;
(* mul	v17.8h, v30.8h, v7.8h                       #! PC = 0x411a6c *)
mull %mdc %v17 %v30 %v7; cast %v17@int16[8] %v17;
(* ldr	q14, [x10, #224]                            #! EA = L0x4149a0; Value = 0xfbcffbcfe5dbe5db; PC = 0x411a70 *)
mov %v14 [L0x4149a0,L0x4149a2,L0x4149a4,L0x4149a6,L0x4149a8,L0x4149aa,L0x4149ac,L0x4149ae];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411a74 *)
add %v25 %v25 %v18;
(* sqrdmulh	v26.8h, v26.8h, v4.8h                  #! PC = 0x411a78 *)
smulj %LO %v26 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* ldr	q15, [x10, #240]                            #! EA = L0x4149b0; Value = 0xff93ff93fd58fd58; PC = 0x411a7c *)
mov %v15 [L0x4149b0,L0x4149b2,L0x4149b4,L0x4149b6,L0x4149b8,L0x4149ba,L0x4149bc,L0x4149be];
(* add	v29.8h, v29.8h, v19.8h                      #! PC = 0x411a80 *)
add %v29 %v29 %v19;
(* sqrdmulh	v30.8h, v30.8h, v6.8h                  #! PC = 0x411a84 *)
smulj %LO %v30 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v26.8h, v0.h[0]                     #! PC = 0x411a88 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411a8c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;

assert eqmod %v16 (%v26o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o1 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;

assume eqmod %v16 (%v26o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o1 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [2]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
       %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
       %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
       %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
       %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 4 4 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly (X**4)
           [L0xffffffffc404+L0xffffffffc406*X,L0xffffffffc40c+L0xffffffffc40e*X,
            L0xffffffffc414+L0xffffffffc416*X,L0xffffffffc41c+L0xffffffffc41e*X])
          [Q, X**4 - 17**2] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly (X**4)
           [L0xffffffffc504+L0xffffffffc506*X,L0xffffffffc50c+L0xffffffffc50e*X,
            L0xffffffffc514+L0xffffffffc516*X,L0xffffffffc51c+L0xffffffffc51e*X])
          [Q, X**4 - 17**6] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly (X**4)
           [L0xffffffffc424+L0xffffffffc426*X,L0xffffffffc42c+L0xffffffffc42e*X,
            L0xffffffffc434+L0xffffffffc436*X,L0xffffffffc43c+L0xffffffffc43e*X])
          [Q, X**4 - 17**34] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly (X**4)
           [L0xffffffffc524+L0xffffffffc526*X,L0xffffffffc52c+L0xffffffffc52e*X,
            L0xffffffffc534+L0xffffffffc536*X,L0xffffffffc53c+L0xffffffffc53e*X])
          [Q, X**4 - 17**38] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly (X**4)
           [L0xffffffffc404+L0xffffffffc406*X,L0xffffffffc40c+L0xffffffffc40e*X,
            L0xffffffffc414+L0xffffffffc416*X,L0xffffffffc41c+L0xffffffffc41e*X])
          [Q, X**4 - 17**66] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly (X**4)
           [L0xffffffffc504+L0xffffffffc506*X,L0xffffffffc50c+L0xffffffffc50e*X,
            L0xffffffffc514+L0xffffffffc516*X,L0xffffffffc51c+L0xffffffffc51e*X])
          [Q, X**4 - 17**70] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly (X**4)
           [L0xffffffffc424+L0xffffffffc426*X,L0xffffffffc42c+L0xffffffffc42e*X,
            L0xffffffffc434+L0xffffffffc436*X,L0xffffffffc43c+L0xffffffffc43e*X])
          [Q, X**4 - 17**98] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly (X**4)
           [L0xffffffffc524+L0xffffffffc526*X,L0xffffffffc52c+L0xffffffffc52e*X,
            L0xffffffffc534+L0xffffffffc536*X,L0xffffffffc53c+L0xffffffffc53e*X])
          [Q, X**4 - 17**102] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly (X**4)
           [L0xffffffffc404+L0xffffffffc406*X,L0xffffffffc40c+L0xffffffffc40e*X,
            L0xffffffffc414+L0xffffffffc416*X,L0xffffffffc41c+L0xffffffffc41e*X])
          [Q, X**4 - 17**130] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly (X**4)
           [L0xffffffffc504+L0xffffffffc506*X,L0xffffffffc50c+L0xffffffffc50e*X,
            L0xffffffffc514+L0xffffffffc516*X,L0xffffffffc51c+L0xffffffffc51e*X])
          [Q, X**4 - 17**134] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly (X**4)
           [L0xffffffffc424+L0xffffffffc426*X,L0xffffffffc42c+L0xffffffffc42e*X,
            L0xffffffffc434+L0xffffffffc436*X,L0xffffffffc43c+L0xffffffffc43e*X])
          [Q, X**4 - 17**162] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly (X**4)
           [L0xffffffffc524+L0xffffffffc526*X,L0xffffffffc52c+L0xffffffffc52e*X,
            L0xffffffffc534+L0xffffffffc536*X,L0xffffffffc53c+L0xffffffffc53e*X])
          [Q, X**4 - 17**166] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly (X**4)
           [L0xffffffffc404+L0xffffffffc406*X,L0xffffffffc40c+L0xffffffffc40e*X,
            L0xffffffffc414+L0xffffffffc416*X,L0xffffffffc41c+L0xffffffffc41e*X])
          [Q, X**4 - 17**194] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly (X**4)
           [L0xffffffffc504+L0xffffffffc506*X,L0xffffffffc50c+L0xffffffffc50e*X,
            L0xffffffffc514+L0xffffffffc516*X,L0xffffffffc51c+L0xffffffffc51e*X])
          [Q, X**4 - 17**198] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly (X**4)
           [L0xffffffffc424+L0xffffffffc426*X,L0xffffffffc42c+L0xffffffffc42e*X,
            L0xffffffffc434+L0xffffffffc436*X,L0xffffffffc43c+L0xffffffffc43e*X])
          [Q, X**4 - 17**226] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly (X**4)
           [L0xffffffffc524+L0xffffffffc526*X,L0xffffffffc52c+L0xffffffffc52e*X,
            L0xffffffffc534+L0xffffffffc536*X,L0xffffffffc53c+L0xffffffffc53e*X])
          [Q, X**4 - 17**230] /\
    eqmod %v16 (%v26o1 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o1 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
    %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
    %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
    %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
    %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [2], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
    %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
    %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
    %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
    %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [precondition, cuts [2]];

ghost %v25o2@int16[8],%v27o2@int16[8]:
      %v25o2 = %v25 /\ %v27o2 = %v27
   && %v25o2 = %v25 /\ %v27o2 = %v27;

(* add	x10, x10, #0x100                            #! PC = 0x411a90 *)
adds dc x10 x10 0x100@uint64;
(* sub	v26.8h, v24.8h, v16.8h                      #! PC = 0x411a94 *)
sub %v26 %v24 %v16;
(* mul	v18.8h, v25.8h, v9.8h                       #! PC = 0x411a98 *)
mull %mdc %v18 %v25 %v9; cast %v18@int16[8] %v18;
(* sub	v30.8h, v28.8h, v17.8h                      #! PC = 0x411a9c *)
sub %v30 %v28 %v17;
(* mul	v19.8h, v27.8h, v11.8h                      #! PC = 0x411aa0 *)
mull %mdc %v19 %v27 %v11; cast %v19@int16[8] %v19;
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411aa4 *)
add %v24 %v24 %v16;
(* sqrdmulh	v25.8h, v25.8h, v8.8h                  #! PC = 0x411aa8 *)
smulj %LO %v25 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v28.8h, v28.8h, v17.8h                      #! PC = 0x411aac *)
add %v28 %v28 %v17;
(* sqrdmulh	v27.8h, v27.8h, v10.8h                 #! PC = 0x411ab0 *)
smulj %LO %v27 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mls	v18.8h, v25.8h, v0.h[0]                     #! PC = 0x411ab4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v27.8h, v0.h[0]                     #! PC = 0x411ab8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v18 (%v25o2 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o2 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;

assume eqmod %v18 (%v25o2 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o2 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [3]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
       %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
       %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
       %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
       %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 5 5 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly (X**4)
           [L0xffffffffc400+L0xffffffffc402*X,L0xffffffffc408+L0xffffffffc40a*X,
            L0xffffffffc410+L0xffffffffc412*X,L0xffffffffc418+L0xffffffffc41a*X])
          [Q, X**4 - 17**2] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly (X**4)
           [L0xffffffffc500+L0xffffffffc502*X,L0xffffffffc508+L0xffffffffc50a*X,
            L0xffffffffc510+L0xffffffffc512*X,L0xffffffffc518+L0xffffffffc51a*X])
          [Q, X**4 - 17**6] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly (X**4)
           [L0xffffffffc420+L0xffffffffc422*X,L0xffffffffc428+L0xffffffffc42a*X,
            L0xffffffffc430+L0xffffffffc432*X,L0xffffffffc438+L0xffffffffc43a*X])
          [Q, X**4 - 17**34] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly (X**4)
           [L0xffffffffc520+L0xffffffffc522*X,L0xffffffffc528+L0xffffffffc52a*X,
            L0xffffffffc530+L0xffffffffc532*X,L0xffffffffc538+L0xffffffffc53a*X])
          [Q, X**4 - 17**38] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly (X**4)
           [L0xffffffffc400+L0xffffffffc402*X,L0xffffffffc408+L0xffffffffc40a*X,
            L0xffffffffc410+L0xffffffffc412*X,L0xffffffffc418+L0xffffffffc41a*X])
          [Q, X**4 - 17**66] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly (X**4)
           [L0xffffffffc500+L0xffffffffc502*X,L0xffffffffc508+L0xffffffffc50a*X,
            L0xffffffffc510+L0xffffffffc512*X,L0xffffffffc518+L0xffffffffc51a*X])
          [Q, X**4 - 17**70] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly (X**4)
           [L0xffffffffc420+L0xffffffffc422*X,L0xffffffffc428+L0xffffffffc42a*X,
            L0xffffffffc430+L0xffffffffc432*X,L0xffffffffc438+L0xffffffffc43a*X])
          [Q, X**4 - 17**98] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly (X**4)
           [L0xffffffffc520+L0xffffffffc522*X,L0xffffffffc528+L0xffffffffc52a*X,
            L0xffffffffc530+L0xffffffffc532*X,L0xffffffffc538+L0xffffffffc53a*X])
          [Q, X**4 - 17**102] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly (X**4)
           [L0xffffffffc400+L0xffffffffc402*X,L0xffffffffc408+L0xffffffffc40a*X,
            L0xffffffffc410+L0xffffffffc412*X,L0xffffffffc418+L0xffffffffc41a*X])
          [Q, X**4 - 17**130] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly (X**4)
           [L0xffffffffc500+L0xffffffffc502*X,L0xffffffffc508+L0xffffffffc50a*X,
            L0xffffffffc510+L0xffffffffc512*X,L0xffffffffc518+L0xffffffffc51a*X])
          [Q, X**4 - 17**134] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly (X**4)
           [L0xffffffffc420+L0xffffffffc422*X,L0xffffffffc428+L0xffffffffc42a*X,
            L0xffffffffc430+L0xffffffffc432*X,L0xffffffffc438+L0xffffffffc43a*X])
          [Q, X**4 - 17**162] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly (X**4)
           [L0xffffffffc520+L0xffffffffc522*X,L0xffffffffc528+L0xffffffffc52a*X,
            L0xffffffffc530+L0xffffffffc532*X,L0xffffffffc538+L0xffffffffc53a*X])
          [Q, X**4 - 17**166] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly (X**4)
           [L0xffffffffc400+L0xffffffffc402*X,L0xffffffffc408+L0xffffffffc40a*X,
            L0xffffffffc410+L0xffffffffc412*X,L0xffffffffc418+L0xffffffffc41a*X])
          [Q, X**4 - 17**194] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly (X**4)
           [L0xffffffffc500+L0xffffffffc502*X,L0xffffffffc508+L0xffffffffc50a*X,
            L0xffffffffc510+L0xffffffffc512*X,L0xffffffffc518+L0xffffffffc51a*X])
          [Q, X**4 - 17**198] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly (X**4)
           [L0xffffffffc420+L0xffffffffc422*X,L0xffffffffc428+L0xffffffffc42a*X,
            L0xffffffffc430+L0xffffffffc432*X,L0xffffffffc438+L0xffffffffc43a*X])
          [Q, X**4 - 17**226] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly (X**4)
           [L0xffffffffc520+L0xffffffffc522*X,L0xffffffffc528+L0xffffffffc52a*X,
            L0xffffffffc530+L0xffffffffc532*X,L0xffffffffc538+L0xffffffffc53a*X])
          [Q, X**4 - 17**230] /\
    eqmod %v18 (%v25o2 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v27o2 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
    %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
    %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
    %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
    %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [3], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
    %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
    %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
    %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
    %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [precondition, cuts [3]];

ghost %v29o2@int16[8],%v31o2@int16[8]:
      %v29o2 = %v29 /\ %v31o2 = %v31
   && %v29o2 = %v29 /\ %v31o2 = %v31;

(* sub	v25.8h, v24.8h, v18.8h                      #! PC = 0x411abc *)
sub %v25 %v24 %v18;
(* mul	v16.8h, v29.8h, v13.8h                      #! PC = 0x411ac0 *)
mull %mdc %v16 %v29 %v13; cast %v16@int16[8] %v16;
(* sub	v27.8h, v26.8h, v19.8h                      #! PC = 0x411ac4 *)
sub %v27 %v26 %v19;
(* mul	v17.8h, v31.8h, v15.8h                      #! PC = 0x411ac8 *)
mull %mdc %v17 %v31 %v15; cast %v17@int16[8] %v17;
(* add	v24.8h, v24.8h, v18.8h                      #! PC = 0x411acc *)
add %v24 %v24 %v18;
(* sqrdmulh	v29.8h, v29.8h, v12.8h                 #! PC = 0x411ad0 *)
smulj %LO %v29 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v26.8h, v26.8h, v19.8h                      #! PC = 0x411ad4 *)
add %v26 %v26 %v19;
(* sqrdmulh	v31.8h, v31.8h, v14.8h                 #! PC = 0x411ad8 *)
smulj %LO %v31 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v16.8h, v29.8h, v0.h[0]                     #! PC = 0x411adc *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v31.8h, v0.h[0]                     #! PC = 0x411ae0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;

assert eqmod %v16 (%v29o2 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o2 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;
assume eqmod %v16 (%v29o2 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o2 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o3@int16[8],%v25o3@int16[8],%v26o3@int16[8],%v27o3@int16[8]:
      %v24o3=%v24 /\ %v25o3=%v25 /\ %v26o3=%v26 /\ %v27o3=%v27
   && %v24o3=%v24 /\ %v25o3=%v25 /\ %v26o3=%v26 /\ %v27o3=%v27;

(* sqdmulh	v20.8h, v24.8h, v0.h[1]                 #! PC = 0x411ae4 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* sub	v29.8h, v28.8h, v16.8h                      #! PC = 0x411ae8 *)
sub %v29 %v28 %v16;
(* sqdmulh	v21.8h, v25.8h, v0.h[1]                 #! PC = 0x411aec *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* sub	v31.8h, v30.8h, v17.8h                      #! PC = 0x411af0 *)
sub %v31 %v30 %v17;
(* sqdmulh	v22.8h, v26.8h, v0.h[1]                 #! PC = 0x411af4 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* add	v28.8h, v28.8h, v16.8h                      #! PC = 0x411af8 *)
add %v28 %v28 %v16;
(* sqdmulh	v23.8h, v27.8h, v0.h[1]                 #! PC = 0x411afc *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* add	v30.8h, v30.8h, v17.8h                      #! PC = 0x411b00 *)
add %v30 %v30 %v17;

assert
   [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v24
/\ %v24<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v25
/\ %v25<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v26 
/\ %v26<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v27 
/\ %v27<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v28 
/\ %v28<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v29 
/\ %v29<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v30 
/\ %v30<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v31
/\ %v31<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
   prove with [algebra solver isl, cuts [5]]
&& true;
assume
   [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v24
/\ %v24<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v25
/\ %v25<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v26 
/\ %v26<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v27 
/\ %v27<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v28 
/\ %v28<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v29 
/\ %v29<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v30 
/\ %v30<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
/\ [7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2,7*NQ+NQ2]<%v31
/\ %v31<[7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2,7*Q+Q2]
&& true;

ghost %v28o3@int16[8],%v29o3@int16[8],%v30o3@int16[8],%v31o3@int16[8]:
      %v28o3=%v28 /\ %v29o3=%v29 /\ %v30o3=%v30 /\ %v31o3=%v31
   && %v28o3=%v28 /\ %v29o3=%v29 /\ %v30o3=%v30 /\ %v31o3=%v31;

(* sqdmulh	v16.8h, v28.8h, v0.h[1]                 #! PC = 0x411b04 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x411b08 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* sqdmulh	v17.8h, v29.8h, v0.h[1]                 #! PC = 0x411b0c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x411b10 *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* sqdmulh	v18.8h, v30.8h, v0.h[1]                 #! PC = 0x411b14 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x411b18 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* sqdmulh	v19.8h, v31.8h, v0.h[1]                 #! PC = 0x411b1c *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x411b20 *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v24.8h, v20.8h, v0.h[0]                     #! PC = 0x411b24 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x411b28 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* mls	v25.8h, v21.8h, v0.h[0]                     #! PC = 0x411b2c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x411b30 *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* mls	v26.8h, v22.8h, v0.h[0]                     #! PC = 0x411b34 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x411b38 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* mls	v27.8h, v23.8h, v0.h[0]                     #! PC = 0x411b3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x411b40 *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* mls	v28.8h, v16.8h, v0.h[0]                     #! PC = 0x411b44 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411b48 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* mls	v29.8h, v17.8h, v0.h[0]                     #! PC = 0x411b4c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411b50 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x411b54 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411b58 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411b5c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, precondition, cuts [4]]
    && true;
assume eqmod %v24 %v24o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o3 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v24 /\ %v24<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411b60 *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411b64 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411b68 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411b6c *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411b70 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* str	q24, [x0]                                   #! EA = L0xffffffffc400; PC = 0x411b74 *)
mov [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406,L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e] %v24;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x411b78 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x411b7c *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* str	q25, [x1]                                   #! EA = L0xffffffffc500; PC = 0x411b80 *)
mov [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506,L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e] %v25;
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x411b84 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x411b88 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc420; PC = 0x411b8c *)
mov [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426,L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e] %v26;
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x411b90 *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x411b94 *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc520; PC = 0x411b98 *)
mov [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526,L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e] %v27;
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x411b9c *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x411ba0 *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* mov	x11, #0x3                   	// #3          #! PC = 0x411ba4 *)
mov x11 0x3@uint64;
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc410; PC = 0x411ba8 *)
mov [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416,L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e] %v28;
(* ldr	q28, [x0, #80]                              #! EA = L0xffffffffc450; Value = 0xf9aafbfdff1ffabd; PC = 0x411bac *)
mov %v28 [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc510; PC = 0x411bb0 *)
mov [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516,L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e] %v29;
(* ldr	q29, [x1, #80]                              #! EA = L0xffffffffc550; Value = 0xf85600180167066a; PC = 0x411bb4 *)
mov %v29 [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc430; PC = 0x411bb8 *)
mov [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436,L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e] %v30;
(* ldr	q30, [x0, #112]                             #! EA = L0xffffffffc470; Value = 0x0600fcc503b900a7; PC = 0x411bbc *)
mov %v30 [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc530; PC = 0x411bc0 *)
mov [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536,L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e] %v31;

(* CUT 6 6 *)

ghost F@int16:
      F**2 = F00**2+F08**2+F10**2+F18**2+F20**2+F28**2+F30**2+F38**2+F40**2+F48**2+
             F50**2+F58**2+F60**2+F68**2+F70**2+F78**2+F80**2+F88**2+F90**2+F98**2+
             Fa0**2+Fa8**2+Fb0**2+Fb8**2+Fc0**2+Fc8**2+Fd0**2+Fd8**2+Fe0**2+Fe8**2+
             Ff0**2+Ff8**2 && true;
cut eqmod (poly X [L0xffffffffc400,L0xffffffffc402]) (F**2) [Q, X**2 - 17**  1] /\
    eqmod (poly X [L0xffffffffc404,L0xffffffffc406]) (F**2) [Q, X**2 - 17**129] /\
    eqmod (poly X [L0xffffffffc408,L0xffffffffc40a]) (F**2) [Q, X**2 - 17** 65] /\
    eqmod (poly X [L0xffffffffc40c,L0xffffffffc40e]) (F**2) [Q, X**2 - 17**193] /\
    eqmod (poly X [L0xffffffffc410,L0xffffffffc412]) (F**2) [Q, X**2 - 17** 33] /\
    eqmod (poly X [L0xffffffffc414,L0xffffffffc416]) (F**2) [Q, X**2 - 17**161] /\
    eqmod (poly X [L0xffffffffc418,L0xffffffffc41a]) (F**2) [Q, X**2 - 17** 97] /\
    eqmod (poly X [L0xffffffffc41c,L0xffffffffc41e]) (F**2) [Q, X**2 - 17**225] /\
    eqmod (poly X [L0xffffffffc420,L0xffffffffc422]) (F**2) [Q, X**2 - 17** 17] /\
    eqmod (poly X [L0xffffffffc424,L0xffffffffc426]) (F**2) [Q, X**2 - 17**145] /\
    eqmod (poly X [L0xffffffffc428,L0xffffffffc42a]) (F**2) [Q, X**2 - 17** 81] /\
    eqmod (poly X [L0xffffffffc42c,L0xffffffffc42e]) (F**2) [Q, X**2 - 17**209] /\
    eqmod (poly X [L0xffffffffc430,L0xffffffffc432]) (F**2) [Q, X**2 - 17** 49] /\
    eqmod (poly X [L0xffffffffc434,L0xffffffffc436]) (F**2) [Q, X**2 - 17**177] /\
    eqmod (poly X [L0xffffffffc438,L0xffffffffc43a]) (F**2) [Q, X**2 - 17**113] /\
    eqmod (poly X [L0xffffffffc43c,L0xffffffffc43e]) (F**2) [Q, X**2 - 17**241] /\

    eqmod (poly X [L0xffffffffc500,L0xffffffffc502]) (F**2) [Q, X**2 - 17**  3] /\
    eqmod (poly X [L0xffffffffc504,L0xffffffffc506]) (F**2) [Q, X**2 - 17**131] /\
    eqmod (poly X [L0xffffffffc508,L0xffffffffc50a]) (F**2) [Q, X**2 - 17** 67] /\
    eqmod (poly X [L0xffffffffc50c,L0xffffffffc50e]) (F**2) [Q, X**2 - 17**195] /\
    eqmod (poly X [L0xffffffffc510,L0xffffffffc512]) (F**2) [Q, X**2 - 17** 35] /\
    eqmod (poly X [L0xffffffffc514,L0xffffffffc516]) (F**2) [Q, X**2 - 17**163] /\
    eqmod (poly X [L0xffffffffc518,L0xffffffffc51a]) (F**2) [Q, X**2 - 17** 99] /\
    eqmod (poly X [L0xffffffffc51c,L0xffffffffc51e]) (F**2) [Q, X**2 - 17**227] /\
    eqmod (poly X [L0xffffffffc520,L0xffffffffc522]) (F**2) [Q, X**2 - 17** 19] /\
    eqmod (poly X [L0xffffffffc524,L0xffffffffc526]) (F**2) [Q, X**2 - 17**147] /\
    eqmod (poly X [L0xffffffffc528,L0xffffffffc52a]) (F**2) [Q, X**2 - 17** 83] /\
    eqmod (poly X [L0xffffffffc52c,L0xffffffffc52e]) (F**2) [Q, X**2 - 17**211] /\
    eqmod (poly X [L0xffffffffc530,L0xffffffffc532]) (F**2) [Q, X**2 - 17** 51] /\
    eqmod (poly X [L0xffffffffc534,L0xffffffffc536]) (F**2) [Q, X**2 - 17**179] /\
    eqmod (poly X [L0xffffffffc538,L0xffffffffc53a]) (F**2) [Q, X**2 - 17**115] /\
    eqmod (poly X [L0xffffffffc53c,L0xffffffffc53e]) (F**2) [Q, X**2 - 17**243] /\
    [NQ,NQ,NQ,NQ]<[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
 /\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
 /\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
 /\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
 /\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
 /\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
 /\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
 /\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
 /\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
 /\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
 /\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
 /\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
 /\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
 /\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
 /\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
 /\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
 /\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<[Q,Q,Q,Q]
    prove with [precondition, cuts [4], all ghosts]
 && true
    prove with [precondition, cuts [4]];

(* CUT 7 7 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    F00**2 = A00*X**  0 + A01*X**  1 + A02*X**  2 + A03*X**  3 + A04*X**  4 +
             A05*X**  5 + A06*X**  6 + A07*X**  7 /\
    F08**2 = A08*X**  8 + A09*X**  9 + A0a*X** 10 + A0b*X** 11 + A0c*X** 12 +
             A0d*X** 13 + A0e*X** 14 + A0f*X** 15 /\
    F10**2 = A10*X** 16 + A11*X** 17 + A12*X** 18 + A13*X** 19 + A14*X** 20 +
             A15*X** 21 + A16*X** 22 + A17*X** 23 /\
    F18**2 = A18*X** 24 + A19*X** 25 + A1a*X** 26 + A1b*X** 27 + A1c*X** 28 +
             A1d*X** 29 + A1e*X** 30 + A1f*X** 31 /\
    F20**2 = A20*X** 32 + A21*X** 33 + A22*X** 34 + A23*X** 35 + A24*X** 36 +
             A25*X** 37 + A26*X** 38 + A27*X** 39 /\
    F28**2 = A28*X** 40 + A29*X** 41 + A2a*X** 42 + A2b*X** 43 + A2c*X** 44 +
             A2d*X** 45 + A2e*X** 46 + A2f*X** 47 /\
    F30**2 = A30*X** 48 + A31*X** 49 + A32*X** 50 + A33*X** 51 + A34*X** 52 +
             A35*X** 53 + A36*X** 54 + A37*X** 55 /\
    F38**2 = A38*X** 56 + A39*X** 57 + A3a*X** 58 + A3b*X** 59 + A3c*X** 60 +
             A3d*X** 61 + A3e*X** 62 + A3f*X** 63 /\
    F40**2 = A40*X** 64 + A41*X** 65 + A42*X** 66 + A43*X** 67 + A44*X** 68 +
             A45*X** 69 + A46*X** 70 + A47*X** 71 /\
    F48**2 = A48*X** 72 + A49*X** 73 + A4a*X** 74 + A4b*X** 75 + A4c*X** 76 +
             A4d*X** 77 + A4e*X** 78 + A4f*X** 79 /\
    F50**2 = A50*X** 80 + A51*X** 81 + A52*X** 82 + A53*X** 83 + A54*X** 84 +
             A55*X** 85 + A56*X** 86 + A57*X** 87 /\
    F58**2 = A58*X** 88 + A59*X** 89 + A5a*X** 90 + A5b*X** 91 + A5c*X** 92 +
             A5d*X** 93 + A5e*X** 94 + A5f*X** 95 /\
    F60**2 = A60*X** 96 + A61*X** 97 + A62*X** 98 + A63*X** 99 + A64*X**100 +
             A65*X**101 + A66*X**102 + A67*X**103 /\
    F68**2 = A68*X**104 + A69*X**105 + A6a*X**106 + A6b*X**107 + A6c*X**108 +
             A6d*X**109 + A6e*X**110 + A6f*X**111 /\
    F70**2 = A70*X**112 + A71*X**113 + A72*X**114 + A73*X**115 + A74*X**116 +
             A75*X**117 + A76*X**118 + A77*X**119 /\
    F78**2 = A78*X**120 + A79*X**121 + A7a*X**122 + A7b*X**123 + A7c*X**124 +
             A7d*X**125 + A7e*X**126 + A7f*X**127 /\
    F80**2 = A80*X**128 + A81*X**129 + A82*X**130 + A83*X**131 + A84*X**132 +
             A85*X**133 + A86*X**134 + A87*X**135 /\
    F88**2 = A88*X**136 + A89*X**137 + A8a*X**138 + A8b*X**139 + A8c*X**140 +
             A8d*X**141 + A8e*X**142 + A8f*X**143 /\
    F90**2 = A90*X**144 + A91*X**145 + A92*X**146 + A93*X**147 + A94*X**148 +
             A95*X**149 + A96*X**150 + A97*X**151 /\
    F98**2 = A98*X**152 + A99*X**153 + A9a*X**154 + A9b*X**155 + A9c*X**156 +
             A9d*X**157 + A9e*X**158 + A9f*X**159 /\
    Fa0**2 = Aa0*X**160 + Aa1*X**161 + Aa2*X**162 + Aa3*X**163 + Aa4*X**164 +
             Aa5*X**165 + Aa6*X**166 + Aa7*X**167 /\
    Fa8**2 = Aa8*X**168 + Aa9*X**169 + Aaa*X**170 + Aab*X**171 + Aac*X**172 +
             Aad*X**173 + Aae*X**174 + Aaf*X**175 /\
    Fb0**2 = Ab0*X**176 + Ab1*X**177 + Ab2*X**178 + Ab3*X**179 + Ab4*X**180 +
             Ab5*X**181 + Ab6*X**182 + Ab7*X**183 /\
    Fb8**2 = Ab8*X**184 + Ab9*X**185 + Aba*X**186 + Abb*X**187 + Abc*X**188 +
             Abd*X**189 + Abe*X**190 + Abf*X**191 /\
    Fc0**2 = Ac0*X**192 + Ac1*X**193 + Ac2*X**194 + Ac3*X**195 + Ac4*X**196 +
             Ac5*X**197 + Ac6*X**198 + Ac7*X**199 /\
    Fc8**2 = Ac8*X**200 + Ac9*X**201 + Aca*X**202 + Acb*X**203 + Acc*X**204 +
             Acd*X**205 + Ace*X**206 + Acf*X**207 /\
    Fd0**2 = Ad0*X**208 + Ad1*X**209 + Ad2*X**210 + Ad3*X**211 + Ad4*X**212 +
             Ad5*X**213 + Ad6*X**214 + Ad7*X**215 /\
    Fd8**2 = Ad8*X**216 + Ad9*X**217 + Ada*X**218 + Adb*X**219 + Adc*X**220 +
             Add*X**221 + Ade*X**222 + Adf*X**223 /\
    Fe0**2 = Ae0*X**224 + Ae1*X**225 + Ae2*X**226 + Ae3*X**227 + Ae4*X**228 +
             Ae5*X**229 + Ae6*X**230 + Ae7*X**231 /\
    Fe8**2 = Ae8*X**232 + Ae9*X**233 + Aea*X**234 + Aeb*X**235 + Aec*X**236 +
             Aed*X**237 + Aee*X**238 + Aef*X**239 /\
    Ff0**2 = Af0*X**240 + Af1*X**241 + Af2*X**242 + Af3*X**243 + Af4*X**244 +
             Af5*X**245 + Af6*X**246 + Af7*X**247 /\
    Ff8**2 = Af8*X**248 + Af9*X**249 + Afa*X**250 + Afb*X**251 + Afc*X**252 +
             Afd*X**253 + Afe*X**254 + Aff*X**255 /\
    eqmod (poly X [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,
                   L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**72] /\
    eqmod (poly X [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,
                   L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**200] /\
    eqmod (X**8*
           poly X [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,
                   L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**72] /\
    eqmod (X**8*
           poly X [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,
                   L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**200] /\
    eqmod (poly X [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,
                   L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**88] /\
    eqmod (poly X [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,
                   L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**216] /\
    eqmod (X**8*
           poly X [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,
                   L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**88] /\
    eqmod (X**8*
           poly X [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,
                   L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**216] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc440, L0xffffffffc442] /\
    [L0xffffffffc440, L0xffffffffc442] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc444, L0xffffffffc446] /\
    [L0xffffffffc444, L0xffffffffc446] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc448, L0xffffffffc44a] /\
    [L0xffffffffc448, L0xffffffffc44a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc44c, L0xffffffffc44e] /\
    [L0xffffffffc44c, L0xffffffffc44e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc460, L0xffffffffc462] /\
    [L0xffffffffc460, L0xffffffffc462] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc464, L0xffffffffc466] /\
    [L0xffffffffc464, L0xffffffffc466] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc468, L0xffffffffc46a] /\
    [L0xffffffffc468, L0xffffffffc46a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc46c, L0xffffffffc46e] /\
    [L0xffffffffc46c, L0xffffffffc46e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc450, L0xffffffffc452] /\
    [L0xffffffffc450, L0xffffffffc452] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc454, L0xffffffffc456] /\
    [L0xffffffffc454, L0xffffffffc456] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc458, L0xffffffffc45a] /\
    [L0xffffffffc458, L0xffffffffc45a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc45c, L0xffffffffc45e] /\
    [L0xffffffffc45c, L0xffffffffc45e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc470, L0xffffffffc472] /\
    [L0xffffffffc470, L0xffffffffc472] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc474, L0xffffffffc476] /\
    [L0xffffffffc474, L0xffffffffc476] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc478, L0xffffffffc47a] /\
    [L0xffffffffc478, L0xffffffffc47a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc47c, L0xffffffffc47e] /\
    [L0xffffffffc47c, L0xffffffffc47e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc540, L0xffffffffc542] /\
    [L0xffffffffc540, L0xffffffffc542] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc544, L0xffffffffc546] /\
    [L0xffffffffc544, L0xffffffffc546] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc548, L0xffffffffc54a] /\
    [L0xffffffffc548, L0xffffffffc54a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc54c, L0xffffffffc54e] /\
    [L0xffffffffc54c, L0xffffffffc54e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc560, L0xffffffffc562] /\
    [L0xffffffffc560, L0xffffffffc562] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc564, L0xffffffffc566] /\
    [L0xffffffffc564, L0xffffffffc566] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc568, L0xffffffffc56a] /\
    [L0xffffffffc568, L0xffffffffc56a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc56c, L0xffffffffc56e] /\
    [L0xffffffffc56c, L0xffffffffc56e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc550, L0xffffffffc552] /\
    [L0xffffffffc550, L0xffffffffc552] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc554, L0xffffffffc556] /\
    [L0xffffffffc554, L0xffffffffc556] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc558, L0xffffffffc55a] /\
    [L0xffffffffc558, L0xffffffffc55a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc55c, L0xffffffffc55e] /\
    [L0xffffffffc55c, L0xffffffffc55e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc570, L0xffffffffc572] /\
    [L0xffffffffc570, L0xffffffffc572] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc574, L0xffffffffc576] /\
    [L0xffffffffc574, L0xffffffffc576] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc578, L0xffffffffc57a] /\
    [L0xffffffffc578, L0xffffffffc57a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc57c, L0xffffffffc57e] /\
    [L0xffffffffc57c, L0xffffffffc57e] < [4*Q+Q2, 4*Q+Q2]
    prove with [precondition]
 &&
    Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc440, L0xffffffffc442] /\
    [L0xffffffffc440, L0xffffffffc442] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc444, L0xffffffffc446] /\
    [L0xffffffffc444, L0xffffffffc446] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc448, L0xffffffffc44a] /\
    [L0xffffffffc448, L0xffffffffc44a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc44c, L0xffffffffc44e] /\
    [L0xffffffffc44c, L0xffffffffc44e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc460, L0xffffffffc462] /\
    [L0xffffffffc460, L0xffffffffc462] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc464, L0xffffffffc466] /\
    [L0xffffffffc464, L0xffffffffc466] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc468, L0xffffffffc46a] /\
    [L0xffffffffc468, L0xffffffffc46a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc46c, L0xffffffffc46e] /\
    [L0xffffffffc46c, L0xffffffffc46e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc450, L0xffffffffc452] /\
    [L0xffffffffc450, L0xffffffffc452] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc454, L0xffffffffc456] /\
    [L0xffffffffc454, L0xffffffffc456] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc458, L0xffffffffc45a] /\
    [L0xffffffffc458, L0xffffffffc45a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc45c, L0xffffffffc45e] /\
    [L0xffffffffc45c, L0xffffffffc45e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc470, L0xffffffffc472] /\
    [L0xffffffffc470, L0xffffffffc472] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc474, L0xffffffffc476] /\
    [L0xffffffffc474, L0xffffffffc476] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc478, L0xffffffffc47a] /\
    [L0xffffffffc478, L0xffffffffc47a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc47c, L0xffffffffc47e] /\
    [L0xffffffffc47c, L0xffffffffc47e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc540, L0xffffffffc542] /\
    [L0xffffffffc540, L0xffffffffc542] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc544, L0xffffffffc546] /\
    [L0xffffffffc544, L0xffffffffc546] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc548, L0xffffffffc54a] /\
    [L0xffffffffc548, L0xffffffffc54a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc54c, L0xffffffffc54e] /\
    [L0xffffffffc54c, L0xffffffffc54e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc560, L0xffffffffc562] /\
    [L0xffffffffc560, L0xffffffffc562] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc564, L0xffffffffc566] /\
    [L0xffffffffc564, L0xffffffffc566] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc568, L0xffffffffc56a] /\
    [L0xffffffffc568, L0xffffffffc56a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc56c, L0xffffffffc56e] /\
    [L0xffffffffc56c, L0xffffffffc56e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc550, L0xffffffffc552] /\
    [L0xffffffffc550, L0xffffffffc552] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc554, L0xffffffffc556] /\
    [L0xffffffffc554, L0xffffffffc556] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc558, L0xffffffffc55a] /\
    [L0xffffffffc558, L0xffffffffc55a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc55c, L0xffffffffc55e] /\
    [L0xffffffffc55c, L0xffffffffc55e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc570, L0xffffffffc572] /\
    [L0xffffffffc570, L0xffffffffc572] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc574, L0xffffffffc576] /\
    [L0xffffffffc574, L0xffffffffc576] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc578, L0xffffffffc57a] /\
    [L0xffffffffc578, L0xffffffffc57a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc57c, L0xffffffffc57e] /\
    [L0xffffffffc57c, L0xffffffffc57e] <s [4@16*Q+Q2, 4@16*Q+Q2]
    prove with [precondition];

(* ldr	q31, [x1, #112]                             #! EA = L0xffffffffc570; Value = 0xf244f9e6fc1f0610; PC = 0x411bc4 *)
mov %v31 [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e];
(* add	x0, x0, #0x40                               #! PC = 0x411bc8 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x411bcc *)
adds dc x1 x1 0x40@uint64;
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x411bd0 *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x411bd4 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q1, [x10, #16]                              #! EA = L0x4149d0; Value = 0x0000000000000000; PC = 0x411bd8 *)
mov %v1 [L0x4149d0,L0x4149d2,L0x4149d4,L0x4149d6,L0x4149d8,L0x4149da,L0x4149dc,L0x4149de];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x411bdc *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x411be0 *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q2, [x10, #32]                              #! EA = L0x4149e0; Value = 0x14921492337c337c; PC = 0x411be4 *)
mov %v2 [L0x4149e0,L0x4149e2,L0x4149e4,L0x4149e6,L0x4149e8,L0x4149ea,L0x4149ec,L0x4149ee];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x411be8 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x411bec *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q3, [x10, #48]                              #! EA = L0x4149f0; Value = 0x02170217053b053b; PC = 0x411bf0 *)
mov %v3 [L0x4149f0,L0x4149f2,L0x4149f4,L0x4149f6,L0x4149f8,L0x4149fa,L0x4149fc,L0x4149fe];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x411bf4 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x411bf8 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc440; Value = 0x0e57044d0a83f3ac; PC = 0x411bfc *)
mov %v24 [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e];

ghost %v29o4@int16[8],%v31o4@int16[8] :
      %v29o4 = %v29 /\ %v31o4 = %v31
   && %v29o4 = %v29 /\ %v31o4 = %v31;

(* mul	v18.8h, v29.8h, v3.8h                       #! PC = 0x411c00 *)
mull %mdc %v18 %v29 %v3; cast %v18@int16[8] %v18;
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc540; Value = 0xf44e0648fb43110a; PC = 0x411c04 *)
mov %v25 [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e];
(* mul	v19.8h, v31.8h, v3.8h                       #! PC = 0x411c08 *)
mull %mdc %v19 %v31 %v3; cast %v19@int16[8] %v19;
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc460; Value = 0x13cb03e3047df4f4; PC = 0x411c0c *)
mov %v26 [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411c10 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411c14 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc560; Value = 0x00b8fa28fec306ae; PC = 0x411c18 *)
mov %v27 [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411c1c *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411c20 *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* sqrdmulh	v29.8h, v29.8h, v2.8h                  #! PC = 0x411c24 *)
smulj %LO %v29 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411c28 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* sqrdmulh	v31.8h, v31.8h, v2.8h                  #! PC = 0x411c2c *)
smulj %LO %v31 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411c30 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* mls	v18.8h, v29.8h, v0.h[0]                     #! PC = 0x411c34 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411c38 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411c3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v18 (%v29o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [7], algebra solver isl] && true;

assume eqmod %v18 (%v29o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 8 8 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v18 (%v29o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [precondition]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v28o4@int16[8],%v30o4@int16[8] :
      %v28o4 = %v28 /\ %v30o4 = %v30
   && %v28o4 = %v28 /\ %v30o4 = %v30;

(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411c40 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q4, [x10, #64]                              #! EA = L0x414a00; Value = 0x374b374b2e062e06; PC = 0x411c44 *)
mov %v4 [L0x414a00,L0x414a02,L0x414a04,L0x414a06,L0x414a08,L0x414a0a,L0x414a0c,L0x414a0e];
(* sub	v29.8h, v25.8h, v18.8h                      #! PC = 0x411c48 *)
sub %v29 %v25 %v18;
(* mul	v16.8h, v28.8h, v3.8h                       #! PC = 0x411c4c *)
mull %mdc %v16 %v28 %v3; cast %v16@int16[8] %v16;
(* ldr	q5, [x10, #80]                              #! EA = L0x414a10; Value = 0x059e059e04ad04ad; PC = 0x411c50 *)
mov %v5 [L0x414a10,L0x414a12,L0x414a14,L0x414a16,L0x414a18,L0x414a1a,L0x414a1c,L0x414a1e];
(* sub	v31.8h, v27.8h, v19.8h                      #! PC = 0x411c54 *)
sub %v31 %v27 %v19;
(* mul	v17.8h, v30.8h, v3.8h                       #! PC = 0x411c58 *)
mull %mdc %v17 %v30 %v3; cast %v17@int16[8] %v17;
(* ldr	q6, [x10, #96]                              #! EA = L0x414a20; Value = 0xee46ee46d897d897; PC = 0x411c5c *)
mov %v6 [L0x414a20,L0x414a22,L0x414a24,L0x414a26,L0x414a28,L0x414a2a,L0x414a2c,L0x414a2e];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411c60 *)
add %v25 %v25 %v18;
(* sqrdmulh	v28.8h, v28.8h, v2.8h                  #! PC = 0x411c64 *)
smulj %LO %v28 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* ldr	q7, [x10, #112]                             #! EA = L0x414a30; Value = 0xfe33fe33fbfffbff; PC = 0x411c68 *)
mov %v7 [L0x414a30,L0x414a32,L0x414a34,L0x414a36,L0x414a38,L0x414a3a,L0x414a3c,L0x414a3e];
(* add	v27.8h, v27.8h, v19.8h                      #! PC = 0x411c6c *)
add %v27 %v27 %v19;
(* sqrdmulh	v30.8h, v30.8h, v2.8h                  #! PC = 0x411c70 *)
smulj %LO %v30 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v28.8h, v0.h[0]                     #! PC = 0x411c74 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411c78 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;

assert eqmod %v16 (%v28o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [precondition, algebra solver isl] && true;

assume eqmod %v16 (%v28o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [7]] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
       %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
       %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
       %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
       %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 9 9 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly X [L0xffffffffc444,L0xffffffffc446]+X**8*poly X [L0xffffffffc454,L0xffffffffc456])
          [Q, X**8 - 17**36] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly X [L0xffffffffc544,L0xffffffffc546]+X**8*poly X [L0xffffffffc554,L0xffffffffc556])
          [Q, X**8 - 17**44] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly X [L0xffffffffc464,L0xffffffffc466]+X**8*poly X [L0xffffffffc474,L0xffffffffc476])
          [Q, X**8 - 17**100] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly X [L0xffffffffc564,L0xffffffffc566]+X**8*poly X [L0xffffffffc574,L0xffffffffc576])
          [Q, X**8 - 17**108] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly X [L0xffffffffc44c,L0xffffffffc44e]+X**8*poly X [L0xffffffffc45c,L0xffffffffc45e])
          [Q, X**8 - 17**36] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly X [L0xffffffffc54c,L0xffffffffc54e]+X**8*poly X [L0xffffffffc55c,L0xffffffffc55e])
          [Q, X**8 - 17**44] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly X [L0xffffffffc46c,L0xffffffffc46e]+X**8*poly X [L0xffffffffc47c,L0xffffffffc47e])
          [Q, X**8 - 17**100] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly X [L0xffffffffc56c,L0xffffffffc56e]+X**8*poly X [L0xffffffffc57c,L0xffffffffc57e])
          [Q, X**8 - 17**108] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly X [L0xffffffffc444,L0xffffffffc446]+X**8*poly X [L0xffffffffc454,L0xffffffffc456])
          [Q, X**8 - 17**164] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly X [L0xffffffffc544,L0xffffffffc546]+X**8*poly X [L0xffffffffc554,L0xffffffffc556])
          [Q, X**8 - 17**172] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly X [L0xffffffffc464,L0xffffffffc466]+X**8*poly X [L0xffffffffc474,L0xffffffffc476])
          [Q, X**8 - 17**228] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly X [L0xffffffffc564,L0xffffffffc566]+X**8*poly X [L0xffffffffc574,L0xffffffffc576])
          [Q, X**8 - 17**236] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly X [L0xffffffffc44c,L0xffffffffc44e]+X**8*poly X [L0xffffffffc45c,L0xffffffffc45e])
          [Q, X**8 - 17**164] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly X [L0xffffffffc54c,L0xffffffffc54e]+X**8*poly X [L0xffffffffc55c,L0xffffffffc55e])
          [Q, X**8 - 17**172] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly X [L0xffffffffc46c,L0xffffffffc46e]+X**8*poly X [L0xffffffffc47c,L0xffffffffc47e])
          [Q, X**8 - 17**228] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly X [L0xffffffffc56c,L0xffffffffc56e]+X**8*poly X [L0xffffffffc57c,L0xffffffffc57e])
          [Q, X**8 - 17**236] /\
    eqmod %v16 (%v28o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o4 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
    %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
    %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
    %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
    %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]    
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
    %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
    %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
    %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
    %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [cuts [7]];

ghost %v27o5@int16[8],%v31o5@int16[8]:
      %v27o5 = %v27 /\ %v31o5 = %v31
   && %v27o5 = %v27 /\ %v31o5 = %v31;


(* ldr	q8, [x10, #128]                             #! EA = L0x414a40; Value = 0x28df28df362d362d; PC = 0x411c7c *)
mov %v8 [L0x414a40,L0x414a42,L0x414a44,L0x414a46,L0x414a48,L0x414a4a,L0x414a4c,L0x414a4e];
(* sub	v28.8h, v24.8h, v16.8h                      #! PC = 0x411c80 *)
sub %v28 %v24 %v16;
(* mul	v18.8h, v27.8h, v5.8h                       #! PC = 0x411c84 *)
mull %mdc %v18 %v27 %v5; cast %v18@int16[8] %v18;
(* ldr	q9, [x10, #144]                             #! EA = L0x414a50; Value = 0x0427042705810581; PC = 0x411c88 *)
mov %v9 [L0x414a50,L0x414a52,L0x414a54,L0x414a56,L0x414a58,L0x414a5a,L0x414a5c,L0x414a5e];
(* sub	v30.8h, v26.8h, v17.8h                      #! PC = 0x411c8c *)
sub %v30 %v26 %v17;
(* mul	v19.8h, v31.8h, v7.8h                       #! PC = 0x411c90 *)
mull %mdc %v19 %v31 %v7; cast %v19@int16[8] %v19;
(* ldr	q10, [x10, #160]                            #! EA = L0x414a60; Value = 0x0c440c44e65be65b; PC = 0x411c94 *)
mov %v10 [L0x414a60,L0x414a62,L0x414a64,L0x414a66,L0x414a68,L0x414a6a,L0x414a6c,L0x414a6e];
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411c98 *)
add %v24 %v24 %v16;
(* sqrdmulh	v27.8h, v27.8h, v4.8h                  #! PC = 0x411c9c *)
smulj %LO %v27 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* ldr	q11, [x10, #176]                            #! EA = L0x414a70; Value = 0x013f013ffd65fd65; PC = 0x411ca0 *)
mov %v11 [L0x414a70,L0x414a72,L0x414a74,L0x414a76,L0x414a78,L0x414a7a,L0x414a7c,L0x414a7e];
(* add	v26.8h, v26.8h, v17.8h                      #! PC = 0x411ca4 *)
add %v26 %v26 %v17;
(* sqrdmulh	v31.8h, v31.8h, v6.8h                  #! PC = 0x411ca8 *)
smulj %LO %v31 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v18.8h, v27.8h, v0.h[0]                     #! PC = 0x411cac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411cb0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;

assert eqmod %v18 (%v27o5 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o5 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [7], algebra solver isl] && true;

assume eqmod %v18 (%v27o5 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o5 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [7]] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
       %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
       %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
       %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
       %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 10 10 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly X [L0xffffffffc440,L0xffffffffc442]+X**8*poly X [L0xffffffffc450,L0xffffffffc452])
          [Q, X**8 - 17**36] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly X [L0xffffffffc540,L0xffffffffc542]+X**8*poly X [L0xffffffffc550,L0xffffffffc552])
          [Q, X**8 - 17**44] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly X [L0xffffffffc460,L0xffffffffc462]+X**8*poly X [L0xffffffffc470,L0xffffffffc472])
          [Q, X**8 - 17**100] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly X [L0xffffffffc560,L0xffffffffc562]+X**8*poly X [L0xffffffffc570,L0xffffffffc572])
          [Q, X**8 - 17**108] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly X [L0xffffffffc448,L0xffffffffc44a]+X**8*poly X [L0xffffffffc458,L0xffffffffc45a])
          [Q, X**8 - 17**36] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly X [L0xffffffffc548,L0xffffffffc54a]+X**8*poly X [L0xffffffffc558,L0xffffffffc55a])
          [Q, X**8 - 17**44] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly X [L0xffffffffc468,L0xffffffffc46a]+X**8*poly X [L0xffffffffc478,L0xffffffffc47a])
          [Q, X**8 - 17**100] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly X [L0xffffffffc568,L0xffffffffc56a]+X**8*poly X [L0xffffffffc578,L0xffffffffc57a])
          [Q, X**8 - 17**108] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly X [L0xffffffffc440,L0xffffffffc442]+X**8*poly X [L0xffffffffc450,L0xffffffffc452])
          [Q, X**8 - 17**164] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly X [L0xffffffffc540,L0xffffffffc542]+X**8*poly X [L0xffffffffc550,L0xffffffffc552])
          [Q, X**8 - 17**172] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly X [L0xffffffffc460,L0xffffffffc462]+X**8*poly X [L0xffffffffc470,L0xffffffffc472])
          [Q, X**8 - 17**228] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly X [L0xffffffffc560,L0xffffffffc562]+X**8*poly X [L0xffffffffc570,L0xffffffffc572])
          [Q, X**8 - 17**236] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly X [L0xffffffffc448,L0xffffffffc44a]+X**8*poly X [L0xffffffffc458,L0xffffffffc45a])
          [Q, X**8 - 17**164] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly X [L0xffffffffc548,L0xffffffffc54a]+X**8*poly X [L0xffffffffc558,L0xffffffffc55a])
          [Q, X**8 - 17**172] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly X [L0xffffffffc468,L0xffffffffc46a]+X**8*poly X [L0xffffffffc478,L0xffffffffc47a])
          [Q, X**8 - 17**228] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly X [L0xffffffffc568,L0xffffffffc56a]+X**8*poly X [L0xffffffffc578,L0xffffffffc57a])
          [Q, X**8 - 17**236] /\
    eqmod %v18 (%v27o5 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o5 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
    %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
    %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
    %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
    %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
    %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
    %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
    %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
    %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [cuts [7]];

ghost %v26o5@int16[8],%v30o5@int16[8]:
      %v26o5 = %v26 /\ %v30o5 = %v30
   && %v26o5 = %v26 /\ %v30o5 = %v30;



(* ldr	q12, [x10, #192]                            #! EA = L0x414a80; Value = 0xea9fea9ffe28fe28; PC = 0x411cb4 *)
mov %v12 [L0x414a80,L0x414a82,L0x414a84,L0x414a86,L0x414a88,L0x414a8a,L0x414a8c,L0x414a8e];
(* sub	v27.8h, v25.8h, v18.8h                      #! PC = 0x411cb8 *)
sub %v27 %v25 %v18;
(* mul	v16.8h, v26.8h, v5.8h                       #! PC = 0x411cbc *)
mull %mdc %v16 %v26 %v5; cast %v16@int16[8] %v16;
(* ldr	q13, [x10, #208]                            #! EA = L0x414a90; Value = 0xfdd4fdd4ffd0ffd0; PC = 0x411cc0 *)
mov %v13 [L0x414a90,L0x414a92,L0x414a94,L0x414a96,L0x414a98,L0x414a9a,L0x414a9c,L0x414a9e];
(* sub	v31.8h, v29.8h, v19.8h                      #! PC = 0x411cc4 *)
sub %v31 %v29 %v19;
(* mul	v17.8h, v30.8h, v7.8h                       #! PC = 0x411cc8 *)
mull %mdc %v17 %v30 %v7; cast %v17@int16[8] %v17;
(* ldr	q14, [x10, #224]                            #! EA = L0x414aa0; Value = 0x1d1b1d1b08f508f5; PC = 0x411ccc *)
mov %v14 [L0x414aa0,L0x414aa2,L0x414aa4,L0x414aa6,L0x414aa8,L0x414aaa,L0x414aac,L0x414aae];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411cd0 *)
add %v25 %v25 %v18;
(* sqrdmulh	v26.8h, v26.8h, v4.8h                  #! PC = 0x411cd4 *)
smulj %LO %v26 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* ldr	q15, [x10, #240]                            #! EA = L0x414ab0; Value = 0x02f502f500e900e9; PC = 0x411cd8 *)
mov %v15 [L0x414ab0,L0x414ab2,L0x414ab4,L0x414ab6,L0x414ab8,L0x414aba,L0x414abc,L0x414abe];
(* add	v29.8h, v29.8h, v19.8h                      #! PC = 0x411cdc *)
add %v29 %v29 %v19;
(* sqrdmulh	v30.8h, v30.8h, v6.8h                  #! PC = 0x411ce0 *)
smulj %LO %v30 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v26.8h, v0.h[0]                     #! PC = 0x411ce4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411ce8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v26o5 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o5 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [7], algebra solver isl] && true;

assume eqmod %v16 (%v26o5 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o5 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [9]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
       %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
       %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
       %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
       %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 11 11 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly (X**4)
           [L0xffffffffc444+L0xffffffffc446*X,L0xffffffffc44c+L0xffffffffc44e*X,
            L0xffffffffc454+L0xffffffffc456*X,L0xffffffffc45c+L0xffffffffc45e*X])
          [Q, X**4 - 17**18] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly (X**4)
           [L0xffffffffc544+L0xffffffffc546*X,L0xffffffffc54c+L0xffffffffc54e*X,
            L0xffffffffc554+L0xffffffffc556*X,L0xffffffffc55c+L0xffffffffc55e*X])
          [Q, X**4 - 17**22] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly (X**4)
           [L0xffffffffc464+L0xffffffffc466*X,L0xffffffffc46c+L0xffffffffc46e*X,
            L0xffffffffc474+L0xffffffffc476*X,L0xffffffffc47c+L0xffffffffc47e*X])
          [Q, X**4 - 17**50] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly (X**4)
           [L0xffffffffc564+L0xffffffffc566*X,L0xffffffffc56c+L0xffffffffc56e*X,
            L0xffffffffc574+L0xffffffffc576*X,L0xffffffffc57c+L0xffffffffc57e*X])
          [Q, X**4 - 17**54] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly (X**4)
           [L0xffffffffc444+L0xffffffffc446*X,L0xffffffffc44c+L0xffffffffc44e*X,
            L0xffffffffc454+L0xffffffffc456*X,L0xffffffffc45c+L0xffffffffc45e*X])
          [Q, X**4 - 17**82] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly (X**4)
           [L0xffffffffc544+L0xffffffffc546*X,L0xffffffffc54c+L0xffffffffc54e*X,
            L0xffffffffc554+L0xffffffffc556*X,L0xffffffffc55c+L0xffffffffc55e*X])
          [Q, X**4 - 17**86] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly (X**4)
           [L0xffffffffc464+L0xffffffffc466*X,L0xffffffffc46c+L0xffffffffc46e*X,
            L0xffffffffc474+L0xffffffffc476*X,L0xffffffffc47c+L0xffffffffc47e*X])
          [Q, X**4 - 17**114] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly (X**4)
           [L0xffffffffc564+L0xffffffffc566*X,L0xffffffffc56c+L0xffffffffc56e*X,
            L0xffffffffc574+L0xffffffffc576*X,L0xffffffffc57c+L0xffffffffc57e*X])
          [Q, X**4 - 17**118] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly (X**4)
           [L0xffffffffc444+L0xffffffffc446*X,L0xffffffffc44c+L0xffffffffc44e*X,
            L0xffffffffc454+L0xffffffffc456*X,L0xffffffffc45c+L0xffffffffc45e*X])
          [Q, X**4 - 17**146] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly (X**4)
           [L0xffffffffc544+L0xffffffffc546*X,L0xffffffffc54c+L0xffffffffc54e*X,
            L0xffffffffc554+L0xffffffffc556*X,L0xffffffffc55c+L0xffffffffc55e*X])
          [Q, X**4 - 17**150] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly (X**4)
           [L0xffffffffc464+L0xffffffffc466*X,L0xffffffffc46c+L0xffffffffc46e*X,
            L0xffffffffc474+L0xffffffffc476*X,L0xffffffffc47c+L0xffffffffc47e*X])
          [Q, X**4 - 17**178] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly (X**4)
           [L0xffffffffc564+L0xffffffffc566*X,L0xffffffffc56c+L0xffffffffc56e*X,
            L0xffffffffc574+L0xffffffffc576*X,L0xffffffffc57c+L0xffffffffc57e*X])
          [Q, X**4 - 17**182] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly (X**4)
           [L0xffffffffc444+L0xffffffffc446*X,L0xffffffffc44c+L0xffffffffc44e*X,
            L0xffffffffc454+L0xffffffffc456*X,L0xffffffffc45c+L0xffffffffc45e*X])
          [Q, X**4 - 17**210] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly (X**4)
           [L0xffffffffc544+L0xffffffffc546*X,L0xffffffffc54c+L0xffffffffc54e*X,
            L0xffffffffc554+L0xffffffffc556*X,L0xffffffffc55c+L0xffffffffc55e*X])
          [Q, X**4 - 17**214] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly (X**4)
           [L0xffffffffc464+L0xffffffffc466*X,L0xffffffffc46c+L0xffffffffc46e*X,
            L0xffffffffc474+L0xffffffffc476*X,L0xffffffffc47c+L0xffffffffc47e*X])
          [Q, X**4 - 17**242] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly (X**4)
           [L0xffffffffc564+L0xffffffffc566*X,L0xffffffffc56c+L0xffffffffc56e*X,
            L0xffffffffc574+L0xffffffffc576*X,L0xffffffffc57c+L0xffffffffc57e*X])
          [Q, X**4 - 17**246] /\
    eqmod %v16 (%v26o5 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o5 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
    %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
    %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
    %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
    %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [9], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
    %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
    %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
    %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
    %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [cuts [7, 9]];

ghost %v25o4@int16[8],%v27o4@int16[8]:
      %v25o4 = %v25 /\ %v27o4 = %v27
   && %v25o4 = %v25 /\ %v27o4 = %v27;


(* add	x10, x10, #0x100                            #! PC = 0x411cec *)
adds dc x10 x10 0x100@uint64;
(* sub	v26.8h, v24.8h, v16.8h                      #! PC = 0x411cf0 *)
sub %v26 %v24 %v16;
(* mul	v18.8h, v25.8h, v9.8h                       #! PC = 0x411cf4 *)
mull %mdc %v18 %v25 %v9; cast %v18@int16[8] %v18;
(* sub	v30.8h, v28.8h, v17.8h                      #! PC = 0x411cf8 *)
sub %v30 %v28 %v17;
(* mul	v19.8h, v27.8h, v11.8h                      #! PC = 0x411cfc *)
mull %mdc %v19 %v27 %v11; cast %v19@int16[8] %v19;
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411d00 *)
add %v24 %v24 %v16;
(* sqrdmulh	v25.8h, v25.8h, v8.8h                  #! PC = 0x411d04 *)
smulj %LO %v25 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v28.8h, v28.8h, v17.8h                      #! PC = 0x411d08 *)
add %v28 %v28 %v17;
(* sqrdmulh	v27.8h, v27.8h, v10.8h                 #! PC = 0x411d0c *)
smulj %LO %v27 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mls	v18.8h, v25.8h, v0.h[0]                     #! PC = 0x411d10 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v27.8h, v0.h[0]                     #! PC = 0x411d14 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;


assert eqmod %v18 (%v25o4 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o4 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [7], algebra solver isl] && true;

assume eqmod %v18 (%v25o4 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o4 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [10]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
       %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
       %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
       %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
       %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 12 12 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly (X**4)
           [L0xffffffffc440+L0xffffffffc442*X,L0xffffffffc448+L0xffffffffc44a*X,
            L0xffffffffc450+L0xffffffffc452*X,L0xffffffffc458+L0xffffffffc45a*X])
          [Q, X**4 - 17**18] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly (X**4)
           [L0xffffffffc540+L0xffffffffc542*X,L0xffffffffc548+L0xffffffffc54a*X,
            L0xffffffffc550+L0xffffffffc552*X,L0xffffffffc558+L0xffffffffc55a*X])
          [Q, X**4 - 17**22] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly (X**4)
           [L0xffffffffc460+L0xffffffffc462*X,L0xffffffffc468+L0xffffffffc46a*X,
            L0xffffffffc470+L0xffffffffc472*X,L0xffffffffc478+L0xffffffffc47a*X])
          [Q, X**4 - 17**50] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly (X**4)
           [L0xffffffffc560+L0xffffffffc562*X,L0xffffffffc568+L0xffffffffc56a*X,
            L0xffffffffc570+L0xffffffffc572*X,L0xffffffffc578+L0xffffffffc57a*X])
          [Q, X**4 - 17**54] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly (X**4)
           [L0xffffffffc440+L0xffffffffc442*X,L0xffffffffc448+L0xffffffffc44a*X,
            L0xffffffffc450+L0xffffffffc452*X,L0xffffffffc458+L0xffffffffc45a*X])
          [Q, X**4 - 17**82] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly (X**4)
           [L0xffffffffc540+L0xffffffffc542*X,L0xffffffffc548+L0xffffffffc54a*X,
            L0xffffffffc550+L0xffffffffc552*X,L0xffffffffc558+L0xffffffffc55a*X])
          [Q, X**4 - 17**86] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly (X**4)
           [L0xffffffffc460+L0xffffffffc462*X,L0xffffffffc468+L0xffffffffc46a*X,
            L0xffffffffc470+L0xffffffffc472*X,L0xffffffffc478+L0xffffffffc47a*X])
          [Q, X**4 - 17**114] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly (X**4)
           [L0xffffffffc560+L0xffffffffc562*X,L0xffffffffc568+L0xffffffffc56a*X,
            L0xffffffffc570+L0xffffffffc572*X,L0xffffffffc578+L0xffffffffc57a*X])
          [Q, X**4 - 17**118] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly (X**4)
           [L0xffffffffc440+L0xffffffffc442*X,L0xffffffffc448+L0xffffffffc44a*X,
            L0xffffffffc450+L0xffffffffc452*X,L0xffffffffc458+L0xffffffffc45a*X])
          [Q, X**4 - 17**146] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly (X**4)
           [L0xffffffffc540+L0xffffffffc542*X,L0xffffffffc548+L0xffffffffc54a*X,
            L0xffffffffc550+L0xffffffffc552*X,L0xffffffffc558+L0xffffffffc55a*X])
          [Q, X**4 - 17**150] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly (X**4)
           [L0xffffffffc460+L0xffffffffc462*X,L0xffffffffc468+L0xffffffffc46a*X,
            L0xffffffffc470+L0xffffffffc472*X,L0xffffffffc478+L0xffffffffc47a*X])
          [Q, X**4 - 17**178] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly (X**4)
           [L0xffffffffc560+L0xffffffffc562*X,L0xffffffffc568+L0xffffffffc56a*X,
            L0xffffffffc570+L0xffffffffc572*X,L0xffffffffc578+L0xffffffffc57a*X])
          [Q, X**4 - 17**182] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly (X**4)
           [L0xffffffffc440+L0xffffffffc442*X,L0xffffffffc448+L0xffffffffc44a*X,
            L0xffffffffc450+L0xffffffffc452*X,L0xffffffffc458+L0xffffffffc45a*X])
          [Q, X**4 - 17**210] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly (X**4)
           [L0xffffffffc540+L0xffffffffc542*X,L0xffffffffc548+L0xffffffffc54a*X,
            L0xffffffffc550+L0xffffffffc552*X,L0xffffffffc558+L0xffffffffc55a*X])
          [Q, X**4 - 17**214] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly (X**4)
           [L0xffffffffc460+L0xffffffffc462*X,L0xffffffffc468+L0xffffffffc46a*X,
            L0xffffffffc470+L0xffffffffc472*X,L0xffffffffc478+L0xffffffffc47a*X])
          [Q, X**4 - 17**242] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly (X**4)
           [L0xffffffffc560+L0xffffffffc562*X,L0xffffffffc568+L0xffffffffc56a*X,
            L0xffffffffc570+L0xffffffffc572*X,L0xffffffffc578+L0xffffffffc57a*X])
          [Q, X**4 - 17**246] /\
    eqmod %v18 (%v25o4 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v27o4 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
    %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
    %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
    %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
    %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [10], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
    %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
    %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
    %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
    %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [cuts [7, 10]];

ghost %v29o6@int16[8],%v31o6@int16[8]:
      %v29o6 = %v29 /\ %v31o6 = %v31
   && %v29o6 = %v29 /\ %v31o6 = %v31;



(* sub	v25.8h, v24.8h, v18.8h                      #! PC = 0x411d18 *)
sub %v25 %v24 %v18;
(* mul	v16.8h, v29.8h, v13.8h                      #! PC = 0x411d1c *)
mull %mdc %v16 %v29 %v13; cast %v16@int16[8] %v16;
(* sub	v27.8h, v26.8h, v19.8h                      #! PC = 0x411d20 *)
sub %v27 %v26 %v19;
(* mul	v17.8h, v31.8h, v15.8h                      #! PC = 0x411d24 *)
mull %mdc %v17 %v31 %v15; cast %v17@int16[8] %v17;
(* add	v24.8h, v24.8h, v18.8h                      #! PC = 0x411d28 *)
add %v24 %v24 %v18;
(* sqrdmulh	v29.8h, v29.8h, v12.8h                 #! PC = 0x411d2c *)
smulj %LO %v29 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v26.8h, v26.8h, v19.8h                      #! PC = 0x411d30 *)
add %v26 %v26 %v19;
(* sqrdmulh	v31.8h, v31.8h, v14.8h                 #! PC = 0x411d34 *)
smulj %LO %v31 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v16.8h, v29.8h, v0.h[0]                     #! PC = 0x411d38 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v31.8h, v0.h[0]                     #! PC = 0x411d3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v29o6 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o6 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [7], algebra solver isl] && true;
assume eqmod %v16 (%v29o6 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o6 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];


ghost %v24o7@int16[8],%v25o7@int16[8],%v26o7@int16[8],%v27o7@int16[8]:
      %v24o7=%v24 /\ %v25o7=%v25 /\ %v26o7=%v26 /\ %v27o7=%v27
   && %v24o7=%v24 /\ %v25o7=%v25 /\ %v26o7=%v26 /\ %v27o7=%v27;

(* sqdmulh	v20.8h, v24.8h, v0.h[1]                 #! PC = 0x411d40 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* sub	v29.8h, v28.8h, v16.8h                      #! PC = 0x411d44 *)
sub %v29 %v28 %v16;
(* sqdmulh	v21.8h, v25.8h, v0.h[1]                 #! PC = 0x411d48 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* sub	v31.8h, v30.8h, v17.8h                      #! PC = 0x411d4c *)
sub %v31 %v30 %v17;
(* sqdmulh	v22.8h, v26.8h, v0.h[1]                 #! PC = 0x411d50 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* add	v28.8h, v28.8h, v16.8h                      #! PC = 0x411d54 *)
add %v28 %v28 %v16;
(* sqdmulh	v23.8h, v27.8h, v0.h[1]                 #! PC = 0x411d58 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* add	v30.8h, v30.8h, v17.8h                      #! PC = 0x411d5c *)
add %v30 %v30 %v17;

ghost %v28o7@int16[8],%v29o7@int16[8],%v30o7@int16[8],%v31o7@int16[8]:
      %v28o7=%v28 /\ %v29o7=%v29 /\ %v30o7=%v30 /\ %v31o7=%v31
   && %v28o7=%v28 /\ %v29o7=%v29 /\ %v30o7=%v30 /\ %v31o7=%v31;

(* sqdmulh	v16.8h, v28.8h, v0.h[1]                 #! PC = 0x411d60 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x411d64 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* sqdmulh	v17.8h, v29.8h, v0.h[1]                 #! PC = 0x411d68 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x411d6c *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* sqdmulh	v18.8h, v30.8h, v0.h[1]                 #! PC = 0x411d70 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x411d74 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* sqdmulh	v19.8h, v31.8h, v0.h[1]                 #! PC = 0x411d78 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x411d7c *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v24.8h, v20.8h, v0.h[0]                     #! PC = 0x411d80 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x411d84 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* mls	v25.8h, v21.8h, v0.h[0]                     #! PC = 0x411d88 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x411d8c *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* mls	v26.8h, v22.8h, v0.h[0]                     #! PC = 0x411d90 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x411d94 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* mls	v27.8h, v23.8h, v0.h[0]                     #! PC = 0x411d98 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x411d9c *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* mls	v28.8h, v16.8h, v0.h[0]                     #! PC = 0x411da0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411da4 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* mls	v29.8h, v17.8h, v0.h[0]                     #! PC = 0x411da8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411dac *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x411db0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411db4 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411db8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;


assert eqmod %v24 %v24o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [7, 11]]
    && true;
assume eqmod %v24 %v24o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o7 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v24 /\ %v24<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411dbc *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411dc0 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411dc4 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411dc8 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411dcc *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* str	q24, [x0]                                   #! EA = L0xffffffffc440; PC = 0x411dd0 *)
mov [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446,L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e] %v24;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x411dd4 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x411dd8 *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* str	q25, [x1]                                   #! EA = L0xffffffffc540; PC = 0x411ddc *)
mov [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546,L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e] %v25;
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x411de0 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x411de4 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc460; PC = 0x411de8 *)
mov [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466,L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e] %v26;
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x411dec *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x411df0 *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc560; PC = 0x411df4 *)
mov [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566,L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e] %v27;
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x411df8 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x411dfc *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* sub	x11, x11, #0x1                              #! PC = 0x411e00 *)
subc dc x11 x11 0x1@uint64;
(* #cbnz	x11, 0x411ba8 <_ntt_bot_loop>             #! PC = 0x411e04 *)
#cbnz	%%x11, 0x411ba8 <_ntt_bot_loop>             #! 0x411e04 = 0x411e04;
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc450; PC = 0x411ba8 *)
mov [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456,L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e] %v28;
(* ldr	q28, [x0, #80]                              #! EA = L0xffffffffc490; Value = 0x06960b4c0aeffe06; PC = 0x411bac *)
mov %v28 [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc550; PC = 0x411bb0 *)
mov [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556,L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e] %v29;
(* ldr	q29, [x1, #80]                              #! EA = L0xffffffffc590; Value = 0xfc63ff14fb4afaff; PC = 0x411bb4 *)
mov %v29 [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc470; PC = 0x411bb8 *)
mov [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476,L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e] %v30;
(* ldr	q30, [x0, #112]                             #! EA = L0xffffffffc4b0; Value = 0x0e2403b20cbf0708; PC = 0x411bbc *)
mov %v30 [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc570; PC = 0x411bc0 *)
mov [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576,L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e] %v31;



(* CUT 13 13 *)

cut eqmod (poly X [L0xffffffffc440,L0xffffffffc442]) (F**2) [Q, X**2 - 17**  9] /\
    eqmod (poly X [L0xffffffffc444,L0xffffffffc446]) (F**2) [Q, X**2 - 17**137] /\
    eqmod (poly X [L0xffffffffc448,L0xffffffffc44a]) (F**2) [Q, X**2 - 17** 73] /\
    eqmod (poly X [L0xffffffffc44c,L0xffffffffc44e]) (F**2) [Q, X**2 - 17**201] /\
    eqmod (poly X [L0xffffffffc450,L0xffffffffc452]) (F**2) [Q, X**2 - 17** 41] /\
    eqmod (poly X [L0xffffffffc454,L0xffffffffc456]) (F**2) [Q, X**2 - 17**169] /\
    eqmod (poly X [L0xffffffffc458,L0xffffffffc45a]) (F**2) [Q, X**2 - 17**105] /\
    eqmod (poly X [L0xffffffffc45c,L0xffffffffc45e]) (F**2) [Q, X**2 - 17**233] /\
    eqmod (poly X [L0xffffffffc460,L0xffffffffc462]) (F**2) [Q, X**2 - 17** 25] /\
    eqmod (poly X [L0xffffffffc464,L0xffffffffc466]) (F**2) [Q, X**2 - 17**153] /\
    eqmod (poly X [L0xffffffffc468,L0xffffffffc46a]) (F**2) [Q, X**2 - 17** 89] /\
    eqmod (poly X [L0xffffffffc46c,L0xffffffffc46e]) (F**2) [Q, X**2 - 17**217] /\
    eqmod (poly X [L0xffffffffc470,L0xffffffffc472]) (F**2) [Q, X**2 - 17** 57] /\
    eqmod (poly X [L0xffffffffc474,L0xffffffffc476]) (F**2) [Q, X**2 - 17**185] /\
    eqmod (poly X [L0xffffffffc478,L0xffffffffc47a]) (F**2) [Q, X**2 - 17**121] /\
    eqmod (poly X [L0xffffffffc47c,L0xffffffffc47e]) (F**2) [Q, X**2 - 17**249] /\

    eqmod (poly X [L0xffffffffc540,L0xffffffffc542]) (F**2) [Q, X**2 - 17** 11] /\
    eqmod (poly X [L0xffffffffc544,L0xffffffffc546]) (F**2) [Q, X**2 - 17**139] /\
    eqmod (poly X [L0xffffffffc548,L0xffffffffc54a]) (F**2) [Q, X**2 - 17** 75] /\
    eqmod (poly X [L0xffffffffc54c,L0xffffffffc54e]) (F**2) [Q, X**2 - 17**203] /\
    eqmod (poly X [L0xffffffffc550,L0xffffffffc552]) (F**2) [Q, X**2 - 17** 43] /\
    eqmod (poly X [L0xffffffffc554,L0xffffffffc556]) (F**2) [Q, X**2 - 17**171] /\
    eqmod (poly X [L0xffffffffc558,L0xffffffffc55a]) (F**2) [Q, X**2 - 17**107] /\
    eqmod (poly X [L0xffffffffc55c,L0xffffffffc55e]) (F**2) [Q, X**2 - 17**235] /\
    eqmod (poly X [L0xffffffffc560,L0xffffffffc562]) (F**2) [Q, X**2 - 17** 27] /\
    eqmod (poly X [L0xffffffffc564,L0xffffffffc566]) (F**2) [Q, X**2 - 17**155] /\
    eqmod (poly X [L0xffffffffc568,L0xffffffffc56a]) (F**2) [Q, X**2 - 17** 91] /\
    eqmod (poly X [L0xffffffffc56c,L0xffffffffc56e]) (F**2) [Q, X**2 - 17**219] /\
    eqmod (poly X [L0xffffffffc570,L0xffffffffc572]) (F**2) [Q, X**2 - 17** 59] /\
    eqmod (poly X [L0xffffffffc574,L0xffffffffc576]) (F**2) [Q, X**2 - 17**187] /\
    eqmod (poly X [L0xffffffffc578,L0xffffffffc57a]) (F**2) [Q, X**2 - 17**123] /\
    eqmod (poly X [L0xffffffffc57c,L0xffffffffc57e]) (F**2) [Q, X**2 - 17**251]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
 /\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
 /\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
 /\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
 /\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
 /\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
 /\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
 /\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
 /\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
 /\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
 /\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
 /\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
 /\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
 /\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
 /\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
 /\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
 /\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<[Q,Q,Q,Q]
    prove with [cuts [7, 11], all ghosts]
 && true
    prove with [cuts [7, 11]];


(* CUT 14 14 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    F00**2 = A00*X**  0 + A01*X**  1 + A02*X**  2 + A03*X**  3 + A04*X**  4 +
             A05*X**  5 + A06*X**  6 + A07*X**  7 /\
    F08**2 = A08*X**  8 + A09*X**  9 + A0a*X** 10 + A0b*X** 11 + A0c*X** 12 +
             A0d*X** 13 + A0e*X** 14 + A0f*X** 15 /\
    F10**2 = A10*X** 16 + A11*X** 17 + A12*X** 18 + A13*X** 19 + A14*X** 20 +
             A15*X** 21 + A16*X** 22 + A17*X** 23 /\
    F18**2 = A18*X** 24 + A19*X** 25 + A1a*X** 26 + A1b*X** 27 + A1c*X** 28 +
             A1d*X** 29 + A1e*X** 30 + A1f*X** 31 /\
    F20**2 = A20*X** 32 + A21*X** 33 + A22*X** 34 + A23*X** 35 + A24*X** 36 +
             A25*X** 37 + A26*X** 38 + A27*X** 39 /\
    F28**2 = A28*X** 40 + A29*X** 41 + A2a*X** 42 + A2b*X** 43 + A2c*X** 44 +
             A2d*X** 45 + A2e*X** 46 + A2f*X** 47 /\
    F30**2 = A30*X** 48 + A31*X** 49 + A32*X** 50 + A33*X** 51 + A34*X** 52 +
             A35*X** 53 + A36*X** 54 + A37*X** 55 /\
    F38**2 = A38*X** 56 + A39*X** 57 + A3a*X** 58 + A3b*X** 59 + A3c*X** 60 +
             A3d*X** 61 + A3e*X** 62 + A3f*X** 63 /\
    F40**2 = A40*X** 64 + A41*X** 65 + A42*X** 66 + A43*X** 67 + A44*X** 68 +
             A45*X** 69 + A46*X** 70 + A47*X** 71 /\
    F48**2 = A48*X** 72 + A49*X** 73 + A4a*X** 74 + A4b*X** 75 + A4c*X** 76 +
             A4d*X** 77 + A4e*X** 78 + A4f*X** 79 /\
    F50**2 = A50*X** 80 + A51*X** 81 + A52*X** 82 + A53*X** 83 + A54*X** 84 +
             A55*X** 85 + A56*X** 86 + A57*X** 87 /\
    F58**2 = A58*X** 88 + A59*X** 89 + A5a*X** 90 + A5b*X** 91 + A5c*X** 92 +
             A5d*X** 93 + A5e*X** 94 + A5f*X** 95 /\
    F60**2 = A60*X** 96 + A61*X** 97 + A62*X** 98 + A63*X** 99 + A64*X**100 +
             A65*X**101 + A66*X**102 + A67*X**103 /\
    F68**2 = A68*X**104 + A69*X**105 + A6a*X**106 + A6b*X**107 + A6c*X**108 +
             A6d*X**109 + A6e*X**110 + A6f*X**111 /\
    F70**2 = A70*X**112 + A71*X**113 + A72*X**114 + A73*X**115 + A74*X**116 +
             A75*X**117 + A76*X**118 + A77*X**119 /\
    F78**2 = A78*X**120 + A79*X**121 + A7a*X**122 + A7b*X**123 + A7c*X**124 +
             A7d*X**125 + A7e*X**126 + A7f*X**127 /\
    F80**2 = A80*X**128 + A81*X**129 + A82*X**130 + A83*X**131 + A84*X**132 +
             A85*X**133 + A86*X**134 + A87*X**135 /\
    F88**2 = A88*X**136 + A89*X**137 + A8a*X**138 + A8b*X**139 + A8c*X**140 +
             A8d*X**141 + A8e*X**142 + A8f*X**143 /\
    F90**2 = A90*X**144 + A91*X**145 + A92*X**146 + A93*X**147 + A94*X**148 +
             A95*X**149 + A96*X**150 + A97*X**151 /\
    F98**2 = A98*X**152 + A99*X**153 + A9a*X**154 + A9b*X**155 + A9c*X**156 +
             A9d*X**157 + A9e*X**158 + A9f*X**159 /\
    Fa0**2 = Aa0*X**160 + Aa1*X**161 + Aa2*X**162 + Aa3*X**163 + Aa4*X**164 +
             Aa5*X**165 + Aa6*X**166 + Aa7*X**167 /\
    Fa8**2 = Aa8*X**168 + Aa9*X**169 + Aaa*X**170 + Aab*X**171 + Aac*X**172 +
             Aad*X**173 + Aae*X**174 + Aaf*X**175 /\
    Fb0**2 = Ab0*X**176 + Ab1*X**177 + Ab2*X**178 + Ab3*X**179 + Ab4*X**180 +
             Ab5*X**181 + Ab6*X**182 + Ab7*X**183 /\
    Fb8**2 = Ab8*X**184 + Ab9*X**185 + Aba*X**186 + Abb*X**187 + Abc*X**188 +
             Abd*X**189 + Abe*X**190 + Abf*X**191 /\
    Fc0**2 = Ac0*X**192 + Ac1*X**193 + Ac2*X**194 + Ac3*X**195 + Ac4*X**196 +
             Ac5*X**197 + Ac6*X**198 + Ac7*X**199 /\
    Fc8**2 = Ac8*X**200 + Ac9*X**201 + Aca*X**202 + Acb*X**203 + Acc*X**204 +
             Acd*X**205 + Ace*X**206 + Acf*X**207 /\
    Fd0**2 = Ad0*X**208 + Ad1*X**209 + Ad2*X**210 + Ad3*X**211 + Ad4*X**212 +
             Ad5*X**213 + Ad6*X**214 + Ad7*X**215 /\
    Fd8**2 = Ad8*X**216 + Ad9*X**217 + Ada*X**218 + Adb*X**219 + Adc*X**220 +
             Add*X**221 + Ade*X**222 + Adf*X**223 /\
    Fe0**2 = Ae0*X**224 + Ae1*X**225 + Ae2*X**226 + Ae3*X**227 + Ae4*X**228 +
             Ae5*X**229 + Ae6*X**230 + Ae7*X**231 /\
    Fe8**2 = Ae8*X**232 + Ae9*X**233 + Aea*X**234 + Aeb*X**235 + Aec*X**236 +
             Aed*X**237 + Aee*X**238 + Aef*X**239 /\
    Ff0**2 = Af0*X**240 + Af1*X**241 + Af2*X**242 + Af3*X**243 + Af4*X**244 +
             Af5*X**245 + Af6*X**246 + Af7*X**247 /\
    Ff8**2 = Af8*X**248 + Af9*X**249 + Afa*X**250 + Afb*X**251 + Afc*X**252 +
             Afd*X**253 + Afe*X**254 + Aff*X**255 /\
    eqmod (poly X [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,
                   L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**40] /\
    eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,
                   L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**168] /\
    eqmod (X**8*
           poly X [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,
                   L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**40] /\
    eqmod (X**8*
           poly X [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,
                   L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**168] /\
    eqmod (poly X [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,
                   L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**56] /\
    eqmod (poly X [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,
                   L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**184] /\
    eqmod (X**8*
           poly X [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,
                   L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**56] /\
    eqmod (X**8*
           poly X [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,
                   L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**184] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc480, L0xffffffffc482] /\
    [L0xffffffffc480, L0xffffffffc482] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc484, L0xffffffffc486] /\
    [L0xffffffffc484, L0xffffffffc486] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc488, L0xffffffffc48a] /\
    [L0xffffffffc488, L0xffffffffc48a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc48c, L0xffffffffc48e] /\
    [L0xffffffffc48c, L0xffffffffc48e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a0, L0xffffffffc4a2] /\
    [L0xffffffffc4a0, L0xffffffffc4a2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a4, L0xffffffffc4a6] /\
    [L0xffffffffc4a4, L0xffffffffc4a6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4a8, L0xffffffffc4aa] /\
    [L0xffffffffc4a8, L0xffffffffc4aa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ac, L0xffffffffc4ae] /\
    [L0xffffffffc4ac, L0xffffffffc4ae] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc580, L0xffffffffc582] /\
    [L0xffffffffc580, L0xffffffffc582] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc584, L0xffffffffc586] /\
    [L0xffffffffc584, L0xffffffffc586] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc588, L0xffffffffc58a] /\
    [L0xffffffffc588, L0xffffffffc58a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc58c, L0xffffffffc58e] /\
    [L0xffffffffc58c, L0xffffffffc58e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a0, L0xffffffffc5a2] /\
    [L0xffffffffc5a0, L0xffffffffc5a2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a4, L0xffffffffc5a6] /\
    [L0xffffffffc5a4, L0xffffffffc5a6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5a8, L0xffffffffc5aa] /\
    [L0xffffffffc5a8, L0xffffffffc5aa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ac, L0xffffffffc5ae] /\
    [L0xffffffffc5ac, L0xffffffffc5ae] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc490, L0xffffffffc492] /\
    [L0xffffffffc490, L0xffffffffc492] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc494, L0xffffffffc496] /\
    [L0xffffffffc494, L0xffffffffc496] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc498, L0xffffffffc49a] /\
    [L0xffffffffc498, L0xffffffffc49a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc49c, L0xffffffffc49e] /\
    [L0xffffffffc49c, L0xffffffffc49e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b0, L0xffffffffc4b2] /\
    [L0xffffffffc4b0, L0xffffffffc4b2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b4, L0xffffffffc4b6] /\
    [L0xffffffffc4b4, L0xffffffffc4b6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4b8, L0xffffffffc4ba] /\
    [L0xffffffffc4b8, L0xffffffffc4ba] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4bc, L0xffffffffc4be] /\
    [L0xffffffffc4bc, L0xffffffffc4be] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc590, L0xffffffffc592] /\
    [L0xffffffffc590, L0xffffffffc592] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc594, L0xffffffffc596] /\
    [L0xffffffffc594, L0xffffffffc596] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc598, L0xffffffffc59a] /\
    [L0xffffffffc598, L0xffffffffc59a] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc59c, L0xffffffffc59e] /\
    [L0xffffffffc59c, L0xffffffffc59e] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b0, L0xffffffffc5b2] /\
    [L0xffffffffc5b0, L0xffffffffc5b2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b4, L0xffffffffc5b6] /\
    [L0xffffffffc5b4, L0xffffffffc5b6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5b8, L0xffffffffc5ba] /\
    [L0xffffffffc5b8, L0xffffffffc5ba] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5bc, L0xffffffffc5be] /\
    [L0xffffffffc5bc, L0xffffffffc5be] < [4*Q+Q2, 4*Q+Q2]
    prove with [precondition]
 &&
    Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc480, L0xffffffffc482] /\
    [L0xffffffffc480, L0xffffffffc482] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc484, L0xffffffffc486] /\
    [L0xffffffffc484, L0xffffffffc486] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc488, L0xffffffffc48a] /\
    [L0xffffffffc488, L0xffffffffc48a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc48c, L0xffffffffc48e] /\
    [L0xffffffffc48c, L0xffffffffc48e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a0, L0xffffffffc4a2] /\
    [L0xffffffffc4a0, L0xffffffffc4a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a4, L0xffffffffc4a6] /\
    [L0xffffffffc4a4, L0xffffffffc4a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4a8, L0xffffffffc4aa] /\
    [L0xffffffffc4a8, L0xffffffffc4aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ac, L0xffffffffc4ae] /\
    [L0xffffffffc4ac, L0xffffffffc4ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc580, L0xffffffffc582] /\
    [L0xffffffffc580, L0xffffffffc582] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc584, L0xffffffffc586] /\
    [L0xffffffffc584, L0xffffffffc586] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc588, L0xffffffffc58a] /\
    [L0xffffffffc588, L0xffffffffc58a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc58c, L0xffffffffc58e] /\
    [L0xffffffffc58c, L0xffffffffc58e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a0, L0xffffffffc5a2] /\
    [L0xffffffffc5a0, L0xffffffffc5a2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a4, L0xffffffffc5a6] /\
    [L0xffffffffc5a4, L0xffffffffc5a6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5a8, L0xffffffffc5aa] /\
    [L0xffffffffc5a8, L0xffffffffc5aa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ac, L0xffffffffc5ae] /\
    [L0xffffffffc5ac, L0xffffffffc5ae] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc490, L0xffffffffc492] /\
    [L0xffffffffc490, L0xffffffffc492] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc494, L0xffffffffc496] /\
    [L0xffffffffc494, L0xffffffffc496] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc498, L0xffffffffc49a] /\
    [L0xffffffffc498, L0xffffffffc49a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc49c, L0xffffffffc49e] /\
    [L0xffffffffc49c, L0xffffffffc49e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b0, L0xffffffffc4b2] /\
    [L0xffffffffc4b0, L0xffffffffc4b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b4, L0xffffffffc4b6] /\
    [L0xffffffffc4b4, L0xffffffffc4b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4b8, L0xffffffffc4ba] /\
    [L0xffffffffc4b8, L0xffffffffc4ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4bc, L0xffffffffc4be] /\
    [L0xffffffffc4bc, L0xffffffffc4be] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc590, L0xffffffffc592] /\
    [L0xffffffffc590, L0xffffffffc592] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc594, L0xffffffffc596] /\
    [L0xffffffffc594, L0xffffffffc596] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc598, L0xffffffffc59a] /\
    [L0xffffffffc598, L0xffffffffc59a] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc59c, L0xffffffffc59e] /\
    [L0xffffffffc59c, L0xffffffffc59e] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b0, L0xffffffffc5b2] /\
    [L0xffffffffc5b0, L0xffffffffc5b2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b4, L0xffffffffc5b6] /\
    [L0xffffffffc5b4, L0xffffffffc5b6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5b8, L0xffffffffc5ba] /\
    [L0xffffffffc5b8, L0xffffffffc5ba] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5bc, L0xffffffffc5be] /\
    [L0xffffffffc5bc, L0xffffffffc5be] <s [4@16*Q+Q2, 4@16*Q+Q2]
    prove with [precondition];


(* ldr	q31, [x1, #112]                             #! EA = L0xffffffffc5b0; Value = 0x006f0134fc3ef3f7; PC = 0x411bc4 *)
mov %v31 [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be];
(* add	x0, x0, #0x40                               #! PC = 0x411bc8 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x411bcc *)
adds dc x1 x1 0x40@uint64;
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x411bd0 *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x411bd4 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q1, [x10, #16]                              #! EA = L0x414ad0; Value = 0x0000000000000000; PC = 0x411bd8 *)
mov %v1 [L0x414ad0,L0x414ad2,L0x414ad4,L0x414ad6,L0x414ad8,L0x414ada,L0x414adc,L0x414ade];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x411bdc *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x411be0 *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q2, [x10, #32]                              #! EA = L0x414ae0; Value = 0xdc03dc03f51ef51e; PC = 0x411be4 *)
mov %v2 [L0x414ae0,L0x414ae2,L0x414ae4,L0x414ae6,L0x414ae8,L0x414aea,L0x414aec,L0x414aee];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x411be8 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x411bec *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q3, [x10, #48]                              #! EA = L0x414af0; Value = 0xfc58fc58fee5fee5; PC = 0x411bf0 *)
mov %v3 [L0x414af0,L0x414af2,L0x414af4,L0x414af6,L0x414af8,L0x414afa,L0x414afc,L0x414afe];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x411bf4 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x411bf8 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc480; Value = 0x0204fe160d07face; PC = 0x411bfc *)
mov %v24 [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e];

ghost %v29o8@int16[8],%v31o8@int16[8] :
      %v29o8 = %v29 /\ %v31o8 = %v31
   && %v29o8 = %v29 /\ %v31o8 = %v31;

(* mul	v18.8h, v29.8h, v3.8h                       #! PC = 0x411c00 *)
mull %mdc %v18 %v29 %v3; cast %v18@int16[8] %v18;
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc580; Value = 0xf6fbf8a9ec640070; PC = 0x411c04 *)
mov %v25 [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e];
(* mul	v19.8h, v31.8h, v3.8h                       #! PC = 0x411c08 *)
mull %mdc %v19 %v31 %v3; cast %v19@int16[8] %v19;
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc4a0; Value = 0x0be6fd5804f1ff02; PC = 0x411c0c *)
mov %v26 [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411c10 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411c14 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc5a0; Value = 0x0213fd0bf480014a; PC = 0x411c18 *)
mov %v27 [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411c1c *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411c20 *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* sqrdmulh	v29.8h, v29.8h, v2.8h                  #! PC = 0x411c24 *)
smulj %LO %v29 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411c28 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* sqrdmulh	v31.8h, v31.8h, v2.8h                  #! PC = 0x411c2c *)
smulj %LO %v31 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411c30 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* mls	v18.8h, v29.8h, v0.h[0]                     #! PC = 0x411c34 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411c38 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411c3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;


assert eqmod %v18 (%v29o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [14], algebra solver isl] && true;

assume eqmod %v18 (%v29o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 15 15 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v18 (%v29o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [14]]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v28o8@int16[8],%v30o8@int16[8] :
      %v28o8 = %v28 /\ %v30o8 = %v30
   && %v28o8 = %v28 /\ %v30o8 = %v30;


(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411c40 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q4, [x10, #64]                              #! EA = L0x414b00; Value = 0xe5c7e5c718fe18fe; PC = 0x411c44 *)
mov %v4 [L0x414b00,L0x414b02,L0x414b04,L0x414b06,L0x414b08,L0x414b0a,L0x414b0c,L0x414b0e];
(* sub	v29.8h, v25.8h, v18.8h                      #! PC = 0x411c48 *)
sub %v29 %v25 %v18;
(* mul	v16.8h, v28.8h, v3.8h                       #! PC = 0x411c4c *)
mull %mdc %v16 %v28 %v3; cast %v16@int16[8] %v16;
(* ldr	q5, [x10, #80]                              #! EA = L0x414b10; Value = 0xfd56fd56028a028a; PC = 0x411c50 *)
mov %v5 [L0x414b10,L0x414b12,L0x414b14,L0x414b16,L0x414b18,L0x414b1a,L0x414b1c,L0x414b1e];
(* sub	v31.8h, v27.8h, v19.8h                      #! PC = 0x411c54 *)
sub %v31 %v27 %v19;
(* mul	v17.8h, v30.8h, v3.8h                       #! PC = 0x411c58 *)
mull %mdc %v17 %v30 %v3; cast %v17@int16[8] %v17;
(* ldr	q6, [x10, #96]                              #! EA = L0x414b20; Value = 0xe4a0e4a0cc04cc04; PC = 0x411c5c *)
mov %v6 [L0x414b20,L0x414b22,L0x414b24,L0x414b26,L0x414b28,L0x414b2a,L0x414b2c,L0x414b2e];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411c60 *)
add %v25 %v25 %v18;
(* sqrdmulh	v28.8h, v28.8h, v2.8h                  #! PC = 0x411c64 *)
smulj %LO %v28 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* ldr	q7, [x10, #112]                             #! EA = L0x414b30; Value = 0xfd38fd38fab8fab8; PC = 0x411c68 *)
mov %v7 [L0x414b30,L0x414b32,L0x414b34,L0x414b36,L0x414b38,L0x414b3a,L0x414b3c,L0x414b3e];
(* add	v27.8h, v27.8h, v19.8h                      #! PC = 0x411c6c *)
add %v27 %v27 %v19;
(* sqrdmulh	v30.8h, v30.8h, v2.8h                  #! PC = 0x411c70 *)
smulj %LO %v30 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v28.8h, v0.h[0]                     #! PC = 0x411c74 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411c78 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v28o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [14], algebra solver isl] && true;

assume eqmod %v16 (%v28o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [14]] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
       %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
       %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
       %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
       %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 16 16 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly X [L0xffffffffc484,L0xffffffffc486]+X**8*poly X [L0xffffffffc494,L0xffffffffc496])
          [Q, X**8 - 17**20] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly X [L0xffffffffc584,L0xffffffffc586]+X**8*poly X [L0xffffffffc594,L0xffffffffc596])
          [Q, X**8 - 17**28] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly X [L0xffffffffc4a4,L0xffffffffc4a6]+X**8*poly X [L0xffffffffc4b4,L0xffffffffc4b6])
          [Q, X**8 - 17**84] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly X [L0xffffffffc5a4,L0xffffffffc5a6]+X**8*poly X [L0xffffffffc5b4,L0xffffffffc5b6])
          [Q, X**8 - 17**92] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly X [L0xffffffffc48c,L0xffffffffc48e]+X**8*poly X [L0xffffffffc49c,L0xffffffffc49e])
          [Q, X**8 - 17**20] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly X [L0xffffffffc58c,L0xffffffffc58e]+X**8*poly X [L0xffffffffc59c,L0xffffffffc59e])
          [Q, X**8 - 17**28] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly X [L0xffffffffc4ac,L0xffffffffc4ae]+X**8*poly X [L0xffffffffc4bc,L0xffffffffc4be])
          [Q, X**8 - 17**84] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly X [L0xffffffffc5ac,L0xffffffffc5ae]+X**8*poly X [L0xffffffffc5bc,L0xffffffffc5be])
          [Q, X**8 - 17**92] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly X [L0xffffffffc484,L0xffffffffc486]+X**8*poly X [L0xffffffffc494,L0xffffffffc496])
          [Q, X**8 - 17**148] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly X [L0xffffffffc584,L0xffffffffc586]+X**8*poly X [L0xffffffffc594,L0xffffffffc596])
          [Q, X**8 - 17**156] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly X [L0xffffffffc4a4,L0xffffffffc4a6]+X**8*poly X [L0xffffffffc4b4,L0xffffffffc4b6])
          [Q, X**8 - 17**212] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly X [L0xffffffffc5a4,L0xffffffffc5a6]+X**8*poly X [L0xffffffffc5b4,L0xffffffffc5b6])
          [Q, X**8 - 17**220] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly X [L0xffffffffc48c,L0xffffffffc48e]+X**8*poly X [L0xffffffffc49c,L0xffffffffc49e])
          [Q, X**8 - 17**148] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly X [L0xffffffffc58c,L0xffffffffc58e]+X**8*poly X [L0xffffffffc59c,L0xffffffffc59e])
          [Q, X**8 - 17**156] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly X [L0xffffffffc4ac,L0xffffffffc4ae]+X**8*poly X [L0xffffffffc4bc,L0xffffffffc4be])
          [Q, X**8 - 17**212] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly X [L0xffffffffc5ac,L0xffffffffc5ae]+X**8*poly X [L0xffffffffc5bc,L0xffffffffc5be])
          [Q, X**8 - 17**220] /\
    eqmod %v16 (%v28o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o8 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
    %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
    %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
    %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
    %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]    
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
    %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
    %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
    %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
    %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [cuts [14]];

ghost %v27o9@int16[8],%v31o9@int16[8]:
      %v27o9 = %v27 /\ %v31o9 = %v31
   && %v27o9 = %v27 /\ %v31o9 = %v31;


(* ldr	q8, [x10, #128]                             #! EA = L0x414b40; Value = 0xebd0ebd0c17bc17b; PC = 0x411c7c *)
mov %v8 [L0x414b40,L0x414b42,L0x414b44,L0x414b46,L0x414b48,L0x414b4a,L0x414b4c,L0x414b4e];
(* sub	v28.8h, v24.8h, v16.8h                      #! PC = 0x411c80 *)
sub %v28 %v24 %v16;
(* mul	v18.8h, v27.8h, v5.8h                       #! PC = 0x411c84 *)
mull %mdc %v18 %v27 %v5; cast %v18@int16[8] %v18;
(* ldr	q9, [x10, #144]                             #! EA = L0x414b50; Value = 0xfdf3fdf3f9a6f9a6; PC = 0x411c88 *)
mov %v9 [L0x414b50,L0x414b52,L0x414b54,L0x414b56,L0x414b58,L0x414b5a,L0x414b5c,L0x414b5e];
(* sub	v30.8h, v26.8h, v17.8h                      #! PC = 0x411c8c *)
sub %v30 %v26 %v17;
(* mul	v19.8h, v31.8h, v7.8h                       #! PC = 0x411c90 *)
mull %mdc %v19 %v31 %v7; cast %v19@int16[8] %v19;
(* ldr	q10, [x10, #160]                            #! EA = L0x414b60; Value = 0x29fd29fd3f7b3f7b; PC = 0x411c94 *)
mov %v10 [L0x414b60,L0x414b62,L0x414b64,L0x414b66,L0x414b68,L0x414b6a,L0x414b6c,L0x414b6e];
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411c98 *)
add %v24 %v24 %v16;
(* sqrdmulh	v27.8h, v27.8h, v4.8h                  #! PC = 0x411c9c *)
smulj %LO %v27 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* ldr	q11, [x10, #176]                            #! EA = L0x414b70; Value = 0x0444044406730673; PC = 0x411ca0 *)
mov %v11 [L0x414b70,L0x414b72,L0x414b74,L0x414b76,L0x414b78,L0x414b7a,L0x414b7c,L0x414b7e];
(* add	v26.8h, v26.8h, v17.8h                      #! PC = 0x411ca4 *)
add %v26 %v26 %v17;
(* sqrdmulh	v31.8h, v31.8h, v6.8h                  #! PC = 0x411ca8 *)
smulj %LO %v31 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v18.8h, v27.8h, v0.h[0]                     #! PC = 0x411cac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411cb0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;



assert eqmod %v18 (%v27o9 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o9 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [14], algebra solver isl] && true;

assume eqmod %v18 (%v27o9 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o9 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [14]] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
       %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
       %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
       %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
       %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 17 17 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly X [L0xffffffffc480,L0xffffffffc482]+X**8*poly X [L0xffffffffc490,L0xffffffffc492])
          [Q, X**8 - 17**20] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly X [L0xffffffffc580,L0xffffffffc582]+X**8*poly X [L0xffffffffc590,L0xffffffffc592])
          [Q, X**8 - 17**28] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly X [L0xffffffffc4a0,L0xffffffffc4a2]+X**8*poly X [L0xffffffffc4b0,L0xffffffffc4b2])
          [Q, X**8 - 17**84] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly X [L0xffffffffc5a0,L0xffffffffc5a2]+X**8*poly X [L0xffffffffc5b0,L0xffffffffc5b2])
          [Q, X**8 - 17**92] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly X [L0xffffffffc488,L0xffffffffc48a]+X**8*poly X [L0xffffffffc498,L0xffffffffc49a])
          [Q, X**8 - 17**20] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly X [L0xffffffffc588,L0xffffffffc58a]+X**8*poly X [L0xffffffffc598,L0xffffffffc59a])
          [Q, X**8 - 17**28] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly X [L0xffffffffc4a8,L0xffffffffc4aa]+X**8*poly X [L0xffffffffc4b8,L0xffffffffc4ba])
          [Q, X**8 - 17**84] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly X [L0xffffffffc5a8,L0xffffffffc5aa]+X**8*poly X [L0xffffffffc5b8,L0xffffffffc5ba])
          [Q, X**8 - 17**92] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly X [L0xffffffffc480,L0xffffffffc482]+X**8*poly X [L0xffffffffc490,L0xffffffffc492])
          [Q, X**8 - 17**148] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly X [L0xffffffffc580,L0xffffffffc582]+X**8*poly X [L0xffffffffc590,L0xffffffffc592])
          [Q, X**8 - 17**156] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly X [L0xffffffffc4a0,L0xffffffffc4a2]+X**8*poly X [L0xffffffffc4b0,L0xffffffffc4b2])
          [Q, X**8 - 17**212] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly X [L0xffffffffc5a0,L0xffffffffc5a2]+X**8*poly X [L0xffffffffc5b0,L0xffffffffc5b2])
          [Q, X**8 - 17**220] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly X [L0xffffffffc488,L0xffffffffc48a]+X**8*poly X [L0xffffffffc498,L0xffffffffc49a])
          [Q, X**8 - 17**148] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly X [L0xffffffffc588,L0xffffffffc58a]+X**8*poly X [L0xffffffffc598,L0xffffffffc59a])
          [Q, X**8 - 17**156] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly X [L0xffffffffc4a8,L0xffffffffc4aa]+X**8*poly X [L0xffffffffc4b8,L0xffffffffc4ba])
          [Q, X**8 - 17**212] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly X [L0xffffffffc5a8,L0xffffffffc5aa]+X**8*poly X [L0xffffffffc5b8,L0xffffffffc5ba])
          [Q, X**8 - 17**220] /\
    eqmod %v18 (%v27o9 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o9 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
    %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
    %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
    %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
    %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
    %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
    %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
    %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
    %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [cuts [14]];

ghost %v26o9@int16[8],%v30o9@int16[8]:
      %v26o9 = %v26 /\ %v30o9 = %v30
   && %v26o9 = %v26 /\ %v30o9 = %v30;



(* ldr	q12, [x10, #192]                            #! EA = L0x414b80; Value = 0x0f7f0f7feb3deb3d; PC = 0x411cb4 *)
mov %v12 [L0x414b80,L0x414b82,L0x414b84,L0x414b86,L0x414b88,L0x414b8a,L0x414b8c,L0x414b8e];
(* sub	v27.8h, v25.8h, v18.8h                      #! PC = 0x411cb8 *)
sub %v27 %v25 %v18;
(* mul	v16.8h, v26.8h, v5.8h                       #! PC = 0x411cbc *)
mull %mdc %v16 %v26 %v5; cast %v16@int16[8] %v16;
(* ldr	q13, [x10, #208]                            #! EA = L0x414b90; Value = 0x01930193fde4fde4; PC = 0x411cc0 *)
mov %v13 [L0x414b90,L0x414b92,L0x414b94,L0x414b96,L0x414b98,L0x414b9a,L0x414b9c,L0x414b9e];
(* sub	v31.8h, v29.8h, v19.8h                      #! PC = 0x411cc4 *)
sub %v31 %v29 %v19;
(* mul	v17.8h, v30.8h, v7.8h                       #! PC = 0x411cc8 *)
mull %mdc %v17 %v30 %v7; cast %v17@int16[8] %v17;
(* ldr	q14, [x10, #224]                            #! EA = L0x414ba0; Value = 0x27732773c4c9c4c9; PC = 0x411ccc *)
mov %v14 [L0x414ba0,L0x414ba2,L0x414ba4,L0x414ba6,L0x414ba8,L0x414baa,L0x414bac,L0x414bae];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411cd0 *)
add %v25 %v25 %v18;
(* sqrdmulh	v26.8h, v26.8h, v4.8h                  #! PC = 0x411cd4 *)
smulj %LO %v26 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* ldr	q15, [x10, #240]                            #! EA = L0x414bb0; Value = 0x04020402f9fcf9fc; PC = 0x411cd8 *)
mov %v15 [L0x414bb0,L0x414bb2,L0x414bb4,L0x414bb6,L0x414bb8,L0x414bba,L0x414bbc,L0x414bbe];
(* add	v29.8h, v29.8h, v19.8h                      #! PC = 0x411cdc *)
add %v29 %v29 %v19;
(* sqrdmulh	v30.8h, v30.8h, v6.8h                  #! PC = 0x411ce0 *)
smulj %LO %v30 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v26.8h, v0.h[0]                     #! PC = 0x411ce4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411ce8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v26o9 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o9 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [14], algebra solver isl] && true;

assume eqmod %v16 (%v26o9 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o9 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [16]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
       %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
       %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
       %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
       %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 18 18 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly (X**4)
           [L0xffffffffc484+L0xffffffffc486*X,L0xffffffffc48c+L0xffffffffc48e*X,
            L0xffffffffc494+L0xffffffffc496*X,L0xffffffffc49c+L0xffffffffc49e*X])
          [Q, X**4 - 17**10] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly (X**4)
           [L0xffffffffc584+L0xffffffffc586*X,L0xffffffffc58c+L0xffffffffc58e*X,
            L0xffffffffc594+L0xffffffffc596*X,L0xffffffffc59c+L0xffffffffc59e*X])
          [Q, X**4 - 17**14] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly (X**4)
           [L0xffffffffc4a4+L0xffffffffc4a6*X,L0xffffffffc4ac+L0xffffffffc4ae*X,
            L0xffffffffc4b4+L0xffffffffc4b6*X,L0xffffffffc4bc+L0xffffffffc4be*X])
          [Q, X**4 - 17**42] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly (X**4)
           [L0xffffffffc5a4+L0xffffffffc5a6*X,L0xffffffffc5ac+L0xffffffffc5ae*X,
            L0xffffffffc5b4+L0xffffffffc5b6*X,L0xffffffffc5bc+L0xffffffffc5be*X])
          [Q, X**4 - 17**46] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly (X**4)
           [L0xffffffffc484+L0xffffffffc486*X,L0xffffffffc48c+L0xffffffffc48e*X,
            L0xffffffffc494+L0xffffffffc496*X,L0xffffffffc49c+L0xffffffffc49e*X])
          [Q, X**4 - 17**74] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly (X**4)
           [L0xffffffffc584+L0xffffffffc586*X,L0xffffffffc58c+L0xffffffffc58e*X,
            L0xffffffffc594+L0xffffffffc596*X,L0xffffffffc59c+L0xffffffffc59e*X])
          [Q, X**4 - 17**78] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly (X**4)
           [L0xffffffffc4a4+L0xffffffffc4a6*X,L0xffffffffc4ac+L0xffffffffc4ae*X,
            L0xffffffffc4b4+L0xffffffffc4b6*X,L0xffffffffc4bc+L0xffffffffc4be*X])
          [Q, X**4 - 17**106] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly (X**4)
           [L0xffffffffc5a4+L0xffffffffc5a6*X,L0xffffffffc5ac+L0xffffffffc5ae*X,
            L0xffffffffc5b4+L0xffffffffc5b6*X,L0xffffffffc5bc+L0xffffffffc5be*X])
          [Q, X**4 - 17**110] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly (X**4)
           [L0xffffffffc484+L0xffffffffc486*X,L0xffffffffc48c+L0xffffffffc48e*X,
            L0xffffffffc494+L0xffffffffc496*X,L0xffffffffc49c+L0xffffffffc49e*X])
          [Q, X**4 - 17**138] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly (X**4)
           [L0xffffffffc584+L0xffffffffc586*X,L0xffffffffc58c+L0xffffffffc58e*X,
            L0xffffffffc594+L0xffffffffc596*X,L0xffffffffc59c+L0xffffffffc59e*X])
          [Q, X**4 - 17**142] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly (X**4)
           [L0xffffffffc4a4+L0xffffffffc4a6*X,L0xffffffffc4ac+L0xffffffffc4ae*X,
            L0xffffffffc4b4+L0xffffffffc4b6*X,L0xffffffffc4bc+L0xffffffffc4be*X])
          [Q, X**4 - 17**170] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly (X**4)
           [L0xffffffffc5a4+L0xffffffffc5a6*X,L0xffffffffc5ac+L0xffffffffc5ae*X,
            L0xffffffffc5b4+L0xffffffffc5b6*X,L0xffffffffc5bc+L0xffffffffc5be*X])
          [Q, X**4 - 17**174] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly (X**4)
           [L0xffffffffc484+L0xffffffffc486*X,L0xffffffffc48c+L0xffffffffc48e*X,
            L0xffffffffc494+L0xffffffffc496*X,L0xffffffffc49c+L0xffffffffc49e*X])
          [Q, X**4 - 17**202] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly (X**4)
           [L0xffffffffc584+L0xffffffffc586*X,L0xffffffffc58c+L0xffffffffc58e*X,
            L0xffffffffc594+L0xffffffffc596*X,L0xffffffffc59c+L0xffffffffc59e*X])
          [Q, X**4 - 17**206] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly (X**4)
           [L0xffffffffc4a4+L0xffffffffc4a6*X,L0xffffffffc4ac+L0xffffffffc4ae*X,
            L0xffffffffc4b4+L0xffffffffc4b6*X,L0xffffffffc4bc+L0xffffffffc4be*X])
          [Q, X**4 - 17**234] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly (X**4)
           [L0xffffffffc5a4+L0xffffffffc5a6*X,L0xffffffffc5ac+L0xffffffffc5ae*X,
            L0xffffffffc5b4+L0xffffffffc5b6*X,L0xffffffffc5bc+L0xffffffffc5be*X])
          [Q, X**4 - 17**238] /\
    eqmod %v16 (%v26o9 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o9 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
    %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
    %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
    %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
    %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [16], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
    %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
    %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
    %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
    %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [cuts [14, 16]];

ghost %v25o8@int16[8],%v27o8@int16[8]:
      %v25o8 = %v25 /\ %v27o8 = %v27
   && %v25o8 = %v25 /\ %v27o8 = %v27;


(* add	x10, x10, #0x100                            #! PC = 0x411cec *)
adds dc x10 x10 0x100@uint64;
(* sub	v26.8h, v24.8h, v16.8h                      #! PC = 0x411cf0 *)
sub %v26 %v24 %v16;
(* mul	v18.8h, v25.8h, v9.8h                       #! PC = 0x411cf4 *)
mull %mdc %v18 %v25 %v9; cast %v18@int16[8] %v18;
(* sub	v30.8h, v28.8h, v17.8h                      #! PC = 0x411cf8 *)
sub %v30 %v28 %v17;
(* mul	v19.8h, v27.8h, v11.8h                      #! PC = 0x411cfc *)
mull %mdc %v19 %v27 %v11; cast %v19@int16[8] %v19;
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411d00 *)
add %v24 %v24 %v16;
(* sqrdmulh	v25.8h, v25.8h, v8.8h                  #! PC = 0x411d04 *)
smulj %LO %v25 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v28.8h, v28.8h, v17.8h                      #! PC = 0x411d08 *)
add %v28 %v28 %v17;
(* sqrdmulh	v27.8h, v27.8h, v10.8h                 #! PC = 0x411d0c *)
smulj %LO %v27 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mls	v18.8h, v25.8h, v0.h[0]                     #! PC = 0x411d10 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v27.8h, v0.h[0]                     #! PC = 0x411d14 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;


assert eqmod %v18 (%v25o8 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o8 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [14], algebra solver isl] && true;

assume eqmod %v18 (%v25o8 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o8 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [17]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
       %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
       %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
       %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
       %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 19 19 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly (X**4)
           [L0xffffffffc480+L0xffffffffc482*X,L0xffffffffc488+L0xffffffffc48a*X,
            L0xffffffffc490+L0xffffffffc492*X,L0xffffffffc498+L0xffffffffc49a*X])
          [Q, X**4 - 17**10] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly (X**4)
           [L0xffffffffc580+L0xffffffffc582*X,L0xffffffffc588+L0xffffffffc58a*X,
            L0xffffffffc590+L0xffffffffc592*X,L0xffffffffc598+L0xffffffffc59a*X])
          [Q, X**4 - 17**14] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly (X**4)
           [L0xffffffffc4a0+L0xffffffffc4a2*X,L0xffffffffc4a8+L0xffffffffc4aa*X,
            L0xffffffffc4b0+L0xffffffffc4b2*X,L0xffffffffc4b8+L0xffffffffc4ba*X])
          [Q, X**4 - 17**42] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly (X**4)
           [L0xffffffffc5a0+L0xffffffffc5a2*X,L0xffffffffc5a8+L0xffffffffc5aa*X,
            L0xffffffffc5b0+L0xffffffffc5b2*X,L0xffffffffc5b8+L0xffffffffc5ba*X])
          [Q, X**4 - 17**46] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly (X**4)
           [L0xffffffffc480+L0xffffffffc482*X,L0xffffffffc488+L0xffffffffc48a*X,
            L0xffffffffc490+L0xffffffffc492*X,L0xffffffffc498+L0xffffffffc49a*X])
          [Q, X**4 - 17**74] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly (X**4)
           [L0xffffffffc580+L0xffffffffc582*X,L0xffffffffc588+L0xffffffffc58a*X,
            L0xffffffffc590+L0xffffffffc592*X,L0xffffffffc598+L0xffffffffc59a*X])
          [Q, X**4 - 17**78] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly (X**4)
           [L0xffffffffc4a0+L0xffffffffc4a2*X,L0xffffffffc4a8+L0xffffffffc4aa*X,
            L0xffffffffc4b0+L0xffffffffc4b2*X,L0xffffffffc4b8+L0xffffffffc4ba*X])
          [Q, X**4 - 17**106] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly (X**4)
           [L0xffffffffc5a0+L0xffffffffc5a2*X,L0xffffffffc5a8+L0xffffffffc5aa*X,
            L0xffffffffc5b0+L0xffffffffc5b2*X,L0xffffffffc5b8+L0xffffffffc5ba*X])
          [Q, X**4 - 17**110] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly (X**4)
           [L0xffffffffc480+L0xffffffffc482*X,L0xffffffffc488+L0xffffffffc48a*X,
            L0xffffffffc490+L0xffffffffc492*X,L0xffffffffc498+L0xffffffffc49a*X])
          [Q, X**4 - 17**138] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly (X**4)
           [L0xffffffffc580+L0xffffffffc582*X,L0xffffffffc588+L0xffffffffc58a*X,
            L0xffffffffc590+L0xffffffffc592*X,L0xffffffffc598+L0xffffffffc59a*X])
          [Q, X**4 - 17**142] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly (X**4)
           [L0xffffffffc4a0+L0xffffffffc4a2*X,L0xffffffffc4a8+L0xffffffffc4aa*X,
            L0xffffffffc4b0+L0xffffffffc4b2*X,L0xffffffffc4b8+L0xffffffffc4ba*X])
          [Q, X**4 - 17**170] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly (X**4)
           [L0xffffffffc5a0+L0xffffffffc5a2*X,L0xffffffffc5a8+L0xffffffffc5aa*X,
            L0xffffffffc5b0+L0xffffffffc5b2*X,L0xffffffffc5b8+L0xffffffffc5ba*X])
          [Q, X**4 - 17**174] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly (X**4)
           [L0xffffffffc480+L0xffffffffc482*X,L0xffffffffc488+L0xffffffffc48a*X,
            L0xffffffffc490+L0xffffffffc492*X,L0xffffffffc498+L0xffffffffc49a*X])
          [Q, X**4 - 17**202] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly (X**4)
           [L0xffffffffc580+L0xffffffffc582*X,L0xffffffffc588+L0xffffffffc58a*X,
            L0xffffffffc590+L0xffffffffc592*X,L0xffffffffc598+L0xffffffffc59a*X])
          [Q, X**4 - 17**206] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly (X**4)
           [L0xffffffffc4a0+L0xffffffffc4a2*X,L0xffffffffc4a8+L0xffffffffc4aa*X,
            L0xffffffffc4b0+L0xffffffffc4b2*X,L0xffffffffc4b8+L0xffffffffc4ba*X])
          [Q, X**4 - 17**234] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly (X**4)
           [L0xffffffffc5a0+L0xffffffffc5a2*X,L0xffffffffc5a8+L0xffffffffc5aa*X,
            L0xffffffffc5b0+L0xffffffffc5b2*X,L0xffffffffc5b8+L0xffffffffc5ba*X])
          [Q, X**4 - 17**238] /\
    eqmod %v18 (%v25o8 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v27o8 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
    %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
    %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
    %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
    %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [17], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
    %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
    %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
    %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
    %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [cuts [14, 17]];

ghost %v29o10@int16[8],%v31o10@int16[8]:
      %v29o10 = %v29 /\ %v31o10 = %v31
   && %v29o10 = %v29 /\ %v31o10 = %v31;



(* sub	v25.8h, v24.8h, v18.8h                      #! PC = 0x411d18 *)
sub %v25 %v24 %v18;
(* mul	v16.8h, v29.8h, v13.8h                      #! PC = 0x411d1c *)
mull %mdc %v16 %v29 %v13; cast %v16@int16[8] %v16;
(* sub	v27.8h, v26.8h, v19.8h                      #! PC = 0x411d20 *)
sub %v27 %v26 %v19;
(* mul	v17.8h, v31.8h, v15.8h                      #! PC = 0x411d24 *)
mull %mdc %v17 %v31 %v15; cast %v17@int16[8] %v17;
(* add	v24.8h, v24.8h, v18.8h                      #! PC = 0x411d28 *)
add %v24 %v24 %v18;
(* sqrdmulh	v29.8h, v29.8h, v12.8h                 #! PC = 0x411d2c *)
smulj %LO %v29 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v26.8h, v26.8h, v19.8h                      #! PC = 0x411d30 *)
add %v26 %v26 %v19;
(* sqrdmulh	v31.8h, v31.8h, v14.8h                 #! PC = 0x411d34 *)
smulj %LO %v31 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v16.8h, v29.8h, v0.h[0]                     #! PC = 0x411d38 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v31.8h, v0.h[0]                     #! PC = 0x411d3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v29o10 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o10 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [14], algebra solver isl] && true;
assume eqmod %v16 (%v29o10 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o10 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o11@int16[8],%v25o11@int16[8],%v26o11@int16[8],%v27o11@int16[8]:
      %v24o11=%v24 /\ %v25o11=%v25 /\ %v26o11=%v26 /\ %v27o11=%v27
   && %v24o11=%v24 /\ %v25o11=%v25 /\ %v26o11=%v26 /\ %v27o11=%v27;

(* sqdmulh	v20.8h, v24.8h, v0.h[1]                 #! PC = 0x411d40 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* sub	v29.8h, v28.8h, v16.8h                      #! PC = 0x411d44 *)
sub %v29 %v28 %v16;
(* sqdmulh	v21.8h, v25.8h, v0.h[1]                 #! PC = 0x411d48 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* sub	v31.8h, v30.8h, v17.8h                      #! PC = 0x411d4c *)
sub %v31 %v30 %v17;
(* sqdmulh	v22.8h, v26.8h, v0.h[1]                 #! PC = 0x411d50 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* add	v28.8h, v28.8h, v16.8h                      #! PC = 0x411d54 *)
add %v28 %v28 %v16;
(* sqdmulh	v23.8h, v27.8h, v0.h[1]                 #! PC = 0x411d58 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* add	v30.8h, v30.8h, v17.8h                      #! PC = 0x411d5c *)
add %v30 %v30 %v17;

ghost %v28o11@int16[8],%v29o11@int16[8],%v30o11@int16[8],%v31o11@int16[8]:
      %v28o11=%v28 /\ %v29o11=%v29 /\ %v30o11=%v30 /\ %v31o11=%v31
   && %v28o11=%v28 /\ %v29o11=%v29 /\ %v30o11=%v30 /\ %v31o11=%v31;

(* sqdmulh	v16.8h, v28.8h, v0.h[1]                 #! PC = 0x411d60 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x411d64 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* sqdmulh	v17.8h, v29.8h, v0.h[1]                 #! PC = 0x411d68 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x411d6c *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* sqdmulh	v18.8h, v30.8h, v0.h[1]                 #! PC = 0x411d70 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x411d74 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* sqdmulh	v19.8h, v31.8h, v0.h[1]                 #! PC = 0x411d78 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x411d7c *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v24.8h, v20.8h, v0.h[0]                     #! PC = 0x411d80 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x411d84 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* mls	v25.8h, v21.8h, v0.h[0]                     #! PC = 0x411d88 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x411d8c *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* mls	v26.8h, v22.8h, v0.h[0]                     #! PC = 0x411d90 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x411d94 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* mls	v27.8h, v23.8h, v0.h[0]                     #! PC = 0x411d98 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x411d9c *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* mls	v28.8h, v16.8h, v0.h[0]                     #! PC = 0x411da0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411da4 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* mls	v29.8h, v17.8h, v0.h[0]                     #! PC = 0x411da8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411dac *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x411db0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411db4 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411db8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [14, 18]]
    && true;
assume eqmod %v24 %v24o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o11 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v24 /\ %v24<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411dbc *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411dc0 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411dc4 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411dc8 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411dcc *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* str	q24, [x0]                                   #! EA = L0xffffffffc480; PC = 0x411dd0 *)
mov [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486,L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e] %v24;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x411dd4 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x411dd8 *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* str	q25, [x1]                                   #! EA = L0xffffffffc580; PC = 0x411ddc *)
mov [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586,L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e] %v25;
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x411de0 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x411de4 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc4a0; PC = 0x411de8 *)
mov [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6,L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae] %v26;
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x411dec *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x411df0 *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc5a0; PC = 0x411df4 *)
mov [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6,L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae] %v27;
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x411df8 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x411dfc *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* sub	x11, x11, #0x1                              #! PC = 0x411e00 *)
subc dc x11 x11 0x1@uint64;
(* #cbnz	x11, 0x411ba8 <_ntt_bot_loop>             #! PC = 0x411e04 *)
#cbnz	%%x11, 0x411ba8 <_ntt_bot_loop>             #! 0x411e04 = 0x411e04;
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc490; PC = 0x411ba8 *)
mov [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496,L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e] %v28;
(* ldr	q28, [x0, #80]                              #! EA = L0xffffffffc4d0; Value = 0x0911fb710172fb8b; PC = 0x411bac *)
mov %v28 [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de];
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc590; PC = 0x411bb0 *)
mov [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596,L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e] %v29;
(* ldr	q29, [x1, #80]                              #! EA = L0xffffffffc5d0; Value = 0xfa1ef50cf85305a4; PC = 0x411bb4 *)
mov %v29 [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de];
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc4b0; PC = 0x411bb8 *)
mov [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6,L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be] %v30;
(* ldr	q30, [x0, #112]                             #! EA = L0xffffffffc4f0; Value = 0x06e900a50b90fec7; PC = 0x411bbc *)
mov %v30 [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe];
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc5b0; PC = 0x411bc0 *)
mov [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6,L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be] %v31;



(* CUT 20 20 *)

cut eqmod (poly X [L0xffffffffc480,L0xffffffffc482]) (F**2) [Q, X**2 - 17**  5] /\
    eqmod (poly X [L0xffffffffc484,L0xffffffffc486]) (F**2) [Q, X**2 - 17**133] /\
    eqmod (poly X [L0xffffffffc488,L0xffffffffc48a]) (F**2) [Q, X**2 - 17** 69] /\
    eqmod (poly X [L0xffffffffc48c,L0xffffffffc48e]) (F**2) [Q, X**2 - 17**197] /\
    eqmod (poly X [L0xffffffffc490,L0xffffffffc492]) (F**2) [Q, X**2 - 17** 37] /\
    eqmod (poly X [L0xffffffffc494,L0xffffffffc496]) (F**2) [Q, X**2 - 17**165] /\
    eqmod (poly X [L0xffffffffc498,L0xffffffffc49a]) (F**2) [Q, X**2 - 17**101] /\
    eqmod (poly X [L0xffffffffc49c,L0xffffffffc49e]) (F**2) [Q, X**2 - 17**229] /\
    eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2]) (F**2) [Q, X**2 - 17** 21] /\
    eqmod (poly X [L0xffffffffc4a4,L0xffffffffc4a6]) (F**2) [Q, X**2 - 17**149] /\
    eqmod (poly X [L0xffffffffc4a8,L0xffffffffc4aa]) (F**2) [Q, X**2 - 17** 85] /\
    eqmod (poly X [L0xffffffffc4ac,L0xffffffffc4ae]) (F**2) [Q, X**2 - 17**213] /\
    eqmod (poly X [L0xffffffffc4b0,L0xffffffffc4b2]) (F**2) [Q, X**2 - 17** 53] /\
    eqmod (poly X [L0xffffffffc4b4,L0xffffffffc4b6]) (F**2) [Q, X**2 - 17**181] /\
    eqmod (poly X [L0xffffffffc4b8,L0xffffffffc4ba]) (F**2) [Q, X**2 - 17**117] /\
    eqmod (poly X [L0xffffffffc4bc,L0xffffffffc4be]) (F**2) [Q, X**2 - 17**245] /\

    eqmod (poly X [L0xffffffffc580,L0xffffffffc582]) (F**2) [Q, X**2 - 17**  7] /\
    eqmod (poly X [L0xffffffffc584,L0xffffffffc586]) (F**2) [Q, X**2 - 17**135] /\
    eqmod (poly X [L0xffffffffc588,L0xffffffffc58a]) (F**2) [Q, X**2 - 17** 71] /\
    eqmod (poly X [L0xffffffffc58c,L0xffffffffc58e]) (F**2) [Q, X**2 - 17**199] /\
    eqmod (poly X [L0xffffffffc590,L0xffffffffc592]) (F**2) [Q, X**2 - 17** 39] /\
    eqmod (poly X [L0xffffffffc594,L0xffffffffc596]) (F**2) [Q, X**2 - 17**167] /\
    eqmod (poly X [L0xffffffffc598,L0xffffffffc59a]) (F**2) [Q, X**2 - 17**103] /\
    eqmod (poly X [L0xffffffffc59c,L0xffffffffc59e]) (F**2) [Q, X**2 - 17**231] /\
    eqmod (poly X [L0xffffffffc5a0,L0xffffffffc5a2]) (F**2) [Q, X**2 - 17** 23] /\
    eqmod (poly X [L0xffffffffc5a4,L0xffffffffc5a6]) (F**2) [Q, X**2 - 17**151] /\
    eqmod (poly X [L0xffffffffc5a8,L0xffffffffc5aa]) (F**2) [Q, X**2 - 17** 87] /\
    eqmod (poly X [L0xffffffffc5ac,L0xffffffffc5ae]) (F**2) [Q, X**2 - 17**215] /\
    eqmod (poly X [L0xffffffffc5b0,L0xffffffffc5b2]) (F**2) [Q, X**2 - 17** 55] /\
    eqmod (poly X [L0xffffffffc5b4,L0xffffffffc5b6]) (F**2) [Q, X**2 - 17**183] /\
    eqmod (poly X [L0xffffffffc5b8,L0xffffffffc5ba]) (F**2) [Q, X**2 - 17**119] /\
    eqmod (poly X [L0xffffffffc5bc,L0xffffffffc5be]) (F**2) [Q, X**2 - 17**247]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
 /\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
 /\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
 /\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
 /\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
 /\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
 /\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
 /\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
 /\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
 /\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
 /\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
 /\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
 /\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6]
 /\ [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae]
 /\ [L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6]
 /\ [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be]
 /\ [L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be]<[Q,Q,Q,Q]
    prove with [cuts [14, 18], all ghosts]
 && true
    prove with [cuts [14, 18]];

(* CUT 21 21 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    F00**2 = A00*X**  0 + A01*X**  1 + A02*X**  2 + A03*X**  3 + A04*X**  4 +
             A05*X**  5 + A06*X**  6 + A07*X**  7 /\
    F08**2 = A08*X**  8 + A09*X**  9 + A0a*X** 10 + A0b*X** 11 + A0c*X** 12 +
             A0d*X** 13 + A0e*X** 14 + A0f*X** 15 /\
    F10**2 = A10*X** 16 + A11*X** 17 + A12*X** 18 + A13*X** 19 + A14*X** 20 +
             A15*X** 21 + A16*X** 22 + A17*X** 23 /\
    F18**2 = A18*X** 24 + A19*X** 25 + A1a*X** 26 + A1b*X** 27 + A1c*X** 28 +
             A1d*X** 29 + A1e*X** 30 + A1f*X** 31 /\
    F20**2 = A20*X** 32 + A21*X** 33 + A22*X** 34 + A23*X** 35 + A24*X** 36 +
             A25*X** 37 + A26*X** 38 + A27*X** 39 /\
    F28**2 = A28*X** 40 + A29*X** 41 + A2a*X** 42 + A2b*X** 43 + A2c*X** 44 +
             A2d*X** 45 + A2e*X** 46 + A2f*X** 47 /\
    F30**2 = A30*X** 48 + A31*X** 49 + A32*X** 50 + A33*X** 51 + A34*X** 52 +
             A35*X** 53 + A36*X** 54 + A37*X** 55 /\
    F38**2 = A38*X** 56 + A39*X** 57 + A3a*X** 58 + A3b*X** 59 + A3c*X** 60 +
             A3d*X** 61 + A3e*X** 62 + A3f*X** 63 /\
    F40**2 = A40*X** 64 + A41*X** 65 + A42*X** 66 + A43*X** 67 + A44*X** 68 +
             A45*X** 69 + A46*X** 70 + A47*X** 71 /\
    F48**2 = A48*X** 72 + A49*X** 73 + A4a*X** 74 + A4b*X** 75 + A4c*X** 76 +
             A4d*X** 77 + A4e*X** 78 + A4f*X** 79 /\
    F50**2 = A50*X** 80 + A51*X** 81 + A52*X** 82 + A53*X** 83 + A54*X** 84 +
             A55*X** 85 + A56*X** 86 + A57*X** 87 /\
    F58**2 = A58*X** 88 + A59*X** 89 + A5a*X** 90 + A5b*X** 91 + A5c*X** 92 +
             A5d*X** 93 + A5e*X** 94 + A5f*X** 95 /\
    F60**2 = A60*X** 96 + A61*X** 97 + A62*X** 98 + A63*X** 99 + A64*X**100 +
             A65*X**101 + A66*X**102 + A67*X**103 /\
    F68**2 = A68*X**104 + A69*X**105 + A6a*X**106 + A6b*X**107 + A6c*X**108 +
             A6d*X**109 + A6e*X**110 + A6f*X**111 /\
    F70**2 = A70*X**112 + A71*X**113 + A72*X**114 + A73*X**115 + A74*X**116 +
             A75*X**117 + A76*X**118 + A77*X**119 /\
    F78**2 = A78*X**120 + A79*X**121 + A7a*X**122 + A7b*X**123 + A7c*X**124 +
             A7d*X**125 + A7e*X**126 + A7f*X**127 /\
    F80**2 = A80*X**128 + A81*X**129 + A82*X**130 + A83*X**131 + A84*X**132 +
             A85*X**133 + A86*X**134 + A87*X**135 /\
    F88**2 = A88*X**136 + A89*X**137 + A8a*X**138 + A8b*X**139 + A8c*X**140 +
             A8d*X**141 + A8e*X**142 + A8f*X**143 /\
    F90**2 = A90*X**144 + A91*X**145 + A92*X**146 + A93*X**147 + A94*X**148 +
             A95*X**149 + A96*X**150 + A97*X**151 /\
    F98**2 = A98*X**152 + A99*X**153 + A9a*X**154 + A9b*X**155 + A9c*X**156 +
             A9d*X**157 + A9e*X**158 + A9f*X**159 /\
    Fa0**2 = Aa0*X**160 + Aa1*X**161 + Aa2*X**162 + Aa3*X**163 + Aa4*X**164 +
             Aa5*X**165 + Aa6*X**166 + Aa7*X**167 /\
    Fa8**2 = Aa8*X**168 + Aa9*X**169 + Aaa*X**170 + Aab*X**171 + Aac*X**172 +
             Aad*X**173 + Aae*X**174 + Aaf*X**175 /\
    Fb0**2 = Ab0*X**176 + Ab1*X**177 + Ab2*X**178 + Ab3*X**179 + Ab4*X**180 +
             Ab5*X**181 + Ab6*X**182 + Ab7*X**183 /\
    Fb8**2 = Ab8*X**184 + Ab9*X**185 + Aba*X**186 + Abb*X**187 + Abc*X**188 +
             Abd*X**189 + Abe*X**190 + Abf*X**191 /\
    Fc0**2 = Ac0*X**192 + Ac1*X**193 + Ac2*X**194 + Ac3*X**195 + Ac4*X**196 +
             Ac5*X**197 + Ac6*X**198 + Ac7*X**199 /\
    Fc8**2 = Ac8*X**200 + Ac9*X**201 + Aca*X**202 + Acb*X**203 + Acc*X**204 +
             Acd*X**205 + Ace*X**206 + Acf*X**207 /\
    Fd0**2 = Ad0*X**208 + Ad1*X**209 + Ad2*X**210 + Ad3*X**211 + Ad4*X**212 +
             Ad5*X**213 + Ad6*X**214 + Ad7*X**215 /\
    Fd8**2 = Ad8*X**216 + Ad9*X**217 + Ada*X**218 + Adb*X**219 + Adc*X**220 +
             Add*X**221 + Ade*X**222 + Adf*X**223 /\
    Fe0**2 = Ae0*X**224 + Ae1*X**225 + Ae2*X**226 + Ae3*X**227 + Ae4*X**228 +
             Ae5*X**229 + Ae6*X**230 + Ae7*X**231 /\
    Fe8**2 = Ae8*X**232 + Ae9*X**233 + Aea*X**234 + Aeb*X**235 + Aec*X**236 +
             Aed*X**237 + Aee*X**238 + Aef*X**239 /\
    Ff0**2 = Af0*X**240 + Af1*X**241 + Af2*X**242 + Af3*X**243 + Af4*X**244 +
             Af5*X**245 + Af6*X**246 + Af7*X**247 /\
    Ff8**2 = Af8*X**248 + Af9*X**249 + Afa*X**250 + Afb*X**251 + Afc*X**252 +
             Afd*X**253 + Afe*X**254 + Aff*X**255 /\
    eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,
                   L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**104] /\
    eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,
                   L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**232] /\
    eqmod (X**8*
           poly X [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,
                   L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**104] /\
   eqmod (X**8*
          poly X [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,
                  L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe])
         (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
          F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
         [Q, X**16 - 17**232] /\
    eqmod (poly X [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,
                   L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**120] /\
    eqmod (poly X [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,
                   L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee])
          (F00**2+F10**2+F20**2+F30**2+F40**2+F50**2+F60**2+F70**2+
           F80**2+F90**2+Fa0**2+Fb0**2+Fc0**2+Fd0**2+Fe0**2+Ff0**2)
          [Q, X**16 - 17**248] /\
    eqmod (X**8*
           poly X [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,
                   L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**120] /\
    eqmod (X**8*
           poly X [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,
                   L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe])
          (F08**2+F18**2+F28**2+F38**2+F48**2+F58**2+F68**2+F78**2+
           F88**2+F98**2+Fa8**2+Fb8**2+Fc8**2+Fd8**2+Fe8**2+Ff8**2)
          [Q, X**16 - 17**248] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c0, L0xffffffffc4c2] /\
    [L0xffffffffc4c0, L0xffffffffc4c2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c4, L0xffffffffc4c6] /\
    [L0xffffffffc4c4, L0xffffffffc4c6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4c8, L0xffffffffc4ca] /\
    [L0xffffffffc4c8, L0xffffffffc4ca] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4cc, L0xffffffffc4ce] /\
    [L0xffffffffc4cc, L0xffffffffc4ce] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e0, L0xffffffffc4e2] /\
    [L0xffffffffc4e0, L0xffffffffc4e2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e4, L0xffffffffc4e6] /\
    [L0xffffffffc4e4, L0xffffffffc4e6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4e8, L0xffffffffc4ea] /\
    [L0xffffffffc4e8, L0xffffffffc4ea] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4ec, L0xffffffffc4ee] /\
    [L0xffffffffc4ec, L0xffffffffc4ee] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d0, L0xffffffffc4d2] /\
    [L0xffffffffc4d0, L0xffffffffc4d2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d4, L0xffffffffc4d6] /\
    [L0xffffffffc4d4, L0xffffffffc4d6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4d8, L0xffffffffc4da] /\
    [L0xffffffffc4d8, L0xffffffffc4da] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4dc, L0xffffffffc4de] /\
    [L0xffffffffc4dc, L0xffffffffc4de] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f0, L0xffffffffc4f2] /\
    [L0xffffffffc4f0, L0xffffffffc4f2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f4, L0xffffffffc4f6] /\
    [L0xffffffffc4f4, L0xffffffffc4f6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4f8, L0xffffffffc4fa] /\
    [L0xffffffffc4f8, L0xffffffffc4fa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc4fc, L0xffffffffc4fe] /\
    [L0xffffffffc4fc, L0xffffffffc4fe] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c0, L0xffffffffc5c2] /\
    [L0xffffffffc5c0, L0xffffffffc5c2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c4, L0xffffffffc5c6] /\
    [L0xffffffffc5c4, L0xffffffffc5c6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5c8, L0xffffffffc5ca] /\
    [L0xffffffffc5c8, L0xffffffffc5ca] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5cc, L0xffffffffc5ce] /\
    [L0xffffffffc5cc, L0xffffffffc5ce] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e0, L0xffffffffc5e2] /\
    [L0xffffffffc5e0, L0xffffffffc5e2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e4, L0xffffffffc5e6] /\
    [L0xffffffffc5e4, L0xffffffffc5e6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5e8, L0xffffffffc5ea] /\
    [L0xffffffffc5e8, L0xffffffffc5ea] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5ec, L0xffffffffc5ee] /\
    [L0xffffffffc5ec, L0xffffffffc5ee] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d0, L0xffffffffc5d2] /\
    [L0xffffffffc5d0, L0xffffffffc5d2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d4, L0xffffffffc5d6] /\
    [L0xffffffffc5d4, L0xffffffffc5d6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5d8, L0xffffffffc5da] /\
    [L0xffffffffc5d8, L0xffffffffc5da] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5dc, L0xffffffffc5de] /\
    [L0xffffffffc5dc, L0xffffffffc5de] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f0, L0xffffffffc5f2] /\
    [L0xffffffffc5f0, L0xffffffffc5f2] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f4, L0xffffffffc5f6] /\
    [L0xffffffffc5f4, L0xffffffffc5f6] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5f8, L0xffffffffc5fa] /\
    [L0xffffffffc5f8, L0xffffffffc5fa] < [4*Q+Q2, 4*Q+Q2] /\
    [4*NQ+NQ2, 4*NQ+NQ2] < [L0xffffffffc5fc, L0xffffffffc5fe] /\
    [L0xffffffffc5fc, L0xffffffffc5fe] < [4*Q+Q2, 4*Q+Q2]
    prove with [precondition]
&&
    Q = 3329@16 /\ Q2 = 1665@16 /\ NQ = (-3329)@16 /\ NQ2 = (-1665)@16 /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c0, L0xffffffffc4c2] /\
    [L0xffffffffc4c0, L0xffffffffc4c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c4, L0xffffffffc4c6] /\
    [L0xffffffffc4c4, L0xffffffffc4c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4c8, L0xffffffffc4ca] /\
    [L0xffffffffc4c8, L0xffffffffc4ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4cc, L0xffffffffc4ce] /\
    [L0xffffffffc4cc, L0xffffffffc4ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e0, L0xffffffffc4e2] /\
    [L0xffffffffc4e0, L0xffffffffc4e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e4, L0xffffffffc4e6] /\
    [L0xffffffffc4e4, L0xffffffffc4e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4e8, L0xffffffffc4ea] /\
    [L0xffffffffc4e8, L0xffffffffc4ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4ec, L0xffffffffc4ee] /\
    [L0xffffffffc4ec, L0xffffffffc4ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c0, L0xffffffffc5c2] /\
    [L0xffffffffc5c0, L0xffffffffc5c2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c4, L0xffffffffc5c6] /\
    [L0xffffffffc5c4, L0xffffffffc5c6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5c8, L0xffffffffc5ca] /\
    [L0xffffffffc5c8, L0xffffffffc5ca] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5cc, L0xffffffffc5ce] /\
    [L0xffffffffc5cc, L0xffffffffc5ce] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e0, L0xffffffffc5e2] /\
    [L0xffffffffc5e0, L0xffffffffc5e2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e4, L0xffffffffc5e6] /\
    [L0xffffffffc5e4, L0xffffffffc5e6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5e8, L0xffffffffc5ea] /\
    [L0xffffffffc5e8, L0xffffffffc5ea] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5ec, L0xffffffffc5ee] /\
    [L0xffffffffc5ec, L0xffffffffc5ee] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d0, L0xffffffffc4d2] /\
    [L0xffffffffc4d0, L0xffffffffc4d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d4, L0xffffffffc4d6] /\
    [L0xffffffffc4d4, L0xffffffffc4d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4d8, L0xffffffffc4da] /\
    [L0xffffffffc4d8, L0xffffffffc4da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4dc, L0xffffffffc4de] /\
    [L0xffffffffc4dc, L0xffffffffc4de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f0, L0xffffffffc4f2] /\
    [L0xffffffffc4f0, L0xffffffffc4f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f4, L0xffffffffc4f6] /\
    [L0xffffffffc4f4, L0xffffffffc4f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4f8, L0xffffffffc4fa] /\
    [L0xffffffffc4f8, L0xffffffffc4fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc4fc, L0xffffffffc4fe] /\
    [L0xffffffffc4fc, L0xffffffffc4fe] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d0, L0xffffffffc5d2] /\
    [L0xffffffffc5d0, L0xffffffffc5d2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d4, L0xffffffffc5d6] /\
    [L0xffffffffc5d4, L0xffffffffc5d6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5d8, L0xffffffffc5da] /\
    [L0xffffffffc5d8, L0xffffffffc5da] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5dc, L0xffffffffc5de] /\
    [L0xffffffffc5dc, L0xffffffffc5de] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f0, L0xffffffffc5f2] /\
    [L0xffffffffc5f0, L0xffffffffc5f2] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f4, L0xffffffffc5f6] /\
    [L0xffffffffc5f4, L0xffffffffc5f6] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5f8, L0xffffffffc5fa] /\
    [L0xffffffffc5f8, L0xffffffffc5fa] <s [4@16*Q+Q2, 4@16*Q+Q2] /\
    [4@16*NQ+NQ2, 4@16*NQ+NQ2] <s [L0xffffffffc5fc, L0xffffffffc5fe] /\
    [L0xffffffffc5fc, L0xffffffffc5fe] <s [4@16*Q+Q2, 4@16*Q+Q2]
    prove with [precondition];   

(* ldr	q31, [x1, #112]                             #! EA = L0xffffffffc5f0; Value = 0xf0b0ff98f7c1ffb2; PC = 0x411bc4 *)
mov %v31 [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe];
(* add	x0, x0, #0x40                               #! PC = 0x411bc8 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x411bcc *)
adds dc x1 x1 0x40@uint64;
(* trn1	v20.4s, v28.4s, v29.4s                     #! PC = 0x411bd0 *)
mov %v20@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v21.4s, v28.4s, v29.4s                     #! PC = 0x411bd4 *)
mov %v21@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* ldr	q1, [x10, #16]                              #! EA = L0x414bd0; Value = 0x0000000000000000; PC = 0x411bd8 *)
mov %v1 [L0x414bd0,L0x414bd2,L0x414bd4,L0x414bd6,L0x414bd8,L0x414bda,L0x414bdc,L0x414bde];
(* trn1	v22.4s, v30.4s, v31.4s                     #! PC = 0x411bdc *)
mov %v22@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v23.4s, v30.4s, v31.4s                     #! PC = 0x411be0 *)
mov %v23@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* ldr	q2, [x10, #32]                              #! EA = L0x414be0; Value = 0xcbe6cbe6d621d621; PC = 0x411be4 *)
mov %v2 [L0x414be0,L0x414be2,L0x414be4,L0x414be6,L0x414be8,L0x414bea,L0x414bec,L0x414bee];
(* trn1	v28.2d, v20.2d, v22.2d                     #! PC = 0x411be8 *)
mov %v28@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v30.2d, v20.2d, v22.2d                     #! PC = 0x411bec *)
mov %v30@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* ldr	q3, [x10, #48]                              #! EA = L0x414bf0; Value = 0xfab5fab5fbbffbbf; PC = 0x411bf0 *)
mov %v3 [L0x414bf0,L0x414bf2,L0x414bf4,L0x414bf6,L0x414bf8,L0x414bfa,L0x414bfc,L0x414bfe];
(* trn1	v29.2d, v21.2d, v23.2d                     #! PC = 0x411bf4 *)
mov %v29@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v31.2d, v21.2d, v23.2d                     #! PC = 0x411bf8 *)
mov %v31@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q24, [x0]                                   #! EA = L0xffffffffc4c0; Value = 0xfd150094f7bff516; PC = 0x411bfc *)
mov %v24 [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce];

ghost %v29o12@int16[8],%v31o12@int16[8] :
      %v29o12 = %v29 /\ %v31o12 = %v31
   && %v29o12 = %v29 /\ %v31o12 = %v31;

(* mul	v18.8h, v29.8h, v3.8h                       #! PC = 0x411c00 *)
mull %mdc %v18 %v29 %v3; cast %v18@int16[8] %v18;
(* ldr	q25, [x1]                                   #! EA = L0xffffffffc5c0; Value = 0xf1ee0644fcf6ffe6; PC = 0x411c04 *)
mov %v25 [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce];
(* mul	v19.8h, v31.8h, v3.8h                       #! PC = 0x411c08 *)
mull %mdc %v19 %v31 %v3; cast %v19@int16[8] %v19;
(* ldr	q26, [x0, #32]                              #! EA = L0xffffffffc4e0; Value = 0xf69903fa02f5f77a; PC = 0x411c0c *)
mov %v26 [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee];
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411c10 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411c14 *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* ldr	q27, [x1, #32]                              #! EA = L0xffffffffc5e0; Value = 0xfac40404fcd20bac; PC = 0x411c18 *)
mov %v27 [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee];
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411c1c *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411c20 *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* sqrdmulh	v29.8h, v29.8h, v2.8h                  #! PC = 0x411c24 *)
smulj %LO %v29 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411c28 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* sqrdmulh	v31.8h, v31.8h, v2.8h                  #! PC = 0x411c2c *)
smulj %LO %v31 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411c30 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* mls	v18.8h, v29.8h, v0.h[0]                     #! PC = 0x411c34 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411c38 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411c3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;


assert eqmod %v18 (%v29o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [21], algebra solver isl] && true;

assume eqmod %v18 (%v29o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

(* CUT 22 22 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod %v18 (%v29o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    prove with [cuts [21]]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v28o12@int16[8],%v30o12@int16[8] :
      %v28o12 = %v28 /\ %v30o12 = %v30
   && %v28o12 = %v28 /\ %v30o12 = %v30;


(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411c40 *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* ldr	q4, [x10, #64]                              #! EA = L0x414c00; Value = 0xdf20df20ee29ee29; PC = 0x411c44 *)
mov %v4 [L0x414c00,L0x414c02,L0x414c04,L0x414c06,L0x414c08,L0x414c0a,L0x414c0c,L0x414c0e];
(* sub	v29.8h, v25.8h, v18.8h                      #! PC = 0x411c48 *)
sub %v29 %v25 %v18;
(* mul	v16.8h, v28.8h, v3.8h                       #! PC = 0x411c4c *)
mull %mdc %v16 %v28 %v3; cast %v16@int16[8] %v16;
(* ldr	q5, [x10, #80]                              #! EA = L0x414c10; Value = 0xfca9fca9fe30fe30; PC = 0x411c50 *)
mov %v5 [L0x414c10,L0x414c12,L0x414c14,L0x414c16,L0x414c18,L0x414c1a,L0x414c1c,L0x414c1e];
(* sub	v31.8h, v27.8h, v19.8h                      #! PC = 0x411c54 *)
sub %v31 %v27 %v19;
(* mul	v17.8h, v30.8h, v3.8h                       #! PC = 0x411c58 *)
mull %mdc %v17 %v30 %v3; cast %v17@int16[8] %v17;
(* ldr	q6, [x10, #96]                              #! EA = L0x414c20; Value = 0xf794f79401450145; PC = 0x411c5c *)
mov %v6 [L0x414c20,L0x414c22,L0x414c24,L0x414c26,L0x414c28,L0x414c2a,L0x414c2c,L0x414c2e];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411c60 *)
add %v25 %v25 %v18;
(* sqrdmulh	v28.8h, v28.8h, v2.8h                  #! PC = 0x411c64 *)
smulj %LO %v28 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v28 %LO11 %LO01;
(* ldr	q7, [x10, #112]                             #! EA = L0x414c30; Value = 0xff25ff2500210021; PC = 0x411c68 *)
mov %v7 [L0x414c30,L0x414c32,L0x414c34,L0x414c36,L0x414c38,L0x414c3a,L0x414c3c,L0x414c3e];
(* add	v27.8h, v27.8h, v19.8h                      #! PC = 0x411c6c *)
add %v27 %v27 %v19;
(* sqrdmulh	v30.8h, v30.8h, v2.8h                  #! PC = 0x411c70 *)
smulj %LO %v30 %v2;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v28.8h, v0.h[0]                     #! PC = 0x411c74 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v28 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411c78 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v28o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [21], algebra solver isl] && true;

assume eqmod %v16 (%v28o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [21]] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
       %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
       %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
       %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
       %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
       %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
       %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
       %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
       %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 23 23 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly X [L0xffffffffc4c4,L0xffffffffc4c6]+X**8*poly X [L0xffffffffc4d4,L0xffffffffc4d6])
          [Q, X**8 - 17**52] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly X [L0xffffffffc5c4,L0xffffffffc5c6]+X**8*poly X [L0xffffffffc5d4,L0xffffffffc5d6])
          [Q, X**8 - 17**60] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly X [L0xffffffffc4e4,L0xffffffffc4e6]+X**8*poly X [L0xffffffffc4f4,L0xffffffffc4f6])
          [Q, X**8 - 17**116] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly X [L0xffffffffc5e4,L0xffffffffc5e6]+X**8*poly X [L0xffffffffc5f4,L0xffffffffc5f6])
          [Q, X**8 - 17**124] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly X [L0xffffffffc4cc,L0xffffffffc4ce]+X**8*poly X [L0xffffffffc4dc,L0xffffffffc4de])
          [Q, X**8 - 17**52] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly X [L0xffffffffc5cc,L0xffffffffc5ce]+X**8*poly X [L0xffffffffc5dc,L0xffffffffc5de])
          [Q, X**8 - 17**60] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly X [L0xffffffffc4ec,L0xffffffffc4ee]+X**8*poly X [L0xffffffffc4fc,L0xffffffffc4fe])
          [Q, X**8 - 17**116] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly X [L0xffffffffc5ec,L0xffffffffc5ee]+X**8*poly X [L0xffffffffc5fc,L0xffffffffc5fe])
          [Q, X**8 - 17**124] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly X [L0xffffffffc4c4,L0xffffffffc4c6]+X**8*poly X [L0xffffffffc4d4,L0xffffffffc4d6])
          [Q, X**8 - 17**180] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly X [L0xffffffffc5c4,L0xffffffffc5c6]+X**8*poly X [L0xffffffffc5d4,L0xffffffffc5d6])
          [Q, X**8 - 17**188] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly X [L0xffffffffc4e4,L0xffffffffc4e6]+X**8*poly X [L0xffffffffc4f4,L0xffffffffc4f6])
          [Q, X**8 - 17**244] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly X [L0xffffffffc5e4,L0xffffffffc5e6]+X**8*poly X [L0xffffffffc5f4,L0xffffffffc5f6])
          [Q, X**8 - 17**252] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly X [L0xffffffffc4cc,L0xffffffffc4ce]+X**8*poly X [L0xffffffffc4dc,L0xffffffffc4de])
          [Q, X**8 - 17**180] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly X [L0xffffffffc5cc,L0xffffffffc5ce]+X**8*poly X [L0xffffffffc5dc,L0xffffffffc5de])
          [Q, X**8 - 17**188] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly X [L0xffffffffc4ec,L0xffffffffc4ee]+X**8*poly X [L0xffffffffc4fc,L0xffffffffc4fe])
          [Q, X**8 - 17**244] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly X [L0xffffffffc5ec,L0xffffffffc5ee]+X**8*poly X [L0xffffffffc5fc,L0xffffffffc5fe])
          [Q, X**8 - 17**252] /\
    eqmod %v16 (%v28o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o12 * %v3) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v25 /\
    %v25<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v27 /\
    %v27<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v29 /\
    %v29<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v31 /\
    %v31<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]    
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
[5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v25 /\
    %v25<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v27 /\
    %v27<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v29 /\
    %v29<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v31 /\
    %v31<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [cuts [21]];

ghost %v27o13@int16[8],%v31o13@int16[8]:
      %v27o13 = %v27 /\ %v31o13 = %v31
   && %v27o13 = %v27 /\ %v31o13 = %v31;


(* ldr	q8, [x10, #128]                             #! EA = L0x414c40; Value = 0xc236c236241b241b; PC = 0x411c7c *)
mov %v8 [L0x414c40,L0x414c42,L0x414c44,L0x414c46,L0x414c48,L0x414c4a,L0x414c4c,L0x414c4e];
(* sub	v28.8h, v24.8h, v16.8h                      #! PC = 0x411c80 *)
sub %v28 %v24 %v16;
(* mul	v18.8h, v27.8h, v5.8h                       #! PC = 0x411c84 *)
mull %mdc %v18 %v27 %v5; cast %v18@int16[8] %v18;
(* ldr	q9, [x10, #144]                             #! EA = L0x414c50; Value = 0xf9b9f9b903ab03ab; PC = 0x411c88 *)
mov %v9 [L0x414c50,L0x414c52,L0x414c54,L0x414c56,L0x414c58,L0x414c5a,L0x414c5c,L0x414c5e];
(* sub	v30.8h, v26.8h, v17.8h                      #! PC = 0x411c8c *)
sub %v30 %v26 %v17;
(* mul	v19.8h, v31.8h, v7.8h                       #! PC = 0x411c90 *)
mull %mdc %v19 %v31 %v7; cast %v19@int16[8] %v19;
(* ldr	q10, [x10, #160]                            #! EA = L0x414c60; Value = 0x2e9a2e9ad8bed8be; PC = 0x411c94 *)
mov %v10 [L0x414c60,L0x414c62,L0x414c64,L0x414c66,L0x414c68,L0x414c6a,L0x414c6c,L0x414c6e];
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411c98 *)
add %v24 %v24 %v16;
(* sqrdmulh	v27.8h, v27.8h, v4.8h                  #! PC = 0x411c9c *)
smulj %LO %v27 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* ldr	q11, [x10, #176]                            #! EA = L0x414c70; Value = 0x04bc04bcfc03fc03; PC = 0x411ca0 *)
mov %v11 [L0x414c70,L0x414c72,L0x414c74,L0x414c76,L0x414c78,L0x414c7a,L0x414c7c,L0x414c7e];
(* add	v26.8h, v26.8h, v17.8h                      #! PC = 0x411ca4 *)
add %v26 %v26 %v17;
(* sqrdmulh	v31.8h, v31.8h, v6.8h                  #! PC = 0x411ca8 *)
smulj %LO %v31 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v18.8h, v27.8h, v0.h[0]                     #! PC = 0x411cac *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v31.8h, v0.h[0]                     #! PC = 0x411cb0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;



assert eqmod %v18 (%v27o13 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o13 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [21], algebra solver isl] && true;

assume eqmod %v18 (%v27o13 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v31o13 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
       prove with [algebra solver isl, cuts [21]] && true;
assume [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
       %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
       %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
       %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
       [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
       %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    && [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
       %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
       %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
       %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
       [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
       %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2];

(* CUT 24 24 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly X [L0xffffffffc4c0,L0xffffffffc4c2]+X**8*poly X [L0xffffffffc4d0,L0xffffffffc4d2])
          [Q, X**8 - 17**52] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly X [L0xffffffffc5c0,L0xffffffffc5c2]+X**8*poly X [L0xffffffffc5d0,L0xffffffffc5d2])
          [Q, X**8 - 17**60] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly X [L0xffffffffc4e0,L0xffffffffc4e2]+X**8*poly X [L0xffffffffc4f0,L0xffffffffc4f2])
          [Q, X**8 - 17**116] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly X [L0xffffffffc5e0,L0xffffffffc5e2]+X**8*poly X [L0xffffffffc5f0,L0xffffffffc5f2])
          [Q, X**8 - 17**124] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly X [L0xffffffffc4c8,L0xffffffffc4ca]+X**8*poly X [L0xffffffffc4d8,L0xffffffffc4da])
          [Q, X**8 - 17**52] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly X [L0xffffffffc5c8,L0xffffffffc5ca]+X**8*poly X [L0xffffffffc5d8,L0xffffffffc5da])
          [Q, X**8 - 17**60] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly X [L0xffffffffc4e8,L0xffffffffc4ea]+X**8*poly X [L0xffffffffc4f8,L0xffffffffc4fa])
          [Q, X**8 - 17**116] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly X [L0xffffffffc5e8,L0xffffffffc5ea]+X**8*poly X [L0xffffffffc5f8,L0xffffffffc5fa])
          [Q, X**8 - 17**124] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly X [L0xffffffffc4c0,L0xffffffffc4c2]+X**8*poly X [L0xffffffffc4d0,L0xffffffffc4d2])
          [Q, X**8 - 17**180] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly X [L0xffffffffc5c0,L0xffffffffc5c2]+X**8*poly X [L0xffffffffc5d0,L0xffffffffc5d2])
          [Q, X**8 - 17**188] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly X [L0xffffffffc4e0,L0xffffffffc4e2]+X**8*poly X [L0xffffffffc4f0,L0xffffffffc4f2])
          [Q, X**8 - 17**244] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly X [L0xffffffffc5e0,L0xffffffffc5e2]+X**8*poly X [L0xffffffffc5f0,L0xffffffffc5f2])
          [Q, X**8 - 17**252] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly X [L0xffffffffc4c8,L0xffffffffc4ca]+X**8*poly X [L0xffffffffc4d8,L0xffffffffc4da])
          [Q, X**8 - 17**180] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly X [L0xffffffffc5c8,L0xffffffffc5ca]+X**8*poly X [L0xffffffffc5d8,L0xffffffffc5da])
          [Q, X**8 - 17**188] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly X [L0xffffffffc4e8,L0xffffffffc4ea]+X**8*poly X [L0xffffffffc4f8,L0xffffffffc4fa])
          [Q, X**8 - 17**244] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly X [L0xffffffffc5e8,L0xffffffffc5ea]+X**8*poly X [L0xffffffffc5f8,L0xffffffffc5fa])
          [Q, X**8 - 17**252] /\
    eqmod %v18 (%v27o13 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v31o13 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v24 /\
    %v24<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v26 /\
    %v26<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v28 /\
    %v28<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2] /\
    [5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2,5*NQ+NQ2]<%v30 /\
    %v30<[5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2,5*Q+Q2]
    prove with [all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v24 /\
    %v24<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v26 /\
    %v26<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v28 /\
    %v28<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2] /\
    [5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2,5@16*NQ+NQ2]<s%v30 /\
    %v30<s[5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2,5@16*Q+Q2]
    prove with [cuts [21]];

ghost %v26o13@int16[8],%v30o13@int16[8]:
      %v26o13 = %v26 /\ %v30o13 = %v30
   && %v26o13 = %v26 /\ %v30o13 = %v30;



(* ldr	q12, [x10, #192]                            #! EA = L0x414c80; Value = 0xc80ec80eddb4ddb4; PC = 0x411cb4 *)
mov %v12 [L0x414c80,L0x414c82,L0x414c84,L0x414c86,L0x414c88,L0x414c8a,L0x414c8c,L0x414c8e];
(* sub	v27.8h, v25.8h, v18.8h                      #! PC = 0x411cb8 *)
sub %v27 %v25 %v18;
(* mul	v16.8h, v26.8h, v5.8h                       #! PC = 0x411cbc *)
mull %mdc %v16 %v26 %v5; cast %v16@int16[8] %v16;
(* ldr	q13, [x10, #208]                            #! EA = L0x414c90; Value = 0xfa51fa51fc84fc84; PC = 0x411cc0 *)
mov %v13 [L0x414c90,L0x414c92,L0x414c94,L0x414c96,L0x414c98,L0x414c9a,L0x414c9c,L0x414c9e];
(* sub	v31.8h, v29.8h, v19.8h                      #! PC = 0x411cc4 *)
sub %v31 %v29 %v19;
(* mul	v17.8h, v30.8h, v7.8h                       #! PC = 0x411cc8 *)
mull %mdc %v17 %v30 %v7; cast %v17@int16[8] %v17;
(* ldr	q14, [x10, #224]                            #! EA = L0x414ca0; Value = 0x27912791dbd2dbd2; PC = 0x411ccc *)
mov %v14 [L0x414ca0,L0x414ca2,L0x414ca4,L0x414ca6,L0x414ca8,L0x414caa,L0x414cac,L0x414cae];
(* add	v25.8h, v25.8h, v18.8h                      #! PC = 0x411cd0 *)
add %v25 %v25 %v18;
(* sqrdmulh	v26.8h, v26.8h, v4.8h                  #! PC = 0x411cd4 *)
smulj %LO %v26 %v4;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v26 %LO11 %LO01;
(* ldr	q15, [x10, #240]                            #! EA = L0x414cb0; Value = 0x04050405fc53fc53; PC = 0x411cd8 *)
mov %v15 [L0x414cb0,L0x414cb2,L0x414cb4,L0x414cb6,L0x414cb8,L0x414cba,L0x414cbc,L0x414cbe];
(* add	v29.8h, v29.8h, v19.8h                      #! PC = 0x411cdc *)
add %v29 %v29 %v19;
(* sqrdmulh	v30.8h, v30.8h, v6.8h                  #! PC = 0x411ce0 *)
smulj %LO %v30 %v6;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v30 %LO11 %LO01;
(* mls	v16.8h, v26.8h, v0.h[0]                     #! PC = 0x411ce4 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v26 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v30.8h, v0.h[0]                     #! PC = 0x411ce8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v30 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v26o13 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o13 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [21], algebra solver isl] && true;

assume eqmod %v16 (%v26o13 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v30o13 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [23]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
       %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
       %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
       %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
       %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
       %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
       %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
       %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
       %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 25 25 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v25[0],%v25[1]])
          (poly (X**4)
           [L0xffffffffc4c4+L0xffffffffc4c6*X,L0xffffffffc4cc+L0xffffffffc4ce*X,
            L0xffffffffc4d4+L0xffffffffc4d6*X,L0xffffffffc4dc+L0xffffffffc4de*X])
          [Q, X**4 - 17**26] /\
    eqmod (poly X [%v25[2],%v25[3]])
          (poly (X**4)
           [L0xffffffffc5c4+L0xffffffffc5c6*X,L0xffffffffc5cc+L0xffffffffc5ce*X,
            L0xffffffffc5d4+L0xffffffffc5d6*X,L0xffffffffc5dc+L0xffffffffc5de*X])
          [Q, X**4 - 17**30] /\
    eqmod (poly X [%v25[4],%v25[5]])
          (poly (X**4)
           [L0xffffffffc4e4+L0xffffffffc4e6*X,L0xffffffffc4ec+L0xffffffffc4ee*X,
            L0xffffffffc4f4+L0xffffffffc4f6*X,L0xffffffffc4fc+L0xffffffffc4fe*X])
          [Q, X**4 - 17**58] /\
    eqmod (poly X [%v25[6],%v25[7]])
          (poly (X**4)
           [L0xffffffffc5e4+L0xffffffffc5e6*X,L0xffffffffc5ec+L0xffffffffc5ee*X,
            L0xffffffffc5f4+L0xffffffffc5f6*X,L0xffffffffc5fc+L0xffffffffc5fe*X])
          [Q, X**4 - 17**62] /\
    eqmod (poly X [%v29[0],%v29[1]])
          (poly (X**4)
           [L0xffffffffc4c4+L0xffffffffc4c6*X,L0xffffffffc4cc+L0xffffffffc4ce*X,
            L0xffffffffc4d4+L0xffffffffc4d6*X,L0xffffffffc4dc+L0xffffffffc4de*X])
          [Q, X**4 - 17**90] /\
    eqmod (poly X [%v29[2],%v29[3]])
          (poly (X**4)
           [L0xffffffffc5c4+L0xffffffffc5c6*X,L0xffffffffc5cc+L0xffffffffc5ce*X,
            L0xffffffffc5d4+L0xffffffffc5d6*X,L0xffffffffc5dc+L0xffffffffc5de*X])
          [Q, X**4 - 17**94] /\
    eqmod (poly X [%v29[4],%v29[5]])
          (poly (X**4)
           [L0xffffffffc4e4+L0xffffffffc4e6*X,L0xffffffffc4ec+L0xffffffffc4ee*X,
            L0xffffffffc4f4+L0xffffffffc4f6*X,L0xffffffffc4fc+L0xffffffffc4fe*X])
          [Q, X**4 - 17**122] /\
    eqmod (poly X [%v29[6],%v29[7]])
          (poly (X**4)
           [L0xffffffffc5e4+L0xffffffffc5e6*X,L0xffffffffc5ec+L0xffffffffc5ee*X,
            L0xffffffffc5f4+L0xffffffffc5f6*X,L0xffffffffc5fc+L0xffffffffc5fe*X])
          [Q, X**4 - 17**126] /\
    eqmod (poly X [%v27[0],%v27[1]])
          (poly (X**4)
           [L0xffffffffc4c4+L0xffffffffc4c6*X,L0xffffffffc4cc+L0xffffffffc4ce*X,
            L0xffffffffc4d4+L0xffffffffc4d6*X,L0xffffffffc4dc+L0xffffffffc4de*X])
          [Q, X**4 - 17**154] /\
    eqmod (poly X [%v27[2],%v27[3]])
          (poly (X**4)
           [L0xffffffffc5c4+L0xffffffffc5c6*X,L0xffffffffc5cc+L0xffffffffc5ce*X,
            L0xffffffffc5d4+L0xffffffffc5d6*X,L0xffffffffc5dc+L0xffffffffc5de*X])
          [Q, X**4 - 17**158] /\
    eqmod (poly X [%v27[4],%v27[5]])
          (poly (X**4)
           [L0xffffffffc4e4+L0xffffffffc4e6*X,L0xffffffffc4ec+L0xffffffffc4ee*X,
            L0xffffffffc4f4+L0xffffffffc4f6*X,L0xffffffffc4fc+L0xffffffffc4fe*X])
          [Q, X**4 - 17**186] /\
    eqmod (poly X [%v27[6],%v27[7]])
          (poly (X**4)
           [L0xffffffffc5e4+L0xffffffffc5e6*X,L0xffffffffc5ec+L0xffffffffc5ee*X,
            L0xffffffffc5f4+L0xffffffffc5f6*X,L0xffffffffc5fc+L0xffffffffc5fe*X])
          [Q, X**4 - 17**190] /\
    eqmod (poly X [%v31[0],%v31[1]])
          (poly (X**4)
           [L0xffffffffc4c4+L0xffffffffc4c6*X,L0xffffffffc4cc+L0xffffffffc4ce*X,
            L0xffffffffc4d4+L0xffffffffc4d6*X,L0xffffffffc4dc+L0xffffffffc4de*X])
          [Q, X**4 - 17**218] /\
    eqmod (poly X [%v31[2],%v31[3]])
          (poly (X**4)
           [L0xffffffffc5c4+L0xffffffffc5c6*X,L0xffffffffc5cc+L0xffffffffc5ce*X,
            L0xffffffffc5d4+L0xffffffffc5d6*X,L0xffffffffc5dc+L0xffffffffc5de*X])
          [Q, X**4 - 17**222] /\
    eqmod (poly X [%v31[4],%v31[5]])
          (poly (X**4)
           [L0xffffffffc4e4+L0xffffffffc4e6*X,L0xffffffffc4ec+L0xffffffffc4ee*X,
            L0xffffffffc4f4+L0xffffffffc4f6*X,L0xffffffffc4fc+L0xffffffffc4fe*X])
          [Q, X**4 - 17**250] /\
    eqmod (poly X [%v31[6],%v31[7]])
          (poly (X**4)
           [L0xffffffffc5e4+L0xffffffffc5e6*X,L0xffffffffc5ec+L0xffffffffc5ee*X,
            L0xffffffffc5f4+L0xffffffffc5f6*X,L0xffffffffc5fc+L0xffffffffc5fe*X])
          [Q, X**4 - 17**254] /\
    eqmod %v16 (%v26o13 * %v5) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v17 (%v30o13 * %v7) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v25 /\
    %v25<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v27 /\
    %v27<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v29 /\
    %v29<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v31 /\
    %v31<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [23], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v25 /\
    %v25<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v27 /\
    %v27<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v29 /\
    %v29<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v31 /\
    %v31<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [cuts [21, 23]];

ghost %v25o12@int16[8],%v27o12@int16[8]:
      %v25o12 = %v25 /\ %v27o12 = %v27
   && %v25o12 = %v25 /\ %v27o12 = %v27;


(* add	x10, x10, #0x100                            #! PC = 0x411cec *)
adds dc x10 x10 0x100@uint64;
(* sub	v26.8h, v24.8h, v16.8h                      #! PC = 0x411cf0 *)
sub %v26 %v24 %v16;
(* mul	v18.8h, v25.8h, v9.8h                       #! PC = 0x411cf4 *)
mull %mdc %v18 %v25 %v9; cast %v18@int16[8] %v18;
(* sub	v30.8h, v28.8h, v17.8h                      #! PC = 0x411cf8 *)
sub %v30 %v28 %v17;
(* mul	v19.8h, v27.8h, v11.8h                      #! PC = 0x411cfc *)
mull %mdc %v19 %v27 %v11; cast %v19@int16[8] %v19;
(* add	v24.8h, v24.8h, v16.8h                      #! PC = 0x411d00 *)
add %v24 %v24 %v16;
(* sqrdmulh	v25.8h, v25.8h, v8.8h                  #! PC = 0x411d04 *)
smulj %LO %v25 %v8;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v25 %LO11 %LO01;
(* add	v28.8h, v28.8h, v17.8h                      #! PC = 0x411d08 *)
add %v28 %v28 %v17;
(* sqrdmulh	v27.8h, v27.8h, v10.8h                 #! PC = 0x411d0c *)
smulj %LO %v27 %v10;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v27 %LO11 %LO01;
(* mls	v18.8h, v25.8h, v0.h[0]                     #! PC = 0x411d10 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v25 %mls;
cast %mls@int16[8] %mls; subc %mdc %v18 %v18 %mls;
(* mls	v19.8h, v27.8h, v0.h[0]                     #! PC = 0x411d14 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v27 %mls;
cast %mls@int16[8] %mls; subc %mdc %v19 %v19 %mls;


assert eqmod %v18 (%v25o12 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o12 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [21], algebra solver isl] && true;

assume eqmod %v18 (%v25o12 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v19 (%v27o12 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q];

assert [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
       prove with [algebra solver isl, cuts [24]] && true;
assume [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
       %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
       %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
       %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
       [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
       %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    && [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
       %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
       %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
       %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
       [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
       %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2];

(* CUT 26 26 *)
cut Q = 3329 /\ Q2 = 1665 /\ NQ = -3329 /\ NQ2 = -1665 /\
    eqmod (poly X [%v24[0],%v24[1]])
          (poly (X**4)
           [L0xffffffffc4c0+L0xffffffffc4c2*X,L0xffffffffc4c8+L0xffffffffc4ca*X,
            L0xffffffffc4d0+L0xffffffffc4d2*X,L0xffffffffc4d8+L0xffffffffc4da*X])
          [Q, X**4 - 17**26] /\
    eqmod (poly X [%v24[2],%v24[3]])
          (poly (X**4)
           [L0xffffffffc5c0+L0xffffffffc5c2*X,L0xffffffffc5c8+L0xffffffffc5ca*X,
            L0xffffffffc5d0+L0xffffffffc5d2*X,L0xffffffffc5d8+L0xffffffffc5da*X])
          [Q, X**4 - 17**30] /\
    eqmod (poly X [%v24[4],%v24[5]])
          (poly (X**4)
           [L0xffffffffc4e0+L0xffffffffc4e2*X,L0xffffffffc4e8+L0xffffffffc4ea*X,
            L0xffffffffc4f0+L0xffffffffc4f2*X,L0xffffffffc4f8+L0xffffffffc4fa*X])
          [Q, X**4 - 17**58] /\
    eqmod (poly X [%v24[6],%v24[7]])
          (poly (X**4)
           [L0xffffffffc5e0+L0xffffffffc5e2*X,L0xffffffffc5e8+L0xffffffffc5ea*X,
            L0xffffffffc5f0+L0xffffffffc5f2*X,L0xffffffffc5f8+L0xffffffffc5fa*X])
          [Q, X**4 - 17**62] /\
    eqmod (poly X [%v28[0],%v28[1]])
          (poly (X**4)
           [L0xffffffffc4c0+L0xffffffffc4c2*X,L0xffffffffc4c8+L0xffffffffc4ca*X,
            L0xffffffffc4d0+L0xffffffffc4d2*X,L0xffffffffc4d8+L0xffffffffc4da*X])
          [Q, X**4 - 17**90] /\
    eqmod (poly X [%v28[2],%v28[3]])
          (poly (X**4)
           [L0xffffffffc5c0+L0xffffffffc5c2*X,L0xffffffffc5c8+L0xffffffffc5ca*X,
            L0xffffffffc5d0+L0xffffffffc5d2*X,L0xffffffffc5d8+L0xffffffffc5da*X])
          [Q, X**4 - 17**94] /\
    eqmod (poly X [%v28[4],%v28[5]])
          (poly (X**4)
           [L0xffffffffc4e0+L0xffffffffc4e2*X,L0xffffffffc4e8+L0xffffffffc4ea*X,
            L0xffffffffc4f0+L0xffffffffc4f2*X,L0xffffffffc4f8+L0xffffffffc4fa*X])
          [Q, X**4 - 17**122] /\
    eqmod (poly X [%v28[6],%v28[7]])
          (poly (X**4)
           [L0xffffffffc5e0+L0xffffffffc5e2*X,L0xffffffffc5e8+L0xffffffffc5ea*X,
            L0xffffffffc5f0+L0xffffffffc5f2*X,L0xffffffffc5f8+L0xffffffffc5fa*X])
          [Q, X**4 - 17**126] /\
    eqmod (poly X [%v26[0],%v26[1]])
          (poly (X**4)
           [L0xffffffffc4c0+L0xffffffffc4c2*X,L0xffffffffc4c8+L0xffffffffc4ca*X,
            L0xffffffffc4d0+L0xffffffffc4d2*X,L0xffffffffc4d8+L0xffffffffc4da*X])
          [Q, X**4 - 17**154] /\
    eqmod (poly X [%v26[2],%v26[3]])
          (poly (X**4)
           [L0xffffffffc5c0+L0xffffffffc5c2*X,L0xffffffffc5c8+L0xffffffffc5ca*X,
            L0xffffffffc5d0+L0xffffffffc5d2*X,L0xffffffffc5d8+L0xffffffffc5da*X])
          [Q, X**4 - 17**158] /\
    eqmod (poly X [%v26[4],%v26[5]])
          (poly (X**4)
           [L0xffffffffc4e0+L0xffffffffc4e2*X,L0xffffffffc4e8+L0xffffffffc4ea*X,
            L0xffffffffc4f0+L0xffffffffc4f2*X,L0xffffffffc4f8+L0xffffffffc4fa*X])
          [Q, X**4 - 17**186] /\
    eqmod (poly X [%v26[6],%v26[7]])
          (poly (X**4)
           [L0xffffffffc5e0+L0xffffffffc5e2*X,L0xffffffffc5e8+L0xffffffffc5ea*X,
            L0xffffffffc5f0+L0xffffffffc5f2*X,L0xffffffffc5f8+L0xffffffffc5fa*X])
          [Q, X**4 - 17**190] /\
    eqmod (poly X [%v30[0],%v30[1]])
          (poly (X**4)
           [L0xffffffffc4c0+L0xffffffffc4c2*X,L0xffffffffc4c8+L0xffffffffc4ca*X,
            L0xffffffffc4d0+L0xffffffffc4d2*X,L0xffffffffc4d8+L0xffffffffc4da*X])
          [Q, X**4 - 17**218] /\
    eqmod (poly X [%v30[2],%v30[3]])
          (poly (X**4)
           [L0xffffffffc5c0+L0xffffffffc5c2*X,L0xffffffffc5c8+L0xffffffffc5ca*X,
            L0xffffffffc5d0+L0xffffffffc5d2*X,L0xffffffffc5d8+L0xffffffffc5da*X])
          [Q, X**4 - 17**222] /\
    eqmod (poly X [%v30[4],%v30[5]])
          (poly (X**4)
           [L0xffffffffc4e0+L0xffffffffc4e2*X,L0xffffffffc4e8+L0xffffffffc4ea*X,
            L0xffffffffc4f0+L0xffffffffc4f2*X,L0xffffffffc4f8+L0xffffffffc4fa*X])
          [Q, X**4 - 17**250] /\
    eqmod (poly X [%v30[6],%v30[7]])
          (poly (X**4)
           [L0xffffffffc5e0+L0xffffffffc5e2*X,L0xffffffffc5e8+L0xffffffffc5ea*X,
            L0xffffffffc5f0+L0xffffffffc5f2*X,L0xffffffffc5f8+L0xffffffffc5fa*X])
          [Q, X**4 - 17**254] /\
    eqmod %v18 (%v25o12 * %v9) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    eqmod %v19 (%v27o12 * %v11) [Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v18 /\ %v18<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v19 /\ %v19<[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v24 /\
    %v24<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v26 /\
    %v26<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v28 /\
    %v28<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2] /\
    [6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2,6*NQ+NQ2]<%v30 /\
    %v30<[6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2,6*Q+Q2]
    prove with [cuts [24], all ghosts]
 && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v18 /\ %v18<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v19 /\ %v19<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v24 /\
    %v24<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v26 /\
    %v26<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v28 /\
    %v28<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2] /\
    [6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2,6@16*NQ+NQ2]<s%v30 /\
    %v30<s[6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2,6@16*Q+Q2]    
    prove with [cuts [21, 24]];

ghost %v29o14@int16[8],%v31o14@int16[8]:
      %v29o14 = %v29 /\ %v31o14 = %v31
   && %v29o14 = %v29 /\ %v31o14 = %v31;


(* sub	v25.8h, v24.8h, v18.8h                      #! PC = 0x411d18 *)
sub %v25 %v24 %v18;
(* mul	v16.8h, v29.8h, v13.8h                      #! PC = 0x411d1c *)
mull %mdc %v16 %v29 %v13; cast %v16@int16[8] %v16;
(* sub	v27.8h, v26.8h, v19.8h                      #! PC = 0x411d20 *)
sub %v27 %v26 %v19;
(* mul	v17.8h, v31.8h, v15.8h                      #! PC = 0x411d24 *)
mull %mdc %v17 %v31 %v15; cast %v17@int16[8] %v17;
(* add	v24.8h, v24.8h, v18.8h                      #! PC = 0x411d28 *)
add %v24 %v24 %v18;
(* sqrdmulh	v29.8h, v29.8h, v12.8h                 #! PC = 0x411d2c *)
smulj %LO %v29 %v12;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v29 %LO11 %LO01;
(* add	v26.8h, v26.8h, v19.8h                      #! PC = 0x411d30 *)
add %v26 %v26 %v19;
(* sqrdmulh	v31.8h, v31.8h, v14.8h                 #! PC = 0x411d34 *)
smulj %LO %v31 %v14;
ssplit %LO1 %LO0 %LO 15; usplit %LO00 %dc %LO0 14;
vpc %LO01@sint16[8] %LO00; vpc %LO11@sint16[8] %LO1;
add %v31 %LO11 %LO01;
(* mls	v16.8h, v29.8h, v0.h[0]                     #! PC = 0x411d38 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v29 %mls;
cast %mls@int16[8] %mls; subc %mdc %v16 %v16 %mls;
(* mls	v17.8h, v31.8h, v0.h[0]                     #! PC = 0x411d3c *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v31 %mls;
cast %mls@int16[8] %mls; subc %mdc %v17 %v17 %mls;


assert eqmod %v16 (%v29o14 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o14 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [cuts [21], algebra solver isl] && true;
assume eqmod %v16 (%v29o14 * %v13) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v17 (%v31o14 * %v15) [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v16 /\ %v16<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v17 /\ %v17<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v16 /\ %v16<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v17 /\ %v17<s[Q,Q,Q,Q,Q,Q,Q,Q];

ghost %v24o15@int16[8],%v25o15@int16[8],%v26o15@int16[8],%v27o15@int16[8]:
      %v24o15=%v24 /\ %v25o15=%v25 /\ %v26o15=%v26 /\ %v27o15=%v27
   && %v24o15=%v24 /\ %v25o15=%v25 /\ %v26o15=%v26 /\ %v27o15=%v27;

(* sqdmulh	v20.8h, v24.8h, v0.h[1]                 #! PC = 0x411d40 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v24 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v20@sint16[8] %LO0;
(* sub	v29.8h, v28.8h, v16.8h                      #! PC = 0x411d44 *)
sub %v29 %v28 %v16;
(* sqdmulh	v21.8h, v25.8h, v0.h[1]                 #! PC = 0x411d48 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v25 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v21@sint16[8] %LO0;
(* sub	v31.8h, v30.8h, v17.8h                      #! PC = 0x411d4c *)
sub %v31 %v30 %v17;
(* sqdmulh	v22.8h, v26.8h, v0.h[1]                 #! PC = 0x411d50 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v26 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v22@sint16[8] %LO0;
(* add	v28.8h, v28.8h, v16.8h                      #! PC = 0x411d54 *)
add %v28 %v28 %v16;
(* sqdmulh	v23.8h, v27.8h, v0.h[1]                 #! PC = 0x411d58 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v27 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v23@sint16[8] %LO0;
(* add	v30.8h, v30.8h, v17.8h                      #! PC = 0x411d5c *)
add %v30 %v30 %v17;

ghost %v28o15@int16[8],%v29o15@int16[8],%v30o15@int16[8],%v31o15@int16[8]:
      %v28o15=%v28 /\ %v29o15=%v29 /\ %v30o15=%v30 /\ %v31o15=%v31
   && %v28o15=%v28 /\ %v29o15=%v29 /\ %v30o15=%v30 /\ %v31o15=%v31;

(* sqdmulh	v16.8h, v28.8h, v0.h[1]                 #! PC = 0x411d60 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v28 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v16@sint16[8] %LO0;
(* srshr	v20.8h, v20.8h, #11                       #! PC = 0x411d64 *)
split %HI %LO %v20 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v20 %HI %LO0;
(* sqdmulh	v17.8h, v29.8h, v0.h[1]                 #! PC = 0x411d68 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v29 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v17@sint16[8] %LO0;
(* srshr	v21.8h, v21.8h, #11                       #! PC = 0x411d6c *)
split %HI %LO %v21 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v21 %HI %LO0;
(* sqdmulh	v18.8h, v30.8h, v0.h[1]                 #! PC = 0x411d70 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v30 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v18@sint16[8] %LO0;
(* srshr	v22.8h, v22.8h, #11                       #! PC = 0x411d74 *)
split %HI %LO %v22 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v22 %HI %LO0;
(* sqdmulh	v19.8h, v31.8h, v0.h[1]                 #! PC = 0x411d78 *)
broadcast %sqdmulh 8 [%v0[1]]; smulj %LO %v31 %sqdmulh;
ssplit %LO0 %dc %LO 15; vpc %v19@sint16[8] %LO0;
(* srshr	v23.8h, v23.8h, #11                       #! PC = 0x411d7c *)
split %HI %LO %v23 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v23 %HI %LO0;
(* mls	v24.8h, v20.8h, v0.h[0]                     #! PC = 0x411d80 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v20 %mls;
cast %mls@int16[8] %mls; subc %mdc %v24 %v24 %mls;
(* srshr	v16.8h, v16.8h, #11                       #! PC = 0x411d84 *)
split %HI %LO %v16 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v16 %HI %LO0;
(* mls	v25.8h, v21.8h, v0.h[0]                     #! PC = 0x411d88 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v21 %mls;
cast %mls@int16[8] %mls; subc %mdc %v25 %v25 %mls;
(* srshr	v17.8h, v17.8h, #11                       #! PC = 0x411d8c *)
split %HI %LO %v17 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v17 %HI %LO0;
(* mls	v26.8h, v22.8h, v0.h[0]                     #! PC = 0x411d90 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v22 %mls;
cast %mls@int16[8] %mls; subc %mdc %v26 %v26 %mls;
(* srshr	v18.8h, v18.8h, #11                       #! PC = 0x411d94 *)
split %HI %LO %v18 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v18 %HI %LO0;
(* mls	v27.8h, v23.8h, v0.h[0]                     #! PC = 0x411d98 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v23 %mls;
cast %mls@int16[8] %mls; subc %mdc %v27 %v27 %mls;
(* srshr	v19.8h, v19.8h, #11                       #! PC = 0x411d9c *)
split %HI %LO %v19 11; split %LO1 %dc %LO (11-1);
cast %LO0@sint16[8] %LO1; add %v19 %HI %LO0;
(* mls	v28.8h, v16.8h, v0.h[0]                     #! PC = 0x411da0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v16 %mls;
cast %mls@int16[8] %mls; subc %mdc %v28 %v28 %mls;
(* trn1	v20.4s, v24.4s, v25.4s                     #! PC = 0x411da4 *)
mov %v20@sint16[8] [%v24[0],%v24[1],%v25[0],%v25[1],%v24[4],%v24[5],%v25[4],%v25[5]];
(* mls	v29.8h, v17.8h, v0.h[0]                     #! PC = 0x411da8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v17 %mls;
cast %mls@int16[8] %mls; subc %mdc %v29 %v29 %mls;
(* trn2	v21.4s, v24.4s, v25.4s                     #! PC = 0x411dac *)
mov %v21@sint16[8] [%v24[2],%v24[3],%v25[2],%v25[3],%v24[6],%v24[7],%v25[6],%v25[7]];
(* mls	v30.8h, v18.8h, v0.h[0]                     #! PC = 0x411db0 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v18 %mls;
cast %mls@int16[8] %mls; subc %mdc %v30 %v30 %mls;
(* trn1	v22.4s, v26.4s, v27.4s                     #! PC = 0x411db4 *)
mov %v22@sint16[8] [%v26[0],%v26[1],%v27[0],%v27[1],%v26[4],%v26[5],%v27[4],%v27[5]];
(* mls	v31.8h, v19.8h, v0.h[0]                     #! PC = 0x411db8 *)
broadcast %mls 8 [%v0[0]]; mull %dc %mls %v19 %mls;
cast %mls@int16[8] %mls; subc %mdc %v31 %v31 %mls;

assert eqmod %v24 %v24o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
       prove with [algebra solver isl, cuts [21, 25]]
    && true;
assume eqmod %v24 %v24o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v25 %v25o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v26 %v26o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v27 %v27o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v28 %v28o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v29 %v29o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       eqmod %v30 %v30o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\ eqmod %v31 %v31o15 [Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v24 /\ %v24<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v25 /\ %v25<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v26 /\ %v26<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v27 /\ %v27<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v28 /\ %v28<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v29 /\ %v29<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v30 /\ %v30<[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<%v31 /\ %v31<[Q,Q,Q,Q,Q,Q,Q,Q]
    && [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v24 /\ %v24<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v25 /\ %v25<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v26 /\ %v26<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v27 /\ %v27<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v28 /\ %v28<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v29 /\ %v29<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v30 /\ %v30<s[Q,Q,Q,Q,Q,Q,Q,Q] /\
       [NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s%v31 /\ %v31<s[Q,Q,Q,Q,Q,Q,Q,Q];


(* trn2	v23.4s, v26.4s, v27.4s                     #! PC = 0x411dbc *)
mov %v23@sint16[8] [%v26[2],%v26[3],%v27[2],%v27[3],%v26[6],%v26[7],%v27[6],%v27[7]];
(* trn1	v24.2d, v20.2d, v22.2d                     #! PC = 0x411dc0 *)
mov %v24@sint16[8] [%v20[0],%v20[1],%v20[2],%v20[3],%v22[0],%v22[1],%v22[2],%v22[3]];
(* trn2	v26.2d, v20.2d, v22.2d                     #! PC = 0x411dc4 *)
mov %v26@sint16[8] [%v20[4],%v20[5],%v20[6],%v20[7],%v22[4],%v22[5],%v22[6],%v22[7]];
(* trn1	v25.2d, v21.2d, v23.2d                     #! PC = 0x411dc8 *)
mov %v25@sint16[8] [%v21[0],%v21[1],%v21[2],%v21[3],%v23[0],%v23[1],%v23[2],%v23[3]];
(* trn2	v27.2d, v21.2d, v23.2d                     #! PC = 0x411dcc *)
mov %v27@sint16[8] [%v21[4],%v21[5],%v21[6],%v21[7],%v23[4],%v23[5],%v23[6],%v23[7]];
(* str	q24, [x0]                                   #! EA = L0xffffffffc4c0; PC = 0x411dd0 *)
mov [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6,L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce] %v24;
(* trn1	v16.4s, v28.4s, v29.4s                     #! PC = 0x411dd4 *)
mov %v16@sint16[8] [%v28[0],%v28[1],%v29[0],%v29[1],%v28[4],%v28[5],%v29[4],%v29[5]];
(* trn2	v17.4s, v28.4s, v29.4s                     #! PC = 0x411dd8 *)
mov %v17@sint16[8] [%v28[2],%v28[3],%v29[2],%v29[3],%v28[6],%v28[7],%v29[6],%v29[7]];
(* str	q25, [x1]                                   #! EA = L0xffffffffc5c0; PC = 0x411ddc *)
mov [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6,L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce] %v25;
(* trn1	v18.4s, v30.4s, v31.4s                     #! PC = 0x411de0 *)
mov %v18@sint16[8] [%v30[0],%v30[1],%v31[0],%v31[1],%v30[4],%v30[5],%v31[4],%v31[5]];
(* trn2	v19.4s, v30.4s, v31.4s                     #! PC = 0x411de4 *)
mov %v19@sint16[8] [%v30[2],%v30[3],%v31[2],%v31[3],%v30[6],%v30[7],%v31[6],%v31[7]];
(* str	q26, [x0, #32]                              #! EA = L0xffffffffc4e0; PC = 0x411de8 *)
mov [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6,L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee] %v26;
(* trn1	v28.2d, v16.2d, v18.2d                     #! PC = 0x411dec *)
mov %v28@sint16[8] [%v16[0],%v16[1],%v16[2],%v16[3],%v18[0],%v18[1],%v18[2],%v18[3]];
(* trn2	v30.2d, v16.2d, v18.2d                     #! PC = 0x411df0 *)
mov %v30@sint16[8] [%v16[4],%v16[5],%v16[6],%v16[7],%v18[4],%v18[5],%v18[6],%v18[7]];
(* str	q27, [x1, #32]                              #! EA = L0xffffffffc5e0; PC = 0x411df4 *)
mov [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6,L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee] %v27;
(* trn1	v29.2d, v17.2d, v19.2d                     #! PC = 0x411df8 *)
mov %v29@sint16[8] [%v17[0],%v17[1],%v17[2],%v17[3],%v19[0],%v19[1],%v19[2],%v19[3]];
(* trn2	v31.2d, v17.2d, v19.2d                     #! PC = 0x411dfc *)
mov %v31@sint16[8] [%v17[4],%v17[5],%v17[6],%v17[7],%v19[4],%v19[5],%v19[6],%v19[7]];
(* sub	x11, x11, #0x1                              #! PC = 0x411e00 *)
subc dc x11 x11 0x1@uint64;
(* #cbnz	x11, 0x411ba8 <_ntt_bot_loop>             #! PC = 0x411e04 *)
#cbnz	%%x11, 0x411ba8 <_ntt_bot_loop>             #! 0x411e04 = 0x411e04;
(* str	q28, [x0, #16]                              #! EA = L0xffffffffc4d0; PC = 0x411e08 *)
mov [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6,L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de] %v28;
(* str	q29, [x1, #16]                              #! EA = L0xffffffffc5d0; PC = 0x411e0c *)
mov [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6,L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de] %v29;
(* str	q30, [x0, #48]                              #! EA = L0xffffffffc4f0; PC = 0x411e10 *)
mov [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6,L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe] %v30;
(* str	q31, [x1, #48]                              #! EA = L0xffffffffc5f0; PC = 0x411e14 *)
mov [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6,L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe] %v31;



(* CUT 27 27 *)

cut eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2]) (F**2) [Q, X**2 - 17** 13] /\
    eqmod (poly X [L0xffffffffc4c4,L0xffffffffc4c6]) (F**2) [Q, X**2 - 17**141] /\
    eqmod (poly X [L0xffffffffc4c8,L0xffffffffc4ca]) (F**2) [Q, X**2 - 17** 77] /\
    eqmod (poly X [L0xffffffffc4cc,L0xffffffffc4ce]) (F**2) [Q, X**2 - 17**205] /\
    eqmod (poly X [L0xffffffffc4d0,L0xffffffffc4d2]) (F**2) [Q, X**2 - 17** 45] /\
    eqmod (poly X [L0xffffffffc4d4,L0xffffffffc4d6]) (F**2) [Q, X**2 - 17**173] /\
    eqmod (poly X [L0xffffffffc4d8,L0xffffffffc4da]) (F**2) [Q, X**2 - 17**109] /\
    eqmod (poly X [L0xffffffffc4dc,L0xffffffffc4de]) (F**2) [Q, X**2 - 17**237] /\
    eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2]) (F**2) [Q, X**2 - 17** 29] /\
    eqmod (poly X [L0xffffffffc4e4,L0xffffffffc4e6]) (F**2) [Q, X**2 - 17**157] /\
    eqmod (poly X [L0xffffffffc4e8,L0xffffffffc4ea]) (F**2) [Q, X**2 - 17** 93] /\
    eqmod (poly X [L0xffffffffc4ec,L0xffffffffc4ee]) (F**2) [Q, X**2 - 17**221] /\
    eqmod (poly X [L0xffffffffc4f0,L0xffffffffc4f2]) (F**2) [Q, X**2 - 17** 61] /\
    eqmod (poly X [L0xffffffffc4f4,L0xffffffffc4f6]) (F**2) [Q, X**2 - 17**189] /\
    eqmod (poly X [L0xffffffffc4f8,L0xffffffffc4fa]) (F**2) [Q, X**2 - 17**125] /\
    eqmod (poly X [L0xffffffffc4fc,L0xffffffffc4fe]) (F**2) [Q, X**2 - 17**253] /\
    eqmod (poly X [L0xffffffffc5c0,L0xffffffffc5c2]) (F**2) [Q, X**2 - 17** 15] /\
    eqmod (poly X [L0xffffffffc5c4,L0xffffffffc5c6]) (F**2) [Q, X**2 - 17**143] /\
    eqmod (poly X [L0xffffffffc5c8,L0xffffffffc5ca]) (F**2) [Q, X**2 - 17** 79] /\
    eqmod (poly X [L0xffffffffc5cc,L0xffffffffc5ce]) (F**2) [Q, X**2 - 17**207] /\
    eqmod (poly X [L0xffffffffc5d0,L0xffffffffc5d2]) (F**2) [Q, X**2 - 17** 47] /\
    eqmod (poly X [L0xffffffffc5d4,L0xffffffffc5d6]) (F**2) [Q, X**2 - 17**175] /\
    eqmod (poly X [L0xffffffffc5d8,L0xffffffffc5da]) (F**2) [Q, X**2 - 17**111] /\
    eqmod (poly X [L0xffffffffc5dc,L0xffffffffc5de]) (F**2) [Q, X**2 - 17**239] /\
    eqmod (poly X [L0xffffffffc5e0,L0xffffffffc5e2]) (F**2) [Q, X**2 - 17** 31] /\
    eqmod (poly X [L0xffffffffc5e4,L0xffffffffc5e6]) (F**2) [Q, X**2 - 17**159] /\
    eqmod (poly X [L0xffffffffc5e8,L0xffffffffc5ea]) (F**2) [Q, X**2 - 17** 95] /\
    eqmod (poly X [L0xffffffffc5ec,L0xffffffffc5ee]) (F**2) [Q, X**2 - 17**223] /\
    eqmod (poly X [L0xffffffffc5f0,L0xffffffffc5f2]) (F**2) [Q, X**2 - 17** 63] /\
    eqmod (poly X [L0xffffffffc5f4,L0xffffffffc5f6]) (F**2) [Q, X**2 - 17**191] /\
    eqmod (poly X [L0xffffffffc5f8,L0xffffffffc5fa]) (F**2) [Q, X**2 - 17**127] /\
    eqmod (poly X [L0xffffffffc5fc,L0xffffffffc5fe]) (F**2) [Q, X**2 - 17**255]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
 /\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
 /\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
 /\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
 /\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
 /\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
 /\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
 /\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
 /\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6]
 /\ [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce]
 /\ [L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6]
 /\ [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de]
 /\ [L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6]
 /\ [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee]
 /\ [L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6]
 /\ [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6]<[Q,Q,Q,Q]
 /\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe]
 /\ [L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe]<[Q,Q,Q,Q]
    prove with [cuts [21, 25], all ghosts]
 && true
    prove with [cuts [21, 25]];


(* add	x0, x0, #0x40                               #! PC = 0x411e18 *)
adds dc x0 x0 0x40@uint64;
(* add	x1, x1, #0x40                               #! PC = 0x411e1c *)
adds dc x1 x1 0x40@uint64;
(* ldp	d8, d9, [sp]                                #! EA = L0xffffffffb410; Value = 0x0000000000000000; PC = 0x411e20 *)
mov %v8 [L0xffffffffb410,L0xffffffffb412,L0xffffffffb414,L0xffffffffb416]++%v8[4:8];
mov %v9 [L0xffffffffb418, L0xffffffffb41a, L0xffffffffb41c, L0xffffffffb41e]++%v9[4:8];
(* ldp	d10, d11, [sp, #16]                         #! EA = L0xffffffffb420; Value = 0x0000000000000000; PC = 0x411e24 *)
mov %v10 [L0xffffffffb420,L0xffffffffb422,L0xffffffffb424,L0xffffffffb426]++%v10[4:8];
mov %v11 [L0xffffffffb428, L0xffffffffb42a, L0xffffffffb42c, L0xffffffffb42e]++%v11[4:8];
(* ldp	d12, d13, [sp, #32]                         #! EA = L0xffffffffb430; Value = 0x0000000000000000; PC = 0x411e28 *)
mov %v12 [L0xffffffffb430,L0xffffffffb432,L0xffffffffb434,L0xffffffffb436]++%v12[4:8];
mov %v13 [L0xffffffffb438, L0xffffffffb43a, L0xffffffffb43c, L0xffffffffb43e]++%v13[4:8];
(* ldp	d14, d15, [sp, #48]                         #! EA = L0xffffffffb440; Value = 0x0000000000000000; PC = 0x411e2c *)
mov %v14 [L0xffffffffb440,L0xffffffffb442,L0xffffffffb444,L0xffffffffb446]++%v14[4:8];
mov %v15 [L0xffffffffb448, L0xffffffffb44a, L0xffffffffb44c, L0xffffffffb44e]++%v15[4:8];
(* add	sp, sp, #0x40                               #! PC = 0x411e30 *)
adds dc sp sp 0x40@uint64;
(* #! <- SP = 0xffffffffb450 *)
#! 0xffffffffb450 = 0xffffffffb450;
(* #ret                                            #! PC = 0x411e34 *)
#ret                                            #! 0x411e34 = 0x411e34;

{
   eqmod (poly X [L0xffffffffc400,L0xffffffffc402]) (F**2) [Q, X**2 - 17**  1] /\
   eqmod (poly X [L0xffffffffc404,L0xffffffffc406]) (F**2) [Q, X**2 - 17**129] /\
   eqmod (poly X [L0xffffffffc408,L0xffffffffc40a]) (F**2) [Q, X**2 - 17** 65] /\
   eqmod (poly X [L0xffffffffc40c,L0xffffffffc40e]) (F**2) [Q, X**2 - 17**193] /\
   eqmod (poly X [L0xffffffffc410,L0xffffffffc412]) (F**2) [Q, X**2 - 17** 33] /\
   eqmod (poly X [L0xffffffffc414,L0xffffffffc416]) (F**2) [Q, X**2 - 17**161] /\
   eqmod (poly X [L0xffffffffc418,L0xffffffffc41a]) (F**2) [Q, X**2 - 17** 97] /\
   eqmod (poly X [L0xffffffffc41c,L0xffffffffc41e]) (F**2) [Q, X**2 - 17**225] /\
   eqmod (poly X [L0xffffffffc420,L0xffffffffc422]) (F**2) [Q, X**2 - 17** 17] /\
   eqmod (poly X [L0xffffffffc424,L0xffffffffc426]) (F**2) [Q, X**2 - 17**145] /\
   eqmod (poly X [L0xffffffffc428,L0xffffffffc42a]) (F**2) [Q, X**2 - 17** 81] /\
   eqmod (poly X [L0xffffffffc42c,L0xffffffffc42e]) (F**2) [Q, X**2 - 17**209] /\
   eqmod (poly X [L0xffffffffc430,L0xffffffffc432]) (F**2) [Q, X**2 - 17** 49] /\
   eqmod (poly X [L0xffffffffc434,L0xffffffffc436]) (F**2) [Q, X**2 - 17**177] /\
   eqmod (poly X [L0xffffffffc438,L0xffffffffc43a]) (F**2) [Q, X**2 - 17**113] /\
   eqmod (poly X [L0xffffffffc43c,L0xffffffffc43e]) (F**2) [Q, X**2 - 17**241] /\
   eqmod (poly X [L0xffffffffc500,L0xffffffffc502]) (F**2) [Q, X**2 - 17**  3] /\
   eqmod (poly X [L0xffffffffc504,L0xffffffffc506]) (F**2) [Q, X**2 - 17**131] /\
   eqmod (poly X [L0xffffffffc508,L0xffffffffc50a]) (F**2) [Q, X**2 - 17** 67] /\
   eqmod (poly X [L0xffffffffc50c,L0xffffffffc50e]) (F**2) [Q, X**2 - 17**195] /\
   eqmod (poly X [L0xffffffffc510,L0xffffffffc512]) (F**2) [Q, X**2 - 17** 35] /\
   eqmod (poly X [L0xffffffffc514,L0xffffffffc516]) (F**2) [Q, X**2 - 17**163] /\
   eqmod (poly X [L0xffffffffc518,L0xffffffffc51a]) (F**2) [Q, X**2 - 17** 99] /\
   eqmod (poly X [L0xffffffffc51c,L0xffffffffc51e]) (F**2) [Q, X**2 - 17**227] /\
   eqmod (poly X [L0xffffffffc520,L0xffffffffc522]) (F**2) [Q, X**2 - 17** 19] /\
   eqmod (poly X [L0xffffffffc524,L0xffffffffc526]) (F**2) [Q, X**2 - 17**147] /\
   eqmod (poly X [L0xffffffffc528,L0xffffffffc52a]) (F**2) [Q, X**2 - 17** 83] /\
   eqmod (poly X [L0xffffffffc52c,L0xffffffffc52e]) (F**2) [Q, X**2 - 17**211] /\
   eqmod (poly X [L0xffffffffc530,L0xffffffffc532]) (F**2) [Q, X**2 - 17** 51] /\
   eqmod (poly X [L0xffffffffc534,L0xffffffffc536]) (F**2) [Q, X**2 - 17**179] /\
   eqmod (poly X [L0xffffffffc538,L0xffffffffc53a]) (F**2) [Q, X**2 - 17**115] /\
   eqmod (poly X [L0xffffffffc53c,L0xffffffffc53e]) (F**2) [Q, X**2 - 17**243] /\
   eqmod (poly X [L0xffffffffc440,L0xffffffffc442]) (F**2) [Q, X**2 - 17**  9] /\
   eqmod (poly X [L0xffffffffc444,L0xffffffffc446]) (F**2) [Q, X**2 - 17**137] /\
   eqmod (poly X [L0xffffffffc448,L0xffffffffc44a]) (F**2) [Q, X**2 - 17** 73] /\
   eqmod (poly X [L0xffffffffc44c,L0xffffffffc44e]) (F**2) [Q, X**2 - 17**201] /\
   eqmod (poly X [L0xffffffffc450,L0xffffffffc452]) (F**2) [Q, X**2 - 17** 41] /\
   eqmod (poly X [L0xffffffffc454,L0xffffffffc456]) (F**2) [Q, X**2 - 17**169] /\
   eqmod (poly X [L0xffffffffc458,L0xffffffffc45a]) (F**2) [Q, X**2 - 17**105] /\
   eqmod (poly X [L0xffffffffc45c,L0xffffffffc45e]) (F**2) [Q, X**2 - 17**233] /\
   eqmod (poly X [L0xffffffffc460,L0xffffffffc462]) (F**2) [Q, X**2 - 17** 25] /\
   eqmod (poly X [L0xffffffffc464,L0xffffffffc466]) (F**2) [Q, X**2 - 17**153] /\
   eqmod (poly X [L0xffffffffc468,L0xffffffffc46a]) (F**2) [Q, X**2 - 17** 89] /\
   eqmod (poly X [L0xffffffffc46c,L0xffffffffc46e]) (F**2) [Q, X**2 - 17**217] /\
   eqmod (poly X [L0xffffffffc470,L0xffffffffc472]) (F**2) [Q, X**2 - 17** 57] /\
   eqmod (poly X [L0xffffffffc474,L0xffffffffc476]) (F**2) [Q, X**2 - 17**185] /\
   eqmod (poly X [L0xffffffffc478,L0xffffffffc47a]) (F**2) [Q, X**2 - 17**121] /\
   eqmod (poly X [L0xffffffffc47c,L0xffffffffc47e]) (F**2) [Q, X**2 - 17**249] /\
   eqmod (poly X [L0xffffffffc540,L0xffffffffc542]) (F**2) [Q, X**2 - 17** 11] /\
   eqmod (poly X [L0xffffffffc544,L0xffffffffc546]) (F**2) [Q, X**2 - 17**139] /\
   eqmod (poly X [L0xffffffffc548,L0xffffffffc54a]) (F**2) [Q, X**2 - 17** 75] /\
   eqmod (poly X [L0xffffffffc54c,L0xffffffffc54e]) (F**2) [Q, X**2 - 17**203] /\
   eqmod (poly X [L0xffffffffc550,L0xffffffffc552]) (F**2) [Q, X**2 - 17** 43] /\
   eqmod (poly X [L0xffffffffc554,L0xffffffffc556]) (F**2) [Q, X**2 - 17**171] /\
   eqmod (poly X [L0xffffffffc558,L0xffffffffc55a]) (F**2) [Q, X**2 - 17**107] /\
   eqmod (poly X [L0xffffffffc55c,L0xffffffffc55e]) (F**2) [Q, X**2 - 17**235] /\
   eqmod (poly X [L0xffffffffc560,L0xffffffffc562]) (F**2) [Q, X**2 - 17** 27] /\
   eqmod (poly X [L0xffffffffc564,L0xffffffffc566]) (F**2) [Q, X**2 - 17**155] /\
   eqmod (poly X [L0xffffffffc568,L0xffffffffc56a]) (F**2) [Q, X**2 - 17** 91] /\
   eqmod (poly X [L0xffffffffc56c,L0xffffffffc56e]) (F**2) [Q, X**2 - 17**219] /\
   eqmod (poly X [L0xffffffffc570,L0xffffffffc572]) (F**2) [Q, X**2 - 17** 59] /\
   eqmod (poly X [L0xffffffffc574,L0xffffffffc576]) (F**2) [Q, X**2 - 17**187] /\
   eqmod (poly X [L0xffffffffc578,L0xffffffffc57a]) (F**2) [Q, X**2 - 17**123] /\
   eqmod (poly X [L0xffffffffc57c,L0xffffffffc57e]) (F**2) [Q, X**2 - 17**251] /\
   eqmod (poly X [L0xffffffffc480,L0xffffffffc482]) (F**2) [Q, X**2 - 17**  5] /\
   eqmod (poly X [L0xffffffffc484,L0xffffffffc486]) (F**2) [Q, X**2 - 17**133] /\
   eqmod (poly X [L0xffffffffc488,L0xffffffffc48a]) (F**2) [Q, X**2 - 17** 69] /\
   eqmod (poly X [L0xffffffffc48c,L0xffffffffc48e]) (F**2) [Q, X**2 - 17**197] /\
   eqmod (poly X [L0xffffffffc490,L0xffffffffc492]) (F**2) [Q, X**2 - 17** 37] /\
   eqmod (poly X [L0xffffffffc494,L0xffffffffc496]) (F**2) [Q, X**2 - 17**165] /\
   eqmod (poly X [L0xffffffffc498,L0xffffffffc49a]) (F**2) [Q, X**2 - 17**101] /\
   eqmod (poly X [L0xffffffffc49c,L0xffffffffc49e]) (F**2) [Q, X**2 - 17**229] /\
   eqmod (poly X [L0xffffffffc4a0,L0xffffffffc4a2]) (F**2) [Q, X**2 - 17** 21] /\
   eqmod (poly X [L0xffffffffc4a4,L0xffffffffc4a6]) (F**2) [Q, X**2 - 17**149] /\
   eqmod (poly X [L0xffffffffc4a8,L0xffffffffc4aa]) (F**2) [Q, X**2 - 17** 85] /\
   eqmod (poly X [L0xffffffffc4ac,L0xffffffffc4ae]) (F**2) [Q, X**2 - 17**213] /\
   eqmod (poly X [L0xffffffffc4b0,L0xffffffffc4b2]) (F**2) [Q, X**2 - 17** 53] /\
   eqmod (poly X [L0xffffffffc4b4,L0xffffffffc4b6]) (F**2) [Q, X**2 - 17**181] /\
   eqmod (poly X [L0xffffffffc4b8,L0xffffffffc4ba]) (F**2) [Q, X**2 - 17**117] /\
   eqmod (poly X [L0xffffffffc4bc,L0xffffffffc4be]) (F**2) [Q, X**2 - 17**245] /\
   eqmod (poly X [L0xffffffffc580,L0xffffffffc582]) (F**2) [Q, X**2 - 17**  7] /\
   eqmod (poly X [L0xffffffffc584,L0xffffffffc586]) (F**2) [Q, X**2 - 17**135] /\
   eqmod (poly X [L0xffffffffc588,L0xffffffffc58a]) (F**2) [Q, X**2 - 17** 71] /\
   eqmod (poly X [L0xffffffffc58c,L0xffffffffc58e]) (F**2) [Q, X**2 - 17**199] /\
   eqmod (poly X [L0xffffffffc590,L0xffffffffc592]) (F**2) [Q, X**2 - 17** 39] /\
   eqmod (poly X [L0xffffffffc594,L0xffffffffc596]) (F**2) [Q, X**2 - 17**167] /\
   eqmod (poly X [L0xffffffffc598,L0xffffffffc59a]) (F**2) [Q, X**2 - 17**103] /\
   eqmod (poly X [L0xffffffffc59c,L0xffffffffc59e]) (F**2) [Q, X**2 - 17**231] /\
   eqmod (poly X [L0xffffffffc5a0,L0xffffffffc5a2]) (F**2) [Q, X**2 - 17** 23] /\
   eqmod (poly X [L0xffffffffc5a4,L0xffffffffc5a6]) (F**2) [Q, X**2 - 17**151] /\
   eqmod (poly X [L0xffffffffc5a8,L0xffffffffc5aa]) (F**2) [Q, X**2 - 17** 87] /\
   eqmod (poly X [L0xffffffffc5ac,L0xffffffffc5ae]) (F**2) [Q, X**2 - 17**215] /\
   eqmod (poly X [L0xffffffffc5b0,L0xffffffffc5b2]) (F**2) [Q, X**2 - 17** 55] /\
   eqmod (poly X [L0xffffffffc5b4,L0xffffffffc5b6]) (F**2) [Q, X**2 - 17**183] /\
   eqmod (poly X [L0xffffffffc5b8,L0xffffffffc5ba]) (F**2) [Q, X**2 - 17**119] /\
   eqmod (poly X [L0xffffffffc5bc,L0xffffffffc5be]) (F**2) [Q, X**2 - 17**247] /\
   eqmod (poly X [L0xffffffffc4c0,L0xffffffffc4c2]) (F**2) [Q, X**2 - 17** 13] /\
   eqmod (poly X [L0xffffffffc4c4,L0xffffffffc4c6]) (F**2) [Q, X**2 - 17**141] /\
   eqmod (poly X [L0xffffffffc4c8,L0xffffffffc4ca]) (F**2) [Q, X**2 - 17** 77] /\
   eqmod (poly X [L0xffffffffc4cc,L0xffffffffc4ce]) (F**2) [Q, X**2 - 17**205] /\
   eqmod (poly X [L0xffffffffc4d0,L0xffffffffc4d2]) (F**2) [Q, X**2 - 17** 45] /\
   eqmod (poly X [L0xffffffffc4d4,L0xffffffffc4d6]) (F**2) [Q, X**2 - 17**173] /\
   eqmod (poly X [L0xffffffffc4d8,L0xffffffffc4da]) (F**2) [Q, X**2 - 17**109] /\
   eqmod (poly X [L0xffffffffc4dc,L0xffffffffc4de]) (F**2) [Q, X**2 - 17**237] /\
   eqmod (poly X [L0xffffffffc4e0,L0xffffffffc4e2]) (F**2) [Q, X**2 - 17** 29] /\
   eqmod (poly X [L0xffffffffc4e4,L0xffffffffc4e6]) (F**2) [Q, X**2 - 17**157] /\
   eqmod (poly X [L0xffffffffc4e8,L0xffffffffc4ea]) (F**2) [Q, X**2 - 17** 93] /\
   eqmod (poly X [L0xffffffffc4ec,L0xffffffffc4ee]) (F**2) [Q, X**2 - 17**221] /\
   eqmod (poly X [L0xffffffffc4f0,L0xffffffffc4f2]) (F**2) [Q, X**2 - 17** 61] /\
   eqmod (poly X [L0xffffffffc4f4,L0xffffffffc4f6]) (F**2) [Q, X**2 - 17**189] /\
   eqmod (poly X [L0xffffffffc4f8,L0xffffffffc4fa]) (F**2) [Q, X**2 - 17**125] /\
   eqmod (poly X [L0xffffffffc4fc,L0xffffffffc4fe]) (F**2) [Q, X**2 - 17**253] /\
   eqmod (poly X [L0xffffffffc5c0,L0xffffffffc5c2]) (F**2) [Q, X**2 - 17** 15] /\
   eqmod (poly X [L0xffffffffc5c4,L0xffffffffc5c6]) (F**2) [Q, X**2 - 17**143] /\
   eqmod (poly X [L0xffffffffc5c8,L0xffffffffc5ca]) (F**2) [Q, X**2 - 17** 79] /\
   eqmod (poly X [L0xffffffffc5cc,L0xffffffffc5ce]) (F**2) [Q, X**2 - 17**207] /\
   eqmod (poly X [L0xffffffffc5d0,L0xffffffffc5d2]) (F**2) [Q, X**2 - 17** 47] /\
   eqmod (poly X [L0xffffffffc5d4,L0xffffffffc5d6]) (F**2) [Q, X**2 - 17**175] /\
   eqmod (poly X [L0xffffffffc5d8,L0xffffffffc5da]) (F**2) [Q, X**2 - 17**111] /\
   eqmod (poly X [L0xffffffffc5dc,L0xffffffffc5de]) (F**2) [Q, X**2 - 17**239] /\
   eqmod (poly X [L0xffffffffc5e0,L0xffffffffc5e2]) (F**2) [Q, X**2 - 17** 31] /\
   eqmod (poly X [L0xffffffffc5e4,L0xffffffffc5e6]) (F**2) [Q, X**2 - 17**159] /\
   eqmod (poly X [L0xffffffffc5e8,L0xffffffffc5ea]) (F**2) [Q, X**2 - 17** 95] /\
   eqmod (poly X [L0xffffffffc5ec,L0xffffffffc5ee]) (F**2) [Q, X**2 - 17**223] /\
   eqmod (poly X [L0xffffffffc5f0,L0xffffffffc5f2]) (F**2) [Q, X**2 - 17** 63] /\
   eqmod (poly X [L0xffffffffc5f4,L0xffffffffc5f6]) (F**2) [Q, X**2 - 17**191] /\
   eqmod (poly X [L0xffffffffc5f8,L0xffffffffc5fa]) (F**2) [Q, X**2 - 17**127] /\
   eqmod (poly X [L0xffffffffc5fc,L0xffffffffc5fe]) (F**2) [Q, X**2 - 17**255] /\
   [NQ,NQ,NQ,NQ]<[L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]
/\ [L0xffffffffc400,L0xffffffffc402,L0xffffffffc404,L0xffffffffc406]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]
/\ [L0xffffffffc408,L0xffffffffc40a,L0xffffffffc40c,L0xffffffffc40e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]
/\ [L0xffffffffc410,L0xffffffffc412,L0xffffffffc414,L0xffffffffc416]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]
/\ [L0xffffffffc418,L0xffffffffc41a,L0xffffffffc41c,L0xffffffffc41e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]
/\ [L0xffffffffc420,L0xffffffffc422,L0xffffffffc424,L0xffffffffc426]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]
/\ [L0xffffffffc428,L0xffffffffc42a,L0xffffffffc42c,L0xffffffffc42e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]
/\ [L0xffffffffc430,L0xffffffffc432,L0xffffffffc434,L0xffffffffc436]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]
/\ [L0xffffffffc438,L0xffffffffc43a,L0xffffffffc43c,L0xffffffffc43e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]
/\ [L0xffffffffc500,L0xffffffffc502,L0xffffffffc504,L0xffffffffc506]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]
/\ [L0xffffffffc508,L0xffffffffc50a,L0xffffffffc50c,L0xffffffffc50e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]
/\ [L0xffffffffc510,L0xffffffffc512,L0xffffffffc514,L0xffffffffc516]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]
/\ [L0xffffffffc518,L0xffffffffc51a,L0xffffffffc51c,L0xffffffffc51e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]
/\ [L0xffffffffc520,L0xffffffffc522,L0xffffffffc524,L0xffffffffc526]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]
/\ [L0xffffffffc528,L0xffffffffc52a,L0xffffffffc52c,L0xffffffffc52e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]
/\ [L0xffffffffc530,L0xffffffffc532,L0xffffffffc534,L0xffffffffc536]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]
/\ [L0xffffffffc538,L0xffffffffc53a,L0xffffffffc53c,L0xffffffffc53e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]
/\ [L0xffffffffc440,L0xffffffffc442,L0xffffffffc444,L0xffffffffc446]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]
/\ [L0xffffffffc448,L0xffffffffc44a,L0xffffffffc44c,L0xffffffffc44e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]
/\ [L0xffffffffc450,L0xffffffffc452,L0xffffffffc454,L0xffffffffc456]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]
/\ [L0xffffffffc458,L0xffffffffc45a,L0xffffffffc45c,L0xffffffffc45e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]
/\ [L0xffffffffc460,L0xffffffffc462,L0xffffffffc464,L0xffffffffc466]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]
/\ [L0xffffffffc468,L0xffffffffc46a,L0xffffffffc46c,L0xffffffffc46e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]
/\ [L0xffffffffc470,L0xffffffffc472,L0xffffffffc474,L0xffffffffc476]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]
/\ [L0xffffffffc478,L0xffffffffc47a,L0xffffffffc47c,L0xffffffffc47e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]
/\ [L0xffffffffc540,L0xffffffffc542,L0xffffffffc544,L0xffffffffc546]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]
/\ [L0xffffffffc548,L0xffffffffc54a,L0xffffffffc54c,L0xffffffffc54e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]
/\ [L0xffffffffc550,L0xffffffffc552,L0xffffffffc554,L0xffffffffc556]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]
/\ [L0xffffffffc558,L0xffffffffc55a,L0xffffffffc55c,L0xffffffffc55e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]
/\ [L0xffffffffc560,L0xffffffffc562,L0xffffffffc564,L0xffffffffc566]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]
/\ [L0xffffffffc568,L0xffffffffc56a,L0xffffffffc56c,L0xffffffffc56e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]
/\ [L0xffffffffc570,L0xffffffffc572,L0xffffffffc574,L0xffffffffc576]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]
/\ [L0xffffffffc578,L0xffffffffc57a,L0xffffffffc57c,L0xffffffffc57e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]
/\ [L0xffffffffc480,L0xffffffffc482,L0xffffffffc484,L0xffffffffc486]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]
/\ [L0xffffffffc488,L0xffffffffc48a,L0xffffffffc48c,L0xffffffffc48e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]
/\ [L0xffffffffc490,L0xffffffffc492,L0xffffffffc494,L0xffffffffc496]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]
/\ [L0xffffffffc498,L0xffffffffc49a,L0xffffffffc49c,L0xffffffffc49e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]
/\ [L0xffffffffc4a0,L0xffffffffc4a2,L0xffffffffc4a4,L0xffffffffc4a6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]
/\ [L0xffffffffc4a8,L0xffffffffc4aa,L0xffffffffc4ac,L0xffffffffc4ae]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]
/\ [L0xffffffffc4b0,L0xffffffffc4b2,L0xffffffffc4b4,L0xffffffffc4b6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]
/\ [L0xffffffffc4b8,L0xffffffffc4ba,L0xffffffffc4bc,L0xffffffffc4be]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]
/\ [L0xffffffffc580,L0xffffffffc582,L0xffffffffc584,L0xffffffffc586]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]
/\ [L0xffffffffc588,L0xffffffffc58a,L0xffffffffc58c,L0xffffffffc58e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]
/\ [L0xffffffffc590,L0xffffffffc592,L0xffffffffc594,L0xffffffffc596]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]
/\ [L0xffffffffc598,L0xffffffffc59a,L0xffffffffc59c,L0xffffffffc59e]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6]
/\ [L0xffffffffc5a0,L0xffffffffc5a2,L0xffffffffc5a4,L0xffffffffc5a6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae]
/\ [L0xffffffffc5a8,L0xffffffffc5aa,L0xffffffffc5ac,L0xffffffffc5ae]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6]
/\ [L0xffffffffc5b0,L0xffffffffc5b2,L0xffffffffc5b4,L0xffffffffc5b6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be]
/\ [L0xffffffffc5b8,L0xffffffffc5ba,L0xffffffffc5bc,L0xffffffffc5be]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]
/\ [L0xffffffffc4c0,L0xffffffffc4c2,L0xffffffffc4c4,L0xffffffffc4c6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]
/\ [L0xffffffffc4c8,L0xffffffffc4ca,L0xffffffffc4cc,L0xffffffffc4ce]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]
/\ [L0xffffffffc4d0,L0xffffffffc4d2,L0xffffffffc4d4,L0xffffffffc4d6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]
/\ [L0xffffffffc4d8,L0xffffffffc4da,L0xffffffffc4dc,L0xffffffffc4de]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]
/\ [L0xffffffffc4e0,L0xffffffffc4e2,L0xffffffffc4e4,L0xffffffffc4e6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]
/\ [L0xffffffffc4e8,L0xffffffffc4ea,L0xffffffffc4ec,L0xffffffffc4ee]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]
/\ [L0xffffffffc4f0,L0xffffffffc4f2,L0xffffffffc4f4,L0xffffffffc4f6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]
/\ [L0xffffffffc4f8,L0xffffffffc4fa,L0xffffffffc4fc,L0xffffffffc4fe]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6]
/\ [L0xffffffffc5c0,L0xffffffffc5c2,L0xffffffffc5c4,L0xffffffffc5c6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce]
/\ [L0xffffffffc5c8,L0xffffffffc5ca,L0xffffffffc5cc,L0xffffffffc5ce]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6]
/\ [L0xffffffffc5d0,L0xffffffffc5d2,L0xffffffffc5d4,L0xffffffffc5d6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de]
/\ [L0xffffffffc5d8,L0xffffffffc5da,L0xffffffffc5dc,L0xffffffffc5de]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6]
/\ [L0xffffffffc5e0,L0xffffffffc5e2,L0xffffffffc5e4,L0xffffffffc5e6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee]
/\ [L0xffffffffc5e8,L0xffffffffc5ea,L0xffffffffc5ec,L0xffffffffc5ee]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6]
/\ [L0xffffffffc5f0,L0xffffffffc5f2,L0xffffffffc5f4,L0xffffffffc5f6]<[Q,Q,Q,Q]
/\ [NQ,NQ,NQ,NQ]<[L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe]
/\ [L0xffffffffc5f8,L0xffffffffc5fa,L0xffffffffc5fc,L0xffffffffc5fe]<[Q,Q,Q,Q]
   prove with [cuts [6,13,20,27]] 
&&
   true
}

